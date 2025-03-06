type QColormap* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qcolormap.cpp", cflags).}

proc fcQColormap_delete(self: pointer) {.importc: "QColormap_delete".}
proc `=destroy`(self: var QColormap) =
  if self.owned: fcQColormap_delete(self.h)

proc `=sink`(dest: var QColormap, source: QColormap) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QColormap, source: QColormap) {.error.}
proc delete*(self: sink QColormap) =
  let h = self.h
  wasMoved(self)
  fcQColormap_delete(h)

