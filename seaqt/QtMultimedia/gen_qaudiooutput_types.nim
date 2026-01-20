import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioOutput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioOutput, source: QAudioOutput) {.error.}
proc `=sink`(dest: var QAudioOutput, source: QAudioOutput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

