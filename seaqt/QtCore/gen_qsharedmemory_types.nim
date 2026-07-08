import ./gen_qobject_types
export gen_qobject_types

type QSharedMemory* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSharedMemory, source: QSharedMemory) {.error.}
proc `=sink`(dest: var QSharedMemory, source: QSharedMemory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

