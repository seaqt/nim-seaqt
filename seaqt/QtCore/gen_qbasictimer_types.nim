type QBasicTimer* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qbasictimer.cpp", QtCoreCFlags).}

proc fcQBasicTimer_delete(self: pointer) {.importc: "QBasicTimer_delete".}
proc `=destroy`(self: var QBasicTimer) =
  if self.owned: fcQBasicTimer_delete(self.h)

proc `=sink`(dest: var QBasicTimer, source: QBasicTimer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBasicTimer, source: QBasicTimer) {.error.}
proc delete*(self: sink QBasicTimer) =
  let h = self.h
  wasMoved(self)
  fcQBasicTimer_delete(h)

