type QGraphicsItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qgraphicsitem.cpp", cflags).}

proc fcQGraphicsItem_delete(self: pointer) {.importc: "QGraphicsItem_delete".}
proc `=destroy`(self: var QGraphicsItem) =
  if self.owned: fcQGraphicsItem_delete(self.h)

proc `=sink`(dest: var QGraphicsItem, source: QGraphicsItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGraphicsItem, source: QGraphicsItem) {.error.}
proc delete*(self: sink QGraphicsItem) =
  let h = self.h
  wasMoved(self)
  fcQGraphicsItem_delete(h)

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
