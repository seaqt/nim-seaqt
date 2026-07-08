import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioRoom* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioRoom, source: QAudioRoom) {.error.}
proc `=sink`(dest: var QAudioRoom, source: QAudioRoom) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

