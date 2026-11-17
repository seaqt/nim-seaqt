import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebHistoryInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebHistoryInterface, source: QWebHistoryInterface) {.error.}
proc `=sink`(dest: var QWebHistoryInterface, source: QWebHistoryInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

