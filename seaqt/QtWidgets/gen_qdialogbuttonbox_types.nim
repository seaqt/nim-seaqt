import ./gen_qwidget_types
export gen_qwidget_types

type QDialogButtonBox* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDialogButtonBox, source: QDialogButtonBox) {.error.}
proc `=sink`(dest: var QDialogButtonBox, source: QDialogButtonBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

