import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSqlDriverPlugin* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSqlDriverPlugin, source: QSqlDriverPlugin) {.error.}
proc `=sink`(dest: var QSqlDriverPlugin, source: QSqlDriverPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

