import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraFeedbackControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraFeedbackControl, source: QCameraFeedbackControl) {.error.}
proc `=sink`(dest: var QCameraFeedbackControl, source: QCameraFeedbackControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

