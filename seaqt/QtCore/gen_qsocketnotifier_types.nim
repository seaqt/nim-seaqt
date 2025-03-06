import ./gen_qobject_types
export gen_qobject_types

type QSocketNotifier* = object of gen_qobject_types.QObject
type QSocketDescriptor* {.inheritable, pure.} = object
  h*: pointer
