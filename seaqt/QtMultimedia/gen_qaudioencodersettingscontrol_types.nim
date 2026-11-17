import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QAudioEncoderSettingsControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QAudioEncoderSettingsControl, source: QAudioEncoderSettingsControl) {.error.}
proc `=sink`(dest: var QAudioEncoderSettingsControl, source: QAudioEncoderSettingsControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

