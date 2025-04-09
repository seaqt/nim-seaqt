import ../QtCore/gen_qobject_types
export gen_qobject_types

type QIconEnginePlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QIconEnginePlugin, source: QIconEnginePlugin) {.error.}
proc `=sink`(dest: var QIconEnginePlugin, source: QIconEnginePlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

