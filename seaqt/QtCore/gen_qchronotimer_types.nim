import ./gen_qobject_types
export gen_qobject_types

type QChronoTimer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QChronoTimer, source: QChronoTimer) {.error.}
proc `=sink`(dest: var QChronoTimer, source: QChronoTimer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

