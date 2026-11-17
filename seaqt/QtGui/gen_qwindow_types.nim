import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QSurface
type QWindow* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWindow, source: QWindow) {.error.}
proc `=sink`(dest: var QWindow, source: QWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

