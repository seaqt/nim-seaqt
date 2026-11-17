type QPermission* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qpermissions.cpp", QtCoreCFlags).}

proc fcQPermission_delete(self: pointer) {.importc: "QPermission_delete".}
proc `=destroy`(self: var QPermission) =
  if self.owned: fcQPermission_delete(self.h)

proc `=sink`(dest: var QPermission, source: QPermission) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPermission, source: QPermission) {.error.}
proc delete*(self: sink QPermission) =
  let h = self.h
  wasMoved(self)
  fcQPermission_delete(h)

