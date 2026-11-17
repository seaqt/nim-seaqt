type QGeoPositionInfoSourceFactory* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeopositioninfosourcefactory.cpp", QtPositioningCFlags).}

proc fcQGeoPositionInfoSourceFactory_delete(self: pointer) {.importc: "QGeoPositionInfoSourceFactory_delete".}
proc `=destroy`(self: var QGeoPositionInfoSourceFactory) =
  if self.owned: fcQGeoPositionInfoSourceFactory_delete(self.h)

proc `=sink`(dest: var QGeoPositionInfoSourceFactory, source: QGeoPositionInfoSourceFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoPositionInfoSourceFactory, source: QGeoPositionInfoSourceFactory) {.error.}
proc delete*(self: sink QGeoPositionInfoSourceFactory) =
  let h = self.h
  wasMoved(self)
  fcQGeoPositionInfoSourceFactory_delete(h)

