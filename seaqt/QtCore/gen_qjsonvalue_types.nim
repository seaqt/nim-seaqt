type QJsonValue* {.inheritable, pure.} = object
  h*: pointer
type QJsonValueConstRef* {.inheritable, pure.} = object
  h*: pointer
type QJsonValueRef* = object of QJsonValueConstRef
