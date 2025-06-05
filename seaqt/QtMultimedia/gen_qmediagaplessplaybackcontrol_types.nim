import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaGaplessPlaybackControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaGaplessPlaybackControl, source: QMediaGaplessPlaybackControl) {.error.}
proc `=sink`(dest: var QMediaGaplessPlaybackControl, source: QMediaGaplessPlaybackControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

