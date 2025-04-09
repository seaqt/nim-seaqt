type QSemaphore* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qsemaphore.cpp", cflags).}

proc fcQSemaphore_delete(self: pointer) {.importc: "QSemaphore_delete".}
proc `=destroy`(self: var QSemaphore) =
  if self.owned: fcQSemaphore_delete(self.h)

proc `=sink`(dest: var QSemaphore, source: QSemaphore) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSemaphore, source: QSemaphore) {.error.}
proc delete*(self: sink QSemaphore) =
  let h = self.h
  wasMoved(self)
  fcQSemaphore_delete(h)

type QSemaphoreReleaser* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSemaphoreReleaser_delete(self: pointer) {.importc: "QSemaphoreReleaser_delete".}
proc `=destroy`(self: var QSemaphoreReleaser) =
  if self.owned: fcQSemaphoreReleaser_delete(self.h)

proc `=sink`(dest: var QSemaphoreReleaser, source: QSemaphoreReleaser) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSemaphoreReleaser, source: QSemaphoreReleaser) {.error.}
proc delete*(self: sink QSemaphoreReleaser) =
  let h = self.h
  wasMoved(self)
  fcQSemaphoreReleaser_delete(h)

