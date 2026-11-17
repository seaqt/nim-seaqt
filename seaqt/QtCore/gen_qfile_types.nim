import ./gen_qfiledevice_types
export gen_qfiledevice_types

type QFile* = object of gen_qfiledevice_types.QFileDevice
proc `=copy`(dest: var QFile, source: QFile) {.error.}
proc `=sink`(dest: var QFile, source: QFile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

