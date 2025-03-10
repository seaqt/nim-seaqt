import ./gen_qwidget_types
export gen_qwidget_types

type QMdiSubWindow* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QMdiSubWindow, source: QMdiSubWindow) {.error.}
proc `=sink`(dest: var QMdiSubWindow, source: QMdiSubWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

