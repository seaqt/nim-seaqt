import ../QtCore/gen_qobject_types
export gen_qobject_types

type QGeoAreaMonitorSource* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QGeoAreaMonitorSource, source: QGeoAreaMonitorSource) {.error.}
proc `=sink`(dest: var QGeoAreaMonitorSource, source: QGeoAreaMonitorSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

