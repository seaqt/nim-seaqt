import ../QtCore/gen_qobject_types
export gen_qobject_types

type QStyle* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QStyle, source: QStyle) {.error.}
proc `=sink`(dest: var QStyle, source: QStyle) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

