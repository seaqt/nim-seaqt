import ./gen_qwidget_types
export gen_qwidget_types

type QComboBox* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QComboBox, source: QComboBox) {.error.}
proc `=sink`(dest: var QComboBox, source: QComboBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

