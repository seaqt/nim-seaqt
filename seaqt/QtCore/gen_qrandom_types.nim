type QRandomGenerator* {.inheritable, pure.} = object
  h*: pointer
type QRandomGenerator64* = object of QRandomGenerator
