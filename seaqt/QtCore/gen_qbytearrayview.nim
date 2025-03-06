import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qbytearrayview.cpp", cflags).}


import ./gen_qbytearrayview_types
export gen_qbytearrayview_types


type cQByteArrayView*{.exportc: "QByteArrayView", incompleteStruct.} = object

proc fcQByteArrayView_new(): ptr cQByteArrayView {.importc: "QByteArrayView_new".}
proc fcQByteArrayView_new2(param1: pointer): ptr cQByteArrayView {.importc: "QByteArrayView_new2".}
proc fcQByteArrayView_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QByteArrayView_toByteArray".}
proc fcQByteArrayView_size(self: pointer, ): int64 {.importc: "QByteArrayView_size".}
proc fcQByteArrayView_data(self: pointer, ): cstring {.importc: "QByteArrayView_data".}
proc fcQByteArrayView_constData(self: pointer, ): cstring {.importc: "QByteArrayView_constData".}
proc fcQByteArrayView_operatorSubscript(self: pointer, n: int64): cchar {.importc: "QByteArrayView_operatorSubscript".}
proc fcQByteArrayView_at(self: pointer, n: int64): cchar {.importc: "QByteArrayView_at".}
proc fcQByteArrayView_first(self: pointer, n: int64): pointer {.importc: "QByteArrayView_first".}
proc fcQByteArrayView_last(self: pointer, n: int64): pointer {.importc: "QByteArrayView_last".}
proc fcQByteArrayView_sliced(self: pointer, pos: int64): pointer {.importc: "QByteArrayView_sliced".}
proc fcQByteArrayView_sliced2(self: pointer, pos: int64, n: int64): pointer {.importc: "QByteArrayView_sliced2".}
proc fcQByteArrayView_chopped(self: pointer, len: int64): pointer {.importc: "QByteArrayView_chopped".}
proc fcQByteArrayView_truncate(self: pointer, n: int64): void {.importc: "QByteArrayView_truncate".}
proc fcQByteArrayView_chop(self: pointer, n: int64): void {.importc: "QByteArrayView_chop".}
proc fcQByteArrayView_trimmed(self: pointer, ): pointer {.importc: "QByteArrayView_trimmed".}
proc fcQByteArrayView_toShort(self: pointer, ): cshort {.importc: "QByteArrayView_toShort".}
proc fcQByteArrayView_toUShort(self: pointer, ): cushort {.importc: "QByteArrayView_toUShort".}
proc fcQByteArrayView_toInt(self: pointer, ): cint {.importc: "QByteArrayView_toInt".}
proc fcQByteArrayView_toUInt(self: pointer, ): cuint {.importc: "QByteArrayView_toUInt".}
proc fcQByteArrayView_toLong(self: pointer, ): clong {.importc: "QByteArrayView_toLong".}
proc fcQByteArrayView_toULong(self: pointer, ): culong {.importc: "QByteArrayView_toULong".}
proc fcQByteArrayView_toLongLong(self: pointer, ): clonglong {.importc: "QByteArrayView_toLongLong".}
proc fcQByteArrayView_toULongLong(self: pointer, ): culonglong {.importc: "QByteArrayView_toULongLong".}
proc fcQByteArrayView_toFloat(self: pointer, ): float32 {.importc: "QByteArrayView_toFloat".}
proc fcQByteArrayView_toDouble(self: pointer, ): float64 {.importc: "QByteArrayView_toDouble".}
proc fcQByteArrayView_startsWith(self: pointer, other: pointer): bool {.importc: "QByteArrayView_startsWith".}
proc fcQByteArrayView_startsWithWithChar(self: pointer, c: cchar): bool {.importc: "QByteArrayView_startsWithWithChar".}
proc fcQByteArrayView_endsWith(self: pointer, other: pointer): bool {.importc: "QByteArrayView_endsWith".}
proc fcQByteArrayView_endsWithWithChar(self: pointer, c: cchar): bool {.importc: "QByteArrayView_endsWithWithChar".}
proc fcQByteArrayView_indexOf(self: pointer, a: pointer): int64 {.importc: "QByteArrayView_indexOf".}
proc fcQByteArrayView_indexOfWithCh(self: pointer, ch: cchar): int64 {.importc: "QByteArrayView_indexOfWithCh".}
proc fcQByteArrayView_contains(self: pointer, a: pointer): bool {.importc: "QByteArrayView_contains".}
proc fcQByteArrayView_containsWithChar(self: pointer, c: cchar): bool {.importc: "QByteArrayView_containsWithChar".}
proc fcQByteArrayView_lastIndexOf(self: pointer, a: pointer): int64 {.importc: "QByteArrayView_lastIndexOf".}
proc fcQByteArrayView_lastIndexOf2(self: pointer, a: pointer, fromVal: int64): int64 {.importc: "QByteArrayView_lastIndexOf2".}
proc fcQByteArrayView_lastIndexOfWithCh(self: pointer, ch: cchar): int64 {.importc: "QByteArrayView_lastIndexOfWithCh".}
proc fcQByteArrayView_count(self: pointer, a: pointer): int64 {.importc: "QByteArrayView_count".}
proc fcQByteArrayView_countWithCh(self: pointer, ch: cchar): int64 {.importc: "QByteArrayView_countWithCh".}
proc fcQByteArrayView_compare(self: pointer, a: pointer): cint {.importc: "QByteArrayView_compare".}
proc fcQByteArrayView_isValidUtf8(self: pointer, ): bool {.importc: "QByteArrayView_isValidUtf8".}
proc fcQByteArrayView_begin(self: pointer, ): cstring {.importc: "QByteArrayView_begin".}
proc fcQByteArrayView_endX(self: pointer, ): cstring {.importc: "QByteArrayView_end".}
proc fcQByteArrayView_cbegin(self: pointer, ): cstring {.importc: "QByteArrayView_cbegin".}
proc fcQByteArrayView_cend(self: pointer, ): cstring {.importc: "QByteArrayView_cend".}
proc fcQByteArrayView_empty(self: pointer, ): bool {.importc: "QByteArrayView_empty".}
proc fcQByteArrayView_front(self: pointer, ): cchar {.importc: "QByteArrayView_front".}
proc fcQByteArrayView_back(self: pointer, ): cchar {.importc: "QByteArrayView_back".}
proc fcQByteArrayView_isNull(self: pointer, ): bool {.importc: "QByteArrayView_isNull".}
proc fcQByteArrayView_isEmpty(self: pointer, ): bool {.importc: "QByteArrayView_isEmpty".}
proc fcQByteArrayView_length(self: pointer, ): int64 {.importc: "QByteArrayView_length".}
proc fcQByteArrayView_first2(self: pointer, ): cchar {.importc: "QByteArrayView_first2".}
proc fcQByteArrayView_last2(self: pointer, ): cchar {.importc: "QByteArrayView_last2".}
proc fcQByteArrayView_toShort1(self: pointer, ok: ptr bool): cshort {.importc: "QByteArrayView_toShort1".}
proc fcQByteArrayView_toShort2(self: pointer, ok: ptr bool, base: cint): cshort {.importc: "QByteArrayView_toShort2".}
proc fcQByteArrayView_toUShort1(self: pointer, ok: ptr bool): cushort {.importc: "QByteArrayView_toUShort1".}
proc fcQByteArrayView_toUShort2(self: pointer, ok: ptr bool, base: cint): cushort {.importc: "QByteArrayView_toUShort2".}
proc fcQByteArrayView_toInt1(self: pointer, ok: ptr bool): cint {.importc: "QByteArrayView_toInt1".}
proc fcQByteArrayView_toInt2(self: pointer, ok: ptr bool, base: cint): cint {.importc: "QByteArrayView_toInt2".}
proc fcQByteArrayView_toUInt1(self: pointer, ok: ptr bool): cuint {.importc: "QByteArrayView_toUInt1".}
proc fcQByteArrayView_toUInt2(self: pointer, ok: ptr bool, base: cint): cuint {.importc: "QByteArrayView_toUInt2".}
proc fcQByteArrayView_toLong1(self: pointer, ok: ptr bool): clong {.importc: "QByteArrayView_toLong1".}
proc fcQByteArrayView_toLong2(self: pointer, ok: ptr bool, base: cint): clong {.importc: "QByteArrayView_toLong2".}
proc fcQByteArrayView_toULong1(self: pointer, ok: ptr bool): culong {.importc: "QByteArrayView_toULong1".}
proc fcQByteArrayView_toULong2(self: pointer, ok: ptr bool, base: cint): culong {.importc: "QByteArrayView_toULong2".}
proc fcQByteArrayView_toLongLong1(self: pointer, ok: ptr bool): clonglong {.importc: "QByteArrayView_toLongLong1".}
proc fcQByteArrayView_toLongLong2(self: pointer, ok: ptr bool, base: cint): clonglong {.importc: "QByteArrayView_toLongLong2".}
proc fcQByteArrayView_toULongLong1(self: pointer, ok: ptr bool): culonglong {.importc: "QByteArrayView_toULongLong1".}
proc fcQByteArrayView_toULongLong2(self: pointer, ok: ptr bool, base: cint): culonglong {.importc: "QByteArrayView_toULongLong2".}
proc fcQByteArrayView_toFloat1(self: pointer, ok: ptr bool): float32 {.importc: "QByteArrayView_toFloat1".}
proc fcQByteArrayView_toDouble1(self: pointer, ok: ptr bool): float64 {.importc: "QByteArrayView_toDouble1".}
proc fcQByteArrayView_indexOf2(self: pointer, a: pointer, fromVal: int64): int64 {.importc: "QByteArrayView_indexOf2".}
proc fcQByteArrayView_indexOf22(self: pointer, ch: cchar, fromVal: int64): int64 {.importc: "QByteArrayView_indexOf22".}
proc fcQByteArrayView_lastIndexOf22(self: pointer, ch: cchar, fromVal: int64): int64 {.importc: "QByteArrayView_lastIndexOf22".}
proc fcQByteArrayView_compare2(self: pointer, a: pointer, cs: cint): cint {.importc: "QByteArrayView_compare2".}
proc fcQByteArrayView_delete(self: pointer) {.importc: "QByteArrayView_delete".}


func init*(T: type gen_qbytearrayview_types.QByteArrayView, h: ptr cQByteArrayView): gen_qbytearrayview_types.QByteArrayView =
  T(h: h)
proc create*(T: type gen_qbytearrayview_types.QByteArrayView, ): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView.init(fcQByteArrayView_new())

proc create*(T: type gen_qbytearrayview_types.QByteArrayView, param1: gen_qbytearrayview_types.QByteArrayView): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView.init(fcQByteArrayView_new2(param1.h))

proc toByteArray*(self: gen_qbytearrayview_types.QByteArrayView, ): seq[byte] =
  var v_bytearray = fcQByteArrayView_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc size*(self: gen_qbytearrayview_types.QByteArrayView, ): int64 =
  fcQByteArrayView_size(self.h)

proc data*(self: gen_qbytearrayview_types.QByteArrayView, ): cstring =
  (fcQByteArrayView_data(self.h))

proc constData*(self: gen_qbytearrayview_types.QByteArrayView, ): cstring =
  (fcQByteArrayView_constData(self.h))

proc operatorSubscript*(self: gen_qbytearrayview_types.QByteArrayView, n: int64): cchar =
  fcQByteArrayView_operatorSubscript(self.h, n)

proc at*(self: gen_qbytearrayview_types.QByteArrayView, n: int64): cchar =
  fcQByteArrayView_at(self.h, n)

proc first*(self: gen_qbytearrayview_types.QByteArrayView, n: int64): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView(h: fcQByteArrayView_first(self.h, n))

proc last*(self: gen_qbytearrayview_types.QByteArrayView, n: int64): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView(h: fcQByteArrayView_last(self.h, n))

proc sliced*(self: gen_qbytearrayview_types.QByteArrayView, pos: int64): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView(h: fcQByteArrayView_sliced(self.h, pos))

proc sliced*(self: gen_qbytearrayview_types.QByteArrayView, pos: int64, n: int64): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView(h: fcQByteArrayView_sliced2(self.h, pos, n))

proc chopped*(self: gen_qbytearrayview_types.QByteArrayView, len: int64): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView(h: fcQByteArrayView_chopped(self.h, len))

proc truncate*(self: gen_qbytearrayview_types.QByteArrayView, n: int64): void =
  fcQByteArrayView_truncate(self.h, n)

proc chop*(self: gen_qbytearrayview_types.QByteArrayView, n: int64): void =
  fcQByteArrayView_chop(self.h, n)

proc trimmed*(self: gen_qbytearrayview_types.QByteArrayView, ): gen_qbytearrayview_types.QByteArrayView =
  gen_qbytearrayview_types.QByteArrayView(h: fcQByteArrayView_trimmed(self.h))

proc toShort*(self: gen_qbytearrayview_types.QByteArrayView, ): cshort =
  fcQByteArrayView_toShort(self.h)

proc toUShort*(self: gen_qbytearrayview_types.QByteArrayView, ): cushort =
  fcQByteArrayView_toUShort(self.h)

proc toInt*(self: gen_qbytearrayview_types.QByteArrayView, ): cint =
  fcQByteArrayView_toInt(self.h)

proc toUInt*(self: gen_qbytearrayview_types.QByteArrayView, ): cuint =
  fcQByteArrayView_toUInt(self.h)

proc toLong*(self: gen_qbytearrayview_types.QByteArrayView, ): clong =
  fcQByteArrayView_toLong(self.h)

proc toULong*(self: gen_qbytearrayview_types.QByteArrayView, ): culong =
  fcQByteArrayView_toULong(self.h)

proc toLongLong*(self: gen_qbytearrayview_types.QByteArrayView, ): clonglong =
  fcQByteArrayView_toLongLong(self.h)

proc toULongLong*(self: gen_qbytearrayview_types.QByteArrayView, ): culonglong =
  fcQByteArrayView_toULongLong(self.h)

proc toFloat*(self: gen_qbytearrayview_types.QByteArrayView, ): float32 =
  fcQByteArrayView_toFloat(self.h)

proc toDouble*(self: gen_qbytearrayview_types.QByteArrayView, ): float64 =
  fcQByteArrayView_toDouble(self.h)

proc startsWith*(self: gen_qbytearrayview_types.QByteArrayView, other: gen_qbytearrayview_types.QByteArrayView): bool =
  fcQByteArrayView_startsWith(self.h, other.h)

proc startsWith*(self: gen_qbytearrayview_types.QByteArrayView, c: cchar): bool =
  fcQByteArrayView_startsWithWithChar(self.h, c)

proc endsWith*(self: gen_qbytearrayview_types.QByteArrayView, other: gen_qbytearrayview_types.QByteArrayView): bool =
  fcQByteArrayView_endsWith(self.h, other.h)

proc endsWith*(self: gen_qbytearrayview_types.QByteArrayView, c: cchar): bool =
  fcQByteArrayView_endsWithWithChar(self.h, c)

proc indexOf*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView): int64 =
  fcQByteArrayView_indexOf(self.h, a.h)

proc indexOf*(self: gen_qbytearrayview_types.QByteArrayView, ch: cchar): int64 =
  fcQByteArrayView_indexOfWithCh(self.h, ch)

proc contains*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView): bool =
  fcQByteArrayView_contains(self.h, a.h)

proc contains*(self: gen_qbytearrayview_types.QByteArrayView, c: cchar): bool =
  fcQByteArrayView_containsWithChar(self.h, c)

proc lastIndexOf*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView): int64 =
  fcQByteArrayView_lastIndexOf(self.h, a.h)

proc lastIndexOf*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView, fromVal: int64): int64 =
  fcQByteArrayView_lastIndexOf2(self.h, a.h, fromVal)

proc lastIndexOf*(self: gen_qbytearrayview_types.QByteArrayView, ch: cchar): int64 =
  fcQByteArrayView_lastIndexOfWithCh(self.h, ch)

proc count*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView): int64 =
  fcQByteArrayView_count(self.h, a.h)

proc count*(self: gen_qbytearrayview_types.QByteArrayView, ch: cchar): int64 =
  fcQByteArrayView_countWithCh(self.h, ch)

proc compare*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView): cint =
  fcQByteArrayView_compare(self.h, a.h)

proc isValidUtf8*(self: gen_qbytearrayview_types.QByteArrayView, ): bool =
  fcQByteArrayView_isValidUtf8(self.h)

proc begin*(self: gen_qbytearrayview_types.QByteArrayView, ): cstring =
  (fcQByteArrayView_begin(self.h))

proc endX*(self: gen_qbytearrayview_types.QByteArrayView, ): cstring =
  (fcQByteArrayView_endX(self.h))

proc cbegin*(self: gen_qbytearrayview_types.QByteArrayView, ): cstring =
  (fcQByteArrayView_cbegin(self.h))

proc cend*(self: gen_qbytearrayview_types.QByteArrayView, ): cstring =
  (fcQByteArrayView_cend(self.h))

proc empty*(self: gen_qbytearrayview_types.QByteArrayView, ): bool =
  fcQByteArrayView_empty(self.h)

proc front*(self: gen_qbytearrayview_types.QByteArrayView, ): cchar =
  fcQByteArrayView_front(self.h)

proc back*(self: gen_qbytearrayview_types.QByteArrayView, ): cchar =
  fcQByteArrayView_back(self.h)

proc isNull*(self: gen_qbytearrayview_types.QByteArrayView, ): bool =
  fcQByteArrayView_isNull(self.h)

proc isEmpty*(self: gen_qbytearrayview_types.QByteArrayView, ): bool =
  fcQByteArrayView_isEmpty(self.h)

proc length*(self: gen_qbytearrayview_types.QByteArrayView, ): int64 =
  fcQByteArrayView_length(self.h)

proc first*(self: gen_qbytearrayview_types.QByteArrayView, ): cchar =
  fcQByteArrayView_first2(self.h)

proc last*(self: gen_qbytearrayview_types.QByteArrayView, ): cchar =
  fcQByteArrayView_last2(self.h)

proc toShort*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): cshort =
  fcQByteArrayView_toShort1(self.h, ok)

proc toShort*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): cshort =
  fcQByteArrayView_toShort2(self.h, ok, base)

proc toUShort*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): cushort =
  fcQByteArrayView_toUShort1(self.h, ok)

proc toUShort*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): cushort =
  fcQByteArrayView_toUShort2(self.h, ok, base)

proc toInt*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): cint =
  fcQByteArrayView_toInt1(self.h, ok)

proc toInt*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): cint =
  fcQByteArrayView_toInt2(self.h, ok, base)

proc toUInt*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): cuint =
  fcQByteArrayView_toUInt1(self.h, ok)

proc toUInt*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): cuint =
  fcQByteArrayView_toUInt2(self.h, ok, base)

proc toLong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): clong =
  fcQByteArrayView_toLong1(self.h, ok)

proc toLong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): clong =
  fcQByteArrayView_toLong2(self.h, ok, base)

proc toULong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): culong =
  fcQByteArrayView_toULong1(self.h, ok)

proc toULong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): culong =
  fcQByteArrayView_toULong2(self.h, ok, base)

proc toLongLong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): clonglong =
  fcQByteArrayView_toLongLong1(self.h, ok)

proc toLongLong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): clonglong =
  fcQByteArrayView_toLongLong2(self.h, ok, base)

proc toULongLong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): culonglong =
  fcQByteArrayView_toULongLong1(self.h, ok)

proc toULongLong*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool, base: cint): culonglong =
  fcQByteArrayView_toULongLong2(self.h, ok, base)

proc toFloat*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): float32 =
  fcQByteArrayView_toFloat1(self.h, ok)

proc toDouble*(self: gen_qbytearrayview_types.QByteArrayView, ok: ptr bool): float64 =
  fcQByteArrayView_toDouble1(self.h, ok)

proc indexOf*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView, fromVal: int64): int64 =
  fcQByteArrayView_indexOf2(self.h, a.h, fromVal)

proc indexOf*(self: gen_qbytearrayview_types.QByteArrayView, ch: cchar, fromVal: int64): int64 =
  fcQByteArrayView_indexOf22(self.h, ch, fromVal)

proc lastIndexOf*(self: gen_qbytearrayview_types.QByteArrayView, ch: cchar, fromVal: int64): int64 =
  fcQByteArrayView_lastIndexOf22(self.h, ch, fromVal)

proc compare*(self: gen_qbytearrayview_types.QByteArrayView, a: gen_qbytearrayview_types.QByteArrayView, cs: cint): cint =
  fcQByteArrayView_compare2(self.h, a.h, cint(cs))

proc delete*(self: gen_qbytearrayview_types.QByteArrayView) =
  fcQByteArrayView_delete(self.h)
