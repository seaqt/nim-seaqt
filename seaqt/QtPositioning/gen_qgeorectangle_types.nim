import ./gen_qgeoshape_types
export gen_qgeoshape_types

type QGeoRectangle* = object of gen_qgeoshape_types.QGeoShape
proc `=copy`(dest: var QGeoRectangle, source: QGeoRectangle) {.error.}
proc `=sink`(dest: var QGeoRectangle, source: QGeoRectangle) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

