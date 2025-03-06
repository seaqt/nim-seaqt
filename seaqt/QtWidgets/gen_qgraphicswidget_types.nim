import ./gen_qgraphicsitem_types
export gen_qgraphicsitem_types

# TODO Multiple inheritance from QGraphicsLayoutItem
type QGraphicsWidget* = object of gen_qgraphicsitem_types.QGraphicsObject
