type QDesignerComponents* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_qdesigner_components.cpp", QtDesignerCFlags).}

proc fcQDesignerComponents_delete(self: pointer) {.importc: "QDesignerComponents_delete".}
proc `=destroy`(self: var QDesignerComponents) =
  if self.owned: fcQDesignerComponents_delete(self.h)

proc `=sink`(dest: var QDesignerComponents, source: QDesignerComponents) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerComponents, source: QDesignerComponents) {.error.}
proc delete*(self: sink QDesignerComponents) =
  let h = self.h
  wasMoved(self)
  fcQDesignerComponents_delete(h)

