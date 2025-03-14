type QContiguousCacheData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qcontiguouscache.cpp", QtCoreCFlags).}

proc fcQContiguousCacheData_delete(self: pointer) {.importc: "QContiguousCacheData_delete".}
proc `=destroy`(self: var QContiguousCacheData) =
  if self.owned: fcQContiguousCacheData_delete(self.h)

proc `=sink`(dest: var QContiguousCacheData, source: QContiguousCacheData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QContiguousCacheData, source: QContiguousCacheData) {.error.}
proc delete*(self: sink QContiguousCacheData) =
  let h = self.h
  wasMoved(self)
  fcQContiguousCacheData_delete(h)

