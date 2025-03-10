import ./gen_qpaintdevicewindow_types
export gen_qpaintdevicewindow_types

type QRasterWindow* = object of gen_qpaintdevicewindow_types.QPaintDeviceWindow
proc `=copy`(dest: var QRasterWindow, source: QRasterWindow) {.error.}
proc `=sink`(dest: var QRasterWindow, source: QRasterWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

