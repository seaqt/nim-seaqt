import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraImageCaptureControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraImageCaptureControl, source: QCameraImageCaptureControl) {.error.}
proc `=sink`(dest: var QCameraImageCaptureControl, source: QCameraImageCaptureControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

