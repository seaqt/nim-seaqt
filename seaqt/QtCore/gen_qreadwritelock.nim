import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

import
  ./gen_qdeadlinetimer_types
export
  gen_qdeadlinetimer_types

type cQBasicReadWriteLock*{.exportc: "QBasicReadWriteLock", incompleteStruct.} = object
type cQReadWriteLock*{.exportc: "QReadWriteLock", incompleteStruct.} = object
type cQReadLocker*{.exportc: "QReadLocker", incompleteStruct.} = object
type cQWriteLocker*{.exportc: "QWriteLocker", incompleteStruct.} = object

proc fcQBasicReadWriteLock_lockForRead(self: pointer): void {.importc: "QBasicReadWriteLock_lockForRead".}
proc fcQBasicReadWriteLock_tryLockForRead(self: pointer): bool {.importc: "QBasicReadWriteLock_tryLockForRead".}
proc fcQBasicReadWriteLock_tryLockForReadTimeout(self: pointer, timeout: pointer): bool {.importc: "QBasicReadWriteLock_tryLockForRead_timeout".}
proc fcQBasicReadWriteLock_lockForWrite(self: pointer): void {.importc: "QBasicReadWriteLock_lockForWrite".}
proc fcQBasicReadWriteLock_tryLockForWrite(self: pointer): bool {.importc: "QBasicReadWriteLock_tryLockForWrite".}
proc fcQBasicReadWriteLock_tryLockForWriteTimeout(self: pointer, timeout: pointer): bool {.importc: "QBasicReadWriteLock_tryLockForWrite_timeout".}
proc fcQBasicReadWriteLock_unlock(self: pointer): void {.importc: "QBasicReadWriteLock_unlock".}
proc fcQBasicReadWriteLock_lock(self: pointer): void {.importc: "QBasicReadWriteLock_lock".}
proc fcQBasicReadWriteLock_lockShared(self: pointer): void {.importc: "QBasicReadWriteLock_lock_shared".}
proc fcQBasicReadWriteLock_tryLock(self: pointer): bool {.importc: "QBasicReadWriteLock_try_lock".}
proc fcQBasicReadWriteLock_tryLockShared(self: pointer): bool {.importc: "QBasicReadWriteLock_try_lock_shared".}
proc fcQBasicReadWriteLock_unlockShared(self: pointer): void {.importc: "QBasicReadWriteLock_unlock_shared".}
proc fcQBasicReadWriteLock_protectedbase_tryLockForReadInternal(self: pointer, timeout: pointer, tsanFlags: cuint): bool {.importc: "QBasicReadWriteLock_protectedbase_tryLockForReadInternal".}
proc fcQBasicReadWriteLock_protectedbase_tryLockForWriteInternal(self: pointer, timeout: pointer, tsanFlags: cuint): bool {.importc: "QBasicReadWriteLock_protectedbase_tryLockForWriteInternal".}
proc fcQBasicReadWriteLock_protectedbase_contendedTryLockForRead(self: pointer, timeout: pointer, dd: pointer): bool {.importc: "QBasicReadWriteLock_protectedbase_contendedTryLockForRead".}
proc fcQBasicReadWriteLock_protectedbase_contendedTryLockForWrite(self: pointer, timeout: pointer, dd: pointer): bool {.importc: "QBasicReadWriteLock_protectedbase_contendedTryLockForWrite".}
proc fcQBasicReadWriteLock_protectedbase_contendedUnlock(self: pointer, dd: pointer): void {.importc: "QBasicReadWriteLock_protectedbase_contendedUnlock".}
proc fcQBasicReadWriteLock_protectedbase_isContendedLockForRead(self: pointer, dd: pointer): bool {.importc: "QBasicReadWriteLock_protectedbase_isContendedLockForRead".}
proc fcQBasicReadWriteLock_new(): ptr cQBasicReadWriteLock {.importc: "QBasicReadWriteLock_new".}
proc fcQReadWriteLock_tryLockForRead(self: pointer, timeout: cint): bool {.importc: "QReadWriteLock_tryLockForRead".}
proc fcQReadWriteLock_tryLockForWrite(self: pointer, timeout: cint): bool {.importc: "QReadWriteLock_tryLockForWrite".}
proc fcQReadWriteLock_protectedbase_tryLockForReadInternal(self: pointer, timeout: pointer, tsanFlags: cuint): bool {.importc: "QReadWriteLock_protectedbase_tryLockForReadInternal".}
proc fcQReadWriteLock_protectedbase_tryLockForWriteInternal(self: pointer, timeout: pointer, tsanFlags: cuint): bool {.importc: "QReadWriteLock_protectedbase_tryLockForWriteInternal".}
proc fcQReadWriteLock_protectedbase_contendedTryLockForRead(self: pointer, timeout: pointer, dd: pointer): bool {.importc: "QReadWriteLock_protectedbase_contendedTryLockForRead".}
proc fcQReadWriteLock_protectedbase_contendedTryLockForWrite(self: pointer, timeout: pointer, dd: pointer): bool {.importc: "QReadWriteLock_protectedbase_contendedTryLockForWrite".}
proc fcQReadWriteLock_protectedbase_contendedUnlock(self: pointer, dd: pointer): void {.importc: "QReadWriteLock_protectedbase_contendedUnlock".}
proc fcQReadWriteLock_protectedbase_isContendedLockForRead(self: pointer, dd: pointer): bool {.importc: "QReadWriteLock_protectedbase_isContendedLockForRead".}
proc fcQReadWriteLock_new(): ptr cQReadWriteLock {.importc: "QReadWriteLock_new".}
proc fcQReadWriteLock_new2(recursionMode: cint): ptr cQReadWriteLock {.importc: "QReadWriteLock_new_recursionMode".}
proc fcQReadLocker_unlock(self: pointer): void {.importc: "QReadLocker_unlock".}
proc fcQReadLocker_relock(self: pointer): void {.importc: "QReadLocker_relock".}
proc fcQReadLocker_readWriteLock(self: pointer): pointer {.importc: "QReadLocker_readWriteLock".}
proc fcQReadLocker_new(readWriteLock: pointer): ptr cQReadLocker {.importc: "QReadLocker_new".}
proc fcQWriteLocker_unlock(self: pointer): void {.importc: "QWriteLocker_unlock".}
proc fcQWriteLocker_relock(self: pointer): void {.importc: "QWriteLocker_relock".}
proc fcQWriteLocker_readWriteLock(self: pointer): pointer {.importc: "QWriteLocker_readWriteLock".}
proc fcQWriteLocker_new(readWriteLock: pointer): ptr cQWriteLocker {.importc: "QWriteLocker_new".}

proc lockForRead*(self: gen_qreadwritelock_types.QBasicReadWriteLock): void =
  fcQBasicReadWriteLock_lockForRead(self.h)

proc tryLockForRead*(self: gen_qreadwritelock_types.QBasicReadWriteLock): bool =
  fcQBasicReadWriteLock_tryLockForRead(self.h)

proc tryLockForRead*(self: gen_qreadwritelock_types.QBasicReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQBasicReadWriteLock_tryLockForReadTimeout(self.h, timeout.h)

proc lockForWrite*(self: gen_qreadwritelock_types.QBasicReadWriteLock): void =
  fcQBasicReadWriteLock_lockForWrite(self.h)

proc tryLockForWrite*(self: gen_qreadwritelock_types.QBasicReadWriteLock): bool =
  fcQBasicReadWriteLock_tryLockForWrite(self.h)

proc tryLockForWrite*(self: gen_qreadwritelock_types.QBasicReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQBasicReadWriteLock_tryLockForWriteTimeout(self.h, timeout.h)

proc unlock*(self: gen_qreadwritelock_types.QBasicReadWriteLock): void =
  fcQBasicReadWriteLock_unlock(self.h)

proc lock*(self: gen_qreadwritelock_types.QBasicReadWriteLock): void =
  fcQBasicReadWriteLock_lock(self.h)

proc lockShared*(self: gen_qreadwritelock_types.QBasicReadWriteLock): void =
  fcQBasicReadWriteLock_lockShared(self.h)

proc tryLock*(self: gen_qreadwritelock_types.QBasicReadWriteLock): bool =
  fcQBasicReadWriteLock_tryLock(self.h)

proc tryLockShared*(self: gen_qreadwritelock_types.QBasicReadWriteLock): bool =
  fcQBasicReadWriteLock_tryLockShared(self.h)

proc unlockShared*(self: gen_qreadwritelock_types.QBasicReadWriteLock): void =
  fcQBasicReadWriteLock_unlockShared(self.h)

proc tryLockForReadInternal*(self: gen_qreadwritelock_types.QBasicReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, tsanFlags: cuint): bool =
  fcQBasicReadWriteLock_protectedbase_tryLockForReadInternal(self.h, timeout.h, tsanFlags)

proc tryLockForWriteInternal*(self: gen_qreadwritelock_types.QBasicReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, tsanFlags: cuint): bool =
  fcQBasicReadWriteLock_protectedbase_tryLockForWriteInternal(self.h, timeout.h, tsanFlags)

proc contendedTryLockForRead*(self: gen_qreadwritelock_types.QBasicReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, dd: pointer): bool =
  fcQBasicReadWriteLock_protectedbase_contendedTryLockForRead(self.h, timeout.h, dd)

proc contendedTryLockForWrite*(self: gen_qreadwritelock_types.QBasicReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, dd: pointer): bool =
  fcQBasicReadWriteLock_protectedbase_contendedTryLockForWrite(self.h, timeout.h, dd)

proc contendedUnlock*(self: gen_qreadwritelock_types.QBasicReadWriteLock, dd: pointer): void =
  fcQBasicReadWriteLock_protectedbase_contendedUnlock(self.h, dd)

proc isContendedLockForRead*(self: gen_qreadwritelock_types.QBasicReadWriteLock, dd: pointer): bool =
  fcQBasicReadWriteLock_protectedbase_isContendedLockForRead(self.h, dd)

proc create*(T: type gen_qreadwritelock_types.QBasicReadWriteLock): gen_qreadwritelock_types.QBasicReadWriteLock =
  let tmp = gen_qreadwritelock_types.QBasicReadWriteLock(h: fcQBasicReadWriteLock_new(), owned: true)
  tmp
proc tryLockForRead*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: cint): bool =
  fcQReadWriteLock_tryLockForRead(self.h, timeout)

proc tryLockForWrite*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: cint): bool =
  fcQReadWriteLock_tryLockForWrite(self.h, timeout)

proc tryLockForReadInternal*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, tsanFlags: cuint): bool =
  fcQReadWriteLock_protectedbase_tryLockForReadInternal(self.h, timeout.h, tsanFlags)

proc tryLockForWriteInternal*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, tsanFlags: cuint): bool =
  fcQReadWriteLock_protectedbase_tryLockForWriteInternal(self.h, timeout.h, tsanFlags)

proc contendedTryLockForRead*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, dd: pointer): bool =
  fcQReadWriteLock_protectedbase_contendedTryLockForRead(self.h, timeout.h, dd)

proc contendedTryLockForWrite*(self: gen_qreadwritelock_types.QReadWriteLock, timeout: gen_qdeadlinetimer_types.QDeadlineTimer, dd: pointer): bool =
  fcQReadWriteLock_protectedbase_contendedTryLockForWrite(self.h, timeout.h, dd)

proc contendedUnlock*(self: gen_qreadwritelock_types.QReadWriteLock, dd: pointer): void =
  fcQReadWriteLock_protectedbase_contendedUnlock(self.h, dd)

proc isContendedLockForRead*(self: gen_qreadwritelock_types.QReadWriteLock, dd: pointer): bool =
  fcQReadWriteLock_protectedbase_isContendedLockForRead(self.h, dd)

proc create*(T: type gen_qreadwritelock_types.QReadWriteLock): gen_qreadwritelock_types.QReadWriteLock =
  let tmp = gen_qreadwritelock_types.QReadWriteLock(h: fcQReadWriteLock_new(), owned: true)
  tmp
proc create*(T: type gen_qreadwritelock_types.QReadWriteLock,
    recursionMode: cint): gen_qreadwritelock_types.QReadWriteLock =
  let tmp = gen_qreadwritelock_types.QReadWriteLock(h: fcQReadWriteLock_new2(cint(recursionMode)), owned: true)
  tmp
proc unlock*(self: gen_qreadwritelock_types.QReadLocker): void =
  fcQReadLocker_unlock(self.h)

proc relock*(self: gen_qreadwritelock_types.QReadLocker): void =
  fcQReadLocker_relock(self.h)

proc readWriteLock*(self: gen_qreadwritelock_types.QReadLocker): gen_qreadwritelock_types.QReadWriteLock =
  gen_qreadwritelock_types.QReadWriteLock(h: fcQReadLocker_readWriteLock(self.h), owned: false)

proc create*(T: type gen_qreadwritelock_types.QReadLocker,
    readWriteLock: gen_qreadwritelock_types.QReadWriteLock): gen_qreadwritelock_types.QReadLocker =
  let tmp = gen_qreadwritelock_types.QReadLocker(h: fcQReadLocker_new(readWriteLock.h), owned: true)
  tmp
proc unlock*(self: gen_qreadwritelock_types.QWriteLocker): void =
  fcQWriteLocker_unlock(self.h)

proc relock*(self: gen_qreadwritelock_types.QWriteLocker): void =
  fcQWriteLocker_relock(self.h)

proc readWriteLock*(self: gen_qreadwritelock_types.QWriteLocker): gen_qreadwritelock_types.QReadWriteLock =
  gen_qreadwritelock_types.QReadWriteLock(h: fcQWriteLocker_readWriteLock(self.h), owned: false)

proc create*(T: type gen_qreadwritelock_types.QWriteLocker,
    readWriteLock: gen_qreadwritelock_types.QReadWriteLock): gen_qreadwritelock_types.QWriteLocker =
  let tmp = gen_qreadwritelock_types.QWriteLocker(h: fcQWriteLocker_new(readWriteLock.h), owned: true)
  tmp
