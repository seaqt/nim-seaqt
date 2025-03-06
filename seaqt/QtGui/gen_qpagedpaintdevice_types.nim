import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPagedPaintDevice* = object of gen_qpaintdevice_types.QPaintDevice
type QPagedPaintDeviceMargins* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qpagedpaintdevice.cpp", cflags).}

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

