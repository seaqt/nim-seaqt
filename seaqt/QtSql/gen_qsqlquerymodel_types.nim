import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QSqlQueryModel* = object of gen_qabstractitemmodel_types.QAbstractTableModel
proc `=copy`(dest: var QSqlQueryModel, source: QSqlQueryModel) {.error.}
proc `=sink`(dest: var QSqlQueryModel, source: QSqlQueryModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

