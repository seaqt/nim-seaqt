type QGraphicsItem* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QGraphicsItem
type QGraphicsObject* = object of gen_qobject_types.QObject
type QAbstractGraphicsShapeItem* = object of QGraphicsItem
type QGraphicsPathItem* = object of QAbstractGraphicsShapeItem
type QGraphicsRectItem* = object of QAbstractGraphicsShapeItem
type QGraphicsEllipseItem* = object of QAbstractGraphicsShapeItem
type QGraphicsPolygonItem* = object of QAbstractGraphicsShapeItem
type QGraphicsLineItem* = object of QGraphicsItem
type QGraphicsPixmapItem* = object of QGraphicsItem
type QGraphicsTextItem* = object of QGraphicsObject
type QGraphicsSimpleTextItem* = object of QAbstractGraphicsShapeItem
type QGraphicsItemGroup* = object of QGraphicsItem
