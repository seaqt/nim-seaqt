type QEvent* {.inheritable, pure.} = object
  h*: pointer
type QTimerEvent* = object of QEvent
type QChildEvent* = object of QEvent
type QDynamicPropertyChangeEvent* = object of QEvent
