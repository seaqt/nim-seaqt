import ../QtCore/gen_qobject_types
export gen_qobject_types

type QVideoProbe* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QVideoProbe, source: QVideoProbe) {.error.}
proc `=sink`(dest: var QVideoProbe, source: QVideoProbe) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

