import ./gen_qquickwindow_types
export gen_qquickwindow_types

type QQuickView* = object of gen_qquickwindow_types.QQuickWindow
proc `=copy`(dest: var QQuickView, source: QQuickView) {.error.}
proc `=sink`(dest: var QQuickView, source: QQuickView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

