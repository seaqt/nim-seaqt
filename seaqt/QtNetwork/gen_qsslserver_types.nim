import ./gen_qtcpserver_types
export gen_qtcpserver_types

type QSslServer* = object of gen_qtcpserver_types.QTcpServer
proc `=copy`(dest: var QSslServer, source: QSslServer) {.error.}
proc `=sink`(dest: var QSslServer, source: QSslServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

