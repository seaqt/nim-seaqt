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
template ConstructInPlace*(_: type QMetaObjectCallEnum): untyped = 10


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
type cQMetaMethodArgument*{.exportc: "QMetaMethodArgument", incompleteStruct.} = object
type cQMetaMethodReturnArgument*{.exportc: "QMetaMethodReturnArgument", incompleteStruct.} = object
type cQMetaObject*{.exportc: "QMetaObject", incompleteStruct.} = object
type cQMetaObjectConnection*{.exportc: "QMetaObject__Connection", incompleteStruct.} = object
type cQMetaObjectSuperData*{.exportc: "QMetaObject__SuperData", incompleteStruct.} = object
type cQMetaObjectData*{.exportc: "QMetaObject__Data", incompleteStruct.} = object

proc fcQGenericArgument_data(self: pointer): pointer {.importc: "QGenericArgument_data".}
proc fcQGenericArgument_name(self: pointer): cstring {.importc: "QGenericArgument_name".}
proc fcQGenericArgument_new(): ptr cQGenericArgument {.importc: "QGenericArgument_new".}
proc fcQGenericArgument_new2(fromVal: pointer): ptr cQGenericArgument {.importc: "QGenericArgument_new_from".}
proc fcQGenericArgument_new3(aName: cstring): ptr cQGenericArgument {.importc: "QGenericArgument_new_aName".}
proc fcQGenericArgument_new4(aName: cstring, aData: pointer): ptr cQGenericArgument {.importc: "QGenericArgument_new_aName_aData".}
proc fcQGenericReturnArgument_new(): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new".}
proc fcQGenericReturnArgument_new2(fromVal: pointer): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new_from".}
proc fcQGenericReturnArgument_new3(aName: cstring): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new_aName".}
proc fcQGenericReturnArgument_new4(aName: cstring, aData: pointer): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new_aName_aData".}
proc fcQMetaMethodArgument_metaType(self: pointer): pointer {.importc: "QMetaMethodArgument_metaType".}
proc fcQMetaMethodArgument_setMetaType(self: pointer, metaType: pointer): void {.importc: "QMetaMethodArgument_setMetaType".}
proc fcQMetaMethodArgument_name(self: pointer): cstring {.importc: "QMetaMethodArgument_name".}
proc fcQMetaMethodArgument_setName(self: pointer, name: cstring): void {.importc: "QMetaMethodArgument_setName".}
proc fcQMetaMethodReturnArgument_metaType(self: pointer): pointer {.importc: "QMetaMethodReturnArgument_metaType".}
proc fcQMetaMethodReturnArgument_setMetaType(self: pointer, metaType: pointer): void {.importc: "QMetaMethodReturnArgument_setMetaType".}
proc fcQMetaMethodReturnArgument_name(self: pointer): cstring {.importc: "QMetaMethodReturnArgument_name".}
proc fcQMetaMethodReturnArgument_setName(self: pointer, name: cstring): void {.importc: "QMetaMethodReturnArgument_setName".}
proc fcQMetaObject_className(self: pointer): cstring {.importc: "QMetaObject_className".}
proc fcQMetaObject_superClass(self: pointer): pointer {.importc: "QMetaObject_superClass".}
proc fcQMetaObject_inherits(self: pointer, metaObject: pointer): bool {.importc: "QMetaObject_inherits".}
proc fcQMetaObject_castConstPQObject(self: pointer, obj: pointer): pointer {.importc: "QMetaObject_cast_const_pQObject".}
proc fcQMetaObject_castConstPcQObject(self: pointer, obj: pointer): pointer {.importc: "QMetaObject_cast_const_pcQObject".}
proc fcQMetaObject_trSC(self: pointer, s: cstring, c: cstring): struct_seaqt_string {.importc: "QMetaObject_tr_s_c".}
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
proc fcQMetaObject_checkConnectArgsCharChar(signal: cstring, methodVal: cstring): bool {.importc: "QMetaObject_checkConnectArgs_char_char".}
proc fcQMetaObject_checkConnectArgs_QMetaMethod_QMetaMethod(signal: pointer, methodVal: pointer): bool {.importc: "QMetaObject_checkConnectArgs_QMetaMethod_QMetaMethod".}
proc fcQMetaObject_normalizedSignature(methodVal: cstring): struct_seaqt_string {.importc: "QMetaObject_normalizedSignature".}
proc fcQMetaObject_normalizedType(typeVal: cstring): struct_seaqt_string {.importc: "QMetaObject_normalizedType".}
proc fcQMetaObject_connectSenderSignalIndexReceiverMethodIndex(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): pointer {.importc: "QMetaObject_connect_sender_signal_index_receiver_method_index".}
proc fcQMetaObject_disconnect(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): bool {.importc: "QMetaObject_disconnect".}
proc fcQMetaObject_disconnectOne(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): bool {.importc: "QMetaObject_disconnectOne".}
proc fcQMetaObject_connectSlotsByName(o: pointer): void {.importc: "QMetaObject_connectSlotsByName".}
proc fcQMetaObject_activate_QObjectIntVoid(sender: pointer, signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate_QObject_int_void".}
proc fcQMetaObject_activate_QObject_QMetaObjectIntVoid(sender: pointer, param2: pointer, local_signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate_QObject_QMetaObject_int_void".}
proc fcQMetaObject_activate_QObjectIntIntVoid(sender: pointer, signal_offset: cint, local_signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate_QObject_int_int_void".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument(obj: pointer, member: cstring, retVal: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument(obj: pointer, member: cstring, val0: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument".}
proc fcQMetaObject_newInstanceVal0(self: pointer, val0: pointer): pointer {.importc: "QMetaObject_newInstance_val0".}
proc fcQMetaObject_staticMetacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaObject_static_metacall".}
proc fcQMetaObject_metacall(param1: pointer, param2: cint, param3: cint, param4: pointer): cint {.importc: "QMetaObject_metacall".}
proc fcQMetaObject_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMetaObject_operatorAssign".}
proc fcQMetaObject_trSCN(self: pointer, s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QMetaObject_tr_s_c_n".}
proc fcQMetaObject_connectSenderSignalIndexReceiverMethodIndexType(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint, typeVal: cint): pointer {.importc: "QMetaObject_connect_sender_signal_index_receiver_method_index_type".}
proc fcQMetaObject_connectSenderSignalIndexReceiverMethodIndexTypeTypes(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint, typeVal: cint, types: ptr cint): pointer {.importc: "QMetaObject_connect_sender_signal_index_receiver_method_index_type_types".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument".}
proc fcQMetaObject_newInstanceVal0Val1(self: pointer, val0: pointer, val1: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1".}
proc fcQMetaObject_newInstanceVal0Val1Val2(self: pointer, val0: pointer, val1: pointer, val2: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3Val4(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3_val4".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3_val4_val5".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6Val7(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6Val7Val8(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7_val8".}
proc fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): pointer {.importc: "QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9".}
proc fcQMetaObject_new(): ptr cQMetaObject {.importc: "QMetaObject_new".}
proc fcQMetaObject_new2(fromVal: pointer): ptr cQMetaObject {.importc: "QMetaObject_new_from".}
proc fcQMetaObjectConnection_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMetaObject__Connection_operatorAssign".}
proc fcQMetaObjectConnection_swap(self: pointer, other: pointer): void {.importc: "QMetaObject__Connection_swap".}
proc fcQMetaObjectConnection_new(): ptr cQMetaObjectConnection {.importc: "QMetaObject__Connection_new".}
proc fcQMetaObjectConnection_new2(fromVal: pointer): ptr cQMetaObjectConnection {.importc: "QMetaObject__Connection_new_from".}
proc fcQMetaObjectSuperData_direct(self: pointer): pointer {.importc: "QMetaObject__SuperData_direct".}
proc fcQMetaObjectSuperData_setDirect(self: pointer, direct: pointer): void {.importc: "QMetaObject__SuperData_setDirect".}
proc fcQMetaObjectSuperData_operatorMinusGreater(self: pointer): pointer {.importc: "QMetaObject__SuperData_operatorMinusGreater".}
proc fcQMetaObjectSuperData_ToConstQMetaObjectMultiply(self: pointer): pointer {.importc: "QMetaObject__SuperData_ToConstQMetaObjectMultiply".}
proc fcQMetaObjectSuperData_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMetaObject__SuperData_operatorAssign".}
proc fcQMetaObjectSuperData_new(): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new".}
proc fcQMetaObjectSuperData_new2(mo: pointer): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new_QMetaObject".}
proc fcQMetaObjectSuperData_new3(fromVal: pointer): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new_QMetaObject_SuperData".}
proc fcQMetaObjectData_superdata(self: pointer): pointer {.importc: "QMetaObject__Data_superdata".}
proc fcQMetaObjectData_setSuperdata(self: pointer, superdata: pointer): void {.importc: "QMetaObject__Data_setSuperdata".}
proc fcQMetaObjectData_stringdata(self: pointer): ptr cuint {.importc: "QMetaObject__Data_stringdata".}
proc fcQMetaObjectData_setStringdata(self: pointer, stringdata: ptr cuint): void {.importc: "QMetaObject__Data_setStringdata".}
proc fcQMetaObjectData_data(self: pointer): ptr cuint {.importc: "QMetaObject__Data_data".}
proc fcQMetaObjectData_setData(self: pointer, data: ptr cuint): void {.importc: "QMetaObject__Data_setData".}
proc fcQMetaObjectData_relatedMetaObjects(self: pointer): pointer {.importc: "QMetaObject__Data_relatedMetaObjects".}
proc fcQMetaObjectData_setRelatedMetaObjects(self: pointer, relatedMetaObjects: pointer): void {.importc: "QMetaObject__Data_setRelatedMetaObjects".}
proc fcQMetaObjectData_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMetaObject__Data_operatorAssign".}
proc fcQMetaObjectData_new(): ptr cQMetaObjectData {.importc: "QMetaObject__Data_new".}
proc fcQMetaObjectData_new2(fromVal: pointer): ptr cQMetaObjectData {.importc: "QMetaObject__Data_new_from".}

proc data*(self: gen_qobjectdefs_types.QGenericArgument): pointer =
  fcQGenericArgument_data(self.h)

proc name*(self: gen_qobjectdefs_types.QGenericArgument): cstring =
  (fcQGenericArgument_name(self.h))

proc create*(T: type gen_qobjectdefs_types.QGenericArgument): gen_qobjectdefs_types.QGenericArgument =
  let tmp = gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new(), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericArgument,
    fromVal: gen_qobjectdefs_types.QGenericArgument): gen_qobjectdefs_types.QGenericArgument =
  let tmp = gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericArgument,
    aName: cstring): gen_qobjectdefs_types.QGenericArgument =
  let tmp = gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new3(aName), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericArgument,
    aName: cstring, aData: pointer): gen_qobjectdefs_types.QGenericArgument =
  let tmp = gen_qobjectdefs_types.QGenericArgument(h: fcQGenericArgument_new4(aName, aData), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument): gen_qobjectdefs_types.QGenericReturnArgument =
  let tmp = gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new(), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument,
    fromVal: gen_qobjectdefs_types.QGenericReturnArgument): gen_qobjectdefs_types.QGenericReturnArgument =
  let tmp = gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument,
    aName: cstring): gen_qobjectdefs_types.QGenericReturnArgument =
  let tmp = gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new3(aName), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QGenericReturnArgument,
    aName: cstring, aData: pointer): gen_qobjectdefs_types.QGenericReturnArgument =
  let tmp = gen_qobjectdefs_types.QGenericReturnArgument(h: fcQGenericReturnArgument_new4(aName, aData), owned: true)
  tmp
proc metaType*(self: gen_qobjectdefs_types.QMetaMethodArgument): pointer =
  fcQMetaMethodArgument_metaType(self.h)

proc setMetaType*(self: gen_qobjectdefs_types.QMetaMethodArgument, metaType: pointer): void =
  fcQMetaMethodArgument_setMetaType(self.h, metaType)

proc name*(self: gen_qobjectdefs_types.QMetaMethodArgument): cstring =
  (fcQMetaMethodArgument_name(self.h))

proc setName*(self: gen_qobjectdefs_types.QMetaMethodArgument, name: cstring): void =
  fcQMetaMethodArgument_setName(self.h, name)

proc metaType*(self: gen_qobjectdefs_types.QMetaMethodReturnArgument): pointer =
  fcQMetaMethodReturnArgument_metaType(self.h)

proc setMetaType*(self: gen_qobjectdefs_types.QMetaMethodReturnArgument, metaType: pointer): void =
  fcQMetaMethodReturnArgument_setMetaType(self.h, metaType)

proc name*(self: gen_qobjectdefs_types.QMetaMethodReturnArgument): cstring =
  (fcQMetaMethodReturnArgument_name(self.h))

proc setName*(self: gen_qobjectdefs_types.QMetaMethodReturnArgument, name: cstring): void =
  fcQMetaMethodReturnArgument_setName(self.h, name)

proc className*(self: gen_qobjectdefs_types.QMetaObject): cstring =
  (fcQMetaObject_className(self.h))

proc superClass*(self: gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObject_superClass(self.h), owned: false)

proc inherits*(self: gen_qobjectdefs_types.QMetaObject, metaObject: gen_qobjectdefs_types.QMetaObject): bool =
  fcQMetaObject_inherits(self.h, metaObject.h)

proc castX*(self: gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_castConstPQObject(self.h, obj.h), owned: false)

proc castX2*(self: gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_castConstPcQObject(self.h, obj.h), owned: false)

proc tr*(self: gen_qobjectdefs_types.QMetaObject, s: cstring, c: cstring): string =
  let v_ms = fcQMetaObject_trSC(self.h, s, c)
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
  fcQMetaObject_checkConnectArgsCharChar(signal, methodVal)

proc checkConnectArgs*(_: type gen_qobjectdefs_types.QMetaObject, signal: gen_qmetaobject_types.QMetaMethod, methodVal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaObject_checkConnectArgs_QMetaMethod_QMetaMethod(signal.h, methodVal.h)

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
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObject_connectSenderSignalIndexReceiverMethodIndex(sender.h, signal_index, receiver.h, method_index), owned: true)

proc disconnect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint): bool =
  fcQMetaObject_disconnect(sender.h, signal_index, receiver.h, method_index)

proc disconnectOne*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint): bool =
  fcQMetaObject_disconnectOne(sender.h, signal_index, receiver.h, method_index)

proc connectSlotsByName*(_: type gen_qobjectdefs_types.QMetaObject, o: gen_qobject_types.QObject): void =
  fcQMetaObject_connectSlotsByName(o.h)

proc activate*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, argv: pointer): void =
  fcQMetaObject_activate_QObjectIntVoid(sender.h, signal_index, argv)

proc activate*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, param2: gen_qobjectdefs_types.QMetaObject, local_signal_index: cint, argv: pointer): void =
  fcQMetaObject_activate_QObject_QMetaObjectIntVoid(sender.h, param2.h, local_signal_index, argv)

proc activate*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_offset: cint, local_signal_index: cint, argv: pointer): void =
  fcQMetaObject_activate_QObjectIntIntVoid(sender.h, signal_offset, local_signal_index, argv)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument(obj.h, member, cint(param3), retVal.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument(obj.h, member, retVal.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument(obj.h, member, cint(typeVal), val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument(obj.h, member, val0.h)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0(self.h, val0.h), owned: false)

proc staticMetacall*(self: gen_qobjectdefs_types.QMetaObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQMetaObject_staticMetacall(self.h, cint(param1), param2, param3)

proc metacall*(_: type gen_qobjectdefs_types.QMetaObject, param1: gen_qobject_types.QObject, param2: cint, param3: cint, param4: pointer): cint =
  fcQMetaObject_metacall(param1.h, cint(param2), param3, param4)

proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObject, fromVal: gen_qobjectdefs_types.QMetaObject): void =
  fcQMetaObject_operatorAssign(self.h, fromVal.h)

proc tr*(self: gen_qobjectdefs_types.QMetaObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMetaObject_trSCN(self.h, s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint, typeVal: cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObject_connectSenderSignalIndexReceiverMethodIndexType(sender.h, signal_index, receiver.h, method_index, typeVal), owned: true)

proc connect*(_: type gen_qobjectdefs_types.QMetaObject, sender: gen_qobject_types.QObject, signal_index: cint, receiver: gen_qobject_types.QObject, method_index: cint, typeVal: cint, types: ptr cint): gen_qobjectdefs_types.QMetaObjectConnection =
  gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObject_connectSenderSignalIndexReceiverMethodIndexTypeTypes(sender.h, signal_index, receiver.h, method_index, typeVal, types), owned: true)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, param3: cint, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument(obj.h, member, retVal.h, val0.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, retVal: gen_qobjectdefs_types.QGenericReturnArgument, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, typeVal: cint, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod*(_: type gen_qobjectdefs_types.QMetaObject, obj: gen_qobject_types.QObject, member: cstring, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): bool =
  fcQMetaObject_invokeMethod_QObjectChar_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1(self.h, val0.h, val1.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2(self.h, val0.h, val1.h, val2.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3(self.h, val0.h, val1.h, val2.h, val3.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3Val4(self.h, val0.h, val1.h, val2.h, val3.h, val4.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6Val7(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6Val7Val8(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h), owned: false)

proc newInstance*(self: gen_qobjectdefs_types.QMetaObject, val0: gen_qobjectdefs_types.QGenericArgument, val1: gen_qobjectdefs_types.QGenericArgument, val2: gen_qobjectdefs_types.QGenericArgument, val3: gen_qobjectdefs_types.QGenericArgument, val4: gen_qobjectdefs_types.QGenericArgument, val5: gen_qobjectdefs_types.QGenericArgument, val6: gen_qobjectdefs_types.QGenericArgument, val7: gen_qobjectdefs_types.QGenericArgument, val8: gen_qobjectdefs_types.QGenericArgument, val9: gen_qobjectdefs_types.QGenericArgument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaObject_newInstanceVal0Val1Val2Val3Val4Val5Val6Val7Val8Val9(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h), owned: false)

proc create*(T: type gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObject =
  let tmp = gen_qobjectdefs_types.QMetaObject(h: fcQMetaObject_new(), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QMetaObject,
    fromVal: gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObject =
  let tmp = gen_qobjectdefs_types.QMetaObject(h: fcQMetaObject_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObjectConnection, fromVal: gen_qobjectdefs_types.QMetaObjectConnection): void =
  fcQMetaObjectConnection_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qobjectdefs_types.QMetaObjectConnection, other: gen_qobjectdefs_types.QMetaObjectConnection): void =
  fcQMetaObjectConnection_swap(self.h, other.h)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectConnection): gen_qobjectdefs_types.QMetaObjectConnection =
  let tmp = gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObjectConnection_new(), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QMetaObjectConnection,
    fromVal: gen_qobjectdefs_types.QMetaObjectConnection): gen_qobjectdefs_types.QMetaObjectConnection =
  let tmp = gen_qobjectdefs_types.QMetaObjectConnection(h: fcQMetaObjectConnection_new2(fromVal.h), owned: true)
  tmp
proc direct*(self: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObjectSuperData_direct(self.h), owned: false)

proc setDirect*(self: gen_qobjectdefs_types.QMetaObjectSuperData, direct: gen_qobjectdefs_types.QMetaObject): void =
  fcQMetaObjectSuperData_setDirect(self.h, direct.h)

proc operatorMinusGreater*(self: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObjectSuperData_operatorMinusGreater(self.h), owned: false)

proc ToConstQMetaObjectMultiply*(self: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaObjectSuperData_ToConstQMetaObjectMultiply(self.h), owned: false)

proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObjectSuperData, fromVal: gen_qobjectdefs_types.QMetaObjectSuperData): void =
  fcQMetaObjectSuperData_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObjectSuperData =
  let tmp = gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectSuperData_new(), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QMetaObjectSuperData,
    mo: gen_qobjectdefs_types.QMetaObject): gen_qobjectdefs_types.QMetaObjectSuperData =
  let tmp = gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectSuperData_new2(mo.h), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QMetaObjectSuperData,
    fromVal: gen_qobjectdefs_types.QMetaObjectSuperData): gen_qobjectdefs_types.QMetaObjectSuperData =
  let tmp = gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectSuperData_new3(fromVal.h), owned: true)
  tmp
proc superdata*(self: gen_qobjectdefs_types.QMetaObjectData): gen_qobjectdefs_types.QMetaObjectSuperData =
  gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectData_superdata(self.h), owned: true)

proc setSuperdata*(self: gen_qobjectdefs_types.QMetaObjectData, superdata: gen_qobjectdefs_types.QMetaObjectSuperData): void =
  fcQMetaObjectData_setSuperdata(self.h, superdata.h)

proc stringdata*(self: gen_qobjectdefs_types.QMetaObjectData): ptr cuint =
  fcQMetaObjectData_stringdata(self.h)

proc setStringdata*(self: gen_qobjectdefs_types.QMetaObjectData, stringdata: ptr cuint): void =
  fcQMetaObjectData_setStringdata(self.h, stringdata)

proc data*(self: gen_qobjectdefs_types.QMetaObjectData): ptr cuint =
  fcQMetaObjectData_data(self.h)

proc setData*(self: gen_qobjectdefs_types.QMetaObjectData, data: ptr cuint): void =
  fcQMetaObjectData_setData(self.h, data)

proc relatedMetaObjects*(self: gen_qobjectdefs_types.QMetaObjectData): gen_qobjectdefs_types.QMetaObjectSuperData =
  gen_qobjectdefs_types.QMetaObjectSuperData(h: fcQMetaObjectData_relatedMetaObjects(self.h), owned: false)

proc setRelatedMetaObjects*(self: gen_qobjectdefs_types.QMetaObjectData, relatedMetaObjects: gen_qobjectdefs_types.QMetaObjectSuperData): void =
  fcQMetaObjectData_setRelatedMetaObjects(self.h, relatedMetaObjects.h)

proc operatorAssign*(self: gen_qobjectdefs_types.QMetaObjectData, fromVal: gen_qobjectdefs_types.QMetaObjectData): void =
  fcQMetaObjectData_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qobjectdefs_types.QMetaObjectData): gen_qobjectdefs_types.QMetaObjectData =
  let tmp = gen_qobjectdefs_types.QMetaObjectData(h: fcQMetaObjectData_new(), owned: true)
  tmp
proc create*(T: type gen_qobjectdefs_types.QMetaObjectData,
    fromVal: gen_qobjectdefs_types.QMetaObjectData): gen_qobjectdefs_types.QMetaObjectData =
  let tmp = gen_qobjectdefs_types.QMetaObjectData(h: fcQMetaObjectData_new2(fromVal.h), owned: true)
  tmp
