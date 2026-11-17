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


{.compile("gen_qremoteobjectdynamicreplica.cpp", QtRemoteObjectsCFlags).}


import ./gen_qremoteobjectdynamicreplica_types
export gen_qremoteobjectdynamicreplica_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qremoteobjectnode_types,
  ./gen_qremoteobjectpendingcall_types,
  ./gen_qremoteobjectreplica
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qremoteobjectnode_types,
  gen_qremoteobjectpendingcall_types,
  gen_qremoteobjectreplica

type cQRemoteObjectDynamicReplica*{.exportc: "QRemoteObjectDynamicReplica", incompleteStruct.} = object

proc fcQRemoteObjectDynamicReplica_metaObject(self: pointer): pointer {.importc: "QRemoteObjectDynamicReplica_metaObject".}
proc fcQRemoteObjectDynamicReplica_metacast(self: pointer, name: cstring): pointer {.importc: "QRemoteObjectDynamicReplica_metacast".}
proc fcQRemoteObjectDynamicReplica_metacall(self: pointer, call: cint, id: cint, argv: pointer): cint {.importc: "QRemoteObjectDynamicReplica_metacall".}
proc fcQRemoteObjectDynamicReplica_protectedbase_send(self: pointer, call: cint, index: cint, args: struct_seaqt_array): void {.importc: "QRemoteObjectDynamicReplica_protectedbase_send".}
proc fcQRemoteObjectDynamicReplica_protectedbase_sendWithReply(self: pointer, call: cint, index: cint, args: struct_seaqt_array): pointer {.importc: "QRemoteObjectDynamicReplica_protectedbase_sendWithReply".}
proc fcQRemoteObjectDynamicReplica_protectedbase_setChild(self: pointer, i: cint, param2: pointer): void {.importc: "QRemoteObjectDynamicReplica_protectedbase_setChild".}
proc fcQRemoteObjectDynamicReplica_protectedbase_propAsVariant(self: pointer, i: cint): pointer {.importc: "QRemoteObjectDynamicReplica_protectedbase_propAsVariant".}
proc fcQRemoteObjectDynamicReplica_protectedbase_persistProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, props: struct_seaqt_array): void {.importc: "QRemoteObjectDynamicReplica_protectedbase_persistProperties".}
proc fcQRemoteObjectDynamicReplica_protectedbase_retrieveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.importc: "QRemoteObjectDynamicReplica_protectedbase_retrieveProperties".}
proc fcQRemoteObjectDynamicReplica_protectedbase_initializeNode_node(self: pointer, node: pointer): void {.importc: "QRemoteObjectDynamicReplica_protectedbase_initializeNode_node".}
proc fcQRemoteObjectDynamicReplica_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectDynamicReplica_protectedbase_sender".}
proc fcQRemoteObjectDynamicReplica_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectDynamicReplica_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectDynamicReplica_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectDynamicReplica_protectedbase_receivers".}
proc fcQRemoteObjectDynamicReplica_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectDynamicReplica_protectedbase_isSignalConnected".}

proc metaObject*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectDynamicReplica_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, name: cstring): pointer =
  fcQRemoteObjectDynamicReplica_metacast(self.h, name)

proc metacall*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, call: cint, id: cint, argv: pointer): cint =
  fcQRemoteObjectDynamicReplica_metacall(self.h, cint(call), id, argv)

proc send*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, call: cint, index: cint, args: openArray[gen_qvariant_types.QVariant]): void =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  fcQRemoteObjectDynamicReplica_protectedbase_send(self.h, cint(call), index, struct_seaqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0])))

proc sendWithReply*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, call: cint, index: cint, args: openArray[gen_qvariant_types.QVariant]): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall =
  var args_CArray = newSeq[pointer](len(args))
  for i in 0..<len(args):
    args_CArray[i] = args[i].h

  gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall(h: fcQRemoteObjectDynamicReplica_protectedbase_sendWithReply(self.h, cint(call), index, struct_seaqt_array(len: csize_t(len(args)), data: if len(args) == 0: nil else: addr(args_CArray[0]))), owned: true)

proc setChild*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, i: cint, param2: gen_qvariant_types.QVariant): void =
  fcQRemoteObjectDynamicReplica_protectedbase_setChild(self.h, i, param2.h)

proc propAsVariant*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRemoteObjectDynamicReplica_protectedbase_propAsVariant(self.h, i), owned: true)

proc persistProperties*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, repName: openArray[char], repSig: openArray[byte], props: openArray[gen_qvariant_types.QVariant]): void =
  var props_CArray = newSeq[pointer](len(props))
  for i in 0..<len(props):
    props_CArray[i] = props[i].h

  fcQRemoteObjectDynamicReplica_protectedbase_persistProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))), struct_seaqt_array(len: csize_t(len(props)), data: if len(props) == 0: nil else: addr(props_CArray[0])))

proc retrieveProperties*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQRemoteObjectDynamicReplica_protectedbase_retrieveProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))))
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc initializeNode*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, node: gen_qremoteobjectnode_types.QRemoteObjectNode): void =
  fcQRemoteObjectDynamicReplica_protectedbase_initializeNode_node(self.h, node.h)

proc sender*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectDynamicReplica_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica): cint =
  fcQRemoteObjectDynamicReplica_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, signal: cstring): cint =
  fcQRemoteObjectDynamicReplica_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectDynamicReplica_protectedbase_isSignalConnected(self.h, signal.h)

