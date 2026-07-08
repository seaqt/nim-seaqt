type QSqlRelation* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqlrelationaltablemodel.cpp", QtSqlCFlags).}

proc fcQSqlRelation_delete(self: pointer) {.importc: "QSqlRelation_delete".}
proc `=destroy`(self: var QSqlRelation) =
  if self.owned: fcQSqlRelation_delete(self.h)

proc `=sink`(dest: var QSqlRelation, source: QSqlRelation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlRelation, source: QSqlRelation) {.error.}
proc delete*(self: sink QSqlRelation) =
  let h = self.h
  wasMoved(self)
  fcQSqlRelation_delete(h)

import ./gen_qsqltablemodel_types
export gen_qsqltablemodel_types

type QSqlRelationalTableModel* = object of gen_qsqltablemodel_types.QSqlTableModel
proc `=copy`(dest: var QSqlRelationalTableModel, source: QSqlRelationalTableModel) {.error.}
proc `=sink`(dest: var QSqlRelationalTableModel, source: QSqlRelationalTableModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

