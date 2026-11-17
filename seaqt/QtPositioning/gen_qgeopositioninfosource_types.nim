import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGeoPositionInfoSource* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGeoPositionInfoSource, source: QGeoPositionInfoSource) {.error.}
proc `=sink`(dest: var QGeoPositionInfoSource, source: QGeoPositionInfoSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

