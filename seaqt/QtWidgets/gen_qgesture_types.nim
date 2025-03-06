import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGesture* = object of gen_qobject_types.QObject
type QPanGesture* = object of QGesture
type QPinchGesture* = object of QGesture
type QSwipeGesture* = object of QGesture
type QTapGesture* = object of QGesture
type QTapAndHoldGesture* = object of QGesture
import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QGestureEvent* = object of gen_qcoreevent_types.QEvent
