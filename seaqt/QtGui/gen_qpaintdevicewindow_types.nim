import ./gen_qwindow_types
export gen_qwindow_types

# TODO Multiple inheritance from QPaintDevice
type QPaintDeviceWindow* = object of gen_qwindow_types.QWindow
proc `=copy`(dest: var QPaintDeviceWindow, source: QPaintDeviceWindow) {.error.}
proc `=sink`(dest: var QPaintDeviceWindow, source: QPaintDeviceWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

