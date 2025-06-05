import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPagedPaintDevice* = object of gen_qpaintdevice_types.QPaintDevice
proc `=copy`(dest: var QPagedPaintDevice, source: QPagedPaintDevice) {.error.}
proc `=sink`(dest: var QPagedPaintDevice, source: QPagedPaintDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QPagedPaintDeviceMargins* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpagedpaintdevice.cpp", QtGuiCFlags).}

proc fcQPagedPaintDeviceMargins_delete(self: pointer) {.importc: "QPagedPaintDevice__Margins_delete".}
proc `=destroy`(self: var QPagedPaintDeviceMargins) =
  if self.owned: fcQPagedPaintDeviceMargins_delete(self.h)

proc `=sink`(dest: var QPagedPaintDeviceMargins, source: QPagedPaintDeviceMargins) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPagedPaintDeviceMargins, source: QPagedPaintDeviceMargins) {.error.}
proc delete*(self: sink QPagedPaintDeviceMargins) =
  let h = self.h
  wasMoved(self)
  fcQPagedPaintDeviceMargins_delete(h)

