import ./qtremoteobjects_pkg

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


{.compile("gen_qremoteobjectregistry.cpp", QtRemoteObjectsCFlags).}


import ./gen_qremoteobjectregistry_types
export gen_qremoteobjectregistry_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qremoteobjectnode_types,
  ./gen_qremoteobjectpendingcall_types,
  ./gen_qremoteobjectreplica,
  ./gen_qtremoteobjectglobal_types,
  std/tables
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qremoteobjectnode_types,
  gen_qremoteobjectpendingcall_types,
  gen_qremoteobjectreplica,
  gen_qtremoteobjectglobal_types

type cQRemoteObjectRegistry*{.exportc: "QRemoteObjectRegistry", incompleteStruct.} = object

proc fcQRemoteObjectRegistry_metaObject(self: pointer): pointer {.importc: "QRemoteObjectRegistry_metaObject".}
proc fcQRemoteObjectRegistry_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectRegistry_metacast".}
proc fcQRemoteObjectRegistry_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectRegistry_metacall".}
proc fcQRemoteObjectRegistry_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectRegistry_tr_s".}
proc fcQRemoteObjectRegistry_registerMetatypes(): void {.importc: "QRemoteObjectRegistry_registerMetatypes".}
proc fcQRemoteObjectRegistry_sourceLocations(self: pointer): struct_seaqt_map {.importc: "QRemoteObjectRegistry_sourceLocations".}
proc fcQRemoteObjectRegistry_remoteObjectAdded(self: pointer, entry: struct_seaqt_map): void {.importc: "QRemoteObjectRegistry_remoteObjectAdded".}
proc fcQRemoteObjectRegistry_connect_remoteObjectAdded(self: pointer, slot: int, callback: proc (slot: int, entry: struct_seaqt_map) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectRegistry_connect_remoteObjectAdded".}
proc fcQRemoteObjectRegistry_remoteObjectRemoved(self: pointer, entry: struct_seaqt_map): void {.importc: "QRemoteObjectRegistry_remoteObjectRemoved".}
proc fcQRemoteObjectRegistry_connect_remoteObjectRemoved(self: pointer, slot: int, callback: proc (slot: int, entry: struct_seaqt_map) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectRegistry_connect_remoteObjectRemoved".}
proc fcQRemoteObjectRegistry_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectRegistry_tr_s_c".}
proc fcQRemoteObjectRegistry_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectRegistry_tr_s_c_n".}
proc fcQRemoteObjectRegistry_protectedbase_addSource(self: pointer, entry: struct_seaqt_map): void {.importc: "QRemoteObjectRegistry_protectedbase_addSource".}
proc fcQRemoteObjectRegistry_protectedbase_removeSource(self: pointer, entry: struct_seaqt_map): void {.importc: "QRemoteObjectRegistry_protectedbase_removeSource".}
proc fcQRemoteObjectRegistry_protectedbase_pushToRegistryIfNeeded(self: pointer): void {.importc: "QRemoteObjectRegistry_protectedbase_pushToRegistryIfNeeded".}
proc fcQRemoteObjectRegistry_protectedbase_send(self: pointer, call: cint, index: cint, args: struct_seaqt_array): void {.importc: "QRemoteObjectRegistry_protectedbase_send".}
proc fcQRemoteObjectRegistry_protectedbase_sendWithReply(self: pointer, call: cint, index: cint, args: struct_seaqt_array): pointer {.importc: "QRemoteObjectRegistry_protectedbase_sendWithReply".}
proc fcQRemoteObjectRegistry_protectedbase_setChild(self: pointer, i: cint, param2: pointer): void {.importc: "QRemoteObjectRegistry_protectedbase_setChild".}
proc fcQRemoteObjectRegistry_protectedbase_propAsVariant(self: pointer, i: cint): pointer {.importc: "QRemoteObjectRegistry_protectedbase_propAsVariant".}
proc fcQRemoteObjectRegistry_protectedbase_persistProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, props: struct_seaqt_array): void {.importc: "QRemoteObjectRegistry_protectedbase_persistProperties".}
proc fcQRemoteObjectRegistry_protectedbase_retrieveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.importc: "QRemoteObjectRegistry_protectedbase_retrieveProperties".}
proc fcQRemoteObjectRegistry_protectedbase_initializeNode_node(self: pointer, node: pointer): void {.importc: "QRemoteObjectRegistry_protectedbase_initializeNode_node".}
proc fcQRemoteObjectRegistry_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectRegistry_protectedbase_sender".}
proc fcQRemoteObjectRegistry_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectRegistry_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectRegistry_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectRegistry_protectedbase_receivers".}
proc fcQRemoteObjectRegistry_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectRegistry_protectedbase_isSignalConnected".}
proc fcQRemoteObjectRegistry_staticMetaObject(): pointer {.importc: "QRemoteObjectRegistry_staticMetaObject".}

proc metaObject*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectRegistry_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, param1: cstring): pointer =
  fcQRemoteObjectRegistry_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectRegistry_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectregistry_types.QRemoteObjectRegistry, s: cstring): string =
  let v_ms = fcQRemoteObjectRegistry_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc registerMetatypes*(_: type gen_qremoteobjectregistry_types.QRemoteObjectRegistry): void =
  fcQRemoteObjectRegistry_registerMetatypes()

proc sourceLocations*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry): Table[string,gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo] =
  var v_mm = fcQRemoteObjectRegistry_sourceLocations(self.h)
  var vx_ret: Table[string, gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]
  var v_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(vx_hashkey_ms)
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc remoteObjectAdded*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, entry: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]): void =
  var entry_CArray_First: struct_seaqt_string
  var entry_CArray_Second: pointer
  entry_CArray_First = struct_seaqt_string(data: if len(entry.first) > 0: addr entry.first[0] else: nil, len: csize_t(len(entry.first)))
  entry_CArray_Second = entry.second.h
  fcQRemoteObjectRegistry_remoteObjectAdded(self.h, struct_seaqt_map(len: 1,keys: addr(entry_CArray_First),values: addr(entry_CArray_Second),))

type QRemoteObjectRegistryremoteObjectAddedSlot* = proc(entry: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo])
proc fcQRemoteObjectRegistry_slot_callback_remoteObjectAdded(slot: int, entry: struct_seaqt_map) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectRegistryremoteObjectAddedSlot](cast[pointer](slot))
  var ventry_mm = entry
  var ventry_First_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](ventry_mm.keys)
  var ventry_Second_CArray = cast[ptr UncheckedArray[pointer]](ventry_mm.values)
  let ventry_first_ms = ventry_First_CArray[0]
  let ventry_firstx_ret = string.fromBytes(ventry_first_ms)
  c_free(ventry_first_ms.data)
  var ventry_entry_First = ventry_firstx_ret

  var ventry_entry_Second = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: ventry_Second_CArray[0], owned: true)

  c_free(ventry_mm.keys)
  c_free(ventry_mm.values)
  let slotval1 = (first: ventry_entry_First , second: ventry_entry_Second )

  nimfunc[](slotval1)

proc fcQRemoteObjectRegistry_slot_callback_remoteObjectAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectRegistryremoteObjectAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRemoteObjectAdded*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, slot: QRemoteObjectRegistryremoteObjectAddedSlot) =
  var tmp = new QRemoteObjectRegistryremoteObjectAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectRegistry_connect_remoteObjectAdded(self.h, cast[int](addr tmp[]), fcQRemoteObjectRegistry_slot_callback_remoteObjectAdded, fcQRemoteObjectRegistry_slot_callback_remoteObjectAdded_release)

proc remoteObjectRemoved*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, entry: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]): void =
  var entry_CArray_First: struct_seaqt_string
  var entry_CArray_Second: pointer
  entry_CArray_First = struct_seaqt_string(data: if len(entry.first) > 0: addr entry.first[0] else: nil, len: csize_t(len(entry.first)))
  entry_CArray_Second = entry.second.h
  fcQRemoteObjectRegistry_remoteObjectRemoved(self.h, struct_seaqt_map(len: 1,keys: addr(entry_CArray_First),values: addr(entry_CArray_Second),))

type QRemoteObjectRegistryremoteObjectRemovedSlot* = proc(entry: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo])
proc fcQRemoteObjectRegistry_slot_callback_remoteObjectRemoved(slot: int, entry: struct_seaqt_map) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectRegistryremoteObjectRemovedSlot](cast[pointer](slot))
  var ventry_mm = entry
  var ventry_First_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](ventry_mm.keys)
  var ventry_Second_CArray = cast[ptr UncheckedArray[pointer]](ventry_mm.values)
  let ventry_first_ms = ventry_First_CArray[0]
  let ventry_firstx_ret = string.fromBytes(ventry_first_ms)
  c_free(ventry_first_ms.data)
  var ventry_entry_First = ventry_firstx_ret

  var ventry_entry_Second = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: ventry_Second_CArray[0], owned: true)

  c_free(ventry_mm.keys)
  c_free(ventry_mm.values)
  let slotval1 = (first: ventry_entry_First , second: ventry_entry_Second )

  nimfunc[](slotval1)

proc fcQRemoteObjectRegistry_slot_callback_remoteObjectRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectRegistryremoteObjectRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRemoteObjectRemoved*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, slot: QRemoteObjectRegistryremoteObjectRemovedSlot) =
  var tmp = new QRemoteObjectRegistryremoteObjectRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectRegistry_connect_remoteObjectRemoved(self.h, cast[int](addr tmp[]), fcQRemoteObjectRegistry_slot_callback_remoteObjectRemoved, fcQRemoteObjectRegistry_slot_callback_remoteObjectRemoved_release)

proc tr*(_: type gen_qremoteobjectregistry_types.QRemoteObjectRegistry, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectRegistry_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectregistry_types.QRemoteObjectRegistry, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectRegistry_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addSource*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, entry: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]): void =
  var entry_CArray_First: struct_seaqt_string
  var entry_CArray_Second: pointer
  entry_CArray_First = struct_seaqt_string(data: if len(entry.first) > 0: addr entry.first[0] else: nil, len: csize_t(len(entry.first)))
  entry_CArray_Second = entry.second.h
  fcQRemoteObjectRegistry_protectedbase_addSource(self.h, struct_seaqt_map(len: 1,keys: addr(entry_CArray_First),values: addr(entry_CArray_Second),))

proc removeSource*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, entry: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]): void =
  var entry_CArray_First: struct_seaqt_string
  var entry_CArray_Second: pointer
  entry_CArray_First = struct_seaqt_string(data: if len(entry.first) > 0: addr entry.first[0] else: nil, len: csize_t(len(entry.first)))
  entry_CArray_Second = entry.second.h
  fcQRemoteObjectRegistry_protectedbase_removeSource(self.h, struct_seaqt_map(len: 1,keys: addr(entry_CArray_First),values: addr(entry_CArray_Second),))

proc pushToRegistryIfNeeded*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry): void =
  fcQRemoteObjectRegistry_protectedbase_pushToRegistryIfNeeded(self.h)

proc send*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, call: cint, index: cint, args: openArray[gen_qvariant_types.QVariant]): void =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  fcQRemoteObjectRegistry_protectedbase_send(self.h, cint(call), index, struct_seaqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0])))

proc sendWithReply*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, call: cint, index: cint, args: openArray[gen_qvariant_types.QVariant]): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall(h: fcQRemoteObjectRegistry_protectedbase_sendWithReply(self.h, cint(call), index, struct_seaqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))), owned: true)

proc setChild*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, i: cint, param2: gen_qvariant_types.QVariant): void =
  fcQRemoteObjectRegistry_protectedbase_setChild(self.h, i, param2.h)

proc propAsVariant*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRemoteObjectRegistry_protectedbase_propAsVariant(self.h, i), owned: true)

proc persistProperties*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, repName: openArray[char], repSig: openArray[byte], props: openArray[gen_qvariant_types.QVariant]): void =
  var props_CArray = newSeq[pointer](len(props))
  for i in 0..<len(props):
    props_CArray[i] = props[i].h

  fcQRemoteObjectRegistry_protectedbase_persistProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))), struct_seaqt_array(len: csize_t(len(props)), data: if len(props) == 0: nil else: addr(props_CArray[0])))

proc retrieveProperties*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQRemoteObjectRegistry_protectedbase_retrieveProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))))
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc initializeNode*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, node: gen_qremoteobjectnode_types.QRemoteObjectNode): void =
  fcQRemoteObjectRegistry_protectedbase_initializeNode_node(self.h, node.h)

proc sender*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectRegistry_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry): cint =
  fcQRemoteObjectRegistry_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, signal: cstring): cint =
  fcQRemoteObjectRegistry_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectregistry_types.QRemoteObjectRegistry, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectRegistry_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qremoteobjectregistry_types.QRemoteObjectRegistry): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectRegistry_staticMetaObject())
