import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlContext* = object of gen_qobject_types.QObject
type QQmlContextPropertyPair* {.inheritable, pure.} = object
  h*: pointer
