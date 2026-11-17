import ./gen_qabstractitemdelegate_types
export gen_qabstractitemdelegate_types

type QItemDelegate* = object of gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc `=copy`(dest: var QItemDelegate, source: QItemDelegate) {.error.}
proc `=sink`(dest: var QItemDelegate, source: QItemDelegate) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

