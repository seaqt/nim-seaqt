type QBasicReadWriteLock* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qreadwritelock.cpp", QtCoreCFlags).}

proc fcQBasicReadWriteLock_delete(self: pointer) {.importc: "QBasicReadWriteLock_delete".}
proc `=destroy`(self: var QBasicReadWriteLock) =
  if self.owned: fcQBasicReadWriteLock_delete(self.h)

proc `=sink`(dest: var QBasicReadWriteLock, source: QBasicReadWriteLock) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBasicReadWriteLock, source: QBasicReadWriteLock) {.error.}
proc delete*(self: sink QBasicReadWriteLock) =
  let h = self.h
  wasMoved(self)
  fcQBasicReadWriteLock_delete(h)

type QReadWriteLock* = object of QBasicReadWriteLock
proc `=copy`(dest: var QReadWriteLock, source: QReadWriteLock) {.error.}
proc `=sink`(dest: var QReadWriteLock, source: QReadWriteLock) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

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

