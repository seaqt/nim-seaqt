import ./gen_qabstractitemview_types
export gen_qabstractitemview_types

type QHeaderView* = object of gen_qabstractitemview_types.QAbstractItemView
proc `=copy`(dest: var QHeaderView, source: QHeaderView) {.error.}
proc `=sink`(dest: var QHeaderView, source: QHeaderView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

