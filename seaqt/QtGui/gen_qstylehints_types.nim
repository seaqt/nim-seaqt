import ../QtCore/gen_qobject_types
export gen_qobject_types

type QStyleHints* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QStyleHints, source: QStyleHints) {.error.}
proc `=sink`(dest: var QStyleHints, source: QStyleHints) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

