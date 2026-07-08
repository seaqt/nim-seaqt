type QColorSpace* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qcolorspace.cpp", QtGuiCFlags).}

proc fcQColorSpace_delete(self: pointer) {.importc: "QColorSpace_delete".}
proc `=destroy`(self: var QColorSpace) =
  if self.owned: fcQColorSpace_delete(self.h)

proc `=sink`(dest: var QColorSpace, source: QColorSpace) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QColorSpace, source: QColorSpace) {.error.}
proc delete*(self: sink QColorSpace) =
  let h = self.h
  wasMoved(self)
  fcQColorSpace_delete(h)

