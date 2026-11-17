import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QImage* = object of gen_qpaintdevice_types.QPaintDevice
proc `=copy`(dest: var QImage, source: QImage) {.error.}
proc `=sink`(dest: var QImage, source: QImage) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

