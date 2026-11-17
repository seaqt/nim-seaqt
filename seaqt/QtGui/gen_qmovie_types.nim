import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMovie* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMovie, source: QMovie) {.error.}
proc `=sink`(dest: var QMovie, source: QMovie) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

