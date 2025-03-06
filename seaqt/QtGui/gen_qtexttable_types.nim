type QTextTableCell* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtexttable.cpp", cflags).}

proc fcQTextTableCell_delete(self: pointer) {.importc: "QTextTableCell_delete".}
proc `=destroy`(self: var QTextTableCell) =
  if self.owned: fcQTextTableCell_delete(self.h)

proc `=sink`(dest: var QTextTableCell, source: QTextTableCell) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextTableCell, source: QTextTableCell) {.error.}
proc delete*(self: sink QTextTableCell) =
  let h = self.h
  wasMoved(self)
  fcQTextTableCell_delete(h)

import ./gen_qtextobject_types
export gen_qtextobject_types

type QTextTable* = object of gen_qtextobject_types.QTextFrame
