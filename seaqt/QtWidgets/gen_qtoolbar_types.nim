import ./gen_qwidget_types
export gen_qwidget_types

type QToolBar* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QToolBar, source: QToolBar) {.error.}
proc `=sink`(dest: var QToolBar, source: QToolBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

