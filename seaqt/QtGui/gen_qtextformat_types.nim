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
proc `=copy`(dest: var QTextCharFormat, source: QTextCharFormat) {.error.}
proc `=sink`(dest: var QTextCharFormat, source: QTextCharFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextBlockFormat* = object of QTextFormat
proc `=copy`(dest: var QTextBlockFormat, source: QTextBlockFormat) {.error.}
proc `=sink`(dest: var QTextBlockFormat, source: QTextBlockFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextListFormat* = object of QTextFormat
proc `=copy`(dest: var QTextListFormat, source: QTextListFormat) {.error.}
proc `=sink`(dest: var QTextListFormat, source: QTextListFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextImageFormat* = object of QTextCharFormat
proc `=copy`(dest: var QTextImageFormat, source: QTextImageFormat) {.error.}
proc `=sink`(dest: var QTextImageFormat, source: QTextImageFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextFrameFormat* = object of QTextFormat
proc `=copy`(dest: var QTextFrameFormat, source: QTextFrameFormat) {.error.}
proc `=sink`(dest: var QTextFrameFormat, source: QTextFrameFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextTableFormat* = object of QTextFrameFormat
proc `=copy`(dest: var QTextTableFormat, source: QTextTableFormat) {.error.}
proc `=sink`(dest: var QTextTableFormat, source: QTextTableFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextTableCellFormat* = object of QTextCharFormat
proc `=copy`(dest: var QTextTableCellFormat, source: QTextTableCellFormat) {.error.}
proc `=sink`(dest: var QTextTableCellFormat, source: QTextTableCellFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

