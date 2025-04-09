import ../QtGui/gen_qpaintdevice_types
export gen_qpaintdevice_types

type QSvgGenerator* = object of gen_qpaintdevice_types.QPaintDevice
proc `=copy`(dest: var QSvgGenerator, source: QSvgGenerator) {.error.}
proc `=sink`(dest: var QSvgGenerator, source: QSvgGenerator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

