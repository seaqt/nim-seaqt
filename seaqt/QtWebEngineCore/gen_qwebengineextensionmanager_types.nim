import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineExtensionManager* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineExtensionManager, source: QWebEngineExtensionManager) {.error.}
proc `=sink`(dest: var QWebEngineExtensionManager, source: QWebEngineExtensionManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

