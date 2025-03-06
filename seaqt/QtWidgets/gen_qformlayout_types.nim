import ./gen_qlayout_types
export gen_qlayout_types

type QFormLayout* = object of gen_qlayout_types.QLayout
type QFormLayoutTakeRowResult* {.inheritable, pure.} = object
  h*: pointer
