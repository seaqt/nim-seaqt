import ./gen_qobject_types
export gen_qobject_types

type QAbstractTransition* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractTransition, source: QAbstractTransition) {.error.}
proc `=sink`(dest: var QAbstractTransition, source: QAbstractTransition) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

