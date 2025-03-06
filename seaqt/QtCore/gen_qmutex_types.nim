type QBasicMutex* {.inheritable, pure.} = object
  h*: pointer
type QMutex* = object of QBasicMutex
type QRecursiveMutex* {.inheritable, pure.} = object
  h*: pointer
