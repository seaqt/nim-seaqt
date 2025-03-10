import ../QtCore/gen_qobject_types
export gen_qobject_types

type QButtonGroup* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QButtonGroup, source: QButtonGroup) {.error.}
proc `=sink`(dest: var QButtonGroup, source: QButtonGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

