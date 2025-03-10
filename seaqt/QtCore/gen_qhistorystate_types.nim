import ./gen_qabstractstate_types
export gen_qabstractstate_types

type QHistoryState* = object of gen_qabstractstate_types.QAbstractState
proc `=copy`(dest: var QHistoryState, source: QHistoryState) {.error.}
proc `=sink`(dest: var QHistoryState, source: QHistoryState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

