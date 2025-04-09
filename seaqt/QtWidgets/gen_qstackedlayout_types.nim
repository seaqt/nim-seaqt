import ./gen_qlayout_types
export gen_qlayout_types

type QStackedLayout* = object of gen_qlayout_types.QLayout
proc `=copy`(dest: var QStackedLayout, source: QStackedLayout) {.error.}
proc `=sink`(dest: var QStackedLayout, source: QStackedLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

