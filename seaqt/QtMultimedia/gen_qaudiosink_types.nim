import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAudioSink* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAudioSink, source: QAudioSink) {.error.}
proc `=sink`(dest: var QAudioSink, source: QAudioSink) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

