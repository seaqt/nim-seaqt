type QDesignerExtraInfoExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_extrainfo.cpp", QtDesignerCFlags).}

proc fcQDesignerExtraInfoExtension_delete(self: pointer) {.importc: "QDesignerExtraInfoExtension_delete".}
proc `=destroy`(self: var QDesignerExtraInfoExtension) =
  if self.owned: fcQDesignerExtraInfoExtension_delete(self.h)

proc `=sink`(dest: var QDesignerExtraInfoExtension, source: QDesignerExtraInfoExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerExtraInfoExtension, source: QDesignerExtraInfoExtension) {.error.}
proc delete*(self: sink QDesignerExtraInfoExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerExtraInfoExtension_delete(h)

