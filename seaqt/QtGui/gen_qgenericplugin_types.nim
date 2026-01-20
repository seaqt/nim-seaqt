import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGenericPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGenericPlugin, source: QGenericPlugin) {.error.}
proc `=sink`(dest: var QGenericPlugin, source: QGenericPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

