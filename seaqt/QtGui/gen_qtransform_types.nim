type QTransform* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtransform.cpp", cflags).}

proc fcQTransform_delete(self: pointer) {.importc: "QTransform_delete".}
proc `=destroy`(self: var QTransform) =
  if self.owned: fcQTransform_delete(self.h)

proc `=sink`(dest: var QTransform, source: QTransform) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTransform, source: QTransform) {.error.}
proc delete*(self: sink QTransform) =
  let h = self.h
  wasMoved(self)
  fcQTransform_delete(h)

