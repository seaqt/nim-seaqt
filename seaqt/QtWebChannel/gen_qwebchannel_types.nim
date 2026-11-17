import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebChannel* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebChannel, source: QWebChannel) {.error.}
proc `=sink`(dest: var QWebChannel, source: QWebChannel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

