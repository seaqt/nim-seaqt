import ../QtCore/gen_qiodevice_types
export gen_qiodevice_types

type QLocalSocket* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QLocalSocket, source: QLocalSocket) {.error.}
proc `=sink`(dest: var QLocalSocket, source: QLocalSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

