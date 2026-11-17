type QUuid* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_quuid.cpp", QtCoreCFlags).}

proc fcQUuid_delete(self: pointer) {.importc: "QUuid_delete".}
proc `=destroy`(self: var QUuid) =
  if self.owned: fcQUuid_delete(self.h)

proc `=sink`(dest: var QUuid, source: QUuid) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUuid, source: QUuid) {.error.}
proc delete*(self: sink QUuid) =
  let h = self.h
  wasMoved(self)
  fcQUuid_delete(h)

