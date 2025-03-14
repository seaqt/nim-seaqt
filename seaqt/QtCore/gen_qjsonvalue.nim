import ./qtcore_pkg

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


type QJsonValueTypeEnum* = distinct cint
template Null*(_: type QJsonValueTypeEnum): untyped = 0
template Bool*(_: type QJsonValueTypeEnum): untyped = 1
template Double*(_: type QJsonValueTypeEnum): untyped = 2
template String*(_: type QJsonValueTypeEnum): untyped = 3
template Array*(_: type QJsonValueTypeEnum): untyped = 4
template Object*(_: type QJsonValueTypeEnum): untyped = 5
template Undefined*(_: type QJsonValueTypeEnum): untyped = 128


import ./gen_qjsonvalue_types
export gen_qjsonvalue_types

import
  ./gen_qjsonarray_types,
  ./gen_qjsonobject_types,
  ./gen_qvariant_types
export
  gen_qjsonarray_types,
  gen_qjsonobject_types,
  gen_qvariant_types

type cQJsonValue*{.exportc: "QJsonValue", incompleteStruct.} = object
type cQJsonValueConstRef*{.exportc: "QJsonValueConstRef", incompleteStruct.} = object
type cQJsonValueRef*{.exportc: "QJsonValueRef", incompleteStruct.} = object

proc fcQJsonValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonValue_operatorAssign".}
proc fcQJsonValue_swap(self: pointer, other: pointer): void {.importc: "QJsonValue_swap".}
proc fcQJsonValue_fromVariant(variant: pointer): pointer {.importc: "QJsonValue_fromVariant".}
proc fcQJsonValue_toVariant(self: pointer): pointer {.importc: "QJsonValue_toVariant".}
proc fcQJsonValue_typeX(self: pointer): cint {.importc: "QJsonValue_type".}
proc fcQJsonValue_isNull(self: pointer): bool {.importc: "QJsonValue_isNull".}
proc fcQJsonValue_isBool(self: pointer): bool {.importc: "QJsonValue_isBool".}
proc fcQJsonValue_isDouble(self: pointer): bool {.importc: "QJsonValue_isDouble".}
proc fcQJsonValue_isString(self: pointer): bool {.importc: "QJsonValue_isString".}
proc fcQJsonValue_isArray(self: pointer): bool {.importc: "QJsonValue_isArray".}
proc fcQJsonValue_isObject(self: pointer): bool {.importc: "QJsonValue_isObject".}
proc fcQJsonValue_isUndefined(self: pointer): bool {.importc: "QJsonValue_isUndefined".}
proc fcQJsonValue_toBool(self: pointer): bool {.importc: "QJsonValue_toBool".}
proc fcQJsonValue_toInt(self: pointer): cint {.importc: "QJsonValue_toInt".}
proc fcQJsonValue_toInteger(self: pointer): clonglong {.importc: "QJsonValue_toInteger".}
proc fcQJsonValue_toDouble(self: pointer): float64 {.importc: "QJsonValue_toDouble".}
proc fcQJsonValue_toString(self: pointer): struct_miqt_string {.importc: "QJsonValue_toString".}
proc fcQJsonValue_toStringWithDefaultValue(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValue_toStringWithDefaultValue".}
proc fcQJsonValue_toArray(self: pointer): pointer {.importc: "QJsonValue_toArray".}
proc fcQJsonValue_toArrayWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QJsonValue_toArrayWithDefaultValue".}
proc fcQJsonValue_toObject(self: pointer): pointer {.importc: "QJsonValue_toObject".}
proc fcQJsonValue_toObjectWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QJsonValue_toObjectWithDefaultValue".}
proc fcQJsonValue_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonValue_operatorSubscript".}
proc fcQJsonValue_operatorSubscriptWithQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonValue_operatorSubscriptWithQsizetype".}
proc fcQJsonValue_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValue_operatorEqual".}
proc fcQJsonValue_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValue_operatorNotEqual".}
proc fcQJsonValue_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QJsonValue_toBool1".}
proc fcQJsonValue_toInt1(self: pointer, defaultValue: cint): cint {.importc: "QJsonValue_toInt1".}
proc fcQJsonValue_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QJsonValue_toInteger1".}
proc fcQJsonValue_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValue_toDouble1".}
proc fcQJsonValue_new(): ptr cQJsonValue {.importc: "QJsonValue_new".}
proc fcQJsonValue_new2(b: bool): ptr cQJsonValue {.importc: "QJsonValue_new2".}
proc fcQJsonValue_new3(n: float64): ptr cQJsonValue {.importc: "QJsonValue_new3".}
proc fcQJsonValue_new4(n: cint): ptr cQJsonValue {.importc: "QJsonValue_new4".}
proc fcQJsonValue_new5(v: clonglong): ptr cQJsonValue {.importc: "QJsonValue_new5".}
proc fcQJsonValue_new6(s: struct_miqt_string): ptr cQJsonValue {.importc: "QJsonValue_new6".}
proc fcQJsonValue_new7(s: cstring): ptr cQJsonValue {.importc: "QJsonValue_new7".}
proc fcQJsonValue_new8(a: pointer): ptr cQJsonValue {.importc: "QJsonValue_new8".}
proc fcQJsonValue_new9(o: pointer): ptr cQJsonValue {.importc: "QJsonValue_new9".}
proc fcQJsonValue_new10(other: pointer): ptr cQJsonValue {.importc: "QJsonValue_new10".}
proc fcQJsonValue_new11(param1: cint): ptr cQJsonValue {.importc: "QJsonValue_new11".}
proc fcQJsonValueConstRef_ToQJsonValue(self: pointer): pointer {.importc: "QJsonValueConstRef_ToQJsonValue".}
proc fcQJsonValueConstRef_toVariant(self: pointer): pointer {.importc: "QJsonValueConstRef_toVariant".}
proc fcQJsonValueConstRef_typeX(self: pointer): cint {.importc: "QJsonValueConstRef_type".}
proc fcQJsonValueConstRef_isNull(self: pointer): bool {.importc: "QJsonValueConstRef_isNull".}
proc fcQJsonValueConstRef_isBool(self: pointer): bool {.importc: "QJsonValueConstRef_isBool".}
proc fcQJsonValueConstRef_isDouble(self: pointer): bool {.importc: "QJsonValueConstRef_isDouble".}
proc fcQJsonValueConstRef_isString(self: pointer): bool {.importc: "QJsonValueConstRef_isString".}
proc fcQJsonValueConstRef_isArray(self: pointer): bool {.importc: "QJsonValueConstRef_isArray".}
proc fcQJsonValueConstRef_isObject(self: pointer): bool {.importc: "QJsonValueConstRef_isObject".}
proc fcQJsonValueConstRef_isUndefined(self: pointer): bool {.importc: "QJsonValueConstRef_isUndefined".}
proc fcQJsonValueConstRef_toBool(self: pointer): bool {.importc: "QJsonValueConstRef_toBool".}
proc fcQJsonValueConstRef_toInt(self: pointer): cint {.importc: "QJsonValueConstRef_toInt".}
proc fcQJsonValueConstRef_toInteger(self: pointer): clonglong {.importc: "QJsonValueConstRef_toInteger".}
proc fcQJsonValueConstRef_toDouble(self: pointer): float64 {.importc: "QJsonValueConstRef_toDouble".}
proc fcQJsonValueConstRef_toString(self: pointer): struct_miqt_string {.importc: "QJsonValueConstRef_toString".}
proc fcQJsonValueConstRef_toArray(self: pointer): pointer {.importc: "QJsonValueConstRef_toArray".}
proc fcQJsonValueConstRef_toObject(self: pointer): pointer {.importc: "QJsonValueConstRef_toObject".}
proc fcQJsonValueConstRef_operatorSubscriptWithQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonValueConstRef_operatorSubscriptWithQsizetype".}
proc fcQJsonValueConstRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueConstRef_operatorEqual".}
proc fcQJsonValueConstRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueConstRef_operatorNotEqual".}
proc fcQJsonValueConstRef_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QJsonValueConstRef_toBool1".}
proc fcQJsonValueConstRef_toInt1(self: pointer, defaultValue: cint): cint {.importc: "QJsonValueConstRef_toInt1".}
proc fcQJsonValueConstRef_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QJsonValueConstRef_toInteger1".}
proc fcQJsonValueConstRef_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValueConstRef_toDouble1".}
proc fcQJsonValueConstRef_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValueConstRef_toString1".}
proc fcQJsonValueConstRef_protectedbase_objectKey(self: pointer): struct_miqt_string {.importc: "QJsonValueConstRef_protectedbase_objectKey".}
proc fcQJsonValueConstRef_protectedbase_rebind(self: pointer, other: pointer): void {.importc: "QJsonValueConstRef_protectedbase_rebind".}
proc fcQJsonValueConstRef_new(param1: pointer): ptr cQJsonValueConstRef {.importc: "QJsonValueConstRef_new".}
proc fcQJsonValueRef_operatorAssign(self: pointer, val: pointer): void {.importc: "QJsonValueRef_operatorAssign".}
proc fcQJsonValueRef_operatorAssignWithVal(self: pointer, val: pointer): void {.importc: "QJsonValueRef_operatorAssignWithVal".}
proc fcQJsonValueRef_ToQJsonValue(self: pointer): pointer {.importc: "QJsonValueRef_ToQJsonValue".}
proc fcQJsonValueRef_toVariant(self: pointer): pointer {.importc: "QJsonValueRef_toVariant".}
proc fcQJsonValueRef_typeX(self: pointer): cint {.importc: "QJsonValueRef_type".}
proc fcQJsonValueRef_isNull(self: pointer): bool {.importc: "QJsonValueRef_isNull".}
proc fcQJsonValueRef_isBool(self: pointer): bool {.importc: "QJsonValueRef_isBool".}
proc fcQJsonValueRef_isDouble(self: pointer): bool {.importc: "QJsonValueRef_isDouble".}
proc fcQJsonValueRef_isString(self: pointer): bool {.importc: "QJsonValueRef_isString".}
proc fcQJsonValueRef_isArray(self: pointer): bool {.importc: "QJsonValueRef_isArray".}
proc fcQJsonValueRef_isObject(self: pointer): bool {.importc: "QJsonValueRef_isObject".}
proc fcQJsonValueRef_isUndefined(self: pointer): bool {.importc: "QJsonValueRef_isUndefined".}
proc fcQJsonValueRef_toBool(self: pointer): bool {.importc: "QJsonValueRef_toBool".}
proc fcQJsonValueRef_toInt(self: pointer): cint {.importc: "QJsonValueRef_toInt".}
proc fcQJsonValueRef_toInteger(self: pointer): clonglong {.importc: "QJsonValueRef_toInteger".}
proc fcQJsonValueRef_toDouble(self: pointer): float64 {.importc: "QJsonValueRef_toDouble".}
proc fcQJsonValueRef_toString(self: pointer): struct_miqt_string {.importc: "QJsonValueRef_toString".}
proc fcQJsonValueRef_toArray(self: pointer): pointer {.importc: "QJsonValueRef_toArray".}
proc fcQJsonValueRef_toObject(self: pointer): pointer {.importc: "QJsonValueRef_toObject".}
proc fcQJsonValueRef_operatorSubscriptWithQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonValueRef_operatorSubscriptWithQsizetype".}
proc fcQJsonValueRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueRef_operatorEqual".}
proc fcQJsonValueRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueRef_operatorNotEqual".}
proc fcQJsonValueRef_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QJsonValueRef_toBool1".}
proc fcQJsonValueRef_toInt1(self: pointer, defaultValue: cint): cint {.importc: "QJsonValueRef_toInt1".}
proc fcQJsonValueRef_toInteger1(self: pointer, defaultValue: clonglong): clonglong {.importc: "QJsonValueRef_toInteger1".}
proc fcQJsonValueRef_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValueRef_toDouble1".}
proc fcQJsonValueRef_toString1(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValueRef_toString1".}
proc fcQJsonValueRef_protectedbase_objectKey(self: pointer): struct_miqt_string {.importc: "QJsonValueRef_protectedbase_objectKey".}
proc fcQJsonValueRef_protectedbase_rebind(self: pointer, other: pointer): void {.importc: "QJsonValueRef_protectedbase_rebind".}
proc fcQJsonValueRef_new(param1: pointer): ptr cQJsonValueRef {.importc: "QJsonValueRef_new".}
proc fcQJsonValueRef_new2(array: pointer, idx: int64): ptr cQJsonValueRef {.importc: "QJsonValueRef_new2".}
proc fcQJsonValueRef_new3(objectVal: pointer, idx: int64): ptr cQJsonValueRef {.importc: "QJsonValueRef_new3".}

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonValue_operatorAssign(self.h, other.h)

proc swap*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonValue_swap(self.h, other.h)

proc fromVariant*(_: type gen_qjsonvalue_types.QJsonValue, variant: gen_qvariant_types.QVariant): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_fromVariant(variant.h), owned: true)

proc toVariant*(self: gen_qjsonvalue_types.QJsonValue): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJsonValue_toVariant(self.h), owned: true)

proc typeX*(self: gen_qjsonvalue_types.QJsonValue): cint =
  cint(fcQJsonValue_typeX(self.h))

proc isNull*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isNull(self.h)

proc isBool*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isBool(self.h)

proc isDouble*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isDouble(self.h)

proc isString*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isString(self.h)

proc isArray*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isArray(self.h)

proc isObject*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isObject(self.h)

proc isUndefined*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_isUndefined(self.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_toBool(self.h)

proc toInt*(self: gen_qjsonvalue_types.QJsonValue): cint =
  fcQJsonValue_toInt(self.h)

proc toInteger*(self: gen_qjsonvalue_types.QJsonValue): clonglong =
  fcQJsonValue_toInteger(self.h)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValue): float64 =
  fcQJsonValue_toDouble(self.h)

proc toString*(self: gen_qjsonvalue_types.QJsonValue): string =
  let v_ms = fcQJsonValue_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: openArray[char]): string =
  let v_ms = fcQJsonValue_toStringWithDefaultValue(self.h, struct_miqt_string(data: if len(defaultValue) > 0: addr defaultValue[0] else: nil, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: gen_qjsonvalue_types.QJsonValue): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValue_toArray(self.h), owned: true)

proc toArray*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValue_toArrayWithDefaultValue(self.h, defaultValue.h), owned: true)

proc toObject*(self: gen_qjsonvalue_types.QJsonValue): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValue_toObject(self.h), owned: true)

proc toObject*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValue_toObjectWithDefaultValue(self.h, defaultValue.h), owned: true)

proc operatorSubscript*(self: gen_qjsonvalue_types.QJsonValue, key: openArray[char]): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_operatorSubscript(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc operatorSubscript*(self: gen_qjsonvalue_types.QJsonValue, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_operatorSubscriptWithQsizetype(self.h, i), owned: true)

proc operatorEqual*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_operatorNotEqual(self.h, other.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: bool): bool =
  fcQJsonValue_toBool1(self.h, defaultValue)

proc toInt*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: cint): cint =
  fcQJsonValue_toInt1(self.h, defaultValue)

proc toInteger*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: clonglong): clonglong =
  fcQJsonValue_toInteger1(self.h, defaultValue)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: float64): float64 =
  fcQJsonValue_toDouble1(self.h, defaultValue)

proc create*(T: type gen_qjsonvalue_types.QJsonValue): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new(), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    b: bool): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new2(b), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    n: float64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new3(n), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    n: cint): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new4(n), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    v: clonglong): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new5(v), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    s: openArray[char]): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new6(struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s)))), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    s: cstring): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new7(s), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    a: gen_qjsonarray_types.QJsonArray): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new8(a.h), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    o: gen_qjsonobject_types.QJsonObject): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new9(o.h), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValue,
    other: gen_qjsonvalue_types.QJsonValue): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new10(other.h), owned: true)

proc create2*(T: type gen_qjsonvalue_types.QJsonValue,
    param1: cint): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_new11(cint(param1)), owned: true)

proc ToQJsonValue*(self: gen_qjsonvalue_types.QJsonValueConstRef): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValueConstRef_ToQJsonValue(self.h), owned: true)

proc toVariant*(self: gen_qjsonvalue_types.QJsonValueConstRef): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJsonValueConstRef_toVariant(self.h), owned: true)

proc typeX*(self: gen_qjsonvalue_types.QJsonValueConstRef): cint =
  cint(fcQJsonValueConstRef_typeX(self.h))

proc isNull*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isNull(self.h)

proc isBool*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isBool(self.h)

proc isDouble*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isDouble(self.h)

proc isString*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isString(self.h)

proc isArray*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isArray(self.h)

proc isObject*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isObject(self.h)

proc isUndefined*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_isUndefined(self.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValueConstRef): bool =
  fcQJsonValueConstRef_toBool(self.h)

proc toInt*(self: gen_qjsonvalue_types.QJsonValueConstRef): cint =
  fcQJsonValueConstRef_toInt(self.h)

proc toInteger*(self: gen_qjsonvalue_types.QJsonValueConstRef): clonglong =
  fcQJsonValueConstRef_toInteger(self.h)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValueConstRef): float64 =
  fcQJsonValueConstRef_toDouble(self.h)

proc toString*(self: gen_qjsonvalue_types.QJsonValueConstRef): string =
  let v_ms = fcQJsonValueConstRef_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: gen_qjsonvalue_types.QJsonValueConstRef): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValueConstRef_toArray(self.h), owned: true)

proc toObject*(self: gen_qjsonvalue_types.QJsonValueConstRef): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValueConstRef_toObject(self.h), owned: true)

proc operatorSubscript*(self: gen_qjsonvalue_types.QJsonValueConstRef, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValueConstRef_operatorSubscriptWithQsizetype(self.h, i), owned: true)

proc operatorEqual*(self: gen_qjsonvalue_types.QJsonValueConstRef, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValueConstRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonvalue_types.QJsonValueConstRef, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValueConstRef_operatorNotEqual(self.h, other.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValueConstRef, defaultValue: bool): bool =
  fcQJsonValueConstRef_toBool1(self.h, defaultValue)

proc toInt*(self: gen_qjsonvalue_types.QJsonValueConstRef, defaultValue: cint): cint =
  fcQJsonValueConstRef_toInt1(self.h, defaultValue)

proc toInteger*(self: gen_qjsonvalue_types.QJsonValueConstRef, defaultValue: clonglong): clonglong =
  fcQJsonValueConstRef_toInteger1(self.h, defaultValue)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValueConstRef, defaultValue: float64): float64 =
  fcQJsonValueConstRef_toDouble1(self.h, defaultValue)

proc toString*(self: gen_qjsonvalue_types.QJsonValueConstRef, defaultValue: openArray[char]): string =
  let v_ms = fcQJsonValueConstRef_toString1(self.h, struct_miqt_string(data: if len(defaultValue) > 0: addr defaultValue[0] else: nil, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc objectKey*(self: gen_qjsonvalue_types.QJsonValueConstRef): string =
  let v_ms = fcQJsonValueConstRef_protectedbase_objectKey(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rebind*(self: gen_qjsonvalue_types.QJsonValueConstRef, other: gen_qjsonvalue_types.QJsonValueConstRef): void =
  fcQJsonValueConstRef_protectedbase_rebind(self.h, other.h)

proc create*(T: type gen_qjsonvalue_types.QJsonValueConstRef,
    param1: gen_qjsonvalue_types.QJsonValueConstRef): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonValueConstRef_new(param1.h), owned: true)

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValueRef, val: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonValueRef_operatorAssign(self.h, val.h)

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValueRef, val: gen_qjsonvalue_types.QJsonValueRef): void =
  fcQJsonValueRef_operatorAssignWithVal(self.h, val.h)

proc ToQJsonValue*(self: gen_qjsonvalue_types.QJsonValueRef): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValueRef_ToQJsonValue(self.h), owned: true)

proc toVariant*(self: gen_qjsonvalue_types.QJsonValueRef): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJsonValueRef_toVariant(self.h), owned: true)

proc typeX*(self: gen_qjsonvalue_types.QJsonValueRef): cint =
  cint(fcQJsonValueRef_typeX(self.h))

proc isNull*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isNull(self.h)

proc isBool*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isBool(self.h)

proc isDouble*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isDouble(self.h)

proc isString*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isString(self.h)

proc isArray*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isArray(self.h)

proc isObject*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isObject(self.h)

proc isUndefined*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_isUndefined(self.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValueRef): bool =
  fcQJsonValueRef_toBool(self.h)

proc toInt*(self: gen_qjsonvalue_types.QJsonValueRef): cint =
  fcQJsonValueRef_toInt(self.h)

proc toInteger*(self: gen_qjsonvalue_types.QJsonValueRef): clonglong =
  fcQJsonValueRef_toInteger(self.h)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValueRef): float64 =
  fcQJsonValueRef_toDouble(self.h)

proc toString*(self: gen_qjsonvalue_types.QJsonValueRef): string =
  let v_ms = fcQJsonValueRef_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: gen_qjsonvalue_types.QJsonValueRef): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValueRef_toArray(self.h), owned: true)

proc toObject*(self: gen_qjsonvalue_types.QJsonValueRef): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValueRef_toObject(self.h), owned: true)

proc operatorSubscript*(self: gen_qjsonvalue_types.QJsonValueRef, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValueRef_operatorSubscriptWithQsizetype(self.h, i), owned: true)

proc operatorEqual*(self: gen_qjsonvalue_types.QJsonValueRef, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValueRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonvalue_types.QJsonValueRef, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValueRef_operatorNotEqual(self.h, other.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: bool): bool =
  fcQJsonValueRef_toBool1(self.h, defaultValue)

proc toInt*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: cint): cint =
  fcQJsonValueRef_toInt1(self.h, defaultValue)

proc toInteger*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: clonglong): clonglong =
  fcQJsonValueRef_toInteger1(self.h, defaultValue)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: float64): float64 =
  fcQJsonValueRef_toDouble1(self.h, defaultValue)

proc toString*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: openArray[char]): string =
  let v_ms = fcQJsonValueRef_toString1(self.h, struct_miqt_string(data: if len(defaultValue) > 0: addr defaultValue[0] else: nil, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc objectKey*(self: gen_qjsonvalue_types.QJsonValueRef): string =
  let v_ms = fcQJsonValueRef_protectedbase_objectKey(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rebind*(self: gen_qjsonvalue_types.QJsonValueRef, other: gen_qjsonvalue_types.QJsonValueConstRef): void =
  fcQJsonValueRef_protectedbase_rebind(self.h, other.h)

proc create*(T: type gen_qjsonvalue_types.QJsonValueRef,
    param1: gen_qjsonvalue_types.QJsonValueRef): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonValueRef_new(param1.h), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValueRef,
    array: gen_qjsonarray_types.QJsonArray, idx: int64): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonValueRef_new2(array.h, idx), owned: true)

proc create*(T: type gen_qjsonvalue_types.QJsonValueRef,
    objectVal: gen_qjsonobject_types.QJsonObject, idx: int64): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonValueRef_new3(objectVal.h, idx), owned: true)

