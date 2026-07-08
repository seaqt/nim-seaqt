import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlComponent* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlComponent, source: QQmlComponent) {.error.}
proc `=sink`(dest: var QQmlComponent, source: QQmlComponent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

