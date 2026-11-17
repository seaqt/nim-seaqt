type QSqlField* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtsql_pkg

{.compile("gen_qsqlfield.cpp", QtSqlCFlags).}

proc fcQSqlField_delete(self: pointer) {.importc: "QSqlField_delete".}
proc `=destroy`(self: var QSqlField) =
  if self.owned: fcQSqlField_delete(self.h)

proc `=sink`(dest: var QSqlField, source: QSqlField) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSqlField, source: QSqlField) {.error.}
proc delete*(self: sink QSqlField) =
  let h = self.h
  wasMoved(self)
  fcQSqlField_delete(h)

