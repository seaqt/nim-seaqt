import ./gen_qmediaobject_types
export gen_qmediaobject_types

type QCamera* = object of gen_qmediaobject_types.QMediaObject
type QCameraFrameRateRange* {.inheritable, pure.} = object
  h*: pointer
