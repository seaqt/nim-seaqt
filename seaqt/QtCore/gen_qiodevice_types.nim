import ./gen_qobject_types
export gen_qobject_types

type QIODevice* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QIODevice, source: QIODevice) {.error.}
proc `=sink`(dest: var QIODevice, source: QIODevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

