import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qmediatimerange.cpp", cflags).}


import ./gen_qmediatimerange_types
export gen_qmediatimerange_types


type cQMediaTimeRange*{.exportc: "QMediaTimeRange", incompleteStruct.} = object
type cQMediaTimeRangeInterval*{.exportc: "QMediaTimeRange__Interval", incompleteStruct.} = object

proc fcQMediaTimeRange_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_operatorAssign".}
proc fcQMediaTimeRange_swap(self: pointer, other: pointer): void {.importc: "QMediaTimeRange_swap".}
proc fcQMediaTimeRange_detach(self: pointer, ): void {.importc: "QMediaTimeRange_detach".}
proc fcQMediaTimeRange_operatorAssignWithQMediaTimeRangeInterval(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_operatorAssignWithQMediaTimeRangeInterval".}
proc fcQMediaTimeRange_earliestTime(self: pointer, ): clonglong {.importc: "QMediaTimeRange_earliestTime".}
proc fcQMediaTimeRange_latestTime(self: pointer, ): clonglong {.importc: "QMediaTimeRange_latestTime".}
proc fcQMediaTimeRange_intervals(self: pointer, ): struct_miqt_array {.importc: "QMediaTimeRange_intervals".}
proc fcQMediaTimeRange_isEmpty(self: pointer, ): bool {.importc: "QMediaTimeRange_isEmpty".}
proc fcQMediaTimeRange_isContinuous(self: pointer, ): bool {.importc: "QMediaTimeRange_isContinuous".}
proc fcQMediaTimeRange_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeRange_contains".}
proc fcQMediaTimeRange_addInterval(self: pointer, start: clonglong, endVal: clonglong): void {.importc: "QMediaTimeRange_addInterval".}
proc fcQMediaTimeRange_addIntervalWithInterval(self: pointer, interval: pointer): void {.importc: "QMediaTimeRange_addIntervalWithInterval".}
proc fcQMediaTimeRange_addTimeRange(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_addTimeRange".}
proc fcQMediaTimeRange_removeInterval(self: pointer, start: clonglong, endVal: clonglong): void {.importc: "QMediaTimeRange_removeInterval".}
proc fcQMediaTimeRange_removeIntervalWithInterval(self: pointer, interval: pointer): void {.importc: "QMediaTimeRange_removeIntervalWithInterval".}
proc fcQMediaTimeRange_removeTimeRange(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_removeTimeRange".}
proc fcQMediaTimeRange_operatorPlusAssign(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssign".}
proc fcQMediaTimeRange_operatorPlusAssignWithQMediaTimeRangeInterval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssignWithQMediaTimeRangeInterval".}
proc fcQMediaTimeRange_operatorMinusAssign(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssign".}
proc fcQMediaTimeRange_operatorMinusAssignWithQMediaTimeRangeInterval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssignWithQMediaTimeRangeInterval".}
proc fcQMediaTimeRange_clear(self: pointer, ): void {.importc: "QMediaTimeRange_clear".}
proc fcQMediaTimeRange_new(): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new".}
proc fcQMediaTimeRange_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new2".}
proc fcQMediaTimeRange_new3(param1: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new3".}
proc fcQMediaTimeRange_new4(range: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new4".}
proc fcQMediaTimeRange_delete(self: pointer) {.importc: "QMediaTimeRange_delete".}
proc fcQMediaTimeRangeInterval_start(self: pointer, ): clonglong {.importc: "QMediaTimeRange__Interval_start".}
proc fcQMediaTimeRangeInterval_endX(self: pointer, ): clonglong {.importc: "QMediaTimeRange__Interval_end".}
proc fcQMediaTimeRangeInterval_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeRange__Interval_contains".}
proc fcQMediaTimeRangeInterval_isNormal(self: pointer, ): bool {.importc: "QMediaTimeRange__Interval_isNormal".}
proc fcQMediaTimeRangeInterval_normalized(self: pointer, ): pointer {.importc: "QMediaTimeRange__Interval_normalized".}
proc fcQMediaTimeRangeInterval_translated(self: pointer, offset: clonglong): pointer {.importc: "QMediaTimeRange__Interval_translated".}
proc fcQMediaTimeRangeInterval_new(): ptr cQMediaTimeRangeInterval {.importc: "QMediaTimeRange__Interval_new".}
proc fcQMediaTimeRangeInterval_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeRangeInterval {.importc: "QMediaTimeRange__Interval_new2".}
proc fcQMediaTimeRangeInterval_new3(param1: pointer): ptr cQMediaTimeRangeInterval {.importc: "QMediaTimeRange__Interval_new3".}
proc fcQMediaTimeRangeInterval_delete(self: pointer) {.importc: "QMediaTimeRange__Interval_delete".}

proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qmediatimerange_types.QMediaTimeRange, other: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_swap(self.h, other.h)

proc detach*(self: gen_qmediatimerange_types.QMediaTimeRange, ): void =
  fcQMediaTimeRange_detach(self.h)

proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): void =
  fcQMediaTimeRange_operatorAssignWithQMediaTimeRangeInterval(self.h, param1.h)

proc earliestTime*(self: gen_qmediatimerange_types.QMediaTimeRange, ): clonglong =
  fcQMediaTimeRange_earliestTime(self.h)

proc latestTime*(self: gen_qmediatimerange_types.QMediaTimeRange, ): clonglong =
  fcQMediaTimeRange_latestTime(self.h)

proc intervals*(self: gen_qmediatimerange_types.QMediaTimeRange, ): seq[gen_qmediatimerange_types.QMediaTimeRangeInterval] =
  var v_ma = fcQMediaTimeRange_intervals(self.h)
  var vx_ret = newSeq[gen_qmediatimerange_types.QMediaTimeRangeInterval](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediatimerange_types.QMediaTimeRangeInterval(h: v_outCast[i])
  vx_ret

proc isEmpty*(self: gen_qmediatimerange_types.QMediaTimeRange, ): bool =
  fcQMediaTimeRange_isEmpty(self.h)

proc isContinuous*(self: gen_qmediatimerange_types.QMediaTimeRange, ): bool =
  fcQMediaTimeRange_isContinuous(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeRange, time: clonglong): bool =
  fcQMediaTimeRange_contains(self.h, time)

proc addInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =
  fcQMediaTimeRange_addInterval(self.h, start, endVal)

proc addInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeRangeInterval): void =
  fcQMediaTimeRange_addIntervalWithInterval(self.h, interval.h)

proc addTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_addTimeRange(self.h, param1.h)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =
  fcQMediaTimeRange_removeInterval(self.h, start, endVal)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeRangeInterval): void =
  fcQMediaTimeRange_removeIntervalWithInterval(self.h, interval.h)

proc removeTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_removeTimeRange(self.h, param1.h)

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssign(self.h, param1.h))

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssignWithQMediaTimeRangeInterval(self.h, param1.h))

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssign(self.h, param1.h))

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssignWithQMediaTimeRangeInterval(self.h, param1.h))

proc clear*(self: gen_qmediatimerange_types.QMediaTimeRange, ): void =
  fcQMediaTimeRange_clear(self.h)

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new())

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new2(start, endVal))

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new3(param1.h))

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    range: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new4(range.h))

proc delete*(self: gen_qmediatimerange_types.QMediaTimeRange) =
  fcQMediaTimeRange_delete(self.h)
proc start*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, ): clonglong =
  fcQMediaTimeRangeInterval_start(self.h)

proc endX*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, ): clonglong =
  fcQMediaTimeRangeInterval_endX(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, time: clonglong): bool =
  fcQMediaTimeRangeInterval_contains(self.h, time)

proc isNormal*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, ): bool =
  fcQMediaTimeRangeInterval_isNormal(self.h)

proc normalized*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, ): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_normalized(self.h))

proc translated*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval, offset: clonglong): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_translated(self.h, offset))

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_new())

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRangeInterval,
    start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_new2(start, endVal))

proc create*(T: type gen_qmediatimerange_types.QMediaTimeRangeInterval,
    param1: gen_qmediatimerange_types.QMediaTimeRangeInterval): gen_qmediatimerange_types.QMediaTimeRangeInterval =
  gen_qmediatimerange_types.QMediaTimeRangeInterval(h: fcQMediaTimeRangeInterval_new3(param1.h))

proc delete*(self: gen_qmediatimerange_types.QMediaTimeRangeInterval) =
  fcQMediaTimeRangeInterval_delete(self.h)
