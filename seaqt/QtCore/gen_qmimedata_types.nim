import ./gen_qobject_types
export gen_qobject_types

type QMimeData* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMimeData, source: QMimeData) {.error.}
proc `=sink`(dest: var QMimeData, source: QMimeData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

