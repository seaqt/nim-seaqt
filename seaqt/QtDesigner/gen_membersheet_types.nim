type QDesignerMemberSheetExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_membersheet.cpp", QtDesignerCFlags).}

proc fcQDesignerMemberSheetExtension_delete(self: pointer) {.importc: "QDesignerMemberSheetExtension_delete".}
proc `=destroy`(self: var QDesignerMemberSheetExtension) =
  if self.owned: fcQDesignerMemberSheetExtension_delete(self.h)

proc `=sink`(dest: var QDesignerMemberSheetExtension, source: QDesignerMemberSheetExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerMemberSheetExtension, source: QDesignerMemberSheetExtension) {.error.}
proc delete*(self: sink QDesignerMemberSheetExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerMemberSheetExtension_delete(h)

