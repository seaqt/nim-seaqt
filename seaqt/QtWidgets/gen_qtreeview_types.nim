import ./gen_qabstractitemview_types
export gen_qabstractitemview_types

type QTreeView* = object of gen_qabstractitemview_types.QAbstractItemView
proc `=copy`(dest: var QTreeView, source: QTreeView) {.error.}
proc `=sink`(dest: var QTreeView, source: QTreeView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

