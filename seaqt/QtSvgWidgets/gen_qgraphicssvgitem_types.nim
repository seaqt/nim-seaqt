import ../QtWidgets/gen_qgraphicsitem_types
export gen_qgraphicsitem_types

type QGraphicsSvgItem* = object of gen_qgraphicsitem_types.QGraphicsObject
proc `=copy`(dest: var QGraphicsSvgItem, source: QGraphicsSvgItem) {.error.}
proc `=sink`(dest: var QGraphicsSvgItem, source: QGraphicsSvgItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

