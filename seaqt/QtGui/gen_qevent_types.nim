import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QInputEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QInputEvent, source: QInputEvent) {.error.}
proc `=sink`(dest: var QInputEvent, source: QInputEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QEnterEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QEnterEvent, source: QEnterEvent) {.error.}
proc `=sink`(dest: var QEnterEvent, source: QEnterEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QMouseEvent* = object of QInputEvent
proc `=copy`(dest: var QMouseEvent, source: QMouseEvent) {.error.}
proc `=sink`(dest: var QMouseEvent, source: QMouseEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QHoverEvent* = object of QInputEvent
proc `=copy`(dest: var QHoverEvent, source: QHoverEvent) {.error.}
proc `=sink`(dest: var QHoverEvent, source: QHoverEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWheelEvent* = object of QInputEvent
proc `=copy`(dest: var QWheelEvent, source: QWheelEvent) {.error.}
proc `=sink`(dest: var QWheelEvent, source: QWheelEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTabletEvent* = object of QInputEvent
proc `=copy`(dest: var QTabletEvent, source: QTabletEvent) {.error.}
proc `=sink`(dest: var QTabletEvent, source: QTabletEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QNativeGestureEvent* = object of QInputEvent
proc `=copy`(dest: var QNativeGestureEvent, source: QNativeGestureEvent) {.error.}
proc `=sink`(dest: var QNativeGestureEvent, source: QNativeGestureEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QKeyEvent* = object of QInputEvent
proc `=copy`(dest: var QKeyEvent, source: QKeyEvent) {.error.}
proc `=sink`(dest: var QKeyEvent, source: QKeyEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QFocusEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QFocusEvent, source: QFocusEvent) {.error.}
proc `=sink`(dest: var QFocusEvent, source: QFocusEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QPaintEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QPaintEvent, source: QPaintEvent) {.error.}
proc `=sink`(dest: var QPaintEvent, source: QPaintEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QMoveEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QMoveEvent, source: QMoveEvent) {.error.}
proc `=sink`(dest: var QMoveEvent, source: QMoveEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QExposeEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QExposeEvent, source: QExposeEvent) {.error.}
proc `=sink`(dest: var QExposeEvent, source: QExposeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QPlatformSurfaceEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QPlatformSurfaceEvent, source: QPlatformSurfaceEvent) {.error.}
proc `=sink`(dest: var QPlatformSurfaceEvent, source: QPlatformSurfaceEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QResizeEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QResizeEvent, source: QResizeEvent) {.error.}
proc `=sink`(dest: var QResizeEvent, source: QResizeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QCloseEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QCloseEvent, source: QCloseEvent) {.error.}
proc `=sink`(dest: var QCloseEvent, source: QCloseEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QIconDragEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QIconDragEvent, source: QIconDragEvent) {.error.}
proc `=sink`(dest: var QIconDragEvent, source: QIconDragEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QShowEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QShowEvent, source: QShowEvent) {.error.}
proc `=sink`(dest: var QShowEvent, source: QShowEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QHideEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QHideEvent, source: QHideEvent) {.error.}
proc `=sink`(dest: var QHideEvent, source: QHideEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QContextMenuEvent* = object of QInputEvent
proc `=copy`(dest: var QContextMenuEvent, source: QContextMenuEvent) {.error.}
proc `=sink`(dest: var QContextMenuEvent, source: QContextMenuEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QInputMethodEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QInputMethodEvent, source: QInputMethodEvent) {.error.}
proc `=sink`(dest: var QInputMethodEvent, source: QInputMethodEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QInputMethodQueryEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QInputMethodQueryEvent, source: QInputMethodQueryEvent) {.error.}
proc `=sink`(dest: var QInputMethodQueryEvent, source: QInputMethodQueryEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDropEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QDropEvent, source: QDropEvent) {.error.}
proc `=sink`(dest: var QDropEvent, source: QDropEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDragMoveEvent* = object of QDropEvent
proc `=copy`(dest: var QDragMoveEvent, source: QDragMoveEvent) {.error.}
proc `=sink`(dest: var QDragMoveEvent, source: QDragMoveEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDragEnterEvent* = object of QDragMoveEvent
proc `=copy`(dest: var QDragEnterEvent, source: QDragEnterEvent) {.error.}
proc `=sink`(dest: var QDragEnterEvent, source: QDragEnterEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDragLeaveEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QDragLeaveEvent, source: QDragLeaveEvent) {.error.}
proc `=sink`(dest: var QDragLeaveEvent, source: QDragLeaveEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QHelpEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QHelpEvent, source: QHelpEvent) {.error.}
proc `=sink`(dest: var QHelpEvent, source: QHelpEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStatusTipEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QStatusTipEvent, source: QStatusTipEvent) {.error.}
proc `=sink`(dest: var QStatusTipEvent, source: QStatusTipEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWhatsThisClickedEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QWhatsThisClickedEvent, source: QWhatsThisClickedEvent) {.error.}
proc `=sink`(dest: var QWhatsThisClickedEvent, source: QWhatsThisClickedEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QActionEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QActionEvent, source: QActionEvent) {.error.}
proc `=sink`(dest: var QActionEvent, source: QActionEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QFileOpenEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QFileOpenEvent, source: QFileOpenEvent) {.error.}
proc `=sink`(dest: var QFileOpenEvent, source: QFileOpenEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QToolBarChangeEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QToolBarChangeEvent, source: QToolBarChangeEvent) {.error.}
proc `=sink`(dest: var QToolBarChangeEvent, source: QToolBarChangeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QShortcutEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QShortcutEvent, source: QShortcutEvent) {.error.}
proc `=sink`(dest: var QShortcutEvent, source: QShortcutEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWindowStateChangeEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QWindowStateChangeEvent, source: QWindowStateChangeEvent) {.error.}
proc `=sink`(dest: var QWindowStateChangeEvent, source: QWindowStateChangeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

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
proc `=copy`(dest: var QTouchEvent, source: QTouchEvent) {.error.}
proc `=sink`(dest: var QTouchEvent, source: QTouchEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QScrollPrepareEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QScrollPrepareEvent, source: QScrollPrepareEvent) {.error.}
proc `=sink`(dest: var QScrollPrepareEvent, source: QScrollPrepareEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QScrollEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QScrollEvent, source: QScrollEvent) {.error.}
proc `=sink`(dest: var QScrollEvent, source: QScrollEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QScreenOrientationChangeEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QScreenOrientationChangeEvent, source: QScreenOrientationChangeEvent) {.error.}
proc `=sink`(dest: var QScreenOrientationChangeEvent, source: QScreenOrientationChangeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QApplicationStateChangeEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QApplicationStateChangeEvent, source: QApplicationStateChangeEvent) {.error.}
proc `=sink`(dest: var QApplicationStateChangeEvent, source: QApplicationStateChangeEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

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

