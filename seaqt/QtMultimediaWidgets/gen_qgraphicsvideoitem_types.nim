import ../QtWidgets/gen_qgraphicsitem_types
export gen_qgraphicsitem_types

type QGraphicsVideoItem* = object of gen_qgraphicsitem_types.QGraphicsObject
proc `=copy`(dest: var QGraphicsVideoItem, source: QGraphicsVideoItem) {.error.}
proc `=sink`(dest: var QGraphicsVideoItem, source: QGraphicsVideoItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

