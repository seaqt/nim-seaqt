import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QTextEdit* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
type QTextEditExtraSelection* {.inheritable, pure.} = object
  h*: pointer
