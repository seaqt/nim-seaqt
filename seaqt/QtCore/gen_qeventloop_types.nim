import ./gen_qobject_types
export gen_qobject_types

type QEventLoop* = object of gen_qobject_types.QObject
type QEventLoopLocker* {.inheritable, pure.} = object
  h*: pointer
