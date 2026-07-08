import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QVideoEncoderSettingsControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QVideoEncoderSettingsControl, source: QVideoEncoderSettingsControl) {.error.}
proc `=sink`(dest: var QVideoEncoderSettingsControl, source: QVideoEncoderSettingsControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

