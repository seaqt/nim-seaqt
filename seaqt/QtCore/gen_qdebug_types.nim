import ./gen_qiodevicebase_types
export gen_qiodevicebase_types

type QDebug* = object of gen_qiodevicebase_types.QIODeviceBase
type QDebugStateSaver* {.inheritable, pure.} = object
  h*: pointer
type QNoDebug* {.inheritable, pure.} = object
  h*: pointer
