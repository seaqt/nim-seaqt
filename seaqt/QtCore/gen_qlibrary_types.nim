import ./gen_qobject_types
export gen_qobject_types

type QLibrary* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QLibrary, source: QLibrary) {.error.}
proc `=sink`(dest: var QLibrary, source: QLibrary) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

