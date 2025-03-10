import ./gen_qgraphicslayoutitem_types
export gen_qgraphicslayoutitem_types

type QGraphicsLayout* = object of gen_qgraphicslayoutitem_types.QGraphicsLayoutItem
proc `=copy`(dest: var QGraphicsLayout, source: QGraphicsLayout) {.error.}
proc `=sink`(dest: var QGraphicsLayout, source: QGraphicsLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

