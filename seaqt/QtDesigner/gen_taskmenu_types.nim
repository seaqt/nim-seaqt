type QDesignerTaskMenuExtension* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_taskmenu.cpp", QtDesignerCFlags).}

proc fcQDesignerTaskMenuExtension_delete(self: pointer) {.importc: "QDesignerTaskMenuExtension_delete".}
proc `=destroy`(self: var QDesignerTaskMenuExtension) =
  if self.owned: fcQDesignerTaskMenuExtension_delete(self.h)

proc `=sink`(dest: var QDesignerTaskMenuExtension, source: QDesignerTaskMenuExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerTaskMenuExtension, source: QDesignerTaskMenuExtension) {.error.}
proc delete*(self: sink QDesignerTaskMenuExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerTaskMenuExtension_delete(h)

