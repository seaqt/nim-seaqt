type QSqlDriverCreatorBase* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqldatabase.cpp", QtSqlCFlags).}

proc fcQSqlDriverCreatorBase_delete(self: pointer) {.importc: "QSqlDriverCreatorBase_delete".}
proc `=destroy`(self: var QSqlDriverCreatorBase) =
  if self.owned: fcQSqlDriverCreatorBase_delete(self.h)

proc `=sink`(dest: var QSqlDriverCreatorBase, source: QSqlDriverCreatorBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlDriverCreatorBase, source: QSqlDriverCreatorBase) {.error.}
proc delete*(self: sink QSqlDriverCreatorBase) =
  let h = self.h
  wasMoved(self)
  fcQSqlDriverCreatorBase_delete(h)

type QSqlDatabase* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

proc fcQSqlDatabase_delete(self: pointer) {.importc: "QSqlDatabase_delete".}
proc `=destroy`(self: var QSqlDatabase) =
  if self.owned: fcQSqlDatabase_delete(self.h)

proc `=sink`(dest: var QSqlDatabase, source: QSqlDatabase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlDatabase, source: QSqlDatabase) {.error.}
proc delete*(self: sink QSqlDatabase) =
  let h = self.h
  wasMoved(self)
  fcQSqlDatabase_delete(h)

