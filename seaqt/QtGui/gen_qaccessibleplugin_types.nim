import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAccessiblePlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAccessiblePlugin, source: QAccessiblePlugin) {.error.}
proc `=sink`(dest: var QAccessiblePlugin, source: QAccessiblePlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

