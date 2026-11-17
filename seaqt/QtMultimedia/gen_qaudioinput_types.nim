import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioInput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioInput, source: QAudioInput) {.error.}
proc `=sink`(dest: var QAudioInput, source: QAudioInput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

