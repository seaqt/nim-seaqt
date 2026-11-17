import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsTransform* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGraphicsTransform, source: QGraphicsTransform) {.error.}
proc `=sink`(dest: var QGraphicsTransform, source: QGraphicsTransform) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsScale* = object of QGraphicsTransform
proc `=copy`(dest: var QGraphicsScale, source: QGraphicsScale) {.error.}
proc `=sink`(dest: var QGraphicsScale, source: QGraphicsScale) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QGraphicsRotation* = object of QGraphicsTransform
proc `=copy`(dest: var QGraphicsRotation, source: QGraphicsRotation) {.error.}
proc `=sink`(dest: var QGraphicsRotation, source: QGraphicsRotation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

