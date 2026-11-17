import ./gen_qtcpsocket_types
export gen_qtcpsocket_types

type QSctpSocket* = object of gen_qtcpsocket_types.QTcpSocket
proc `=copy`(dest: var QSctpSocket, source: QSctpSocket) {.error.}
proc `=sink`(dest: var QSctpSocket, source: QSctpSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

