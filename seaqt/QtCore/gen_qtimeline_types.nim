import ./gen_qobject_types
export gen_qobject_types

type QTimeLine* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QTimeLine, source: QTimeLine) {.error.}
proc `=sink`(dest: var QTimeLine, source: QTimeLine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

