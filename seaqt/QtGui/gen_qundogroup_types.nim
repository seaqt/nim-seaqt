import ../QtCore/gen_qobject_types
export gen_qobject_types

type QUndoGroup* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QUndoGroup, source: QUndoGroup) {.error.}
proc `=sink`(dest: var QUndoGroup, source: QUndoGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

