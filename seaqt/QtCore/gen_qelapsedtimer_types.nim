type QElapsedTimer* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qelapsedtimer.cpp", QtCoreCFlags).}

proc fcQElapsedTimer_delete(self: pointer) {.importc: "QElapsedTimer_delete".}
proc `=destroy`(self: var QElapsedTimer) =
  if self.owned: fcQElapsedTimer_delete(self.h)

proc `=sink`(dest: var QElapsedTimer, source: QElapsedTimer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QElapsedTimer, source: QElapsedTimer) {.error.}
proc delete*(self: sink QElapsedTimer) =
  let h = self.h
  wasMoved(self)
  fcQElapsedTimer_delete(h)

