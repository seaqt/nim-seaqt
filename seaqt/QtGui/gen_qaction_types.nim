import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAction* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAction, source: QAction) {.error.}
proc `=sink`(dest: var QAction, source: QAction) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

