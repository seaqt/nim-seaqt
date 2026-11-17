import ../QtCore/gen_qeventtransition_types
export gen_qeventtransition_types

type QMouseEventTransition* = object of gen_qeventtransition_types.QEventTransition
proc `=copy`(dest: var QMouseEventTransition, source: QMouseEventTransition) {.error.}
proc `=sink`(dest: var QMouseEventTransition, source: QMouseEventTransition) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

