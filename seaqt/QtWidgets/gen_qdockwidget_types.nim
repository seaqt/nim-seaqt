import ./gen_qwidget_types
export gen_qwidget_types

type QDockWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDockWidget, source: QDockWidget) {.error.}
proc `=sink`(dest: var QDockWidget, source: QDockWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

