type QDesignerPromotionInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractpromotioninterface.cpp", QtDesignerCFlags).}

proc fcQDesignerPromotionInterface_delete(self: pointer) {.importc: "QDesignerPromotionInterface_delete".}
proc `=destroy`(self: var QDesignerPromotionInterface) =
  if self.owned: fcQDesignerPromotionInterface_delete(self.h)

proc `=sink`(dest: var QDesignerPromotionInterface, source: QDesignerPromotionInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerPromotionInterface, source: QDesignerPromotionInterface) {.error.}
proc delete*(self: sink QDesignerPromotionInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerPromotionInterface_delete(h)

type QDesignerPromotionInterfacePromotedClass* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

proc fcQDesignerPromotionInterfacePromotedClass_delete(self: pointer) {.importc: "QDesignerPromotionInterface__PromotedClass_delete".}
proc `=destroy`(self: var QDesignerPromotionInterfacePromotedClass) =
  if self.owned: fcQDesignerPromotionInterfacePromotedClass_delete(self.h)

proc `=sink`(dest: var QDesignerPromotionInterfacePromotedClass, source: QDesignerPromotionInterfacePromotedClass) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerPromotionInterfacePromotedClass, source: QDesignerPromotionInterfacePromotedClass) {.error.}
proc delete*(self: sink QDesignerPromotionInterfacePromotedClass) =
  let h = self.h
  wasMoved(self)
  fcQDesignerPromotionInterfacePromotedClass_delete(h)

