type QDeadlineTimer* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qdeadlinetimer.cpp", QtCoreCFlags).}

proc fcQDeadlineTimer_delete(self: pointer) {.importc: "QDeadlineTimer_delete".}
proc `=destroy`(self: var QDeadlineTimer) =
  if self.owned: fcQDeadlineTimer_delete(self.h)

proc `=sink`(dest: var QDeadlineTimer, source: QDeadlineTimer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDeadlineTimer, source: QDeadlineTimer) {.error.}
proc delete*(self: sink QDeadlineTimer) =
  let h = self.h
  wasMoved(self)
  fcQDeadlineTimer_delete(h)

