type QQmlTypesExtensionInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Qml") & " -fPIC"
{.compile("gen_qqmlextensioninterface.cpp", cflags).}

proc fcQQmlTypesExtensionInterface_delete(self: pointer) {.importc: "QQmlTypesExtensionInterface_delete".}
proc `=destroy`(self: var QQmlTypesExtensionInterface) =
  if self.owned: fcQQmlTypesExtensionInterface_delete(self.h)

proc `=sink`(dest: var QQmlTypesExtensionInterface, source: QQmlTypesExtensionInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlTypesExtensionInterface, source: QQmlTypesExtensionInterface) {.error.}
proc delete*(self: sink QQmlTypesExtensionInterface) =
  let h = self.h
  wasMoved(self)
  fcQQmlTypesExtensionInterface_delete(h)

type QQmlExtensionInterface* = object of QQmlTypesExtensionInterface
type QQmlEngineExtensionInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQQmlEngineExtensionInterface_delete(self: pointer) {.importc: "QQmlEngineExtensionInterface_delete".}
proc `=destroy`(self: var QQmlEngineExtensionInterface) =
  if self.owned: fcQQmlEngineExtensionInterface_delete(self.h)

proc `=sink`(dest: var QQmlEngineExtensionInterface, source: QQmlEngineExtensionInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlEngineExtensionInterface, source: QQmlEngineExtensionInterface) {.error.}
proc delete*(self: sink QQmlEngineExtensionInterface) =
  let h = self.h
  wasMoved(self)
  fcQQmlEngineExtensionInterface_delete(h)

