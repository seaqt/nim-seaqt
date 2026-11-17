import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QMediaBindableInterface
type QMediaRecorder* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaRecorder, source: QMediaRecorder) {.error.}
proc `=sink`(dest: var QMediaRecorder, source: QMediaRecorder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

