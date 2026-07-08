import ../QtCore/gen_qobject_types
export gen_qobject_types

type QPdfDocument* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPdfDocument, source: QPdfDocument) {.error.}
proc `=sink`(dest: var QPdfDocument, source: QPdfDocument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

