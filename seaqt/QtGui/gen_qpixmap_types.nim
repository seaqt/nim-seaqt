import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPixmap* = object of gen_qpaintdevice_types.QPaintDevice
proc `=copy`(dest: var QPixmap, source: QPixmap) {.error.}
proc `=sink`(dest: var QPixmap, source: QPixmap) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

