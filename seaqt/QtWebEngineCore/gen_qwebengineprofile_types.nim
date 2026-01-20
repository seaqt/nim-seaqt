import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineProfile* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineProfile, source: QWebEngineProfile) {.error.}
proc `=sink`(dest: var QWebEngineProfile, source: QWebEngineProfile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

