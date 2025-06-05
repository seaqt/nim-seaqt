import ../QtCore/gen_qobject_types
export gen_qobject_types

type QCamera* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCamera, source: QCamera) {.error.}
proc `=sink`(dest: var QCamera, source: QCamera) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

