import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraFlashControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraFlashControl, source: QCameraFlashControl) {.error.}
proc `=sink`(dest: var QCameraFlashControl, source: QCameraFlashControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

