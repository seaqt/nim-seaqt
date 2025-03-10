import ./gen_qframe_types
export gen_qframe_types

type QToolBox* = object of gen_qframe_types.QFrame
proc `=copy`(dest: var QToolBox, source: QToolBox) {.error.}
proc `=sink`(dest: var QToolBox, source: QToolBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

