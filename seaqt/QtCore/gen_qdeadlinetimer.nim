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


type QDeadlineTimerForeverConstantEnum* = distinct cint
template Forever*(_: type QDeadlineTimerForeverConstantEnum): untyped = 0


import ./gen_qdeadlinetimer_types
export gen_qdeadlinetimer_types


type cQDeadlineTimer*{.exportc: "QDeadlineTimer", incompleteStruct.} = object

proc fcQDeadlineTimer_swap(self: pointer, other: pointer): void {.importc: "QDeadlineTimer_swap".}
proc fcQDeadlineTimer_isForever(self: pointer): bool {.importc: "QDeadlineTimer_isForever".}
proc fcQDeadlineTimer_hasExpired(self: pointer): bool {.importc: "QDeadlineTimer_hasExpired".}
proc fcQDeadlineTimer_timerType(self: pointer): cint {.importc: "QDeadlineTimer_timerType".}
proc fcQDeadlineTimer_setTimerType(self: pointer, typeVal: cint): void {.importc: "QDeadlineTimer_setTimerType".}
proc fcQDeadlineTimer_remainingTime(self: pointer): clonglong {.importc: "QDeadlineTimer_remainingTime".}
proc fcQDeadlineTimer_remainingTimeNSecs(self: pointer): clonglong {.importc: "QDeadlineTimer_remainingTimeNSecs".}
proc fcQDeadlineTimer_setRemainingTimeMsecs(self: pointer, msecs: clonglong): void {.importc: "QDeadlineTimer_setRemainingTime_msecs".}
proc fcQDeadlineTimer_setPreciseRemainingTimeSecs(self: pointer, secs: clonglong): void {.importc: "QDeadlineTimer_setPreciseRemainingTime_secs".}
proc fcQDeadlineTimer_deadline(self: pointer): clonglong {.importc: "QDeadlineTimer_deadline".}
proc fcQDeadlineTimer_deadlineNSecs(self: pointer): clonglong {.importc: "QDeadlineTimer_deadlineNSecs".}
proc fcQDeadlineTimer_setDeadlineMsecs(self: pointer, msecs: clonglong): void {.importc: "QDeadlineTimer_setDeadline_msecs".}
proc fcQDeadlineTimer_setPreciseDeadlineSecs(self: pointer, secs: clonglong): void {.importc: "QDeadlineTimer_setPreciseDeadline_secs".}
proc fcQDeadlineTimer_addNSecs(dt: pointer, nsecs: clonglong): pointer {.importc: "QDeadlineTimer_addNSecs".}
proc fcQDeadlineTimer_current(): pointer {.importc: "QDeadlineTimer_current".}
proc fcQDeadlineTimer_operatorPlusAssign(self: pointer, msecs: clonglong): pointer {.importc: "QDeadlineTimer_operatorPlusAssign".}
proc fcQDeadlineTimer_operatorMinusAssign(self: pointer, msecs: clonglong): pointer {.importc: "QDeadlineTimer_operatorMinusAssign".}
proc fcQDeadlineTimer_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QDeadlineTimer_operatorAssign".}
proc fcQDeadlineTimer_setRemainingTimeMsecsType(self: pointer, msecs: clonglong, typeVal: cint): void {.importc: "QDeadlineTimer_setRemainingTime_msecs_type".}
proc fcQDeadlineTimer_setPreciseRemainingTimeSecsNsecs(self: pointer, secs: clonglong, nsecs: clonglong): void {.importc: "QDeadlineTimer_setPreciseRemainingTime_secs_nsecs".}
proc fcQDeadlineTimer_setPreciseRemainingTimeSecsNsecsType(self: pointer, secs: clonglong, nsecs: clonglong, typeVal: cint): void {.importc: "QDeadlineTimer_setPreciseRemainingTime_secs_nsecs_type".}
proc fcQDeadlineTimer_setDeadlineMsecsTimerType(self: pointer, msecs: clonglong, timerType: cint): void {.importc: "QDeadlineTimer_setDeadline_msecs_timerType".}
proc fcQDeadlineTimer_setPreciseDeadlineSecsNsecs(self: pointer, secs: clonglong, nsecs: clonglong): void {.importc: "QDeadlineTimer_setPreciseDeadline_secs_nsecs".}
proc fcQDeadlineTimer_setPreciseDeadlineSecsNsecsType(self: pointer, secs: clonglong, nsecs: clonglong, typeVal: cint): void {.importc: "QDeadlineTimer_setPreciseDeadline_secs_nsecs_type".}
proc fcQDeadlineTimer_currentTimerType(timerType: cint): pointer {.importc: "QDeadlineTimer_current_timerType".}
proc fcQDeadlineTimer_new(): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new".}
proc fcQDeadlineTimer_new2(type_x: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new_Qt_TimerType".}
proc fcQDeadlineTimer_new3(param1: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new_QDeadlineTimer_ForeverConstant".}
proc fcQDeadlineTimer_new4(msecs: clonglong): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new_qint64".}
proc fcQDeadlineTimer_new5(fromVal: pointer): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new_QDeadlineTimer".}
proc fcQDeadlineTimer_new6(param1: cint, type_x: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new_QDeadlineTimer_ForeverConstant_Qt_TimerType".}
proc fcQDeadlineTimer_new7(msecs: clonglong, typeVal: cint): ptr cQDeadlineTimer {.importc: "QDeadlineTimer_new_qint64_Qt_TimerType".}

proc swap*(self: gen_qdeadlinetimer_types.QDeadlineTimer, other: gen_qdeadlinetimer_types.QDeadlineTimer): void =
  fcQDeadlineTimer_swap(self.h, other.h)

proc isForever*(self: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQDeadlineTimer_isForever(self.h)

proc hasExpired*(self: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQDeadlineTimer_hasExpired(self.h)

proc timerType*(self: gen_qdeadlinetimer_types.QDeadlineTimer): cint =
  cint(fcQDeadlineTimer_timerType(self.h))

proc setTimerType*(self: gen_qdeadlinetimer_types.QDeadlineTimer, typeVal: cint): void =
  fcQDeadlineTimer_setTimerType(self.h, cint(typeVal))

proc remainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer): clonglong =
  fcQDeadlineTimer_remainingTime(self.h)

proc remainingTimeNSecs*(self: gen_qdeadlinetimer_types.QDeadlineTimer): clonglong =
  fcQDeadlineTimer_remainingTimeNSecs(self.h)

proc setRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): void =
  fcQDeadlineTimer_setRemainingTimeMsecs(self.h, msecs)

proc setPreciseRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong): void =
  fcQDeadlineTimer_setPreciseRemainingTimeSecs(self.h, secs)

proc deadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer): clonglong =
  fcQDeadlineTimer_deadline(self.h)

proc deadlineNSecs*(self: gen_qdeadlinetimer_types.QDeadlineTimer): clonglong =
  fcQDeadlineTimer_deadlineNSecs(self.h)

proc setDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): void =
  fcQDeadlineTimer_setDeadlineMsecs(self.h, msecs)

proc setPreciseDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong): void =
  fcQDeadlineTimer_setPreciseDeadlineSecs(self.h, secs)

proc addNSecs*(_: type gen_qdeadlinetimer_types.QDeadlineTimer, dt: gen_qdeadlinetimer_types.QDeadlineTimer, nsecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_addNSecs(dt.h, nsecs), owned: true)

proc current*(_: type gen_qdeadlinetimer_types.QDeadlineTimer): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_current(), owned: true)

proc operatorPlusAssign*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_operatorPlusAssign(self.h, msecs), owned: false)

proc operatorMinusAssign*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_operatorMinusAssign(self.h, msecs), owned: false)

proc operatorAssign*(self: gen_qdeadlinetimer_types.QDeadlineTimer, fromVal: gen_qdeadlinetimer_types.QDeadlineTimer): void =
  fcQDeadlineTimer_operatorAssign(self.h, fromVal.h)

proc setRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong, typeVal: cint): void =
  fcQDeadlineTimer_setRemainingTimeMsecsType(self.h, msecs, cint(typeVal))

proc setPreciseRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong): void =
  fcQDeadlineTimer_setPreciseRemainingTimeSecsNsecs(self.h, secs, nsecs)

proc setPreciseRemainingTime*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong, typeVal: cint): void =
  fcQDeadlineTimer_setPreciseRemainingTimeSecsNsecsType(self.h, secs, nsecs, cint(typeVal))

proc setDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, msecs: clonglong, timerType: cint): void =
  fcQDeadlineTimer_setDeadlineMsecsTimerType(self.h, msecs, cint(timerType))

proc setPreciseDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong): void =
  fcQDeadlineTimer_setPreciseDeadlineSecsNsecs(self.h, secs, nsecs)

proc setPreciseDeadline*(self: gen_qdeadlinetimer_types.QDeadlineTimer, secs: clonglong, nsecs: clonglong, typeVal: cint): void =
  fcQDeadlineTimer_setPreciseDeadlineSecsNsecsType(self.h, secs, nsecs, cint(typeVal))

proc current*(_: type gen_qdeadlinetimer_types.QDeadlineTimer, timerType: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_currentTimerType(cint(timerType)), owned: true)

proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new(), owned: true)
  tmp
proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    type_x: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new2(cint(type_x)), owned: true)
  tmp
proc create2*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    param1: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new3(cint(param1)), owned: true)
  tmp
proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    msecs: clonglong): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new4(msecs), owned: true)
  tmp
proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    fromVal: gen_qdeadlinetimer_types.QDeadlineTimer): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new5(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    param1: cint, type_x: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new6(cint(param1), cint(type_x)), owned: true)
  tmp
proc create*(T: type gen_qdeadlinetimer_types.QDeadlineTimer,
    msecs: clonglong, typeVal: cint): gen_qdeadlinetimer_types.QDeadlineTimer =
  let tmp = gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQDeadlineTimer_new7(msecs, cint(typeVal)), owned: true)
  tmp
