import ./gen_qabstractbutton_types
export gen_qabstractbutton_types

type QPushButton* = object of gen_qabstractbutton_types.QAbstractButton
proc `=copy`(dest: var QPushButton, source: QPushButton) {.error.}
proc `=sink`(dest: var QPushButton, source: QPushButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

