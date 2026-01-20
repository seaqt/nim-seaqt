import ./gen_qobject_types
export gen_qobject_types

type QTimer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QTimer, source: QTimer) {.error.}
proc `=sink`(dest: var QTimer, source: QTimer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

