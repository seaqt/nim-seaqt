import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEnginePage* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEnginePage, source: QWebEnginePage) {.error.}
proc `=sink`(dest: var QWebEnginePage, source: QWebEnginePage) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

