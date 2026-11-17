import ./gen_qabstractspinbox_types
export gen_qabstractspinbox_types

type QSpinBox* = object of gen_qabstractspinbox_types.QAbstractSpinBox
proc `=copy`(dest: var QSpinBox, source: QSpinBox) {.error.}
proc `=sink`(dest: var QSpinBox, source: QSpinBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDoubleSpinBox* = object of gen_qabstractspinbox_types.QAbstractSpinBox
proc `=copy`(dest: var QDoubleSpinBox, source: QDoubleSpinBox) {.error.}
proc `=sink`(dest: var QDoubleSpinBox, source: QDoubleSpinBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

