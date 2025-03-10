import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDataWidgetMapper* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDataWidgetMapper, source: QDataWidgetMapper) {.error.}
proc `=sink`(dest: var QDataWidgetMapper, source: QDataWidgetMapper) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

