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


type cQMediaTimeInterval*{.exportc: "QMediaTimeInterval", incompleteStruct.} = object
type cQMediaTimeRange*{.exportc: "QMediaTimeRange", incompleteStruct.} = object

proc fcQMediaTimeInterval_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMediaTimeInterval_operatorAssign".}
proc fcQMediaTimeInterval_start(self: pointer): clonglong {.importc: "QMediaTimeInterval_start".}
proc fcQMediaTimeInterval_endX(self: pointer): clonglong {.importc: "QMediaTimeInterval_end".}
proc fcQMediaTimeInterval_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeInterval_contains".}
proc fcQMediaTimeInterval_isNormal(self: pointer): bool {.importc: "QMediaTimeInterval_isNormal".}
proc fcQMediaTimeInterval_normalized(self: pointer): pointer {.importc: "QMediaTimeInterval_normalized".}
proc fcQMediaTimeInterval_translated(self: pointer, offset: clonglong): pointer {.importc: "QMediaTimeInterval_translated".}
proc fcQMediaTimeInterval_new(): ptr cQMediaTimeInterval {.importc: "QMediaTimeInterval_new".}
proc fcQMediaTimeInterval_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeInterval {.importc: "QMediaTimeInterval_new_start_end".}
proc fcQMediaTimeInterval_new3(fromVal: pointer): ptr cQMediaTimeInterval {.importc: "QMediaTimeInterval_new_from".}
proc fcQMediaTimeRange_operatorAssign_QMediaTimeRange(self: pointer, fromVal: pointer): void {.importc: "QMediaTimeRange_operatorAssign_QMediaTimeRange".}
proc fcQMediaTimeRange_operatorAssign_QMediaTimeInterval(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_operatorAssign_QMediaTimeInterval".}
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
proc fcQMediaTimeRange_operatorPlusAssign_QMediaTimeInterval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssign_QMediaTimeInterval".}
proc fcQMediaTimeRange_operatorMinusAssign_QMediaTimeRange(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssign_QMediaTimeRange".}
proc fcQMediaTimeRange_operatorMinusAssign_QMediaTimeInterval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssign_QMediaTimeInterval".}
proc fcQMediaTimeRange_clear(self: pointer): void {.importc: "QMediaTimeRange_clear".}
proc fcQMediaTimeRange_new(): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new".}
proc fcQMediaTimeRange_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new_qint64_qint64".}
proc fcQMediaTimeRange_new3(param1: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new_QMediaTimeInterval".}
proc fcQMediaTimeRange_new4(fromVal: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new_QMediaTimeRange".}

proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeInterval, fromVal: gen_qmediatimerange_types.QMediaTimeInterval): void =
  fcQMediaTimeInterval_operatorAssign(self.h, fromVal.h)

proc start*(self: gen_qmediatimerange_types.QMediaTimeInterval): clonglong =
  fcQMediaTimeInterval_start(self.h)

proc endX*(self: gen_qmediatimerange_types.QMediaTimeInterval): clonglong =
  fcQMediaTimeInterval_endX(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeInterval, time: clonglong): bool =
  fcQMediaTimeInterval_contains(self.h, time)

proc isNormal*(self: gen_qmediatimerange_types.QMediaTimeInterval): bool =
  fcQMediaTimeInterval_isNormal(self.h)

proc normalized*(self: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeInterval =
  gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_normalized(self.h), owned: true)

proc translated*(self: gen_qmediatimerange_types.QMediaTimeInterval, offset: clonglong): gen_qmediatimerange_types.QMediaTimeInterval =
  gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_translated(self.h, offset), owned: true)

proc create*(T: type gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeInterval =
  let tmp = gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_new(), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeInterval,
    start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeInterval =
  let tmp = gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_new2(start, endVal), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeInterval,
    fromVal: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeInterval =
  let tmp = gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_new3(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, fromVal: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_operatorAssign_QMediaTimeRange(self.h, fromVal.h)

proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): void =
  fcQMediaTimeRange_operatorAssign_QMediaTimeInterval(self.h, param1.h)

proc earliestTime*(self: gen_qmediatimerange_types.QMediaTimeRange): clonglong =
  fcQMediaTimeRange_earliestTime(self.h)

proc latestTime*(self: gen_qmediatimerange_types.QMediaTimeRange): clonglong =
  fcQMediaTimeRange_latestTime(self.h)

proc intervals*(self: gen_qmediatimerange_types.QMediaTimeRange): seq[gen_qmediatimerange_types.QMediaTimeInterval] =
  var v_ma = fcQMediaTimeRange_intervals(self.h)
  var vx_ret = newSeq[gen_qmediatimerange_types.QMediaTimeInterval](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediatimerange_types.QMediaTimeInterval(h: v_outCast[i], owned: true)
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

proc addInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeInterval): void =
  fcQMediaTimeRange_addIntervalInterval(self.h, interval.h)

proc addTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_addTimeRange(self.h, param1.h)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =
  fcQMediaTimeRange_removeIntervalStartEnd(self.h, start, endVal)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeInterval): void =
  fcQMediaTimeRange_removeIntervalInterval(self.h, interval.h)

proc removeTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaTimeRange_removeTimeRange(self.h, param1.h)

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssign_QMediaTimeRange(self.h, param1.h), owned: false)

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssign_QMediaTimeInterval(self.h, param1.h), owned: false)

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssign_QMediaTimeRange(self.h, param1.h), owned: false)

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssign_QMediaTimeInterval(self.h, param1.h), owned: false)

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
    param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeRange =
  let tmp = gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new3(param1.h), owned: true)
  tmp
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange,
    fromVal: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  let tmp = gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_new4(fromVal.h), owned: true)
  tmp
