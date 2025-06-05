import ./gen_qobject_types
export gen_qobject_types

type QSignalMapper* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSignalMapper, source: QSignalMapper) {.error.}
proc `=sink`(dest: var QSignalMapper, source: QSignalMapper) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

