import ./Qt5Script_libs

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

const cflags = gorge("pkg-config --cflags Qt5Script")  & " -fPIC"
{.compile("gen_qscriptvalue.cpp", cflags).}


type QScriptValueResolveFlagEnum* = distinct cint
template ResolveLocal*(_: type QScriptValueResolveFlagEnum): untyped = 0
template ResolvePrototype*(_: type QScriptValueResolveFlagEnum): untyped = 1
template ResolveScope*(_: type QScriptValueResolveFlagEnum): untyped = 2
template ResolveFull*(_: type QScriptValueResolveFlagEnum): untyped = 3


type QScriptValuePropertyFlagEnum* = distinct cint
template ReadOnly*(_: type QScriptValuePropertyFlagEnum): untyped = 1
template Undeletable*(_: type QScriptValuePropertyFlagEnum): untyped = 2
template SkipInEnumeration*(_: type QScriptValuePropertyFlagEnum): untyped = 4
template PropertyGetter*(_: type QScriptValuePropertyFlagEnum): untyped = 8
template PropertySetter*(_: type QScriptValuePropertyFlagEnum): untyped = 16
template QObjectMember*(_: type QScriptValuePropertyFlagEnum): untyped = 32
template KeepExistingFlags*(_: type QScriptValuePropertyFlagEnum): untyped = 2048
template UserRange*(_: type QScriptValuePropertyFlagEnum): untyped = 4278190080


type QScriptValueSpecialValueEnum* = distinct cint
template NullValue*(_: type QScriptValueSpecialValueEnum): untyped = 0
template UndefinedValue*(_: type QScriptValueSpecialValueEnum): untyped = 1


import ./gen_qscriptvalue_types
export gen_qscriptvalue_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qregexp_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qscriptclass_types,
  ./gen_qscriptengine_types,
  ./gen_qscriptstring_types
export
  gen_qdatetime_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qregexp_types,
  gen_qvariant_types,
  gen_qscriptclass_types,
  gen_qscriptengine_types,
  gen_qscriptstring_types

type cQScriptValue*{.exportc: "QScriptValue", incompleteStruct.} = object

proc fcQScriptValue_operatorAssign(self: pointer, other: pointer): void {.importc: "QScriptValue_operatorAssign".}
proc fcQScriptValue_engine(self: pointer, ): pointer {.importc: "QScriptValue_engine".}
proc fcQScriptValue_isValid(self: pointer, ): bool {.importc: "QScriptValue_isValid".}
proc fcQScriptValue_isBool(self: pointer, ): bool {.importc: "QScriptValue_isBool".}
proc fcQScriptValue_isBoolean(self: pointer, ): bool {.importc: "QScriptValue_isBoolean".}
proc fcQScriptValue_isNumber(self: pointer, ): bool {.importc: "QScriptValue_isNumber".}
proc fcQScriptValue_isFunction(self: pointer, ): bool {.importc: "QScriptValue_isFunction".}
proc fcQScriptValue_isNull(self: pointer, ): bool {.importc: "QScriptValue_isNull".}
proc fcQScriptValue_isString(self: pointer, ): bool {.importc: "QScriptValue_isString".}
proc fcQScriptValue_isUndefined(self: pointer, ): bool {.importc: "QScriptValue_isUndefined".}
proc fcQScriptValue_isVariant(self: pointer, ): bool {.importc: "QScriptValue_isVariant".}
proc fcQScriptValue_isQObject(self: pointer, ): bool {.importc: "QScriptValue_isQObject".}
proc fcQScriptValue_isQMetaObject(self: pointer, ): bool {.importc: "QScriptValue_isQMetaObject".}
proc fcQScriptValue_isObject(self: pointer, ): bool {.importc: "QScriptValue_isObject".}
proc fcQScriptValue_isDate(self: pointer, ): bool {.importc: "QScriptValue_isDate".}
proc fcQScriptValue_isRegExp(self: pointer, ): bool {.importc: "QScriptValue_isRegExp".}
proc fcQScriptValue_isArray(self: pointer, ): bool {.importc: "QScriptValue_isArray".}
proc fcQScriptValue_isError(self: pointer, ): bool {.importc: "QScriptValue_isError".}
proc fcQScriptValue_toString(self: pointer, ): struct_miqt_string {.importc: "QScriptValue_toString".}
proc fcQScriptValue_toNumber(self: pointer, ): float64 {.importc: "QScriptValue_toNumber".}
proc fcQScriptValue_toBool(self: pointer, ): bool {.importc: "QScriptValue_toBool".}
proc fcQScriptValue_toBoolean(self: pointer, ): bool {.importc: "QScriptValue_toBoolean".}
proc fcQScriptValue_toInteger(self: pointer, ): float64 {.importc: "QScriptValue_toInteger".}
proc fcQScriptValue_toInt32(self: pointer, ): cint {.importc: "QScriptValue_toInt32".}
proc fcQScriptValue_toUInt32(self: pointer, ): cuint {.importc: "QScriptValue_toUInt32".}
proc fcQScriptValue_toUInt16(self: pointer, ): cushort {.importc: "QScriptValue_toUInt16".}
proc fcQScriptValue_toVariant(self: pointer, ): pointer {.importc: "QScriptValue_toVariant".}
proc fcQScriptValue_toQObject(self: pointer, ): pointer {.importc: "QScriptValue_toQObject".}
proc fcQScriptValue_toQMetaObject(self: pointer, ): pointer {.importc: "QScriptValue_toQMetaObject".}
proc fcQScriptValue_toObject(self: pointer, ): pointer {.importc: "QScriptValue_toObject".}
proc fcQScriptValue_toDateTime(self: pointer, ): pointer {.importc: "QScriptValue_toDateTime".}
proc fcQScriptValue_toRegExp(self: pointer, ): pointer {.importc: "QScriptValue_toRegExp".}
proc fcQScriptValue_instanceOf(self: pointer, other: pointer): bool {.importc: "QScriptValue_instanceOf".}
proc fcQScriptValue_lessThan(self: pointer, other: pointer): bool {.importc: "QScriptValue_lessThan".}
proc fcQScriptValue_equals(self: pointer, other: pointer): bool {.importc: "QScriptValue_equals".}
proc fcQScriptValue_strictlyEquals(self: pointer, other: pointer): bool {.importc: "QScriptValue_strictlyEquals".}
proc fcQScriptValue_prototype(self: pointer, ): pointer {.importc: "QScriptValue_prototype".}
proc fcQScriptValue_setPrototype(self: pointer, prototype: pointer): void {.importc: "QScriptValue_setPrototype".}
proc fcQScriptValue_scope(self: pointer, ): pointer {.importc: "QScriptValue_scope".}
proc fcQScriptValue_setScope(self: pointer, scope: pointer): void {.importc: "QScriptValue_setScope".}
proc fcQScriptValue_property(self: pointer, name: struct_miqt_string): pointer {.importc: "QScriptValue_property".}
proc fcQScriptValue_setProperty(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QScriptValue_setProperty".}
proc fcQScriptValue_propertyWithArrayIndex(self: pointer, arrayIndex: cuint): pointer {.importc: "QScriptValue_propertyWithArrayIndex".}
proc fcQScriptValue_setProperty2(self: pointer, arrayIndex: cuint, value: pointer): void {.importc: "QScriptValue_setProperty2".}
proc fcQScriptValue_propertyWithName(self: pointer, name: pointer): pointer {.importc: "QScriptValue_propertyWithName".}
proc fcQScriptValue_setProperty3(self: pointer, name: pointer, value: pointer): void {.importc: "QScriptValue_setProperty3".}
proc fcQScriptValue_propertyFlags(self: pointer, name: struct_miqt_string): cint {.importc: "QScriptValue_propertyFlags".}
proc fcQScriptValue_propertyFlagsWithName(self: pointer, name: pointer): cint {.importc: "QScriptValue_propertyFlagsWithName".}
proc fcQScriptValue_call(self: pointer, ): pointer {.importc: "QScriptValue_call".}
proc fcQScriptValue_call2(self: pointer, thisObject: pointer, arguments: pointer): pointer {.importc: "QScriptValue_call2".}
proc fcQScriptValue_construct(self: pointer, ): pointer {.importc: "QScriptValue_construct".}
proc fcQScriptValue_constructWithArguments(self: pointer, arguments: pointer): pointer {.importc: "QScriptValue_constructWithArguments".}
proc fcQScriptValue_data(self: pointer, ): pointer {.importc: "QScriptValue_data".}
proc fcQScriptValue_setData(self: pointer, data: pointer): void {.importc: "QScriptValue_setData".}
proc fcQScriptValue_scriptClass(self: pointer, ): pointer {.importc: "QScriptValue_scriptClass".}
proc fcQScriptValue_setScriptClass(self: pointer, scriptClass: pointer): void {.importc: "QScriptValue_setScriptClass".}
proc fcQScriptValue_objectId(self: pointer, ): clonglong {.importc: "QScriptValue_objectId".}
proc fcQScriptValue_property2(self: pointer, name: struct_miqt_string, mode: ptr cint): pointer {.importc: "QScriptValue_property2".}
proc fcQScriptValue_setProperty32(self: pointer, name: struct_miqt_string, value: pointer, flags: ptr cint): void {.importc: "QScriptValue_setProperty32".}
proc fcQScriptValue_property22(self: pointer, arrayIndex: cuint, mode: ptr cint): pointer {.importc: "QScriptValue_property22".}
proc fcQScriptValue_setProperty33(self: pointer, arrayIndex: cuint, value: pointer, flags: ptr cint): void {.importc: "QScriptValue_setProperty33".}
proc fcQScriptValue_property23(self: pointer, name: pointer, mode: ptr cint): pointer {.importc: "QScriptValue_property23".}
proc fcQScriptValue_setProperty34(self: pointer, name: pointer, value: pointer, flags: ptr cint): void {.importc: "QScriptValue_setProperty34".}
proc fcQScriptValue_propertyFlags2(self: pointer, name: struct_miqt_string, mode: ptr cint): cint {.importc: "QScriptValue_propertyFlags2".}
proc fcQScriptValue_propertyFlags22(self: pointer, name: pointer, mode: ptr cint): cint {.importc: "QScriptValue_propertyFlags22".}
proc fcQScriptValue_call1(self: pointer, thisObject: pointer): pointer {.importc: "QScriptValue_call1".}
proc fcQScriptValue_call22(self: pointer, thisObject: pointer, args: struct_miqt_array): pointer {.importc: "QScriptValue_call22".}
proc fcQScriptValue_construct1(self: pointer, args: struct_miqt_array): pointer {.importc: "QScriptValue_construct1".}
proc fcQScriptValue_new(): ptr cQScriptValue {.importc: "QScriptValue_new".}
proc fcQScriptValue_new2(other: pointer): ptr cQScriptValue {.importc: "QScriptValue_new2".}
proc fcQScriptValue_new3(engine: pointer, val: cint): ptr cQScriptValue {.importc: "QScriptValue_new3".}
proc fcQScriptValue_new4(engine: pointer, val: bool): ptr cQScriptValue {.importc: "QScriptValue_new4".}
proc fcQScriptValue_new5(engine: pointer, val: cint): ptr cQScriptValue {.importc: "QScriptValue_new5".}
proc fcQScriptValue_new6(engine: pointer, val: cuint): ptr cQScriptValue {.importc: "QScriptValue_new6".}
proc fcQScriptValue_new7(engine: pointer, val: float64): ptr cQScriptValue {.importc: "QScriptValue_new7".}
proc fcQScriptValue_new8(engine: pointer, val: struct_miqt_string): ptr cQScriptValue {.importc: "QScriptValue_new8".}
proc fcQScriptValue_new9(engine: pointer, val: cstring): ptr cQScriptValue {.importc: "QScriptValue_new9".}
proc fcQScriptValue_new10(value: cint): ptr cQScriptValue {.importc: "QScriptValue_new10".}
proc fcQScriptValue_new11(value: bool): ptr cQScriptValue {.importc: "QScriptValue_new11".}
proc fcQScriptValue_new12(value: cint): ptr cQScriptValue {.importc: "QScriptValue_new12".}
proc fcQScriptValue_new13(value: cuint): ptr cQScriptValue {.importc: "QScriptValue_new13".}
proc fcQScriptValue_new14(value: float64): ptr cQScriptValue {.importc: "QScriptValue_new14".}
proc fcQScriptValue_new15(value: struct_miqt_string): ptr cQScriptValue {.importc: "QScriptValue_new15".}
proc fcQScriptValue_new16(value: cstring): ptr cQScriptValue {.importc: "QScriptValue_new16".}
proc fcQScriptValue_delete(self: pointer) {.importc: "QScriptValue_delete".}

proc operatorAssign*(self: gen_qscriptvalue_types.QScriptValue, other: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_operatorAssign(self.h, other.h)

proc engine*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptValue_engine(self.h))

proc isValid*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isValid(self.h)

proc isBool*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isBool(self.h)

proc isBoolean*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isBoolean(self.h)

proc isNumber*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isNumber(self.h)

proc isFunction*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isFunction(self.h)

proc isNull*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isNull(self.h)

proc isString*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isString(self.h)

proc isUndefined*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isUndefined(self.h)

proc isVariant*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isVariant(self.h)

proc isQObject*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isQObject(self.h)

proc isQMetaObject*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isQMetaObject(self.h)

proc isObject*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isObject(self.h)

proc isDate*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isDate(self.h)

proc isRegExp*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isRegExp(self.h)

proc isArray*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isArray(self.h)

proc isError*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_isError(self.h)

proc toString*(self: gen_qscriptvalue_types.QScriptValue, ): string =
  let v_ms = fcQScriptValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toNumber*(self: gen_qscriptvalue_types.QScriptValue, ): float64 =
  fcQScriptValue_toNumber(self.h)

proc toBool*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_toBool(self.h)

proc toBoolean*(self: gen_qscriptvalue_types.QScriptValue, ): bool =
  fcQScriptValue_toBoolean(self.h)

proc toInteger*(self: gen_qscriptvalue_types.QScriptValue, ): float64 =
  fcQScriptValue_toInteger(self.h)

proc toInt32*(self: gen_qscriptvalue_types.QScriptValue, ): cint =
  fcQScriptValue_toInt32(self.h)

proc toUInt32*(self: gen_qscriptvalue_types.QScriptValue, ): cuint =
  fcQScriptValue_toUInt32(self.h)

proc toUInt16*(self: gen_qscriptvalue_types.QScriptValue, ): cushort =
  fcQScriptValue_toUInt16(self.h)

proc toVariant*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptValue_toVariant(self.h))

proc toQObject*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScriptValue_toQObject(self.h))

proc toQMetaObject*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScriptValue_toQMetaObject(self.h))

proc toObject*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_toObject(self.h))

proc toDateTime*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQScriptValue_toDateTime(self.h))

proc toRegExp*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQScriptValue_toRegExp(self.h))

proc instanceOf*(self: gen_qscriptvalue_types.QScriptValue, other: gen_qscriptvalue_types.QScriptValue): bool =
  fcQScriptValue_instanceOf(self.h, other.h)

proc lessThan*(self: gen_qscriptvalue_types.QScriptValue, other: gen_qscriptvalue_types.QScriptValue): bool =
  fcQScriptValue_lessThan(self.h, other.h)

proc equals*(self: gen_qscriptvalue_types.QScriptValue, other: gen_qscriptvalue_types.QScriptValue): bool =
  fcQScriptValue_equals(self.h, other.h)

proc strictlyEquals*(self: gen_qscriptvalue_types.QScriptValue, other: gen_qscriptvalue_types.QScriptValue): bool =
  fcQScriptValue_strictlyEquals(self.h, other.h)

proc prototype*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_prototype(self.h))

proc setPrototype*(self: gen_qscriptvalue_types.QScriptValue, prototype: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_setPrototype(self.h, prototype.h)

proc scope*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_scope(self.h))

proc setScope*(self: gen_qscriptvalue_types.QScriptValue, scope: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_setScope(self.h, scope.h)

proc property*(self: gen_qscriptvalue_types.QScriptValue, name: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_property(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc setProperty*(self: gen_qscriptvalue_types.QScriptValue, name: string, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_setProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc property*(self: gen_qscriptvalue_types.QScriptValue, arrayIndex: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_propertyWithArrayIndex(self.h, arrayIndex))

proc setProperty*(self: gen_qscriptvalue_types.QScriptValue, arrayIndex: cuint, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_setProperty2(self.h, arrayIndex, value.h)

proc property*(self: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_propertyWithName(self.h, name.h))

proc setProperty*(self: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_setProperty3(self.h, name.h, value.h)

proc propertyFlags*(self: gen_qscriptvalue_types.QScriptValue, name: string): cint =
  cint(fcQScriptValue_propertyFlags(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc propertyFlags*(self: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString): cint =
  cint(fcQScriptValue_propertyFlagsWithName(self.h, name.h))

proc call*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_call(self.h))

proc call*(self: gen_qscriptvalue_types.QScriptValue, thisObject: gen_qscriptvalue_types.QScriptValue, arguments: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_call2(self.h, thisObject.h, arguments.h))

proc construct*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_construct(self.h))

proc construct*(self: gen_qscriptvalue_types.QScriptValue, arguments: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_constructWithArguments(self.h, arguments.h))

proc data*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_data(self.h))

proc setData*(self: gen_qscriptvalue_types.QScriptValue, data: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValue_setData(self.h, data.h)

proc scriptClass*(self: gen_qscriptvalue_types.QScriptValue, ): gen_qscriptclass_types.QScriptClass =
  gen_qscriptclass_types.QScriptClass(h: fcQScriptValue_scriptClass(self.h))

proc setScriptClass*(self: gen_qscriptvalue_types.QScriptValue, scriptClass: gen_qscriptclass_types.QScriptClass): void =
  fcQScriptValue_setScriptClass(self.h, scriptClass.h)

proc objectId*(self: gen_qscriptvalue_types.QScriptValue, ): clonglong =
  fcQScriptValue_objectId(self.h)

proc property*(self: gen_qscriptvalue_types.QScriptValue, name: string, mode: ptr cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_property2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), mode))

proc setProperty*(self: gen_qscriptvalue_types.QScriptValue, name: string, value: gen_qscriptvalue_types.QScriptValue, flags: ptr cint): void =
  fcQScriptValue_setProperty32(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h, flags)

proc property*(self: gen_qscriptvalue_types.QScriptValue, arrayIndex: cuint, mode: ptr cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_property22(self.h, arrayIndex, mode))

proc setProperty*(self: gen_qscriptvalue_types.QScriptValue, arrayIndex: cuint, value: gen_qscriptvalue_types.QScriptValue, flags: ptr cint): void =
  fcQScriptValue_setProperty33(self.h, arrayIndex, value.h, flags)

proc property*(self: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, mode: ptr cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_property23(self.h, name.h, mode))

proc setProperty*(self: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, value: gen_qscriptvalue_types.QScriptValue, flags: ptr cint): void =
  fcQScriptValue_setProperty34(self.h, name.h, value.h, flags)

proc propertyFlags*(self: gen_qscriptvalue_types.QScriptValue, name: string, mode: ptr cint): cint =
  cint(fcQScriptValue_propertyFlags2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), mode))

proc propertyFlags*(self: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, mode: ptr cint): cint =
  cint(fcQScriptValue_propertyFlags22(self.h, name.h, mode))

proc call*(self: gen_qscriptvalue_types.QScriptValue, thisObject: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_call1(self.h, thisObject.h))

proc call*(self: gen_qscriptvalue_types.QScriptValue, thisObject: gen_qscriptvalue_types.QScriptValue, args: seq[gen_qscriptvalue_types.QScriptValue]): gen_qscriptvalue_types.QScriptValue =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_call22(self.h, thisObject.h, struct_miqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))))

proc construct*(self: gen_qscriptvalue_types.QScriptValue, args: seq[gen_qscriptvalue_types.QScriptValue]): gen_qscriptvalue_types.QScriptValue =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_construct1(self.h, struct_miqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))))

proc create*(T: type gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new())

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    other: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new2(other.h))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new3(engine.h, cint(val)))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: bool): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new4(engine.h, val))

proc create2*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new5(engine.h, val))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new6(engine.h, val))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: float64): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new7(engine.h, val))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new8(engine.h, struct_miqt_string(data: val, len: csize_t(len(val)))))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    engine: gen_qscriptengine_types.QScriptEngine, val: cstring): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new9(engine.h, val))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    value: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new10(cint(value)))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    value: bool): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new11(value))

proc create2*(T: type gen_qscriptvalue_types.QScriptValue,
    value: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new12(value))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    value: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new13(value))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    value: float64): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new14(value))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    value: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new15(struct_miqt_string(data: value, len: csize_t(len(value)))))

proc create*(T: type gen_qscriptvalue_types.QScriptValue,
    value: cstring): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValue_new16(value))

proc delete*(self: gen_qscriptvalue_types.QScriptValue) =
  fcQScriptValue_delete(self.h)
