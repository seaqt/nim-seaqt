import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraImageProcessingControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraImageProcessingControl, source: QCameraImageProcessingControl) {.error.}
proc `=sink`(dest: var QCameraImageProcessingControl, source: QCameraImageProcessingControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

