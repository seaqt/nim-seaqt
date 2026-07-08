import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QScriptExtensionInterface
type QScriptExtensionPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QScriptExtensionPlugin, source: QScriptExtensionPlugin) {.error.}
proc `=sink`(dest: var QScriptExtensionPlugin, source: QScriptExtensionPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

