type QAbstractExtensionFactory* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_extension.cpp", QtDesignerCFlags).}

proc fcQAbstractExtensionFactory_delete(self: pointer) {.importc: "QAbstractExtensionFactory_delete".}
proc `=destroy`(self: var QAbstractExtensionFactory) =
  if self.owned: fcQAbstractExtensionFactory_delete(self.h)

proc `=sink`(dest: var QAbstractExtensionFactory, source: QAbstractExtensionFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractExtensionFactory, source: QAbstractExtensionFactory) {.error.}
proc delete*(self: sink QAbstractExtensionFactory) =
  let h = self.h
  wasMoved(self)
  fcQAbstractExtensionFactory_delete(h)

type QAbstractExtensionManager* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

proc fcQAbstractExtensionManager_delete(self: pointer) {.importc: "QAbstractExtensionManager_delete".}
proc `=destroy`(self: var QAbstractExtensionManager) =
  if self.owned: fcQAbstractExtensionManager_delete(self.h)

proc `=sink`(dest: var QAbstractExtensionManager, source: QAbstractExtensionManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractExtensionManager, source: QAbstractExtensionManager) {.error.}
proc delete*(self: sink QAbstractExtensionManager) =
  let h = self.h
  wasMoved(self)
  fcQAbstractExtensionManager_delete(h)

