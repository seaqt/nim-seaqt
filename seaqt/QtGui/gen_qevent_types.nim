import ../QtCore/gen_qcoreevent_types
export gen_qcoreevent_types

type QInputEvent* = object of gen_qcoreevent_types.QEvent
type QPointerEvent* = object of QInputEvent
type QSinglePointEvent* = object of QPointerEvent
type QEnterEvent* = object of QSinglePointEvent
type QMouseEvent* = object of QSinglePointEvent
type QHoverEvent* = object of QSinglePointEvent
type QWheelEvent* = object of QSinglePointEvent
type QTabletEvent* = object of QSinglePointEvent
type QNativeGestureEvent* = object of QSinglePointEvent
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
type QTouchEvent* = object of QPointerEvent
type QScrollPrepareEvent* = object of gen_qcoreevent_types.QEvent
type QScrollEvent* = object of gen_qcoreevent_types.QEvent
type QScreenOrientationChangeEvent* = object of gen_qcoreevent_types.QEvent
type QApplicationStateChangeEvent* = object of gen_qcoreevent_types.QEvent
type QInputMethodEventAttribute* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qevent.cpp", cflags).}

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

