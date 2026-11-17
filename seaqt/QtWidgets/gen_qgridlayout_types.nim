import ./gen_qlayout_types
export gen_qlayout_types

type QGridLayout* = object of gen_qlayout_types.QLayout
proc `=copy`(dest: var QGridLayout, source: QGridLayout) {.error.}
proc `=sink`(dest: var QGridLayout, source: QGridLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

