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
{.compile("gen_qcborvalue.cpp", cflags).}


type QCborValueEncodingOptionEnum* = distinct cint
template SortKeysInMaps*(_: type QCborValueEncodingOptionEnum): untyped = 1
template UseFloat*(_: type QCborValueEncodingOptionEnum): untyped = 2
template UseFloat16*(_: type QCborValueEncodingOptionEnum): untyped = 6
template UseIntegers*(_: type QCborValueEncodingOptionEnum): untyped = 8
template NoTransformation*(_: type QCborValueEncodingOptionEnum): untyped = 0


type QCborValueDiagnosticNotationOptionEnum* = distinct cint
template Compact*(_: type QCborValueDiagnosticNotationOptionEnum): untyped = 0
template LineWrapped*(_: type QCborValueDiagnosticNotationOptionEnum): untyped = 1
template ExtendedFormat*(_: type QCborValueDiagnosticNotationOptionEnum): untyped = 2


type QCborValueTypeEnum* = distinct cint
template Integer*(_: type QCborValueTypeEnum): untyped = 0
template ByteArray*(_: type QCborValueTypeEnum): untyped = 64
template String*(_: type QCborValueTypeEnum): untyped = 96
template Array*(_: type QCborValueTypeEnum): untyped = 128
template Map*(_: type QCborValueTypeEnum): untyped = 160
template Tag*(_: type QCborValueTypeEnum): untyped = 192
template SimpleType*(_: type QCborValueTypeEnum): untyped = 256
template False*(_: type QCborValueTypeEnum): untyped = 276
template True*(_: type QCborValueTypeEnum): untyped = 277
template Null*(_: type QCborValueTypeEnum): untyped = 278
template Undefined*(_: type QCborValueTypeEnum): untyped = 279
template Double*(_: type QCborValueTypeEnum): untyped = 514
template DateTime*(_: type QCborValueTypeEnum): untyped = 65536
template Url*(_: type QCborValueTypeEnum): untyped = 65568
template RegularExpression*(_: type QCborValueTypeEnum): untyped = 65571
template Uuid*(_: type QCborValueTypeEnum): untyped = 65573
template Invalid*(_: type QCborValueTypeEnum): untyped = -1


import ./gen_qcborvalue_types
export gen_qcborvalue_types

import
  ./gen_qcborarray_types,
  ./gen_qcbormap_types,
  ./gen_qcborstreamreader_types,
  ./gen_qcborstreamwriter_types,
  ./gen_qdatetime_types,
  ./gen_qjsonvalue_types,
  ./gen_qobjectdefs_types,
  ./gen_qregularexpression_types,
  ./gen_qurl_types,
  ./gen_quuid_types,
  ./gen_qvariant_types
export
  gen_qcborarray_types,
  gen_qcbormap_types,
  gen_qcborstreamreader_types,
  gen_qcborstreamwriter_types,
  gen_qdatetime_types,
  gen_qjsonvalue_types,
  gen_qobjectdefs_types,
  gen_qregularexpression_types,
  gen_qurl_types,
  gen_quuid_types,
  gen_qvariant_types

type cQCborParserError*{.exportc: "QCborParserError", incompleteStruct.} = object
type cQCborValue*{.exportc: "QCborValue", incompleteStruct.} = object
type cQCborValueConstRef*{.exportc: "QCborValueConstRef", incompleteStruct.} = object
type cQCborValueRef*{.exportc: "QCborValueRef", incompleteStruct.} = object

proc fcQCborParserError_errorString(self: pointer, ): struct_miqt_string {.importc: "QCborParserError_errorString".}
proc fcQCborParserError_delete(self: pointer) {.importc: "QCborParserError_delete".}
proc fcQCborValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborValue_operatorAssign".}
proc fcQCborValue_swap(self: pointer, other: pointer): void {.importc: "QCborValue_swap".}
proc fcQCborValue_typeX(self: pointer, ): cint {.importc: "QCborValue_type".}
proc fcQCborValue_isInteger(self: pointer, ): bool {.importc: "QCborValue_isInteger".}
proc fcQCborValue_isByteArray(self: pointer, ): bool {.importc: "QCborValue_isByteArray".}
proc fcQCborValue_isString(self: pointer, ): bool {.importc: "QCborValue_isString".}
proc fcQCborValue_isArray(self: pointer, ): bool {.importc: "QCborValue_isArray".}
proc fcQCborValue_isMap(self: pointer, ): bool {.importc: "QCborValue_isMap".}
proc fcQCborValue_isTag(self: pointer, ): bool {.importc: "QCborValue_isTag".}
proc fcQCborValue_isFalse(self: pointer, ): bool {.importc: "QCborValue_isFalse".}
proc fcQCborValue_isTrue(self: pointer, ): bool {.importc: "QCborValue_isTrue".}
proc fcQCborValue_isBool(self: pointer, ): bool {.importc: "QCborValue_isBool".}
proc fcQCborValue_isNull(self: pointer, ): bool {.importc: "QCborValue_isNull".}
proc fcQCborValue_isUndefined(self: pointer, ): bool {.importc: "QCborValue_isUndefined".}
proc fcQCborValue_isDouble(self: pointer, ): bool {.importc: "QCborValue_isDouble".}
proc fcQCborValue_isDateTime(self: pointer, ): bool {.importc: "QCborValue_isDateTime".}
proc fcQCborValue_isUrl(self: pointer, ): bool {.importc: "QCborValue_isUrl".}
proc fcQCborValue_isRegularExpression(self: pointer, ): bool {.importc: "QCborValue_isRegularExpression".}
proc fcQCborValue_isUuid(self: pointer, ): bool {.importc: "QCborValue_isUuid".}
proc fcQCborValue_isInvalid(self: pointer, ): bool {.importc: "QCborValue_isInvalid".}
proc fcQCborValue_isContainer(self: pointer, ): bool {.importc: "QCborValue_isContainer".}
proc fcQCborValue_isSimpleType(self: pointer, ): bool {.importc: "QCborValue_isSimpleType".}
proc fcQCborValue_isSimpleTypeWithSt(self: pointer, st: cint): bool {.importc: "QCborValue_isSimpleTypeWithSt".}
proc fcQCborValue_toSimpleType(self: pointer, ): cint {.importc: "QCborValue_toSimpleType".}
proc fcQCborValue_toInteger(self: pointer, ): clonglong {.importc: "QCborValue_toInteger".}
proc fcQCborValue_toBool(self: pointer, ): bool {.importc: "QCborValue_toBool".}
proc fcQCborValue_toDouble(self: pointer, ): float64 {.importc: "QCborValue_toDouble".}
proc fcQCborValue_tag(self: pointer, ): cint {.importc: "QCborValue_tag".}
proc fcQCborValue_taggedValue(self: pointer, ): pointer {.importc: "QCborValue_taggedValue".}
proc fcQCborValue_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toByteArray".}
proc fcQCborValue_toString(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toString".}
proc fcQCborValue_toDateTime(self: pointer, ): pointer {.importc: "QCborValue_toDateTime".}
proc fcQCborValue_toUrl(self: pointer, ): pointer {.importc: "QCborValue_toUrl".}
proc fcQCborValue_toRegularExpression(self: pointer, ): pointer {.importc: "QCborValue_toRegularExpression".}
proc fcQCborValue_toUuid(self: pointer, ): pointer {.importc: "QCborValue_toUuid".}
proc fcQCborValue_toArray(self: pointer, ): pointer {.importc: "QCborValue_toArray".}
proc fcQCborValue_toArrayWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toArrayWithDefaultValue".}
proc fcQCborValue_toMap(self: pointer, ): pointer {.importc: "QCborValue_toMap".}
proc fcQCborValue_toMapWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toMapWithDefaultValue".}
proc fcQCborValue_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValue_operatorSubscript".}
proc fcQCborValue_operatorSubscript2(self: pointer, key: clonglong): pointer {.importc: "QCborValue_operatorSubscript2".}
proc fcQCborValue_operatorSubscript3(self: pointer, key: clonglong): pointer {.importc: "QCborValue_operatorSubscript3".}
proc fcQCborValue_operatorSubscript5(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValue_operatorSubscript5".}
proc fcQCborValue_compare(self: pointer, other: pointer): cint {.importc: "QCborValue_compare".}
proc fcQCborValue_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborValue_operatorEqual".}
proc fcQCborValue_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborValue_operatorNotEqual".}
proc fcQCborValue_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborValue_operatorLesser".}
proc fcQCborValue_fromVariant(variant: pointer): pointer {.importc: "QCborValue_fromVariant".}
proc fcQCborValue_toVariant(self: pointer, ): pointer {.importc: "QCborValue_toVariant".}
proc fcQCborValue_fromJsonValue(v: pointer): pointer {.importc: "QCborValue_fromJsonValue".}
proc fcQCborValue_toJsonValue(self: pointer, ): pointer {.importc: "QCborValue_toJsonValue".}
proc fcQCborValue_fromCbor(reader: pointer): pointer {.importc: "QCborValue_fromCbor".}
proc fcQCborValue_fromCborWithBa(ba: struct_miqt_string): pointer {.importc: "QCborValue_fromCborWithBa".}
proc fcQCborValue_fromCbor2(data: cstring, len: int64): pointer {.importc: "QCborValue_fromCbor2".}
proc fcQCborValue_fromCbor3(data: ptr uint8, len: int64): pointer {.importc: "QCborValue_fromCbor3".}
proc fcQCborValue_toCbor(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toCbor".}
proc fcQCborValue_toCborWithWriter(self: pointer, writer: pointer): void {.importc: "QCborValue_toCborWithWriter".}
proc fcQCborValue_toDiagnosticNotation(self: pointer, ): struct_miqt_string {.importc: "QCborValue_toDiagnosticNotation".}
proc fcQCborValue_toSimpleType1(self: pointer, defaultValue: cint): cint {.importc: "QCborValue_toSimpleType1".}
proc fcQCborValue_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QCborValue_toInteger1".}
proc fcQCborValue_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QCborValue_toBool1".}
proc fcQCborValue_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QCborValue_toDouble1".}
proc fcQCborValue_tag1(self: pointer, defaultValue: cint): cint {.importc: "QCborValue_tag1".}
proc fcQCborValue_taggedValue1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_taggedValue1".}
proc fcQCborValue_toByteArray1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValue_toByteArray1".}
proc fcQCborValue_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValue_toString1".}
proc fcQCborValue_toDateTime1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toDateTime1".}
proc fcQCborValue_toUrl1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toUrl1".}
proc fcQCborValue_toRegularExpression1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toRegularExpression1".}
proc fcQCborValue_toUuid1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValue_toUuid1".}
proc fcQCborValue_fromCbor22(ba: struct_miqt_string, error: pointer): pointer {.importc: "QCborValue_fromCbor22".}
proc fcQCborValue_fromCbor32(data: cstring, len: int64, error: pointer): pointer {.importc: "QCborValue_fromCbor32".}
proc fcQCborValue_fromCbor33(data: ptr uint8, len: int64, error: pointer): pointer {.importc: "QCborValue_fromCbor33".}
proc fcQCborValue_toCbor1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValue_toCbor1".}
proc fcQCborValue_toCbor2(self: pointer, writer: pointer, opt: cint): void {.importc: "QCborValue_toCbor2".}
proc fcQCborValue_toDiagnosticNotation1(self: pointer, opts: cint): struct_miqt_string {.importc: "QCborValue_toDiagnosticNotation1".}
proc fcQCborValue_new(): ptr cQCborValue {.importc: "QCborValue_new".}
proc fcQCborValue_new2(t_x: cint): ptr cQCborValue {.importc: "QCborValue_new2".}
proc fcQCborValue_new3(b_x: bool): ptr cQCborValue {.importc: "QCborValue_new3".}
proc fcQCborValue_new4(i: cint): ptr cQCborValue {.importc: "QCborValue_new4".}
proc fcQCborValue_new5(u: cuint): ptr cQCborValue {.importc: "QCborValue_new5".}
proc fcQCborValue_new6(i: clonglong): ptr cQCborValue {.importc: "QCborValue_new6".}
proc fcQCborValue_new7(v: float64): ptr cQCborValue {.importc: "QCborValue_new7".}
proc fcQCborValue_new8(st: cint): ptr cQCborValue {.importc: "QCborValue_new8".}
proc fcQCborValue_new9(ba: struct_miqt_string): ptr cQCborValue {.importc: "QCborValue_new9".}
proc fcQCborValue_new10(s: struct_miqt_string): ptr cQCborValue {.importc: "QCborValue_new10".}
proc fcQCborValue_new11(s: cstring): ptr cQCborValue {.importc: "QCborValue_new11".}
proc fcQCborValue_new12(a: pointer): ptr cQCborValue {.importc: "QCborValue_new12".}
proc fcQCborValue_new13(m: pointer): ptr cQCborValue {.importc: "QCborValue_new13".}
proc fcQCborValue_new14(tag: cint): ptr cQCborValue {.importc: "QCborValue_new14".}
proc fcQCborValue_new15(t_x: cint): ptr cQCborValue {.importc: "QCborValue_new15".}
proc fcQCborValue_new16(dt: pointer): ptr cQCborValue {.importc: "QCborValue_new16".}
proc fcQCborValue_new17(url: pointer): ptr cQCborValue {.importc: "QCborValue_new17".}
proc fcQCborValue_new18(rx: pointer): ptr cQCborValue {.importc: "QCborValue_new18".}
proc fcQCborValue_new19(uuid: pointer): ptr cQCborValue {.importc: "QCborValue_new19".}
proc fcQCborValue_new20(other: pointer): ptr cQCborValue {.importc: "QCborValue_new20".}
proc fcQCborValue_new21(tag: cint, taggedValue: pointer): ptr cQCborValue {.importc: "QCborValue_new21".}
proc fcQCborValue_new22(t_x: cint, tv: pointer): ptr cQCborValue {.importc: "QCborValue_new22".}
proc fcQCborValue_staticMetaObject(): pointer {.importc: "QCborValue_staticMetaObject".}
proc fcQCborValue_delete(self: pointer) {.importc: "QCborValue_delete".}
proc fcQCborValueConstRef_ToQCborValue(self: pointer, ): pointer {.importc: "QCborValueConstRef_ToQCborValue".}
proc fcQCborValueConstRef_typeX(self: pointer, ): cint {.importc: "QCborValueConstRef_type".}
proc fcQCborValueConstRef_isInteger(self: pointer, ): bool {.importc: "QCborValueConstRef_isInteger".}
proc fcQCborValueConstRef_isByteArray(self: pointer, ): bool {.importc: "QCborValueConstRef_isByteArray".}
proc fcQCborValueConstRef_isString(self: pointer, ): bool {.importc: "QCborValueConstRef_isString".}
proc fcQCborValueConstRef_isArray(self: pointer, ): bool {.importc: "QCborValueConstRef_isArray".}
proc fcQCborValueConstRef_isMap(self: pointer, ): bool {.importc: "QCborValueConstRef_isMap".}
proc fcQCborValueConstRef_isTag(self: pointer, ): bool {.importc: "QCborValueConstRef_isTag".}
proc fcQCborValueConstRef_isFalse(self: pointer, ): bool {.importc: "QCborValueConstRef_isFalse".}
proc fcQCborValueConstRef_isTrue(self: pointer, ): bool {.importc: "QCborValueConstRef_isTrue".}
proc fcQCborValueConstRef_isBool(self: pointer, ): bool {.importc: "QCborValueConstRef_isBool".}
proc fcQCborValueConstRef_isNull(self: pointer, ): bool {.importc: "QCborValueConstRef_isNull".}
proc fcQCborValueConstRef_isUndefined(self: pointer, ): bool {.importc: "QCborValueConstRef_isUndefined".}
proc fcQCborValueConstRef_isDouble(self: pointer, ): bool {.importc: "QCborValueConstRef_isDouble".}
proc fcQCborValueConstRef_isDateTime(self: pointer, ): bool {.importc: "QCborValueConstRef_isDateTime".}
proc fcQCborValueConstRef_isUrl(self: pointer, ): bool {.importc: "QCborValueConstRef_isUrl".}
proc fcQCborValueConstRef_isRegularExpression(self: pointer, ): bool {.importc: "QCborValueConstRef_isRegularExpression".}
proc fcQCborValueConstRef_isUuid(self: pointer, ): bool {.importc: "QCborValueConstRef_isUuid".}
proc fcQCborValueConstRef_isInvalid(self: pointer, ): bool {.importc: "QCborValueConstRef_isInvalid".}
proc fcQCborValueConstRef_isContainer(self: pointer, ): bool {.importc: "QCborValueConstRef_isContainer".}
proc fcQCborValueConstRef_isSimpleType(self: pointer, ): bool {.importc: "QCborValueConstRef_isSimpleType".}
proc fcQCborValueConstRef_isSimpleTypeWithSt(self: pointer, st: cint): bool {.importc: "QCborValueConstRef_isSimpleTypeWithSt".}
proc fcQCborValueConstRef_toSimpleType(self: pointer, ): cint {.importc: "QCborValueConstRef_toSimpleType".}
proc fcQCborValueConstRef_tag(self: pointer, ): cint {.importc: "QCborValueConstRef_tag".}
proc fcQCborValueConstRef_taggedValue(self: pointer, ): pointer {.importc: "QCborValueConstRef_taggedValue".}
proc fcQCborValueConstRef_toInteger(self: pointer, ): clonglong {.importc: "QCborValueConstRef_toInteger".}
proc fcQCborValueConstRef_toBool(self: pointer, ): bool {.importc: "QCborValueConstRef_toBool".}
proc fcQCborValueConstRef_toDouble(self: pointer, ): float64 {.importc: "QCborValueConstRef_toDouble".}
proc fcQCborValueConstRef_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QCborValueConstRef_toByteArray".}
proc fcQCborValueConstRef_toString(self: pointer, ): struct_miqt_string {.importc: "QCborValueConstRef_toString".}
proc fcQCborValueConstRef_toDateTime(self: pointer, ): pointer {.importc: "QCborValueConstRef_toDateTime".}
proc fcQCborValueConstRef_toUrl(self: pointer, ): pointer {.importc: "QCborValueConstRef_toUrl".}
proc fcQCborValueConstRef_toRegularExpression(self: pointer, ): pointer {.importc: "QCborValueConstRef_toRegularExpression".}
proc fcQCborValueConstRef_toUuid(self: pointer, ): pointer {.importc: "QCborValueConstRef_toUuid".}
proc fcQCborValueConstRef_toArray(self: pointer, ): pointer {.importc: "QCborValueConstRef_toArray".}
proc fcQCborValueConstRef_toArrayWithQCborArray(self: pointer, a: pointer): pointer {.importc: "QCborValueConstRef_toArrayWithQCborArray".}
proc fcQCborValueConstRef_toMap(self: pointer, ): pointer {.importc: "QCborValueConstRef_toMap".}
proc fcQCborValueConstRef_toMapWithQCborMap(self: pointer, m: pointer): pointer {.importc: "QCborValueConstRef_toMapWithQCborMap".}
proc fcQCborValueConstRef_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValueConstRef_operatorSubscript".}
proc fcQCborValueConstRef_operatorSubscript2(self: pointer, key: clonglong): pointer {.importc: "QCborValueConstRef_operatorSubscript2".}
proc fcQCborValueConstRef_compare(self: pointer, other: pointer): cint {.importc: "QCborValueConstRef_compare".}
proc fcQCborValueConstRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborValueConstRef_operatorEqual".}
proc fcQCborValueConstRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborValueConstRef_operatorNotEqual".}
proc fcQCborValueConstRef_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborValueConstRef_operatorLesser".}
proc fcQCborValueConstRef_toVariant(self: pointer, ): pointer {.importc: "QCborValueConstRef_toVariant".}
proc fcQCborValueConstRef_toJsonValue(self: pointer, ): pointer {.importc: "QCborValueConstRef_toJsonValue".}
proc fcQCborValueConstRef_toCbor(self: pointer, ): struct_miqt_string {.importc: "QCborValueConstRef_toCbor".}
proc fcQCborValueConstRef_toCborWithWriter(self: pointer, writer: pointer): void {.importc: "QCborValueConstRef_toCborWithWriter".}
proc fcQCborValueConstRef_toDiagnosticNotation(self: pointer, ): struct_miqt_string {.importc: "QCborValueConstRef_toDiagnosticNotation".}
proc fcQCborValueConstRef_toSimpleType1(self: pointer, defaultValue: cint): cint {.importc: "QCborValueConstRef_toSimpleType1".}
proc fcQCborValueConstRef_tag1(self: pointer, defaultValue: cint): cint {.importc: "QCborValueConstRef_tag1".}
proc fcQCborValueConstRef_taggedValue1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueConstRef_taggedValue1".}
proc fcQCborValueConstRef_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QCborValueConstRef_toInteger1".}
proc fcQCborValueConstRef_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QCborValueConstRef_toBool1".}
proc fcQCborValueConstRef_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QCborValueConstRef_toDouble1".}
proc fcQCborValueConstRef_toByteArray1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValueConstRef_toByteArray1".}
proc fcQCborValueConstRef_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValueConstRef_toString1".}
proc fcQCborValueConstRef_toDateTime1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueConstRef_toDateTime1".}
proc fcQCborValueConstRef_toUrl1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueConstRef_toUrl1".}
proc fcQCborValueConstRef_toRegularExpression1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueConstRef_toRegularExpression1".}
proc fcQCborValueConstRef_toUuid1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueConstRef_toUuid1".}
proc fcQCborValueConstRef_toCbor1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValueConstRef_toCbor1".}
proc fcQCborValueConstRef_toCbor2(self: pointer, writer: pointer, opt: cint): void {.importc: "QCborValueConstRef_toCbor2".}
proc fcQCborValueConstRef_toDiagnosticNotation1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValueConstRef_toDiagnosticNotation1".}
proc fcQCborValueConstRef_new(param1: pointer): ptr cQCborValueConstRef {.importc: "QCborValueConstRef_new".}
proc fcQCborValueConstRef_delete(self: pointer) {.importc: "QCborValueConstRef_delete".}
proc fcQCborValueRef_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborValueRef_operatorAssign".}
proc fcQCborValueRef_operatorAssignWithOther(self: pointer, other: pointer): void {.importc: "QCborValueRef_operatorAssignWithOther".}
proc fcQCborValueRef_operatorSubscript(self: pointer, key: clonglong): pointer {.importc: "QCborValueRef_operatorSubscript".}
proc fcQCborValueRef_operatorSubscript2(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValueRef_operatorSubscript2".}
proc fcQCborValueRef_ToQCborValue(self: pointer, ): pointer {.importc: "QCborValueRef_ToQCborValue".}
proc fcQCborValueRef_typeX(self: pointer, ): cint {.importc: "QCborValueRef_type".}
proc fcQCborValueRef_isInteger(self: pointer, ): bool {.importc: "QCborValueRef_isInteger".}
proc fcQCborValueRef_isByteArray(self: pointer, ): bool {.importc: "QCborValueRef_isByteArray".}
proc fcQCborValueRef_isString(self: pointer, ): bool {.importc: "QCborValueRef_isString".}
proc fcQCborValueRef_isArray(self: pointer, ): bool {.importc: "QCborValueRef_isArray".}
proc fcQCborValueRef_isMap(self: pointer, ): bool {.importc: "QCborValueRef_isMap".}
proc fcQCborValueRef_isTag(self: pointer, ): bool {.importc: "QCborValueRef_isTag".}
proc fcQCborValueRef_isFalse(self: pointer, ): bool {.importc: "QCborValueRef_isFalse".}
proc fcQCborValueRef_isTrue(self: pointer, ): bool {.importc: "QCborValueRef_isTrue".}
proc fcQCborValueRef_isBool(self: pointer, ): bool {.importc: "QCborValueRef_isBool".}
proc fcQCborValueRef_isNull(self: pointer, ): bool {.importc: "QCborValueRef_isNull".}
proc fcQCborValueRef_isUndefined(self: pointer, ): bool {.importc: "QCborValueRef_isUndefined".}
proc fcQCborValueRef_isDouble(self: pointer, ): bool {.importc: "QCborValueRef_isDouble".}
proc fcQCborValueRef_isDateTime(self: pointer, ): bool {.importc: "QCborValueRef_isDateTime".}
proc fcQCborValueRef_isUrl(self: pointer, ): bool {.importc: "QCborValueRef_isUrl".}
proc fcQCborValueRef_isRegularExpression(self: pointer, ): bool {.importc: "QCborValueRef_isRegularExpression".}
proc fcQCborValueRef_isUuid(self: pointer, ): bool {.importc: "QCborValueRef_isUuid".}
proc fcQCborValueRef_isInvalid(self: pointer, ): bool {.importc: "QCborValueRef_isInvalid".}
proc fcQCborValueRef_isContainer(self: pointer, ): bool {.importc: "QCborValueRef_isContainer".}
proc fcQCborValueRef_isSimpleType(self: pointer, ): bool {.importc: "QCborValueRef_isSimpleType".}
proc fcQCborValueRef_isSimpleTypeWithSt(self: pointer, st: cint): bool {.importc: "QCborValueRef_isSimpleTypeWithSt".}
proc fcQCborValueRef_toSimpleType(self: pointer, ): cint {.importc: "QCborValueRef_toSimpleType".}
proc fcQCborValueRef_tag(self: pointer, ): cint {.importc: "QCborValueRef_tag".}
proc fcQCborValueRef_taggedValue(self: pointer, ): pointer {.importc: "QCborValueRef_taggedValue".}
proc fcQCborValueRef_toInteger(self: pointer, ): clonglong {.importc: "QCborValueRef_toInteger".}
proc fcQCborValueRef_toBool(self: pointer, ): bool {.importc: "QCborValueRef_toBool".}
proc fcQCborValueRef_toDouble(self: pointer, ): float64 {.importc: "QCborValueRef_toDouble".}
proc fcQCborValueRef_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toByteArray".}
proc fcQCborValueRef_toString(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toString".}
proc fcQCborValueRef_toDateTime(self: pointer, ): pointer {.importc: "QCborValueRef_toDateTime".}
proc fcQCborValueRef_toUrl(self: pointer, ): pointer {.importc: "QCborValueRef_toUrl".}
proc fcQCborValueRef_toRegularExpression(self: pointer, ): pointer {.importc: "QCborValueRef_toRegularExpression".}
proc fcQCborValueRef_toUuid(self: pointer, ): pointer {.importc: "QCborValueRef_toUuid".}
proc fcQCborValueRef_toArray(self: pointer, ): pointer {.importc: "QCborValueRef_toArray".}
proc fcQCborValueRef_toArrayWithQCborArray(self: pointer, a: pointer): pointer {.importc: "QCborValueRef_toArrayWithQCborArray".}
proc fcQCborValueRef_toMap(self: pointer, ): pointer {.importc: "QCborValueRef_toMap".}
proc fcQCborValueRef_toMapWithQCborMap(self: pointer, m: pointer): pointer {.importc: "QCborValueRef_toMapWithQCborMap".}
proc fcQCborValueRef_operatorSubscript3(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborValueRef_operatorSubscript3".}
proc fcQCborValueRef_operatorSubscript5(self: pointer, key: clonglong): pointer {.importc: "QCborValueRef_operatorSubscript5".}
proc fcQCborValueRef_compare(self: pointer, other: pointer): cint {.importc: "QCborValueRef_compare".}
proc fcQCborValueRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborValueRef_operatorEqual".}
proc fcQCborValueRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborValueRef_operatorNotEqual".}
proc fcQCborValueRef_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborValueRef_operatorLesser".}
proc fcQCborValueRef_toVariant(self: pointer, ): pointer {.importc: "QCborValueRef_toVariant".}
proc fcQCborValueRef_toJsonValue(self: pointer, ): pointer {.importc: "QCborValueRef_toJsonValue".}
proc fcQCborValueRef_toCbor(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toCbor".}
proc fcQCborValueRef_toCborWithWriter(self: pointer, writer: pointer): void {.importc: "QCborValueRef_toCborWithWriter".}
proc fcQCborValueRef_toDiagnosticNotation(self: pointer, ): struct_miqt_string {.importc: "QCborValueRef_toDiagnosticNotation".}
proc fcQCborValueRef_toSimpleType1(self: pointer, defaultValue: cint): cint {.importc: "QCborValueRef_toSimpleType1".}
proc fcQCborValueRef_tag1(self: pointer, defaultValue: cint): cint {.importc: "QCborValueRef_tag1".}
proc fcQCborValueRef_taggedValue1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_taggedValue1".}
proc fcQCborValueRef_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QCborValueRef_toInteger1".}
proc fcQCborValueRef_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QCborValueRef_toBool1".}
proc fcQCborValueRef_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QCborValueRef_toDouble1".}
proc fcQCborValueRef_toByteArray1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValueRef_toByteArray1".}
proc fcQCborValueRef_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QCborValueRef_toString1".}
proc fcQCborValueRef_toDateTime1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toDateTime1".}
proc fcQCborValueRef_toUrl1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toUrl1".}
proc fcQCborValueRef_toRegularExpression1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toRegularExpression1".}
proc fcQCborValueRef_toUuid1(self: pointer, defaultValue: pointer): pointer {.importc: "QCborValueRef_toUuid1".}
proc fcQCborValueRef_toCbor1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValueRef_toCbor1".}
proc fcQCborValueRef_toCbor2(self: pointer, writer: pointer, opt: cint): void {.importc: "QCborValueRef_toCbor2".}
proc fcQCborValueRef_toDiagnosticNotation1(self: pointer, opt: cint): struct_miqt_string {.importc: "QCborValueRef_toDiagnosticNotation1".}
proc fcQCborValueRef_new(param1: pointer): ptr cQCborValueRef {.importc: "QCborValueRef_new".}
proc fcQCborValueRef_delete(self: pointer) {.importc: "QCborValueRef_delete".}

proc errorString*(self: gen_qcborvalue_types.QCborParserError, ): string =
  let v_ms = fcQCborParserError_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qcborvalue_types.QCborParserError) =
  fcQCborParserError_delete(self.h)
proc operatorAssign*(self: gen_qcborvalue_types.QCborValue, other: gen_qcborvalue_types.QCborValue): void =
  fcQCborValue_operatorAssign(self.h, other.h)

proc swap*(self: gen_qcborvalue_types.QCborValue, other: gen_qcborvalue_types.QCborValue): void =
  fcQCborValue_swap(self.h, other.h)

proc typeX*(self: gen_qcborvalue_types.QCborValue, ): cint =
  cint(fcQCborValue_typeX(self.h))

proc isInteger*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isInteger(self.h)

proc isByteArray*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isByteArray(self.h)

proc isString*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isString(self.h)

proc isArray*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isArray(self.h)

proc isMap*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isMap(self.h)

proc isTag*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isTag(self.h)

proc isFalse*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isFalse(self.h)

proc isTrue*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isTrue(self.h)

proc isBool*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isBool(self.h)

proc isNull*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isNull(self.h)

proc isUndefined*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isUndefined(self.h)

proc isDouble*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isDouble(self.h)

proc isDateTime*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isDateTime(self.h)

proc isUrl*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isUrl(self.h)

proc isRegularExpression*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isRegularExpression(self.h)

proc isUuid*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isUuid(self.h)

proc isInvalid*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isInvalid(self.h)

proc isContainer*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isContainer(self.h)

proc isSimpleType*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_isSimpleType(self.h)

proc isSimpleType*(self: gen_qcborvalue_types.QCborValue, st: cint): bool =
  fcQCborValue_isSimpleTypeWithSt(self.h, cint(st))

proc toSimpleType*(self: gen_qcborvalue_types.QCborValue, ): cint =
  cint(fcQCborValue_toSimpleType(self.h))

proc toInteger*(self: gen_qcborvalue_types.QCborValue, ): clonglong =
  fcQCborValue_toInteger(self.h)

proc toBool*(self: gen_qcborvalue_types.QCborValue, ): bool =
  fcQCborValue_toBool(self.h)

proc toDouble*(self: gen_qcborvalue_types.QCborValue, ): float64 =
  fcQCborValue_toDouble(self.h)

proc tag*(self: gen_qcborvalue_types.QCborValue, ): cint =
  cint(fcQCborValue_tag(self.h))

proc taggedValue*(self: gen_qcborvalue_types.QCborValue, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_taggedValue(self.h))

proc toByteArray*(self: gen_qcborvalue_types.QCborValue, ): seq[byte] =
  var v_bytearray = fcQCborValue_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: gen_qcborvalue_types.QCborValue, ): string =
  let v_ms = fcQCborValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: gen_qcborvalue_types.QCborValue, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQCborValue_toDateTime(self.h))

proc toUrl*(self: gen_qcborvalue_types.QCborValue, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQCborValue_toUrl(self.h))

proc toRegularExpression*(self: gen_qcborvalue_types.QCborValue, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQCborValue_toRegularExpression(self.h))

proc toUuid*(self: gen_qcborvalue_types.QCborValue, ): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQCborValue_toUuid(self.h))

proc toArray*(self: gen_qcborvalue_types.QCborValue, ): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborValue_toArray(self.h))

proc toArray*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborValue_toArrayWithDefaultValue(self.h, defaultValue.h))

proc toMap*(self: gen_qcborvalue_types.QCborValue, ): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborValue_toMap(self.h))

proc toMap*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborValue_toMapWithDefaultValue(self.h, defaultValue.h))

proc operatorSubscript*(self: gen_qcborvalue_types.QCborValue, key: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript*(self: gen_qcborvalue_types.QCborValue, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_operatorSubscript2(self.h, key))

proc operatorSubscript2*(self: gen_qcborvalue_types.QCborValue, key: clonglong): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborValue_operatorSubscript3(self.h, key))

proc operatorSubscript2*(self: gen_qcborvalue_types.QCborValue, key: string): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborValue_operatorSubscript5(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc compare*(self: gen_qcborvalue_types.QCborValue, other: gen_qcborvalue_types.QCborValue): cint =
  fcQCborValue_compare(self.h, other.h)

proc operatorEqual*(self: gen_qcborvalue_types.QCborValue, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValue_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcborvalue_types.QCborValue, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValue_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qcborvalue_types.QCborValue, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValue_operatorLesser(self.h, other.h)

proc fromVariant*(_: type gen_qcborvalue_types.QCborValue, variant: gen_qvariant_types.QVariant): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromVariant(variant.h))

proc toVariant*(self: gen_qcborvalue_types.QCborValue, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCborValue_toVariant(self.h))

proc fromJsonValue*(_: type gen_qcborvalue_types.QCborValue, v: gen_qjsonvalue_types.QJsonValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromJsonValue(v.h))

proc toJsonValue*(self: gen_qcborvalue_types.QCborValue, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQCborValue_toJsonValue(self.h))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, reader: gen_qcborstreamreader_types.QCborStreamReader): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCbor(reader.h))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, ba: seq[byte]): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCborWithBa(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, data: cstring, len: int64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCbor2(data, len))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, data: ptr uint8, len: int64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCbor3(data, len))

proc toCbor*(self: gen_qcborvalue_types.QCborValue, ): seq[byte] =
  var v_bytearray = fcQCborValue_toCbor(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor*(self: gen_qcborvalue_types.QCborValue, writer: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborValue_toCborWithWriter(self.h, writer.h)

proc toDiagnosticNotation*(self: gen_qcborvalue_types.QCborValue, ): string =
  let v_ms = fcQCborValue_toDiagnosticNotation(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toSimpleType*(self: gen_qcborvalue_types.QCborValue, defaultValue: cint): cint =
  cint(fcQCborValue_toSimpleType1(self.h, cint(defaultValue)))

proc toInteger*(self: gen_qcborvalue_types.QCborValue, defaultValue: clonglong): clonglong =
  fcQCborValue_toInteger1(self.h, defaultValue)

proc toBool*(self: gen_qcborvalue_types.QCborValue, defaultValue: bool): bool =
  fcQCborValue_toBool1(self.h, defaultValue)

proc toDouble*(self: gen_qcborvalue_types.QCborValue, defaultValue: float64): float64 =
  fcQCborValue_toDouble1(self.h, defaultValue)

proc tag*(self: gen_qcborvalue_types.QCborValue, defaultValue: cint): cint =
  cint(fcQCborValue_tag1(self.h, cint(defaultValue)))

proc taggedValue*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_taggedValue1(self.h, defaultValue.h))

proc toByteArray*(self: gen_qcborvalue_types.QCborValue, defaultValue: seq[byte]): seq[byte] =
  var v_bytearray = fcQCborValue_toByteArray1(self.h, struct_miqt_string(data: cast[cstring](if len(defaultValue) == 0: nil else: unsafeAddr defaultValue[0]), len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: gen_qcborvalue_types.QCborValue, defaultValue: string): string =
  let v_ms = fcQCborValue_toString1(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQCborValue_toDateTime1(self.h, defaultValue.h))

proc toUrl*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQCborValue_toUrl1(self.h, defaultValue.h))

proc toRegularExpression*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_qregularexpression_types.QRegularExpression): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQCborValue_toRegularExpression1(self.h, defaultValue.h))

proc toUuid*(self: gen_qcborvalue_types.QCborValue, defaultValue: gen_quuid_types.QUuid): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQCborValue_toUuid1(self.h, defaultValue.h))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, ba: seq[byte], error: gen_qcborvalue_types.QCborParserError): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCbor22(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))), error.h))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, data: cstring, len: int64, error: gen_qcborvalue_types.QCborParserError): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCbor32(data, len, error.h))

proc fromCbor*(_: type gen_qcborvalue_types.QCborValue, data: ptr uint8, len: int64, error: gen_qcborvalue_types.QCborParserError): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_fromCbor33(data, len, error.h))

proc toCbor*(self: gen_qcborvalue_types.QCborValue, opt: cint): seq[byte] =
  var v_bytearray = fcQCborValue_toCbor1(self.h, cint(opt))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor*(self: gen_qcborvalue_types.QCborValue, writer: gen_qcborstreamwriter_types.QCborStreamWriter, opt: cint): void =
  fcQCborValue_toCbor2(self.h, writer.h, cint(opt))

proc toDiagnosticNotation*(self: gen_qcborvalue_types.QCborValue, opts: cint): string =
  let v_ms = fcQCborValue_toDiagnosticNotation1(self.h, cint(opts))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new())

proc create*(T: type gen_qcborvalue_types.QCborValue,
    t_x: cint): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new2(cint(t_x)))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    b_x: bool): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new3(b_x))

proc create2*(T: type gen_qcborvalue_types.QCborValue,
    i: cint): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new4(i))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    u: cuint): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new5(u))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    i: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new6(i))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    v: float64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new7(v))

proc create3*(T: type gen_qcborvalue_types.QCborValue,
    st: cint): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new8(cint(st)))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    ba: seq[byte]): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new9(struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    s: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new10(struct_miqt_string(data: s, len: csize_t(len(s)))))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    s: cstring): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new11(s))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    a: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new12(a.h))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    m: gen_qcbormap_types.QCborMap): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new13(m.h))

proc create4*(T: type gen_qcborvalue_types.QCborValue,
    tag: cint): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new14(cint(tag)))

proc create5*(T: type gen_qcborvalue_types.QCborValue,
    t_x: cint): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new15(cint(t_x)))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    dt: gen_qdatetime_types.QDateTime): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new16(dt.h))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    url: gen_qurl_types.QUrl): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new17(url.h))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    rx: gen_qregularexpression_types.QRegularExpression): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new18(rx.h))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    uuid: gen_quuid_types.QUuid): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new19(uuid.h))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    other: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new20(other.h))

proc create*(T: type gen_qcborvalue_types.QCborValue,
    tag: cint, taggedValue: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new21(cint(tag), taggedValue.h))

proc create2*(T: type gen_qcborvalue_types.QCborValue,
    t_x: cint, tv: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValue_new22(cint(t_x), tv.h))

proc staticMetaObject*(_: type gen_qcborvalue_types.QCborValue): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCborValue_staticMetaObject())
proc delete*(self: gen_qcborvalue_types.QCborValue) =
  fcQCborValue_delete(self.h)
proc ToQCborValue*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueConstRef_ToQCborValue(self.h))

proc typeX*(self: gen_qcborvalue_types.QCborValueConstRef, ): cint =
  cint(fcQCborValueConstRef_typeX(self.h))

proc isInteger*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isInteger(self.h)

proc isByteArray*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isByteArray(self.h)

proc isString*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isString(self.h)

proc isArray*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isArray(self.h)

proc isMap*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isMap(self.h)

proc isTag*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isTag(self.h)

proc isFalse*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isFalse(self.h)

proc isTrue*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isTrue(self.h)

proc isBool*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isBool(self.h)

proc isNull*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isNull(self.h)

proc isUndefined*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isUndefined(self.h)

proc isDouble*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isDouble(self.h)

proc isDateTime*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isDateTime(self.h)

proc isUrl*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isUrl(self.h)

proc isRegularExpression*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isRegularExpression(self.h)

proc isUuid*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isUuid(self.h)

proc isInvalid*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isInvalid(self.h)

proc isContainer*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isContainer(self.h)

proc isSimpleType*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_isSimpleType(self.h)

proc isSimpleType*(self: gen_qcborvalue_types.QCborValueConstRef, st: cint): bool =
  fcQCborValueConstRef_isSimpleTypeWithSt(self.h, cint(st))

proc toSimpleType*(self: gen_qcborvalue_types.QCborValueConstRef, ): cint =
  cint(fcQCborValueConstRef_toSimpleType(self.h))

proc tag*(self: gen_qcborvalue_types.QCborValueConstRef, ): cint =
  cint(fcQCborValueConstRef_tag(self.h))

proc taggedValue*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueConstRef_taggedValue(self.h))

proc toInteger*(self: gen_qcborvalue_types.QCborValueConstRef, ): clonglong =
  fcQCborValueConstRef_toInteger(self.h)

proc toBool*(self: gen_qcborvalue_types.QCborValueConstRef, ): bool =
  fcQCborValueConstRef_toBool(self.h)

proc toDouble*(self: gen_qcborvalue_types.QCborValueConstRef, ): float64 =
  fcQCborValueConstRef_toDouble(self.h)

proc toByteArray*(self: gen_qcborvalue_types.QCborValueConstRef, ): seq[byte] =
  var v_bytearray = fcQCborValueConstRef_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: gen_qcborvalue_types.QCborValueConstRef, ): string =
  let v_ms = fcQCborValueConstRef_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQCborValueConstRef_toDateTime(self.h))

proc toUrl*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQCborValueConstRef_toUrl(self.h))

proc toRegularExpression*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQCborValueConstRef_toRegularExpression(self.h))

proc toUuid*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQCborValueConstRef_toUuid(self.h))

proc toArray*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborValueConstRef_toArray(self.h))

proc toArray*(self: gen_qcborvalue_types.QCborValueConstRef, a: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborValueConstRef_toArrayWithQCborArray(self.h, a.h))

proc toMap*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborValueConstRef_toMap(self.h))

proc toMap*(self: gen_qcborvalue_types.QCborValueConstRef, m: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborValueConstRef_toMapWithQCborMap(self.h, m.h))

proc operatorSubscript*(self: gen_qcborvalue_types.QCborValueConstRef, key: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueConstRef_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript*(self: gen_qcborvalue_types.QCborValueConstRef, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueConstRef_operatorSubscript2(self.h, key))

proc compare*(self: gen_qcborvalue_types.QCborValueConstRef, other: gen_qcborvalue_types.QCborValue): cint =
  fcQCborValueConstRef_compare(self.h, other.h)

proc operatorEqual*(self: gen_qcborvalue_types.QCborValueConstRef, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValueConstRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcborvalue_types.QCborValueConstRef, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValueConstRef_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qcborvalue_types.QCborValueConstRef, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValueConstRef_operatorLesser(self.h, other.h)

proc toVariant*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCborValueConstRef_toVariant(self.h))

proc toJsonValue*(self: gen_qcborvalue_types.QCborValueConstRef, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQCborValueConstRef_toJsonValue(self.h))

proc toCbor*(self: gen_qcborvalue_types.QCborValueConstRef, ): seq[byte] =
  var v_bytearray = fcQCborValueConstRef_toCbor(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor*(self: gen_qcborvalue_types.QCborValueConstRef, writer: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborValueConstRef_toCborWithWriter(self.h, writer.h)

proc toDiagnosticNotation*(self: gen_qcborvalue_types.QCborValueConstRef, ): string =
  let v_ms = fcQCborValueConstRef_toDiagnosticNotation(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toSimpleType*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: cint): cint =
  cint(fcQCborValueConstRef_toSimpleType1(self.h, cint(defaultValue)))

proc tag*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: cint): cint =
  cint(fcQCborValueConstRef_tag1(self.h, cint(defaultValue)))

proc taggedValue*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueConstRef_taggedValue1(self.h, defaultValue.h))

proc toInteger*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: clonglong): clonglong =
  fcQCborValueConstRef_toInteger1(self.h, defaultValue)

proc toBool*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: bool): bool =
  fcQCborValueConstRef_toBool1(self.h, defaultValue)

proc toDouble*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: float64): float64 =
  fcQCborValueConstRef_toDouble1(self.h, defaultValue)

proc toByteArray*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: seq[byte]): seq[byte] =
  var v_bytearray = fcQCborValueConstRef_toByteArray1(self.h, struct_miqt_string(data: cast[cstring](if len(defaultValue) == 0: nil else: unsafeAddr defaultValue[0]), len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: string): string =
  let v_ms = fcQCborValueConstRef_toString1(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQCborValueConstRef_toDateTime1(self.h, defaultValue.h))

proc toUrl*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQCborValueConstRef_toUrl1(self.h, defaultValue.h))

proc toRegularExpression*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: gen_qregularexpression_types.QRegularExpression): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQCborValueConstRef_toRegularExpression1(self.h, defaultValue.h))

proc toUuid*(self: gen_qcborvalue_types.QCborValueConstRef, defaultValue: gen_quuid_types.QUuid): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQCborValueConstRef_toUuid1(self.h, defaultValue.h))

proc toCbor*(self: gen_qcborvalue_types.QCborValueConstRef, opt: cint): seq[byte] =
  var v_bytearray = fcQCborValueConstRef_toCbor1(self.h, cint(opt))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor*(self: gen_qcborvalue_types.QCborValueConstRef, writer: gen_qcborstreamwriter_types.QCborStreamWriter, opt: cint): void =
  fcQCborValueConstRef_toCbor2(self.h, writer.h, cint(opt))

proc toDiagnosticNotation*(self: gen_qcborvalue_types.QCborValueConstRef, opt: cint): string =
  let v_ms = fcQCborValueConstRef_toDiagnosticNotation1(self.h, cint(opt))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qcborvalue_types.QCborValueConstRef,
    param1: gen_qcborvalue_types.QCborValueConstRef): gen_qcborvalue_types.QCborValueConstRef =
  gen_qcborvalue_types.QCborValueConstRef(h: fcQCborValueConstRef_new(param1.h))

proc delete*(self: gen_qcborvalue_types.QCborValueConstRef) =
  fcQCborValueConstRef_delete(self.h)
proc operatorAssign*(self: gen_qcborvalue_types.QCborValueRef, other: gen_qcborvalue_types.QCborValue): void =
  fcQCborValueRef_operatorAssign(self.h, other.h)

proc operatorAssign*(self: gen_qcborvalue_types.QCborValueRef, other: gen_qcborvalue_types.QCborValueRef): void =
  fcQCborValueRef_operatorAssignWithOther(self.h, other.h)

proc operatorSubscript*(self: gen_qcborvalue_types.QCborValueRef, key: clonglong): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborValueRef_operatorSubscript(self.h, key))

proc operatorSubscript*(self: gen_qcborvalue_types.QCborValueRef, key: string): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborValueRef_operatorSubscript2(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc ToQCborValue*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueRef_ToQCborValue(self.h))

proc typeX*(self: gen_qcborvalue_types.QCborValueRef, ): cint =
  cint(fcQCborValueRef_typeX(self.h))

proc isInteger*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isInteger(self.h)

proc isByteArray*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isByteArray(self.h)

proc isString*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isString(self.h)

proc isArray*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isArray(self.h)

proc isMap*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isMap(self.h)

proc isTag*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isTag(self.h)

proc isFalse*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isFalse(self.h)

proc isTrue*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isTrue(self.h)

proc isBool*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isBool(self.h)

proc isNull*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isNull(self.h)

proc isUndefined*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isUndefined(self.h)

proc isDouble*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isDouble(self.h)

proc isDateTime*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isDateTime(self.h)

proc isUrl*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isUrl(self.h)

proc isRegularExpression*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isRegularExpression(self.h)

proc isUuid*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isUuid(self.h)

proc isInvalid*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isInvalid(self.h)

proc isContainer*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isContainer(self.h)

proc isSimpleType*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_isSimpleType(self.h)

proc isSimpleType*(self: gen_qcborvalue_types.QCborValueRef, st: cint): bool =
  fcQCborValueRef_isSimpleTypeWithSt(self.h, cint(st))

proc toSimpleType*(self: gen_qcborvalue_types.QCborValueRef, ): cint =
  cint(fcQCborValueRef_toSimpleType(self.h))

proc tag*(self: gen_qcborvalue_types.QCborValueRef, ): cint =
  cint(fcQCborValueRef_tag(self.h))

proc taggedValue*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueRef_taggedValue(self.h))

proc toInteger*(self: gen_qcborvalue_types.QCborValueRef, ): clonglong =
  fcQCborValueRef_toInteger(self.h)

proc toBool*(self: gen_qcborvalue_types.QCborValueRef, ): bool =
  fcQCborValueRef_toBool(self.h)

proc toDouble*(self: gen_qcborvalue_types.QCborValueRef, ): float64 =
  fcQCborValueRef_toDouble(self.h)

proc toByteArray*(self: gen_qcborvalue_types.QCborValueRef, ): seq[byte] =
  var v_bytearray = fcQCborValueRef_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: gen_qcborvalue_types.QCborValueRef, ): string =
  let v_ms = fcQCborValueRef_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQCborValueRef_toDateTime(self.h))

proc toUrl*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQCborValueRef_toUrl(self.h))

proc toRegularExpression*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQCborValueRef_toRegularExpression(self.h))

proc toUuid*(self: gen_qcborvalue_types.QCborValueRef, ): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQCborValueRef_toUuid(self.h))

proc toArray*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborValueRef_toArray(self.h))

proc toArray*(self: gen_qcborvalue_types.QCborValueRef, a: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborValueRef_toArrayWithQCborArray(self.h, a.h))

proc toMap*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborValueRef_toMap(self.h))

proc toMap*(self: gen_qcborvalue_types.QCborValueRef, m: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborValueRef_toMapWithQCborMap(self.h, m.h))

proc operatorSubscript2*(self: gen_qcborvalue_types.QCborValueRef, key: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueRef_operatorSubscript3(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript2*(self: gen_qcborvalue_types.QCborValueRef, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueRef_operatorSubscript5(self.h, key))

proc compare*(self: gen_qcborvalue_types.QCborValueRef, other: gen_qcborvalue_types.QCborValue): cint =
  fcQCborValueRef_compare(self.h, other.h)

proc operatorEqual*(self: gen_qcborvalue_types.QCborValueRef, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValueRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcborvalue_types.QCborValueRef, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValueRef_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qcborvalue_types.QCborValueRef, other: gen_qcborvalue_types.QCborValue): bool =
  fcQCborValueRef_operatorLesser(self.h, other.h)

proc toVariant*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCborValueRef_toVariant(self.h))

proc toJsonValue*(self: gen_qcborvalue_types.QCborValueRef, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQCborValueRef_toJsonValue(self.h))

proc toCbor*(self: gen_qcborvalue_types.QCborValueRef, ): seq[byte] =
  var v_bytearray = fcQCborValueRef_toCbor(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor*(self: gen_qcborvalue_types.QCborValueRef, writer: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborValueRef_toCborWithWriter(self.h, writer.h)

proc toDiagnosticNotation*(self: gen_qcborvalue_types.QCborValueRef, ): string =
  let v_ms = fcQCborValueRef_toDiagnosticNotation(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toSimpleType*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: cint): cint =
  cint(fcQCborValueRef_toSimpleType1(self.h, cint(defaultValue)))

proc tag*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: cint): cint =
  cint(fcQCborValueRef_tag1(self.h, cint(defaultValue)))

proc taggedValue*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborValueRef_taggedValue1(self.h, defaultValue.h))

proc toInteger*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: clonglong): clonglong =
  fcQCborValueRef_toInteger1(self.h, defaultValue)

proc toBool*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: bool): bool =
  fcQCborValueRef_toBool1(self.h, defaultValue)

proc toDouble*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: float64): float64 =
  fcQCborValueRef_toDouble1(self.h, defaultValue)

proc toByteArray*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: seq[byte]): seq[byte] =
  var v_bytearray = fcQCborValueRef_toByteArray1(self.h, struct_miqt_string(data: cast[cstring](if len(defaultValue) == 0: nil else: unsafeAddr defaultValue[0]), len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toString*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: string): string =
  let v_ms = fcQCborValueRef_toString1(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDateTime*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: gen_qdatetime_types.QDateTime): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQCborValueRef_toDateTime1(self.h, defaultValue.h))

proc toUrl*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQCborValueRef_toUrl1(self.h, defaultValue.h))

proc toRegularExpression*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: gen_qregularexpression_types.QRegularExpression): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQCborValueRef_toRegularExpression1(self.h, defaultValue.h))

proc toUuid*(self: gen_qcborvalue_types.QCborValueRef, defaultValue: gen_quuid_types.QUuid): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQCborValueRef_toUuid1(self.h, defaultValue.h))

proc toCbor*(self: gen_qcborvalue_types.QCborValueRef, opt: cint): seq[byte] =
  var v_bytearray = fcQCborValueRef_toCbor1(self.h, cint(opt))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toCbor*(self: gen_qcborvalue_types.QCborValueRef, writer: gen_qcborstreamwriter_types.QCborStreamWriter, opt: cint): void =
  fcQCborValueRef_toCbor2(self.h, writer.h, cint(opt))

proc toDiagnosticNotation*(self: gen_qcborvalue_types.QCborValueRef, opt: cint): string =
  let v_ms = fcQCborValueRef_toDiagnosticNotation1(self.h, cint(opt))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qcborvalue_types.QCborValueRef,
    param1: gen_qcborvalue_types.QCborValueRef): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborValueRef_new(param1.h))

proc delete*(self: gen_qcborvalue_types.QCborValueRef) =
  fcQCborValueRef_delete(self.h)
