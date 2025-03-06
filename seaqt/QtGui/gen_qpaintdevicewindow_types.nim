import ./gen_qwindow_types
export gen_qwindow_types

# TODO Multiple inheritance from QPaintDevice
type QPaintDeviceWindow* = object of gen_qwindow_types.QWindow
