import ./gen_qsqlrecord_types
export gen_qsqlrecord_types

type QSqlIndex* = object of gen_qsqlrecord_types.QSqlRecord
proc `=copy`(dest: var QSqlIndex, source: QSqlIndex) {.error.}
proc `=sink`(dest: var QSqlIndex, source: QSqlIndex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

