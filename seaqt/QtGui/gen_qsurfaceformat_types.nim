type QSurfaceFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qsurfaceformat.cpp", cflags).}

proc fcQSurfaceFormat_delete(self: pointer) {.importc: "QSurfaceFormat_delete".}
proc `=destroy`(self: var QSurfaceFormat) =
  if self.owned: fcQSurfaceFormat_delete(self.h)

proc `=sink`(dest: var QSurfaceFormat, source: QSurfaceFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSurfaceFormat, source: QSurfaceFormat) {.error.}
proc delete*(self: sink QSurfaceFormat) =
  let h = self.h
  wasMoved(self)
  fcQSurfaceFormat_delete(h)

