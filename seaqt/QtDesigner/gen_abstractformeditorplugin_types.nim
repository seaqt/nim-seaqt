type QDesignerFormEditorPluginInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractformeditorplugin.cpp", QtDesignerCFlags).}

proc fcQDesignerFormEditorPluginInterface_delete(self: pointer) {.importc: "QDesignerFormEditorPluginInterface_delete".}
proc `=destroy`(self: var QDesignerFormEditorPluginInterface) =
  if self.owned: fcQDesignerFormEditorPluginInterface_delete(self.h)

proc `=sink`(dest: var QDesignerFormEditorPluginInterface, source: QDesignerFormEditorPluginInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerFormEditorPluginInterface, source: QDesignerFormEditorPluginInterface) {.error.}
proc delete*(self: sink QDesignerFormEditorPluginInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerFormEditorPluginInterface_delete(h)

