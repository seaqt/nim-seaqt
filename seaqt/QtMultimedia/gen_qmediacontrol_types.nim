import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMediaControl* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaControl, source: QMediaControl) {.error.}
proc `=sink`(dest: var QMediaControl, source: QMediaControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

