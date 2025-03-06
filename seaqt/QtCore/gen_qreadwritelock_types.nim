type QReadWriteLock* {.inheritable, pure.} = object
  h*: pointer
type QReadLocker* {.inheritable, pure.} = object
  h*: pointer
type QWriteLocker* {.inheritable, pure.} = object
  h*: pointer
