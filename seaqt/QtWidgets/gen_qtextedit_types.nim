import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QTextEdit* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QTextEdit, source: QTextEdit) {.error.}
proc `=sink`(dest: var QTextEdit, source: QTextEdit) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextEditExtraSelection* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qtextedit.cpp", cflags).}

proc fcQTextEditExtraSelection_delete(self: pointer) {.importc: "QTextEdit__ExtraSelection_delete".}
proc `=destroy`(self: var QTextEditExtraSelection) =
  if self.owned: fcQTextEditExtraSelection_delete(self.h)

proc `=sink`(dest: var QTextEditExtraSelection, source: QTextEditExtraSelection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextEditExtraSelection, source: QTextEditExtraSelection) {.error.}
proc delete*(self: sink QTextEditExtraSelection) =
  let h = self.h
  wasMoved(self)
  fcQTextEditExtraSelection_delete(h)

