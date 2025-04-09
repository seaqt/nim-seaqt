import ../QtCore/gen_qiodevice_types
export gen_qiodevice_types

type QAbstractSocket* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QAbstractSocket, source: QAbstractSocket) {.error.}
proc `=sink`(dest: var QAbstractSocket, source: QAbstractSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

