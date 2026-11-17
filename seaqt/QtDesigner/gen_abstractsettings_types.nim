type QDesignerSettingsInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractsettings.cpp", QtDesignerCFlags).}

proc fcQDesignerSettingsInterface_delete(self: pointer) {.importc: "QDesignerSettingsInterface_delete".}
proc `=destroy`(self: var QDesignerSettingsInterface) =
  if self.owned: fcQDesignerSettingsInterface_delete(self.h)

proc `=sink`(dest: var QDesignerSettingsInterface, source: QDesignerSettingsInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerSettingsInterface, source: QDesignerSettingsInterface) {.error.}
proc delete*(self: sink QDesignerSettingsInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerSettingsInterface_delete(h)

