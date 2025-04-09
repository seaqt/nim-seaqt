import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QImage* = object of gen_qpaintdevice_types.QPaintDevice
