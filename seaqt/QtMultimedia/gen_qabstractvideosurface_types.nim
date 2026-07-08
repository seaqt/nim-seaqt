import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractVideoSurface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractVideoSurface, source: QAbstractVideoSurface) {.error.}
proc `=sink`(dest: var QAbstractVideoSurface, source: QAbstractVideoSurface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

