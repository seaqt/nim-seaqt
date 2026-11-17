type QSqlQuery* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqlquery.cpp", QtSqlCFlags).}

proc fcQSqlQuery_delete(self: pointer) {.importc: "QSqlQuery_delete".}
proc `=destroy`(self: var QSqlQuery) =
  if self.owned: fcQSqlQuery_delete(self.h)

proc `=sink`(dest: var QSqlQuery, source: QSqlQuery) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlQuery, source: QSqlQuery) {.error.}
proc delete*(self: sink QSqlQuery) =
  let h = self.h
  wasMoved(self)
  fcQSqlQuery_delete(h)

