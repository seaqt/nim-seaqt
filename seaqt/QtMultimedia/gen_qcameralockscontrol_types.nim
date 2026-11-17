import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraLocksControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraLocksControl, source: QCameraLocksControl) {.error.}
proc `=sink`(dest: var QCameraLocksControl, source: QCameraLocksControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

