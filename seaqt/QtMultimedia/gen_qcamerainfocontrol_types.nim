import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraInfoControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraInfoControl, source: QCameraInfoControl) {.error.}
proc `=sink`(dest: var QCameraInfoControl, source: QCameraInfoControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

