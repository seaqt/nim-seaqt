import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraControl, source: QCameraControl) {.error.}
proc `=sink`(dest: var QCameraControl, source: QCameraControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

