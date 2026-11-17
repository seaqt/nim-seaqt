import ./gen_qsqlquerymodel_types
export gen_qsqlquerymodel_types

type QSqlTableModel* = object of gen_qsqlquerymodel_types.QSqlQueryModel
proc `=copy`(dest: var QSqlTableModel, source: QSqlTableModel) {.error.}
proc `=sink`(dest: var QSqlTableModel, source: QSqlTableModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

