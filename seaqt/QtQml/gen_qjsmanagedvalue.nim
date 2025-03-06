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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
{.compile("gen_qjsmanagedvalue.cpp", cflags).}


type QJSManagedValueTypeEnum* = distinct cint
template Undefined*(_: type QJSManagedValueTypeEnum): untyped = 0
template Boolean*(_: type QJSManagedValueTypeEnum): untyped = 1
template Number*(_: type QJSManagedValueTypeEnum): untyped = 2
template String*(_: type QJSManagedValueTypeEnum): untyped = 3
template Object*(_: type QJSManagedValueTypeEnum): untyped = 4
template Symbol*(_: type QJSManagedValueTypeEnum): untyped = 5
template Function*(_: type QJSManagedValueTypeEnum): untyped = 6


import ./gen_qjsmanagedvalue_types
export gen_qjsmanagedvalue_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qregularexpression_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qjsengine_types,
  ./gen_qjsprimitivevalue_types,
  ./gen_qjsvalue_types
export
  gen_qdatetime_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qregularexpression_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qjsengine_types,
  gen_qjsprimitivevalue_types,
  gen_qjsvalue_types

type cQJSManagedValue*{.exportc: "QJSManagedValue", incompleteStruct.} = object

proc fcQJSManagedValue_equals(self: pointer, other: pointer): bool {.importc: "QJSManagedValue_equals".}
proc fcQJSManagedValue_strictlyEquals(self: pointer, other: pointer): bool {.importc: "QJSManagedValue_strictlyEquals".}
proc fcQJSManagedValue_engine(self: pointer, ): pointer {.importc: "QJSManagedValue_engine".}
proc fcQJSManagedValue_prototype(self: pointer, ): pointer {.importc: "QJSManagedValue_prototype".}
proc fcQJSManagedValue_setPrototype(self: pointer, prototype: pointer): void {.importc: "QJSManagedValue_setPrototype".}
proc fcQJSManagedValue_typeX(self: pointer, ): cint {.importc: "QJSManagedValue_type".}
proc fcQJSManagedValue_isUndefined(self: pointer, ): bool {.importc: "QJSManagedValue_isUndefined".}
proc fcQJSManagedValue_isBoolean(self: pointer, ): bool {.importc: "QJSManagedValue_isBoolean".}
proc fcQJSManagedValue_isNumber(self: pointer, ): bool {.importc: "QJSManagedValue_isNumber".}
proc fcQJSManagedValue_isString(self: pointer, ): bool {.importc: "QJSManagedValue_isString".}
proc fcQJSManagedValue_isObject(self: pointer, ): bool {.importc: "QJSManagedValue_isObject".}
proc fcQJSManagedValue_isSymbol(self: pointer, ): bool {.importc: "QJSManagedValue_isSymbol".}
proc fcQJSManagedValue_isFunction(self: pointer, ): bool {.importc: "QJSManagedValue_isFunction".}
proc fcQJSManagedValue_isInteger(self: pointer, ): bool {.importc: "QJSManagedValue_isInteger".}
proc fcQJSManagedValue_isNull(self: pointer, ): bool {.importc: "QJSManagedValue_isNull".}
proc fcQJSManagedValue_isRegularExpression(self: pointer, ): bool {.importc: "QJSManagedValue_isRegularExpression".}
proc fcQJSManagedValue_isArray(self: pointer, ): bool {.importc: "QJSManagedValue_isArray".}
proc fcQJSManagedValue_isUrl(self: pointer, ): bool {.importc: "QJSManagedValue_isUrl".}
proc fcQJSManagedValue_isVariant(self: pointer, ): bool {.importc: "QJSManagedValue_isVariant".}
proc fcQJSManagedValue_isQObject(self: pointer, ): bool {.importc: "QJSManagedValue_isQObject".}
proc fcQJSManagedValue_isQMetaObject(self: pointer, ): bool {.importc: "QJSManagedValue_isQMetaObject".}
proc fcQJSManagedValue_isDate(self: pointer, ): bool {.importc: "QJSManagedValue_isDate".}
proc fcQJSManagedValue_isError(self: pointer, ): bool {.importc: "QJSManagedValue_isError".}
proc fcQJSManagedValue_isJsMetaType(self: pointer, ): bool {.importc: "QJSManagedValue_isJsMetaType".}
proc fcQJSManagedValue_toString(self: pointer, ): struct_miqt_string {.importc: "QJSManagedValue_toString".}
proc fcQJSManagedValue_toNumber(self: pointer, ): float64 {.importc: "QJSManagedValue_toNumber".}
proc fcQJSManagedValue_toBoolean(self: pointer, ): bool {.importc: "QJSManagedValue_toBoolean".}
proc fcQJSManagedValue_toPrimitive(self: pointer, ): pointer {.importc: "QJSManagedValue_toPrimitive".}
proc fcQJSManagedValue_toJSValue(self: pointer, ): pointer {.importc: "QJSManagedValue_toJSValue".}
proc fcQJSManagedValue_toVariant(self: pointer, ): pointer {.importc: "QJSManagedValue_toVariant".}
proc fcQJSManagedValue_toInteger(self: pointer, ): cint {.importc: "QJSManagedValue_toInteger".}
proc fcQJSManagedValue_toRegularExpression(self: pointer, ): pointer {.importc: "QJSManagedValue_toRegularExpression".}
proc fcQJSManagedValue_toUrl(self: pointer, ): pointer {.importc: "QJSManagedValue_toUrl".}
proc fcQJSManagedValue_toQObject(self: pointer, ): pointer {.importc: "QJSManagedValue_toQObject".}
proc fcQJSManagedValue_toQMetaObject(self: pointer, ): pointer {.importc: "QJSManagedValue_toQMetaObject".}
proc fcQJSManagedValue_toDateTime(self: pointer, ): pointer {.importc: "QJSManagedValue_toDateTime".}
proc fcQJSManagedValue_hasProperty(self: pointer, name: struct_miqt_string): bool {.importc: "QJSManagedValue_hasProperty".}
proc fcQJSManagedValue_hasOwnProperty(self: pointer, name: struct_miqt_string): bool {.importc: "QJSManagedValue_hasOwnProperty".}
proc fcQJSManagedValue_property(self: pointer, name: struct_miqt_string): pointer {.importc: "QJSManagedValue_property".}
proc fcQJSManagedValue_setProperty(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QJSManagedValue_setProperty".}
proc fcQJSManagedValue_deleteProperty(self: pointer, name: struct_miqt_string): bool {.importc: "QJSManagedValue_deleteProperty".}
proc fcQJSManagedValue_hasPropertyWithArrayIndex(self: pointer, arrayIndex: cuint): bool {.importc: "QJSManagedValue_hasPropertyWithArrayIndex".}
proc fcQJSManagedValue_hasOwnPropertyWithArrayIndex(self: pointer, arrayIndex: cuint): bool {.importc: "QJSManagedValue_hasOwnPropertyWithArrayIndex".}
proc fcQJSManagedValue_propertyWithArrayIndex(self: pointer, arrayIndex: cuint): pointer {.importc: "QJSManagedValue_propertyWithArrayIndex".}
proc fcQJSManagedValue_setProperty2(self: pointer, arrayIndex: cuint, value: pointer): void {.importc: "QJSManagedValue_setProperty2".}
proc fcQJSManagedValue_deletePropertyWithArrayIndex(self: pointer, arrayIndex: cuint): bool {.importc: "QJSManagedValue_deletePropertyWithArrayIndex".}
proc fcQJSManagedValue_call(self: pointer, ): pointer {.importc: "QJSManagedValue_call".}
proc fcQJSManagedValue_callWithInstance(self: pointer, instance: pointer): pointer {.importc: "QJSManagedValue_callWithInstance".}
proc fcQJSManagedValue_callAsConstructor(self: pointer, ): pointer {.importc: "QJSManagedValue_callAsConstructor".}
proc fcQJSManagedValue_jsMetaType(self: pointer, ): pointer {.importc: "QJSManagedValue_jsMetaType".}
proc fcQJSManagedValue_jsMetaMembers(self: pointer, ): struct_miqt_array {.importc: "QJSManagedValue_jsMetaMembers".}
proc fcQJSManagedValue_jsMetaInstantiate(self: pointer, ): pointer {.importc: "QJSManagedValue_jsMetaInstantiate".}
proc fcQJSManagedValue_call1(self: pointer, arguments: struct_miqt_array): pointer {.importc: "QJSManagedValue_call1".}
proc fcQJSManagedValue_callWithInstance2(self: pointer, instance: pointer, arguments: struct_miqt_array): pointer {.importc: "QJSManagedValue_callWithInstance2".}
proc fcQJSManagedValue_callAsConstructor1(self: pointer, arguments: struct_miqt_array): pointer {.importc: "QJSManagedValue_callAsConstructor1".}
proc fcQJSManagedValue_jsMetaInstantiate1(self: pointer, values: struct_miqt_array): pointer {.importc: "QJSManagedValue_jsMetaInstantiate1".}
proc fcQJSManagedValue_new(): ptr cQJSManagedValue {.importc: "QJSManagedValue_new".}
proc fcQJSManagedValue_new2(value: pointer, engine: pointer): ptr cQJSManagedValue {.importc: "QJSManagedValue_new2".}
proc fcQJSManagedValue_new3(value: pointer, engine: pointer): ptr cQJSManagedValue {.importc: "QJSManagedValue_new3".}
proc fcQJSManagedValue_new4(variant: pointer, engine: pointer): ptr cQJSManagedValue {.importc: "QJSManagedValue_new4".}
proc fcQJSManagedValue_new5(string: struct_miqt_string, engine: pointer): ptr cQJSManagedValue {.importc: "QJSManagedValue_new5".}
proc fcQJSManagedValue_delete(self: pointer) {.importc: "QJSManagedValue_delete".}

proc equals*(self: gen_qjsmanagedvalue_types.QJSManagedValue, other: gen_qjsmanagedvalue_types.QJSManagedValue): bool =
  fcQJSManagedValue_equals(self.h, other.h)

proc strictlyEquals*(self: gen_qjsmanagedvalue_types.QJSManagedValue, other: gen_qjsmanagedvalue_types.QJSManagedValue): bool =
  fcQJSManagedValue_strictlyEquals(self.h, other.h)

proc engine*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsengine_types.QJSEngine =
  gen_qjsengine_types.QJSEngine(h: fcQJSManagedValue_engine(self.h))

proc prototype*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_prototype(self.h))

proc setPrototype*(self: gen_qjsmanagedvalue_types.QJSManagedValue, prototype: gen_qjsmanagedvalue_types.QJSManagedValue): void =
  fcQJSManagedValue_setPrototype(self.h, prototype.h)

proc typeX*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): cint =
  cint(fcQJSManagedValue_typeX(self.h))

proc isUndefined*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isUndefined(self.h)

proc isBoolean*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isBoolean(self.h)

proc isNumber*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isNumber(self.h)

proc isString*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isString(self.h)

proc isObject*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isObject(self.h)

proc isSymbol*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isSymbol(self.h)

proc isFunction*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isFunction(self.h)

proc isInteger*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isInteger(self.h)

proc isNull*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isNull(self.h)

proc isRegularExpression*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isRegularExpression(self.h)

proc isArray*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isArray(self.h)

proc isUrl*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isUrl(self.h)

proc isVariant*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isVariant(self.h)

proc isQObject*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isQObject(self.h)

proc isQMetaObject*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isQMetaObject(self.h)

proc isDate*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isDate(self.h)

proc isError*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isError(self.h)

proc isJsMetaType*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_isJsMetaType(self.h)

proc toString*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): string =
  let v_ms = fcQJSManagedValue_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toNumber*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): float64 =
  fcQJSManagedValue_toNumber(self.h)

proc toBoolean*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): bool =
  fcQJSManagedValue_toBoolean(self.h)

proc toPrimitive*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsprimitivevalue_types.QJSPrimitiveValue =
  gen_qjsprimitivevalue_types.QJSPrimitiveValue(h: fcQJSManagedValue_toPrimitive(self.h))

proc toJSValue*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_toJSValue(self.h))

proc toVariant*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQJSManagedValue_toVariant(self.h))

proc toInteger*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): cint =
  fcQJSManagedValue_toInteger(self.h)

proc toRegularExpression*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQJSManagedValue_toRegularExpression(self.h))

proc toUrl*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQJSManagedValue_toUrl(self.h))

proc toQObject*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQJSManagedValue_toQObject(self.h))

proc toQMetaObject*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQJSManagedValue_toQMetaObject(self.h))

proc toDateTime*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQJSManagedValue_toDateTime(self.h))

proc hasProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, name: string): bool =
  fcQJSManagedValue_hasProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasOwnProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, name: string): bool =
  fcQJSManagedValue_hasOwnProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc property*(self: gen_qjsmanagedvalue_types.QJSManagedValue, name: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_property(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc setProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, name: string, value: gen_qjsvalue_types.QJSValue): void =
  fcQJSManagedValue_setProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc deleteProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, name: string): bool =
  fcQJSManagedValue_deleteProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arrayIndex: cuint): bool =
  fcQJSManagedValue_hasPropertyWithArrayIndex(self.h, arrayIndex)

proc hasOwnProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arrayIndex: cuint): bool =
  fcQJSManagedValue_hasOwnPropertyWithArrayIndex(self.h, arrayIndex)

proc property*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arrayIndex: cuint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_propertyWithArrayIndex(self.h, arrayIndex))

proc setProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arrayIndex: cuint, value: gen_qjsvalue_types.QJSValue): void =
  fcQJSManagedValue_setProperty2(self.h, arrayIndex, value.h)

proc deleteProperty*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arrayIndex: cuint): bool =
  fcQJSManagedValue_deletePropertyWithArrayIndex(self.h, arrayIndex)

proc call*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_call(self.h))

proc callWithInstance*(self: gen_qjsmanagedvalue_types.QJSManagedValue, instance: gen_qjsvalue_types.QJSValue): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_callWithInstance(self.h, instance.h))

proc callAsConstructor*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_callAsConstructor(self.h))

proc jsMetaType*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_jsMetaType(self.h))

proc jsMetaMembers*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): seq[string] =
  var v_ma = fcQJSManagedValue_jsMetaMembers(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc jsMetaInstantiate*(self: gen_qjsmanagedvalue_types.QJSManagedValue, ): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_jsMetaInstantiate(self.h))

proc call*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arguments: seq[gen_qjsvalue_types.QJSValue]): gen_qjsvalue_types.QJSValue =
  var arguments_CArray = newSeq[pointer](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = arguments[i].h

  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_call1(self.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0]))))

proc callWithInstance*(self: gen_qjsmanagedvalue_types.QJSManagedValue, instance: gen_qjsvalue_types.QJSValue, arguments: seq[gen_qjsvalue_types.QJSValue]): gen_qjsvalue_types.QJSValue =
  var arguments_CArray = newSeq[pointer](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = arguments[i].h

  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_callWithInstance2(self.h, instance.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0]))))

proc callAsConstructor*(self: gen_qjsmanagedvalue_types.QJSManagedValue, arguments: seq[gen_qjsvalue_types.QJSValue]): gen_qjsvalue_types.QJSValue =
  var arguments_CArray = newSeq[pointer](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = arguments[i].h

  gen_qjsvalue_types.QJSValue(h: fcQJSManagedValue_callAsConstructor1(self.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0]))))

proc jsMetaInstantiate*(self: gen_qjsmanagedvalue_types.QJSManagedValue, values: seq[gen_qjsvalue_types.QJSValue]): gen_qjsmanagedvalue_types.QJSManagedValue =
  var values_CArray = newSeq[pointer](len(values))
  for i in 0..<len(values):
    values_CArray[i] = values[i].h

  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_jsMetaInstantiate1(self.h, struct_miqt_array(len: csize_t(len(values)), data: if len(values) == 0: nil else: addr(values_CArray[0]))))

proc create*(T: type gen_qjsmanagedvalue_types.QJSManagedValue): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_new())

proc create*(T: type gen_qjsmanagedvalue_types.QJSManagedValue,
    value: gen_qjsvalue_types.QJSValue, engine: gen_qjsengine_types.QJSEngine): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_new2(value.h, engine.h))

proc create*(T: type gen_qjsmanagedvalue_types.QJSManagedValue,
    value: gen_qjsprimitivevalue_types.QJSPrimitiveValue, engine: gen_qjsengine_types.QJSEngine): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_new3(value.h, engine.h))

proc create*(T: type gen_qjsmanagedvalue_types.QJSManagedValue,
    variant: gen_qvariant_types.QVariant, engine: gen_qjsengine_types.QJSEngine): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_new4(variant.h, engine.h))

proc create*(T: type gen_qjsmanagedvalue_types.QJSManagedValue,
    string: string, engine: gen_qjsengine_types.QJSEngine): gen_qjsmanagedvalue_types.QJSManagedValue =
  gen_qjsmanagedvalue_types.QJSManagedValue(h: fcQJSManagedValue_new5(struct_miqt_string(data: string, len: csize_t(len(string))), engine.h))

proc delete*(self: gen_qjsmanagedvalue_types.QJSManagedValue) =
  fcQJSManagedValue_delete(self.h)
