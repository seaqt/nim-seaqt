import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraCaptureDestinationControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraCaptureDestinationControl, source: QCameraCaptureDestinationControl) {.error.}
proc `=sink`(dest: var QCameraCaptureDestinationControl, source: QCameraCaptureDestinationControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

