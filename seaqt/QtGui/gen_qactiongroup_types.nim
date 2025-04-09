import ../QtCore/gen_qobject_types
export gen_qobject_types

type QActionGroup* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QActionGroup, source: QActionGroup) {.error.}
proc `=sink`(dest: var QActionGroup, source: QActionGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

