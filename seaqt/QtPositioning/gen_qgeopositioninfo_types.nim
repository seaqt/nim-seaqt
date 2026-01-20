type QGeoPositionInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeopositioninfo.cpp", QtPositioningCFlags).}

proc fcQGeoPositionInfo_delete(self: pointer) {.importc: "QGeoPositionInfo_delete".}
proc `=destroy`(self: var QGeoPositionInfo) =
  if self.owned: fcQGeoPositionInfo_delete(self.h)

proc `=sink`(dest: var QGeoPositionInfo, source: QGeoPositionInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoPositionInfo, source: QGeoPositionInfo) {.error.}
proc delete*(self: sink QGeoPositionInfo) =
  let h = self.h
  wasMoved(self)
  fcQGeoPositionInfo_delete(h)

