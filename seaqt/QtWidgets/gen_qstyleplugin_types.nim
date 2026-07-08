import ../QtCore/gen_qobject_types
export gen_qobject_types

type QStylePlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QStylePlugin, source: QStylePlugin) {.error.}
proc `=sink`(dest: var QStylePlugin, source: QStylePlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

