import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraFocusControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraFocusControl, source: QCameraFocusControl) {.error.}
proc `=sink`(dest: var QCameraFocusControl, source: QCameraFocusControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

