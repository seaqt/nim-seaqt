import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QQmlExtensionInterface
type QQmlExtensionPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlExtensionPlugin, source: QQmlExtensionPlugin) {.error.}
proc `=sink`(dest: var QQmlExtensionPlugin, source: QQmlExtensionPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

# TODO Multiple inheritance from QQmlEngineExtensionInterface
type QQmlEngineExtensionPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlEngineExtensionPlugin, source: QQmlEngineExtensionPlugin) {.error.}
proc `=sink`(dest: var QQmlEngineExtensionPlugin, source: QQmlEngineExtensionPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

