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


{.compile("gen_qremoteobjectreplica.cpp", QtRemoteObjectsCFlags).}


type QRemoteObjectReplicaStateEnum* = distinct cint
template Uninitialized*(_: type QRemoteObjectReplicaStateEnum): untyped = 0
template Default*(_: type QRemoteObjectReplicaStateEnum): untyped = 1
template Valid*(_: type QRemoteObjectReplicaStateEnum): untyped = 2
template Suspect*(_: type QRemoteObjectReplicaStateEnum): untyped = 3
template SignatureMismatch*(_: type QRemoteObjectReplicaStateEnum): untyped = 4


type QRemoteObjectReplicaConstructorTypeEnum* = distinct cint
template DefaultConstructor*(_: type QRemoteObjectReplicaConstructorTypeEnum): untyped = 0
template ConstructWithNode*(_: type QRemoteObjectReplicaConstructorTypeEnum): untyped = 1


import ./gen_qremoteobjectreplica_types
export gen_qremoteobjectreplica_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qremoteobjectnode_types,
  ./gen_qremoteobjectpendingcall_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qremoteobjectnode_types,
  gen_qremoteobjectpendingcall_types

type cQRemoteObjectReplica*{.exportc: "QRemoteObjectReplica", incompleteStruct.} = object

proc fcQRemoteObjectReplica_metaObject(self: pointer): pointer {.importc: "QRemoteObjectReplica_metaObject".}
proc fcQRemoteObjectReplica_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectReplica_metacast".}
proc fcQRemoteObjectReplica_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectReplica_metacall".}
proc fcQRemoteObjectReplica_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectReplica_tr_s".}
proc fcQRemoteObjectReplica_isReplicaValid(self: pointer): bool {.importc: "QRemoteObjectReplica_isReplicaValid".}
proc fcQRemoteObjectReplica_waitForSource(self: pointer): bool {.importc: "QRemoteObjectReplica_waitForSource".}
proc fcQRemoteObjectReplica_isInitialized(self: pointer): bool {.importc: "QRemoteObjectReplica_isInitialized".}
proc fcQRemoteObjectReplica_state(self: pointer): cint {.importc: "QRemoteObjectReplica_state".}
proc fcQRemoteObjectReplica_node(self: pointer): pointer {.importc: "QRemoteObjectReplica_node".}
proc fcQRemoteObjectReplica_setNode(self: pointer, node: pointer): void {.importc: "QRemoteObjectReplica_setNode".}
proc fcQRemoteObjectReplica_initialized(self: pointer): void {.importc: "QRemoteObjectReplica_initialized".}
proc fcQRemoteObjectReplica_connect_initialized(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectReplica_connect_initialized".}
proc fcQRemoteObjectReplica_notified(self: pointer): void {.importc: "QRemoteObjectReplica_notified".}
proc fcQRemoteObjectReplica_connect_notified(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectReplica_connect_notified".}
proc fcQRemoteObjectReplica_stateChanged(self: pointer, state: cint, oldState: cint): void {.importc: "QRemoteObjectReplica_stateChanged".}
proc fcQRemoteObjectReplica_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint, oldState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectReplica_connect_stateChanged".}
proc fcQRemoteObjectReplica_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectReplica_tr_s_c".}
proc fcQRemoteObjectReplica_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectReplica_tr_s_c_n".}
proc fcQRemoteObjectReplica_waitForSourceTimeout(self: pointer, timeout: cint): bool {.importc: "QRemoteObjectReplica_waitForSource_timeout".}
proc fcQRemoteObjectReplica_protectedbase_send(self: pointer, call: cint, index: cint, args: struct_seaqt_array): void {.importc: "QRemoteObjectReplica_protectedbase_send".}
proc fcQRemoteObjectReplica_protectedbase_sendWithReply(self: pointer, call: cint, index: cint, args: struct_seaqt_array): pointer {.importc: "QRemoteObjectReplica_protectedbase_sendWithReply".}
proc fcQRemoteObjectReplica_protectedbase_setChild(self: pointer, i: cint, param2: pointer): void {.importc: "QRemoteObjectReplica_protectedbase_setChild".}
proc fcQRemoteObjectReplica_protectedbase_propAsVariant(self: pointer, i: cint): pointer {.importc: "QRemoteObjectReplica_protectedbase_propAsVariant".}
proc fcQRemoteObjectReplica_protectedbase_persistProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, props: struct_seaqt_array): void {.importc: "QRemoteObjectReplica_protectedbase_persistProperties".}
proc fcQRemoteObjectReplica_protectedbase_retrieveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.importc: "QRemoteObjectReplica_protectedbase_retrieveProperties".}
proc fcQRemoteObjectReplica_protectedbase_initializeNode_node(self: pointer, node: pointer): void {.importc: "QRemoteObjectReplica_protectedbase_initializeNode_node".}
proc fcQRemoteObjectReplica_protectedbase_initializeNode_node_name(self: pointer, node: pointer, name: struct_seaqt_string): void {.importc: "QRemoteObjectReplica_protectedbase_initializeNode_node_name".}
proc fcQRemoteObjectReplica_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectReplica_protectedbase_sender".}
proc fcQRemoteObjectReplica_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectReplica_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectReplica_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectReplica_protectedbase_receivers".}
proc fcQRemoteObjectReplica_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectReplica_protectedbase_isSignalConnected".}
proc fcQRemoteObjectReplica_staticMetaObject(): pointer {.importc: "QRemoteObjectReplica_staticMetaObject".}

proc metaObject*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectReplica_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, param1: cstring): pointer =
  fcQRemoteObjectReplica_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectReplica_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectreplica_types.QRemoteObjectReplica, s: cstring): string =
  let v_ms = fcQRemoteObjectReplica_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isReplicaValid*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): bool =
  fcQRemoteObjectReplica_isReplicaValid(self.h)

proc waitForSource*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): bool =
  fcQRemoteObjectReplica_waitForSource(self.h)

proc isInitialized*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): bool =
  fcQRemoteObjectReplica_isInitialized(self.h)

proc state*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): cint =
  cint(fcQRemoteObjectReplica_state(self.h))

proc node*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): gen_qremoteobjectnode_types.QRemoteObjectNode =
  gen_qremoteobjectnode_types.QRemoteObjectNode(h: fcQRemoteObjectReplica_node(self.h), owned: false)

proc setNode*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, node: gen_qremoteobjectnode_types.QRemoteObjectNode): void =
  fcQRemoteObjectReplica_setNode(self.h, node.h)

proc initialized*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): void =
  fcQRemoteObjectReplica_initialized(self.h)

type QRemoteObjectReplicainitializedSlot* = proc()
proc fcQRemoteObjectReplica_slot_callback_initialized(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectReplicainitializedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQRemoteObjectReplica_slot_callback_initialized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectReplicainitializedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onInitialized*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, slot: QRemoteObjectReplicainitializedSlot) =
  var tmp = new QRemoteObjectReplicainitializedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectReplica_connect_initialized(self.h, cast[int](addr tmp[]), fcQRemoteObjectReplica_slot_callback_initialized, fcQRemoteObjectReplica_slot_callback_initialized_release)

proc notified*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): void =
  fcQRemoteObjectReplica_notified(self.h)

type QRemoteObjectReplicanotifiedSlot* = proc()
proc fcQRemoteObjectReplica_slot_callback_notified(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectReplicanotifiedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQRemoteObjectReplica_slot_callback_notified_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectReplicanotifiedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNotified*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, slot: QRemoteObjectReplicanotifiedSlot) =
  var tmp = new QRemoteObjectReplicanotifiedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectReplica_connect_notified(self.h, cast[int](addr tmp[]), fcQRemoteObjectReplica_slot_callback_notified, fcQRemoteObjectReplica_slot_callback_notified_release)

proc stateChanged*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, state: cint, oldState: cint): void =
  fcQRemoteObjectReplica_stateChanged(self.h, cint(state), cint(oldState))

type QRemoteObjectReplicastateChangedSlot* = proc(state: cint, oldState: cint)
proc fcQRemoteObjectReplica_slot_callback_stateChanged(slot: int, state: cint, oldState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectReplicastateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  let slotval2 = cint(oldState)

  nimfunc[](slotval1, slotval2)

proc fcQRemoteObjectReplica_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectReplicastateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, slot: QRemoteObjectReplicastateChangedSlot) =
  var tmp = new QRemoteObjectReplicastateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectReplica_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQRemoteObjectReplica_slot_callback_stateChanged, fcQRemoteObjectReplica_slot_callback_stateChanged_release)

proc tr*(_: type gen_qremoteobjectreplica_types.QRemoteObjectReplica, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectReplica_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectreplica_types.QRemoteObjectReplica, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectReplica_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc waitForSource*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, timeout: cint): bool =
  fcQRemoteObjectReplica_waitForSourceTimeout(self.h, timeout)

proc send*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, call: cint, index: cint, args: openArray[gen_qvariant_types.QVariant]): void =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  fcQRemoteObjectReplica_protectedbase_send(self.h, cint(call), index, struct_seaqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0])))

proc sendWithReply*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, call: cint, index: cint, args: openArray[gen_qvariant_types.QVariant]): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall(h: fcQRemoteObjectReplica_protectedbase_sendWithReply(self.h, cint(call), index, struct_seaqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))), owned: true)

proc setChild*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, i: cint, param2: gen_qvariant_types.QVariant): void =
  fcQRemoteObjectReplica_protectedbase_setChild(self.h, i, param2.h)

proc propAsVariant*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRemoteObjectReplica_protectedbase_propAsVariant(self.h, i), owned: true)

proc persistProperties*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, repName: openArray[char], repSig: openArray[byte], props: openArray[gen_qvariant_types.QVariant]): void =
  var props_CArray = newSeq[pointer](len(props))
  for i in 0..<len(props):
    props_CArray[i] = props[i].h

  fcQRemoteObjectReplica_protectedbase_persistProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))), struct_seaqt_array(len: csize_t(len(props)), data: if len(props) == 0: nil else: addr(props_CArray[0])))

proc retrieveProperties*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQRemoteObjectReplica_protectedbase_retrieveProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))))
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc initializeNode*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, node: gen_qremoteobjectnode_types.QRemoteObjectNode): void =
  fcQRemoteObjectReplica_protectedbase_initializeNode_node(self.h, node.h)

proc initializeNode*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, node: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char]): void =
  fcQRemoteObjectReplica_protectedbase_initializeNode_node_name(self.h, node.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc sender*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectReplica_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica): cint =
  fcQRemoteObjectReplica_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, signal: cstring): cint =
  fcQRemoteObjectReplica_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectreplica_types.QRemoteObjectReplica, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectReplica_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qremoteobjectreplica_types.QRemoteObjectReplica): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectReplica_staticMetaObject())
