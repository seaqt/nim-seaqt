import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioListener* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioListener, source: QAudioListener) {.error.}
proc `=sink`(dest: var QAudioListener, source: QAudioListener) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

