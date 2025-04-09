import ./gen_qabstractbutton_types
export gen_qabstractbutton_types

type QCheckBox* = object of gen_qabstractbutton_types.QAbstractButton
proc `=copy`(dest: var QCheckBox, source: QCheckBox) {.error.}
proc `=sink`(dest: var QCheckBox, source: QCheckBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

