type QTextLength* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtextformat.cpp", cflags).}

proc fcQTextLength_delete(self: pointer) {.importc: "QTextLength_delete".}
proc `=destroy`(self: var QTextLength) =
  if self.owned: fcQTextLength_delete(self.h)

proc `=sink`(dest: var QTextLength, source: QTextLength) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextLength, source: QTextLength) {.error.}
proc delete*(self: sink QTextLength) =
  let h = self.h
  wasMoved(self)
  fcQTextLength_delete(h)

type QTextFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextFormat_delete(self: pointer) {.importc: "QTextFormat_delete".}
proc `=destroy`(self: var QTextFormat) =
  if self.owned: fcQTextFormat_delete(self.h)

proc `=sink`(dest: var QTextFormat, source: QTextFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextFormat, source: QTextFormat) {.error.}
proc delete*(self: sink QTextFormat) =
  let h = self.h
  wasMoved(self)
  fcQTextFormat_delete(h)

type QTextCharFormat* = object of QTextFormat
type QTextBlockFormat* = object of QTextFormat
type QTextListFormat* = object of QTextFormat
type QTextImageFormat* = object of QTextCharFormat
type QTextFrameFormat* = object of QTextFormat
type QTextTableFormat* = object of QTextFrameFormat
type QTextTableCellFormat* = object of QTextCharFormat
