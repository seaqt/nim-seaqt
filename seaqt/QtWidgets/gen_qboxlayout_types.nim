import ./gen_qlayout_types
export gen_qlayout_types

type QBoxLayout* = object of gen_qlayout_types.QLayout
type QHBoxLayout* = object of QBoxLayout
type QVBoxLayout* = object of QBoxLayout
