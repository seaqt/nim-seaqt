import ../QtCore/gen_qobject_types
export gen_qobject_types

type QTcpServer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QTcpServer, source: QTcpServer) {.error.}
proc `=sink`(dest: var QTcpServer, source: QTcpServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

