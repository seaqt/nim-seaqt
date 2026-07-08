import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioBufferInput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioBufferInput, source: QAudioBufferInput) {.error.}
proc `=sink`(dest: var QAudioBufferInput, source: QAudioBufferInput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

