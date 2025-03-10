import ./gen_qabstractitemdelegate_types
export gen_qabstractitemdelegate_types

type QStyledItemDelegate* = object of gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc `=copy`(dest: var QStyledItemDelegate, source: QStyledItemDelegate) {.error.}
proc `=sink`(dest: var QStyledItemDelegate, source: QStyledItemDelegate) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

