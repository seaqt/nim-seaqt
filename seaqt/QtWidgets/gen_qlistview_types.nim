import ./gen_qabstractitemview_types
export gen_qabstractitemview_types

type QListView* = object of gen_qabstractitemview_types.QAbstractItemView
proc `=copy`(dest: var QListView, source: QListView) {.error.}
proc `=sink`(dest: var QListView, source: QListView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

