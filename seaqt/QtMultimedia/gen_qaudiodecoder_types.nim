import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioDecoder* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioDecoder, source: QAudioDecoder) {.error.}
proc `=sink`(dest: var QAudioDecoder, source: QAudioDecoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

