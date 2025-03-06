type QQmlImageProviderBase* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qjsengine_types
export gen_qjsengine_types

type QQmlEngine* = object of gen_qjsengine_types.QJSEngine
