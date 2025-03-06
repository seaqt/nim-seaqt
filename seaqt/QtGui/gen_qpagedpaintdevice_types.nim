import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPagedPaintDevice* = object of gen_qpaintdevice_types.QPaintDevice
type QPagedPaintDeviceMargins* {.inheritable, pure.} = object
  h*: pointer
