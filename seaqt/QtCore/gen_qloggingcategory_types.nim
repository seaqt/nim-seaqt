type QLoggingCategory* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qloggingcategory.cpp", QtCoreCFlags).}

proc fcQLoggingCategory_delete(self: pointer) {.importc: "QLoggingCategory_delete".}
proc `=destroy`(self: var QLoggingCategory) =
  if self.owned: fcQLoggingCategory_delete(self.h)

proc `=sink`(dest: var QLoggingCategory, source: QLoggingCategory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLoggingCategory, source: QLoggingCategory) {.error.}
proc delete*(self: sink QLoggingCategory) =
  let h = self.h
  wasMoved(self)
  fcQLoggingCategory_delete(h)

