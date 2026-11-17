import ./gen_qwidget_types
export gen_qwidget_types

type QTabWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QTabWidget, source: QTabWidget) {.error.}
proc `=sink`(dest: var QTabWidget, source: QTabWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

