type QStringConverterBase* {.inheritable, pure.} = object
  h*: pointer
type QStringConverter* = object of QStringConverterBase
type QStringConverterBaseState* {.inheritable, pure.} = object
  h*: pointer
