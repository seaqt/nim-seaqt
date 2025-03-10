import ./gen_qwidget_types
export gen_qwidget_types

type QGroupBox* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QGroupBox, source: QGroupBox) {.error.}
proc `=sink`(dest: var QGroupBox, source: QGroupBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

