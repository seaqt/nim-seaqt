import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioEngine* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioEngine, source: QAudioEngine) {.error.}
proc `=sink`(dest: var QAudioEngine, source: QAudioEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

