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
proc `=copy`(dest: var QGraphicsObject, source: QGraphicsObject) {.error.}
proc `=sink`(dest: var QGraphicsObject, source: QGraphicsObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractGraphicsShapeItem* = object of QGraphicsItem
proc `=copy`(dest: var QAbstractGraphicsShapeItem, source: QAbstractGraphicsShapeItem) {.error.}
proc `=sink`(dest: var QAbstractGraphicsShapeItem, source: QAbstractGraphicsShapeItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsPathItem* = object of QAbstractGraphicsShapeItem
proc `=copy`(dest: var QGraphicsPathItem, source: QGraphicsPathItem) {.error.}
proc `=sink`(dest: var QGraphicsPathItem, source: QGraphicsPathItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsRectItem* = object of QAbstractGraphicsShapeItem
proc `=copy`(dest: var QGraphicsRectItem, source: QGraphicsRectItem) {.error.}
proc `=sink`(dest: var QGraphicsRectItem, source: QGraphicsRectItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsEllipseItem* = object of QAbstractGraphicsShapeItem
proc `=copy`(dest: var QGraphicsEllipseItem, source: QGraphicsEllipseItem) {.error.}
proc `=sink`(dest: var QGraphicsEllipseItem, source: QGraphicsEllipseItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsPolygonItem* = object of QAbstractGraphicsShapeItem
proc `=copy`(dest: var QGraphicsPolygonItem, source: QGraphicsPolygonItem) {.error.}
proc `=sink`(dest: var QGraphicsPolygonItem, source: QGraphicsPolygonItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsLineItem* = object of QGraphicsItem
proc `=copy`(dest: var QGraphicsLineItem, source: QGraphicsLineItem) {.error.}
proc `=sink`(dest: var QGraphicsLineItem, source: QGraphicsLineItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsPixmapItem* = object of QGraphicsItem
proc `=copy`(dest: var QGraphicsPixmapItem, source: QGraphicsPixmapItem) {.error.}
proc `=sink`(dest: var QGraphicsPixmapItem, source: QGraphicsPixmapItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsTextItem* = object of QGraphicsObject
proc `=copy`(dest: var QGraphicsTextItem, source: QGraphicsTextItem) {.error.}
proc `=sink`(dest: var QGraphicsTextItem, source: QGraphicsTextItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsSimpleTextItem* = object of QAbstractGraphicsShapeItem
proc `=copy`(dest: var QGraphicsSimpleTextItem, source: QGraphicsSimpleTextItem) {.error.}
proc `=sink`(dest: var QGraphicsSimpleTextItem, source: QGraphicsSimpleTextItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsItemGroup* = object of QGraphicsItem
proc `=copy`(dest: var QGraphicsItemGroup, source: QGraphicsItemGroup) {.error.}
proc `=sink`(dest: var QGraphicsItemGroup, source: QGraphicsItemGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

