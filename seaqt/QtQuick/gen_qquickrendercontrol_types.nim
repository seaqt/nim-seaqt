import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickRenderControl* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickRenderControl, source: QQuickRenderControl) {.error.}
proc `=sink`(dest: var QQuickRenderControl, source: QQuickRenderControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

