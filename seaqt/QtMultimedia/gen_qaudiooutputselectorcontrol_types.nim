import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QAudioOutputSelectorControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QAudioOutputSelectorControl, source: QAudioOutputSelectorControl) {.error.}
proc `=sink`(dest: var QAudioOutputSelectorControl, source: QAudioOutputSelectorControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

