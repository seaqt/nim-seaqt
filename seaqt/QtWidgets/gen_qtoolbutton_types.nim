import ./gen_qabstractbutton_types
export gen_qabstractbutton_types

type QToolButton* = object of gen_qabstractbutton_types.QAbstractButton
proc `=copy`(dest: var QToolButton, source: QToolButton) {.error.}
proc `=sink`(dest: var QToolButton, source: QToolButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

