type QFutureInterfaceBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qfutureinterface.cpp", QtCoreCFlags).}

proc fcQFutureInterfaceBase_delete(self: pointer) {.importc: "QFutureInterfaceBase_delete".}
proc `=destroy`(self: var QFutureInterfaceBase) =
  if self.owned: fcQFutureInterfaceBase_delete(self.h)

proc `=sink`(dest: var QFutureInterfaceBase, source: QFutureInterfaceBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFutureInterfaceBase, source: QFutureInterfaceBase) {.error.}
proc delete*(self: sink QFutureInterfaceBase) =
  let h = self.h
  wasMoved(self)
  fcQFutureInterfaceBase_delete(h)

