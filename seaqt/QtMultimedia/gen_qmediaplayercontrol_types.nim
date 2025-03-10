import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaPlayerControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaPlayerControl, source: QMediaPlayerControl) {.error.}
proc `=sink`(dest: var QMediaPlayerControl, source: QMediaPlayerControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

