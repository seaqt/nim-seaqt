import ./gen_qcombobox_types
export gen_qcombobox_types

type QFontComboBox* = object of gen_qcombobox_types.QComboBox
proc `=copy`(dest: var QFontComboBox, source: QFontComboBox) {.error.}
proc `=sink`(dest: var QFontComboBox, source: QFontComboBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

