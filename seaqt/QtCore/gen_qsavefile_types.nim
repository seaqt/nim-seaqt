import ./gen_qfiledevice_types
export gen_qfiledevice_types

type QSaveFile* = object of gen_qfiledevice_types.QFileDevice
proc `=copy`(dest: var QSaveFile, source: QSaveFile) {.error.}
proc `=sink`(dest: var QSaveFile, source: QSaveFile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

