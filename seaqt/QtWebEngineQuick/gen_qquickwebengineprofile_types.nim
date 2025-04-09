import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickWebEngineProfile* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickWebEngineProfile, source: QQuickWebEngineProfile) {.error.}
proc `=sink`(dest: var QQuickWebEngineProfile, source: QQuickWebEngineProfile) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

