import ../QtCore/gen_qobject_types
export gen_qobject_types

type QInputMethod* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QInputMethod, source: QInputMethod) {.error.}
proc `=sink`(dest: var QInputMethod, source: QInputMethod) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

