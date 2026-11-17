import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineNavigationRequest* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineNavigationRequest, source: QWebEngineNavigationRequest) {.error.}
proc `=sink`(dest: var QWebEngineNavigationRequest, source: QWebEngineNavigationRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

