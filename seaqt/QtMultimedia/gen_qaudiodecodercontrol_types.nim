import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QAudioDecoderControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QAudioDecoderControl, source: QAudioDecoderControl) {.error.}
proc `=sink`(dest: var QAudioDecoderControl, source: QAudioDecoderControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

