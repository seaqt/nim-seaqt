import ./gen_qtextobject_types
export gen_qtextobject_types

type QTextList* = object of gen_qtextobject_types.QTextBlockGroup
proc `=copy`(dest: var QTextList, source: QTextList) {.error.}
proc `=sink`(dest: var QTextList, source: QTextList) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

