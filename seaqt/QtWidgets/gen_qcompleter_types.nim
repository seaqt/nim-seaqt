import ../QtCore/gen_qobject_types
export gen_qobject_types

type QCompleter* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCompleter, source: QCompleter) {.error.}
proc `=sink`(dest: var QCompleter, source: QCompleter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

