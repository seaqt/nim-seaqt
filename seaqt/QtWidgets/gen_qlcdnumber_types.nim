import ./gen_qframe_types
export gen_qframe_types

type QLCDNumber* = object of gen_qframe_types.QFrame
proc `=copy`(dest: var QLCDNumber, source: QLCDNumber) {.error.}
proc `=sink`(dest: var QLCDNumber, source: QLCDNumber) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

