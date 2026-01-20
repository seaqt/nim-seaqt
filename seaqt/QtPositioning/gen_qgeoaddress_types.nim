type QGeoAddress* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeoaddress.cpp", QtPositioningCFlags).}

proc fcQGeoAddress_delete(self: pointer) {.importc: "QGeoAddress_delete".}
proc `=destroy`(self: var QGeoAddress) =
  if self.owned: fcQGeoAddress_delete(self.h)

proc `=sink`(dest: var QGeoAddress, source: QGeoAddress) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoAddress, source: QGeoAddress) {.error.}
proc delete*(self: sink QGeoAddress) =
  let h = self.h
  wasMoved(self)
  fcQGeoAddress_delete(h)

