type QGeoLocation* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeolocation.cpp", QtPositioningCFlags).}

proc fcQGeoLocation_delete(self: pointer) {.importc: "QGeoLocation_delete".}
proc `=destroy`(self: var QGeoLocation) =
  if self.owned: fcQGeoLocation_delete(self.h)

proc `=sink`(dest: var QGeoLocation, source: QGeoLocation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoLocation, source: QGeoLocation) {.error.}
proc delete*(self: sink QGeoLocation) =
  let h = self.h
  wasMoved(self)
  fcQGeoLocation_delete(h)

