import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickItemGrabResult* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickItemGrabResult, source: QQuickItemGrabResult) {.error.}
proc `=sink`(dest: var QQuickItemGrabResult, source: QQuickItemGrabResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

