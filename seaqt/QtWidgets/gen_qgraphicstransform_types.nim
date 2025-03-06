import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsTransform* = object of gen_qobject_types.QObject
type QGraphicsScale* = object of QGraphicsTransform
type QGraphicsRotation* = object of QGraphicsTransform
