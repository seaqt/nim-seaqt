import ./qtmultimedia_pkg

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


import ./gen_qmediatimerange_types
export gen_qmediatimerange_types


type cQMediaTimeRange*{.exportc: "QMediaTimeRange", incompleteStruct.} = object
type cQMediaTimeRangeInterval*{.exportc: "QMediaTimeRange__Interval", incompleteStruct.} = object

proc fcQMediaTimeRange_operatorAssign_QMediaTimeRange(self: pointer, fromVal: pointer): void {.importc: "QMediaTimeRange_operatorAssign_QMediaTimeRange".}
proc fcQMediaTimeRange_swap(self: pointer, other: pointer): void {.importc: "QMediaTimeRange_swap".}
proc fcQMediaTimeRange_detach(self: pointer): void {.importc: "QMediaTimeRange_detach".}
proc fcQMediaTimeRange_operatorAssign_QMediaTimeRange_Interval(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_operatorAssign_QMediaTimeRange_Interval".}
proc fcQMediaTimeRange_earliestTime(self: pointer): clonglong {.importc: "QMediaTimeRange_earliestTime".}
proc fcQMediaTimeRange_latestTime(self: pointer): clonglong {.importc: "QMediaTimeRange_latestTime".}
proc fcQMediaTimeRange_intervals(self: pointer): struct_seaqt_array {.importc: "QMediaTimeRange_intervals".}
proc fcQMediaTimeRange_isEmpty(self: pointer): bool {.importc: "QMediaTimeRange_isEmpty".}
proc fcQMediaTimeRange_isContinuous(self: pointer): bool {.importc: "QMediaTimeRange_isContinuous".}
proc fcQMediaTimeRange_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeRange_contains".}
proc fcQMediaTimeRange_addIntervalStartEnd(self: pointer, start: clonglong, endVal: clonglong): void {.importc: "QMediaTimeRange_addInterval_start_end".}
proc fcQMediaTimeRange_addIntervalInterval(self: pointer, interval: pointer): void {.importc: "QMediaTimeRange_addInterval_interval".}
proc fcQMediaTimeRange_addTimeRange(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_addTimeRange".}
proc fcQMediaTimeRange_removeIntervalStartEnd(self: pointer, start: clonglong, endVal: clonglong): void {.importc: "QMediaTimeRange_removeInterval_start_end".}
proc fcQMediaTimeRange_removeIntervalInterval(self: pointer, interval: pointer): void {.importc: "QMediaTimeRange_removeInterval_interval".}
proc fcQMediaTimeRange_removeTimeRange(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_removeTimeRange".}
proc fcQMediaTimeRange_operatorPlusAssign_QMediaTimeRange(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssign_QMediaTimeRange".}
proc fcQMediaTimeRange_operatorPlusAssign_QMediaTimeRange_Interval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssign_QMediaTimeRange_Interval".}
proc fcQMediaTimeRange_operatorMinusAssign_QMediaTimeRange(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssign_QMediaTimeRange".}
proc fcQMediaTimeRange_operatorMinusAssign_QMediaTimeRange_Interval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssign_QMediaTimeRange_Interval".}
proc fcQMediaTimeRange_clear(self: pointer): void {.importc: "QMediaTimeRange_clear".}
proc fcQMediaTimeRange_new(): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new".}
proc fcQMediaTimeRange_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new_qint64_qint64".}
proc fcQMediaTimeRange_new3(param1: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new_QMediaTimeRange_Interval".}
proc fcQMediaTimeRange_new4(fromVal: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new_QMediaTimeRange".}
proc fcQMediaTimeRangeInterval_start(self: pointer): clonglong {.importc: "QMediaTimeRange__Interval_start".}
proc fcQMediaTimeRangeInterval_endX(self: pointer): clonglong {.importc: "QMediaTimeRange__Interval_end".}
proc fcQMediaTimeRangeInterval_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeRange__Interval_contains".}
proc fcQMediaTimeRangeInterval_isNormal(self: pointer): bool {.importc: "QMediaTimeRange__Interval_isNormal".}
proc fcQMediaTimeRangeInterval_normalized(self: pointer): pointer {.importc: "QMediaTimeRange__Interval_normalized".}
proc fcQMediaTimeRangeInterval_translated(self: pointer, offset: clonglong): pointer {.importc: "QMediaTimeRange__Interval_translated".}
proc fcQMediaTimeRangeInterval_new(): ptr cQMediaTimeRangeInterval {.importc: "QMediaTimeRange__Interval_new".}
proc fcQMediaTimeRangeInterval_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeRangeInterval {.importc: "QMediaTimeRange__Interval_new_start_end".}
proc fcQMediaTimeRangeInterval_new3(fromVal: pointer): ptr cQMediaTimeRangeInterval {.importc: "QMediaTimeRange__Interval_new_from".}

proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, fromVal: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_operatorAssign_QMediaTimeRange(self.h, fromVal.h)

proc swap*(self: gen_qmediatimerange_types.QMediaTimeRange, other: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_swap(self.h, other.h)

proc detach*(self: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_detach(self.h)

proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): void =
  fcQMediaTimeRange_operatorAssign_QMediaTimeRange_Interval(self.h, param1.h)

proc earliestTime*(self: gen_qmediatimerange_types.QMediaTimeRange): clonglong =
  fcQMediaTimeRange_earliestTime(self.h)

proc latestTime*(self: gen_qmediatimerange_types.QMediaTimeRange): clonglong =
  fcQMediaTimeRange_latestTime(self.h)

proc intervals*(self: gen_qmediatimerange_types.QMediaTimeRange): seq[gen_qmediatimerange_types.QMediaTimeRangeInterval] =
  var v_ma = fcQMediaTimeRange_intervals(self.h)
  var vx_ret = newSeq[gen_qmediatimerange_types.QMediaTimeRangeInterval](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediatimerange_types.QMediaTimeRangeInterval(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc isEmpty*(self: gen_qmediatimerange_types.QMediaTimeRange): bool =
  fcQMediaTimeRange_isEmpty(self.h)

proc isContinuous*(self: gen_qmediatimerange_types.QMediaTimeRange): bool =
  fcQMediaTimeRange_isContinuous(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeRange, time: clonglong): bool =
  fcQMediaTimeRange_contains(self.h, time)

proc addInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =
  fcQMediaTimeRange_addIntervalStartEnd(self.h, start, endVal)

proc addInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeRangeInterval): void =
  fcQMediaTimeRange_addIntervalInterval(self.h, interval.h)

proc addTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_addTimeRange(self.h, param1.h)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =
  fcQMediaTimeRange_removeIntervalStartEnd(self.h, start, endVal)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeRangeInterval): void =
  fcQMediaTimeRange_removeIntervalInterval(self.h, interval.h)

proc removeTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_removeTimeRange(self.h, param1.h)

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssign_QMediaTimeRange(self.h, param1.h), owned: false)

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssign_QMediaTimeRange_Interval(self.h, param1.h), owned: false)

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssign_QMediaTimeRange(self.h, param1.h), owned: false)

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssign_QMediaTimeRange_Interval(self.h, param1.h), owned: false)

proc clear*(self: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_clear(self.h)

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  let tmp = gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new(), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeRange =
  let tmp = gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new2(start, endVal), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  let tmp = gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new3(param1.h), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    fromVal: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  let tmp = gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new4(fromVal.h), owned: true)
  tmp
proc start*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval): clonglong =
  fcQMediaTimeRangeInterval_start(self.h)

proc endX*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval): clonglong =
  fcQMediaTimeRangeInterval_endX(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, time: clonglong): bool =
  fcQMediaTimeRangeInterval_contains(self.h, time)

proc isNormal*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval): bool =
  fcQMediaTimeRangeInterval_isNormal(self.h)

proc normalized*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_normalized(self.h), owned: true)

proc translated*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, offset: clonglong): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_translated(self.h, offset), owned: true)

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  let tmp = gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_new(), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRangeInterval,
    start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  let tmp = gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_new2(start, endVal), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRangeInterval,
    fromVal: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  let tmp = gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_new3(fromVal.h), owned: true)
  tmp
