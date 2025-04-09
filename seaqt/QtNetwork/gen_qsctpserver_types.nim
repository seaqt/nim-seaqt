import ./gen_qtcpserver_types
export gen_qtcpserver_types

type QSctpServer* = object of gen_qtcpserver_types.QTcpServer
proc `=copy`(dest: var QSctpServer, source: QSctpServer) {.error.}
proc `=sink`(dest: var QSctpServer, source: QSctpServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

