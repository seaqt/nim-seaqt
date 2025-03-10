type QAbstractUndoItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtextdocument.cpp", cflags).}

proc fcQAbstractUndoItem_delete(self: pointer) {.importc: "QAbstractUndoItem_delete".}
proc `=destroy`(self: var QAbstractUndoItem) =
  if self.owned: fcQAbstractUndoItem_delete(self.h)

proc `=sink`(dest: var QAbstractUndoItem, source: QAbstractUndoItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractUndoItem, source: QAbstractUndoItem) {.error.}
proc delete*(self: sink QAbstractUndoItem) =
  let h = self.h
  wasMoved(self)
  fcQAbstractUndoItem_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QTextDocument* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QTextDocument, source: QTextDocument) {.error.}
proc `=sink`(dest: var QTextDocument, source: QTextDocument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

