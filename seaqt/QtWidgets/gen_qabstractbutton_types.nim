import ./gen_qwidget_types
export gen_qwidget_types

type QAbstractButton* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QAbstractButton, source: QAbstractButton) {.error.}
proc `=sink`(dest: var QAbstractButton, source: QAbstractButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

