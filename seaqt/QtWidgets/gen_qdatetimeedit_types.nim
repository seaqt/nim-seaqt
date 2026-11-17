import ./gen_qabstractspinbox_types
export gen_qabstractspinbox_types

type QDateTimeEdit* = object of gen_qabstractspinbox_types.QAbstractSpinBox
proc `=copy`(dest: var QDateTimeEdit, source: QDateTimeEdit) {.error.}
proc `=sink`(dest: var QDateTimeEdit, source: QDateTimeEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTimeEdit* = object of QDateTimeEdit
proc `=copy`(dest: var QTimeEdit, source: QTimeEdit) {.error.}
proc `=sink`(dest: var QTimeEdit, source: QTimeEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDateEdit* = object of QDateTimeEdit
proc `=copy`(dest: var QDateEdit, source: QDateEdit) {.error.}
proc `=sink`(dest: var QDateEdit, source: QDateEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

