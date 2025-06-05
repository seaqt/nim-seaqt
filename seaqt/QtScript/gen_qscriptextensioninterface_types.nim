import ../QtCore/gen_qfactoryinterface_types
export gen_qfactoryinterface_types

type QScriptExtensionInterface* = object of gen_qfactoryinterface_types.QFactoryInterface
proc `=copy`(dest: var QScriptExtensionInterface, source: QScriptExtensionInterface) {.error.}
proc `=sink`(dest: var QScriptExtensionInterface, source: QScriptExtensionInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

