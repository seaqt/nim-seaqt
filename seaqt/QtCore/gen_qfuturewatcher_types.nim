import ./gen_qobject_types
export gen_qobject_types

type QFutureWatcherBase* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QFutureWatcherBase, source: QFutureWatcherBase) {.error.}
proc `=sink`(dest: var QFutureWatcherBase, source: QFutureWatcherBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

