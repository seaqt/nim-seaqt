import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSyntaxHighlighter* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSyntaxHighlighter, source: QSyntaxHighlighter) {.error.}
proc `=sink`(dest: var QSyntaxHighlighter, source: QSyntaxHighlighter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

