import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QQmlExtensionInterface
type QQmlExtensionPlugin* = object of gen_qobject_types.QObject
# TODO Multiple inheritance from QQmlEngineExtensionInterface
type QQmlEngineExtensionPlugin* = object of gen_qobject_types.QObject
