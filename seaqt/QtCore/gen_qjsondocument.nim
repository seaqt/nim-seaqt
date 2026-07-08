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


type QJsonParseErrorParseErrorEnum* = distinct cint
template NoError*(_: type QJsonParseErrorParseErrorEnum): untyped = 0
template UnterminatedObject*(_: type QJsonParseErrorParseErrorEnum): untyped = 1
template MissingNameSeparator*(_: type QJsonParseErrorParseErrorEnum): untyped = 2
template UnterminatedArray*(_: type QJsonParseErrorParseErrorEnum): untyped = 3
template MissingValueSeparator*(_: type QJsonParseErrorParseErrorEnum): untyped = 4
template IllegalValue*(_: type QJsonParseErrorParseErrorEnum): untyped = 5
template TerminationByNumber*(_: type QJsonParseErrorParseErrorEnum): untyped = 6
template IllegalNumber*(_: type QJsonParseErrorParseErrorEnum): untyped = 7
template IllegalEscapeSequence*(_: type QJsonParseErrorParseErrorEnum): untyped = 8
template IllegalUTF8String*(_: type QJsonParseErrorParseErrorEnum): untyped = 9
template UnterminatedString*(_: type QJsonParseErrorParseErrorEnum): untyped = 10
template MissingObject*(_: type QJsonParseErrorParseErrorEnum): untyped = 11
template DeepNesting*(_: type QJsonParseErrorParseErrorEnum): untyped = 12
template DocumentTooLarge*(_: type QJsonParseErrorParseErrorEnum): untyped = 13
template GarbageAtEnd*(_: type QJsonParseErrorParseErrorEnum): untyped = 14


type QJsonDocumentJsonFormatEnum* = distinct cint
template Indented*(_: type QJsonDocumentJsonFormatEnum): untyped = 0
template Compact*(_: type QJsonDocumentJsonFormatEnum): untyped = 1


import ./gen_qjsondocument_types
export gen_qjsondocument_types

import
  ./gen_qjsonarray_types,
  ./gen_qjsonobject_types,
  ./gen_qjsonvalue_types,
  ./gen_qvariant_types
export
  gen_qjsonarray_types,
  gen_qjsonobject_types,
  gen_qjsonvalue_types,
  gen_qvariant_types

type cQJsonParseError*{.exportc: "QJsonParseError", incompleteStruct.} = object
type cQJsonDocument*{.exportc: "QJsonDocument", incompleteStruct.} = object

proc fcQJsonParseError_errorString(self: pointer): struct_seaqt_string {.importc: "QJsonParseError_errorString".}
proc fcQJsonParseError_offset(self: pointer): cint {.importc: "QJsonParseError_offset".}
proc fcQJsonParseError_setOffset(self: pointer, offset: cint): void {.importc: "QJsonParseError_setOffset".}
proc fcQJsonParseError_error(self: pointer): cint {.importc: "QJsonParseError_error".}
proc fcQJsonParseError_setError(self: pointer, error: cint): void {.importc: "QJsonParseError_setError".}
proc fcQJsonDocument_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonDocument_operatorAssign".}
proc fcQJsonDocument_swap(self: pointer, other: pointer): void {.importc: "QJsonDocument_swap".}
proc fcQJsonDocument_fromVariant(variant: pointer): pointer {.importc: "QJsonDocument_fromVariant".}
proc fcQJsonDocument_toVariant(self: pointer): pointer {.importc: "QJsonDocument_toVariant".}
proc fcQJsonDocument_fromJsonJson(json: struct_seaqt_string): pointer {.importc: "QJsonDocument_fromJson_json".}
proc fcQJsonDocument_toJson(self: pointer): struct_seaqt_string {.importc: "QJsonDocument_toJson".}
proc fcQJsonDocument_isEmpty(self: pointer): bool {.importc: "QJsonDocument_isEmpty".}
proc fcQJsonDocument_isArray(self: pointer): bool {.importc: "QJsonDocument_isArray".}
proc fcQJsonDocument_isObject(self: pointer): bool {.importc: "QJsonDocument_isObject".}
proc fcQJsonDocument_objectX(self: pointer): pointer {.importc: "QJsonDocument_object".}
proc fcQJsonDocument_array(self: pointer): pointer {.importc: "QJsonDocument_array".}
proc fcQJsonDocument_setObject(self: pointer, objectVal: pointer): void {.importc: "QJsonDocument_setObject".}
proc fcQJsonDocument_setArray(self: pointer, array: pointer): void {.importc: "QJsonDocument_setArray".}
proc fcQJsonDocument_operatorSubscript_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonDocument_operatorSubscript_QString".}
proc fcQJsonDocument_operatorSubscriptQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonDocument_operatorSubscript_qsizetype".}
proc fcQJsonDocument_isNull(self: pointer): bool {.importc: "QJsonDocument_isNull".}
proc fcQJsonDocument_fromJsonJsonError(json: struct_seaqt_string, error: pointer): pointer {.importc: "QJsonDocument_fromJson_json_error".}
proc fcQJsonDocument_toJsonFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QJsonDocument_toJson_format".}
proc fcQJsonDocument_new(): ptr cQJsonDocument {.importc: "QJsonDocument_new".}
proc fcQJsonDocument_new2(objectVal: pointer): ptr cQJsonDocument {.importc: "QJsonDocument_new_object".}
proc fcQJsonDocument_new3(array: pointer): ptr cQJsonDocument {.importc: "QJsonDocument_new_array".}
proc fcQJsonDocument_new4(fromVal: pointer): ptr cQJsonDocument {.importc: "QJsonDocument_new_from".}

proc errorString*(self: gen_qjsondocument_types.QJsonParseError): string =
  let v_ms = fcQJsonParseError_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc offset*(self: gen_qjsondocument_types.QJsonParseError): cint =
  fcQJsonParseError_offset(self.h)

proc setOffset*(self: gen_qjsondocument_types.QJsonParseError, offset: cint): void =
  fcQJsonParseError_setOffset(self.h, offset)

proc error*(self: gen_qjsondocument_types.QJsonParseError): cint =
  cint(fcQJsonParseError_error(self.h))

proc setError*(self: gen_qjsondocument_types.QJsonParseError, error: cint): void =
  fcQJsonParseError_setError(self.h, cint(error))

proc operatorAssign*(self: gen_qjsondocument_types.QJsonDocument, fromVal: gen_qjsondocument_types.QJsonDocument): void =
  fcQJsonDocument_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qjsondocument_types.QJsonDocument, other: gen_qjsondocument_types.QJsonDocument): void =
  fcQJsonDocument_swap(self.h, other.h)

proc fromVariant*(_: type gen_qjsondocument_types.QJsonDocument, variant: gen_qvariant_types.QVariant): gen_qjsondocument_types.QJsonDocument =
  gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_fromVariant(variant.h), owned: true)

proc toVariant*(self: gen_qjsondocument_types.QJsonDocument): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJsonDocument_toVariant(self.h), owned: true)

proc fromJson*(_: type gen_qjsondocument_types.QJsonDocument, json: openArray[byte]): gen_qjsondocument_types.QJsonDocument =
  gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_fromJsonJson(struct_seaqt_string(data: if len(json) > 0: addr json[0] else: nil, len: csize_t(len(json)))), owned: true)

proc toJson*(self: gen_qjsondocument_types.QJsonDocument): seq[byte] =
  var v_bytearray = fcQJsonDocument_toJson(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc isEmpty*(self: gen_qjsondocument_types.QJsonDocument): bool =
  fcQJsonDocument_isEmpty(self.h)

proc isArray*(self: gen_qjsondocument_types.QJsonDocument): bool =
  fcQJsonDocument_isArray(self.h)

proc isObject*(self: gen_qjsondocument_types.QJsonDocument): bool =
  fcQJsonDocument_isObject(self.h)

proc objectX*(self: gen_qjsondocument_types.QJsonDocument): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonDocument_objectX(self.h), owned: true)

proc array*(self: gen_qjsondocument_types.QJsonDocument): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonDocument_array(self.h), owned: true)

proc setObject*(self: gen_qjsondocument_types.QJsonDocument, objectVal: gen_qjsonobject_types.QJsonObject): void =
  fcQJsonDocument_setObject(self.h, objectVal.h)

proc setArray*(self: gen_qjsondocument_types.QJsonDocument, array: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonDocument_setArray(self.h, array.h)

proc operatorSubscript*(self: gen_qjsondocument_types.QJsonDocument, key: openArray[char]): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonDocument_operatorSubscript_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc operatorSubscript*(self: gen_qjsondocument_types.QJsonDocument, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonDocument_operatorSubscriptQsizetype(self.h, i), owned: true)

proc isNull*(self: gen_qjsondocument_types.QJsonDocument): bool =
  fcQJsonDocument_isNull(self.h)

proc fromJson*(_: type gen_qjsondocument_types.QJsonDocument, json: openArray[byte], error: gen_qjsondocument_types.QJsonParseError): gen_qjsondocument_types.QJsonDocument =
  gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_fromJsonJsonError(struct_seaqt_string(data: if len(json) > 0: addr json[0] else: nil, len: csize_t(len(json))), error.h), owned: true)

proc toJson*(self: gen_qjsondocument_types.QJsonDocument, format: cint): seq[byte] =
  var v_bytearray = fcQJsonDocument_toJsonFormat(self.h, cint(format))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(T: type gen_qjsondocument_types.QJsonDocument): gen_qjsondocument_types.QJsonDocument =
  let tmp = gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_new(), owned: true)
  tmp
proc create*(T: type gen_qjsondocument_types.QJsonDocument,
    objectVal: gen_qjsonobject_types.QJsonObject): gen_qjsondocument_types.QJsonDocument =
  let tmp = gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_new2(objectVal.h), owned: true)
  tmp
proc create*(T: type gen_qjsondocument_types.QJsonDocument,
    array: gen_qjsonarray_types.QJsonArray): gen_qjsondocument_types.QJsonDocument =
  let tmp = gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_new3(array.h), owned: true)
  tmp
proc create*(T: type gen_qjsondocument_types.QJsonDocument,
    fromVal: gen_qjsondocument_types.QJsonDocument): gen_qjsondocument_types.QJsonDocument =
  let tmp = gen_qjsondocument_types.QJsonDocument(h: fcQJsonDocument_new4(fromVal.h), owned: true)
  tmp
