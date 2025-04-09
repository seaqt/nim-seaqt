import ../QtCore/gen_qobject_types
export gen_qobject_types

type QScreen* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QScreen, source: QScreen) {.error.}
proc `=sink`(dest: var QScreen, source: QScreen) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

