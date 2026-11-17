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


import ./gen_qwaitcondition_types
export gen_qwaitcondition_types

import
  ./gen_qdeadlinetimer_types,
  ./gen_qmutex_types,
  ./gen_qreadwritelock_types
export
  gen_qdeadlinetimer_types,
  gen_qmutex_types,
  gen_qreadwritelock_types

type cQWaitCondition*{.exportc: "QWaitCondition", incompleteStruct.} = object

proc fcQWaitCondition_waitLockedMutex(self: pointer, lockedMutex: pointer): bool {.importc: "QWaitCondition_wait_lockedMutex".}
proc fcQWaitCondition_waitLockedMutexTime(self: pointer, lockedMutex: pointer, time: culong): bool {.importc: "QWaitCondition_wait_lockedMutex_time".}
proc fcQWaitCondition_waitLockedReadWriteLock(self: pointer, lockedReadWriteLock: pointer): bool {.importc: "QWaitCondition_wait_lockedReadWriteLock".}
proc fcQWaitCondition_waitLockedReadWriteLockTime(self: pointer, lockedReadWriteLock: pointer, time: culong): bool {.importc: "QWaitCondition_wait_lockedReadWriteLock_time".}
proc fcQWaitCondition_wakeOne(self: pointer): void {.importc: "QWaitCondition_wakeOne".}
proc fcQWaitCondition_wakeAll(self: pointer): void {.importc: "QWaitCondition_wakeAll".}
proc fcQWaitCondition_notifyOne(self: pointer): void {.importc: "QWaitCondition_notify_one".}
proc fcQWaitCondition_notifyAll(self: pointer): void {.importc: "QWaitCondition_notify_all".}
proc fcQWaitCondition_waitLockedMutexDeadline(self: pointer, lockedMutex: pointer, deadline: pointer): bool {.importc: "QWaitCondition_wait_lockedMutex_deadline".}
proc fcQWaitCondition_waitLockedReadWriteLockDeadline(self: pointer, lockedReadWriteLock: pointer, deadline: pointer): bool {.importc: "QWaitCondition_wait_lockedReadWriteLock_deadline".}
proc fcQWaitCondition_new(): ptr cQWaitCondition {.importc: "QWaitCondition_new".}

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedMutex: gen_qmutex_types.QMutex): bool =
  fcQWaitCondition_waitLockedMutex(self.h, lockedMutex.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedMutex: gen_qmutex_types.QMutex, time: culong): bool =
  fcQWaitCondition_waitLockedMutexTime(self.h, lockedMutex.h, time)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedReadWriteLock: gen_qreadwritelock_types.QReadWriteLock): bool =
  fcQWaitCondition_waitLockedReadWriteLock(self.h, lockedReadWriteLock.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedReadWriteLock: gen_qreadwritelock_types.QReadWriteLock, time: culong): bool =
  fcQWaitCondition_waitLockedReadWriteLockTime(self.h, lockedReadWriteLock.h, time)

proc wakeOne*(self: gen_qwaitcondition_types.QWaitCondition): void =
  fcQWaitCondition_wakeOne(self.h)

proc wakeAll*(self: gen_qwaitcondition_types.QWaitCondition): void =
  fcQWaitCondition_wakeAll(self.h)

proc notifyOne*(self: gen_qwaitcondition_types.QWaitCondition): void =
  fcQWaitCondition_notifyOne(self.h)

proc notifyAll*(self: gen_qwaitcondition_types.QWaitCondition): void =
  fcQWaitCondition_notifyAll(self.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedMutex: gen_qmutex_types.QMutex, deadline: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQWaitCondition_waitLockedMutexDeadline(self.h, lockedMutex.h, deadline.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedReadWriteLock: gen_qreadwritelock_types.QReadWriteLock, deadline: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQWaitCondition_waitLockedReadWriteLockDeadline(self.h, lockedReadWriteLock.h, deadline.h)

proc create*(T: type gen_qwaitcondition_types.QWaitCondition): gen_qwaitcondition_types.QWaitCondition =
  let tmp = gen_qwaitcondition_types.QWaitCondition(h: fcQWaitCondition_new(), owned: true)
  tmp
