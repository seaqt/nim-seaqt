import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPicture* = object of gen_qpaintdevice_types.QPaintDevice
type QPictureIO* {.inheritable, pure.} = object
  h*: pointer
