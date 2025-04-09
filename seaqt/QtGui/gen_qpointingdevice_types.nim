type QPointingDeviceUniqueId* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qinputdevice_types
export gen_qinputdevice_types

type QPointingDevice* = object of gen_qinputdevice_types.QInputDevice
