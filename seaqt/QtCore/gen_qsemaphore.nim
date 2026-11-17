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


import ./gen_qsemaphore_types
export gen_qsemaphore_types

import
  ./gen_qdeadlinetimer_types
export
  gen_qdeadlinetimer_types

type cQSemaphore*{.exportc: "QSemaphore", incompleteStruct.} = object
type cQSemaphoreReleaser*{.exportc: "QSemaphoreReleaser", incompleteStruct.} = object

proc fcQSemaphore_acquire(self: pointer): void {.importc: "QSemaphore_acquire".}
proc fcQSemaphore_tryAcquire(self: pointer): bool {.importc: "QSemaphore_tryAcquire".}
proc fcQSemaphore_tryAcquireIntInt(self: pointer, n: cint, timeout: cint): bool {.importc: "QSemaphore_tryAcquire_int_int".}
proc fcQSemaphore_tryAcquireInt_QDeadlineTimer(self: pointer, n: cint, timeout: pointer): bool {.importc: "QSemaphore_tryAcquire_int_QDeadlineTimer".}
proc fcQSemaphore_release(self: pointer): void {.importc: "QSemaphore_release".}
proc fcQSemaphore_available(self: pointer): cint {.importc: "QSemaphore_available".}
proc fcQSemaphore_tryAcquire(self: pointer): bool {.importc: "QSemaphore_try_acquire".}
proc fcQSemaphore_acquireN(self: pointer, n: cint): void {.importc: "QSemaphore_acquire_n".}
proc fcQSemaphore_tryAcquireInt(self: pointer, n: cint): bool {.importc: "QSemaphore_tryAcquire_int".}
proc fcQSemaphore_releaseN(self: pointer, n: cint): void {.importc: "QSemaphore_release_n".}
proc fcQSemaphore_new(): ptr cQSemaphore {.importc: "QSemaphore_new".}
proc fcQSemaphore_new2(n: cint): ptr cQSemaphore {.importc: "QSemaphore_new_n".}
proc fcQSemaphoreReleaser_swap(self: pointer, other: pointer): void {.importc: "QSemaphoreReleaser_swap".}
proc fcQSemaphoreReleaser_semaphore(self: pointer): pointer {.importc: "QSemaphoreReleaser_semaphore".}
proc fcQSemaphoreReleaser_cancel(self: pointer): pointer {.importc: "QSemaphoreReleaser_cancel".}
proc fcQSemaphoreReleaser_new(): ptr cQSemaphoreReleaser {.importc: "QSemaphoreReleaser_new".}
proc fcQSemaphoreReleaser_new2(sem: pointer): ptr cQSemaphoreReleaser {.importc: "QSemaphoreReleaser_new_QSemaphore".}
proc fcQSemaphoreReleaser_new3(sem: pointer): ptr cQSemaphoreReleaser {.importc: "QSemaphoreReleaser_new_pQSemaphore".}
proc fcQSemaphoreReleaser_new4(sem: pointer, n: cint): ptr cQSemaphoreReleaser {.importc: "QSemaphoreReleaser_new_QSemaphore_int".}
proc fcQSemaphoreReleaser_new5(sem: pointer, n: cint): ptr cQSemaphoreReleaser {.importc: "QSemaphoreReleaser_new_pQSemaphore_int".}

proc acquire*(self: gen_qsemaphore_types.QSemaphore): void =
  fcQSemaphore_acquire(self.h)

proc tryAcquire*(self: gen_qsemaphore_types.QSemaphore): bool =
  fcQSemaphore_tryAcquire(self.h)

proc tryAcquire*(self: gen_qsemaphore_types.QSemaphore, n: cint, timeout: cint): bool =
  fcQSemaphore_tryAcquireIntInt(self.h, n, timeout)

proc tryAcquire*(self: gen_qsemaphore_types.QSemaphore, n: cint, timeout: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQSemaphore_tryAcquireInt_QDeadlineTimer(self.h, n, timeout.h)

proc release*(self: gen_qsemaphore_types.QSemaphore): void =
  fcQSemaphore_release(self.h)

proc available*(self: gen_qsemaphore_types.QSemaphore): cint =
  fcQSemaphore_available(self.h)

proc tryAcquire2*(self: gen_qsemaphore_types.QSemaphore): bool =
  fcQSemaphore_tryAcquire(self.h)

proc acquire*(self: gen_qsemaphore_types.QSemaphore, n: cint): void =
  fcQSemaphore_acquireN(self.h, n)

proc tryAcquire*(self: gen_qsemaphore_types.QSemaphore, n: cint): bool =
  fcQSemaphore_tryAcquireInt(self.h, n)

proc release*(self: gen_qsemaphore_types.QSemaphore, n: cint): void =
  fcQSemaphore_releaseN(self.h, n)

proc create*(T: type gen_qsemaphore_types.QSemaphore): gen_qsemaphore_types.QSemaphore =
  let tmp = gen_qsemaphore_types.QSemaphore(h: fcQSemaphore_new(), owned: true)
  tmp
proc create*(T: type gen_qsemaphore_types.QSemaphore,
    n: cint): gen_qsemaphore_types.QSemaphore =
  let tmp = gen_qsemaphore_types.QSemaphore(h: fcQSemaphore_new2(n), owned: true)
  tmp
proc swap*(self: gen_qsemaphore_types.QSemaphoreReleaser, other: gen_qsemaphore_types.QSemaphoreReleaser): void =
  fcQSemaphoreReleaser_swap(self.h, other.h)

proc semaphore*(self: gen_qsemaphore_types.QSemaphoreReleaser): gen_qsemaphore_types.QSemaphore =
  gen_qsemaphore_types.QSemaphore(h: fcQSemaphoreReleaser_semaphore(self.h), owned: false)

proc cancel*(self: gen_qsemaphore_types.QSemaphoreReleaser): gen_qsemaphore_types.QSemaphore =
  gen_qsemaphore_types.QSemaphore(h: fcQSemaphoreReleaser_cancel(self.h), owned: false)

proc create*(T: type gen_qsemaphore_types.QSemaphoreReleaser): gen_qsemaphore_types.QSemaphoreReleaser =
  let tmp = gen_qsemaphore_types.QSemaphoreReleaser(h: fcQSemaphoreReleaser_new(), owned: true)
  tmp
proc create*(T: type gen_qsemaphore_types.QSemaphoreReleaser,
    sem: gen_qsemaphore_types.QSemaphore): gen_qsemaphore_types.QSemaphoreReleaser =
  let tmp = gen_qsemaphore_types.QSemaphoreReleaser(h: fcQSemaphoreReleaser_new2(sem.h), owned: true)
  tmp
proc create2*(T: type gen_qsemaphore_types.QSemaphoreReleaser,
    sem: gen_qsemaphore_types.QSemaphore): gen_qsemaphore_types.QSemaphoreReleaser =
  let tmp = gen_qsemaphore_types.QSemaphoreReleaser(h: fcQSemaphoreReleaser_new3(sem.h), owned: true)
  tmp
proc create*(T: type gen_qsemaphore_types.QSemaphoreReleaser,
    sem: gen_qsemaphore_types.QSemaphore, n: cint): gen_qsemaphore_types.QSemaphoreReleaser =
  let tmp = gen_qsemaphore_types.QSemaphoreReleaser(h: fcQSemaphoreReleaser_new4(sem.h, n), owned: true)
  tmp
proc create2*(T: type gen_qsemaphore_types.QSemaphoreReleaser,
    sem: gen_qsemaphore_types.QSemaphore, n: cint): gen_qsemaphore_types.QSemaphoreReleaser =
  let tmp = gen_qsemaphore_types.QSemaphoreReleaser(h: fcQSemaphoreReleaser_new5(sem.h, n), owned: true)
  tmp
