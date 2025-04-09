import ../QtCore/gen_qobject_types
export gen_qobject_types

type QTextObject* = object of gen_qobject_types.QObject
type QTextBlockGroup* = object of QTextObject
type QTextFrameLayoutData* {.inheritable, pure.} = object
  h*: pointer
type QTextFrame* = object of QTextObject
type QTextBlockUserData* {.inheritable, pure.} = object
  h*: pointer
type QTextBlock* {.inheritable, pure.} = object
  h*: pointer
type QTextFragment* {.inheritable, pure.} = object
  h*: pointer
type QTextFrameiterator* {.inheritable, pure.} = object
  h*: pointer
type QTextBlockiterator* {.inheritable, pure.} = object
  h*: pointer
