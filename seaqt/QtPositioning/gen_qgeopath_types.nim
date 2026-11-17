import ./gen_qgeoshape_types
export gen_qgeoshape_types

type QGeoPath* = object of gen_qgeoshape_types.QGeoShape
proc `=copy`(dest: var QGeoPath, source: QGeoPath) {.error.}
proc `=sink`(dest: var QGeoPath, source: QGeoPath) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

