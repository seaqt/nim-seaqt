import ./gen_qframe_types
export gen_qframe_types

type QLabel* = object of gen_qframe_types.QFrame
proc `=copy`(dest: var QLabel, source: QLabel) {.error.}
proc `=sink`(dest: var QLabel, source: QLabel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

