import ./gen_qgeosatelliteinfosource_types
export gen_qgeosatelliteinfosource_types

type QNmeaSatelliteInfoSource* = object of gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource
proc `=copy`(dest: var QNmeaSatelliteInfoSource, source: QNmeaSatelliteInfoSource) {.error.}
proc `=sink`(dest: var QNmeaSatelliteInfoSource, source: QNmeaSatelliteInfoSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

