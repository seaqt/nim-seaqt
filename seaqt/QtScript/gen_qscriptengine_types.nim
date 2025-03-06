type QScriptSyntaxCheckResult* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

type QScriptEngine* = object of gen_qobject_types.QObject
