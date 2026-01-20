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


type QTextCodecConversionFlagEnum* = distinct cint
template DefaultConversion*(_: type QTextCodecConversionFlagEnum): untyped = 0
template ConvertInvalidToNull*(_: type QTextCodecConversionFlagEnum): untyped = 2147483648
template IgnoreHeader*(_: type QTextCodecConversionFlagEnum): untyped = 1
template FreeFunction*(_: type QTextCodecConversionFlagEnum): untyped = 2


import ./gen_qtextcodec_types
export gen_qtextcodec_types

import
  ./gen_qchar_types
export
  gen_qchar_types

type cQTextCodec*{.exportc: "QTextCodec", incompleteStruct.} = object
type cQTextEncoder*{.exportc: "QTextEncoder", incompleteStruct.} = object
type cQTextDecoder*{.exportc: "QTextDecoder", incompleteStruct.} = object
type cQTextCodecConverterState*{.exportc: "QTextCodec__ConverterState", incompleteStruct.} = object

proc fcQTextCodec_codecForName_QByteArray(name: struct_seaqt_string): pointer {.importc: "QTextCodec_codecForName_QByteArray".}
proc fcQTextCodec_codecForNameChar(name: cstring): pointer {.importc: "QTextCodec_codecForName_char".}
proc fcQTextCodec_codecForMib(mib: cint): pointer {.importc: "QTextCodec_codecForMib".}
proc fcQTextCodec_availableCodecs(): struct_seaqt_array {.importc: "QTextCodec_availableCodecs".}
proc fcQTextCodec_availableMibs(): struct_seaqt_array {.importc: "QTextCodec_availableMibs".}
proc fcQTextCodec_codecForLocale(): pointer {.importc: "QTextCodec_codecForLocale".}
proc fcQTextCodec_setCodecForLocale(c: pointer): void {.importc: "QTextCodec_setCodecForLocale".}
proc fcQTextCodec_codecForHtmlBa(ba: struct_seaqt_string): pointer {.importc: "QTextCodec_codecForHtml_ba".}
proc fcQTextCodec_codecForHtmlBaDefaultCodec(ba: struct_seaqt_string, defaultCodec: pointer): pointer {.importc: "QTextCodec_codecForHtml_ba_defaultCodec".}
proc fcQTextCodec_codecForUtfTextBa(ba: struct_seaqt_string): pointer {.importc: "QTextCodec_codecForUtfText_ba".}
proc fcQTextCodec_codecForUtfTextBaDefaultCodec(ba: struct_seaqt_string, defaultCodec: pointer): pointer {.importc: "QTextCodec_codecForUtfText_ba_defaultCodec".}
proc fcQTextCodec_canEncode_QChar(self: pointer, param1: pointer): bool {.importc: "QTextCodec_canEncode_QChar".}
proc fcQTextCodec_canEncode_QString(self: pointer, param1: struct_seaqt_string): bool {.importc: "QTextCodec_canEncode_QString".}
proc fcQTextCodec_toUnicode_QByteArray(self: pointer, param1: struct_seaqt_string): struct_seaqt_string {.importc: "QTextCodec_toUnicode_QByteArray".}
proc fcQTextCodec_toUnicodeChar(self: pointer, chars: cstring): struct_seaqt_string {.importc: "QTextCodec_toUnicode_char".}
proc fcQTextCodec_fromUnicode_QString(self: pointer, uc: struct_seaqt_string): struct_seaqt_string {.importc: "QTextCodec_fromUnicode_QString".}
proc fcQTextCodec_toUnicodeCharInt(self: pointer, inVal: cstring, length: cint): struct_seaqt_string {.importc: "QTextCodec_toUnicode_char_int".}
proc fcQTextCodec_fromUnicode_QCharInt(self: pointer, inVal: pointer, length: cint): struct_seaqt_string {.importc: "QTextCodec_fromUnicode_QChar_int".}
proc fcQTextCodec_makeDecoder(self: pointer): pointer {.importc: "QTextCodec_makeDecoder".}
proc fcQTextCodec_makeEncoder(self: pointer): pointer {.importc: "QTextCodec_makeEncoder".}
proc fcQTextCodec_name(self: pointer): struct_seaqt_string {.importc: "QTextCodec_name".}
proc fcQTextCodec_aliases(self: pointer): struct_seaqt_array {.importc: "QTextCodec_aliases".}
proc fcQTextCodec_mibEnum(self: pointer): cint {.importc: "QTextCodec_mibEnum".}
proc fcQTextCodec_toUnicodeCharInt_QTextCodec_ConverterState(self: pointer, inVal: cstring, length: cint, state: pointer): struct_seaqt_string {.importc: "QTextCodec_toUnicode_char_int_QTextCodec_ConverterState".}
proc fcQTextCodec_fromUnicode_QCharInt_QTextCodec_ConverterState(self: pointer, inVal: pointer, length: cint, state: pointer): struct_seaqt_string {.importc: "QTextCodec_fromUnicode_QChar_int_QTextCodec_ConverterState".}
proc fcQTextCodec_makeDecoderFlags(self: pointer, flags: cint): pointer {.importc: "QTextCodec_makeDecoder_flags".}
proc fcQTextCodec_makeEncoderFlags(self: pointer, flags: cint): pointer {.importc: "QTextCodec_makeEncoder_flags".}
proc fcQTextEncoder_fromUnicode_QString(self: pointer, str: struct_seaqt_string): struct_seaqt_string {.importc: "QTextEncoder_fromUnicode_QString".}
proc fcQTextEncoder_fromUnicode_QCharInt(self: pointer, uc: pointer, len: cint): struct_seaqt_string {.importc: "QTextEncoder_fromUnicode_QChar_int".}
proc fcQTextEncoder_hasFailure(self: pointer): bool {.importc: "QTextEncoder_hasFailure".}
proc fcQTextEncoder_new(codec: pointer): ptr cQTextEncoder {.importc: "QTextEncoder_new_codec".}
proc fcQTextEncoder_new2(codec: pointer, flags: cint): ptr cQTextEncoder {.importc: "QTextEncoder_new_codec_flags".}
proc fcQTextDecoder_toUnicodeCharsLen(self: pointer, chars: cstring, len: cint): struct_seaqt_string {.importc: "QTextDecoder_toUnicode_chars_len".}
proc fcQTextDecoder_toUnicodeBa(self: pointer, ba: struct_seaqt_string): struct_seaqt_string {.importc: "QTextDecoder_toUnicode_ba".}
proc fcQTextDecoder_hasFailure(self: pointer): bool {.importc: "QTextDecoder_hasFailure".}
proc fcQTextDecoder_needsMoreData(self: pointer): bool {.importc: "QTextDecoder_needsMoreData".}
proc fcQTextDecoder_new(codec: pointer): ptr cQTextDecoder {.importc: "QTextDecoder_new_codec".}
proc fcQTextDecoder_new2(codec: pointer, flags: cint): ptr cQTextDecoder {.importc: "QTextDecoder_new_codec_flags".}
proc fcQTextCodecConverterState_flags(self: pointer): cint {.importc: "QTextCodec__ConverterState_flags".}
proc fcQTextCodecConverterState_setFlags(self: pointer, flags: cint): void {.importc: "QTextCodec__ConverterState_setFlags".}
proc fcQTextCodecConverterState_remainingChars(self: pointer): cint {.importc: "QTextCodec__ConverterState_remainingChars".}
proc fcQTextCodecConverterState_setRemainingChars(self: pointer, remainingChars: cint): void {.importc: "QTextCodec__ConverterState_setRemainingChars".}
proc fcQTextCodecConverterState_invalidChars(self: pointer): cint {.importc: "QTextCodec__ConverterState_invalidChars".}
proc fcQTextCodecConverterState_setInvalidChars(self: pointer, invalidChars: cint): void {.importc: "QTextCodec__ConverterState_setInvalidChars".}
proc fcQTextCodecConverterState_new(): ptr cQTextCodecConverterState {.importc: "QTextCodec__ConverterState_new".}
proc fcQTextCodecConverterState_new2(f: cint): ptr cQTextCodecConverterState {.importc: "QTextCodec__ConverterState_new_f".}

proc codecForName*(_: type gen_qtextcodec_types.QTextCodec, name: openArray[byte]): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForName_QByteArray(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc codecForName*(_: type gen_qtextcodec_types.QTextCodec, name: cstring): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForNameChar(name), owned: false)

proc codecForMib*(_: type gen_qtextcodec_types.QTextCodec, mib: cint): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForMib(mib), owned: false)

proc availableCodecs*(_: type gen_qtextcodec_types.QTextCodec): seq[seq[byte]] =
  var v_ma = fcQTextCodec_availableCodecs()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc availableMibs*(_: type gen_qtextcodec_types.QTextCodec): seq[cint] =
  var v_ma = fcQTextCodec_availableMibs()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc codecForLocale*(_: type gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForLocale(), owned: false)

proc setCodecForLocale*(_: type gen_qtextcodec_types.QTextCodec, c: gen_qtextcodec_types.QTextCodec): void =
  fcQTextCodec_setCodecForLocale(c.h)

proc codecForHtml*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte]): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForHtmlBa(struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba)))), owned: false)

proc codecForHtml*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte], defaultCodec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForHtmlBaDefaultCodec(struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba))), defaultCodec.h), owned: false)

proc codecForUtfText*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte]): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForUtfTextBa(struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba)))), owned: false)

proc codecForUtfText*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte], defaultCodec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForUtfTextBaDefaultCodec(struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba))), defaultCodec.h), owned: false)

proc canEncode*(self: gen_qtextcodec_types.QTextCodec, param1: gen_qchar_types.QChar): bool =
  fcQTextCodec_canEncode_QChar(self.h, param1.h)

proc canEncode*(self: gen_qtextcodec_types.QTextCodec, param1: openArray[char]): bool =
  fcQTextCodec_canEncode_QString(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, param1: openArray[byte]): string =
  let v_ms = fcQTextCodec_toUnicode_QByteArray(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, chars: cstring): string =
  let v_ms = fcQTextCodec_toUnicodeChar(self.h, chars)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextCodec, uc: openArray[char]): seq[byte] =
  var v_bytearray = fcQTextCodec_fromUnicode_QString(self.h, struct_seaqt_string(data: if len(uc) > 0: addr uc[0] else: nil, len: csize_t(len(uc))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: cstring, length: cint): string =
  let v_ms = fcQTextCodec_toUnicodeCharInt(self.h, inVal, length)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: gen_qchar_types.QChar, length: cint): seq[byte] =
  var v_bytearray = fcQTextCodec_fromUnicode_QCharInt(self.h, inVal.h, length)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc makeDecoder*(self: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextDecoder =
  gen_qtextcodec_types.QTextDecoder(h: fcQTextCodec_makeDecoder(self.h), owned: false)

proc makeEncoder*(self: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextEncoder =
  gen_qtextcodec_types.QTextEncoder(h: fcQTextCodec_makeEncoder(self.h), owned: false)

proc name*(self: gen_qtextcodec_types.QTextCodec): seq[byte] =
  var v_bytearray = fcQTextCodec_name(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc aliases*(self: gen_qtextcodec_types.QTextCodec): seq[seq[byte]] =
  var v_ma = fcQTextCodec_aliases(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mibEnum*(self: gen_qtextcodec_types.QTextCodec): cint =
  fcQTextCodec_mibEnum(self.h)

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: cstring, length: cint, state: gen_qtextcodec_types.QTextCodecConverterState): string =
  let v_ms = fcQTextCodec_toUnicodeCharInt_QTextCodec_ConverterState(self.h, inVal, length, state.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: gen_qchar_types.QChar, length: cint, state: gen_qtextcodec_types.QTextCodecConverterState): seq[byte] =
  var v_bytearray = fcQTextCodec_fromUnicode_QCharInt_QTextCodec_ConverterState(self.h, inVal.h, length, state.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc makeDecoder*(self: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextDecoder =
  gen_qtextcodec_types.QTextDecoder(h: fcQTextCodec_makeDecoderFlags(self.h, cint(flags)), owned: false)

proc makeEncoder*(self: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextEncoder =
  gen_qtextcodec_types.QTextEncoder(h: fcQTextCodec_makeEncoderFlags(self.h, cint(flags)), owned: false)

proc fromUnicode*(self: gen_qtextcodec_types.QTextEncoder, str: openArray[char]): seq[byte] =
  var v_bytearray = fcQTextEncoder_fromUnicode_QString(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextEncoder, uc: gen_qchar_types.QChar, len: cint): seq[byte] =
  var v_bytearray = fcQTextEncoder_fromUnicode_QCharInt(self.h, uc.h, len)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hasFailure*(self: gen_qtextcodec_types.QTextEncoder): bool =
  fcQTextEncoder_hasFailure(self.h)

proc create*(T: type gen_qtextcodec_types.QTextEncoder,
    codec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextEncoder =
  let tmp = gen_qtextcodec_types.QTextEncoder(h: fcQTextEncoder_new(codec.h), owned: true)
  tmp
proc create*(T: type gen_qtextcodec_types.QTextEncoder,
    codec: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextEncoder =
  let tmp = gen_qtextcodec_types.QTextEncoder(h: fcQTextEncoder_new2(codec.h, cint(flags)), owned: true)
  tmp
proc toUnicode*(self: gen_qtextcodec_types.QTextDecoder, chars: cstring, len: cint): string =
  let v_ms = fcQTextDecoder_toUnicodeCharsLen(self.h, chars, len)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toUnicode*(self: gen_qtextcodec_types.QTextDecoder, ba: openArray[byte]): string =
  let v_ms = fcQTextDecoder_toUnicodeBa(self.h, struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasFailure*(self: gen_qtextcodec_types.QTextDecoder): bool =
  fcQTextDecoder_hasFailure(self.h)

proc needsMoreData*(self: gen_qtextcodec_types.QTextDecoder): bool =
  fcQTextDecoder_needsMoreData(self.h)

proc create*(T: type gen_qtextcodec_types.QTextDecoder,
    codec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextDecoder =
  let tmp = gen_qtextcodec_types.QTextDecoder(h: fcQTextDecoder_new(codec.h), owned: true)
  tmp
proc create*(T: type gen_qtextcodec_types.QTextDecoder,
    codec: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextDecoder =
  let tmp = gen_qtextcodec_types.QTextDecoder(h: fcQTextDecoder_new2(codec.h, cint(flags)), owned: true)
  tmp
proc flags*(self: gen_qtextcodec_types.QTextCodecConverterState): cint =
  cint(fcQTextCodecConverterState_flags(self.h))

proc setFlags*(self: gen_qtextcodec_types.QTextCodecConverterState, flags: cint): void =
  fcQTextCodecConverterState_setFlags(self.h, cint(flags))

proc remainingChars*(self: gen_qtextcodec_types.QTextCodecConverterState): cint =
  fcQTextCodecConverterState_remainingChars(self.h)

proc setRemainingChars*(self: gen_qtextcodec_types.QTextCodecConverterState, remainingChars: cint): void =
  fcQTextCodecConverterState_setRemainingChars(self.h, remainingChars)

proc invalidChars*(self: gen_qtextcodec_types.QTextCodecConverterState): cint =
  fcQTextCodecConverterState_invalidChars(self.h)

proc setInvalidChars*(self: gen_qtextcodec_types.QTextCodecConverterState, invalidChars: cint): void =
  fcQTextCodecConverterState_setInvalidChars(self.h, invalidChars)

proc create*(T: type gen_qtextcodec_types.QTextCodecConverterState): gen_qtextcodec_types.QTextCodecConverterState =
  let tmp = gen_qtextcodec_types.QTextCodecConverterState(h: fcQTextCodecConverterState_new(), owned: true)
  tmp
proc create*(T: type gen_qtextcodec_types.QTextCodecConverterState,
    f: cint): gen_qtextcodec_types.QTextCodecConverterState =
  let tmp = gen_qtextcodec_types.QTextCodecConverterState(h: fcQTextCodecConverterState_new2(cint(f)), owned: true)
  tmp
