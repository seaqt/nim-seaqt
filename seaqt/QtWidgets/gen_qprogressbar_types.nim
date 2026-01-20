import ./gen_qwidget_types
export gen_qwidget_types

type QProgressBar* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QProgressBar, source: QProgressBar) {.error.}
proc `=sink`(dest: var QProgressBar, source: QProgressBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

