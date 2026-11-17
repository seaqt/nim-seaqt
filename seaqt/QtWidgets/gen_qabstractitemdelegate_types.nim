import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractItemDelegate* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractItemDelegate, source: QAbstractItemDelegate) {.error.}
proc `=sink`(dest: var QAbstractItemDelegate, source: QAbstractItemDelegate) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

