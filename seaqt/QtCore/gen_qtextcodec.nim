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

proc fcQTextCodec_codecForName(name: struct_miqt_string): pointer {.importc: "QTextCodec_codecForName".}
proc fcQTextCodec_codecForNameWithName(name: cstring): pointer {.importc: "QTextCodec_codecForNameWithName".}
proc fcQTextCodec_codecForMib(mib: cint): pointer {.importc: "QTextCodec_codecForMib".}
proc fcQTextCodec_availableCodecs(): struct_miqt_array {.importc: "QTextCodec_availableCodecs".}
proc fcQTextCodec_availableMibs(): struct_miqt_array {.importc: "QTextCodec_availableMibs".}
proc fcQTextCodec_codecForLocale(): pointer {.importc: "QTextCodec_codecForLocale".}
proc fcQTextCodec_setCodecForLocale(c: pointer): void {.importc: "QTextCodec_setCodecForLocale".}
proc fcQTextCodec_codecForHtml(ba: struct_miqt_string): pointer {.importc: "QTextCodec_codecForHtml".}
proc fcQTextCodec_codecForHtml2(ba: struct_miqt_string, defaultCodec: pointer): pointer {.importc: "QTextCodec_codecForHtml2".}
proc fcQTextCodec_codecForUtfText(ba: struct_miqt_string): pointer {.importc: "QTextCodec_codecForUtfText".}
proc fcQTextCodec_codecForUtfText2(ba: struct_miqt_string, defaultCodec: pointer): pointer {.importc: "QTextCodec_codecForUtfText2".}
proc fcQTextCodec_canEncode(self: pointer, param1: pointer): bool {.importc: "QTextCodec_canEncode".}
proc fcQTextCodec_canEncodeWithQString(self: pointer, param1: struct_miqt_string): bool {.importc: "QTextCodec_canEncodeWithQString".}
proc fcQTextCodec_toUnicode(self: pointer, param1: struct_miqt_string): struct_miqt_string {.importc: "QTextCodec_toUnicode".}
proc fcQTextCodec_toUnicodeWithChars(self: pointer, chars: cstring): struct_miqt_string {.importc: "QTextCodec_toUnicodeWithChars".}
proc fcQTextCodec_fromUnicode(self: pointer, uc: struct_miqt_string): struct_miqt_string {.importc: "QTextCodec_fromUnicode".}
proc fcQTextCodec_toUnicode2(self: pointer, inVal: cstring, length: cint): struct_miqt_string {.importc: "QTextCodec_toUnicode2".}
proc fcQTextCodec_fromUnicode2(self: pointer, inVal: pointer, length: cint): struct_miqt_string {.importc: "QTextCodec_fromUnicode2".}
proc fcQTextCodec_makeDecoder(self: pointer): pointer {.importc: "QTextCodec_makeDecoder".}
proc fcQTextCodec_makeEncoder(self: pointer): pointer {.importc: "QTextCodec_makeEncoder".}
proc fcQTextCodec_name(self: pointer): struct_miqt_string {.importc: "QTextCodec_name".}
proc fcQTextCodec_aliases(self: pointer): struct_miqt_array {.importc: "QTextCodec_aliases".}
proc fcQTextCodec_mibEnum(self: pointer): cint {.importc: "QTextCodec_mibEnum".}
proc fcQTextCodec_toUnicode3(self: pointer, inVal: cstring, length: cint, state: pointer): struct_miqt_string {.importc: "QTextCodec_toUnicode3".}
proc fcQTextCodec_fromUnicode3(self: pointer, inVal: pointer, length: cint, state: pointer): struct_miqt_string {.importc: "QTextCodec_fromUnicode3".}
proc fcQTextCodec_makeDecoder1(self: pointer, flags: cint): pointer {.importc: "QTextCodec_makeDecoder1".}
proc fcQTextCodec_makeEncoder1(self: pointer, flags: cint): pointer {.importc: "QTextCodec_makeEncoder1".}
proc fcQTextEncoder_fromUnicode(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QTextEncoder_fromUnicode".}
proc fcQTextEncoder_fromUnicode2(self: pointer, uc: pointer, len: cint): struct_miqt_string {.importc: "QTextEncoder_fromUnicode2".}
proc fcQTextEncoder_hasFailure(self: pointer): bool {.importc: "QTextEncoder_hasFailure".}
proc fcQTextEncoder_new(codec: pointer): ptr cQTextEncoder {.importc: "QTextEncoder_new".}
proc fcQTextEncoder_new2(codec: pointer, flags: cint): ptr cQTextEncoder {.importc: "QTextEncoder_new2".}
proc fcQTextDecoder_toUnicode(self: pointer, chars: cstring, len: cint): struct_miqt_string {.importc: "QTextDecoder_toUnicode".}
proc fcQTextDecoder_toUnicodeWithBa(self: pointer, ba: struct_miqt_string): struct_miqt_string {.importc: "QTextDecoder_toUnicodeWithBa".}
proc fcQTextDecoder_hasFailure(self: pointer): bool {.importc: "QTextDecoder_hasFailure".}
proc fcQTextDecoder_needsMoreData(self: pointer): bool {.importc: "QTextDecoder_needsMoreData".}
proc fcQTextDecoder_new(codec: pointer): ptr cQTextDecoder {.importc: "QTextDecoder_new".}
proc fcQTextDecoder_new2(codec: pointer, flags: cint): ptr cQTextDecoder {.importc: "QTextDecoder_new2".}
proc fcQTextCodecConverterState_new(): ptr cQTextCodecConverterState {.importc: "QTextCodec__ConverterState_new".}
proc fcQTextCodecConverterState_new2(f: cint): ptr cQTextCodecConverterState {.importc: "QTextCodec__ConverterState_new2".}

proc codecForName*(_: type gen_qtextcodec_types.QTextCodec, name: openArray[byte]): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForName(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))), owned: false)

proc codecForName*(_: type gen_qtextcodec_types.QTextCodec, name: cstring): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForNameWithName(name), owned: false)

proc codecForMib*(_: type gen_qtextcodec_types.QTextCodec, mib: cint): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForMib(mib), owned: false)

proc availableCodecs*(_: type gen_qtextcodec_types.QTextCodec): seq[seq[byte]] =
  var v_ma = fcQTextCodec_availableCodecs()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
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
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForHtml(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))), owned: false)

proc codecForHtml*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte], defaultCodec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForHtml2(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))), defaultCodec.h), owned: false)

proc codecForUtfText*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte]): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForUtfText(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))), owned: false)

proc codecForUtfText*(_: type gen_qtextcodec_types.QTextCodec, ba: openArray[byte], defaultCodec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextCodec =
  gen_qtextcodec_types.QTextCodec(h: fcQTextCodec_codecForUtfText2(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))), defaultCodec.h), owned: false)

proc canEncode*(self: gen_qtextcodec_types.QTextCodec, param1: gen_qchar_types.QChar): bool =
  fcQTextCodec_canEncode(self.h, param1.h)

proc canEncode*(self: gen_qtextcodec_types.QTextCodec, param1: openArray[char]): bool =
  fcQTextCodec_canEncodeWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, param1: openArray[byte]): string =
  let v_ms = fcQTextCodec_toUnicode(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, chars: cstring): string =
  let v_ms = fcQTextCodec_toUnicodeWithChars(self.h, chars)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextCodec, uc: openArray[char]): seq[byte] =
  var v_bytearray = fcQTextCodec_fromUnicode(self.h, struct_miqt_string(data: if len(uc) > 0: addr uc[0] else: nil, len: csize_t(len(uc))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: cstring, length: cint): string =
  let v_ms = fcQTextCodec_toUnicode2(self.h, inVal, length)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: gen_qchar_types.QChar, length: cint): seq[byte] =
  var v_bytearray = fcQTextCodec_fromUnicode2(self.h, inVal.h, length)
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
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
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
  let v_ms = fcQTextCodec_toUnicode3(self.h, inVal, length, state.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextCodec, inVal: gen_qchar_types.QChar, length: cint, state: gen_qtextcodec_types.QTextCodecConverterState): seq[byte] =
  var v_bytearray = fcQTextCodec_fromUnicode3(self.h, inVal.h, length, state.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc makeDecoder*(self: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextDecoder =
  gen_qtextcodec_types.QTextDecoder(h: fcQTextCodec_makeDecoder1(self.h, cint(flags)), owned: false)

proc makeEncoder*(self: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextEncoder =
  gen_qtextcodec_types.QTextEncoder(h: fcQTextCodec_makeEncoder1(self.h, cint(flags)), owned: false)

proc fromUnicode*(self: gen_qtextcodec_types.QTextEncoder, str: openArray[char]): seq[byte] =
  var v_bytearray = fcQTextEncoder_fromUnicode(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromUnicode*(self: gen_qtextcodec_types.QTextEncoder, uc: gen_qchar_types.QChar, len: cint): seq[byte] =
  var v_bytearray = fcQTextEncoder_fromUnicode2(self.h, uc.h, len)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hasFailure*(self: gen_qtextcodec_types.QTextEncoder): bool =
  fcQTextEncoder_hasFailure(self.h)

proc create*(T: type gen_qtextcodec_types.QTextEncoder,
    codec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextEncoder =
  gen_qtextcodec_types.QTextEncoder(h: fcQTextEncoder_new(codec.h), owned: true)

proc create*(T: type gen_qtextcodec_types.QTextEncoder,
    codec: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextEncoder =
  gen_qtextcodec_types.QTextEncoder(h: fcQTextEncoder_new2(codec.h, cint(flags)), owned: true)

proc toUnicode*(self: gen_qtextcodec_types.QTextDecoder, chars: cstring, len: cint): string =
  let v_ms = fcQTextDecoder_toUnicode(self.h, chars, len)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toUnicode*(self: gen_qtextcodec_types.QTextDecoder, ba: openArray[byte]): string =
  let v_ms = fcQTextDecoder_toUnicodeWithBa(self.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasFailure*(self: gen_qtextcodec_types.QTextDecoder): bool =
  fcQTextDecoder_hasFailure(self.h)

proc needsMoreData*(self: gen_qtextcodec_types.QTextDecoder): bool =
  fcQTextDecoder_needsMoreData(self.h)

proc create*(T: type gen_qtextcodec_types.QTextDecoder,
    codec: gen_qtextcodec_types.QTextCodec): gen_qtextcodec_types.QTextDecoder =
  gen_qtextcodec_types.QTextDecoder(h: fcQTextDecoder_new(codec.h), owned: true)

proc create*(T: type gen_qtextcodec_types.QTextDecoder,
    codec: gen_qtextcodec_types.QTextCodec, flags: cint): gen_qtextcodec_types.QTextDecoder =
  gen_qtextcodec_types.QTextDecoder(h: fcQTextDecoder_new2(codec.h, cint(flags)), owned: true)

proc create*(T: type gen_qtextcodec_types.QTextCodecConverterState): gen_qtextcodec_types.QTextCodecConverterState =
  gen_qtextcodec_types.QTextCodecConverterState(h: fcQTextCodecConverterState_new(), owned: true)

proc create*(T: type gen_qtextcodec_types.QTextCodecConverterState,
    f: cint): gen_qtextcodec_types.QTextCodecConverterState =
  gen_qtextcodec_types.QTextCodecConverterState(h: fcQTextCodecConverterState_new2(cint(f)), owned: true)

