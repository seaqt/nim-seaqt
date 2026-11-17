import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaStreamsControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaStreamsControl, source: QMediaStreamsControl) {.error.}
proc `=sink`(dest: var QMediaStreamsControl, source: QMediaStreamsControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

