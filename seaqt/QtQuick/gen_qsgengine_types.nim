import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSGEngine* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSGEngine, source: QSGEngine) {.error.}
proc `=sink`(dest: var QSGEngine, source: QSGEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

