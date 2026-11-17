import ./gen_qquickitem_types
export gen_qquickitem_types

type QQuickPaintedItem* = object of gen_qquickitem_types.QQuickItem
proc `=copy`(dest: var QQuickPaintedItem, source: QQuickPaintedItem) {.error.}
proc `=sink`(dest: var QQuickPaintedItem, source: QQuickPaintedItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

