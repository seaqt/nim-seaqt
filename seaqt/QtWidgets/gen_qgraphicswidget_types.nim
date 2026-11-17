import ./gen_qgraphicsitem_types
export gen_qgraphicsitem_types

# TODO Multiple inheritance from QGraphicsLayoutItem
type QGraphicsWidget* = object of gen_qgraphicsitem_types.QGraphicsObject
proc `=copy`(dest: var QGraphicsWidget, source: QGraphicsWidget) {.error.}
proc `=sink`(dest: var QGraphicsWidget, source: QGraphicsWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

