import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QInputEvent* = object of gen_qcoreevent_types.QEvent
type QEnterEvent* = object of gen_qcoreevent_types.QEvent
type QMouseEvent* = object of QInputEvent
type QHoverEvent* = object of QInputEvent
type QWheelEvent* = object of QInputEvent
type QTabletEvent* = object of QInputEvent
type QNativeGestureEvent* = object of QInputEvent
type QKeyEvent* = object of QInputEvent
type QFocusEvent* = object of gen_qcoreevent_types.QEvent
type QPaintEvent* = object of gen_qcoreevent_types.QEvent
type QMoveEvent* = object of gen_qcoreevent_types.QEvent
type QExposeEvent* = object of gen_qcoreevent_types.QEvent
type QPlatformSurfaceEvent* = object of gen_qcoreevent_types.QEvent
type QResizeEvent* = object of gen_qcoreevent_types.QEvent
type QCloseEvent* = object of gen_qcoreevent_types.QEvent
type QIconDragEvent* = object of gen_qcoreevent_types.QEvent
type QShowEvent* = object of gen_qcoreevent_types.QEvent
type QHideEvent* = object of gen_qcoreevent_types.QEvent
type QContextMenuEvent* = object of QInputEvent
type QInputMethodEvent* = object of gen_qcoreevent_types.QEvent
type QInputMethodQueryEvent* = object of gen_qcoreevent_types.QEvent
type QDropEvent* = object of gen_qcoreevent_types.QEvent
type QDragMoveEvent* = object of QDropEvent
type QDragEnterEvent* = object of QDragMoveEvent
type QDragLeaveEvent* = object of gen_qcoreevent_types.QEvent
type QHelpEvent* = object of gen_qcoreevent_types.QEvent
type QStatusTipEvent* = object of gen_qcoreevent_types.QEvent
type QWhatsThisClickedEvent* = object of gen_qcoreevent_types.QEvent
type QActionEvent* = object of gen_qcoreevent_types.QEvent
type QFileOpenEvent* = object of gen_qcoreevent_types.QEvent
type QToolBarChangeEvent* = object of gen_qcoreevent_types.QEvent
type QShortcutEvent* = object of gen_qcoreevent_types.QEvent
type QWindowStateChangeEvent* = object of gen_qcoreevent_types.QEvent
type QPointingDeviceUniqueId* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qevent.cpp", cflags).}

proc fcQPointingDeviceUniqueId_delete(self: pointer) {.importc: "QPointingDeviceUniqueId_delete".}
proc `=destroy`(self: var QPointingDeviceUniqueId) =
  if self.owned: fcQPointingDeviceUniqueId_delete(self.h)

proc `=sink`(dest: var QPointingDeviceUniqueId, source: QPointingDeviceUniqueId) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPointingDeviceUniqueId, source: QPointingDeviceUniqueId) {.error.}
proc delete*(self: sink QPointingDeviceUniqueId) =
  let h = self.h
  wasMoved(self)
  fcQPointingDeviceUniqueId_delete(h)

type QTouchEvent* = object of QInputEvent
type QScrollPrepareEvent* = object of gen_qcoreevent_types.QEvent
type QScrollEvent* = object of gen_qcoreevent_types.QEvent
type QScreenOrientationChangeEvent* = object of gen_qcoreevent_types.QEvent
type QApplicationStateChangeEvent* = object of gen_qcoreevent_types.QEvent
type QInputMethodEventAttribute* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQInputMethodEventAttribute_delete(self: pointer) {.importc: "QInputMethodEvent__Attribute_delete".}
proc `=destroy`(self: var QInputMethodEventAttribute) =
  if self.owned: fcQInputMethodEventAttribute_delete(self.h)

proc `=sink`(dest: var QInputMethodEventAttribute, source: QInputMethodEventAttribute) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QInputMethodEventAttribute, source: QInputMethodEventAttribute) {.error.}
proc delete*(self: sink QInputMethodEventAttribute) =
  let h = self.h
  wasMoved(self)
  fcQInputMethodEventAttribute_delete(h)

type QTouchEventTouchPoint* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTouchEventTouchPoint_delete(self: pointer) {.importc: "QTouchEvent__TouchPoint_delete".}
proc `=destroy`(self: var QTouchEventTouchPoint) =
  if self.owned: fcQTouchEventTouchPoint_delete(self.h)

proc `=sink`(dest: var QTouchEventTouchPoint, source: QTouchEventTouchPoint) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTouchEventTouchPoint, source: QTouchEventTouchPoint) {.error.}
proc delete*(self: sink QTouchEventTouchPoint) =
  let h = self.h
  wasMoved(self)
  fcQTouchEventTouchPoint_delete(h)

