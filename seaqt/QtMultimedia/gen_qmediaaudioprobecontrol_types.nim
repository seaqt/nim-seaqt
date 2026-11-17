import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaAudioProbeControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaAudioProbeControl, source: QMediaAudioProbeControl) {.error.}
proc `=sink`(dest: var QMediaAudioProbeControl, source: QMediaAudioProbeControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

