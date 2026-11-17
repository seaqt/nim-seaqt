import ./gen_qabstractstate_types
export gen_qabstractstate_types

type QState* = object of gen_qabstractstate_types.QAbstractState
proc `=copy`(dest: var QState, source: QState) {.error.}
proc `=sink`(dest: var QState, source: QState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

