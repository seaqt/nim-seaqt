import ../QtCore/gen_qdebug_types
export gen_qdebug_types

type QQmlInfo* = object of gen_qdebug_types.QDebug
proc `=copy`(dest: var QQmlInfo, source: QQmlInfo) {.error.}
proc `=sink`(dest: var QQmlInfo, source: QQmlInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

