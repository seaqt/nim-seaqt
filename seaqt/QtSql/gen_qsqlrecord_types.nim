type QSqlRecord* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqlrecord.cpp", QtSqlCFlags).}

proc fcQSqlRecord_delete(self: pointer) {.importc: "QSqlRecord_delete".}
proc `=destroy`(self: var QSqlRecord) =
  if self.owned: fcQSqlRecord_delete(self.h)

proc `=sink`(dest: var QSqlRecord, source: QSqlRecord) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlRecord, source: QSqlRecord) {.error.}
proc delete*(self: sink QSqlRecord) =
  let h = self.h
  wasMoved(self)
  fcQSqlRecord_delete(h)

