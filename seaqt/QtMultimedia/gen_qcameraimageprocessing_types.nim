import ../QtCore/gen_qobject_types
export gen_qobject_types

type QCameraImageProcessing* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCameraImageProcessing, source: QCameraImageProcessing) {.error.}
proc `=sink`(dest: var QCameraImageProcessing, source: QCameraImageProcessing) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

