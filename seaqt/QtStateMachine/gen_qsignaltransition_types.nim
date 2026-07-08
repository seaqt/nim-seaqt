import ./gen_qabstracttransition_types
export gen_qabstracttransition_types

type QSignalTransition* = object of gen_qabstracttransition_types.QAbstractTransition
proc `=copy`(dest: var QSignalTransition, source: QSignalTransition) {.error.}
proc `=sink`(dest: var QSignalTransition, source: QSignalTransition) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

