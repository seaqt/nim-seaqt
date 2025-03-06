import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free

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
{.compile("gen_qmutex.cpp", cflags).}


import ./gen_qmutex_types
export gen_qmutex_types


type cQBasicMutex*{.exportc: "QBasicMutex", incompleteStruct.} = object
type cQMutex*{.exportc: "QMutex", incompleteStruct.} = object
type cQRecursiveMutex*{.exportc: "QRecursiveMutex", incompleteStruct.} = object

proc fcQBasicMutex_new(): ptr cQBasicMutex {.importc: "QBasicMutex_new".}
proc fcQBasicMutex_lock(self: pointer, ): void {.importc: "QBasicMutex_lock".}
proc fcQBasicMutex_unlock(self: pointer, ): void {.importc: "QBasicMutex_unlock".}
proc fcQBasicMutex_tryLock(self: pointer, ): bool {.importc: "QBasicMutex_tryLock".}
proc fcQBasicMutex_tryLock2(self: pointer, ): bool {.importc: "QBasicMutex_tryLock2".}
proc fcQBasicMutex_delete(self: pointer) {.importc: "QBasicMutex_delete".}
proc fcQMutex_new(): ptr cQMutex {.importc: "QMutex_new".}
proc fcQMutex_tryLock(self: pointer, ): bool {.importc: "QMutex_tryLock".}
proc fcQMutex_tryLockWithTimeout(self: pointer, timeout: cint): bool {.importc: "QMutex_tryLockWithTimeout".}
proc fcQMutex_delete(self: pointer) {.importc: "QMutex_delete".}
proc fcQRecursiveMutex_new(): ptr cQRecursiveMutex {.importc: "QRecursiveMutex_new".}
proc fcQRecursiveMutex_lock(self: pointer, ): void {.importc: "QRecursiveMutex_lock".}
proc fcQRecursiveMutex_tryLock(self: pointer, ): bool {.importc: "QRecursiveMutex_tryLock".}
proc fcQRecursiveMutex_unlock(self: pointer, ): void {.importc: "QRecursiveMutex_unlock".}
proc fcQRecursiveMutex_tryLock2(self: pointer, ): bool {.importc: "QRecursiveMutex_tryLock2".}
proc fcQRecursiveMutex_tryLock1(self: pointer, timeout: cint): bool {.importc: "QRecursiveMutex_tryLock1".}
proc fcQRecursiveMutex_delete(self: pointer) {.importc: "QRecursiveMutex_delete".}


func init*(T: type gen_qmutex_types.QBasicMutex, h: ptr cQBasicMutex): gen_qmutex_types.QBasicMutex =
  T(h: h)
proc create*(T: type gen_qmutex_types.QBasicMutex, ): gen_qmutex_types.QBasicMutex =
  gen_qmutex_types.QBasicMutex.init(fcQBasicMutex_new())

proc lock*(self: gen_qmutex_types.QBasicMutex, ): void =
  fcQBasicMutex_lock(self.h)

proc unlock*(self: gen_qmutex_types.QBasicMutex, ): void =
  fcQBasicMutex_unlock(self.h)

proc tryLock*(self: gen_qmutex_types.QBasicMutex, ): bool =
  fcQBasicMutex_tryLock(self.h)

proc tryLock2*(self: gen_qmutex_types.QBasicMutex, ): bool =
  fcQBasicMutex_tryLock2(self.h)

proc delete*(self: gen_qmutex_types.QBasicMutex) =
  fcQBasicMutex_delete(self.h)

func init*(T: type gen_qmutex_types.QMutex, h: ptr cQMutex): gen_qmutex_types.QMutex =
  T(h: h)
proc create*(T: type gen_qmutex_types.QMutex, ): gen_qmutex_types.QMutex =
  gen_qmutex_types.QMutex.init(fcQMutex_new())

proc tryLock*(self: gen_qmutex_types.QMutex, ): bool =
  fcQMutex_tryLock(self.h)

proc tryLock*(self: gen_qmutex_types.QMutex, timeout: cint): bool =
  fcQMutex_tryLockWithTimeout(self.h, timeout)

proc delete*(self: gen_qmutex_types.QMutex) =
  fcQMutex_delete(self.h)

func init*(T: type gen_qmutex_types.QRecursiveMutex, h: ptr cQRecursiveMutex): gen_qmutex_types.QRecursiveMutex =
  T(h: h)
proc create*(T: type gen_qmutex_types.QRecursiveMutex, ): gen_qmutex_types.QRecursiveMutex =
  gen_qmutex_types.QRecursiveMutex.init(fcQRecursiveMutex_new())

proc lock*(self: gen_qmutex_types.QRecursiveMutex, ): void =
  fcQRecursiveMutex_lock(self.h)

proc tryLock*(self: gen_qmutex_types.QRecursiveMutex, ): bool =
  fcQRecursiveMutex_tryLock(self.h)

proc unlock*(self: gen_qmutex_types.QRecursiveMutex, ): void =
  fcQRecursiveMutex_unlock(self.h)

proc tryLock2*(self: gen_qmutex_types.QRecursiveMutex, ): bool =
  fcQRecursiveMutex_tryLock2(self.h)

proc tryLock*(self: gen_qmutex_types.QRecursiveMutex, timeout: cint): bool =
  fcQRecursiveMutex_tryLock1(self.h, timeout)

proc delete*(self: gen_qmutex_types.QRecursiveMutex) =
  fcQRecursiveMutex_delete(self.h)
