import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineContextMenuRequest* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineContextMenuRequest, source: QWebEngineContextMenuRequest) {.error.}
proc `=sink`(dest: var QWebEngineContextMenuRequest, source: QWebEngineContextMenuRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

