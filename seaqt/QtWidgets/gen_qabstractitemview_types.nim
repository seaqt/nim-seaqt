import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QAbstractItemView* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QAbstractItemView, source: QAbstractItemView) {.error.}
proc `=sink`(dest: var QAbstractItemView, source: QAbstractItemView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

