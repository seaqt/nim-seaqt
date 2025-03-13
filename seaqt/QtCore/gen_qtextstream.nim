import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qtextstream.cpp", cflags).}


type QTextStreamRealNumberNotationEnum* = distinct cint
template SmartNotation*(_: type QTextStreamRealNumberNotationEnum): untyped = 0
template FixedNotation*(_: type QTextStreamRealNumberNotationEnum): untyped = 1
template ScientificNotation*(_: type QTextStreamRealNumberNotationEnum): untyped = 2


type QTextStreamFieldAlignmentEnum* = distinct cint
template AlignLeft*(_: type QTextStreamFieldAlignmentEnum): untyped = 0
template AlignRight*(_: type QTextStreamFieldAlignmentEnum): untyped = 1
template AlignCenter*(_: type QTextStreamFieldAlignmentEnum): untyped = 2
template AlignAccountingStyle*(_: type QTextStreamFieldAlignmentEnum): untyped = 3


type QTextStreamStatusEnum* = distinct cint
template Ok*(_: type QTextStreamStatusEnum): untyped = 0
template ReadPastEnd*(_: type QTextStreamStatusEnum): untyped = 1
template ReadCorruptData*(_: type QTextStreamStatusEnum): untyped = 2
template WriteFailed*(_: type QTextStreamStatusEnum): untyped = 3


type QTextStreamNumberFlagEnum* = distinct cint
template ShowBase*(_: type QTextStreamNumberFlagEnum): untyped = 1
template ForcePoint*(_: type QTextStreamNumberFlagEnum): untyped = 2
template ForceSign*(_: type QTextStreamNumberFlagEnum): untyped = 4
template UppercaseBase*(_: type QTextStreamNumberFlagEnum): untyped = 8
template UppercaseDigits*(_: type QTextStreamNumberFlagEnum): untyped = 16


import ./gen_qtextstream_types
export gen_qtextstream_types

import
  ./gen_qchar_types,
  ./gen_qiodevice_types,
  ./gen_qiodevicebase,
  ./gen_qlocale_types
export
  gen_qchar_types,
  gen_qiodevice_types,
  gen_qiodevicebase,
  gen_qlocale_types

type cQTextStream*{.exportc: "QTextStream", incompleteStruct.} = object

proc fcQTextStream_setEncoding(self: pointer, encoding: cint): void {.importc: "QTextStream_setEncoding".}
proc fcQTextStream_encoding(self: pointer): cint {.importc: "QTextStream_encoding".}
proc fcQTextStream_setAutoDetectUnicode(self: pointer, enabled: bool): void {.importc: "QTextStream_setAutoDetectUnicode".}
proc fcQTextStream_autoDetectUnicode(self: pointer): bool {.importc: "QTextStream_autoDetectUnicode".}
proc fcQTextStream_setGenerateByteOrderMark(self: pointer, generate: bool): void {.importc: "QTextStream_setGenerateByteOrderMark".}
proc fcQTextStream_generateByteOrderMark(self: pointer): bool {.importc: "QTextStream_generateByteOrderMark".}
proc fcQTextStream_setLocale(self: pointer, locale: pointer): void {.importc: "QTextStream_setLocale".}
proc fcQTextStream_locale(self: pointer): pointer {.importc: "QTextStream_locale".}
proc fcQTextStream_setDevice(self: pointer, device: pointer): void {.importc: "QTextStream_setDevice".}
proc fcQTextStream_device(self: pointer): pointer {.importc: "QTextStream_device".}
proc fcQTextStream_string(self: pointer): struct_miqt_string {.importc: "QTextStream_string".}
proc fcQTextStream_status(self: pointer): cint {.importc: "QTextStream_status".}
proc fcQTextStream_setStatus(self: pointer, status: cint): void {.importc: "QTextStream_setStatus".}
proc fcQTextStream_resetStatus(self: pointer): void {.importc: "QTextStream_resetStatus".}
proc fcQTextStream_atEnd(self: pointer): bool {.importc: "QTextStream_atEnd".}
proc fcQTextStream_reset(self: pointer): void {.importc: "QTextStream_reset".}
proc fcQTextStream_flush(self: pointer): void {.importc: "QTextStream_flush".}
proc fcQTextStream_seek(self: pointer, pos: clonglong): bool {.importc: "QTextStream_seek".}
proc fcQTextStream_pos(self: pointer): clonglong {.importc: "QTextStream_pos".}
proc fcQTextStream_skipWhiteSpace(self: pointer): void {.importc: "QTextStream_skipWhiteSpace".}
proc fcQTextStream_readLine(self: pointer): struct_miqt_string {.importc: "QTextStream_readLine".}
proc fcQTextStream_readAll(self: pointer): struct_miqt_string {.importc: "QTextStream_readAll".}
proc fcQTextStream_read(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QTextStream_read".}
proc fcQTextStream_setFieldAlignment(self: pointer, alignment: cint): void {.importc: "QTextStream_setFieldAlignment".}
proc fcQTextStream_fieldAlignment(self: pointer): cint {.importc: "QTextStream_fieldAlignment".}
proc fcQTextStream_setPadChar(self: pointer, ch: pointer): void {.importc: "QTextStream_setPadChar".}
proc fcQTextStream_padChar(self: pointer): pointer {.importc: "QTextStream_padChar".}
proc fcQTextStream_setFieldWidth(self: pointer, width: cint): void {.importc: "QTextStream_setFieldWidth".}
proc fcQTextStream_fieldWidth(self: pointer): cint {.importc: "QTextStream_fieldWidth".}
proc fcQTextStream_setNumberFlags(self: pointer, flags: cint): void {.importc: "QTextStream_setNumberFlags".}
proc fcQTextStream_numberFlags(self: pointer): cint {.importc: "QTextStream_numberFlags".}
proc fcQTextStream_setIntegerBase(self: pointer, base: cint): void {.importc: "QTextStream_setIntegerBase".}
proc fcQTextStream_integerBase(self: pointer): cint {.importc: "QTextStream_integerBase".}
proc fcQTextStream_setRealNumberNotation(self: pointer, notation: cint): void {.importc: "QTextStream_setRealNumberNotation".}
proc fcQTextStream_realNumberNotation(self: pointer): cint {.importc: "QTextStream_realNumberNotation".}
proc fcQTextStream_setRealNumberPrecision(self: pointer, precision: cint): void {.importc: "QTextStream_setRealNumberPrecision".}
proc fcQTextStream_realNumberPrecision(self: pointer): cint {.importc: "QTextStream_realNumberPrecision".}
proc fcQTextStream_operatorShiftRight(self: pointer, ch: pointer): pointer {.importc: "QTextStream_operatorShiftRight".}
proc fcQTextStream_operatorShiftRightWithCh(self: pointer, ch: ptr cchar): pointer {.importc: "QTextStream_operatorShiftRightWithCh".}
proc fcQTextStream_operatorShiftRightWithShort(self: pointer, i: ptr cshort): pointer {.importc: "QTextStream_operatorShiftRightWithShort".}
proc fcQTextStream_operatorShiftRightWithUnsignedshort(self: pointer, i: ptr cushort): pointer {.importc: "QTextStream_operatorShiftRightWithUnsignedshort".}
proc fcQTextStream_operatorShiftRightWithInt(self: pointer, i: ptr cint): pointer {.importc: "QTextStream_operatorShiftRightWithInt".}
proc fcQTextStream_operatorShiftRightWithUnsignedint(self: pointer, i: ptr cuint): pointer {.importc: "QTextStream_operatorShiftRightWithUnsignedint".}
proc fcQTextStream_operatorShiftRightWithLong(self: pointer, i: ptr clong): pointer {.importc: "QTextStream_operatorShiftRightWithLong".}
proc fcQTextStream_operatorShiftRightWithUnsignedlong(self: pointer, i: ptr culong): pointer {.importc: "QTextStream_operatorShiftRightWithUnsignedlong".}
proc fcQTextStream_operatorShiftRightWithQlonglong(self: pointer, i: ptr clonglong): pointer {.importc: "QTextStream_operatorShiftRightWithQlonglong".}
proc fcQTextStream_operatorShiftRightWithQulonglong(self: pointer, i: ptr culonglong): pointer {.importc: "QTextStream_operatorShiftRightWithQulonglong".}
proc fcQTextStream_operatorShiftRightWithFloat(self: pointer, f: ptr float32): pointer {.importc: "QTextStream_operatorShiftRightWithFloat".}
proc fcQTextStream_operatorShiftRightWithDouble(self: pointer, f: ptr float64): pointer {.importc: "QTextStream_operatorShiftRightWithDouble".}
proc fcQTextStream_operatorShiftRightWithQString(self: pointer, s: struct_miqt_string): pointer {.importc: "QTextStream_operatorShiftRightWithQString".}
proc fcQTextStream_operatorShiftRightWithArray(self: pointer, array: struct_miqt_string): pointer {.importc: "QTextStream_operatorShiftRightWithArray".}
proc fcQTextStream_operatorShiftRightWithChar(self: pointer, c: cstring): pointer {.importc: "QTextStream_operatorShiftRightWithChar".}
proc fcQTextStream_operatorShiftLeft(self: pointer, ch: pointer): pointer {.importc: "QTextStream_operatorShiftLeft".}
proc fcQTextStream_operatorShiftLeftWithCh(self: pointer, ch: cchar): pointer {.importc: "QTextStream_operatorShiftLeftWithCh".}
proc fcQTextStream_operatorShiftLeftWithShort(self: pointer, i: cshort): pointer {.importc: "QTextStream_operatorShiftLeftWithShort".}
proc fcQTextStream_operatorShiftLeftWithUnsignedshort(self: pointer, i: cushort): pointer {.importc: "QTextStream_operatorShiftLeftWithUnsignedshort".}
proc fcQTextStream_operatorShiftLeftWithInt(self: pointer, i: cint): pointer {.importc: "QTextStream_operatorShiftLeftWithInt".}
proc fcQTextStream_operatorShiftLeftWithUnsignedint(self: pointer, i: cuint): pointer {.importc: "QTextStream_operatorShiftLeftWithUnsignedint".}
proc fcQTextStream_operatorShiftLeftWithLong(self: pointer, i: clong): pointer {.importc: "QTextStream_operatorShiftLeftWithLong".}
proc fcQTextStream_operatorShiftLeftWithUnsignedlong(self: pointer, i: culong): pointer {.importc: "QTextStream_operatorShiftLeftWithUnsignedlong".}
proc fcQTextStream_operatorShiftLeftWithQlonglong(self: pointer, i: clonglong): pointer {.importc: "QTextStream_operatorShiftLeftWithQlonglong".}
proc fcQTextStream_operatorShiftLeftWithQulonglong(self: pointer, i: culonglong): pointer {.importc: "QTextStream_operatorShiftLeftWithQulonglong".}
proc fcQTextStream_operatorShiftLeftWithFloat(self: pointer, f: float32): pointer {.importc: "QTextStream_operatorShiftLeftWithFloat".}
proc fcQTextStream_operatorShiftLeftWithDouble(self: pointer, f: float64): pointer {.importc: "QTextStream_operatorShiftLeftWithDouble".}
proc fcQTextStream_operatorShiftLeftWithQString(self: pointer, s: struct_miqt_string): pointer {.importc: "QTextStream_operatorShiftLeftWithQString".}
proc fcQTextStream_operatorShiftLeftWithArray(self: pointer, array: struct_miqt_string): pointer {.importc: "QTextStream_operatorShiftLeftWithArray".}
proc fcQTextStream_operatorShiftLeftWithChar(self: pointer, c: cstring): pointer {.importc: "QTextStream_operatorShiftLeftWithChar".}
proc fcQTextStream_operatorShiftLeftWithPtr(self: pointer, ptrVal: pointer): pointer {.importc: "QTextStream_operatorShiftLeftWithPtr".}
proc fcQTextStream_readLine1(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QTextStream_readLine1".}
proc fcQTextStream_new(): ptr cQTextStream {.importc: "QTextStream_new".}
proc fcQTextStream_new2(device: pointer): ptr cQTextStream {.importc: "QTextStream_new2".}
proc fcQTextStream_new3(array: struct_miqt_string): ptr cQTextStream {.importc: "QTextStream_new3".}
proc fcQTextStream_new4(array: struct_miqt_string, openMode: cint): ptr cQTextStream {.importc: "QTextStream_new4".}

proc setEncoding*(self: gen_qtextstream_types.QTextStream, encoding: cint): void =
  fcQTextStream_setEncoding(self.h, cint(encoding))

proc encoding*(self: gen_qtextstream_types.QTextStream): cint =
  cint(fcQTextStream_encoding(self.h))

proc setAutoDetectUnicode*(self: gen_qtextstream_types.QTextStream, enabled: bool): void =
  fcQTextStream_setAutoDetectUnicode(self.h, enabled)

proc autoDetectUnicode*(self: gen_qtextstream_types.QTextStream): bool =
  fcQTextStream_autoDetectUnicode(self.h)

proc setGenerateByteOrderMark*(self: gen_qtextstream_types.QTextStream, generate: bool): void =
  fcQTextStream_setGenerateByteOrderMark(self.h, generate)

proc generateByteOrderMark*(self: gen_qtextstream_types.QTextStream): bool =
  fcQTextStream_generateByteOrderMark(self.h)

proc setLocale*(self: gen_qtextstream_types.QTextStream, locale: gen_qlocale_types.QLocale): void =
  fcQTextStream_setLocale(self.h, locale.h)

proc locale*(self: gen_qtextstream_types.QTextStream): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQTextStream_locale(self.h), owned: true)

proc setDevice*(self: gen_qtextstream_types.QTextStream, device: gen_qiodevice_types.QIODevice): void =
  fcQTextStream_setDevice(self.h, device.h)

proc device*(self: gen_qtextstream_types.QTextStream): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQTextStream_device(self.h), owned: false)

proc string*(self: gen_qtextstream_types.QTextStream): string =
  let v_ms = fcQTextStream_string(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc status*(self: gen_qtextstream_types.QTextStream): cint =
  cint(fcQTextStream_status(self.h))

proc setStatus*(self: gen_qtextstream_types.QTextStream, status: cint): void =
  fcQTextStream_setStatus(self.h, cint(status))

proc resetStatus*(self: gen_qtextstream_types.QTextStream): void =
  fcQTextStream_resetStatus(self.h)

proc atEnd*(self: gen_qtextstream_types.QTextStream): bool =
  fcQTextStream_atEnd(self.h)

proc reset*(self: gen_qtextstream_types.QTextStream): void =
  fcQTextStream_reset(self.h)

proc flush*(self: gen_qtextstream_types.QTextStream): void =
  fcQTextStream_flush(self.h)

proc seek*(self: gen_qtextstream_types.QTextStream, pos: clonglong): bool =
  fcQTextStream_seek(self.h, pos)

proc pos*(self: gen_qtextstream_types.QTextStream): clonglong =
  fcQTextStream_pos(self.h)

proc skipWhiteSpace*(self: gen_qtextstream_types.QTextStream): void =
  fcQTextStream_skipWhiteSpace(self.h)

proc readLine*(self: gen_qtextstream_types.QTextStream): string =
  let v_ms = fcQTextStream_readLine(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc readAll*(self: gen_qtextstream_types.QTextStream): string =
  let v_ms = fcQTextStream_readAll(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc read*(self: gen_qtextstream_types.QTextStream, maxlen: clonglong): string =
  let v_ms = fcQTextStream_read(self.h, maxlen)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFieldAlignment*(self: gen_qtextstream_types.QTextStream, alignment: cint): void =
  fcQTextStream_setFieldAlignment(self.h, cint(alignment))

proc fieldAlignment*(self: gen_qtextstream_types.QTextStream): cint =
  cint(fcQTextStream_fieldAlignment(self.h))

proc setPadChar*(self: gen_qtextstream_types.QTextStream, ch: gen_qchar_types.QChar): void =
  fcQTextStream_setPadChar(self.h, ch.h)

proc padChar*(self: gen_qtextstream_types.QTextStream): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQTextStream_padChar(self.h), owned: true)

proc setFieldWidth*(self: gen_qtextstream_types.QTextStream, width: cint): void =
  fcQTextStream_setFieldWidth(self.h, width)

proc fieldWidth*(self: gen_qtextstream_types.QTextStream): cint =
  fcQTextStream_fieldWidth(self.h)

proc setNumberFlags*(self: gen_qtextstream_types.QTextStream, flags: cint): void =
  fcQTextStream_setNumberFlags(self.h, cint(flags))

proc numberFlags*(self: gen_qtextstream_types.QTextStream): cint =
  cint(fcQTextStream_numberFlags(self.h))

proc setIntegerBase*(self: gen_qtextstream_types.QTextStream, base: cint): void =
  fcQTextStream_setIntegerBase(self.h, base)

proc integerBase*(self: gen_qtextstream_types.QTextStream): cint =
  fcQTextStream_integerBase(self.h)

proc setRealNumberNotation*(self: gen_qtextstream_types.QTextStream, notation: cint): void =
  fcQTextStream_setRealNumberNotation(self.h, cint(notation))

proc realNumberNotation*(self: gen_qtextstream_types.QTextStream): cint =
  cint(fcQTextStream_realNumberNotation(self.h))

proc setRealNumberPrecision*(self: gen_qtextstream_types.QTextStream, precision: cint): void =
  fcQTextStream_setRealNumberPrecision(self.h, precision)

proc realNumberPrecision*(self: gen_qtextstream_types.QTextStream): cint =
  fcQTextStream_realNumberPrecision(self.h)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, ch: gen_qchar_types.QChar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRight(self.h, ch.h), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, ch: ptr cchar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithCh(self.h, ch), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cshort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithShort(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cushort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithUnsignedshort(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithInt(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cuint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithUnsignedint(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr clong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithLong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr culong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithUnsignedlong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr clonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithQlonglong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr culonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithQulonglong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, f: ptr float32): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithFloat(self.h, f), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, f: ptr float64): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithDouble(self.h, f), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, s: openArray[char]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithQString(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, array: openArray[byte]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithArray(self.h, struct_miqt_string(data: cast[cstring](if len(array) == 0: nil else: unsafeAddr array[0]), len: csize_t(len(array)))), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, c: cstring): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightWithChar(self.h, c), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, ch: gen_qchar_types.QChar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeft(self.h, ch.h), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, ch: cchar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithCh(self.h, ch), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cshort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithShort(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cushort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithUnsignedshort(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithInt(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cuint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithUnsignedint(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: clong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithLong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: culong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithUnsignedlong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: clonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithQlonglong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: culonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithQulonglong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, f: float32): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithFloat(self.h, f), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, f: float64): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithDouble(self.h, f), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, s: openArray[char]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithQString(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, array: openArray[byte]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithArray(self.h, struct_miqt_string(data: cast[cstring](if len(array) == 0: nil else: unsafeAddr array[0]), len: csize_t(len(array)))), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, c: cstring): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithChar(self.h, c), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, ptrVal: pointer): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftWithPtr(self.h, ptrVal), owned: false)

proc readLine*(self: gen_qtextstream_types.QTextStream, maxlen: clonglong): string =
  let v_ms = fcQTextStream_readLine1(self.h, maxlen)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtextstream_types.QTextStream): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_new(), owned: true)

proc create*(T: type gen_qtextstream_types.QTextStream,
    device: gen_qiodevice_types.QIODevice): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_new2(device.h), owned: true)

proc create*(T: type gen_qtextstream_types.QTextStream,
    array: openArray[byte]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_new3(struct_miqt_string(data: cast[cstring](if len(array) == 0: nil else: unsafeAddr array[0]), len: csize_t(len(array)))), owned: true)

proc create*(T: type gen_qtextstream_types.QTextStream,
    array: openArray[byte], openMode: cint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_new4(struct_miqt_string(data: cast[cstring](if len(array) == 0: nil else: unsafeAddr array[0]), len: csize_t(len(array))), cint(openMode)), owned: true)

