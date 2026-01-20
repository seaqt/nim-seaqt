import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGeoSatelliteInfoSource* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGeoSatelliteInfoSource, source: QGeoSatelliteInfoSource) {.error.}
proc `=sink`(dest: var QGeoSatelliteInfoSource, source: QGeoSatelliteInfoSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

