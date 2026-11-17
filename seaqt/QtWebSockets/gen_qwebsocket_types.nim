import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebSocket* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebSocket, source: QWebSocket) {.error.}
proc `=sink`(dest: var QWebSocket, source: QWebSocket) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

