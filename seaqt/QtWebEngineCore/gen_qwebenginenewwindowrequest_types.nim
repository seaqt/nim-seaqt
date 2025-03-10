import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineNewWindowRequest* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineNewWindowRequest, source: QWebEngineNewWindowRequest) {.error.}
proc `=sink`(dest: var QWebEngineNewWindowRequest, source: QWebEngineNewWindowRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

