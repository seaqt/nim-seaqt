import ./gen_qabstractbutton_types
export gen_qabstractbutton_types

type QRadioButton* = object of gen_qabstractbutton_types.QAbstractButton
proc `=copy`(dest: var QRadioButton, source: QRadioButton) {.error.}
proc `=sink`(dest: var QRadioButton, source: QRadioButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

