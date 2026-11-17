import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaRecorderControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaRecorderControl, source: QMediaRecorderControl) {.error.}
proc `=sink`(dest: var QMediaRecorderControl, source: QMediaRecorderControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

