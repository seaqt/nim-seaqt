import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlPropertyMap* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlPropertyMap, source: QQmlPropertyMap) {.error.}
proc `=sink`(dest: var QQmlPropertyMap, source: QQmlPropertyMap) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

