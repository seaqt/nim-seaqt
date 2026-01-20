import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioSource* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioSource, source: QAudioSource) {.error.}
proc `=sink`(dest: var QAudioSource, source: QAudioSource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

