import ./gen_qlayout_types
export gen_qlayout_types

type QBoxLayout* = object of gen_qlayout_types.QLayout
proc `=copy`(dest: var QBoxLayout, source: QBoxLayout) {.error.}
proc `=sink`(dest: var QBoxLayout, source: QBoxLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QHBoxLayout* = object of QBoxLayout
proc `=copy`(dest: var QHBoxLayout, source: QHBoxLayout) {.error.}
proc `=sink`(dest: var QHBoxLayout, source: QHBoxLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QVBoxLayout* = object of QBoxLayout
proc `=copy`(dest: var QVBoxLayout, source: QVBoxLayout) {.error.}
proc `=sink`(dest: var QVBoxLayout, source: QVBoxLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

