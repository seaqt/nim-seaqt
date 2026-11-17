import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebSocketServer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebSocketServer, source: QWebSocketServer) {.error.}
proc `=sink`(dest: var QWebSocketServer, source: QWebSocketServer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

