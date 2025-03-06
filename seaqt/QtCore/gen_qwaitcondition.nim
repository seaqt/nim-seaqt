import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qwaitcondition.cpp", cflags).}


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

proc fcQWaitCondition_wait(self: pointer, lockedMutex: pointer): bool {.importc: "QWaitCondition_wait".}
proc fcQWaitCondition_wait2(self: pointer, lockedMutex: pointer, time: culong): bool {.importc: "QWaitCondition_wait2".}
proc fcQWaitCondition_waitWithLockedReadWriteLock(self: pointer, lockedReadWriteLock: pointer): bool {.importc: "QWaitCondition_waitWithLockedReadWriteLock".}
proc fcQWaitCondition_wait3(self: pointer, lockedReadWriteLock: pointer, time: culong): bool {.importc: "QWaitCondition_wait3".}
proc fcQWaitCondition_wakeOne(self: pointer, ): void {.importc: "QWaitCondition_wakeOne".}
proc fcQWaitCondition_wakeAll(self: pointer, ): void {.importc: "QWaitCondition_wakeAll".}
proc fcQWaitCondition_notifyOne(self: pointer, ): void {.importc: "QWaitCondition_notifyOne".}
proc fcQWaitCondition_notifyAll(self: pointer, ): void {.importc: "QWaitCondition_notifyAll".}
proc fcQWaitCondition_wait22(self: pointer, lockedMutex: pointer, deadline: pointer): bool {.importc: "QWaitCondition_wait22".}
proc fcQWaitCondition_wait23(self: pointer, lockedReadWriteLock: pointer, deadline: pointer): bool {.importc: "QWaitCondition_wait23".}
proc fcQWaitCondition_new(): ptr cQWaitCondition {.importc: "QWaitCondition_new".}
proc fcQWaitCondition_delete(self: pointer) {.importc: "QWaitCondition_delete".}

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedMutex: gen_qmutex_types.QMutex): bool =
  fcQWaitCondition_wait(self.h, lockedMutex.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedMutex: gen_qmutex_types.QMutex, time: culong): bool =
  fcQWaitCondition_wait2(self.h, lockedMutex.h, time)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedReadWriteLock: gen_qreadwritelock_types.QReadWriteLock): bool =
  fcQWaitCondition_waitWithLockedReadWriteLock(self.h, lockedReadWriteLock.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedReadWriteLock: gen_qreadwritelock_types.QReadWriteLock, time: culong): bool =
  fcQWaitCondition_wait3(self.h, lockedReadWriteLock.h, time)

proc wakeOne*(self: gen_qwaitcondition_types.QWaitCondition, ): void =
  fcQWaitCondition_wakeOne(self.h)

proc wakeAll*(self: gen_qwaitcondition_types.QWaitCondition, ): void =
  fcQWaitCondition_wakeAll(self.h)

proc notifyOne*(self: gen_qwaitcondition_types.QWaitCondition, ): void =
  fcQWaitCondition_notifyOne(self.h)

proc notifyAll*(self: gen_qwaitcondition_types.QWaitCondition, ): void =
  fcQWaitCondition_notifyAll(self.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedMutex: gen_qmutex_types.QMutex, deadline: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQWaitCondition_wait22(self.h, lockedMutex.h, deadline.h)

proc wait*(self: gen_qwaitcondition_types.QWaitCondition, lockedReadWriteLock: gen_qreadwritelock_types.QReadWriteLock, deadline: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQWaitCondition_wait23(self.h, lockedReadWriteLock.h, deadline.h)

proc create*(T: type gen_qwaitcondition_types.QWaitCondition): gen_qwaitcondition_types.QWaitCondition =
  gen_qwaitcondition_types.QWaitCondition(h: fcQWaitCondition_new())

proc delete*(self: gen_qwaitcondition_types.QWaitCondition) =
  fcQWaitCondition_delete(self.h)
