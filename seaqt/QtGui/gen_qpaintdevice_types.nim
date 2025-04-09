type QPaintDevice* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qpaintdevice.cpp", cflags).}

proc fcQPaintDevice_delete(self: pointer) {.importc: "QPaintDevice_delete".}
proc `=destroy`(self: var QPaintDevice) =
  if self.owned: fcQPaintDevice_delete(self.h)

proc `=sink`(dest: var QPaintDevice, source: QPaintDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPaintDevice, source: QPaintDevice) {.error.}
proc delete*(self: sink QPaintDevice) =
  let h = self.h
  wasMoved(self)
  fcQPaintDevice_delete(h)

