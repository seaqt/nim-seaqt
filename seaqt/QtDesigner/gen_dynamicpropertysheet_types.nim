type QDesignerDynamicPropertySheetExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_dynamicpropertysheet.cpp", QtDesignerCFlags).}

proc fcQDesignerDynamicPropertySheetExtension_delete(self: pointer) {.importc: "QDesignerDynamicPropertySheetExtension_delete".}
proc `=destroy`(self: var QDesignerDynamicPropertySheetExtension) =
  if self.owned: fcQDesignerDynamicPropertySheetExtension_delete(self.h)

proc `=sink`(dest: var QDesignerDynamicPropertySheetExtension, source: QDesignerDynamicPropertySheetExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerDynamicPropertySheetExtension, source: QDesignerDynamicPropertySheetExtension) {.error.}
proc delete*(self: sink QDesignerDynamicPropertySheetExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerDynamicPropertySheetExtension_delete(h)

