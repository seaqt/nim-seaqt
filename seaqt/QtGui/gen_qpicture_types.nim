import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPicture* = object of gen_qpaintdevice_types.QPaintDevice
type QPictureIO* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qpicture.cpp", cflags).}

proc fcQPictureIO_delete(self: pointer) {.importc: "QPictureIO_delete".}
proc `=destroy`(self: var QPictureIO) =
  if self.owned: fcQPictureIO_delete(self.h)

proc `=sink`(dest: var QPictureIO, source: QPictureIO) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPictureIO, source: QPictureIO) {.error.}
proc delete*(self: sink QPictureIO) =
  let h = self.h
  wasMoved(self)
  fcQPictureIO_delete(h)

