import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsItemAnimation* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGraphicsItemAnimation, source: QGraphicsItemAnimation) {.error.}
proc `=sink`(dest: var QGraphicsItemAnimation, source: QGraphicsItemAnimation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

