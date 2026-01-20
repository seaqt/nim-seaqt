import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlExpression* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlExpression, source: QQmlExpression) {.error.}
proc `=sink`(dest: var QQmlExpression, source: QQmlExpression) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

