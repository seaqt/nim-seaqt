type QGenericArgument* {.inheritable, pure.} = object
  h*: pointer
type QGenericReturnArgument* = object of QGenericArgument
type QMetaObject* {.inheritable, pure.} = object
  h*: pointer
type QMetaObjectConnection* {.inheritable, pure.} = object
  h*: pointer
type QMetaObjectSuperData* {.inheritable, pure.} = object
  h*: pointer
