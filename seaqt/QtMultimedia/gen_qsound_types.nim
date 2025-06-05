import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSound* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSound, source: QSound) {.error.}
proc `=sink`(dest: var QSound, source: QSound) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

