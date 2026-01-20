type QGeoCoordinate* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeocoordinate.cpp", QtPositioningCFlags).}

proc fcQGeoCoordinate_delete(self: pointer) {.importc: "QGeoCoordinate_delete".}
proc `=destroy`(self: var QGeoCoordinate) =
  if self.owned: fcQGeoCoordinate_delete(self.h)

proc `=sink`(dest: var QGeoCoordinate, source: QGeoCoordinate) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoCoordinate, source: QGeoCoordinate) {.error.}
proc delete*(self: sink QGeoCoordinate) =
  let h = self.h
  wasMoved(self)
  fcQGeoCoordinate_delete(h)

