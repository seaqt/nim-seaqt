import ../QtCore/gen_qobject_types
export gen_qobject_types

type QShortcut* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QShortcut, source: QShortcut) {.error.}
proc `=sink`(dest: var QShortcut, source: QShortcut) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

