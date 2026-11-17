import ./gen_qframe_types
export gen_qframe_types

type QAbstractScrollArea* = object of gen_qframe_types.QFrame
proc `=copy`(dest: var QAbstractScrollArea, source: QAbstractScrollArea) {.error.}
proc `=sink`(dest: var QAbstractScrollArea, source: QAbstractScrollArea) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

