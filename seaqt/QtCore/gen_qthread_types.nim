import ./gen_qobject_types
export gen_qobject_types

type QThread* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QThread, source: QThread) {.error.}
proc `=sink`(dest: var QThread, source: QThread) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

