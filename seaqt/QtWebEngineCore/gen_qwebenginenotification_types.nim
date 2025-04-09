import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineNotification* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineNotification, source: QWebEngineNotification) {.error.}
proc `=sink`(dest: var QWebEngineNotification, source: QWebEngineNotification) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

