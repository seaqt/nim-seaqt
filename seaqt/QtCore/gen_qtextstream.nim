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


{.compile("gen_qtextstream.cpp", QtCoreCFlags).}


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
proc fcQTextStream_stringX(self: pointer): struct_seaqt_string {.importc: "QTextStream_string".}
proc fcQTextStream_status(self: pointer): cint {.importc: "QTextStream_status".}
proc fcQTextStream_setStatus(self: pointer, status: cint): void {.importc: "QTextStream_setStatus".}
proc fcQTextStream_resetStatus(self: pointer): void {.importc: "QTextStream_resetStatus".}
proc fcQTextStream_atEnd(self: pointer): bool {.importc: "QTextStream_atEnd".}
proc fcQTextStream_reset(self: pointer): void {.importc: "QTextStream_reset".}
proc fcQTextStream_flush(self: pointer): void {.importc: "QTextStream_flush".}
proc fcQTextStream_seek(self: pointer, pos: clonglong): bool {.importc: "QTextStream_seek".}
proc fcQTextStream_pos(self: pointer): clonglong {.importc: "QTextStream_pos".}
proc fcQTextStream_skipWhiteSpace(self: pointer): void {.importc: "QTextStream_skipWhiteSpace".}
proc fcQTextStream_readLine(self: pointer): struct_seaqt_string {.importc: "QTextStream_readLine".}
proc fcQTextStream_readAll(self: pointer): struct_seaqt_string {.importc: "QTextStream_readAll".}
proc fcQTextStream_read(self: pointer, maxlen: clonglong): struct_seaqt_string {.importc: "QTextStream_read".}
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
proc fcQTextStream_operatorShiftRight_QChar(self: pointer, ch: pointer): pointer {.importc: "QTextStream_operatorShiftRight_QChar".}
proc fcQTextStream_operatorShiftRightChar(self: pointer, ch: ptr cchar): pointer {.importc: "QTextStream_operatorShiftRight_char".}
proc fcQTextStream_operatorShiftRightShort(self: pointer, i: ptr cshort): pointer {.importc: "QTextStream_operatorShiftRight_short".}
proc fcQTextStream_operatorShiftRightUnsignedshort(self: pointer, i: ptr cushort): pointer {.importc: "QTextStream_operatorShiftRight_unsignedshort".}
proc fcQTextStream_operatorShiftRightInt(self: pointer, i: ptr cint): pointer {.importc: "QTextStream_operatorShiftRight_int".}
proc fcQTextStream_operatorShiftRightUnsignedint(self: pointer, i: ptr cuint): pointer {.importc: "QTextStream_operatorShiftRight_unsignedint".}
proc fcQTextStream_operatorShiftRightLong(self: pointer, i: ptr clong): pointer {.importc: "QTextStream_operatorShiftRight_long".}
proc fcQTextStream_operatorShiftRightUnsignedlong(self: pointer, i: ptr culong): pointer {.importc: "QTextStream_operatorShiftRight_unsignedlong".}
proc fcQTextStream_operatorShiftRightQlonglong(self: pointer, i: ptr clonglong): pointer {.importc: "QTextStream_operatorShiftRight_qlonglong".}
proc fcQTextStream_operatorShiftRightQulonglong(self: pointer, i: ptr culonglong): pointer {.importc: "QTextStream_operatorShiftRight_qulonglong".}
proc fcQTextStream_operatorShiftRightFloat(self: pointer, f: ptr float32): pointer {.importc: "QTextStream_operatorShiftRight_float".}
proc fcQTextStream_operatorShiftRightDouble(self: pointer, f: ptr float64): pointer {.importc: "QTextStream_operatorShiftRight_double".}
proc fcQTextStream_operatorShiftRight_QString(self: pointer, s: struct_seaqt_string): pointer {.importc: "QTextStream_operatorShiftRight_QString".}
proc fcQTextStream_operatorShiftRight_QByteArray(self: pointer, array: struct_seaqt_string): pointer {.importc: "QTextStream_operatorShiftRight_QByteArray".}
proc fcQTextStream_operatorShiftRightPchar(self: pointer, c: cstring): pointer {.importc: "QTextStream_operatorShiftRight_pchar".}
proc fcQTextStream_operatorShiftLeft_QChar(self: pointer, ch: pointer): pointer {.importc: "QTextStream_operatorShiftLeft_QChar".}
proc fcQTextStream_operatorShiftLeftChar(self: pointer, ch: cchar): pointer {.importc: "QTextStream_operatorShiftLeft_char".}
proc fcQTextStream_operatorShiftLeftShort(self: pointer, i: cshort): pointer {.importc: "QTextStream_operatorShiftLeft_short".}
proc fcQTextStream_operatorShiftLeftUnsignedshort(self: pointer, i: cushort): pointer {.importc: "QTextStream_operatorShiftLeft_unsignedshort".}
proc fcQTextStream_operatorShiftLeftInt(self: pointer, i: cint): pointer {.importc: "QTextStream_operatorShiftLeft_int".}
proc fcQTextStream_operatorShiftLeftUnsignedint(self: pointer, i: cuint): pointer {.importc: "QTextStream_operatorShiftLeft_unsignedint".}
proc fcQTextStream_operatorShiftLeftLong(self: pointer, i: clong): pointer {.importc: "QTextStream_operatorShiftLeft_long".}
proc fcQTextStream_operatorShiftLeftUnsignedlong(self: pointer, i: culong): pointer {.importc: "QTextStream_operatorShiftLeft_unsignedlong".}
proc fcQTextStream_operatorShiftLeftQlonglong(self: pointer, i: clonglong): pointer {.importc: "QTextStream_operatorShiftLeft_qlonglong".}
proc fcQTextStream_operatorShiftLeftQulonglong(self: pointer, i: culonglong): pointer {.importc: "QTextStream_operatorShiftLeft_qulonglong".}
proc fcQTextStream_operatorShiftLeftFloat(self: pointer, f: float32): pointer {.importc: "QTextStream_operatorShiftLeft_float".}
proc fcQTextStream_operatorShiftLeftDouble(self: pointer, f: float64): pointer {.importc: "QTextStream_operatorShiftLeft_double".}
proc fcQTextStream_operatorShiftLeftCQString(self: pointer, s: struct_seaqt_string): pointer {.importc: "QTextStream_operatorShiftLeft_cQString".}
proc fcQTextStream_operatorShiftLeftCQByteArray(self: pointer, array: struct_seaqt_string): pointer {.importc: "QTextStream_operatorShiftLeft_cQByteArray".}
proc fcQTextStream_operatorShiftLeftPcchar(self: pointer, c: cstring): pointer {.importc: "QTextStream_operatorShiftLeft_pcchar".}
proc fcQTextStream_operatorShiftLeftPcvoid(self: pointer, ptrVal: pointer): pointer {.importc: "QTextStream_operatorShiftLeft_pcvoid".}
proc fcQTextStream_ToBool(self: pointer): bool {.importc: "QTextStream_ToBool".}
proc fcQTextStream_readLineMaxlen(self: pointer, maxlen: clonglong): struct_seaqt_string {.importc: "QTextStream_readLine_maxlen".}
proc fcQTextStream_new(): ptr cQTextStream {.importc: "QTextStream_new".}
proc fcQTextStream_new2(device: pointer): ptr cQTextStream {.importc: "QTextStream_new_pQIODevice".}
proc fcQTextStream_new3(array: struct_seaqt_string): ptr cQTextStream {.importc: "QTextStream_new_cQByteArray".}
proc fcQTextStream_new4(array: struct_seaqt_string, openMode: cint): ptr cQTextStream {.importc: "QTextStream_new_cQByteArray_QIODeviceBase_OpenMode".}

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

proc stringX*(self: gen_qtextstream_types.QTextStream): string =
  let v_ms = fcQTextStream_stringX(self.h)
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
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRight_QChar(self.h, ch.h), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, ch: ptr cchar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightChar(self.h, ch), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cshort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightShort(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cushort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightUnsignedshort(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightInt(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr cuint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightUnsignedint(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr clong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightLong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr culong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightUnsignedlong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr clonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightQlonglong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, i: ptr culonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightQulonglong(self.h, i), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, f: ptr float32): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightFloat(self.h, f), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, f: ptr float64): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightDouble(self.h, f), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, s: openArray[char]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRight_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, array: openArray[byte]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRight_QByteArray(self.h, struct_seaqt_string(data: if len(array) > 0: addr array[0] else: nil, len: csize_t(len(array)))), owned: false)

proc operatorShiftRight*(self: gen_qtextstream_types.QTextStream, c: cstring): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftRightPchar(self.h, c), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, ch: gen_qchar_types.QChar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeft_QChar(self.h, ch.h), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, ch: cchar): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftChar(self.h, ch), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cshort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftShort(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cushort): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftUnsignedshort(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftInt(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: cuint): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftUnsignedint(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: clong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftLong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: culong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftUnsignedlong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: clonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftQlonglong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, i: culonglong): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftQulonglong(self.h, i), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, f: float32): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftFloat(self.h, f), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, f: float64): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftDouble(self.h, f), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, s: openArray[char]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftCQString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, array: openArray[byte]): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftCQByteArray(self.h, struct_seaqt_string(data: if len(array) > 0: addr array[0] else: nil, len: csize_t(len(array)))), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, c: cstring): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftPcchar(self.h, c), owned: false)

proc operatorShiftLeft*(self: gen_qtextstream_types.QTextStream, ptrVal: pointer): gen_qtextstream_types.QTextStream =
  gen_qtextstream_types.QTextStream(h: fcQTextStream_operatorShiftLeftPcvoid(self.h, ptrVal), owned: false)

proc ToBool*(self: gen_qtextstream_types.QTextStream): bool =
  fcQTextStream_ToBool(self.h)

proc readLine*(self: gen_qtextstream_types.QTextStream, maxlen: clonglong): string =
  let v_ms = fcQTextStream_readLineMaxlen(self.h, maxlen)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtextstream_types.QTextStream): gen_qtextstream_types.QTextStream =
  let tmp = gen_qtextstream_types.QTextStream(h: fcQTextStream_new(), owned: true)
  tmp
proc create*(T: type gen_qtextstream_types.QTextStream,
    device: gen_qiodevice_types.QIODevice): gen_qtextstream_types.QTextStream =
  let tmp = gen_qtextstream_types.QTextStream(h: fcQTextStream_new2(device.h), owned: true)
  tmp
proc create*(T: type gen_qtextstream_types.QTextStream,
    array: openArray[byte]): gen_qtextstream_types.QTextStream =
  let tmp = gen_qtextstream_types.QTextStream(h: fcQTextStream_new3(struct_seaqt_string(data: if len(array) > 0: addr array[0] else: nil, len: csize_t(len(array)))), owned: true)
  tmp
proc create*(T: type gen_qtextstream_types.QTextStream,
    array: openArray[byte], openMode: cint): gen_qtextstream_types.QTextStream =
  let tmp = gen_qtextstream_types.QTextStream(h: fcQTextStream_new4(struct_seaqt_string(data: if len(array) > 0: addr array[0] else: nil, len: csize_t(len(array))), cint(openMode)), owned: true)
  tmp
