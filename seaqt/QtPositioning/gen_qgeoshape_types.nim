type QGeoShape* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeoshape.cpp", QtPositioningCFlags).}

proc fcQGeoShape_delete(self: pointer) {.importc: "QGeoShape_delete".}
proc `=destroy`(self: var QGeoShape) =
  if self.owned: fcQGeoShape_delete(self.h)

proc `=sink`(dest: var QGeoShape, source: QGeoShape) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoShape, source: QGeoShape) {.error.}
proc delete*(self: sink QGeoShape) =
  let h = self.h
  wasMoved(self)
  fcQGeoShape_delete(h)

