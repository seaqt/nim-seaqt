import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGraphicsEffect* = object of gen_qobject_types.QObject
type QGraphicsColorizeEffect* = object of QGraphicsEffect
type QGraphicsBlurEffect* = object of QGraphicsEffect
type QGraphicsDropShadowEffect* = object of QGraphicsEffect
type QGraphicsOpacityEffect* = object of QGraphicsEffect
