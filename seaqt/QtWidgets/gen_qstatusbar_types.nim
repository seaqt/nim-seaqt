import ./gen_qwidget_types
export gen_qwidget_types

type QStatusBar* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QStatusBar, source: QStatusBar) {.error.}
proc `=sink`(dest: var QStatusBar, source: QStatusBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

