import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDrag* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDrag, source: QDrag) {.error.}
proc `=sink`(dest: var QDrag, source: QDrag) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

