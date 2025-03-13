import ./Qt6Core_libs

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


type QMetaObjectCallEnum* = distinct cint
template InvokeMetaMethod*(_: type QMetaObjectCallEnum): untyped = 0
template ReadProperty*(_: type QMetaObjectCallEnum): untyped = 1
template WriteProperty*(_: type QMetaObjectCallEnum): untyped = 2
template ResetProperty*(_: type QMetaObjectCallEnum): untyped = 3
template CreateInstance*(_: type QMetaObjectCallEnum): untyped = 4
template IndexOfMethod*(_: type QMetaObjectCallEnum): untyped = 5
template RegisterPropertyMetaType*(_: type QMetaObjectCallEnum): untyped = 6
template RegisterMethodArgumentMetaType*(_: type QMetaObjectCallEnum): untyped = 7
template BindableProperty*(_: type QMetaObjectCallEnum): untyped = 8
template CustomCall*(_: type QMetaObjectCallEnum): untyped = 9


import ./gen_qobjectdefs_types
export gen_qobjectdefs_types

import
  ./gen_qmetaobject_types,
  ./gen_qmetatype_types,
  ./gen_qobject_types
export
  gen_qmetaobject_types,
  gen_qmetatype_types,
  gen_qobject_types

type cQMethodRawArguments*{.exportc: "QMethodRawArguments", incompleteStruct.} = object
type cQGenericArgument*{.exportc: "QGenericArgument", incompleteStruct.} = object
type cQGenericReturnArgument*{.exportc: "QGenericReturnArgument", incompleteStruct.} = object
type cQMetaObject*{.exportc: "QMetaObject", incompleteStruct.} = object
type cQMetaObjectConnection*{.exportc: "QMetaObject__Connection", incompleteStruct.} = object
type cQMetaObjectSuperData*{.exportc: "QMetaObject__SuperData", incompleteStruct.} = object
type cQMetaObjectData*{.exportc: "QMetaObject__Data", incompleteStruct.} = object

proc fcQGenericArgument_data(self: pointer): pointer {.importc: "QGenericArgument_data".}
proc fcQGenericArgument_name(self: pointer): cstring {.importc: "QGenericArgument_name".}
proc fcQGenericArgument_new(): ptr cQGenericArgument {.importc: "QGenericArgument_new".}
proc fcQGenericArgument_new2(param1: pointer): ptr cQGenericArgument {.importc: "QGenericArgument_new2".}
proc fcQGenericArgument_new3(aName: cstring): ptr cQGenericArgument {.importc: "QGenericArgument_new3".}
proc fcQGenericArgument_new4(aName: cstring, aData: pointer): ptr cQGenericArgument {.importc: "QGenericArgument_new4".}
proc fcQGenericReturnArgument_new(): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new".}
proc fcQGenericReturnArgument_new2(param1: pointer): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new2".}
proc fcQGenericReturnArgument_new3(aName: cstring): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new3".}
proc fcQGenericReturnArgument_new4(aName: cstring, aData: pointer): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new4".}
proc fcQMetaObject_className(self: pointer): cstring {.importc: "QMetaObject_className".}
proc fcQMetaObject_superClass(self: pointer): pointer {.importc: "QMetaObject_superClass".}
proc fcQMetaObject_inherits(self: pointer, metaObject: pointer): bool {.importc: "QMetaObject_inherits".}
proc fcQMetaObject_castX(self: pointer, obj: pointer): pointer {.importc: "QMetaObject_cast".}
proc fcQMetaObject_castWithObj(self: pointer, obj: pointer): pointer {.importc: "QMetaObject_castWithObj".}
proc fcQMetaObject_tr(self: pointer, s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaObject_tr".}
proc fcQMetaObject_metaType(self: pointer): pointer {.importc: "QMetaObject_metaType".}
proc fcQMetaObject_methodOffset(self: pointer): cint {.importc: "QMetaObject_methodOffset".}
proc fcQMetaObject_enumeratorOffset(self: pointer): cint {.importc: "QMetaObject_enumeratorOffset".}
proc fcQMetaObject_propertyOffset(self: pointer): cint {.importc: "QMetaObject_propertyOffset".}
proc fcQMetaObject_classInfoOffset(self: pointer): cint {.importc: "QMetaObject_classInfoOffset".}
proc fcQMetaObject_constructorCount(self: pointer): cint {.importc: "QMetaObject_constructorCount".}
proc fcQMetaObject_methodCount(self: pointer): cint {.importc: "QMetaObject_methodCount".}
proc fcQMetaObject_enumeratorCount(self: pointer): cint {.importc: "QMetaObject_enumeratorCount".}
proc fcQMetaObject_propertyCount(self: pointer): cint {.importc: "QMetaObject_propertyCount".}
proc fcQMetaObject_classInfoCount(self: pointer): cint {.importc: "QMetaObject_classInfoCount".}
proc fcQMetaObject_indexOfConstructor(self: pointer, constructor: cstring): cint {.importc: "QMetaObject_indexOfConstructor".}
proc fcQMetaObject_indexOfMethod(self: pointer, methodVal: cstring): cint {.importc: "QMetaObject_indexOfMethod".}
proc fcQMetaObject_indexOfSignal(self: pointer, signal: cstring): cint {.importc: "QMetaObject_indexOfSignal".}
proc fcQMetaObject_indexOfSlot(self: pointer, slot: cstring): cint {.importc: "QMetaObject_indexOfSlot".}
proc fcQMetaObject_indexOfEnumerator(self: pointer, name: cstring): cint {.importc: "QMetaObject_indexOfEnumerator".}
proc fcQMetaObject_indexOfProperty(self: pointer, name: cstring): cint {.importc: "QMetaObject_indexOfProperty".}
proc fcQMetaObject_indexOfClassInfo(self: pointer, name: cstring): cint {.importc: "QMetaObject_indexOfClassInfo".}
proc fcQMetaObject_constructor(self: pointer, index: cint): pointer {.importc: "QMetaObject_constructor".}
proc fcQMetaObject_methodX(self: pointer, index: cint): pointer {.importc: "QMetaObject_method".}
proc fcQMetaObject_enumerator(self: pointer, index: cint): pointer {.importc: "QMetaObject_enumerator".}
proc fcQMetaObject_property(self: pointer, index: cint): pointer {.importc: "QMetaObject_property".}
proc fcQMetaObject_classInfo(self: pointer, index: cint): pointer {.importc: "QMetaObject_classInfo".}
proc fcQMetaObject_userProperty(self: pointer): pointer {.importc: "QMetaObject_userProperty".}
proc fcQMetaObject_checkConnectArgs(signal: cstring, methodVal: cstring): bool {.importc: "QMetaObject_checkConnectArgs".}
proc fcQMetaObject_checkConnectArgs2(signal: pointer, methodVal: pointer): bool {.importc: "QMetaObject_checkConnectArgs2".}
proc fcQMetaObject_normalizedSignature(methodVal: cstring): struct_miqt_string {.importc: "QMetaObject_normalizedSignature".}
proc fcQMetaObject_normalizedType(typeVal: cstring): struct_miqt_string {.importc: "QMetaObject_normalizedType".}
proc fcQMetaObject_connect(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): pointer {.importc: "QMetaObject_connect".}
proc fcQMetaObject_disconnect(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): bool {.importc: "QMetaObject_disconnect".}
proc fcQMetaObject_disconnectOne(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): bool {.importc: "QMetaObject_disconnectOne".}
proc fcQMetaObject_connectSlotsByName(o: pointer): void {.importc: "QMetaObject_connectSlotsByName".}
proc fcQMetaObject_activate(sender: pointer, signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate".}
proc fcQMetaObject_activate2(sender: pointer, param2: pointer, local_signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate2".}
proc fcQMetaObject_activate3(sender: pointer, signal_offset: cint, local_signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate3".}
proc fcQMetaObject_invokeMethod(obj: pointer, member: cstring, param3: cint, retVal: pointer): bool {.importc: "QMetaObject_invokeMethod".}
proc fcQMetaObject_invokeMethod2(obj: pointer, member: cstring, retVal: pointer): bool {.importc: "QMetaObject_invokeMethod2".}
proc fcQMetaObject_invokeMethod3(obj: pointer, member: cstring, typeVal: cint): bool {.importc: "QMetaObject_invokeMethod3".}
proc fcQMetaObject_invokeMethod4(obj: pointer, member: cstring): bool {.importc: "QMetaObject_invokeMethod4".}
proc fcQMetaObject_newInstance(self: pointer): pointer {.importc: "QMetaObject_newInstance".}
proc fcQMetaObject_staticMetacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaObject_staticMetacall".}
proc fcQMetaObject_metacall(param1: pointer, param2: cint, param3: cint, param4: pointer): cint {.importc: "QMetaObject_metacall".}
proc fcQMetaObject_tr3(self: pointer, s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaObject_tr3".}
proc fcQMetaObject_connect5(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint, typeVal: cint): pointer {.importc: "QMetaObject_connect5".}
proc fcQMetaObject_connect6(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint, typeVal: cint, types: ptr cint): pointer {.importc: "QMetaObject_connect6".}
proc fcQMetaObject_invokeMethod5(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer): bool {.importc: "QMetaObject_invokeMethod5".}
proc fcQMetaObject_invokeMethod6(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod6".}
proc fcQMetaObject_invokeMethod7(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod7".}
proc fcQMetaObject_invokeMethod8(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod8".}
proc fcQMetaObject_invokeMethod9(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod9".}
proc fcQMetaObject_invokeMethod10(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod10".}
proc fcQMetaObject_invokeMethod11(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod11".}
proc fcQMetaObject_invokeMethod12(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod12".}
proc fcQMetaObject_invokeMethod13(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod13".}
proc fcQMetaObject_invokeMethod14(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod14".}
proc fcQMetaObject_invokeMethod42(obj: pointer, member: cstring, retVal: pointer, val0: pointer): bool {.importc: "QMetaObject_invokeMethod42".}
proc fcQMetaObject_invokeMethod52(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod52".}
proc fcQMetaObject_invokeMethod62(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod62".}
proc fcQMetaObject_invokeMethod72(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod72".}
proc fcQMetaObject_invokeMethod82(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod82".}
proc fcQMetaObject_invokeMethod92(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod92".}
proc fcQMetaObject_invokeMethod102(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod102".}
proc fcQMetaObject_invokeMethod112(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod112".}
proc fcQMetaObject_invokeMethod122(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod122".}
proc fcQMetaObject_invokeMethod132(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod132".}
proc fcQMetaObject_invokeMethod43(obj: pointer, member: cstring, typeVal: cint, val0: pointer): bool {.importc: "QMetaObject_invokeMethod43".}
proc fcQMetaObject_invokeMethod53(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod53".}
proc fcQMetaObject_invokeMethod63(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod63".}
proc fcQMetaObject_invokeMethod73(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod73".}
proc fcQMetaObject_invokeMethod83(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod83".}
proc fcQMetaObject_invokeMethod93(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod93".}
proc fcQMetaObject_invokeMethod103(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod103".}
proc fcQMetaObject_invokeMethod113(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod113".}
proc fcQMetaObject_invokeMethod123(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod123".}
proc fcQMetaObject_invokeMethod133(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod133".}
proc fcQMetaObject_invokeMethod32(obj: pointer, member: cstring, val0: pointer): bool {.importc: "QMetaObject_invokeMethod32".}
proc fcQMetaObject_invokeMethod44(obj: pointer, member: cstring, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod44".}
proc fcQMetaObject_invokeMethod54(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod54".}
proc fcQMetaObject_invokeMethod64(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod64".}
proc fcQMetaObject_invokeMethod74(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod74".}
proc fcQMetaObject_invokeMethod84(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod84".}
proc fcQMetaObject_invokeMethod94(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod94".}
proc fcQMetaObject_invokeMethod104(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod104".}
proc fcQMetaObject_invokeMethod114(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod114".}
proc fcQMetaObject_invokeMethod124(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod124".}
proc fcQMetaObject_newInstance1(self: pointer, val0: pointer): pointer {.importc: "QMetaObject_newInstance1".}
proc fcQMetaObject_newInstance2(self: pointer, val0: pointer, val1: pointer): pointer {.importc: "QMetaObject_newInstance2".}
proc fcQMetaObject_newInstance3(self: pointer, val0: pointer, val1: pointer, val2: pointer): pointer {.importc: "QMetaObject_newInstance3".}
proc fcQMetaObject_newInstance4(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): pointer {.importc: "QMetaObject_newInstance4".}
proc fcQMetaObject_newInstance5(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): pointer {.importc: "QMetaObject_newInstance5".}
proc fcQMetaObject_newInstance6(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): pointer {.importc: "QMetaObject_newInstance6".}
proc fcQMetaObject_newInstance7(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): pointer {.importc: "QMetaObject_newInstance7".}
proc fcQMetaObject_newInstance8(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): pointer {.importc: "QMetaObject_newInstance8".}
proc fcQMetaObject_newInstance9(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): pointer {.importc: "QMetaObject_newInstance9".}
proc fcQMetaObject_newInstance10(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): pointer {.importc: "QMetaObject_newInstance10".}
proc fcQMetaObject_new(): ptr cQMetaObject {.importc: "QMetaObject_new".}
proc fcQMetaObject_new2(param1: pointer): ptr cQMetaObject {.importc: "QMetaObject_new2".}
proc fcQMetaObjectConnection_operatorAssign(self: pointer, other: pointer): void {.importc: "QMetaObject__Connection_operatorAssign".}
proc fcQMetaObjectConnection_swap(self: pointer, other: pointer): void {.importc: "QMetaObject__Connection_swap".}
proc fcQMetaObjectConnection_new(): ptr cQMetaObjectConnection {.importc: "QMetaObject__Connection_new".}
proc fcQMetaObjectConnection_new2(other: pointer): ptr cQMetaObjectConnection {.importc: "QMetaObject__Connection_new2".}
proc fcQMetaObjectSuperData_operatorMinusGreater(self: pointer): pointer {.importc: "QMetaObject__SuperData_operatorMinusGreater".}
proc fcQMetaObjectSuperData_ToConstQMetaObjectMultiply(self: pointer): pointer {.importc: "QMetaObject__SuperData_ToConstQMetaObjectMultiply".}
proc fcQMetaObjectSuperData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMetaObject__SuperData_operatorAssign".}
proc fcQMetaObjectSuperData_new(): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new".}
proc fcQMetaObjectSuperData_new2(mo: pointer): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new2".}
proc fcQMetaObjectSuperData_new3(param1: pointer): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new3".}
proc fcQMetaObjectData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMetaObject__Data_operatorAssign".}
proc fcQMetaObjectData_new(): ptr cQMetaObjectData {.importc: "QMetaObject__Data_new".}
proc fcQMetaObjectData_new2(param1: pointer): ptr cQMetaObjectData {.importc: "QMetaObject__Data_new2".}

proc data*(self: gen_qobjectdefs_types.QGenericArgument): pointer =
  fcQGenericArgument_data(self.h)

proc name*(self: gen_qobjectdefs_types.QGenericArgument): cstring =
  (fcQGenericArgument_name(self.h))

proc create*(T: type gen_qobjectdefs_types.QGenericArgument): gen_qobjectdefs_types.QGenericArgument =
  gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new(), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericArgument,
    param1: gen_qobjectdefs_types.QGenericArgument): gen_qobjectdefs_types.QGenericArgument =
  gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new2(param1.h), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericArgument,
    aName: cstring): gen_qobjectdefs_types.QGenericArgument =
  gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new3(aName), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericArgument,
    aName: cstring, aData: pointer): gen_qobjectdefs_types.QGenericArgument =
  gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new4(aName, aData), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument): gen_qobjectdefs_types.QGenericReturnArgument =
  gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new(), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument,
    param1: gen_qobjectdefs_types.QGenericReturnArgument): gen_qobjectdefs_types.QGenericReturnArgument =
  gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new2(param1.h), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument,
    aName: cstring): gen_qobjectdefs_types.QGenericReturnArgument =
  gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new3(aName), owned: true)

proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument,
    aName: cstring, aData: pointer): gen_qobjectdefs_types.QGenericReturnArgument =
  gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new4(aName, aData), owned: true)

proc className*(self: gen_qobjectdefs_types.QMetaObject): cstring =
  (fcQMetaObject_className(self.h))

proc superClass*(self: gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObject_superClass(self.h), owned: false)

proc inherits*(self: gen_qobjectdefs_types.QMetaObject, metaObject: gen_qobjectdefs_types.QMetaObject): bool =
  fcQMetaObject_inherits(self.h, metaObject.h)

proc castX*(self: gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_castX(self.h, obj.h), owned: false)

proc castX2*(self: gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_castWithObj(self.h, obj.h), owned: false)

proc tr*(self: gen_qobjectdefs_types.QMetaObject, s: cstring, c: cstring): string =
  let v_ms = fcQMetaObject_tr(self.h, s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc metaType*(self: gen_qobjectdefs_types.QMetaObject): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaObject_metaType(self.h), owned: true)

proc methodOffset*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_methodOffset(self.h)

proc enumeratorOffset*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_enumeratorOffset(self.h)

proc propertyOffset*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_propertyOffset(self.h)

proc classInfoOffset*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_classInfoOffset(self.h)

proc constructorCount*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_constructorCount(self.h)

proc methodCount*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_methodCount(self.h)

proc enumeratorCount*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_enumeratorCount(self.h)

proc propertyCount*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_propertyCount(self.h)

proc classInfoCount*(self: gen_qobjectdefs_types.QMetaObject): cint =
  fcQMetaObject_classInfoCount(self.h)

proc indexOfConstructor*(self: gen_qobjectdefs_types.QMetaObject, constructor: cstring): cint =
  fcQMetaObject_indexOfConstructor(self.h, constructor)

proc indexOfMethod*(self: gen_qobjectdefs_types.QMetaObject, methodVal: cstring): cint =
  fcQMetaObject_indexOfMethod(self.h, methodVal)

proc indexOfSignal*(self: gen_qobjectdefs_types.QMetaObject, signal: cstring): cint =
  fcQMetaObject_indexOfSignal(self.h, signal)

proc indexOfSlot*(self: gen_qobjectdefs_types.QMetaObject, slot: cstring): cint =
  fcQMetaObject_indexOfSlot(self.h, slot)

proc indexOfEnumerator*(self: gen_qobjectdefs_types.QMetaObject, name: cstring): cint =
  fcQMetaObject_indexOfEnumerator(self.h, name)

proc indexOfProperty*(self: gen_qobjectdefs_types.QMetaObject, name: cstring): cint =
  fcQMetaObject_indexOfProperty(self.h, name)

proc indexOfClassInfo*(self: gen_qobjectdefs_types.QMetaObject, name: cstring): cint =
  fcQMetaObject_indexOfClassInfo(self.h, name)

proc constructor*(self: gen_qobjectdefs_types.QMetaObject, index: cint): gen_qmetaobject_types.QMetaMethod =
  gen_qmetaobject_types.QMetaMethod(h: fcQMetaObject_constructor(self.h, index), owned: true)

proc methodX*(self: gen_qobjectdefs_types.QMetaObject, index: cint): gen_qmetaobject_types.QMetaMethod =
  gen_qmetaobject_types.QMetaMethod(h: fcQMetaObject_methodX(self.h, index), owned: true)

proc enumerator*(self: gen_qobjectdefs_types.QMetaObject, index: cint): gen_qmetaobject_types.QMetaEnum =
  gen_qmetaobject_types.QMetaEnum(h: fcQMetaObject_enumerator(self.h, index), owned: true)

proc property*(self: gen_qobjectdefs_types.QMetaObject, index: cint): gen_qmetaobject_types.QMetaProperty =
  gen_qmetaobject_types.QMetaProperty(h: fcQMetaObject_property(self.h, index), owned: true)

proc classInfo*(self: gen_qobjectdefs_types.QMetaObject, index: cint): gen_qmetaobject_types.QMetaClassInfo =
  gen_qmetaobject_types.QMetaClassInfo(h: fcQMetaObject_classInfo(self.h, index), owned: true)

proc userProperty*(self: gen_qobjectdefs_types.QMetaObject): gen_qmetaobject_types.QMetaProperty =
  gen_qmetaobject_types.QMetaProperty(h: fcQMetaObject_userProperty(self.h), owned: true)

proc checkConnectArgs*(_: type gen_qobjectdefs_types.QMetaObject, signal: cstring, methodVal: cstring): bool =
  fcQMetaObject_checkConnectArgs(signal, methodVal)

proc checkConnectArgs*(_: type gen_qobjectdefs_types.QMetaObject, signal: gen_qmetaobject_types.QMetaMethod, methodVal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaObject_checkConnectArgs2(signal.h, methodVal.h)

proc normalizedSignature*(_: type gen_qobjectdefs_types.QMetaObject, methodVal: cstring): seq[byte] =
  var v_bytearray = fcQMetaObject_normalizedSignature(methodVal)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc normalizedType*(_: type gen_qobjectdefs_types.QMetaObject, typeVal: cstring): seq[byte] =
  var v_bytearray = fcQMetaObject_normalizedType(typeVal)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc connect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObject_connect(sender.h, signal_index, receiver.h, method_index), owned: true)

proc disconnect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint): bool =
  fcQMetaObject_disconnect(sender.h, signal_index, receiver.h, method_index)

proc disconnectOne*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint): bool =
  fcQMetaObject_disconnectOne(sender.h, signal_index, receiver.h, method_index)

proc connectSlotsByName*(_: type gen_qobjectdefs_types.QMetaObject, o: gen_qobject_types.QObject): void =
  fcQMetaObject_connectSlotsByName(o.h)

proc activate*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, argv: pointer): void =
  fcQMetaObject_activate(sender.h, signal_index, argv)

proc activate*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, param2: gen_qobjectdefs_types.QMetaObject, local_signal_index: cint, argv: pointer): void =
  fcQMetaObject_activate2(sender.h, param2.h, local_signal_index, argv)

proc activate*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_offset: cint, local_signal_index: cint, argv: pointer): void =
  fcQMetaObject_activate3(sender.h, signal_offset, local_signal_index, argv)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaObject_invokeMethod(obj.h, member, cint(param3), retVal.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaObject_invokeMethod2(obj.h, member, retVal.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint): bool =
  fcQMetaObject_invokeMethod3(obj.h, member, cint(typeVal))

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring): bool =
  fcQMetaObject_invokeMethod4(obj.h, member)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance(self.h), owned: false)

proc staticMetacall*(self: gen_qobjectdefs_types.QMetaObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQMetaObject_staticMetacall(self.h, cint(param1), param2, param3)

proc metacall*(_: type gen_qobjectdefs_types.QMetaObject, param1: gen_qobject_types.QObject, param2: cint, param3: cint, param4: pointer): cint =
  fcQMetaObject_metacall(param1.h, cint(param2), param3, param4)

proc tr*(self: gen_qobjectdefs_types.QMetaObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMetaObject_tr3(self.h, s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint, typeVal: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObject_connect5(sender.h, signal_index, receiver.h, method_index, typeVal), owned: true)

proc connect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint, typeVal: cint, types: ptr cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObject_connect6(sender.h, signal_index, receiver.h, method_index, typeVal, types), owned: true)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod5(obj.h, member, cint(param3), retVal.h, val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod6(obj.h, member, cint(param3), retVal.h, val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod7(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod8(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod9(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod10(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod11(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod12(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod13(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod14(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod42(obj.h, member, retVal.h, val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod52(obj.h, member, retVal.h, val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod62(obj.h, member, retVal.h, val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod72(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod82(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod92(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod102(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod112(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod122(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod132(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod43(obj.h, member, cint(typeVal), val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod53(obj.h, member, cint(typeVal), val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod63(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod73(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod83(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod93(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod103(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod113(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod123(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod133(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod32(obj.h, member, val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod44(obj.h, member, val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod54(obj.h, member, val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod64(obj.h, member, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod74(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod84(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod94(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod104(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod114(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod124(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance1(self.h, val0.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance2(self.h, val0.h, val1.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance3(self.h, val0.h, val1.h, val2.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance4(self.h, val0.h, val1.h, val2.h, val3.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance5(self.h, val0.h, val1.h, val2.h, val3.h, val4.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance6(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance7(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance8(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance9(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstance10(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h), owned: false)

proc create*(T: type gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObject_new(), owned: true)

proc create*(T: type gen_qobjectdefs_types.QMetaObject,
    param1: gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObject_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObjectConnection, other: gen_qobjectdefs_types.QMetaObjectConnection): void =
  fcQMetaObjectConnection_operatorAssign(self.h, other.h)

proc swap*(self: gen_qobjectdefs_types.QMetaObjectConnection, other: gen_qobjectdefs_types.QMetaObjectConnection): void =
  fcQMetaObjectConnection_swap(self.h, other.h)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectConnection): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObjectConnection_new(), owned: true)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectConnection,
    other: gen_qobjectdefs_types.QMetaObjectConnection): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObjectConnection_new2(other.h), owned: true)

proc operatorMinusGreater*(self: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObjectSuperData_operatorMinusGreater(self.h), owned: false)

proc ToConstQMetaObjectMultiply*(self: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObjectSuperData_ToConstQMetaObjectMultiply(self.h), owned: false)

proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObjectSuperData, param1: gen_qobjectdefs_types.QMetaObjectSuperData): void =
  fcQMetaObjectSuperData_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObjectSuperData =
  gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectSuperData_new(), owned: true)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectSuperData,
    mo: gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObjectSuperData =
  gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectSuperData_new2(mo.h), owned: true)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectSuperData,
    param1: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObjectSuperData =
  gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectSuperData_new3(param1.h), owned: true)

proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObjectData, param1: gen_qobjectdefs_types.QMetaObjectData): void =
  fcQMetaObjectData_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectData): gen_qobjectdefs_types.QMetaObjectData =
  gen_qobjectdefs_types.QMetaObjectData(h: fcQMetaObjectData_new(), owned: true)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectData,
    param1: gen_qobjectdefs_types.QMetaObjectData): gen_qobjectdefs_types.QMetaObjectData =
  gen_qobjectdefs_types.QMetaObjectData(h: fcQMetaObjectData_new2(param1.h), owned: true)

