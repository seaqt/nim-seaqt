type QReadWriteLock* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qreadwritelock.cpp", cflags).}

proc fcQReadWriteLock_delete(self: pointer) {.importc: "QReadWriteLock_delete".}
proc `=destroy`(self: var QReadWriteLock) =
  if self.owned: fcQReadWriteLock_delete(self.h)

proc `=sink`(dest: var QReadWriteLock, source: QReadWriteLock) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QReadWriteLock, source: QReadWriteLock) {.error.}
proc delete*(self: sink QReadWriteLock) =
  let h = self.h
  wasMoved(self)
  fcQReadWriteLock_delete(h)

type QReadLocker* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQReadLocker_delete(self: pointer) {.importc: "QReadLocker_delete".}
proc `=destroy`(self: var QReadLocker) =
  if self.owned: fcQReadLocker_delete(self.h)

proc `=sink`(dest: var QReadLocker, source: QReadLocker) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QReadLocker, source: QReadLocker) {.error.}
proc delete*(self: sink QReadLocker) =
  let h = self.h
  wasMoved(self)
  fcQReadLocker_delete(h)

type QWriteLocker* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWriteLocker_delete(self: pointer) {.importc: "QWriteLocker_delete".}
proc `=destroy`(self: var QWriteLocker) =
  if self.owned: fcQWriteLocker_delete(self.h)

proc `=sink`(dest: var QWriteLocker, source: QWriteLocker) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWriteLocker, source: QWriteLocker) {.error.}
proc delete*(self: sink QWriteLocker) =
  let h = self.h
  wasMoved(self)
  fcQWriteLocker_delete(h)

