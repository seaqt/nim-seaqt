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


import ./gen_qstringview_types
export gen_qstringview_types

import
  ./gen_qchar_types,
  ./gen_qregularexpression_types
export
  gen_qchar_types,
  gen_qregularexpression_types

type cQStringView*{.exportc: "QStringView", incompleteStruct.} = object

proc fcQStringView_toString(self: pointer): struct_seaqt_string {.importc: "QStringView_toString".}
proc fcQStringView_size(self: pointer): int64 {.importc: "QStringView_size".}
proc fcQStringView_data(self: pointer): pointer {.importc: "QStringView_data".}
proc fcQStringView_constData(self: pointer): pointer {.importc: "QStringView_constData".}
proc fcQStringView_operatorSubscript(self: pointer, n: int64): pointer {.importc: "QStringView_operatorSubscript".}
proc fcQStringView_toLatin1(self: pointer): struct_seaqt_string {.importc: "QStringView_toLatin1".}
proc fcQStringView_toUtf8(self: pointer): struct_seaqt_string {.importc: "QStringView_toUtf8".}
proc fcQStringView_toLocal8Bit(self: pointer): struct_seaqt_string {.importc: "QStringView_toLocal8Bit".}
proc fcQStringView_toUcs4(self: pointer): struct_seaqt_array {.importc: "QStringView_toUcs4".}
proc fcQStringView_at(self: pointer, n: int64): pointer {.importc: "QStringView_at".}
proc fcQStringView_truncate(self: pointer, n: int64): void {.importc: "QStringView_truncate".}
proc fcQStringView_chop(self: pointer, n: int64): void {.importc: "QStringView_chop".}
proc fcQStringView_compare_QChar(self: pointer, c: pointer): cint {.importc: "QStringView_compare_QChar".}
proc fcQStringView_compare_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): cint {.importc: "QStringView_compare_QChar_Qt_CaseSensitivity".}
proc fcQStringView_startsWith_QChar(self: pointer, c: pointer): bool {.importc: "QStringView_startsWith_QChar".}
proc fcQStringView_startsWith_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): bool {.importc: "QStringView_startsWith_QChar_Qt_CaseSensitivity".}
proc fcQStringView_endsWith_QChar(self: pointer, c: pointer): bool {.importc: "QStringView_endsWith_QChar".}
proc fcQStringView_endsWith_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): bool {.importc: "QStringView_endsWith_QChar_Qt_CaseSensitivity".}
proc fcQStringView_indexOf_QChar(self: pointer, c: pointer): int64 {.importc: "QStringView_indexOf_QChar".}
proc fcQStringView_contains_QChar(self: pointer, c: pointer): bool {.importc: "QStringView_contains_QChar".}
proc fcQStringView_count_QChar(self: pointer, c: pointer): int64 {.importc: "QStringView_count_QChar".}
proc fcQStringView_lastIndexOf_QChar(self: pointer, c: pointer): int64 {.importc: "QStringView_lastIndexOf_QChar".}
proc fcQStringView_lastIndexOf_QCharQsizetype(self: pointer, c: pointer, fromVal: int64): int64 {.importc: "QStringView_lastIndexOf_QChar_qsizetype".}
proc fcQStringView_indexOf_QRegularExpression(self: pointer, re: pointer): int64 {.importc: "QStringView_indexOf_QRegularExpression".}
proc fcQStringView_lastIndexOf_QRegularExpressionQsizetype(self: pointer, re: pointer, fromVal: int64): int64 {.importc: "QStringView_lastIndexOf_QRegularExpression_qsizetype".}
proc fcQStringView_contains_QRegularExpression(self: pointer, re: pointer): bool {.importc: "QStringView_contains_QRegularExpression".}
proc fcQStringView_count_QRegularExpression(self: pointer, re: pointer): int64 {.importc: "QStringView_count_QRegularExpression".}
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
proc fcQStringView_constBegin(self: pointer): pointer {.importc: "QStringView_constBegin".}
proc fcQStringView_constEnd(self: pointer): pointer {.importc: "QStringView_constEnd".}
proc fcQStringView_isNull(self: pointer): bool {.importc: "QStringView_isNull".}
proc fcQStringView_isEmpty(self: pointer): bool {.importc: "QStringView_isEmpty".}
proc fcQStringView_length(self: pointer): int64 {.importc: "QStringView_length".}
proc fcQStringView_first(self: pointer): pointer {.importc: "QStringView_first".}
proc fcQStringView_last(self: pointer): pointer {.importc: "QStringView_last".}
proc fcQStringView_indexOf_QCharQsizetype(self: pointer, c: pointer, fromVal: int64): int64 {.importc: "QStringView_indexOf_QChar_qsizetype".}
proc fcQStringView_indexOf_QCharQsizetype_Qt_CaseSensitivity(self: pointer, c: pointer, fromVal: int64, cs: cint): int64 {.importc: "QStringView_indexOf_QChar_qsizetype_Qt_CaseSensitivity".}
proc fcQStringView_contains_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): bool {.importc: "QStringView_contains_QChar_Qt_CaseSensitivity".}
proc fcQStringView_count_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): int64 {.importc: "QStringView_count_QChar_Qt_CaseSensitivity".}
proc fcQStringView_lastIndexOf_QChar_Qt_CaseSensitivity(self: pointer, c: pointer, cs: cint): int64 {.importc: "QStringView_lastIndexOf_QChar_Qt_CaseSensitivity".}
proc fcQStringView_lastIndexOf_QCharQsizetype_Qt_CaseSensitivity(self: pointer, c: pointer, fromVal: int64, cs: cint): int64 {.importc: "QStringView_lastIndexOf_QChar_qsizetype_Qt_CaseSensitivity".}
proc fcQStringView_indexOf_QRegularExpressionQsizetype(self: pointer, re: pointer, fromVal: int64): int64 {.importc: "QStringView_indexOf_QRegularExpression_qsizetype".}
proc fcQStringView_indexOf_QRegularExpressionQsizetype_QRegularExpressionMatch(self: pointer, re: pointer, fromVal: int64, rmatch: pointer): int64 {.importc: "QStringView_indexOf_QRegularExpression_qsizetype_QRegularExpressionMatch".}
proc fcQStringView_lastIndexOf_QRegularExpressionQsizetype_QRegularExpressionMatch(self: pointer, re: pointer, fromVal: int64, rmatch: pointer): int64 {.importc: "QStringView_lastIndexOf_QRegularExpression_qsizetype_QRegularExpressionMatch".}
proc fcQStringView_contains_QRegularExpression_QRegularExpressionMatch(self: pointer, re: pointer, rmatch: pointer): bool {.importc: "QStringView_contains_QRegularExpression_QRegularExpressionMatch".}
proc fcQStringView_toShortOk(self: pointer, ok: ptr bool): cshort {.importc: "QStringView_toShort_ok".}
proc fcQStringView_toShortOkBase(self: pointer, ok: ptr bool, base: cint): cshort {.importc: "QStringView_toShort_ok_base".}
proc fcQStringView_toUShortOk(self: pointer, ok: ptr bool): cushort {.importc: "QStringView_toUShort_ok".}
proc fcQStringView_toUShortOkBase(self: pointer, ok: ptr bool, base: cint): cushort {.importc: "QStringView_toUShort_ok_base".}
proc fcQStringView_toIntOk(self: pointer, ok: ptr bool): cint {.importc: "QStringView_toInt_ok".}
proc fcQStringView_toIntOkBase(self: pointer, ok: ptr bool, base: cint): cint {.importc: "QStringView_toInt_ok_base".}
proc fcQStringView_toUIntOk(self: pointer, ok: ptr bool): cuint {.importc: "QStringView_toUInt_ok".}
proc fcQStringView_toUIntOkBase(self: pointer, ok: ptr bool, base: cint): cuint {.importc: "QStringView_toUInt_ok_base".}
proc fcQStringView_toLongOk(self: pointer, ok: ptr bool): clong {.importc: "QStringView_toLong_ok".}
proc fcQStringView_toLongOkBase(self: pointer, ok: ptr bool, base: cint): clong {.importc: "QStringView_toLong_ok_base".}
proc fcQStringView_toULongOk(self: pointer, ok: ptr bool): culong {.importc: "QStringView_toULong_ok".}
proc fcQStringView_toULongOkBase(self: pointer, ok: ptr bool, base: cint): culong {.importc: "QStringView_toULong_ok_base".}
proc fcQStringView_toLongLongOk(self: pointer, ok: ptr bool): clonglong {.importc: "QStringView_toLongLong_ok".}
proc fcQStringView_toLongLongOkBase(self: pointer, ok: ptr bool, base: cint): clonglong {.importc: "QStringView_toLongLong_ok_base".}
proc fcQStringView_toULongLongOk(self: pointer, ok: ptr bool): culonglong {.importc: "QStringView_toULongLong_ok".}
proc fcQStringView_toULongLongOkBase(self: pointer, ok: ptr bool, base: cint): culonglong {.importc: "QStringView_toULongLong_ok_base".}
proc fcQStringView_toFloatOk(self: pointer, ok: ptr bool): float32 {.importc: "QStringView_toFloat_ok".}
proc fcQStringView_toDoubleOk(self: pointer, ok: ptr bool): float64 {.importc: "QStringView_toDouble_ok".}
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

proc constData*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_constData(self.h), owned: false)

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
  fcQStringView_compare_QChar(self.h, c.h)

proc compare*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): cint =
  fcQStringView_compare_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc startsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): bool =
  fcQStringView_startsWith_QChar(self.h, c.h)

proc startsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQStringView_startsWith_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc endsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): bool =
  fcQStringView_endsWith_QChar(self.h, c.h)

proc endsWith*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQStringView_endsWith_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc indexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): int64 =
  fcQStringView_indexOf_QChar(self.h, c.h)

proc contains*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): bool =
  fcQStringView_contains_QChar(self.h, c.h)

proc count*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): int64 =
  fcQStringView_count_QChar(self.h, c.h)

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar): int64 =
  fcQStringView_lastIndexOf_QChar(self.h, c.h)

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64): int64 =
  fcQStringView_lastIndexOf_QCharQsizetype(self.h, c.h, fromVal)

proc indexOf*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression): int64 =
  fcQStringView_indexOf_QRegularExpression(self.h, re.h)

proc lastIndexOf*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression, fromVal: int64): int64 =
  fcQStringView_lastIndexOf_QRegularExpressionQsizetype(self.h, re.h, fromVal)

proc contains*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression): bool =
  fcQStringView_contains_QRegularExpression(self.h, re.h)

proc count*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression): int64 =
  fcQStringView_count_QRegularExpression(self.h, re.h)

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

proc constBegin*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_constBegin(self.h), owned: false)

proc constEnd*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_constEnd(self.h), owned: false)

proc isNull*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_isNull(self.h)

proc isEmpty*(self: gen_qstringview_types.QStringView): bool =
  fcQStringView_isEmpty(self.h)

proc length*(self: gen_qstringview_types.QStringView): int64 =
  fcQStringView_length(self.h)

proc first*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_first(self.h), owned: true)

proc last*(self: gen_qstringview_types.QStringView): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringView_last(self.h), owned: true)

proc indexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64): int64 =
  fcQStringView_indexOf_QCharQsizetype(self.h, c.h, fromVal)

proc indexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64, cs: cint): int64 =
  fcQStringView_indexOf_QCharQsizetype_Qt_CaseSensitivity(self.h, c.h, fromVal, cint(cs))

proc contains*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): bool =
  fcQStringView_contains_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc count*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): int64 =
  fcQStringView_count_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, cs: cint): int64 =
  fcQStringView_lastIndexOf_QChar_Qt_CaseSensitivity(self.h, c.h, cint(cs))

proc lastIndexOf*(self: gen_qstringview_types.QStringView, c: gen_qchar_types.QChar, fromVal: int64, cs: cint): int64 =
  fcQStringView_lastIndexOf_QCharQsizetype_Qt_CaseSensitivity(self.h, c.h, fromVal, cint(cs))

proc indexOf*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression, fromVal: int64): int64 =
  fcQStringView_indexOf_QRegularExpressionQsizetype(self.h, re.h, fromVal)

proc indexOf*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression, fromVal: int64, rmatch: gen_qregularexpression_types.QRegularExpressionMatch): int64 =
  fcQStringView_indexOf_QRegularExpressionQsizetype_QRegularExpressionMatch(self.h, re.h, fromVal, rmatch.h)

proc lastIndexOf*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression, fromVal: int64, rmatch: gen_qregularexpression_types.QRegularExpressionMatch): int64 =
  fcQStringView_lastIndexOf_QRegularExpressionQsizetype_QRegularExpressionMatch(self.h, re.h, fromVal, rmatch.h)

proc contains*(self: gen_qstringview_types.QStringView, re: gen_qregularexpression_types.QRegularExpression, rmatch: gen_qregularexpression_types.QRegularExpressionMatch): bool =
  fcQStringView_contains_QRegularExpression_QRegularExpressionMatch(self.h, re.h, rmatch.h)

proc toShort*(self: gen_qstringview_types.QStringView, ok: ptr bool): cshort =
  fcQStringView_toShortOk(self.h, ok)

proc toShort*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cshort =
  fcQStringView_toShortOkBase(self.h, ok, base)

proc toUShort*(self: gen_qstringview_types.QStringView, ok: ptr bool): cushort =
  fcQStringView_toUShortOk(self.h, ok)

proc toUShort*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cushort =
  fcQStringView_toUShortOkBase(self.h, ok, base)

proc toInt*(self: gen_qstringview_types.QStringView, ok: ptr bool): cint =
  fcQStringView_toIntOk(self.h, ok)

proc toInt*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cint =
  fcQStringView_toIntOkBase(self.h, ok, base)

proc toUInt*(self: gen_qstringview_types.QStringView, ok: ptr bool): cuint =
  fcQStringView_toUIntOk(self.h, ok)

proc toUInt*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): cuint =
  fcQStringView_toUIntOkBase(self.h, ok, base)

proc toLong*(self: gen_qstringview_types.QStringView, ok: ptr bool): clong =
  fcQStringView_toLongOk(self.h, ok)

proc toLong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): clong =
  fcQStringView_toLongOkBase(self.h, ok, base)

proc toULong*(self: gen_qstringview_types.QStringView, ok: ptr bool): culong =
  fcQStringView_toULongOk(self.h, ok)

proc toULong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): culong =
  fcQStringView_toULongOkBase(self.h, ok, base)

proc toLongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool): clonglong =
  fcQStringView_toLongLongOk(self.h, ok)

proc toLongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): clonglong =
  fcQStringView_toLongLongOkBase(self.h, ok, base)

proc toULongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool): culonglong =
  fcQStringView_toULongLongOk(self.h, ok)

proc toULongLong*(self: gen_qstringview_types.QStringView, ok: ptr bool, base: cint): culonglong =
  fcQStringView_toULongLongOkBase(self.h, ok, base)

proc toFloat*(self: gen_qstringview_types.QStringView, ok: ptr bool): float32 =
  fcQStringView_toFloatOk(self.h, ok)

proc toDouble*(self: gen_qstringview_types.QStringView, ok: ptr bool): float64 =
  fcQStringView_toDoubleOk(self.h, ok)

proc create*(T: type gen_qstringview_types.QStringView): gen_qstringview_types.QStringView =
  let tmp = gen_qstringview_types.QStringView(h: fcQStringView_new(), owned: true)
  tmp
