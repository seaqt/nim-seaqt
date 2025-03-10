import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QGraphicsView* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QGraphicsView, source: QGraphicsView) {.error.}
proc `=sink`(dest: var QGraphicsView, source: QGraphicsView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

