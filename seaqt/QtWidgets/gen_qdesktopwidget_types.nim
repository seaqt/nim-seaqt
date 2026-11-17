import ./gen_qwidget_types
export gen_qwidget_types

type QDesktopWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesktopWidget, source: QDesktopWidget) {.error.}
proc `=sink`(dest: var QDesktopWidget, source: QDesktopWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

