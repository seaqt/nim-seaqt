import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QMediaBindableInterface
type QCameraImageCapture* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCameraImageCapture, source: QCameraImageCapture) {.error.}
proc `=sink`(dest: var QCameraImageCapture, source: QCameraImageCapture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

