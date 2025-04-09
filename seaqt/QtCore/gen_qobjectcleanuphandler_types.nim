import ./gen_qobject_types
export gen_qobject_types

type QObjectCleanupHandler* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QObjectCleanupHandler, source: QObjectCleanupHandler) {.error.}
proc `=sink`(dest: var QObjectCleanupHandler, source: QObjectCleanupHandler) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

