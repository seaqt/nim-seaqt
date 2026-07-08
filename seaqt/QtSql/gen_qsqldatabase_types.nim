type QSqlDriverCreatorBase* {.inheritable.} = object
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

type QSqlDatabaseDefaultConnectionName* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSqlDatabaseDefaultConnectionName_delete(self: pointer) {.importc: "QSqlDatabaseDefaultConnectionName_delete".}
proc `=destroy`(self: var QSqlDatabaseDefaultConnectionName) =
  if self.owned: fcQSqlDatabaseDefaultConnectionName_delete(self.h)

proc `=sink`(dest: var QSqlDatabaseDefaultConnectionName, source: QSqlDatabaseDefaultConnectionName) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlDatabaseDefaultConnectionName, source: QSqlDatabaseDefaultConnectionName) {.error.}
proc delete*(self: sink QSqlDatabaseDefaultConnectionName) =
  let h = self.h
  wasMoved(self)
  fcQSqlDatabaseDefaultConnectionName_delete(h)

type QSqlDatabase* = object of QSqlDatabaseDefaultConnectionName
proc `=copy`(dest: var QSqlDatabase, source: QSqlDatabase) {.error.}
proc `=sink`(dest: var QSqlDatabase, source: QSqlDatabase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

