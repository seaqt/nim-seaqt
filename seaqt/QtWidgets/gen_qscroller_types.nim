import ../QtCore/gen_qobject_types
export gen_qobject_types

type QScroller* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QScroller, source: QScroller) {.error.}
proc `=sink`(dest: var QScroller, source: QScroller) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

