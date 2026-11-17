import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMediaCaptureSession* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaCaptureSession, source: QMediaCaptureSession) {.error.}
proc `=sink`(dest: var QMediaCaptureSession, source: QMediaCaptureSession) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

