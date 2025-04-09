import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlImageProviderBase* = object of gen_qobject_types.QObject
import ./gen_qjsengine_types
export gen_qjsengine_types

type QQmlEngine* = object of gen_qjsengine_types.QJSEngine
