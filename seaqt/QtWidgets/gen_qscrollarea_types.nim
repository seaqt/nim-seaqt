import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QScrollArea* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QScrollArea, source: QScrollArea) {.error.}
proc `=sink`(dest: var QScrollArea, source: QScrollArea) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

