type QSqlResult* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqlresult.cpp", QtSqlCFlags).}

proc fcQSqlResult_delete(self: pointer) {.importc: "QSqlResult_delete".}
proc `=destroy`(self: var QSqlResult) =
  if self.owned: fcQSqlResult_delete(self.h)

proc `=sink`(dest: var QSqlResult, source: QSqlResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlResult, source: QSqlResult) {.error.}
proc delete*(self: sink QSqlResult) =
  let h = self.h
  wasMoved(self)
  fcQSqlResult_delete(h)

