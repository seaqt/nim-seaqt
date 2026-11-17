import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraExposureControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraExposureControl, source: QCameraExposureControl) {.error.}
proc `=sink`(dest: var QCameraExposureControl, source: QCameraExposureControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

