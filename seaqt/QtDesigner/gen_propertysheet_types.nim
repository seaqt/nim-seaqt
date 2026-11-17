type QDesignerPropertySheetExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_propertysheet.cpp", QtDesignerCFlags).}

proc fcQDesignerPropertySheetExtension_delete(self: pointer) {.importc: "QDesignerPropertySheetExtension_delete".}
proc `=destroy`(self: var QDesignerPropertySheetExtension) =
  if self.owned: fcQDesignerPropertySheetExtension_delete(self.h)

proc `=sink`(dest: var QDesignerPropertySheetExtension, source: QDesignerPropertySheetExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerPropertySheetExtension, source: QDesignerPropertySheetExtension) {.error.}
proc delete*(self: sink QDesignerPropertySheetExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerPropertySheetExtension_delete(h)

