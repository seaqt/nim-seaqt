import ./gen_qgeopositioninfosource_types
export gen_qgeopositioninfosource_types

type QNmeaPositionInfoSource* = object of gen_qgeopositioninfosource_types.QGeoPositionInfoSource
proc `=copy`(dest: var QNmeaPositionInfoSource, source: QNmeaPositionInfoSource) {.error.}
proc `=sink`(dest: var QNmeaPositionInfoSource, source: QNmeaPositionInfoSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

