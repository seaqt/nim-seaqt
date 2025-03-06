import ./Qt6Qml_libs

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
proc fcQJSPrimitiveUndefined_new2(param1: pointer): ptr cQJSPrimitiveUndefined {.importc: "QJSPrimitiveUndefined_new2".}
proc fcQJSPrimitiveNull_new(): ptr cQJSPrimitiveNull {.importc: "QJSPrimitiveNull_new".}
proc fcQJSPrimitiveNull_new2(param1: pointer): ptr cQJSPrimitiveNull {.importc: "QJSPrimitiveNull_new2".}
proc fcQJSPrimitiveValue_typeX(self: pointer, ): cint {.importc: "QJSPrimitiveValue_type".}
proc fcQJSPrimitiveValue_toBoolean(self: pointer, ): bool {.importc: "QJSPrimitiveValue_toBoolean".}
proc fcQJSPrimitiveValue_toInteger(self: pointer, ): cint {.importc: "QJSPrimitiveValue_toInteger".}
proc fcQJSPrimitiveValue_toDouble(self: pointer, ): float64 {.importc: "QJSPrimitiveValue_toDouble".}
proc fcQJSPrimitiveValue_toString(self: pointer, ): struct_miqt_string {.importc: "QJSPrimitiveValue_toString".}
proc fcQJSPrimitiveValue_toVariant(self: pointer, ): pointer {.importc: "QJSPrimitiveValue_toVariant".}
proc fcQJSPrimitiveValue_operatorPlusPlus(self: pointer, ): pointer {.importc: "QJSPrimitiveValue_operatorPlusPlus".}
proc fcQJSPrimitiveValue_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QJSPrimitiveValue_operatorPlusPlusWithInt".}
proc fcQJSPrimitiveValue_operatorMinusMinus(self: pointer, ): pointer {.importc: "QJSPrimitiveValue_operatorMinusMinus".}
proc fcQJSPrimitiveValue_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QJSPrimitiveValue_operatorMinusMinusWithInt".}
proc fcQJSPrimitiveValue_operatorPlus(self: pointer, ): pointer {.importc: "QJSPrimitiveValue_operatorPlus".}
proc fcQJSPrimitiveValue_operatorMinus(self: pointer, ): pointer {.importc: "QJSPrimitiveValue_operatorMinus".}
proc fcQJSPrimitiveValue_strictlyEquals(self: pointer, other: pointer): bool {.importc: "QJSPrimitiveValue_strictlyEquals".}
proc fcQJSPrimitiveValue_equals(self: pointer, other: pointer): bool {.importc: "QJSPrimitiveValue_equals".}
proc fcQJSPrimitiveValue_new(): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new".}
proc fcQJSPrimitiveValue_new2(undefined: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new2".}
proc fcQJSPrimitiveValue_new3(null: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new3".}
proc fcQJSPrimitiveValue_new4(value: bool): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new4".}
proc fcQJSPrimitiveValue_new5(value: cint): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new5".}
proc fcQJSPrimitiveValue_new6(value: float64): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new6".}
proc fcQJSPrimitiveValue_new7(string: struct_miqt_string): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new7".}
proc fcQJSPrimitiveValue_new8(typeVal: pointer, value: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new8".}
proc fcQJSPrimitiveValue_new9(variant: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new9".}
proc fcQJSPrimitiveValue_new10(param1: pointer): ptr cQJSPrimitiveValue {.importc: "QJSPrimitiveValue_new10".}

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveUndefined): gen_qjsprimitivevalue_types.QJSPrimitiveUndefined =
  gen_qjsprimitivevalue_types.QJSPrimitiveUndefined(h: fcQJSPrimitiveUndefined_new(), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveUndefined,
    param1: gen_qjsprimitivevalue_types.QJSPrimitiveUndefined): gen_qjsprimitivevalue_types.QJSPrimitiveUndefined =
  gen_qjsprimitivevalue_types.QJSPrimitiveUndefined(h: fcQJSPrimitiveUndefined_new2(param1.h), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveNull): gen_qjsprimitivevalue_types.QJSPrimitiveNull =
  gen_qjsprimitivevalue_types.QJSPrimitiveNull(h: fcQJSPrimitiveNull_new(), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveNull,
    param1: gen_qjsprimitivevalue_types.QJSPrimitiveNull): gen_qjsprimitivevalue_types.QJSPrimitiveNull =
  gen_qjsprimitivevalue_types.QJSPrimitiveNull(h: fcQJSPrimitiveNull_new2(param1.h), owned: true)

proc typeX*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): cint =
  cint(fcQJSPrimitiveValue_typeX(self.h))

proc toBoolean*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): bool =
  fcQJSPrimitiveValue_toBoolean(self.h)

proc toInteger*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): cint =
  fcQJSPrimitiveValue_toInteger(self.h)

proc toDouble*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): float64 =
  fcQJSPrimitiveValue_toDouble(self.h)

proc toString*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): string =
  let v_ms = fcQJSPrimitiveValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toVariant*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJSPrimitiveValue_toVariant(self.h), owned: true)

proc operatorPlusPlus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, param1: cint): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, param1: cint): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorPlus(self.h), owned: true)

proc operatorMinus*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, ): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_operatorMinus(self.h), owned: true)

proc strictlyEquals*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, other: gen_qjsprimitivevalue_types.QJSPrimitiveValue): bool =
  fcQJSPrimitiveValue_strictlyEquals(self.h, other.h)

proc equals*(self: gen_qjsprimitivevalue_types.QJSPrimitiveValue, other: gen_qjsprimitivevalue_types.QJSPrimitiveValue): bool =
  fcQJSPrimitiveValue_equals(self.h, other.h)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new(), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    undefined: gen_qjsprimitivevalue_types.QJSPrimitiveUndefined): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new2(undefined.h), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    null: gen_qjsprimitivevalue_types.QJSPrimitiveNull): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new3(null.h), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    value: bool): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new4(value), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    value: cint): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new5(value), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    value: float64): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new6(value), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    string: string): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new7(struct_miqt_string(data: string, len: csize_t(len(string)))), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    typeVal: gen_qmetatype_types.QMetaType, value: pointer): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new8(typeVal.h, value), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    variant: gen_qvariant_types.QVariant): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new9(variant.h), owned: true)

proc create*(T: type gen_qjsprimitivevalue_types.QJSPrimitiveValue,
    param1: gen_qjsprimitivevalue_types.QJSPrimitiveValue): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSPrimitiveValue_new10(param1.h), owned: true)

