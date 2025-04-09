import ./gen_qfile_types
export gen_qfile_types

type QTemporaryFile* = object of gen_qfile_types.QFile
proc `=copy`(dest: var QTemporaryFile, source: QTemporaryFile) {.error.}
proc `=sink`(dest: var QTemporaryFile, source: QTemporaryFile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

