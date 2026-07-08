type QColorTransform* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qcolortransform.cpp", QtGuiCFlags).}

proc fcQColorTransform_delete(self: pointer) {.importc: "QColorTransform_delete".}
proc `=destroy`(self: var QColorTransform) =
  if self.owned: fcQColorTransform_delete(self.h)

proc `=sink`(dest: var QColorTransform, source: QColorTransform) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QColorTransform, source: QColorTransform) {.error.}
proc delete*(self: sink QColorTransform) =
  let h = self.h
  wasMoved(self)
  fcQColorTransform_delete(h)

