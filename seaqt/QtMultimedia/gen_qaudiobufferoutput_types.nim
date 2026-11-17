import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioBufferOutput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioBufferOutput, source: QAudioBufferOutput) {.error.}
proc `=sink`(dest: var QAudioBufferOutput, source: QAudioBufferOutput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

