import ./gen_qobject_types
export gen_qobject_types

type QThreadPool* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QThreadPool, source: QThreadPool) {.error.}
proc `=sink`(dest: var QThreadPool, source: QThreadPool) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

