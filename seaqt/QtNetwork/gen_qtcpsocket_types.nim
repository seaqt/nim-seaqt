import ./gen_qabstractsocket_types
export gen_qabstractsocket_types

type QTcpSocket* = object of gen_qabstractsocket_types.QAbstractSocket
proc `=copy`(dest: var QTcpSocket, source: QTcpSocket) {.error.}
proc `=sink`(dest: var QTcpSocket, source: QTcpSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

