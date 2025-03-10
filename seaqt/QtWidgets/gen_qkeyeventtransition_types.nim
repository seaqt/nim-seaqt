import ../QtCore/gen_qeventtransition_types
export gen_qeventtransition_types

type QKeyEventTransition* = object of gen_qeventtransition_types.QEventTransition
proc `=copy`(dest: var QKeyEventTransition, source: QKeyEventTransition) {.error.}
proc `=sink`(dest: var QKeyEventTransition, source: QKeyEventTransition) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

