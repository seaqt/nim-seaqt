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
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qvariant_types
export
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQMetaMethod*{.exportc: "QMetaMethod", incompleteStruct.} = object
type cQMetaEnum*{.exportc: "QMetaEnum", incompleteStruct.} = object
type cQMetaProperty*{.exportc: "QMetaProperty", incompleteStruct.} = object
type cQMetaClassInfo*{.exportc: "QMetaClassInfo", incompleteStruct.} = object

proc fcQMetaMethod_methodSignature(self: pointer): struct_seaqt_string {.importc: "QMetaMethod_methodSignature".}
proc fcQMetaMethod_name(self: pointer): struct_seaqt_string {.importc: "QMetaMethod_name".}
proc fcQMetaMethod_typeName(self: pointer): cstring {.importc: "QMetaMethod_typeName".}
proc fcQMetaMethod_returnType(self: pointer): cint {.importc: "QMetaMethod_returnType".}
proc fcQMetaMethod_parameterCount(self: pointer): cint {.importc: "QMetaMethod_parameterCount".}
proc fcQMetaMethod_parameterType(self: pointer, index: cint): cint {.importc: "QMetaMethod_parameterType".}
proc fcQMetaMethod_getParameterTypes(self: pointer, types: ptr cint): void {.importc: "QMetaMethod_getParameterTypes".}
proc fcQMetaMethod_parameterTypes(self: pointer): struct_seaqt_array {.importc: "QMetaMethod_parameterTypes".}
proc fcQMetaMethod_parameterNames(self: pointer): struct_seaqt_array {.importc: "QMetaMethod_parameterNames".}
proc fcQMetaMethod_tag(self: pointer): cstring {.importc: "QMetaMethod_tag".}
proc fcQMetaMethod_access(self: pointer): cint {.importc: "QMetaMethod_access".}
proc fcQMetaMethod_methodType(self: pointer): cint {.importc: "QMetaMethod_methodType".}
proc fcQMetaMethod_attributes(self: pointer): cint {.importc: "QMetaMethod_attributes".}
proc fcQMetaMethod_methodIndex(self: pointer): cint {.importc: "QMetaMethod_methodIndex".}
proc fcQMetaMethod_revision(self: pointer): cint {.importc: "QMetaMethod_revision".}
proc fcQMetaMethod_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaMethod_enclosingMetaObject".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValue(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue".}
proc fcQMetaMethod_invokeObjectReturnValue(self: pointer, objectVal: pointer, returnValue: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue".}
proc fcQMetaMethod_invokeObjectConnectionType(self: pointer, objectVal: pointer, connectionType: cint): bool {.importc: "QMetaMethod_invoke_object_connectionType".}
proc fcQMetaMethod_invokeObject(self: pointer, objectVal: pointer): bool {.importc: "QMetaMethod_invoke_object".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValue(self: pointer, gadget: pointer, returnValue: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue".}
proc fcQMetaMethod_invokeOnGadgetGadget(self: pointer, gadget: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget".}
proc fcQMetaMethod_isValid(self: pointer): bool {.importc: "QMetaMethod_isValid".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaMethod_invokeObjectReturnValueVal0(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaMethod_invokeObjectVal0(self: pointer, objectVal: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke_object_val0".}
proc fcQMetaMethod_invokeObjectVal0Val1(self: pointer, objectVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3_val4".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0(self: pointer, gadget: pointer, val0: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1(self: pointer, gadget: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaMethod_new(): ptr cQMetaMethod {.importc: "QMetaMethod_new".}
proc fcQMetaMethod_new2(fromVal: pointer): ptr cQMetaMethod {.importc: "QMetaMethod_new_from".}
proc fcQMetaEnum_name(self: pointer): cstring {.importc: "QMetaEnum_name".}
proc fcQMetaEnum_enumName(self: pointer): cstring {.importc: "QMetaEnum_enumName".}
proc fcQMetaEnum_isFlag(self: pointer): bool {.importc: "QMetaEnum_isFlag".}
proc fcQMetaEnum_isScoped(self: pointer): bool {.importc: "QMetaEnum_isScoped".}
proc fcQMetaEnum_keyCount(self: pointer): cint {.importc: "QMetaEnum_keyCount".}
proc fcQMetaEnum_key(self: pointer, index: cint): cstring {.importc: "QMetaEnum_key".}
proc fcQMetaEnum_value(self: pointer, index: cint): cint {.importc: "QMetaEnum_value".}
proc fcQMetaEnum_scope(self: pointer): cstring {.importc: "QMetaEnum_scope".}
proc fcQMetaEnum_keyToValueKey(self: pointer, key: cstring): cint {.importc: "QMetaEnum_keyToValue_key".}
proc fcQMetaEnum_valueToKey(self: pointer, value: cint): cstring {.importc: "QMetaEnum_valueToKey".}
proc fcQMetaEnum_keysToValueKeys(self: pointer, keys: cstring): cint {.importc: "QMetaEnum_keysToValue_keys".}
proc fcQMetaEnum_valueToKeys(self: pointer, value: cint): struct_seaqt_string {.importc: "QMetaEnum_valueToKeys".}
proc fcQMetaEnum_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaEnum_enclosingMetaObject".}
proc fcQMetaEnum_isValid(self: pointer): bool {.importc: "QMetaEnum_isValid".}
proc fcQMetaEnum_keyToValueKeyOk(self: pointer, key: cstring, ok: ptr bool): cint {.importc: "QMetaEnum_keyToValue_key_ok".}
proc fcQMetaEnum_keysToValueKeysOk(self: pointer, keys: cstring, ok: ptr bool): cint {.importc: "QMetaEnum_keysToValue_keys_ok".}
proc fcQMetaEnum_new(): ptr cQMetaEnum {.importc: "QMetaEnum_new".}
proc fcQMetaEnum_new2(fromVal: pointer): ptr cQMetaEnum {.importc: "QMetaEnum_new_from".}
proc fcQMetaProperty_name(self: pointer): cstring {.importc: "QMetaProperty_name".}
proc fcQMetaProperty_typeName(self: pointer): cstring {.importc: "QMetaProperty_typeName".}
proc fcQMetaProperty_typeX(self: pointer): cint {.importc: "QMetaProperty_type".}
proc fcQMetaProperty_userType(self: pointer): cint {.importc: "QMetaProperty_userType".}
proc fcQMetaProperty_propertyIndex(self: pointer): cint {.importc: "QMetaProperty_propertyIndex".}
proc fcQMetaProperty_relativePropertyIndex(self: pointer): cint {.importc: "QMetaProperty_relativePropertyIndex".}
proc fcQMetaProperty_isReadable(self: pointer): bool {.importc: "QMetaProperty_isReadable".}
proc fcQMetaProperty_isWritable(self: pointer): bool {.importc: "QMetaProperty_isWritable".}
proc fcQMetaProperty_isResettable(self: pointer): bool {.importc: "QMetaProperty_isResettable".}
proc fcQMetaProperty_isDesignable(self: pointer): bool {.importc: "QMetaProperty_isDesignable".}
proc fcQMetaProperty_isScriptable(self: pointer): bool {.importc: "QMetaProperty_isScriptable".}
proc fcQMetaProperty_isStored(self: pointer): bool {.importc: "QMetaProperty_isStored".}
proc fcQMetaProperty_isEditable(self: pointer): bool {.importc: "QMetaProperty_isEditable".}
proc fcQMetaProperty_isUser(self: pointer): bool {.importc: "QMetaProperty_isUser".}
proc fcQMetaProperty_isConstant(self: pointer): bool {.importc: "QMetaProperty_isConstant".}
proc fcQMetaProperty_isFinal(self: pointer): bool {.importc: "QMetaProperty_isFinal".}
proc fcQMetaProperty_isRequired(self: pointer): bool {.importc: "QMetaProperty_isRequired".}
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
proc fcQMetaProperty_readOnGadget(self: pointer, gadget: pointer): pointer {.importc: "QMetaProperty_readOnGadget".}
proc fcQMetaProperty_writeOnGadget(self: pointer, gadget: pointer, value: pointer): bool {.importc: "QMetaProperty_writeOnGadget".}
proc fcQMetaProperty_resetOnGadget(self: pointer, gadget: pointer): bool {.importc: "QMetaProperty_resetOnGadget".}
proc fcQMetaProperty_hasStdCppSet(self: pointer): bool {.importc: "QMetaProperty_hasStdCppSet".}
proc fcQMetaProperty_isValid(self: pointer): bool {.importc: "QMetaProperty_isValid".}
proc fcQMetaProperty_enclosingMetaObject(self: pointer): pointer {.importc: "QMetaProperty_enclosingMetaObject".}
proc fcQMetaProperty_isDesignableObj(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_isDesignable_obj".}
proc fcQMetaProperty_isScriptableObj(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_isScriptable_obj".}
proc fcQMetaProperty_isStoredObj(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_isStored_obj".}
proc fcQMetaProperty_isEditableObj(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_isEditable_obj".}
proc fcQMetaProperty_isUserObj(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_isUser_obj".}
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

proc parameterCount*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_parameterCount(self.h)

proc parameterType*(self: gen_qmetaobject_types.QMetaMethod, index: cint): cint =
  fcQMetaMethod_parameterType(self.h, index)

proc getParameterTypes*(self: gen_qmetaobject_types.QMetaMethod, types: ptr cint): void =
  fcQMetaMethod_getParameterTypes(self.h, types)

proc parameterTypes*(self: gen_qmetaobject_types.QMetaMethod): seq[seq[byte]] =
  var v_ma = fcQMetaMethod_parameterTypes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc parameterNames*(self: gen_qmetaobject_types.QMetaMethod): seq[seq[byte]] =
  var v_ma = fcQMetaMethod_parameterNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
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

proc revision*(self: gen_qmetaobject_types.QMetaMethod): cint =
  fcQMetaMethod_revision(self.h)

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaMethod): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaMethod_enclosingMetaObject(self.h), owned: false)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValue(self.h, objectVal.h, cint(connectionType), returnValue.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaMethod_invokeObjectReturnValue(self.h, objectVal.h, returnValue.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint): bool =
  fcQMetaMethod_invokeObjectConnectionType(self.h, objectVal.h, cint(connectionType))

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject): bool =
  fcQMetaMethod_invokeObject(self.h, objectVal.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValue(self.h, gadget, returnValue.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer): bool =
  fcQMetaMethod_invokeOnGadgetGadget(self.h, gadget)

proc isValid*(self: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaMethod_isValid(self.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6Val7(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0(self.h, objectVal.h, returnValue.h, val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1(self.h, objectVal.h, returnValue.h, val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6Val7(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0(self.h, objectVal.h, cint(connectionType), val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1(self.h, objectVal.h, cint(connectionType), val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6Val7(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, connectionType: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectConnectionTypeVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0(self.h, objectVal.h, val0.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1(self.h, objectVal.h, val0.h, val1.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2(self.h, objectVal.h, val0.h, val1.h, val2.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6Val7(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke*(self: gen_qmetaobject_types.QMetaMethod, objectVal: gen_qobject_types.QObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeObjectVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0(self.h, gadget, returnValue.h, val0.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1(self.h, gadget, returnValue.h, val0.h, val1.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6Val7(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetReturnValueVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0(self.h, gadget, val0.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1(self.h, gadget, val0.h, val1.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2(self.h, gadget, val0.h, val1.h, val2.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3(self.h, gadget, val0.h, val1.h, val2.h, val3.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6Val7(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeOnGadget*(self: gen_qmetaobject_types.QMetaMethod, gadget: pointer, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaMethod_invokeOnGadgetGadgetVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc create*(T: type gen_qmetaobject_types.QMetaMethod): gen_qmetaobject_types.QMetaMethod =
  let tmp = gen_qmetaobject_types.QMetaMethod(h: fcQMetaMethod_new(), owned: true)
  tmp
proc create*(T: type gen_qmetaobject_types.QMetaMethod,
    fromVal: gen_qmetaobject_types.QMetaMethod): gen_qmetaobject_types.QMetaMethod =
  let tmp = gen_qmetaobject_types.QMetaMethod(h: fcQMetaMethod_new2(fromVal.h), owned: true)
  tmp
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
  fcQMetaEnum_keyToValueKey(self.h, key)

proc valueToKey*(self: gen_qmetaobject_types.QMetaEnum, value: cint): cstring =
  (fcQMetaEnum_valueToKey(self.h, value))

proc keysToValue*(self: gen_qmetaobject_types.QMetaEnum, keys: cstring): cint =
  fcQMetaEnum_keysToValueKeys(self.h, keys)

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
  fcQMetaEnum_keyToValueKeyOk(self.h, key, ok)

proc keysToValue*(self: gen_qmetaobject_types.QMetaEnum, keys: cstring, ok: ptr bool): cint =
  fcQMetaEnum_keysToValueKeysOk(self.h, keys, ok)

proc create*(T: type gen_qmetaobject_types.QMetaEnum): gen_qmetaobject_types.QMetaEnum =
  let tmp = gen_qmetaobject_types.QMetaEnum(h: fcQMetaEnum_new(), owned: true)
  tmp
proc create*(T: type gen_qmetaobject_types.QMetaEnum,
    fromVal: gen_qmetaobject_types.QMetaEnum): gen_qmetaobject_types.QMetaEnum =
  let tmp = gen_qmetaobject_types.QMetaEnum(h: fcQMetaEnum_new2(fromVal.h), owned: true)
  tmp
proc name*(self: gen_qmetaobject_types.QMetaProperty): cstring =
  (fcQMetaProperty_name(self.h))

proc typeName*(self: gen_qmetaobject_types.QMetaProperty): cstring =
  (fcQMetaProperty_typeName(self.h))

proc typeX*(self: gen_qmetaobject_types.QMetaProperty): cint =
  cint(fcQMetaProperty_typeX(self.h))

proc userType*(self: gen_qmetaobject_types.QMetaProperty): cint =
  fcQMetaProperty_userType(self.h)

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

proc isEditable*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isEditable(self.h)

proc isUser*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isUser(self.h)

proc isConstant*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isConstant(self.h)

proc isFinal*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isFinal(self.h)

proc isRequired*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isRequired(self.h)

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

proc readOnGadget*(self: gen_qmetaobject_types.QMetaProperty, gadget: pointer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMetaProperty_readOnGadget(self.h, gadget), owned: true)

proc writeOnGadget*(self: gen_qmetaobject_types.QMetaProperty, gadget: pointer, value: gen_qvariant_types.QVariant): bool =
  fcQMetaProperty_writeOnGadget(self.h, gadget, value.h)

proc resetOnGadget*(self: gen_qmetaobject_types.QMetaProperty, gadget: pointer): bool =
  fcQMetaProperty_resetOnGadget(self.h, gadget)

proc hasStdCppSet*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_hasStdCppSet(self.h)

proc isValid*(self: gen_qmetaobject_types.QMetaProperty): bool =
  fcQMetaProperty_isValid(self.h)

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaProperty): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaProperty_enclosingMetaObject(self.h), owned: false)

proc isDesignable*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): bool =
  fcQMetaProperty_isDesignableObj(self.h, obj.h)

proc isScriptable*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): bool =
  fcQMetaProperty_isScriptableObj(self.h, obj.h)

proc isStored*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): bool =
  fcQMetaProperty_isStoredObj(self.h, obj.h)

proc isEditable*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): bool =
  fcQMetaProperty_isEditableObj(self.h, obj.h)

proc isUser*(self: gen_qmetaobject_types.QMetaProperty, obj: gen_qobject_types.QObject): bool =
  fcQMetaProperty_isUserObj(self.h, obj.h)

proc create*(T: type gen_qmetaobject_types.QMetaProperty): gen_qmetaobject_types.QMetaProperty =
  let tmp = gen_qmetaobject_types.QMetaProperty(h: fcQMetaProperty_new(), owned: true)
  tmp
proc name*(self: gen_qmetaobject_types.QMetaClassInfo): cstring =
  (fcQMetaClassInfo_name(self.h))

proc value*(self: gen_qmetaobject_types.QMetaClassInfo): cstring =
  (fcQMetaClassInfo_value(self.h))

proc enclosingMetaObject*(self: gen_qmetaobject_types.QMetaClassInfo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaClassInfo_enclosingMetaObject(self.h), owned: false)

proc create*(T: type gen_qmetaobject_types.QMetaClassInfo): gen_qmetaobject_types.QMetaClassInfo =
  let tmp = gen_qmetaobject_types.QMetaClassInfo(h: fcQMetaClassInfo_new(), owned: true)
  tmp
