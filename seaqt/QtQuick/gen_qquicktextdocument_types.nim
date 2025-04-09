import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickTextDocument* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickTextDocument, source: QQuickTextDocument) {.error.}
proc `=sink`(dest: var QQuickTextDocument, source: QQuickTextDocument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

