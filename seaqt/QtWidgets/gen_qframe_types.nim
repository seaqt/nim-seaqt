import ./gen_qwidget_types
export gen_qwidget_types

type QFrame* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QFrame, source: QFrame) {.error.}
proc `=sink`(dest: var QFrame, source: QFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

