import ./gen_qgeoshape_types
export gen_qgeoshape_types

type QGeoCircle* = object of gen_qgeoshape_types.QGeoShape
proc `=copy`(dest: var QGeoCircle, source: QGeoCircle) {.error.}
proc `=sink`(dest: var QGeoCircle, source: QGeoCircle) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

