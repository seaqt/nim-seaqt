import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QSurface
type QOffscreenSurface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QOffscreenSurface, source: QOffscreenSurface) {.error.}
proc `=sink`(dest: var QOffscreenSurface, source: QOffscreenSurface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

