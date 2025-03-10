type QBasicMutex* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qmutex.cpp", cflags).}

proc fcQBasicMutex_delete(self: pointer) {.importc: "QBasicMutex_delete".}
proc `=destroy`(self: var QBasicMutex) =
  if self.owned: fcQBasicMutex_delete(self.h)

proc `=sink`(dest: var QBasicMutex, source: QBasicMutex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBasicMutex, source: QBasicMutex) {.error.}
proc delete*(self: sink QBasicMutex) =
  let h = self.h
  wasMoved(self)
  fcQBasicMutex_delete(h)

type QMutex* = object of QBasicMutex
proc `=copy`(dest: var QMutex, source: QMutex) {.error.}
proc `=sink`(dest: var QMutex, source: QMutex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRecursiveMutex* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQRecursiveMutex_delete(self: pointer) {.importc: "QRecursiveMutex_delete".}
proc `=destroy`(self: var QRecursiveMutex) =
  if self.owned: fcQRecursiveMutex_delete(self.h)

proc `=sink`(dest: var QRecursiveMutex, source: QRecursiveMutex) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRecursiveMutex, source: QRecursiveMutex) {.error.}
proc delete*(self: sink QRecursiveMutex) =
  let h = self.h
  wasMoved(self)
  fcQRecursiveMutex_delete(h)

