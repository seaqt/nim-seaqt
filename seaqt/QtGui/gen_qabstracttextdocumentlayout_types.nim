import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractTextDocumentLayout* = object of gen_qobject_types.QObject
type QTextObjectInterface* {.inheritable, pure.} = object
  h*: pointer
type QAbstractTextDocumentLayoutSelection* {.inheritable, pure.} = object
  h*: pointer
type QAbstractTextDocumentLayoutPaintContext* {.inheritable, pure.} = object
  h*: pointer
