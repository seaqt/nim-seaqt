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


import ./gen_qbasictimer_types
export gen_qbasictimer_types

import
  ./gen_qobject_types
export
  gen_qobject_types

type cQBasicTimer*{.exportc: "QBasicTimer", incompleteStruct.} = object

proc fcQBasicTimer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QBasicTimer_operatorAssign".}
proc fcQBasicTimer_swap(self: pointer, other: pointer): void {.importc: "QBasicTimer_swap".}
proc fcQBasicTimer_isActive(self: pointer): bool {.importc: "QBasicTimer_isActive".}
proc fcQBasicTimer_timerId(self: pointer): cint {.importc: "QBasicTimer_timerId".}
proc fcQBasicTimer_startMsecObj(self: pointer, msec: cint, obj: pointer): void {.importc: "QBasicTimer_start_msec_obj".}
proc fcQBasicTimer_startMsecTimerTypeObj(self: pointer, msec: cint, timerType: cint, obj: pointer): void {.importc: "QBasicTimer_start_msec_timerType_obj".}
proc fcQBasicTimer_stop(self: pointer): void {.importc: "QBasicTimer_stop".}
proc fcQBasicTimer_new(param1: pointer): ptr cQBasicTimer {.importc: "QBasicTimer_new_QBasicTimer".}
proc fcQBasicTimer_new2(): ptr cQBasicTimer {.importc: "QBasicTimer_new".}

proc operatorAssign*(self: gen_qbasictimer_types.QBasicTimer, param1: gen_qbasictimer_types.QBasicTimer): void =
  fcQBasicTimer_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qbasictimer_types.QBasicTimer, other: gen_qbasictimer_types.QBasicTimer): void =
  fcQBasicTimer_swap(self.h, other.h)

proc isActive*(self: gen_qbasictimer_types.QBasicTimer): bool =
  fcQBasicTimer_isActive(self.h)

proc timerId*(self: gen_qbasictimer_types.QBasicTimer): cint =
  fcQBasicTimer_timerId(self.h)

proc start*(self: gen_qbasictimer_types.QBasicTimer, msec: cint, obj: gen_qobject_types.QObject): void =
  fcQBasicTimer_startMsecObj(self.h, msec, obj.h)

proc start*(self: gen_qbasictimer_types.QBasicTimer, msec: cint, timerType: cint, obj: gen_qobject_types.QObject): void =
  fcQBasicTimer_startMsecTimerTypeObj(self.h, msec, cint(timerType), obj.h)

proc stop*(self: gen_qbasictimer_types.QBasicTimer): void =
  fcQBasicTimer_stop(self.h)

proc create*(T: type gen_qbasictimer_types.QBasicTimer,
    param1: gen_qbasictimer_types.QBasicTimer): gen_qbasictimer_types.QBasicTimer =
  let tmp = gen_qbasictimer_types.QBasicTimer(h: fcQBasicTimer_new(param1.h), owned: true)
  tmp
proc create*(T: type gen_qbasictimer_types.QBasicTimer): gen_qbasictimer_types.QBasicTimer =
  let tmp = gen_qbasictimer_types.QBasicTimer(h: fcQBasicTimer_new2(), owned: true)
  tmp
