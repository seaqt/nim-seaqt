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
{.compile("gen_qdeadlinetimer.cpp", cflags).}


type QDeadlineTimerForeverConstantEnum* = distinct cint
template Forever*(_: type QDeadlineTimerForeverConstantEnum): untyped = 0


import ./gen_qdeadlinetimer_types
export gen_qdeadlinetimer_types


type cQDeadlineTimer*{.exportc: "QDeadlineTimer", incompleteStruct.} = object

proc fcQDeadlineTimer_swap(self: pointer, other: pointer): void {.importc: "QDeadlineTimer_swap".}
proc fcQDeadlineTimer_isForever(self: pointer, ): bool {.importc: "QDeadlineTimer_isForever".}
proc fcQDeadlineTimer_hasExpired(self: pointer, ): bool {.importc: "QDeadlineTimer_hasExpired".}
proc fcQDeadlineTimer_timerType(self: pointer, ): cint {.importc: "QDeadlineTimer_timerType".}
proc fcQDeadlineTimer_setTimerType(self: pointer, typeVal: cint): void {.importc: "QDeadlineTimer_setTimerType".}
proc fcQDeadlineTimer_remainingTime(self: pointer, ): clonglong {.importc: "QDeadlineTimer_remainingTime".}
proc fcQDeadlineTimer_remainingTimeNSecs(self: pointer, ): clonglong {.importc: "QDeadlineTimer_remainingTimeNSecs".}
proc fcQDeadlineTimer_setRemainingTime(self: pointer, msecs: clonglong): void {.importc: "QDeadlineTimer_setRemainingTime".}
proc fcQDeadlineTimer_setPreciseRemainingTime(self: pointer, secs: clonglong): void {.importc: "QDeadlineTimer_setPreciseRemainingTime".}
proc fcQDeadlineTimer_deadline(self: pointer, ): clonglong {.importc: "QDeadlineTimer_deadline".}
proc fcQDeadlineTimer_deadlineNSecs(self: pointer, ): clonglong {.importc: "QDeadlineTimer_deadlineNSecs".}
proc fcQDeadlineTimer_setDeadline(self: pointer, msecs: clonglong): void {.importc: "QDeadlineTimer_setDeadline".}
proc fcQDeadlineTimer_setPreciseDeadline(self: pointer, secs: clonglong): void {.importc: "QDeadlineTimer_setPreciseDeadline".}
proc fcQDeadlineTimer_addNSecs(dt: pointer, nsecs: clonglong): pointer {.importc: "QDeadlineTimer_addNSecs".}
proc fcQDeadlineTimer_current(): pointer {.importc: "QDeadlineTimer_current".}
proc fcQDeadlineTimer_operatorPlusAssign(self: pointer, msecs: clonglong): pointer {.importc: "QDeadlineTimer_operatorPlusAssign".}
proc fcQDeadlineTimer_operatorMinusAssign(self: pointer, msecs: clonglong): pointer {.importc: "QDeadlineTimer_operatorMinusAssign".}
proc fcQDeadlineTimer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDeadlineTimer_operatorAssign".}
proc fcQDeadlineTimer_setRemainingTime2(self: pointer, msecs: clonglong, typeVal: cint): void {.importc: "QDeadlineTimer_setRemainingTime2".}
proc fcQDeadlineTimer_setPreciseRemainingTime2(self: pointer, secs: clonglong, nsecs: clonglong): void {.importc: "QDeadlineTimer_setPreciseRemainingTime2".}
proc fcQDeadlineTimer_setPreciseRemainingTime3(self: pointer, secs: clonglong, nsecs: clonglong, typeVal: cint): void {.importc: "QDeadlineTimer_setPreciseRemainingTime3".}
proc fcQDeadlineTimer_setDeadline2(self: pointer, msecs: clonglong, timerType: cint): void {.importc: "QDeadlineTimer_setDeadline2".}
proc fcQDeadlineTimer_setPreciseDeadline2(self: pointer, secs: clonglong, nsecs: clonglong): void {.importc: "QDeadlineTimer_setPreciseDeadline2".}
proc fcQDeadlineTimer_setPreciseDeadline3(self: pointer, secs: clonglong, nsecs: clonglong, typeVal: cint): void {.importc: "QDeadlineTimer_setPreciseDeadline3".}
proc fcQDeadlineTimer_current1(timerType: cint): pointer {.importc: "QDeadlineTimer_current1".}
proc fcQDeadlineTimer_new(): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new".}
proc fcQDeadlineTimer_new2(param1: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new2".}
proc fcQDeadlineTimer_new3(msecs: clonglong): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new3".}
proc fcQDeadlineTimer_new4(param1: pointer): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new4".}
proc fcQDeadlineTimer_new5(type_x: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new5".}
proc fcQDeadlineTimer_new6(param1: cint, type_x: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new6".}
proc fcQDeadlineTimer_new7(msecs: clonglong, typeVal: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new7".}
proc fcQDeadlineTimer_delete(self: pointer) {.importc: "QDeadlineTimer_delete".}

proc swap*(self: gen_qdeadlinetimer_types.QDeadlineTimer, other: gen_qdeadlinetimer_types.QDeadlineTimer): void =
  fcQDeadlineTimer_swap(self.h, other.h)

proc isForever*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): bool =
  fcQDeadlineTimer_isForever(self.h)

proc hasExpired*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): bool =
  fcQDeadlineTimer_hasExpired(self.h)

proc timerType*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): cint =
  cint(fcQDeadlineTimer_timerType(self.h))

proc setTimerType*(self: gen_qdeadlinetimer_types.QDeadlineTimer, typeVal: cint): void =
  fcQDeadlineTimer_setTimerType(self.h, cint(typeVal))

proc remainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): clonglong =
  fcQDeadlineTimer_remainingTime(self.h)

proc remainingTimeNSecs*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): clonglong =
  fcQDeadlineTimer_remainingTimeNSecs(self.h)

proc setRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): void =
  fcQDeadlineTimer_setRemainingTime(self.h, msecs)

proc setPreciseRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong): void =
  fcQDeadlineTimer_setPreciseRemainingTime(self.h, secs)

proc deadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): clonglong =
  fcQDeadlineTimer_deadline(self.h)

proc deadlineNSecs*(self: gen_qdeadlinetimer_types.QDeadlineTimer, ): clonglong =
  fcQDeadlineTimer_deadlineNSecs(self.h)

proc setDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): void =
  fcQDeadlineTimer_setDeadline(self.h, msecs)

proc setPreciseDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong): void =
  fcQDeadlineTimer_setPreciseDeadline(self.h, secs)

proc addNSecs*(_: type gen_qdeadlinetimer_types.QDeadlineTimer, dt: gen_qdeadlinetimer_types.QDeadlineTimer, nsecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_addNSecs(dt.h, nsecs))

proc current*(_: type gen_qdeadlinetimer_types.QDeadlineTimer, ): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_current())

proc operatorPlusAssign*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_operatorPlusAssign(self.h, msecs))

proc operatorMinusAssign*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_operatorMinusAssign(self.h, msecs))

proc operatorAssign*(self: gen_qdeadlinetimer_types.QDeadlineTimer, param1: gen_qdeadlinetimer_types.QDeadlineTimer): void =
  fcQDeadlineTimer_operatorAssign(self.h, param1.h)

proc setRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong, typeVal: cint): void =
  fcQDeadlineTimer_setRemainingTime2(self.h, msecs, cint(typeVal))

proc setPreciseRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong): void =
  fcQDeadlineTimer_setPreciseRemainingTime2(self.h, secs, nsecs)

proc setPreciseRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong, typeVal: cint): void =
  fcQDeadlineTimer_setPreciseRemainingTime3(self.h, secs, nsecs, cint(typeVal))

proc setDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong, timerType: cint): void =
  fcQDeadlineTimer_setDeadline2(self.h, msecs, cint(timerType))

proc setPreciseDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong): void =
  fcQDeadlineTimer_setPreciseDeadline2(self.h, secs, nsecs)

proc setPreciseDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong, typeVal: cint): void =
  fcQDeadlineTimer_setPreciseDeadline3(self.h, secs, nsecs, cint(typeVal))

proc current*(_: type gen_qdeadlinetimer_types.QDeadlineTimer, timerType: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_current1(cint(timerType)))

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new())

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    param1: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new2(cint(param1)))

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    msecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new3(msecs))

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    param1: gen_qdeadlinetimer_types.QDeadlineTimer): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new4(param1.h))

proc create2*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    type_x: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new5(cint(type_x)))

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    param1: cint, type_x: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new6(cint(param1), cint(type_x)))

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    msecs: clonglong, typeVal: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new7(msecs, cint(typeVal)))

proc delete*(self: gen_qdeadlinetimer_types.QDeadlineTimer) =
  fcQDeadlineTimer_delete(self.h)
