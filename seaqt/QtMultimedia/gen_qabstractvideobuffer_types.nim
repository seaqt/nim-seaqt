type QAbstractVideoBuffer* {.inheritable, pure.} = object
  h*: pointer
type QAbstractPlanarVideoBuffer* = object of QAbstractVideoBuffer
