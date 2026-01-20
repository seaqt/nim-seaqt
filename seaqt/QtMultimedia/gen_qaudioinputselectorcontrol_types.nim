import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QAudioInputSelectorControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QAudioInputSelectorControl, source: QAudioInputSelectorControl) {.error.}
proc `=sink`(dest: var QAudioInputSelectorControl, source: QAudioInputSelectorControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

