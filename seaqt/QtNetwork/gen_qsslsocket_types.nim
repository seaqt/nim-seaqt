import ./gen_qtcpsocket_types
export gen_qtcpsocket_types

type QSslSocket* = object of gen_qtcpsocket_types.QTcpSocket
proc `=copy`(dest: var QSslSocket, source: QSslSocket) {.error.}
proc `=sink`(dest: var QSslSocket, source: QSslSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

