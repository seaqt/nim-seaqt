type QSystemSemaphore* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qsystemsemaphore.cpp", cflags).}

proc fcQSystemSemaphore_delete(self: pointer) {.importc: "QSystemSemaphore_delete".}
proc `=destroy`(self: var QSystemSemaphore) =
  if self.owned: fcQSystemSemaphore_delete(self.h)

proc `=sink`(dest: var QSystemSemaphore, source: QSystemSemaphore) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSystemSemaphore, source: QSystemSemaphore) {.error.}
proc delete*(self: sink QSystemSemaphore) =
  let h = self.h
  wasMoved(self)
  fcQSystemSemaphore_delete(h)

