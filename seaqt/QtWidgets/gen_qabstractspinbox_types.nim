import ./gen_qwidget_types
export gen_qwidget_types

type QAbstractSpinBox* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QAbstractSpinBox, source: QAbstractSpinBox) {.error.}
proc `=sink`(dest: var QAbstractSpinBox, source: QAbstractSpinBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

