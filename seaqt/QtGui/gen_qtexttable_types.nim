type QTextTableCell* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qtextobject_types
export gen_qtextobject_types

type QTextTable* = object of gen_qtextobject_types.QTextFrame
