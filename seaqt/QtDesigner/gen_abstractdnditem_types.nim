type QDesignerDnDItemInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractdnditem.cpp", QtDesignerCFlags).}

proc fcQDesignerDnDItemInterface_delete(self: pointer) {.importc: "QDesignerDnDItemInterface_delete".}
proc `=destroy`(self: var QDesignerDnDItemInterface) =
  if self.owned: fcQDesignerDnDItemInterface_delete(self.h)

proc `=sink`(dest: var QDesignerDnDItemInterface, source: QDesignerDnDItemInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerDnDItemInterface, source: QDesignerDnDItemInterface) {.error.}
proc delete*(self: sink QDesignerDnDItemInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerDnDItemInterface_delete(h)

