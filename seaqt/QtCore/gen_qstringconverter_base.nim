import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
{.compile("gen_qstringconverter_base.cpp", cflags).}


type QStringConverterBaseFlagEnum* = distinct cint
template Default*(_: type QStringConverterBaseFlagEnum): untyped = 0
template Stateless*(_: type QStringConverterBaseFlagEnum): untyped = 1
template ConvertInvalidToNull*(_: type QStringConverterBaseFlagEnum): untyped = 2
template WriteBom*(_: type QStringConverterBaseFlagEnum): untyped = 4
template ConvertInitialBom*(_: type QStringConverterBaseFlagEnum): untyped = 8
template UsesIcu*(_: type QStringConverterBaseFlagEnum): untyped = 16


type QStringConverterEncodingEnum* = distinct cint
template Utf8*(_: type QStringConverterEncodingEnum): untyped = 0
template Utf16*(_: type QStringConverterEncodingEnum): untyped = 1
template Utf16LE*(_: type QStringConverterEncodingEnum): untyped = 2
template Utf16BE*(_: type QStringConverterEncodingEnum): untyped = 3
template Utf32*(_: type QStringConverterEncodingEnum): untyped = 4
template Utf32LE*(_: type QStringConverterEncodingEnum): untyped = 5
template Utf32BE*(_: type QStringConverterEncodingEnum): untyped = 6
template Latin1*(_: type QStringConverterEncodingEnum): untyped = 7
template System*(_: type QStringConverterEncodingEnum): untyped = 8
template LastEncoding*(_: type QStringConverterEncodingEnum): untyped = 8


import ./gen_qstringconverter_base_types
export gen_qstringconverter_base_types


type cQStringConverterBase*{.exportc: "QStringConverterBase", incompleteStruct.} = object
type cQStringConverter*{.exportc: "QStringConverter", incompleteStruct.} = object
type cQStringConverterBaseState*{.exportc: "QStringConverterBase__State", incompleteStruct.} = object

proc fcQStringConverter_isValid(self: pointer, ): bool {.importc: "QStringConverter_isValid".}
proc fcQStringConverter_resetState(self: pointer, ): void {.importc: "QStringConverter_resetState".}
proc fcQStringConverter_hasError(self: pointer, ): bool {.importc: "QStringConverter_hasError".}
proc fcQStringConverter_name(self: pointer, ): cstring {.importc: "QStringConverter_name".}
proc fcQStringConverter_nameForEncoding(e: cint): cstring {.importc: "QStringConverter_nameForEncoding".}
proc fcQStringConverterBaseState_clear(self: pointer, ): void {.importc: "QStringConverterBase__State_clear".}
proc fcQStringConverterBaseState_reset(self: pointer, ): void {.importc: "QStringConverterBase__State_reset".}
proc fcQStringConverterBaseState_new(): ptr cQStringConverterBaseState {.importc: "QStringConverterBase__State_new".}
proc fcQStringConverterBaseState_new2(f: cint): ptr cQStringConverterBaseState {.importc: "QStringConverterBase__State_new2".}
proc fcQStringConverterBaseState_delete(self: pointer) {.importc: "QStringConverterBase__State_delete".}

proc isValid*(self: gen_qstringconverter_base_types.QStringConverter, ): bool =
  fcQStringConverter_isValid(self.h)

proc resetState*(self: gen_qstringconverter_base_types.QStringConverter, ): void =
  fcQStringConverter_resetState(self.h)

proc hasError*(self: gen_qstringconverter_base_types.QStringConverter, ): bool =
  fcQStringConverter_hasError(self.h)

proc name*(self: gen_qstringconverter_base_types.QStringConverter, ): cstring =
  (fcQStringConverter_name(self.h))

proc nameForEncoding*(_: type gen_qstringconverter_base_types.QStringConverter, e: cint): cstring =
  (fcQStringConverter_nameForEncoding(cint(e)))

proc clear*(self: gen_qstringconverter_base_types.QStringConverterBaseState, ): void =
  fcQStringConverterBaseState_clear(self.h)

proc reset*(self: gen_qstringconverter_base_types.QStringConverterBaseState, ): void =
  fcQStringConverterBaseState_reset(self.h)

proc create*(T: type gen_qstringconverter_base_types.QStringConverterBaseState): gen_qstringconverter_base_types.QStringConverterBaseState =
  gen_qstringconverter_base_types.QStringConverterBaseState(h: fcQStringConverterBaseState_new())

proc create*(T: type gen_qstringconverter_base_types.QStringConverterBaseState,
    f: cint): gen_qstringconverter_base_types.QStringConverterBaseState =
  gen_qstringconverter_base_types.QStringConverterBaseState(h: fcQStringConverterBaseState_new2(cint(f)))

proc delete*(self: gen_qstringconverter_base_types.QStringConverterBaseState) =
  fcQStringConverterBaseState_delete(self.h)
