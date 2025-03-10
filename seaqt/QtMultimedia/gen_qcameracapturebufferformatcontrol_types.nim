import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraCaptureBufferFormatControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraCaptureBufferFormatControl, source: QCameraCaptureBufferFormatControl) {.error.}
proc `=sink`(dest: var QCameraCaptureBufferFormatControl, source: QCameraCaptureBufferFormatControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

