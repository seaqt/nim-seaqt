type QTextLength* {.inheritable, pure.} = object
  h*: pointer
type QTextFormat* {.inheritable, pure.} = object
  h*: pointer
type QTextCharFormat* = object of QTextFormat
type QTextBlockFormat* = object of QTextFormat
type QTextListFormat* = object of QTextFormat
type QTextImageFormat* = object of QTextCharFormat
type QTextFrameFormat* = object of QTextFormat
type QTextTableFormat* = object of QTextFrameFormat
type QTextTableCellFormat* = object of QTextCharFormat
