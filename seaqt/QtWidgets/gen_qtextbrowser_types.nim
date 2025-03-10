import ./gen_qtextedit_types
export gen_qtextedit_types

type QTextBrowser* = object of gen_qtextedit_types.QTextEdit
proc `=copy`(dest: var QTextBrowser, source: QTextBrowser) {.error.}
proc `=sink`(dest: var QTextBrowser, source: QTextBrowser) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

