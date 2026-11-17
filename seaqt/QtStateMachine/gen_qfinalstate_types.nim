import ./gen_qabstractstate_types
export gen_qabstractstate_types

type QFinalState* = object of gen_qabstractstate_types.QAbstractState
proc `=copy`(dest: var QFinalState, source: QFinalState) {.error.}
proc `=sink`(dest: var QFinalState, source: QFinalState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

