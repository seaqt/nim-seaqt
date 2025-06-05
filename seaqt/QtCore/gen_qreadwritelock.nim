import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QReadWriteLockRecursionModeEnum* = distinct cint
template NonRecursive*(_: type QReadWriteLockRecursionModeEnum): untyped = 0
template Recursive*(_: type QReadWriteLockRecursionModeEnum): untyped = 1


import ./gen_qreadwritelock_types
export gen_qreadwritelock_types


type cQReadWriteLock*{.exportc: "QReadWriteLock", incompleteStruct.} = object
type cQReadLocker*{.exportc: "QReadLocker", incompleteStruct.} = object
type cQWriteLocker*{.exportc: "QWriteLocker", incompleteStruct.} = object

proc fcQReadWriteLock_lockForRead(self: pointer): void {.importc: "QReadWriteLock_lockForRead".}
proc fcQReadWriteLock_tryLockForRead(self: pointer): bool {.importc: "QReadWriteLock_tryLockForRead".}
proc fcQReadWriteLock_tryLockForReadWithTimeout(self: pointer, timeout: cint): bool {.importc: "QReadWriteLock_tryLockForReadWithTimeout".}
proc fcQReadWriteLock_lockForWrite(self: pointer): void {.importc: "QReadWriteLock_lockForWrite".}
proc fcQReadWriteLock_tryLockForWrite(self: pointer): bool {.importc: "QReadWriteLock_tryLockForWrite".}
proc fcQReadWriteLock_tryLockForWriteWithTimeout(self: pointer, timeout: cint): bool {.importc: "QReadWriteLock_tryLockForWriteWithTimeout".}
proc fcQReadWriteLock_unlock(self: pointer): void {.importc: "QReadWriteLock_unlock".}
proc fcQReadWriteLock_new(): ptr cQReadWriteLock {.importc: "QReadWriteLock_new".}
proc fcQReadWriteLock_new2(recursionMode: cint): ptr cQReadWriteLock {.importc: "QReadWriteLock_new2".}
proc fcQReadWriteLock_delete(self: pointer) {.importc: "QReadWriteLock_delete".}
proc fcQReadLocker_unlock(self: pointer): void {.importc: "QReadLocker_unlock".}
proc fcQReadLocker_relock(self: pointer): void {.importc: "QReadLocker_relock".}
proc fcQReadLocker_readWriteLock(self: pointer): pointer {.importc: "QReadLocker_readWriteLock".}
proc fcQReadLocker_new(readWriteLock: pointer): ptr cQReadLocker {.importc: "QReadLocker_new".}
proc fcQReadLocker_delete(self: pointer) {.importc: "QReadLocker_delete".}
proc fcQWriteLocker_unlock(self: pointer): void {.importc: "QWriteLocker_unlock".}
proc fcQWriteLocker_relock(self: pointer): void {.importc: "QWriteLocker_relock".}
proc fcQWriteLocker_readWriteLock(self: pointer): pointer {.importc: "QWriteLocker_readWriteLock".}
proc fcQWriteLocker_new(readWriteLock: pointer): ptr cQWriteLocker {.importc: "QWriteLocker_new".}
proc fcQWriteLocker_delete(self: pointer) {.importc: "QWriteLocker_delete".}

proc lockForRead*(self: gen_qreadwritelock_types.QReadWriteLock): void =
  fcQReadWriteLock_lockForRead(self.h)

proc tryLockForRead*(self: gen_qreadwritelock_types.QReadWriteLock): bool =
  fcQReadWriteLock_tryLockForRead(self.h)

proc tryLockForRead*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: cint): bool =
  fcQReadWriteLock_tryLockForReadWithTimeout(self.h, timeout)

proc lockForWrite*(self: gen_qreadwritelock_types.QReadWriteLock): void =
  fcQReadWriteLock_lockForWrite(self.h)

proc tryLockForWrite*(self: gen_qreadwritelock_types.QReadWriteLock): bool =
  fcQReadWriteLock_tryLockForWrite(self.h)

proc tryLockForWrite*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: cint): bool =
  fcQReadWriteLock_tryLockForWriteWithTimeout(self.h, timeout)

proc unlock*(self: gen_qreadwritelock_types.QReadWriteLock): void =
  fcQReadWriteLock_unlock(self.h)

proc create*(T: type gen_qreadwritelock_types.QReadWriteLock): gen_qreadwritelock_types.QReadWriteLock =
  let tmp = gen_qreadwritelock_types.QReadWriteLock(h: fcQReadWriteLock_new())
  tmp
proc create*(T: type gen_qreadwritelock_types.QReadWriteLock,
    recursionMode: cint): gen_qreadwritelock_types.QReadWriteLock =
  let tmp = gen_qreadwritelock_types.QReadWriteLock(h: fcQReadWriteLock_new2(cint(recursionMode)))
  tmp
proc delete*(self: gen_qreadwritelock_types.QReadWriteLock) =
  fcQReadWriteLock_delete(self.h)
proc unlock*(self: gen_qreadwritelock_types.QReadLocker): void =
  fcQReadLocker_unlock(self.h)

proc relock*(self: gen_qreadwritelock_types.QReadLocker): void =
  fcQReadLocker_relock(self.h)

proc readWriteLock*(self: gen_qreadwritelock_types.QReadLocker): gen_qreadwritelock_types.QReadWriteLock =
  gen_qreadwritelock_types.QReadWriteLock(h: fcQReadLocker_readWriteLock(self.h))

proc create*(T: type gen_qreadwritelock_types.QReadLocker,
    readWriteLock: gen_qreadwritelock_types.QReadWriteLock): gen_qreadwritelock_types.QReadLocker =
  let tmp = gen_qreadwritelock_types.QReadLocker(h: fcQReadLocker_new(readWriteLock.h))
  tmp
proc delete*(self: gen_qreadwritelock_types.QReadLocker) =
  fcQReadLocker_delete(self.h)
proc unlock*(self: gen_qreadwritelock_types.QWriteLocker): void =
  fcQWriteLocker_unlock(self.h)

proc relock*(self: gen_qreadwritelock_types.QWriteLocker): void =
  fcQWriteLocker_relock(self.h)

proc readWriteLock*(self: gen_qreadwritelock_types.QWriteLocker): gen_qreadwritelock_types.QReadWriteLock =
  gen_qreadwritelock_types.QReadWriteLock(h: fcQWriteLocker_readWriteLock(self.h))

proc create*(T: type gen_qreadwritelock_types.QWriteLocker,
    readWriteLock: gen_qreadwritelock_types.QReadWriteLock): gen_qreadwritelock_types.QWriteLocker =
  let tmp = gen_qreadwritelock_types.QWriteLocker(h: fcQWriteLocker_new(readWriteLock.h))
  tmp
proc delete*(self: gen_qreadwritelock_types.QWriteLocker) =
  fcQWriteLocker_delete(self.h)
