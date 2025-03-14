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


type QMetaMethodAccessEnum* = distinct cint
template Private*(_: type QMetaMethodAccessEnum): untyped = 0
template Protected*(_: type QMetaMethodAccessEnum): untyped = 1
template Public*(_: type QMetaMethodAccessEnum): untyped = 2


type QMetaMethodMethodTypeEnum* = distinct cint
template Method*(_: type QMetaMethodMethodTypeEnum): untyped = 0
template Signal*(_: type QMetaMethodMethodTypeEnum): untyped = 1
template Slot*(_: type QMetaMethodMethodTypeEnum): untyped = 2
template Constructor*(_: type QMetaMethodMethodTypeEnum): untyped = 3


type QMetaMethodAttributesEnum* = distinct cint
template Compatibility*(_: type QMetaMethodAttributesEnum): untyped = 1
template Cloned*(_: type QMetaMethodAttributesEnum): untyped = 2
template Scriptable*(_: type QMetaMethodAttributesEnum): untyped = 4


import ./gen_qmetaobject_types
export gen_qmetaobject_types

import
  ./gen_qmetatype_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qproperty_types,
  ./gen_qvariant_types
export
  gen_qmetatype_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qproperty_types,
  gen_qvariant_types

type cQMetaMethod*{.exportc: "QMetaMethod", incompleteStruct.} = object
type cQMetaEnum*{.exportc: "QMetaEnum", incompleteStruct.} = object
type cQMetaProperty*{.exportc: "QMetaProperty", incompleteStruct.} = object
type cQMetaClassInfo*{.exportc: "QMetaClassInfo", incompleteStruct.} = object

proc fcQMetaMethod_methodSignature(self: pointer): struct_miqt_string {.importc: "QMetaMethod_methodSignature".}
proc fcQMetaMethod_name(self: pointer): struct_miqt_string {.importc: "QMetaMethod_name".}
proc fcQMetaMethod_typeName(self: pointer): cstring {.importc: "QMetaMethod_typeName".}
proc fcQMetaMethod_returnType(self: pointer): cint {.importc: "QMetaMethod_returnType".}
proc fcQMetaMethod_returnMetaType(self: pointer): pointer {.importc: "QMetaMethod_returnMetaType".}
proc fcQMetaMethod_parameterCount(self: pointer): cint {.importc: "QMetaMethod_parameterCount".}
proc fcQMetaMethod_parameterType(self: pointer, index: cint): cint {.importc: "QMetaMethod_parameterType".}
proc fcQMetaMethod_parameterMetaType(self: pointer, index: cint): pointer {.importc: "QMetaMethod_parameterMetaType".}
proc fcQMetaMethod_getParameterTypes(self: pointer, types: ptr cint): void {.importc: "QMetaMethod_getParameterTypes".}
proc fcQMetaMethod_parameterTypes(self: pointer): struct_miqt_array {.importc: "QMetaMethod_parameterTypes".}
proc fcQMetaMethod_parameterTypeName(self: pointer, index: cint): struct_miqt_string {.importc: "QMetaMethod_parameterTypeName".}
proc fcQMetaMethod_parameterNames(self: pointer): struct_miqt_array {.importc: "QMetaMethod_parameterNames".}
proc fcQMetaMethod_tag(self: pointer): cstring {.importc: "QMetaMethod_tag".}
proc fcQMetaMethod_access(self: pointer): cint {.importc: "QMetaMethod_access".}
proc fcQMetaMethod_methodType(self: pointer): cint {.importc: "QMetaMethod_methodType".}
proc fcQMetaMethod_attributes(self: pointer): cint {.importc: "QMetaMethod_attributes".}
proc fcQMetaMethod_methodIndex(self: pointer): cint {.importc: "QMetaMethod_methodIndex".}
proc fcQMetaMethod_relativeMethodIndex(self: pointer): cint {.importc: "QMetaMethod_relativeMethodIndex".}
proc fcQMetaMethod_revision(self: pointer): cint {.importc: "QMetaMethod_revision".}
proc fcQMetaMethod_isConst(self: pointer): bool {.importc: "QMetaMethod_isConst".}
proc fcQMetaMethod_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaMethod_enclosingMetaObject".}
proc fcQMetaMethod_invoke(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer): bool {.importc: "QMetaMethod_invoke".}
proc fcQMetaMethod_invoke2(self: pointer, objectVal: pointer, returnValue: pointer): bool {.importc: "QMetaMethod_invoke2".}
proc fcQMetaMethod_invoke3(self: pointer, objectVal: pointer, connectionType: cint): bool {.importc: "QMetaMethod_invoke3".}
proc fcQMetaMethod_invokeWithObject(self: pointer, objectVal: pointer): bool {.importc: "QMetaMethod_invokeWithObject".}
proc fcQMetaMethod_invokeOnGadget(self: pointer, gadget: pointer, returnValue: pointer): bool {.importc: "QMetaMethod_invokeOnGadget".}
proc fcQMetaMethod_invokeOnGadgetWithGadget(self: pointer, gadget: pointer): bool {.importc: "QMetaMethod_invokeOnGadgetWithGadget".}
proc fcQMetaMethod_isValid(self: pointer): bool {.importc: "QMetaMethod_isValid".}
proc fcQMetaMethod_invoke4(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke4".}
proc fcQMetaMethod_invoke5(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke5".}
proc fcQMetaMethod_invoke6(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke6".}
proc fcQMetaMethod_invoke7(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke7".}
proc fcQMetaMethod_invoke8(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke8".}
proc fcQMetaMethod_invoke9(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke9".}
proc fcQMetaMethod_invoke10(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke10".}
proc fcQMetaMethod_invoke11(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke11".}
proc fcQMetaMethod_invoke12(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke12".}
proc fcQMetaMethod_invoke13(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke13".}
proc fcQMetaMethod_invoke32(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke32".}
proc fcQMetaMethod_invoke42(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke42".}
proc fcQMetaMethod_invoke52(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke52".}
proc fcQMetaMethod_invoke62(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke62".}
proc fcQMetaMethod_invoke72(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke72".}
proc fcQMetaMethod_invoke82(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke82".}
proc fcQMetaMethod_invoke92(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke92".}
proc fcQMetaMethod_invoke102(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke102".}
proc fcQMetaMethod_invoke112(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke112".}
proc fcQMetaMethod_invoke122(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke122".}
proc fcQMetaMethod_invoke33(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer): bool {.importc: "QMetaMethod_invoke33".}
proc fcQMetaMethod_invoke43(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke43".}
proc fcQMetaMethod_invoke53(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke53".}
proc fcQMetaMethod_invoke63(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke63".}
proc fcQMetaMethod_invoke73(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke73".}
proc fcQMetaMethod_invoke83(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke83".}
proc fcQMetaMethod_invoke93(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke93".}
proc fcQMetaMethod_invoke103(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke103".}
proc fcQMetaMethod_invoke113(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke113".}
proc fcQMetaMethod_invoke123(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke123".}
proc fcQMetaMethod_invoke22(self: pointer, objectVal: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke22".}
proc fcQMetaMethod_invoke34(self: pointer, objectVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke34".}
proc fcQMetaMethod_invoke44(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke44".}
proc fcQMetaMethod_invoke54(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke54".}
proc fcQMetaMethod_invoke64(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke64".}
proc fcQMetaMethod_invoke74(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke74".}
proc fcQMetaMethod_invoke84(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke84".}
proc fcQMetaMethod_invoke94(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke94".}
proc fcQMetaMethod_invoke104(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke104".}
proc fcQMetaMethod_invoke114(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke114".}
proc fcQMetaMethod_invokeOnGadget3(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invokeOnGadget3".}
proc fcQMetaMethod_invokeOnGadget4(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invokeOnGadget4".}
proc fcQMetaMethod_invokeOnGadget5(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invokeOnGadget5".}
proc fcQMetaMethod_invokeOnGadget6(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invokeOnGadget6".}
proc fcQMetaMethod_invokeOnGadget7(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invokeOnGadget7".}
proc fcQMetaMethod_invokeOnGadget8(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invokeOnGadget8".}
proc fcQMetaMethod_invokeOnGadget9(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invokeOnGadget9".}
proc fcQMetaMethod_invokeOnGadget10(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invokeOnGadget10".}
proc fcQMetaMethod_invokeOnGadget11(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invokeOnGadget11".}
proc fcQMetaMethod_invokeOnGadget12(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invokeOnGadget12".}
proc fcQMetaMethod_invokeOnGadget2(self: pointer, gadget: pointer, val0: pointer): bool {.importc: "QMetaMethod_invokeOnGadget2".}
proc fcQMetaMethod_invokeOnGadget32(self: pointer, gadget: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invokeOnGadget32".}
proc fcQMetaMethod_invokeOnGadget42(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invokeOnGadget42".}
proc fcQMetaMethod_invokeOnGadget52(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invokeOnGadget52".}
proc fcQMetaMethod_invokeOnGadget62(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invokeOnGadget62".}
proc fcQMetaMethod_invokeOnGadget72(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invokeOnGadget72".}
proc fcQMetaMethod_invokeOnGadget82(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invokeOnGadget82".}
proc fcQMetaMethod_invokeOnGadget92(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invokeOnGadget92".}
proc fcQMetaMethod_invokeOnGadget102(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invokeOnGadget102".}
proc fcQMetaMethod_invokeOnGadget112(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invokeOnGadget112".}
proc fcQMetaMethod_new(): ptr cQMetaMethod {.importc: "QMetaMethod_new".}
proc fcQMetaMethod_new2(param1: pointer): ptr cQMetaMethod {.importc: "QMetaMethod_new2".}
proc fcQMetaEnum_name(self: pointer): cstring {.importc: "QMetaEnum_name".}
proc fcQMetaEnum_enumName(self: pointer): cstring {.importc: "QMetaEnum_enumName".}
proc fcQMetaEnum_isFlag(self: pointer): bool {.importc: "QMetaEnum_isFlag".}
proc fcQMetaEnum_isScoped(self: pointer): bool {.importc: "QMetaEnum_isScoped".}
proc fcQMetaEnum_keyCount(self: pointer): cint {.importc: "QMetaEnum_keyCount".}
proc fcQMetaEnum_key(self: pointer, index: cint): cstring {.importc: "QMetaEnum_key".}
proc fcQMetaEnum_value(self: pointer, index: cint): cint {.importc: "QMetaEnum_value".}
proc fcQMetaEnum_scope(self: pointer): cstring {.importc: "QMetaEnum_scope".}
proc fcQMetaEnum_keyToValue(self: pointer, key: cstring): cint {.importc: "QMetaEnum_keyToValue".}
proc fcQMetaEnum_valueToKey(self: pointer, value: cint): cstring {.importc: "QMetaEnum_valueToKey".}
proc fcQMetaEnum_keysToValue(self: pointer, keys: cstring): cint {.importc: "QMetaEnum_keysToValue".}
proc fcQMetaEnum_valueToKeys(self: pointer, value: cint): struct_miqt_string {.importc: "QMetaEnum_valueToKeys".}
proc fcQMetaEnum_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaEnum_enclosingMetaObject".}
proc fcQMetaEnum_isValid(self: pointer): bool {.importc: "QMetaEnum_isValid".}
proc fcQMetaEnum_keyToValue2(self: pointer, key: cstring, ok: ptr bool): cint {.importc: "QMetaEnum_keyToValue2".}
proc fcQMetaEnum_keysToValue2(self: pointer, keys: cstring, ok: ptr bool): cint {.importc: "QMetaEnum_keysToValue2".}
proc fcQMetaEnum_new(): ptr cQMetaEnum {.importc: "QMetaEnum_new".}
proc fcQMetaEnum_new2(param1: pointer): ptr cQMetaEnum {.importc: "QMetaEnum_new2".}
proc fcQMetaProperty_name(self: pointer): cstring {.importc: "QMetaProperty_name".}
proc fcQMetaProperty_typeName(self: pointer): cstring {.importc: "QMetaProperty_typeName".}
proc fcQMetaProperty_typeX(self: pointer): cint {.importc: "QMetaProperty_type".}
proc fcQMetaProperty_userType(self: pointer): cint {.importc: "QMetaProperty_userType".}
proc fcQMetaProperty_typeId(self: pointer): cint {.importc: "QMetaProperty_typeId".}
proc fcQMetaProperty_metaType(self: pointer): pointer {.importc: "QMetaProperty_metaType".}
proc fcQMetaProperty_propertyIndex(self: pointer): cint {.importc: "QMetaProperty_propertyIndex".}
proc fcQMetaProperty_relativePropertyIndex(self: pointer): cint {.importc: "QMetaProperty_relativePropertyIndex".}
proc fcQMetaProperty_isReadable(self: pointer): bool {.importc: "QMetaProperty_isReadable".}
proc fcQMetaProperty_isWritable(self: pointer): bool {.importc: "QMetaProperty_isWritable".}
proc fcQMetaProperty_isResettable(self: pointer): bool {.importc: "QMetaProperty_isResettable".}
proc fcQMetaProperty_isDesignable(self: pointer): bool {.importc: "QMetaProperty_isDesignable".}
proc fcQMetaProperty_isScriptable(self: pointer): bool {.importc: "QMetaProperty_isScriptable".}
proc fcQMetaProperty_isStored(self: pointer): bool {.importc: "QMetaProperty_isStored".}
proc fcQMetaProperty_isUser(self: pointer): bool {.importc: "QMetaProperty_isUser".}
proc fcQMetaProperty_isConstant(self: pointer): bool {.importc: "QMetaProperty_isConstant".}
proc fcQMetaProperty_isFinal(self: pointer): bool {.importc: "QMetaProperty_isFinal".}
proc fcQMetaProperty_isRequired(self: pointer): bool {.importc: "QMetaProperty_isRequired".}
proc fcQMetaProperty_isBindable(self: pointer): bool {.importc: "QMetaProperty_isBindable".}
proc fcQMetaProperty_isFlagType(self: pointer): bool {.importc: "QMetaProperty_isFlagType".}
proc fcQMetaProperty_isEnumType(self: pointer): bool {.importc: "QMetaProperty_isEnumType".}
proc fcQMetaProperty_enumerator(self: pointer): pointer {.importc: "QMetaProperty_enumerator".}
proc fcQMetaProperty_hasNotifySignal(self: pointer): bool {.importc: "QMetaProperty_hasNotifySignal".}
proc fcQMetaProperty_notifySignal(self: pointer): pointer {.importc: "QMetaProperty_notifySignal".}
proc fcQMetaProperty_notifySignalIndex(self: pointer): cint {.importc: "QMetaProperty_notifySignalIndex".}
proc fcQMetaProperty_revision(self: pointer): cint {.importc: "QMetaProperty_revision".}
proc fcQMetaProperty_read(self: pointer, obj: pointer): pointer {.importc: "QMetaProperty_read".}
proc fcQMetaProperty_write(self: pointer, obj: pointer, value: pointer): bool {.importc: "QMetaProperty_write".}
proc fcQMetaProperty_reset(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_reset".}
proc fcQMetaProperty_bindable(self: pointer, objectVal: pointer): pointer {.importc: "QMetaProperty_bindable".}
proc fcQMetaProperty_readOnGadget(self: pointer, gadget: pointer): pointer {.importc: "QMetaProperty_readOnGadget".}
proc fcQMetaProperty_writeOnGadget(self: pointer, gadget: pointer, value: pointer): bool {.importc: "QMetaProperty_writeOnGadget".}
proc fcQMetaProperty_resetOnGadget(self: pointer, gadget: pointer): bool {.importc: "QMetaProperty_resetOnGadget".}
proc fcQMetaProperty_hasStdCppSet(self: pointer): bool {.importc: "QMetaProperty_hasStdCppSet".}
proc fcQMetaProperty_isAlias(self: pointer): bool {.importc: "QMetaProperty_isAlias".}
proc fcQMetaProperty_isValid(self: pointer): bool {.importc: "QMetaProperty_isValid".}
proc fcQMetaProperty_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaProperty_enclosingMetaObject".}
proc fcQMetaProperty_new(): ptr cQMetaProperty {.importc: "QMetaProperty_new".}
proc fcQMetaClassInfo_name(self: pointer): cstring {.importc: "QMetaClassInfo_name".}
proc fcQMetaClassInfo_value(self: pointer): cstring {.importc: "QMetaClassInfo_value".}
proc fcQMetaClassInfo_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaClassInfo_enclosingMetaObject".}
proc fcQMetaClassInfo_new(): ptr cQMetaClassInfo {.importc: "QMetaClassInfo_new".}

proc methodSignature*(self: gen_qmetaobject_types.QMetaMethod): seq[byte] =
  var v_bytearray = fcQMetaMethod_methodSignature(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc name*(self: gen_qmetaobject_types.QMetaMethod): seq[byte] =
  var v_bytearray = fcQMetaMethod_name(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc typeName*(self: gen_qmetaobject_types.QMetaMethod): cstring =
  (fcQMetaMethod_typeName(self.h))

proc returnType*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_returnType(self.h)

proc returnMetaType*(self: gen_qmetaobject_types.QMetaMethod): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaMethod_returnMetaType(self.h), owned: true)

proc parameterCount*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_parameterCount(self.h)

proc parameterType*(self: gen_qmetaobject_types.QMetaMethod, index: cint): cint =
  fcQMetaMethod_parameterType(self.h, index)

proc parameterMetaType*(self: gen_qmetaobject_types.QMetaMethod, index: cint): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaMethod_parameterMetaType(self.h, index), owned: true)

proc getParameterTypes*(self: gen_qmetaobject_types.QMetaMethod, types: ptr cint): void =
  fcQMetaMethod_getParameterTypes(self.h, types)

proc parameterTypes*(self: gen_qmetaobject_types.QMetaMethod): seq[seq[byte]] =
  var v_ma = fcQMetaMethod_parameterTypes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc parameterTypeName*(self: gen_qmetaobject_types.QMetaMethod, index: cint): seq[byte] =
  var v_bytearray = fcQMetaMethod_parameterTypeName(self.h, index)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc parameterNames*(self: gen_qmetaobject_types.QMetaMethod): seq[seq[byte]] =
  var v_ma = fcQMetaMethod_parameterNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc tag*(self: gen_qmetaobject_types.QMetaMethod): cstring =
  (fcQMetaMethod_tag(self.h))

proc access*(self: gen_qmetaobject_types.QMetaMethod): cint =
  cint(fcQMetaMethod_access(self.h))

proc methodType*(self: gen_qmetaobject_types.QMetaMethod): cint =
  cint(fcQMetaMethod_methodType(self.h))

proc attributes*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_attributes(self.h)

proc methodIndex*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_methodIndex(self.h)

proc relativeMethodIndex*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_relativeMethodIndex(self.h)

proc revision*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_revision(self.h)

proc isConst*(self: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaMethod_isConst(self.h)

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaMethod): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaMethod_enclosingMetaObject(self.h), owned: false)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaMethod_invoke(self.h, objectVal.h, cint(connectionType), returnValue.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaMethod_invoke2(self.h, objectVal.h, returnValue.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint): bool =
  fcQMetaMethod_invoke3(self.h, objectVal.h, cint(connectionType))

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject): bool =
  fcQMetaMethod_invokeWithObject(self.h, objectVal.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaMethod_invokeOnGadget(self.h, gadget, returnValue.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer): bool =
  fcQMetaMethod_invokeOnGadgetWithGadget(self.h, gadget)

proc isValid*(self: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaMethod_isValid(self.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke4(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke5(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke6(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke7(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke8(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke9(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke10(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke11(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke12(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke13(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke32(self.h, objectVal.h, returnValue.h, val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke42(self.h, objectVal.h, returnValue.h, val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke52(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke62(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke72(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke82(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke92(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke102(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke112(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke122(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke33(self.h, objectVal.h, cint(connectionType), val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke43(self.h, objectVal.h, cint(connectionType), val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke53(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke63(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke73(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke83(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke93(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke103(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke113(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke123(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke22(self.h, objectVal.h, val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke34(self.h, objectVal.h, val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke44(self.h, objectVal.h, val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke54(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke64(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke74(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke84(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke94(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke104(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invoke114(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget3(self.h, gadget, returnValue.h, val0.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget4(self.h, gadget, returnValue.h, val0.h, val1.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget5(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget6(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget7(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget8(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget9(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget10(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget11(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget12(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget2(self.h, gadget, val0.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget32(self.h, gadget, val0.h, val1.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget42(self.h, gadget, val0.h, val1.h, val2.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget52(self.h, gadget, val0.h, val1.h, val2.h, val3.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget62(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget72(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget82(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget92(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget102(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadget112(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc create*(T: type gen_qmetaobject_types.QMetaMethod): gen_qmetaobject_types.QMetaMethod =
  gen_qmetaobject_types.QMetaMethod(h: fcQMetaMethod_new(), owned: true)

proc create*(T: type gen_qmetaobject_types.QMetaMethod,
    param1: gen_qmetaobject_types.QMetaMethod): gen_qmetaobject_types.QMetaMethod =
  gen_qmetaobject_types.QMetaMethod(h: fcQMetaMethod_new2(param1.h), owned: true)

proc name*(self: gen_qmetaobject_types.QMetaEnum): cstring =
  (fcQMetaEnum_name(self.h))

proc enumName*(self: gen_qmetaobject_types.QMetaEnum): cstring =
  (fcQMetaEnum_enumName(self.h))

proc isFlag*(self: gen_qmetaobject_types.QMetaEnum): bool =
  fcQMetaEnum_isFlag(self.h)

proc isScoped*(self: gen_qmetaobject_types.QMetaEnum): bool =
  fcQMetaEnum_isScoped(self.h)

proc keyCount*(self: gen_qmetaobject_types.QMetaEnum): cint =
  fcQMetaEnum_keyCount(self.h)

proc key*(self: gen_qmetaobject_types.QMetaEnum, index: cint): cstring =
  (fcQMetaEnum_key(self.h, index))

proc value*(self: gen_qmetaobject_types.QMetaEnum, index: cint): cint =
  fcQMetaEnum_value(self.h, index)

proc scope*(self: gen_qmetaobject_types.QMetaEnum): cstring =
  (fcQMetaEnum_scope(self.h))

proc keyToValue*(self: gen_qmetaobject_types.QMetaEnum, key: cstring): cint =
  fcQMetaEnum_keyToValue(self.h, key)

proc valueToKey*(self: gen_qmetaobject_types.QMetaEnum, value: cint): cstring =
  (fcQMetaEnum_valueToKey(self.h, value))

proc keysToValue*(self: gen_qmetaobject_types.QMetaEnum, keys: cstring): cint =
  fcQMetaEnum_keysToValue(self.h, keys)

proc valueToKeys*(self: gen_qmetaobject_types.QMetaEnum, value: cint): seq[byte] =
  var v_bytearray = fcQMetaEnum_valueToKeys(self.h, value)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaEnum): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaEnum_enclosingMetaObject(self.h), owned: false)

proc isValid*(self: gen_qmetaobject_types.QMetaEnum): bool =
  fcQMetaEnum_isValid(self.h)

proc keyToValue*(self: gen_qmetaobject_types.QMetaEnum, key: cstring, ok: ptr bool): cint =
  fcQMetaEnum_keyToValue2(self.h, key, ok)

proc keysToValue*(self: gen_qmetaobject_types.QMetaEnum, keys: cstring, ok: ptr bool): cint =
  fcQMetaEnum_keysToValue2(self.h, keys, ok)

proc create*(T: type gen_qmetaobject_types.QMetaEnum): gen_qmetaobject_types.QMetaEnum =
  gen_qmetaobject_types.QMetaEnum(h: fcQMetaEnum_new(), owned: true)

proc create*(T: type gen_qmetaobject_types.QMetaEnum,
    param1: gen_qmetaobject_types.QMetaEnum): gen_qmetaobject_types.QMetaEnum =
  gen_qmetaobject_types.QMetaEnum(h: fcQMetaEnum_new2(param1.h), owned: true)

proc name*(self: gen_qmetaobject_types.QMetaProperty): cstring =
  (fcQMetaProperty_name(self.h))

proc typeName*(self: gen_qmetaobject_types.QMetaProperty): cstring =
  (fcQMetaProperty_typeName(self.h))

proc typeX*(self: gen_qmetaobject_types.QMetaProperty): cint =
  cint(fcQMetaProperty_typeX(self.h))

proc userType*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_userType(self.h)

proc typeId*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_typeId(self.h)

proc metaType*(self: gen_qmetaobject_types.QMetaProperty): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaProperty_metaType(self.h), owned: true)

proc propertyIndex*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_propertyIndex(self.h)

proc relativePropertyIndex*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_relativePropertyIndex(self.h)

proc isReadable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isReadable(self.h)

proc isWritable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isWritable(self.h)

proc isResettable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isResettable(self.h)

proc isDesignable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isDesignable(self.h)

proc isScriptable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isScriptable(self.h)

proc isStored*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isStored(self.h)

proc isUser*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isUser(self.h)

proc isConstant*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isConstant(self.h)

proc isFinal*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isFinal(self.h)

proc isRequired*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isRequired(self.h)

proc isBindable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isBindable(self.h)

proc isFlagType*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isFlagType(self.h)

proc isEnumType*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isEnumType(self.h)

proc enumerator*(self: gen_qmetaobject_types.QMetaProperty): gen_qmetaobject_types.QMetaEnum =
  gen_qmetaobject_types.QMetaEnum(h: fcQMetaProperty_enumerator(self.h), owned: true)

proc hasNotifySignal*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_hasNotifySignal(self.h)

proc notifySignal*(self: gen_qmetaobject_types.QMetaProperty): gen_qmetaobject_types.QMetaMethod =
  gen_qmetaobject_types.QMetaMethod(h: fcQMetaProperty_notifySignal(self.h), owned: true)

proc notifySignalIndex*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_notifySignalIndex(self.h)

proc revision*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_revision(self.h)

proc read*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMetaProperty_read(self.h, obj.h), owned: true)

proc write*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject, value: gen_qvariant_types.QVariant): bool =
  fcQMetaProperty_write(self.h, obj.h, value.h)

proc reset*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): bool =
  fcQMetaProperty_reset(self.h, obj.h)

proc bindable*(self: gen_qmetaobject_types.QMetaProperty, objectVal: gen_qobject_types.QObject): gen_qproperty_types.QUntypedBindable =
  gen_qproperty_types.QUntypedBindable(h: fcQMetaProperty_bindable(self.h, objectVal.h), owned: true)

proc readOnGadget*(self: gen_qmetaobject_types.QMetaProperty, gadget: pointer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMetaProperty_readOnGadget(self.h, gadget), owned: true)

proc writeOnGadget*(self: gen_qmetaobject_types.QMetaProperty, gadget: pointer, value: gen_qvariant_types.QVariant): bool =
  fcQMetaProperty_writeOnGadget(self.h, gadget, value.h)

proc resetOnGadget*(self: gen_qmetaobject_types.QMetaProperty, gadget: pointer): bool =
  fcQMetaProperty_resetOnGadget(self.h, gadget)

proc hasStdCppSet*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_hasStdCppSet(self.h)

proc isAlias*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isAlias(self.h)

proc isValid*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isValid(self.h)

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaProperty): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaProperty_enclosingMetaObject(self.h), owned: false)

proc create*(T: type gen_qmetaobject_types.QMetaProperty): gen_qmetaobject_types.QMetaProperty =
  gen_qmetaobject_types.QMetaProperty(h: fcQMetaProperty_new(), owned: true)

proc name*(self: gen_qmetaobject_types.QMetaClassInfo): cstring =
  (fcQMetaClassInfo_name(self.h))

proc value*(self: gen_qmetaobject_types.QMetaClassInfo): cstring =
  (fcQMetaClassInfo_value(self.h))

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaClassInfo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaClassInfo_enclosingMetaObject(self.h), owned: false)

proc create*(T: type gen_qmetaobject_types.QMetaClassInfo): gen_qmetaobject_types.QMetaClassInfo =
  gen_qmetaobject_types.QMetaClassInfo(h: fcQMetaClassInfo_new(), owned: true)

