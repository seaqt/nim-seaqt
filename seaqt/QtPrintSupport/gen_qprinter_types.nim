import ../QtGui/gen_qpagedpaintdevice_types
export gen_qpagedpaintdevice_types

type QPrinter* = object of gen_qpagedpaintdevice_types.QPagedPaintDevice
proc `=copy`(dest: var QPrinter, source: QPrinter) {.error.}
proc `=sink`(dest: var QPrinter, source: QPrinter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

