import ./gen_qiodevice_types
export gen_qiodevice_types

type QFileDevice* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QFileDevice, source: QFileDevice) {.error.}
proc `=sink`(dest: var QFileDevice, source: QFileDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

