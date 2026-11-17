import ./gen_qwidget_types
export gen_qwidget_types

type QDialog* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDialog, source: QDialog) {.error.}
proc `=sink`(dest: var QDialog, source: QDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

