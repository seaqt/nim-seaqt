import ./gen_qobject_types
export gen_qobject_types

type QAbstractState* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractState, source: QAbstractState) {.error.}
proc `=sink`(dest: var QAbstractState, source: QAbstractState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

