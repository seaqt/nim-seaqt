import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QMutexRecursionModeEnum* = distinct cint
template NonRecursive*(_: type QMutexRecursionModeEnum): untyped = 0
template Recursive*(_: type QMutexRecursionModeEnum): untyped = 1


import ./gen_qmutex_types
export gen_qmutex_types


type cQBasicMutex*{.exportc: "QBasicMutex", incompleteStruct.} = object
type cQMutex*{.exportc: "QMutex", incompleteStruct.} = object
type cQRecursiveMutex*{.exportc: "QRecursiveMutex", incompleteStruct.} = object
type cQMutexLocker*{.exportc: "QMutexLocker", incompleteStruct.} = object

proc fcQBasicMutex_lock(self: pointer): void {.importc: "QBasicMutex_lock".}
proc fcQBasicMutex_unlock(self: pointer): void {.importc: "QBasicMutex_unlock".}
proc fcQBasicMutex_tryLock(self: pointer): bool {.importc: "QBasicMutex_tryLock".}
proc fcQBasicMutex_tryLock2(self: pointer): bool {.importc: "QBasicMutex_tryLock2".}
proc fcQBasicMutex_isRecursive(self: pointer): bool {.importc: "QBasicMutex_isRecursive".}
proc fcQBasicMutex_isRecursive2(self: pointer): bool {.importc: "QBasicMutex_isRecursive2".}
proc fcQBasicMutex_new(): ptr cQBasicMutex {.importc: "QBasicMutex_new".}
proc fcQMutex_lock(self: pointer): void {.importc: "QMutex_lock".}
proc fcQMutex_tryLock(self: pointer): bool {.importc: "QMutex_tryLock".}
proc fcQMutex_unlock(self: pointer): void {.importc: "QMutex_unlock".}
proc fcQMutex_tryLock2(self: pointer): bool {.importc: "QMutex_tryLock2".}
proc fcQMutex_isRecursive(self: pointer): bool {.importc: "QMutex_isRecursive".}
proc fcQMutex_tryLock1(self: pointer, timeout: cint): bool {.importc: "QMutex_tryLock1".}
proc fcQMutex_new(): ptr cQMutex {.importc: "QMutex_new".}
proc fcQMutex_new2(mode: cint): ptr cQMutex {.importc: "QMutex_new2".}
proc fcQRecursiveMutex_new(): ptr cQRecursiveMutex {.importc: "QRecursiveMutex_new".}
proc fcQMutexLocker_unlock(self: pointer): void {.importc: "QMutexLocker_unlock".}
proc fcQMutexLocker_relock(self: pointer): void {.importc: "QMutexLocker_relock".}
proc fcQMutexLocker_mutex(self: pointer): pointer {.importc: "QMutexLocker_mutex".}
proc fcQMutexLocker_new(m: pointer): ptr cQMutexLocker {.importc: "QMutexLocker_new".}
proc fcQMutexLocker_new2(m: pointer): ptr cQMutexLocker {.importc: "QMutexLocker_new2".}

proc lock*(self: gen_qmutex_types.QBasicMutex): void =
  fcQBasicMutex_lock(self.h)

proc unlock*(self: gen_qmutex_types.QBasicMutex): void =
  fcQBasicMutex_unlock(self.h)

proc tryLock*(self: gen_qmutex_types.QBasicMutex): bool =
  fcQBasicMutex_tryLock(self.h)

proc tryLock2*(self: gen_qmutex_types.QBasicMutex): bool =
  fcQBasicMutex_tryLock2(self.h)

proc isRecursive*(self: gen_qmutex_types.QBasicMutex): bool =
  fcQBasicMutex_isRecursive(self.h)

proc isRecursive2*(self: gen_qmutex_types.QBasicMutex): bool =
  fcQBasicMutex_isRecursive2(self.h)

proc create*(T: type gen_qmutex_types.QBasicMutex): gen_qmutex_types.QBasicMutex =
  gen_qmutex_types.QBasicMutex(h: fcQBasicMutex_new(), owned: true)

proc lock*(self: gen_qmutex_types.QMutex): void =
  fcQMutex_lock(self.h)

proc tryLock*(self: gen_qmutex_types.QMutex): bool =
  fcQMutex_tryLock(self.h)

proc unlock*(self: gen_qmutex_types.QMutex): void =
  fcQMutex_unlock(self.h)

proc tryLock2*(self: gen_qmutex_types.QMutex): bool =
  fcQMutex_tryLock2(self.h)

proc isRecursive*(self: gen_qmutex_types.QMutex): bool =
  fcQMutex_isRecursive(self.h)

proc tryLock*(self: gen_qmutex_types.QMutex, timeout: cint): bool =
  fcQMutex_tryLock1(self.h, timeout)

proc create*(T: type gen_qmutex_types.QMutex): gen_qmutex_types.QMutex =
  gen_qmutex_types.QMutex(h: fcQMutex_new(), owned: true)

proc create*(T: type gen_qmutex_types.QMutex,
    mode: cint): gen_qmutex_types.QMutex =
  gen_qmutex_types.QMutex(h: fcQMutex_new2(cint(mode)), owned: true)

proc create*(T: type gen_qmutex_types.QRecursiveMutex): gen_qmutex_types.QRecursiveMutex =
  gen_qmutex_types.QRecursiveMutex(h: fcQRecursiveMutex_new(), owned: true)

proc unlock*(self: gen_qmutex_types.QMutexLocker): void =
  fcQMutexLocker_unlock(self.h)

proc relock*(self: gen_qmutex_types.QMutexLocker): void =
  fcQMutexLocker_relock(self.h)

proc mutex*(self: gen_qmutex_types.QMutexLocker): gen_qmutex_types.QMutex =
  gen_qmutex_types.QMutex(h: fcQMutexLocker_mutex(self.h), owned: false)

proc create*(T: type gen_qmutex_types.QMutexLocker,
    m: gen_qmutex_types.QBasicMutex): gen_qmutex_types.QMutexLocker =
  gen_qmutex_types.QMutexLocker(h: fcQMutexLocker_new(m.h), owned: true)

proc create*(T: type gen_qmutex_types.QMutexLocker,
    m: gen_qmutex_types.QRecursiveMutex): gen_qmutex_types.QMutexLocker =
  gen_qmutex_types.QMutexLocker(h: fcQMutexLocker_new2(m.h), owned: true)

