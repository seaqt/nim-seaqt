import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qjsonvalue.cpp", cflags).}


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
type cQJsonValueRef*{.exportc: "QJsonValueRef", incompleteStruct.} = object
type cQJsonValuePtr*{.exportc: "QJsonValuePtr", incompleteStruct.} = object
type cQJsonValueRefPtr*{.exportc: "QJsonValueRefPtr", incompleteStruct.} = object

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
proc fcQJsonValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QJsonValue_operatorAssign".}
proc fcQJsonValue_swap(self: pointer, other: pointer): void {.importc: "QJsonValue_swap".}
proc fcQJsonValue_fromVariant(variant: pointer): pointer {.importc: "QJsonValue_fromVariant".}
proc fcQJsonValue_toVariant(self: pointer, ): pointer {.importc: "QJsonValue_toVariant".}
proc fcQJsonValue_typeX(self: pointer, ): cint {.importc: "QJsonValue_type".}
proc fcQJsonValue_isNull(self: pointer, ): bool {.importc: "QJsonValue_isNull".}
proc fcQJsonValue_isBool(self: pointer, ): bool {.importc: "QJsonValue_isBool".}
proc fcQJsonValue_isDouble(self: pointer, ): bool {.importc: "QJsonValue_isDouble".}
proc fcQJsonValue_isString(self: pointer, ): bool {.importc: "QJsonValue_isString".}
proc fcQJsonValue_isArray(self: pointer, ): bool {.importc: "QJsonValue_isArray".}
proc fcQJsonValue_isObject(self: pointer, ): bool {.importc: "QJsonValue_isObject".}
proc fcQJsonValue_isUndefined(self: pointer, ): bool {.importc: "QJsonValue_isUndefined".}
proc fcQJsonValue_toBool(self: pointer, ): bool {.importc: "QJsonValue_toBool".}
proc fcQJsonValue_toInt(self: pointer, ): cint {.importc: "QJsonValue_toInt".}
proc fcQJsonValue_toDouble(self: pointer, ): float64 {.importc: "QJsonValue_toDouble".}
proc fcQJsonValue_toString(self: pointer, ): struct_miqt_string {.importc: "QJsonValue_toString".}
proc fcQJsonValue_toStringWithDefaultValue(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValue_toStringWithDefaultValue".}
proc fcQJsonValue_toArray(self: pointer, ): pointer {.importc: "QJsonValue_toArray".}
proc fcQJsonValue_toArrayWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QJsonValue_toArrayWithDefaultValue".}
proc fcQJsonValue_toObject(self: pointer, ): pointer {.importc: "QJsonValue_toObject".}
proc fcQJsonValue_toObjectWithDefaultValue(self: pointer, defaultValue: pointer): pointer {.importc: "QJsonValue_toObjectWithDefaultValue".}
proc fcQJsonValue_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QJsonValue_operatorSubscript".}
proc fcQJsonValue_operatorSubscriptWithInt(self: pointer, i: cint): pointer {.importc: "QJsonValue_operatorSubscriptWithInt".}
proc fcQJsonValue_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValue_operatorEqual".}
proc fcQJsonValue_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValue_operatorNotEqual".}
proc fcQJsonValue_toBool1(self: pointer, defaultValue: bool): bool {.importc: "QJsonValue_toBool1".}
proc fcQJsonValue_toInt1(self: pointer, defaultValue: cint): cint {.importc: "QJsonValue_toInt1".}
proc fcQJsonValue_toDouble1(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValue_toDouble1".}
proc fcQJsonValue_delete(self: pointer) {.importc: "QJsonValue_delete".}
proc fcQJsonValueRef_new(param1: pointer): ptr cQJsonValueRef {.importc: "QJsonValueRef_new".}
proc fcQJsonValueRef_new2(array: pointer, idx: cint): ptr cQJsonValueRef {.importc: "QJsonValueRef_new2".}
proc fcQJsonValueRef_new3(objectVal: pointer, idx: cint): ptr cQJsonValueRef {.importc: "QJsonValueRef_new3".}
proc fcQJsonValueRef_ToQJsonValue(self: pointer, ): pointer {.importc: "QJsonValueRef_ToQJsonValue".}
proc fcQJsonValueRef_operatorAssign(self: pointer, val: pointer): void {.importc: "QJsonValueRef_operatorAssign".}
proc fcQJsonValueRef_operatorAssignWithVal(self: pointer, val: pointer): void {.importc: "QJsonValueRef_operatorAssignWithVal".}
proc fcQJsonValueRef_toVariant(self: pointer, ): pointer {.importc: "QJsonValueRef_toVariant".}
proc fcQJsonValueRef_typeX(self: pointer, ): cint {.importc: "QJsonValueRef_type".}
proc fcQJsonValueRef_isNull(self: pointer, ): bool {.importc: "QJsonValueRef_isNull".}
proc fcQJsonValueRef_isBool(self: pointer, ): bool {.importc: "QJsonValueRef_isBool".}
proc fcQJsonValueRef_isDouble(self: pointer, ): bool {.importc: "QJsonValueRef_isDouble".}
proc fcQJsonValueRef_isString(self: pointer, ): bool {.importc: "QJsonValueRef_isString".}
proc fcQJsonValueRef_isArray(self: pointer, ): bool {.importc: "QJsonValueRef_isArray".}
proc fcQJsonValueRef_isObject(self: pointer, ): bool {.importc: "QJsonValueRef_isObject".}
proc fcQJsonValueRef_isUndefined(self: pointer, ): bool {.importc: "QJsonValueRef_isUndefined".}
proc fcQJsonValueRef_toBool(self: pointer, ): bool {.importc: "QJsonValueRef_toBool".}
proc fcQJsonValueRef_toInt(self: pointer, ): cint {.importc: "QJsonValueRef_toInt".}
proc fcQJsonValueRef_toDouble(self: pointer, ): float64 {.importc: "QJsonValueRef_toDouble".}
proc fcQJsonValueRef_toString(self: pointer, ): struct_miqt_string {.importc: "QJsonValueRef_toString".}
proc fcQJsonValueRef_toArray(self: pointer, ): pointer {.importc: "QJsonValueRef_toArray".}
proc fcQJsonValueRef_toObject(self: pointer, ): pointer {.importc: "QJsonValueRef_toObject".}
proc fcQJsonValueRef_toBoolWithDefaultValue(self: pointer, defaultValue: bool): bool {.importc: "QJsonValueRef_toBoolWithDefaultValue".}
proc fcQJsonValueRef_toIntWithDefaultValue(self: pointer, defaultValue: cint): cint {.importc: "QJsonValueRef_toIntWithDefaultValue".}
proc fcQJsonValueRef_toDoubleWithDefaultValue(self: pointer, defaultValue: float64): float64 {.importc: "QJsonValueRef_toDoubleWithDefaultValue".}
proc fcQJsonValueRef_toStringWithDefaultValue(self: pointer, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QJsonValueRef_toStringWithDefaultValue".}
proc fcQJsonValueRef_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueRef_operatorEqual".}
proc fcQJsonValueRef_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonValueRef_operatorNotEqual".}
proc fcQJsonValueRef_delete(self: pointer) {.importc: "QJsonValueRef_delete".}
proc fcQJsonValuePtr_new(val: pointer): ptr cQJsonValuePtr {.importc: "QJsonValuePtr_new".}
proc fcQJsonValuePtr_new2(param1: pointer): ptr cQJsonValuePtr {.importc: "QJsonValuePtr_new2".}
proc fcQJsonValuePtr_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonValuePtr_operatorMultiply".}
proc fcQJsonValuePtr_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonValuePtr_operatorMinusGreater".}
proc fcQJsonValuePtr_operatorAssign(self: pointer, param1: pointer): void {.importc: "QJsonValuePtr_operatorAssign".}
proc fcQJsonValuePtr_delete(self: pointer) {.importc: "QJsonValuePtr_delete".}
proc fcQJsonValueRefPtr_new(array: pointer, idx: cint): ptr cQJsonValueRefPtr {.importc: "QJsonValueRefPtr_new".}
proc fcQJsonValueRefPtr_new2(objectVal: pointer, idx: cint): ptr cQJsonValueRefPtr {.importc: "QJsonValueRefPtr_new2".}
proc fcQJsonValueRefPtr_new3(param1: pointer): ptr cQJsonValueRefPtr {.importc: "QJsonValueRefPtr_new3".}
proc fcQJsonValueRefPtr_operatorMultiply(self: pointer, ): pointer {.importc: "QJsonValueRefPtr_operatorMultiply".}
proc fcQJsonValueRefPtr_operatorMinusGreater(self: pointer, ): pointer {.importc: "QJsonValueRefPtr_operatorMinusGreater".}
proc fcQJsonValueRefPtr_operatorAssign(self: pointer, param1: pointer): void {.importc: "QJsonValueRefPtr_operatorAssign".}
proc fcQJsonValueRefPtr_delete(self: pointer) {.importc: "QJsonValueRefPtr_delete".}


func init*(T: type gen_qjsonvalue_types.QJsonValue, h: ptr cQJsonValue): gen_qjsonvalue_types.QJsonValue =
  T(h: h)
proc create*(T: type gen_qjsonvalue_types.QJsonValue, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new())

proc create*(T: type gen_qjsonvalue_types.QJsonValue, b: bool): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new2(b))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, n: float64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new3(n))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, n: cint): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new4(n))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, v: clonglong): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new5(v))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, s: string): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new6(struct_miqt_string(data: s, len: csize_t(len(s)))))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, s: cstring): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new7(s))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, a: gen_qjsonarray_types.QJsonArray): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new8(a.h))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, o: gen_qjsonobject_types.QJsonObject): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new9(o.h))

proc create*(T: type gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new10(other.h))

proc create2*(T: type gen_qjsonvalue_types.QJsonValue, param1: cint): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue.init(fcQJsonValue_new11(cint(param1)))

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonValue_operatorAssign(self.h, other.h)

proc swap*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonValue_swap(self.h, other.h)

proc fromVariant*(_: type gen_qjsonvalue_types.QJsonValue, variant: gen_qvariant_types.QVariant): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_fromVariant(variant.h))

proc toVariant*(self: gen_qjsonvalue_types.QJsonValue, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJsonValue_toVariant(self.h))

proc typeX*(self: gen_qjsonvalue_types.QJsonValue, ): cint =
  cint(fcQJsonValue_typeX(self.h))

proc isNull*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isNull(self.h)

proc isBool*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isBool(self.h)

proc isDouble*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isDouble(self.h)

proc isString*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isString(self.h)

proc isArray*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isArray(self.h)

proc isObject*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isObject(self.h)

proc isUndefined*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_isUndefined(self.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValue, ): bool =
  fcQJsonValue_toBool(self.h)

proc toInt*(self: gen_qjsonvalue_types.QJsonValue, ): cint =
  fcQJsonValue_toInt(self.h)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValue, ): float64 =
  fcQJsonValue_toDouble(self.h)

proc toString*(self: gen_qjsonvalue_types.QJsonValue, ): string =
  let v_ms = fcQJsonValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: string): string =
  let v_ms = fcQJsonValue_toStringWithDefaultValue(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: gen_qjsonvalue_types.QJsonValue, ): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValue_toArray(self.h))

proc toArray*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValue_toArrayWithDefaultValue(self.h, defaultValue.h))

proc toObject*(self: gen_qjsonvalue_types.QJsonValue, ): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValue_toObject(self.h))

proc toObject*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValue_toObjectWithDefaultValue(self.h, defaultValue.h))

proc operatorSubscript*(self: gen_qjsonvalue_types.QJsonValue, key: string): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript*(self: gen_qjsonvalue_types.QJsonValue, i: cint): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValue_operatorSubscriptWithInt(self.h, i))

proc operatorEqual*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonvalue_types.QJsonValue, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValue_operatorNotEqual(self.h, other.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: bool): bool =
  fcQJsonValue_toBool1(self.h, defaultValue)

proc toInt*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: cint): cint =
  fcQJsonValue_toInt1(self.h, defaultValue)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValue, defaultValue: float64): float64 =
  fcQJsonValue_toDouble1(self.h, defaultValue)

proc delete*(self: gen_qjsonvalue_types.QJsonValue) =
  fcQJsonValue_delete(self.h)

func init*(T: type gen_qjsonvalue_types.QJsonValueRef, h: ptr cQJsonValueRef): gen_qjsonvalue_types.QJsonValueRef =
  T(h: h)
proc create*(T: type gen_qjsonvalue_types.QJsonValueRef, param1: gen_qjsonvalue_types.QJsonValueRef): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef.init(fcQJsonValueRef_new(param1.h))

proc create*(T: type gen_qjsonvalue_types.QJsonValueRef, array: gen_qjsonarray_types.QJsonArray, idx: cint): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef.init(fcQJsonValueRef_new2(array.h, idx))

proc create*(T: type gen_qjsonvalue_types.QJsonValueRef, objectVal: gen_qjsonobject_types.QJsonObject, idx: cint): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef.init(fcQJsonValueRef_new3(objectVal.h, idx))

proc ToQJsonValue*(self: gen_qjsonvalue_types.QJsonValueRef, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValueRef_ToQJsonValue(self.h))

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValueRef, val: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonValueRef_operatorAssign(self.h, val.h)

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValueRef, val: gen_qjsonvalue_types.QJsonValueRef): void =
  fcQJsonValueRef_operatorAssignWithVal(self.h, val.h)

proc toVariant*(self: gen_qjsonvalue_types.QJsonValueRef, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJsonValueRef_toVariant(self.h))

proc typeX*(self: gen_qjsonvalue_types.QJsonValueRef, ): cint =
  cint(fcQJsonValueRef_typeX(self.h))

proc isNull*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isNull(self.h)

proc isBool*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isBool(self.h)

proc isDouble*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isDouble(self.h)

proc isString*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isString(self.h)

proc isArray*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isArray(self.h)

proc isObject*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isObject(self.h)

proc isUndefined*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_isUndefined(self.h)

proc toBool*(self: gen_qjsonvalue_types.QJsonValueRef, ): bool =
  fcQJsonValueRef_toBool(self.h)

proc toInt*(self: gen_qjsonvalue_types.QJsonValueRef, ): cint =
  fcQJsonValueRef_toInt(self.h)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValueRef, ): float64 =
  fcQJsonValueRef_toDouble(self.h)

proc toString*(self: gen_qjsonvalue_types.QJsonValueRef, ): string =
  let v_ms = fcQJsonValueRef_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toArray*(self: gen_qjsonvalue_types.QJsonValueRef, ): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonValueRef_toArray(self.h))

proc toObject*(self: gen_qjsonvalue_types.QJsonValueRef, ): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQJsonValueRef_toObject(self.h))

proc toBool*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: bool): bool =
  fcQJsonValueRef_toBoolWithDefaultValue(self.h, defaultValue)

proc toInt*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: cint): cint =
  fcQJsonValueRef_toIntWithDefaultValue(self.h, defaultValue)

proc toDouble*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: float64): float64 =
  fcQJsonValueRef_toDoubleWithDefaultValue(self.h, defaultValue)

proc toString*(self: gen_qjsonvalue_types.QJsonValueRef, defaultValue: string): string =
  let v_ms = fcQJsonValueRef_toStringWithDefaultValue(self.h, struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: gen_qjsonvalue_types.QJsonValueRef, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValueRef_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonvalue_types.QJsonValueRef, other: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonValueRef_operatorNotEqual(self.h, other.h)

proc delete*(self: gen_qjsonvalue_types.QJsonValueRef) =
  fcQJsonValueRef_delete(self.h)

func init*(T: type gen_qjsonvalue_types.QJsonValuePtr, h: ptr cQJsonValuePtr): gen_qjsonvalue_types.QJsonValuePtr =
  T(h: h)
proc create*(T: type gen_qjsonvalue_types.QJsonValuePtr, val: gen_qjsonvalue_types.QJsonValue): gen_qjsonvalue_types.QJsonValuePtr =
  gen_qjsonvalue_types.QJsonValuePtr.init(fcQJsonValuePtr_new(val.h))

proc create*(T: type gen_qjsonvalue_types.QJsonValuePtr, param1: gen_qjsonvalue_types.QJsonValuePtr): gen_qjsonvalue_types.QJsonValuePtr =
  gen_qjsonvalue_types.QJsonValuePtr.init(fcQJsonValuePtr_new2(param1.h))

proc operatorMultiply*(self: gen_qjsonvalue_types.QJsonValuePtr, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValuePtr_operatorMultiply(self.h))

proc operatorMinusGreater*(self: gen_qjsonvalue_types.QJsonValuePtr, ): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonValuePtr_operatorMinusGreater(self.h))

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValuePtr, param1: gen_qjsonvalue_types.QJsonValuePtr): void =
  fcQJsonValuePtr_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qjsonvalue_types.QJsonValuePtr) =
  fcQJsonValuePtr_delete(self.h)

func init*(T: type gen_qjsonvalue_types.QJsonValueRefPtr, h: ptr cQJsonValueRefPtr): gen_qjsonvalue_types.QJsonValueRefPtr =
  T(h: h)
proc create*(T: type gen_qjsonvalue_types.QJsonValueRefPtr, array: gen_qjsonarray_types.QJsonArray, idx: cint): gen_qjsonvalue_types.QJsonValueRefPtr =
  gen_qjsonvalue_types.QJsonValueRefPtr.init(fcQJsonValueRefPtr_new(array.h, idx))

proc create*(T: type gen_qjsonvalue_types.QJsonValueRefPtr, objectVal: gen_qjsonobject_types.QJsonObject, idx: cint): gen_qjsonvalue_types.QJsonValueRefPtr =
  gen_qjsonvalue_types.QJsonValueRefPtr.init(fcQJsonValueRefPtr_new2(objectVal.h, idx))

proc create*(T: type gen_qjsonvalue_types.QJsonValueRefPtr, param1: gen_qjsonvalue_types.QJsonValueRefPtr): gen_qjsonvalue_types.QJsonValueRefPtr =
  gen_qjsonvalue_types.QJsonValueRefPtr.init(fcQJsonValueRefPtr_new3(param1.h))

proc operatorMultiply*(self: gen_qjsonvalue_types.QJsonValueRefPtr, ): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonValueRefPtr_operatorMultiply(self.h))

proc operatorMinusGreater*(self: gen_qjsonvalue_types.QJsonValueRefPtr, ): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonValueRefPtr_operatorMinusGreater(self.h))

proc operatorAssign*(self: gen_qjsonvalue_types.QJsonValueRefPtr, param1: gen_qjsonvalue_types.QJsonValueRefPtr): void =
  fcQJsonValueRefPtr_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qjsonvalue_types.QJsonValueRefPtr) =
  fcQJsonValueRefPtr_delete(self.h)
