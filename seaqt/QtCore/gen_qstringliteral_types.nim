type QStringDataPtr* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qstringliteral.cpp", QtCoreCFlags).}

proc fcQStringDataPtr_delete(self: pointer) {.importc: "QStringDataPtr_delete".}
proc `=destroy`(self: var QStringDataPtr) =
  if self.owned: fcQStringDataPtr_delete(self.h)

proc `=sink`(dest: var QStringDataPtr, source: QStringDataPtr) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStringDataPtr, source: QStringDataPtr) {.error.}
proc delete*(self: sink QStringDataPtr) =
  let h = self.h
  wasMoved(self)
  fcQStringDataPtr_delete(h)

