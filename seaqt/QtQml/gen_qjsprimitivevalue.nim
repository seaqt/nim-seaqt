import ./qtqml_pkg

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


type QJSPrimitiveValueTypeEnum* = distinct uint8
template Undefined*(_: type QJSPrimitiveValueTypeEnum): untyped = 0
template Null*(_: type QJSPrimitiveValueTypeEnum): untyped = 1
template Boolean*(_: type QJSPrimitiveValueTypeEnum): untyped = 2
template Integer*(_: type QJSPrimitiveValueTypeEnum): untyped = 3
template Double*(_: type QJSPrimitiveValueTypeEnum): untyped = 4
template String*(_: type QJSPrimitiveValueTypeEnum): untyped = 5


import ./gen_qjsprimitivevalue_types
export gen_qjsprimitivevalue_types

import
  ../QtCore/gen_qmetatype_types,
  ../QtCore/gen_qvariant_types
export
  gen_qmetatype_types,
  gen_qvariant_types

type cQJSPrimitiveUndefined*{.exportc: "QJSPrimitiveUndefined", incompleteStruct.} = object
type cQJSPrimitiveNull*{.exportc: "QJSPrimitiveNull", incompleteStruct.} = object
type cQJSPrimitiveValue*{.exportc: "QJSPrimitiveValue", incompleteStruct.} = object

proc fcQJSPrimitiveUndefined_new(): ptr cQJSPrimitiveUndefined {.importc: "QJSPrimitiveUndefined_new".}
proc fcQJSPrimitiveUndefined_new2(fromVal: pointer): ptr cQJSPrimitiveUndefined {.importc: "QJSPrimitiveUndefined_new_from".}
proc fcQJSPrimitiveNull_new(): ptr cQJSPrimitiveNull {.importc: "QJSPrimitiveNull_new".}
proc fcQJSPrimitiveNull_new2(fromVal: pointer): ptr cQJSPrimitiveNull {.importc: "QJSPrimitiveNull_new_from".}
proc fcQJSPrimitiveValue_typeX(self: pointer): cint {.importc: "QJSPrimitiveValue_type".}
proc fcQJSPrimitiveValue_metaType(self: pointer): pointer {.importc: "QJSPrimitiveValue_metaType".}
proc fcQJSPrimitiveValue_data(self: pointer): pointer {.importc: "QJSPrimitiveValue_data".}
proc fcQJSPrimitiveValue_dataConst(self: pointer): pointer {.importc: "QJSPrimitiveValue_data_const".}
proc fcQJSPrimitiveValue_constData(self: pointer): pointer {.importc: "QJSPrimitiveValue_constData".}
proc fcQJSPrimitiveValue_toBoolean(self: pointer): bool {.importc: "QJSPrimitiveValue_toBoolean".}
proc fcQJSPrimitiveValue_toInteger(self: pointer): cint {.importc: "QJSPrimitiveValue_toInteger".}
proc fcQJSPrimitiveValue_toDouble(self: pointer): float64 {.importc: "QJSPrimitiveValue_toDouble".}
proc fcQJSPrimitiveValue_toString(self: pointer): struct_seaqt_string {.importc: "QJSPrimitiveValue_toString".}
proc fcQJSPrimitiveValue_toVariant(self: pointer): pointer {.importc: "QJSPrimitiveValue_toVariant".}
proc fcQJSPrimitiveValue_operatorPlusPlus(self: pointer): pointer {.importc: "QJSPrimitiveValue_operatorPlusPlus".}
proc fcQJSPrimitiveValue_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QJSPrimitiveValue_operatorPlusPlus_int".}
proc fcQJSPrimitiveValue_operatorMinusMinus(self: pointer): pointer {.importc: "QJSPrimitiveValue_operatorMinusMinus".}
proc fcQJSPrimitiveValue_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QJSPrimitiveValue_operatorMinusMinus_int".}
proc fcQJSPrimitiveValue_operatorPlus(self: pointer): pointer {.importc: "QJSPrimitiveValue_operatorPlus".}
proc fcQJSPrimitiveValue_operatorMinus(self: pointer): pointer {.importc: "QJSPrimitiveValue_operatorMinus".}
proc fcQJSPrimitiveValue_strictlyEquals(self: pointer, other: pointer): bool {.importc: "QJSPrimitiveValue_strictlyEquals".}
proc fcQJSPrimitiveValue_equals(self: pointer, other: pointer): bool {.importc: "QJSPrimitiveValue_equals".}
proc fcQJSPrimitiveValue_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJSPrimitiveValue_operatorAssign".}
proc fcQJSPrimitiveValue_new(): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new".}
proc fcQJSPrimitiveValue_new2(undefined: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QJSPrimitiveUndefined".}
proc fcQJSPrimitiveValue_new3(null: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QJSPrimitiveNull".}
proc fcQJSPrimitiveValue_new4(value: bool): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_bool".}
proc fcQJSPrimitiveValue_new5(value: cint): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_int".}
proc fcQJSPrimitiveValue_new6(value: float64): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_double".}
proc fcQJSPrimitiveValue_new7(stringVal: struct_seaqt_string): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QString".}
proc fcQJSPrimitiveValue_new8(typeVal: pointer, value: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QMetaType_void".}
proc fcQJSPrimitiveValue_new9(typeVal: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QMetaType".}
proc fcQJSPrimitiveValue_new10(variant: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QVariant".}
proc fcQJSPrimitiveValue_new11(fromVal: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new_QJSPrimitiveValue".}

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveUndefined): gen_qjsprimitivevalue_types.QJSPrimitiveUndefined =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveUndefined(h: fcQJSPrimitiveUndefined_new(), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveUndefined,
    fromVal: gen_qjsprimitivevalue_types.QJSPrimitiveUndefined): gen_qjsprimitivevalue_types.QJSPrimitiveUndefined =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveUndefined(h: fcQJSPrimitiveUndefined_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveNull): gen_qjsprimitivevalue_types.QJSPrimitiveNull =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveNull(h: fcQJSPrimitiveNull_new(), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveNull,
    fromVal: gen_qjsprimitivevalue_types.QJSPrimitiveNull): gen_qjsprimitivevalue_types.QJSPrimitiveNull =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveNull(h: fcQJSPrimitiveNull_new2(fromVal.h), owned: true)
  tmp
proc typeX*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): cint =
  cint(fcQJSPrimitiveValue_typeX(self.h))

proc metaType*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQJSPrimitiveValue_metaType(self.h), owned: true)

proc data*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): pointer =
  fcQJSPrimitiveValue_data(self.h)

proc data2*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): pointer =
  fcQJSPrimitiveValue_dataConst(self.h)

proc constData*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): pointer =
  fcQJSPrimitiveValue_constData(self.h)

proc toBoolean*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): bool =
  fcQJSPrimitiveValue_toBoolean(self.h)

proc toInteger*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): cint =
  fcQJSPrimitiveValue_toInteger(self.h)

proc toDouble*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): float64 =
  fcQJSPrimitiveValue_toDouble(self.h)

proc toString*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): string =
  let v_ms = fcQJSPrimitiveValue_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toVariant*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJSPrimitiveValue_toVariant(self.h), owned: true)

proc operatorPlusPlus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, param1: cint): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, param1: cint): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorPlus(self.h), owned: true)

proc operatorMinus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorMinus(self.h), owned: true)

proc strictlyEquals*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, other: gen_qjsprimitivevalue_types.QJSPrimitiveValue): bool =
  fcQJSPrimitiveValue_strictlyEquals(self.h, other.h)

proc equals*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, other: gen_qjsprimitivevalue_types.QJSPrimitiveValue): bool =
  fcQJSPrimitiveValue_equals(self.h, other.h)

proc operatorAssign*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, fromVal: gen_qjsprimitivevalue_types.QJSPrimitiveValue): void =
  fcQJSPrimitiveValue_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new(), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    undefined: gen_qjsprimitivevalue_types.QJSPrimitiveUndefined): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new2(undefined.h), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    null: gen_qjsprimitivevalue_types.QJSPrimitiveNull): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new3(null.h), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    value: bool): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new4(value), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    value: cint): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new5(value), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    value: float64): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new6(value), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    stringVal: openArray[char]): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new7(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    typeVal: gen_qmetatype_types.QMetaType, value: pointer): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new8(typeVal.h, value), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    typeVal: gen_qmetatype_types.QMetaType): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new9(typeVal.h), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    variant: gen_qvariant_types.QVariant): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new10(variant.h), owned: true)
  tmp
proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    fromVal: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  let tmp = gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new11(fromVal.h), owned: true)
  tmp
