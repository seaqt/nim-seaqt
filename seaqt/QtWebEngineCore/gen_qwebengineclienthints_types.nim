import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineClientHints* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineClientHints, source: QWebEngineClientHints) {.error.}
proc `=sink`(dest: var QWebEngineClientHints, source: QWebEngineClientHints) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

