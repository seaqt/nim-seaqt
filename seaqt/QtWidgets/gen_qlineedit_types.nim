import ./gen_qwidget_types
export gen_qwidget_types

type QLineEdit* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QLineEdit, source: QLineEdit) {.error.}
proc `=sink`(dest: var QLineEdit, source: QLineEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

