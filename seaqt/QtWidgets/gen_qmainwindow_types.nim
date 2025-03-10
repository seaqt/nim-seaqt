import ./gen_qwidget_types
export gen_qwidget_types

type QMainWindow* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QMainWindow, source: QMainWindow) {.error.}
proc `=sink`(dest: var QMainWindow, source: QMainWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

