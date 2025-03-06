import ../QtWidgets/gen_qgraphicsitem_types
export gen_qgraphicsitem_types

# TODO Multiple inheritance from QMediaBindableInterface
type QGraphicsVideoItem* = object of gen_qgraphicsitem_types.QGraphicsObject
