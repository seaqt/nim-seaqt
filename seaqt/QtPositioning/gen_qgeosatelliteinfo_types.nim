type QGeoSatelliteInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeosatelliteinfo.cpp", QtPositioningCFlags).}

proc fcQGeoSatelliteInfo_delete(self: pointer) {.importc: "QGeoSatelliteInfo_delete".}
proc `=destroy`(self: var QGeoSatelliteInfo) =
  if self.owned: fcQGeoSatelliteInfo_delete(self.h)

proc `=sink`(dest: var QGeoSatelliteInfo, source: QGeoSatelliteInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoSatelliteInfo, source: QGeoSatelliteInfo) {.error.}
proc delete*(self: sink QGeoSatelliteInfo) =
  let h = self.h
  wasMoved(self)
  fcQGeoSatelliteInfo_delete(h)

