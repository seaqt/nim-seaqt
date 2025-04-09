import ./gen_qobject_types
export gen_qobject_types

type QPluginLoader* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPluginLoader, source: QPluginLoader) {.error.}
proc `=sink`(dest: var QPluginLoader, source: QPluginLoader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

