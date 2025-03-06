import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qjsvalue.cpp", cflags).}


type QJSValueSpecialValueEnum* = distinct cint
template NullValue*(_: type QJSValueSpecialValueEnum): untyped = 0
template UndefinedValue*(_: type QJSValueSpecialValueEnum): untyped = 1


type QJSValueErrorTypeEnum* = distinct cint
template NoError*(_: type QJSValueErrorTypeEnum): untyped = 0
template GenericError*(_: type QJSValueErrorTypeEnum): untyped = 1
template EvalError*(_: type QJSValueErrorTypeEnum): untyped = 2
template RangeError*(_: type QJSValueErrorTypeEnum): untyped = 3
template ReferenceError*(_: type QJSValueErrorTypeEnum): untyped = 4
template SyntaxError*(_: type QJSValueErrorTypeEnum): untyped = 5
template TypeError*(_: type QJSValueErrorTypeEnum): untyped = 6
template URIError*(_: type QJSValueErrorTypeEnum): untyped = 7


import ./gen_qjsvalue_types
export gen_qjsvalue_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qjsengine_types
export
  gen_qdatetime_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qjsengine_types

type cQJSValue*{.exportc: "QJSValue", incompleteStruct.} = object

proc fcQJSValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QJSValue_operatorAssign".}
proc fcQJSValue_isBool(self: pointer, ): bool {.importc: "QJSValue_isBool".}
proc fcQJSValue_isNumber(self: pointer, ): bool {.importc: "QJSValue_isNumber".}
proc fcQJSValue_isNull(self: pointer, ): bool {.importc: "QJSValue_isNull".}
proc fcQJSValue_isString(self: pointer, ): bool {.importc: "QJSValue_isString".}
proc fcQJSValue_isUndefined(self: pointer, ): bool {.importc: "QJSValue_isUndefined".}
proc fcQJSValue_isVariant(self: pointer, ): bool {.importc: "QJSValue_isVariant".}
proc fcQJSValue_isQObject(self: pointer, ): bool {.importc: "QJSValue_isQObject".}
proc fcQJSValue_isQMetaObject(self: pointer, ): bool {.importc: "QJSValue_isQMetaObject".}
proc fcQJSValue_isObject(self: pointer, ): bool {.importc: "QJSValue_isObject".}
proc fcQJSValue_isDate(self: pointer, ): bool {.importc: "QJSValue_isDate".}
proc fcQJSValue_isRegExp(self: pointer, ): bool {.importc: "QJSValue_isRegExp".}
proc fcQJSValue_isArray(self: pointer, ): bool {.importc: "QJSValue_isArray".}
proc fcQJSValue_isError(self: pointer, ): bool {.importc: "QJSValue_isError".}
proc fcQJSValue_toString(self: pointer, ): struct_miqt_string {.importc: "QJSValue_toString".}
proc fcQJSValue_toNumber(self: pointer, ): float64 {.importc: "QJSValue_toNumber".}
proc fcQJSValue_toInt(self: pointer, ): cint {.importc: "QJSValue_toInt".}
proc fcQJSValue_toUInt(self: pointer, ): cuint {.importc: "QJSValue_toUInt".}
proc fcQJSValue_toBool(self: pointer, ): bool {.importc: "QJSValue_toBool".}
proc fcQJSValue_toVariant(self: pointer, ): pointer {.importc: "QJSValue_toVariant".}
proc fcQJSValue_toQObject(self: pointer, ): pointer {.importc: "QJSValue_toQObject".}
proc fcQJSValue_toQMetaObject(self: pointer, ): pointer {.importc: "QJSValue_toQMetaObject".}
proc fcQJSValue_toDateTime(self: pointer, ): pointer {.importc: "QJSValue_toDateTime".}
proc fcQJSValue_equals(self: pointer, other: pointer): bool {.importc: "QJSValue_equals".}
proc fcQJSValue_strictlyEquals(self: pointer, other: pointer): bool {.importc: "QJSValue_strictlyEquals".}
proc fcQJSValue_prototype(self: pointer, ): pointer {.importc: "QJSValue_prototype".}
proc fcQJSValue_setPrototype(self: pointer, prototype: pointer): void {.importc: "QJSValue_setPrototype".}
proc fcQJSValue_property(self: pointer, name: struct_miqt_string): pointer {.importc: "QJSValue_property".}
proc fcQJSValue_setProperty(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QJSValue_setProperty".}
proc fcQJSValue_hasProperty(self: pointer, name: struct_miqt_string): bool {.importc: "QJSValue_hasProperty".}
proc fcQJSValue_hasOwnProperty(self: pointer, name: struct_miqt_string): bool {.importc: "QJSValue_hasOwnProperty".}
proc fcQJSValue_propertyWithArrayIndex(self: pointer, arrayIndex: cuint): pointer {.importc: "QJSValue_propertyWithArrayIndex".}
proc fcQJSValue_setProperty2(self: pointer, arrayIndex: cuint, value: pointer): void {.importc: "QJSValue_setProperty2".}
proc fcQJSValue_deleteProperty(self: pointer, name: struct_miqt_string): bool {.importc: "QJSValue_deleteProperty".}
proc fcQJSValue_isCallable(self: pointer, ): bool {.importc: "QJSValue_isCallable".}
proc fcQJSValue_call(self: pointer, ): pointer {.importc: "QJSValue_call".}
proc fcQJSValue_callWithInstance(self: pointer, instance: pointer): pointer {.importc: "QJSValue_callWithInstance".}
proc fcQJSValue_callAsConstructor(self: pointer, ): pointer {.importc: "QJSValue_callAsConstructor".}
proc fcQJSValue_errorType(self: pointer, ): cint {.importc: "QJSValue_errorType".}
proc fcQJSValue_engine(self: pointer, ): pointer {.importc: "QJSValue_engine".}
proc fcQJSValue_call1(self: pointer, args: struct_miqt_array): pointer {.importc: "QJSValue_call1".}
proc fcQJSValue_callWithInstance2(self: pointer, instance: pointer, args: struct_miqt_array): pointer {.importc: "QJSValue_callWithInstance2".}
proc fcQJSValue_callAsConstructor1(self: pointer, args: struct_miqt_array): pointer {.importc: "QJSValue_callAsConstructor1".}
proc fcQJSValue_new(): ptr cQJSValue {.importc: "QJSValue_new".}
proc fcQJSValue_new2(other: pointer): ptr cQJSValue {.importc: "QJSValue_new2".}
proc fcQJSValue_new3(value: bool): ptr cQJSValue {.importc: "QJSValue_new3".}
proc fcQJSValue_new4(value: cint): ptr cQJSValue {.importc: "QJSValue_new4".}
proc fcQJSValue_new5(value: cuint): ptr cQJSValue {.importc: "QJSValue_new5".}
proc fcQJSValue_new6(value: float64): ptr cQJSValue {.importc: "QJSValue_new6".}
proc fcQJSValue_new7(value: struct_miqt_string): ptr cQJSValue {.importc: "QJSValue_new7".}
proc fcQJSValue_new8(str: cstring): ptr cQJSValue {.importc: "QJSValue_new8".}
proc fcQJSValue_new9(value: cint): ptr cQJSValue {.importc: "QJSValue_new9".}
proc fcQJSValue_delete(self: pointer) {.importc: "QJSValue_delete".}

proc operatorAssign*(self: gen_qjsvalue_types.QJSValue, other: gen_qjsvalue_types.QJSValue): void =
  fcQJSValue_operatorAssign(self.h, other.h)

proc isBool*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isBool(self.h)

proc isNumber*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isNumber(self.h)

proc isNull*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isNull(self.h)

proc isString*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isString(self.h)

proc isUndefined*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isUndefined(self.h)

proc isVariant*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isVariant(self.h)

proc isQObject*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isQObject(self.h)

proc isQMetaObject*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isQMetaObject(self.h)

proc isObject*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isObject(self.h)

proc isDate*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isDate(self.h)

proc isRegExp*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isRegExp(self.h)

proc isArray*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isArray(self.h)

proc isError*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isError(self.h)

proc toString*(self: gen_qjsvalue_types.QJSValue, ): string =
  let v_ms = fcQJSValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toNumber*(self: gen_qjsvalue_types.QJSValue, ): float64 =
  fcQJSValue_toNumber(self.h)

proc toInt*(self: gen_qjsvalue_types.QJSValue, ): cint =
  fcQJSValue_toInt(self.h)

proc toUInt*(self: gen_qjsvalue_types.QJSValue, ): cuint =
  fcQJSValue_toUInt(self.h)

proc toBool*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_toBool(self.h)

proc toVariant*(self: gen_qjsvalue_types.QJSValue, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJSValue_toVariant(self.h))

proc toQObject*(self: gen_qjsvalue_types.QJSValue, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQJSValue_toQObject(self.h))

proc toQMetaObject*(self: gen_qjsvalue_types.QJSValue, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQJSValue_toQMetaObject(self.h))

proc toDateTime*(self: gen_qjsvalue_types.QJSValue, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQJSValue_toDateTime(self.h))

proc equals*(self: gen_qjsvalue_types.QJSValue, other: gen_qjsvalue_types.QJSValue): bool =
  fcQJSValue_equals(self.h, other.h)

proc strictlyEquals*(self: gen_qjsvalue_types.QJSValue, other: gen_qjsvalue_types.QJSValue): bool =
  fcQJSValue_strictlyEquals(self.h, other.h)

proc prototype*(self: gen_qjsvalue_types.QJSValue, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_prototype(self.h))

proc setPrototype*(self: gen_qjsvalue_types.QJSValue, prototype: gen_qjsvalue_types.QJSValue): void =
  fcQJSValue_setPrototype(self.h, prototype.h)

proc property*(self: gen_qjsvalue_types.QJSValue, name: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_property(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc setProperty*(self: gen_qjsvalue_types.QJSValue, name: string, value: gen_qjsvalue_types.QJSValue): void =
  fcQJSValue_setProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc hasProperty*(self: gen_qjsvalue_types.QJSValue, name: string): bool =
  fcQJSValue_hasProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasOwnProperty*(self: gen_qjsvalue_types.QJSValue, name: string): bool =
  fcQJSValue_hasOwnProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc property*(self: gen_qjsvalue_types.QJSValue, arrayIndex: cuint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_propertyWithArrayIndex(self.h, arrayIndex))

proc setProperty*(self: gen_qjsvalue_types.QJSValue, arrayIndex: cuint, value: gen_qjsvalue_types.QJSValue): void =
  fcQJSValue_setProperty2(self.h, arrayIndex, value.h)

proc deleteProperty*(self: gen_qjsvalue_types.QJSValue, name: string): bool =
  fcQJSValue_deleteProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc isCallable*(self: gen_qjsvalue_types.QJSValue, ): bool =
  fcQJSValue_isCallable(self.h)

proc call*(self: gen_qjsvalue_types.QJSValue, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_call(self.h))

proc callWithInstance*(self: gen_qjsvalue_types.QJSValue, instance: gen_qjsvalue_types.QJSValue): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_callWithInstance(self.h, instance.h))

proc callAsConstructor*(self: gen_qjsvalue_types.QJSValue, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_callAsConstructor(self.h))

proc errorType*(self: gen_qjsvalue_types.QJSValue, ): cint =
  cint(fcQJSValue_errorType(self.h))

proc engine*(self: gen_qjsvalue_types.QJSValue, ): gen_qjsengine_types.QJSEngine =
  gen_qjsengine_types.QJSEngine(h: fcQJSValue_engine(self.h))

proc call*(self: gen_qjsvalue_types.QJSValue, args: seq[gen_qjsvalue_types.QJSValue]): gen_qjsvalue_types.QJSValue =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qjsvalue_types.QJSValue(h: fcQJSValue_call1(self.h, struct_miqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))))

proc callWithInstance*(self: gen_qjsvalue_types.QJSValue, instance: gen_qjsvalue_types.QJSValue, args: seq[gen_qjsvalue_types.QJSValue]): gen_qjsvalue_types.QJSValue =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qjsvalue_types.QJSValue(h: fcQJSValue_callWithInstance2(self.h, instance.h, struct_miqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))))

proc callAsConstructor*(self: gen_qjsvalue_types.QJSValue, args: seq[gen_qjsvalue_types.QJSValue]): gen_qjsvalue_types.QJSValue =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qjsvalue_types.QJSValue(h: fcQJSValue_callAsConstructor1(self.h, struct_miqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))))

proc create*(T: type gen_qjsvalue_types.QJSValue): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new())

proc create*(T: type gen_qjsvalue_types.QJSValue,
    other: gen_qjsvalue_types.QJSValue): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new2(other.h))

proc create*(T: type gen_qjsvalue_types.QJSValue,
    value: bool): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new3(value))

proc create*(T: type gen_qjsvalue_types.QJSValue,
    value: cint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new4(value))

proc create*(T: type gen_qjsvalue_types.QJSValue,
    value: cuint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new5(value))

proc create*(T: type gen_qjsvalue_types.QJSValue,
    value: float64): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new6(value))

proc create*(T: type gen_qjsvalue_types.QJSValue,
    value: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new7(struct_miqt_string(data: value, len: csize_t(len(value)))))

proc create*(T: type gen_qjsvalue_types.QJSValue,
    str: cstring): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new8(str))

proc create2*(T: type gen_qjsvalue_types.QJSValue,
    value: cint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValue_new9(cint(value)))

proc delete*(self: gen_qjsvalue_types.QJSValue) =
  fcQJSValue_delete(self.h)
