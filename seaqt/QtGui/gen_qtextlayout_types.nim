type QTextInlineObject* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtextlayout.cpp", cflags).}

proc fcQTextInlineObject_delete(self: pointer) {.importc: "QTextInlineObject_delete".}
proc `=destroy`(self: var QTextInlineObject) =
  if self.owned: fcQTextInlineObject_delete(self.h)

proc `=sink`(dest: var QTextInlineObject, source: QTextInlineObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextInlineObject, source: QTextInlineObject) {.error.}
proc delete*(self: sink QTextInlineObject) =
  let h = self.h
  wasMoved(self)
  fcQTextInlineObject_delete(h)

type QTextLayout* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextLayout_delete(self: pointer) {.importc: "QTextLayout_delete".}
proc `=destroy`(self: var QTextLayout) =
  if self.owned: fcQTextLayout_delete(self.h)

proc `=sink`(dest: var QTextLayout, source: QTextLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextLayout, source: QTextLayout) {.error.}
proc delete*(self: sink QTextLayout) =
  let h = self.h
  wasMoved(self)
  fcQTextLayout_delete(h)

type QTextLine* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextLine_delete(self: pointer) {.importc: "QTextLine_delete".}
proc `=destroy`(self: var QTextLine) =
  if self.owned: fcQTextLine_delete(self.h)

proc `=sink`(dest: var QTextLine, source: QTextLine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextLine, source: QTextLine) {.error.}
proc delete*(self: sink QTextLine) =
  let h = self.h
  wasMoved(self)
  fcQTextLine_delete(h)

type QTextLayoutFormatRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextLayoutFormatRange_delete(self: pointer) {.importc: "QTextLayout__FormatRange_delete".}
proc `=destroy`(self: var QTextLayoutFormatRange) =
  if self.owned: fcQTextLayoutFormatRange_delete(self.h)

proc `=sink`(dest: var QTextLayoutFormatRange, source: QTextLayoutFormatRange) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextLayoutFormatRange, source: QTextLayoutFormatRange) {.error.}
proc delete*(self: sink QTextLayoutFormatRange) =
  let h = self.h
  wasMoved(self)
  fcQTextLayoutFormatRange_delete(h)

