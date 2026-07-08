import ../QtCore/gen_qobject_types
export gen_qobject_types

type QVideoSink* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QVideoSink, source: QVideoSink) {.error.}
proc `=sink`(dest: var QVideoSink, source: QVideoSink) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

