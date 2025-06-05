import ./gen_qmediaobject_types
export gen_qmediaobject_types

type QAudioDecoder* = object of gen_qmediaobject_types.QMediaObject
proc `=copy`(dest: var QAudioDecoder, source: QAudioDecoder) {.error.}
proc `=sink`(dest: var QAudioDecoder, source: QAudioDecoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

