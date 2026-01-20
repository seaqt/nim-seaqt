import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSqlDriver* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSqlDriver, source: QSqlDriver) {.error.}
proc `=sink`(dest: var QSqlDriver, source: QSqlDriver) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

