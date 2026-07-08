type QDesignerContainerExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_container.cpp", QtDesignerCFlags).}

proc fcQDesignerContainerExtension_delete(self: pointer) {.importc: "QDesignerContainerExtension_delete".}
proc `=destroy`(self: var QDesignerContainerExtension) =
  if self.owned: fcQDesignerContainerExtension_delete(self.h)

proc `=sink`(dest: var QDesignerContainerExtension, source: QDesignerContainerExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerContainerExtension, source: QDesignerContainerExtension) {.error.}
proc delete*(self: sink QDesignerContainerExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerContainerExtension_delete(h)

