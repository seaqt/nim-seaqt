type QCborParserError* {.inheritable, pure.} = object
  h*: pointer
type QCborValue* {.inheritable, pure.} = object
  h*: pointer
type QCborValueConstRef* {.inheritable, pure.} = object
  h*: pointer
type QCborValueRef* = object of QCborValueConstRef
