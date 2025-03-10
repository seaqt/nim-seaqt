import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGesture* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGesture, source: QGesture) {.error.}
proc `=sink`(dest: var QGesture, source: QGesture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QPanGesture* = object of QGesture
proc `=copy`(dest: var QPanGesture, source: QPanGesture) {.error.}
proc `=sink`(dest: var QPanGesture, source: QPanGesture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QPinchGesture* = object of QGesture
proc `=copy`(dest: var QPinchGesture, source: QPinchGesture) {.error.}
proc `=sink`(dest: var QPinchGesture, source: QPinchGesture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSwipeGesture* = object of QGesture
proc `=copy`(dest: var QSwipeGesture, source: QSwipeGesture) {.error.}
proc `=sink`(dest: var QSwipeGesture, source: QSwipeGesture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTapGesture* = object of QGesture
proc `=copy`(dest: var QTapGesture, source: QTapGesture) {.error.}
proc `=sink`(dest: var QTapGesture, source: QTapGesture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTapAndHoldGesture* = object of QGesture
proc `=copy`(dest: var QTapAndHoldGesture, source: QTapAndHoldGesture) {.error.}
proc `=sink`(dest: var QTapAndHoldGesture, source: QTapAndHoldGesture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QGestureEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QGestureEvent, source: QGestureEvent) {.error.}
proc `=sink`(dest: var QGestureEvent, source: QGestureEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

