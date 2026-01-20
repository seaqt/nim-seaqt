import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSessionManager* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSessionManager, source: QSessionManager) {.error.}
proc `=sink`(dest: var QSessionManager, source: QSessionManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

