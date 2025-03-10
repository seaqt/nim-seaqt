import ./gen_qwidget_types
export gen_qwidget_types

type QMenuBar* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QMenuBar, source: QMenuBar) {.error.}
proc `=sink`(dest: var QMenuBar, source: QMenuBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

