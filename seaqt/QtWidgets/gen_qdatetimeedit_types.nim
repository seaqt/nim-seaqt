import ./gen_qabstractspinbox_types
export gen_qabstractspinbox_types

type QDateTimeEdit* = object of gen_qabstractspinbox_types.QAbstractSpinBox
type QTimeEdit* = object of QDateTimeEdit
type QDateEdit* = object of QDateTimeEdit
