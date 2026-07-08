import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSpatialSound* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSpatialSound, source: QSpatialSound) {.error.}
proc `=sink`(dest: var QSpatialSound, source: QSpatialSound) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

