type QSqlError* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqlerror.cpp", QtSqlCFlags).}

proc fcQSqlError_delete(self: pointer) {.importc: "QSqlError_delete".}
proc `=destroy`(self: var QSqlError) =
  if self.owned: fcQSqlError_delete(self.h)

proc `=sink`(dest: var QSqlError, source: QSqlError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlError, source: QSqlError) {.error.}
proc delete*(self: sink QSqlError) =
  let h = self.h
  wasMoved(self)
  fcQSqlError_delete(h)

