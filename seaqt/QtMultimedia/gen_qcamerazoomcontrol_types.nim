import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraZoomControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraZoomControl, source: QCameraZoomControl) {.error.}
proc `=sink`(dest: var QCameraZoomControl, source: QCameraZoomControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

