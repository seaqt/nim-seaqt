import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsScene* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGraphicsScene, source: QGraphicsScene) {.error.}
proc `=sink`(dest: var QGraphicsScene, source: QGraphicsScene) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

