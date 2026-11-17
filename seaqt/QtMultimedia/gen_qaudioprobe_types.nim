import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioProbe* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioProbe, source: QAudioProbe) {.error.}
proc `=sink`(dest: var QAudioProbe, source: QAudioProbe) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

