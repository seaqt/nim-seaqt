type QUntypedPropertyData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qpropertyprivate.cpp", QtCoreCFlags).}

proc fcQUntypedPropertyData_delete(self: pointer) {.importc: "QUntypedPropertyData_delete".}
proc `=destroy`(self: var QUntypedPropertyData) =
  if self.owned: fcQUntypedPropertyData_delete(self.h)

proc `=sink`(dest: var QUntypedPropertyData, source: QUntypedPropertyData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUntypedPropertyData, source: QUntypedPropertyData) {.error.}
proc delete*(self: sink QUntypedPropertyData) =
  let h = self.h
  wasMoved(self)
  fcQUntypedPropertyData_delete(h)

