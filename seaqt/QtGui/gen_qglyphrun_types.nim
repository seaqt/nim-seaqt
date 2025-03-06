type QGlyphRun* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qglyphrun.cpp", cflags).}

proc fcQGlyphRun_delete(self: pointer) {.importc: "QGlyphRun_delete".}
proc `=destroy`(self: var QGlyphRun) =
  if self.owned: fcQGlyphRun_delete(self.h)

proc `=sink`(dest: var QGlyphRun, source: QGlyphRun) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGlyphRun, source: QGlyphRun) {.error.}
proc delete*(self: sink QGlyphRun) =
  let h = self.h
  wasMoved(self)
  fcQGlyphRun_delete(h)

