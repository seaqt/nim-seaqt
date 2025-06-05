import ./gen_qabstractitemview_types
export gen_qabstractitemview_types

type QTableView* = object of gen_qabstractitemview_types.QAbstractItemView
proc `=copy`(dest: var QTableView, source: QTableView) {.error.}
proc `=sink`(dest: var QTableView, source: QTableView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

