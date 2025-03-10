import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMediaObject* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaObject, source: QMediaObject) {.error.}
proc `=sink`(dest: var QMediaObject, source: QMediaObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

