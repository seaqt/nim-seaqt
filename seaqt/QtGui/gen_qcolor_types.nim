type QColor* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qcolor.cpp", cflags).}

proc fcQColor_delete(self: pointer) {.importc: "QColor_delete".}
proc `=destroy`(self: var QColor) =
  if self.owned: fcQColor_delete(self.h)

proc `=sink`(dest: var QColor, source: QColor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QColor, source: QColor) {.error.}
proc delete*(self: sink QColor) =
  let h = self.h
  wasMoved(self)
  fcQColor_delete(h)

