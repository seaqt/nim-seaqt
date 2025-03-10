import ./gen_qwidget_types
export gen_qwidget_types

type QFocusFrame* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QFocusFrame, source: QFocusFrame) {.error.}
proc `=sink`(dest: var QFocusFrame, source: QFocusFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

