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


import ./gen_qstringview_types
export gen_qstringview_types

import
  ./gen_qchar_types
export
  gen_qchar_types

type cQStringView*{.exportc: "QStringView", incompleteStruct.} = object

proc fcQStringView_toString(self: pointer): struct_miqt_string {.importc: "QStringView_toString".}
proc fcQStringView_size(self: pointer): int64 {.importc: "QStringView_size".}
proc fcQStringView_data(self: pointer): pointer {.importc: "QStringView_data".}
proc fcQStringView_operatorSubscript(self: pointer, n: int64): pointer {.importc: "QStringView_operatorSubscript".}
proc fcQStringView_toLatin1(self: pointer): struct_miqt_string {.importc: "QStringView_toLatin1".}
proc fcQStringView_toUtf8(self: pointer): struct_miqt_string {.importc: "QStringView_toUtf8".}
proc fcQStringView_toLocal8Bit(self: pointer): struct_miqt_string {.importc: "QStringView_toLocal8Bit".}
proc fcQStringView_toUcs4(self: pointer): struct_miqt_array {.importc: "QStringView_toUcs4".}
proc fcQStringView_at(self: pointer, n: int64): pointer {.importc: "QStringView_at".}
proc fcQStringView_truncate(self: pointer, n: int64): void {.importc: "QStringView_truncate".}
proc fcQStringView_chop(self: pointer, n: int64): void {.importc: "QStringView_chop".}
proc fcQStringView_compareWithQChar(self: pointer, c: pointer): cint {.importc: "QStringView_compareWithQChar".}
proc fcQStringView_compare2(self: pointer, c: pointer, cs: cint): cint {.importc: "QStringView_compare2".}
proc fcQStringView_startsWithWithQChar(self: pointer, c: pointer): bool {.importc: "QStringView_startsWithWithQChar".}
proc fcQStringView_startsWith2(self: pointer, c: pointer, cs: cint): bool {.importc: "QStringView_startsWith2".}
proc fcQStringView_endsWithWithQChar(self: pointer, c: pointer): bool {.importc: "QStringView_endsWithWithQChar".}
proc fcQStringView_endsWith2(self: pointer, c: pointer, cs: cint): bool {.importc: "QStringView_endsWith2".}
proc fcQStringView_indexOf(self: pointer, c: pointer): int64 {.importc: "QStringView_indexOf".}
proc fcQStringView_contains(self: pointer, c: pointer): bool {.importc: "QStringView_contains".}
proc fcQStringView_count(self: pointer, c: pointer): int64 {.importc: "QStringView_count".}
proc fcQStringView_lastIndexOf(self: pointer, c: pointer): int64 {.importc: "QStringView_lastIndexOf".}
proc fcQStringView_isRightToLeft(self: pointer): bool {.importc: "QStringView_isRightToLeft".}
proc fcQStringView_isValidUtf16(self: pointer): bool {.importc: "QStringView_isValidUtf16".}
proc fcQStringView_toShort(self: pointer): cshort {.importc: "QStringView_toShort".}
proc fcQStringView_toUShort(self: pointer): cushort {.importc: "QStringView_toUShort".}
proc fcQStringView_toInt(self: pointer): cint {.importc: "QStringView_toInt".}
proc fcQStringView_toUInt(self: pointer): cuint {.importc: "QStringView_toUInt".}
proc fcQStringView_toLong(self: pointer): clong {.importc: "QStringView_toLong".}
proc fcQStringView_toULong(self: pointer): culong {.importc: "QStringView_toULong".}
proc fcQStringView_toLongLong(self: pointer): clonglong {.importc: "QStringView_toLongLong".}
proc fcQStringView_toULongLong(self: pointer): culonglong {.importc: "QStringView_toULongLong".}
proc fcQStringView_toFloat(self: pointer): float32 {.importc: "QStringView_toFloat".}
proc fcQStringView_toDouble(self: pointer): float64 {.importc: "QStringView_toDouble".}
proc fcQStringView_begin(self: pointer): pointer {.importc: "QStringView_begin".}
proc fcQStringView_endX(self: pointer): pointer {.importc: "QStringView_end".}
proc fcQStringView_cbegin(self: pointer): pointer {.importc: "QStringView_cbegin".}
proc fcQStringView_cend(self: pointer): pointer {.importc: "QStringView_cend".}
proc fcQStringView_empty(self: pointer): bool {.importc: "QStringView_empty".}
proc fcQStringView_front(self: pointer): pointer {.importc: "QStringView_front".}
proc fcQStringView_back(self: pointer): pointer {.importc: "QStringView_back".}
proc fcQStringView_isNull(self: pointer): bool {.importc: "QStringView_isNull".}
proc fcQStringView_isEmpty(self: pointer): bool {.importc: "QStringView_isEmpty".}
proc fcQStringView_length(self: pointer): cint {.importc: "QStringView_length".}
proc fcQStringView_first(self: pointer): pointer {.importc: "QStringView_first".}
proc fcQStringView_last(self: pointer): pointer {.importc: "QStringView_last".}
proc fcQStringView_indexOf2(self: pointer, c: pointer, fromVal: int64): int64 {.importc: "QStringView_indexOf2".}
proc fcQStringView_indexOf3(self: pointer, c: pointer, fromVal: int64, cs: cint): int64 {.importc: "QStringView_indexOf3".}
proc fcQStringView_contains2(self: pointer, c: pointer, cs: cint): bool {.importc: "QStringView_contains2".}
proc fcQStringView_count2(self: pointer, c: pointer, cs: cint): int64 {.importc: "QStringView_count2".}
proc fcQStringView_lastIndexOf2(self: pointer, c: pointer, fromVal: int64): int64 {.importc: "QStringView_lastIndexOf2".}
proc fcQStringView_lastIndexOf3(self: pointer, c: pointer, fromVal: int64, cs: cint): int64 {.importc: "QStringView_lastIndexOf3".}
proc fcQStringView_toShort1(self: pointer, ok: ptr bool): cshort {.importc: "QStringView_toShort1".}
proc fcQStringView_toShort2(self: pointer, ok: ptr bool, base: cint): cshort {.importc: "QStringView_toShort2".}
proc fcQStringView_toUShort1(self: pointer, ok: ptr bool): cushort {.importc: "QStringView_toUShort1".}
proc fcQStringView_toUShort2(self: pointer, ok: ptr bool, base: cint): cushort {.importc: "QStringView_toUShort2".}
proc fcQStringView_toInt1(self: pointer, ok: ptr bool): cint {.importc: "QStringView_toInt1".}
proc fcQStringView_toInt2(self: pointer, ok: ptr bool, base: cint): cint {.importc: "QStringView_toInt2".}
proc fcQStringView_toUInt1(self: pointer, ok: ptr bool): cuint {.importc: "QStringView_toUInt1".}
proc fcQStringView_toUInt2(self: pointer, ok: ptr bool, base: cint): cuint {.importc: "QStringView_toUInt2".}
proc fcQStringView_toLong1(self: pointer, ok: ptr bool): clong {.importc: "QStringView_toLong1".}
proc fcQStringView_toLong2(self: pointer, ok: ptr bool, base: cint): clong {.importc: "QStringView_toLong2".}
proc fcQStringView_toULong1(self: pointer, ok: ptr bool): culong {.importc: "QStringView_toULong1".}
proc fcQStringView_toULong2(self: pointer, ok: ptr bool, base: cint): culong {.importc: "QStringView_toULong2".}
proc fcQStringView_toLongLong1(self: pointer, ok: ptr bool): clonglong {.importc: "QStringView_toLongLong1".}
proc fcQStringView_toLongLong2(self: pointer, ok: ptr bool, base: cint): clonglong {.importc: "QStringView_toLongLong2".}
proc fcQStringView_toULongLong1(self: pointer, ok: ptr bool): culonglong {.importc: "QStringView_toULongLong1".}
proc fcQStringView_toULongLong2(self: pointer, ok: ptr bool, base: cint): culonglong {.importc: "QStringView_toULongLong2".}
proc fcQStringView_toFloat1(self: pointer, ok: ptr bool): float32 {.importc: "QStringView_toFloat1".}
proc fcQStringView_toDouble1(self: pointer, ok: ptr bool): float64 {.importc: "QStringView_toDouble1".}
proc fcQStringView_new(): ptr cQStringView {.importc: "QStringView_new".}

proc toString*(self: gen_qstringview_types.QStringView): string =
  let v_ms = fcQStringView_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc size*(self: gen_qstringview_types.QStringView): int64 =
  fcQStringView_size(self.h)

proc data*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_data(self.h), owned: false)

proc operatorSubscript*(self: gen_qstringview_types.QStringView, n: int64): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_operatorSubscript(self.h, n), owned: true)

proc toLatin1*(self: gen_qstringview_types.QStringView): seq[byte] =
  var v_bytearray = fcQStringView_toLatin1(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toUtf8*(self: gen_qstringview_types.QStringView): seq[byte] =
  var v_bytearray = fcQStringView_toUtf8(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toLocal8Bit*(self: gen_qstringview_types.QStringView): seq[byte] =
  var v_bytearray = fcQStringView_toLocal8Bit(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toUcs4*(self: gen_qstringview_types.QStringView): seq[cuint] =
  var v_ma = fcQStringView_toUcs4(self.h)
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc at*(self: gen_qstringview_types.QStringView, n: int64): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_at(self.h, n), owned: true)

proc truncate*(self: gen_qstringview_types.QStringView, n: int64): void =
  fcQStringView_truncate(self.h, n)

proc chop*(self: gen_qstringview_types.QStringView, n: int64): void =
  fcQStringView_chop(self.h, n)

proc compare*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): cint =
  fcQStringView_compareWithQChar(self.h, c.h)

proc compare*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): cint =
  fcQStringView_compare2(self.h, c.h, cint(cs))

proc startsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): bool =
  fcQStringView_startsWithWithQChar(self.h, c.h)

proc startsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQStringView_startsWith2(self.h, c.h, cint(cs))

proc endsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): bool =
  fcQStringView_endsWithWithQChar(self.h, c.h)

proc endsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQStringView_endsWith2(self.h, c.h, cint(cs))

proc indexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): int64 =
  fcQStringView_indexOf(self.h, c.h)

proc contains*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): bool =
  fcQStringView_contains(self.h, c.h)

proc count*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): int64 =
  fcQStringView_count(self.h, c.h)

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): int64 =
  fcQStringView_lastIndexOf(self.h, c.h)

proc isRightToLeft*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_isRightToLeft(self.h)

proc isValidUtf16*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_isValidUtf16(self.h)

proc toShort*(self: gen_qstringview_types.QStringView): cshort =
  fcQStringView_toShort(self.h)

proc toUShort*(self: gen_qstringview_types.QStringView): cushort =
  fcQStringView_toUShort(self.h)

proc toInt*(self: gen_qstringview_types.QStringView): cint =
  fcQStringView_toInt(self.h)

proc toUInt*(self: gen_qstringview_types.QStringView): cuint =
  fcQStringView_toUInt(self.h)

proc toLong*(self: gen_qstringview_types.QStringView): clong =
  fcQStringView_toLong(self.h)

proc toULong*(self: gen_qstringview_types.QStringView): culong =
  fcQStringView_toULong(self.h)

proc toLongLong*(self: gen_qstringview_types.QStringView): clonglong =
  fcQStringView_toLongLong(self.h)

proc toULongLong*(self: gen_qstringview_types.QStringView): culonglong =
  fcQStringView_toULongLong(self.h)

proc toFloat*(self: gen_qstringview_types.QStringView): float32 =
  fcQStringView_toFloat(self.h)

proc toDouble*(self: gen_qstringview_types.QStringView): float64 =
  fcQStringView_toDouble(self.h)

proc begin*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_begin(self.h), owned: false)

proc endX*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_endX(self.h), owned: false)

proc cbegin*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_cbegin(self.h), owned: false)

proc cend*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_cend(self.h), owned: false)

proc empty*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_empty(self.h)

proc front*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_front(self.h), owned: true)

proc back*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_back(self.h), owned: true)

proc isNull*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_isNull(self.h)

proc isEmpty*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_isEmpty(self.h)

proc length*(self: gen_qstringview_types.QStringView): cint =
  fcQStringView_length(self.h)

proc first*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_first(self.h), owned: true)

proc last*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_last(self.h), owned: true)

proc indexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64): int64 =
  fcQStringView_indexOf2(self.h, c.h, fromVal)

proc indexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64, cs: cint): int64 =
  fcQStringView_indexOf3(self.h, c.h, fromVal, cint(cs))

proc contains*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQStringView_contains2(self.h, c.h, cint(cs))

proc count*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): int64 =
  fcQStringView_count2(self.h, c.h, cint(cs))

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64): int64 =
  fcQStringView_lastIndexOf2(self.h, c.h, fromVal)

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64, cs: cint): int64 =
  fcQStringView_lastIndexOf3(self.h, c.h, fromVal, cint(cs))

proc toShort*(self: gen_qstringview_types.QStringView, ok: ptr bool): cshort =
  fcQStringView_toShort1(self.h, ok)

proc toShort*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cshort =
  fcQStringView_toShort2(self.h, ok, base)

proc toUShort*(self: gen_qstringview_types.QStringView, ok: ptr bool): cushort =
  fcQStringView_toUShort1(self.h, ok)

proc toUShort*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cushort =
  fcQStringView_toUShort2(self.h, ok, base)

proc toInt*(self: gen_qstringview_types.QStringView, ok: ptr bool): cint =
  fcQStringView_toInt1(self.h, ok)

proc toInt*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cint =
  fcQStringView_toInt2(self.h, ok, base)

proc toUInt*(self: gen_qstringview_types.QStringView, ok: ptr bool): cuint =
  fcQStringView_toUInt1(self.h, ok)

proc toUInt*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cuint =
  fcQStringView_toUInt2(self.h, ok, base)

proc toLong*(self: gen_qstringview_types.QStringView, ok: ptr bool): clong =
  fcQStringView_toLong1(self.h, ok)

proc toLong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): clong =
  fcQStringView_toLong2(self.h, ok, base)

proc toULong*(self: gen_qstringview_types.QStringView, ok: ptr bool): culong =
  fcQStringView_toULong1(self.h, ok)

proc toULong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): culong =
  fcQStringView_toULong2(self.h, ok, base)

proc toLongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool): clonglong =
  fcQStringView_toLongLong1(self.h, ok)

proc toLongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): clonglong =
  fcQStringView_toLongLong2(self.h, ok, base)

proc toULongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool): culonglong =
  fcQStringView_toULongLong1(self.h, ok)

proc toULongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): culonglong =
  fcQStringView_toULongLong2(self.h, ok, base)

proc toFloat*(self: gen_qstringview_types.QStringView, ok: ptr bool): float32 =
  fcQStringView_toFloat1(self.h, ok)

proc toDouble*(self: gen_qstringview_types.QStringView, ok: ptr bool): float64 =
  fcQStringView_toDouble1(self.h, ok)

proc create*(T: type gen_qstringview_types.QStringView): gen_qstringview_types.QStringView =
  gen_qstringview_types.QStringView(h: fcQStringView_new(), owned: true)

