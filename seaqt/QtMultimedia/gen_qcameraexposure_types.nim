import ../QtCore/gen_qobject_types
export gen_qobject_types

type QCameraExposure* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCameraExposure, source: QCameraExposure) {.error.}
proc `=sink`(dest: var QCameraExposure, source: QCameraExposure) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

