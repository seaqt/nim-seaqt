import ../QtGui/gen_qwindow_types
export gen_qwindow_types

type QQuickWindow* = object of gen_qwindow_types.QWindow
type QQuickWindowGraphicsStateInfo* {.inheritable, pure.} = object
  h*: pointer
