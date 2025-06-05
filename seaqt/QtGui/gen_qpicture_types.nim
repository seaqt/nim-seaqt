import ./gen_qpaintdevice_types
export gen_qpaintdevice_types

type QPicture* = object of gen_qpaintdevice_types.QPaintDevice
proc `=copy`(dest: var QPicture, source: QPicture) {.error.}
proc `=sink`(dest: var QPicture, source: QPicture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

