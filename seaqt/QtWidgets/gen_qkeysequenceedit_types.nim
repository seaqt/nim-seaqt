import ./gen_qwidget_types
export gen_qwidget_types

type QKeySequenceEdit* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QKeySequenceEdit, source: QKeySequenceEdit) {.error.}
proc `=sink`(dest: var QKeySequenceEdit, source: QKeySequenceEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

