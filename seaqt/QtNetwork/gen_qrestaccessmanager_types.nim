import ../QtCore/gen_qobject_types
export gen_qobject_types

type QRestAccessManager* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QRestAccessManager, source: QRestAccessManager) {.error.}
proc `=sink`(dest: var QRestAccessManager, source: QRestAccessManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

