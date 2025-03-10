import ./gen_qobject_types
export gen_qobject_types

type QFileSelector* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QFileSelector, source: QFileSelector) {.error.}
proc `=sink`(dest: var QFileSelector, source: QFileSelector) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

