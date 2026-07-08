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


import ./gen_qlatin1stringview_types
export gen_qlatin1stringview_types

import
  ./gen_qchar_types
export
  gen_qchar_types

type cQLatin1String*{.exportc: "QLatin1String", incompleteStruct.} = object

proc fcQLatin1String_toString(self: pointer): struct_seaqt_string {.importc: "QLatin1String_toString".}
proc fcQLatin1String_latin1(self: pointer): cstring {.importc: "QLatin1String_latin1".}
proc fcQLatin1String_size(self: pointer): int64 {.importc: "QLatin1String_size".}
proc fcQLatin1String_data(self: pointer): cstring {.importc: "QLatin1String_data".}
proc fcQLatin1String_constData(self: pointer): cstring {.importc: "QLatin1String_constData".}
proc fcQLatin1String_constBegin(self: pointer): cstring {.importc: "QLatin1String_constBegin".}
proc fcQLatin1String_constEnd(self: pointer): cstring {.importc: "QLatin1String_constEnd".}
proc fcQLatin1String_first(self: pointer): pointer {.importc: "QLatin1String_first".}
proc fcQLatin1String_last(self: pointer): pointer {.importc: "QLatin1String_last".}
proc fcQLatin1String_length(self: pointer): int64 {.importc: "QLatin1String_length".}
proc fcQLatin1String_isNull(self: pointer): bool {.importc: "QLatin1String_isNull".}
proc fcQLatin1String_isEmpty(self: pointer): bool {.importc: "QLatin1String_isEmpty".}
proc fcQLatin1String_empty(self: pointer): bool {.importc: "QLatin1String_empty".}
proc fcQLatin1String_at(self: pointer, i: int64): pointer {.importc: "QLatin1String_at".}
proc fcQLatin1String_operatorSubscript(self: pointer, i: int64): pointer {.importc: "QLatin1String_operatorSubscript".}
proc fcQLatin1String_front(self: pointer): pointer {.importc: "QLatin1String_front".}
proc fcQLatin1String_back(self: pointer): pointer {.importc: "QLatin1String_back".}
proc fcQLatin1String_compare_QChar(self: pointer, c: pointer): cint {.importc: "QLatin1String_compare_QChar".}
proc fcQLatin1String_compare_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): cint {.importc: "QLatin1String_compare_QChar_Qt_CaseSensitivity".}
proc fcQLatin1String_startsWith_QChar(self: pointer, c: pointer): bool {.importc: "QLatin1String_startsWith_QChar".}
proc fcQLatin1String_startsWith_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): bool {.importc: "QLatin1String_startsWith_QChar_Qt_CaseSensitivity".}
proc fcQLatin1String_endsWith_QChar(self: pointer, c: pointer): bool {.importc: "QLatin1String_endsWith_QChar".}
proc fcQLatin1String_endsWith_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): bool {.importc: "QLatin1String_endsWith_QChar_Qt_CaseSensitivity".}
proc fcQLatin1String_indexOf_QChar(self: pointer, c: pointer): int64 {.importc: "QLatin1String_indexOf_QChar".}
proc fcQLatin1String_contains_QChar(self: pointer, c: pointer): bool {.importc: "QLatin1String_contains_QChar".}
proc fcQLatin1String_lastIndexOf_QChar(self: pointer, c: pointer): int64 {.importc: "QLatin1String_lastIndexOf_QChar".}
proc fcQLatin1String_lastIndexOf_QCharQsizetype(self: pointer, c: pointer, fromVal: int64): int64 {.importc: "QLatin1String_lastIndexOf_QChar_qsizetype".}
proc fcQLatin1String_count_QChar(self: pointer, ch: pointer): int64 {.importc: "QLatin1String_count_QChar".}
proc fcQLatin1String_toShort(self: pointer): cshort {.importc: "QLatin1String_toShort".}
proc fcQLatin1String_toUShort(self: pointer): cushort {.importc: "QLatin1String_toUShort".}
proc fcQLatin1String_toInt(self: pointer): cint {.importc: "QLatin1String_toInt".}
proc fcQLatin1String_toUInt(self: pointer): cuint {.importc: "QLatin1String_toUInt".}
proc fcQLatin1String_toLong(self: pointer): clong {.importc: "QLatin1String_toLong".}
proc fcQLatin1String_toULong(self: pointer): culong {.importc: "QLatin1String_toULong".}
proc fcQLatin1String_toLongLong(self: pointer): clonglong {.importc: "QLatin1String_toLongLong".}
proc fcQLatin1String_toULongLong(self: pointer): culonglong {.importc: "QLatin1String_toULongLong".}
proc fcQLatin1String_toFloat(self: pointer): float32 {.importc: "QLatin1String_toFloat".}
proc fcQLatin1String_toDouble(self: pointer): float64 {.importc: "QLatin1String_toDouble".}
proc fcQLatin1String_begin(self: pointer): cstring {.importc: "QLatin1String_begin".}
proc fcQLatin1String_cbegin(self: pointer): cstring {.importc: "QLatin1String_cbegin".}
proc fcQLatin1String_endX(self: pointer): cstring {.importc: "QLatin1String_end".}
proc fcQLatin1String_cend(self: pointer): cstring {.importc: "QLatin1String_cend".}
proc fcQLatin1String_maxSize(self: pointer): int64 {.importc: "QLatin1String_max_size".}
proc fcQLatin1String_maxSize(): int64 {.importc: "QLatin1String_maxSize".}
proc fcQLatin1String_chop(self: pointer, n: int64): void {.importc: "QLatin1String_chop".}
proc fcQLatin1String_truncate(self: pointer, n: int64): void {.importc: "QLatin1String_truncate".}
proc fcQLatin1String_indexOf_QCharQsizetype(self: pointer, c: pointer, fromVal: int64): int64 {.importc: "QLatin1String_indexOf_QChar_qsizetype".}
proc fcQLatin1String_indexOf_QCharQsizetype_Qt_CaseSensitivity(self: pointer, c: pointer, fromVal: int64, cs: cint): int64 {.importc: "QLatin1String_indexOf_QChar_qsizetype_Qt_CaseSensitivity".}
proc fcQLatin1String_contains_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): bool {.importc: "QLatin1String_contains_QChar_Qt_CaseSensitivity".}
proc fcQLatin1String_lastIndexOf_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): int64 {.importc: "QLatin1String_lastIndexOf_QChar_Qt_CaseSensitivity".}
proc fcQLatin1String_lastIndexOf_QCharQsizetype_Qt_CaseSensitivity(self: pointer, c: pointer, fromVal: int64, cs: cint): int64 {.importc: "QLatin1String_lastIndexOf_QChar_qsizetype_Qt_CaseSensitivity".}
proc fcQLatin1String_count_QChar_Qt_CaseSensitivity(self: pointer, ch: pointer, cs: cint): int64 {.importc: "QLatin1String_count_QChar_Qt_CaseSensitivity".}
proc fcQLatin1String_toShortOk(self: pointer, ok: ptr bool): cshort {.importc: "QLatin1String_toShort_ok".}
proc fcQLatin1String_toShortOkBase(self: pointer, ok: ptr bool, base: cint): cshort {.importc: "QLatin1String_toShort_ok_base".}
proc fcQLatin1String_toUShortOk(self: pointer, ok: ptr bool): cushort {.importc: "QLatin1String_toUShort_ok".}
proc fcQLatin1String_toUShortOkBase(self: pointer, ok: ptr bool, base: cint): cushort {.importc: "QLatin1String_toUShort_ok_base".}
proc fcQLatin1String_toIntOk(self: pointer, ok: ptr bool): cint {.importc: "QLatin1String_toInt_ok".}
proc fcQLatin1String_toIntOkBase(self: pointer, ok: ptr bool, base: cint): cint {.importc: "QLatin1String_toInt_ok_base".}
proc fcQLatin1String_toUIntOk(self: pointer, ok: ptr bool): cuint {.importc: "QLatin1String_toUInt_ok".}
proc fcQLatin1String_toUIntOkBase(self: pointer, ok: ptr bool, base: cint): cuint {.importc: "QLatin1String_toUInt_ok_base".}
proc fcQLatin1String_toLongOk(self: pointer, ok: ptr bool): clong {.importc: "QLatin1String_toLong_ok".}
proc fcQLatin1String_toLongOkBase(self: pointer, ok: ptr bool, base: cint): clong {.importc: "QLatin1String_toLong_ok_base".}
proc fcQLatin1String_toULongOk(self: pointer, ok: ptr bool): culong {.importc: "QLatin1String_toULong_ok".}
proc fcQLatin1String_toULongOkBase(self: pointer, ok: ptr bool, base: cint): culong {.importc: "QLatin1String_toULong_ok_base".}
proc fcQLatin1String_toLongLongOk(self: pointer, ok: ptr bool): clonglong {.importc: "QLatin1String_toLongLong_ok".}
proc fcQLatin1String_toLongLongOkBase(self: pointer, ok: ptr bool, base: cint): clonglong {.importc: "QLatin1String_toLongLong_ok_base".}
proc fcQLatin1String_toULongLongOk(self: pointer, ok: ptr bool): culonglong {.importc: "QLatin1String_toULongLong_ok".}
proc fcQLatin1String_toULongLongOkBase(self: pointer, ok: ptr bool, base: cint): culonglong {.importc: "QLatin1String_toULongLong_ok_base".}
proc fcQLatin1String_toFloatOk(self: pointer, ok: ptr bool): float32 {.importc: "QLatin1String_toFloat_ok".}
proc fcQLatin1String_toDoubleOk(self: pointer, ok: ptr bool): float64 {.importc: "QLatin1String_toDouble_ok".}
proc fcQLatin1String_new(): ptr cQLatin1String {.importc: "QLatin1String_new".}
proc fcQLatin1String_new2(s: cstring): ptr cQLatin1String {.importc: "QLatin1String_new_char".}
proc fcQLatin1String_new3(f: cstring, l: cstring): ptr cQLatin1String {.importc: "QLatin1String_new_char_char".}
proc fcQLatin1String_new4(s: cstring, sz: int64): ptr cQLatin1String {.importc: "QLatin1String_new_char_qsizetype".}
proc fcQLatin1String_new5(s: struct_seaqt_string): ptr cQLatin1String {.importc: "QLatin1String_new_QByteArray".}
proc fcQLatin1String_new6(s: struct_seaqt_string): ptr cQLatin1String {.importc: "QLatin1String_new_QByteArrayView".}

proc toString*(self: gen_qlatin1stringview_types.QLatin1String): string =
  let v_ms = fcQLatin1String_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc latin1*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_latin1(self.h))

proc size*(self: gen_qlatin1stringview_types.QLatin1String): int64 =
  fcQLatin1String_size(self.h)

proc data*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_data(self.h))

proc constData*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_constData(self.h))

proc constBegin*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_constBegin(self.h))

proc constEnd*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_constEnd(self.h))

proc first*(self: gen_qlatin1stringview_types.QLatin1String): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1String_first(self.h), owned: true)

proc last*(self: gen_qlatin1stringview_types.QLatin1String): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1String_last(self.h), owned: true)

proc length*(self: gen_qlatin1stringview_types.QLatin1String): int64 =
  fcQLatin1String_length(self.h)

proc isNull*(self: gen_qlatin1stringview_types.QLatin1String): bool =
  fcQLatin1String_isNull(self.h)

proc isEmpty*(self: gen_qlatin1stringview_types.QLatin1String): bool =
  fcQLatin1String_isEmpty(self.h)

proc empty*(self: gen_qlatin1stringview_types.QLatin1String): bool =
  fcQLatin1String_empty(self.h)

proc at*(self: gen_qlatin1stringview_types.QLatin1String, i: int64): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1String_at(self.h, i), owned: true)

proc operatorSubscript*(self: gen_qlatin1stringview_types.QLatin1String, i: int64): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1String_operatorSubscript(self.h, i), owned: true)

proc front*(self: gen_qlatin1stringview_types.QLatin1String): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1String_front(self.h), owned: true)

proc back*(self: gen_qlatin1stringview_types.QLatin1String): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1String_back(self.h), owned: true)

proc compare*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar): cint =
  fcQLatin1String_compare_QChar(self.h, c.h)

proc compare*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, cs: cint): cint =
  fcQLatin1String_compare_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc startsWith*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar): bool =
  fcQLatin1String_startsWith_QChar(self.h, c.h)

proc startsWith*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQLatin1String_startsWith_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc endsWith*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar): bool =
  fcQLatin1String_endsWith_QChar(self.h, c.h)

proc endsWith*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQLatin1String_endsWith_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc indexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar): int64 =
  fcQLatin1String_indexOf_QChar(self.h, c.h)

proc contains*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar): bool =
  fcQLatin1String_contains_QChar(self.h, c.h)

proc lastIndexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar): int64 =
  fcQLatin1String_lastIndexOf_QChar(self.h, c.h)

proc lastIndexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, fromVal: int64): int64 =
  fcQLatin1String_lastIndexOf_QCharQsizetype(self.h, c.h, fromVal)

proc count*(self: gen_qlatin1stringview_types.QLatin1String, ch: gen_qchar_types.QChar): int64 =
  fcQLatin1String_count_QChar(self.h, ch.h)

proc toShort*(self: gen_qlatin1stringview_types.QLatin1String): cshort =
  fcQLatin1String_toShort(self.h)

proc toUShort*(self: gen_qlatin1stringview_types.QLatin1String): cushort =
  fcQLatin1String_toUShort(self.h)

proc toInt*(self: gen_qlatin1stringview_types.QLatin1String): cint =
  fcQLatin1String_toInt(self.h)

proc toUInt*(self: gen_qlatin1stringview_types.QLatin1String): cuint =
  fcQLatin1String_toUInt(self.h)

proc toLong*(self: gen_qlatin1stringview_types.QLatin1String): clong =
  fcQLatin1String_toLong(self.h)

proc toULong*(self: gen_qlatin1stringview_types.QLatin1String): culong =
  fcQLatin1String_toULong(self.h)

proc toLongLong*(self: gen_qlatin1stringview_types.QLatin1String): clonglong =
  fcQLatin1String_toLongLong(self.h)

proc toULongLong*(self: gen_qlatin1stringview_types.QLatin1String): culonglong =
  fcQLatin1String_toULongLong(self.h)

proc toFloat*(self: gen_qlatin1stringview_types.QLatin1String): float32 =
  fcQLatin1String_toFloat(self.h)

proc toDouble*(self: gen_qlatin1stringview_types.QLatin1String): float64 =
  fcQLatin1String_toDouble(self.h)

proc begin*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_begin(self.h))

proc cbegin*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_cbegin(self.h))

proc endX*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_endX(self.h))

proc cend*(self: gen_qlatin1stringview_types.QLatin1String): cstring =
  (fcQLatin1String_cend(self.h))

proc maxSize*(self: gen_qlatin1stringview_types.QLatin1String): int64 =
  fcQLatin1String_maxSize(self.h)

proc maxSize2*(_: type gen_qlatin1stringview_types.QLatin1String): int64 =
  fcQLatin1String_maxSize()

proc chop*(self: gen_qlatin1stringview_types.QLatin1String, n: int64): void =
  fcQLatin1String_chop(self.h, n)

proc truncate*(self: gen_qlatin1stringview_types.QLatin1String, n: int64): void =
  fcQLatin1String_truncate(self.h, n)

proc indexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, fromVal: int64): int64 =
  fcQLatin1String_indexOf_QCharQsizetype(self.h, c.h, fromVal)

proc indexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, fromVal: int64, cs: cint): int64 =
  fcQLatin1String_indexOf_QCharQsizetype_Qt_CaseSensitivity(self.h, c.h, fromVal, cint(cs))

proc contains*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQLatin1String_contains_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc lastIndexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, cs: cint): int64 =
  fcQLatin1String_lastIndexOf_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc lastIndexOf*(self: gen_qlatin1stringview_types.QLatin1String, c: gen_qchar_types.QChar, fromVal: int64, cs: cint): int64 =
  fcQLatin1String_lastIndexOf_QCharQsizetype_Qt_CaseSensitivity(self.h, c.h, fromVal, cint(cs))

proc count*(self: gen_qlatin1stringview_types.QLatin1String, ch: gen_qchar_types.QChar, cs: cint): int64 =
  fcQLatin1String_count_QChar_Qt_CaseSensitivity(self.h, ch.h, cint(cs))

proc toShort*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): cshort =
  fcQLatin1String_toShortOk(self.h, ok)

proc toShort*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): cshort =
  fcQLatin1String_toShortOkBase(self.h, ok, base)

proc toUShort*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): cushort =
  fcQLatin1String_toUShortOk(self.h, ok)

proc toUShort*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): cushort =
  fcQLatin1String_toUShortOkBase(self.h, ok, base)

proc toInt*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): cint =
  fcQLatin1String_toIntOk(self.h, ok)

proc toInt*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): cint =
  fcQLatin1String_toIntOkBase(self.h, ok, base)

proc toUInt*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): cuint =
  fcQLatin1String_toUIntOk(self.h, ok)

proc toUInt*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): cuint =
  fcQLatin1String_toUIntOkBase(self.h, ok, base)

proc toLong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): clong =
  fcQLatin1String_toLongOk(self.h, ok)

proc toLong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): clong =
  fcQLatin1String_toLongOkBase(self.h, ok, base)

proc toULong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): culong =
  fcQLatin1String_toULongOk(self.h, ok)

proc toULong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): culong =
  fcQLatin1String_toULongOkBase(self.h, ok, base)

proc toLongLong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): clonglong =
  fcQLatin1String_toLongLongOk(self.h, ok)

proc toLongLong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): clonglong =
  fcQLatin1String_toLongLongOkBase(self.h, ok, base)

proc toULongLong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): culonglong =
  fcQLatin1String_toULongLongOk(self.h, ok)

proc toULongLong*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool, base: cint): culonglong =
  fcQLatin1String_toULongLongOkBase(self.h, ok, base)

proc toFloat*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): float32 =
  fcQLatin1String_toFloatOk(self.h, ok)

proc toDouble*(self: gen_qlatin1stringview_types.QLatin1String, ok: ptr bool): float64 =
  fcQLatin1String_toDoubleOk(self.h, ok)

proc create*(T: type gen_qlatin1stringview_types.QLatin1String): gen_qlatin1stringview_types.QLatin1String =
  let tmp = gen_qlatin1stringview_types.QLatin1String(h: fcQLatin1String_new(), owned: true)
  tmp
proc create*(T: type gen_qlatin1stringview_types.QLatin1String,
    s: cstring): gen_qlatin1stringview_types.QLatin1String =
  let tmp = gen_qlatin1stringview_types.QLatin1String(h: fcQLatin1String_new2(s), owned: true)
  tmp
proc create*(T: type gen_qlatin1stringview_types.QLatin1String,
    f: cstring, l: cstring): gen_qlatin1stringview_types.QLatin1String =
  let tmp = gen_qlatin1stringview_types.QLatin1String(h: fcQLatin1String_new3(f, l), owned: true)
  tmp
proc create*(T: type gen_qlatin1stringview_types.QLatin1String,
    s: cstring, sz: int64): gen_qlatin1stringview_types.QLatin1String =
  let tmp = gen_qlatin1stringview_types.QLatin1String(h: fcQLatin1String_new4(s, sz), owned: true)
  tmp
proc create*(T: type gen_qlatin1stringview_types.QLatin1String,
    s: openArray[byte]): gen_qlatin1stringview_types.QLatin1String =
  let tmp = gen_qlatin1stringview_types.QLatin1String(h: fcQLatin1String_new5(struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: true)
  tmp
proc create2*(T: type gen_qlatin1stringview_types.QLatin1String,
    s: openArray[byte]): gen_qlatin1stringview_types.QLatin1String =
  let tmp = gen_qlatin1stringview_types.QLatin1String(h: fcQLatin1String_new6(struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: true)
  tmp
