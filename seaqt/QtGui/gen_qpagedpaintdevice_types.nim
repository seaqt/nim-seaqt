import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPagedPaintDevice* = object of gen_qpaintdevice_types.QPaintDevice
proc `=copy`(dest: var QPagedPaintDevice, source: QPagedPaintDevice) {.error.}
proc `=sink`(dest: var QPagedPaintDevice, source: QPagedPaintDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

