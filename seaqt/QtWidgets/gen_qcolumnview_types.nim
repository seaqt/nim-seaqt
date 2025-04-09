import ./gen_qabstractitemview_types
export gen_qabstractitemview_types

type QColumnView* = object of gen_qabstractitemview_types.QAbstractItemView
proc `=copy`(dest: var QColumnView, source: QColumnView) {.error.}
proc `=sink`(dest: var QColumnView, source: QColumnView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

