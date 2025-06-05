import ./gen_qabstractsocket_types
export gen_qabstractsocket_types

type QUdpSocket* = object of gen_qabstractsocket_types.QAbstractSocket
proc `=copy`(dest: var QUdpSocket, source: QUdpSocket) {.error.}
proc `=sink`(dest: var QUdpSocket, source: QUdpSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

