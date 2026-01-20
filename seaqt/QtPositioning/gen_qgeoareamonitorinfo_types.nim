type QGeoAreaMonitorInfo* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpositioning_pkg

{.compile("gen_qgeoareamonitorinfo.cpp", QtPositioningCFlags).}

proc fcQGeoAreaMonitorInfo_delete(self: pointer) {.importc: "QGeoAreaMonitorInfo_delete".}
proc `=destroy`(self: var QGeoAreaMonitorInfo) =
  if self.owned: fcQGeoAreaMonitorInfo_delete(self.h)

proc `=sink`(dest: var QGeoAreaMonitorInfo, source: QGeoAreaMonitorInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGeoAreaMonitorInfo, source: QGeoAreaMonitorInfo) {.error.}
proc delete*(self: sink QGeoAreaMonitorInfo) =
  let h = self.h
  wasMoved(self)
  fcQGeoAreaMonitorInfo_delete(h)

