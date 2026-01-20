import ./gen_qgeoshape_types
export gen_qgeoshape_types

type QGeoPolygon* = object of gen_qgeoshape_types.QGeoShape
proc `=copy`(dest: var QGeoPolygon, source: QGeoPolygon) {.error.}
proc `=sink`(dest: var QGeoPolygon, source: QGeoPolygon) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

