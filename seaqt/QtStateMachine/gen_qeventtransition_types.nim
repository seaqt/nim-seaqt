import ./gen_qabstracttransition_types
export gen_qabstracttransition_types

type QEventTransition* = object of gen_qabstracttransition_types.QAbstractTransition
proc `=copy`(dest: var QEventTransition, source: QEventTransition) {.error.}
proc `=sink`(dest: var QEventTransition, source: QEventTransition) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

