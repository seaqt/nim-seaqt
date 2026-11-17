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


{.compile("gen_qremoteobjectnode.cpp", QtRemoteObjectsCFlags).}


type QRemoteObjectNodeErrorCodeEnum* = distinct cint
template NoError*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 0
template RegistryNotAcquired*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 1
template RegistryAlreadyHosted*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 2
template NodeIsNoServer*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 3
template ServerAlreadyCreated*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 4
template UnintendedRegistryHosting*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 5
template OperationNotValidOnClientNode*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 6
template SourceNotRegistered*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 7
template MissingObjectName*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 8
template HostUrlInvalid*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 9
template ProtocolMismatch*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 10
template ListenFailed*(_: type QRemoteObjectNodeErrorCodeEnum): untyped = 11


type QRemoteObjectHostBaseAllowedSchemasEnum* = distinct cint
template BuiltInSchemasOnly*(_: type QRemoteObjectHostBaseAllowedSchemasEnum): untyped = 0
template AllowExternalRegistration*(_: type QRemoteObjectHostBaseAllowedSchemasEnum): untyped = 1


import ./gen_qremoteobjectnode_types
export gen_qremoteobjectnode_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qitemselectionmodel_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qremoteobjectabstractitemmodelreplica_types,
  ./gen_qremoteobjectdynamicreplica_types,
  ./gen_qremoteobjectregistry_types,
  ./gen_qtremoteobjectglobal_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qremoteobjectabstractitemmodelreplica_types,
  gen_qremoteobjectdynamicreplica_types,
  gen_qremoteobjectregistry_types,
  gen_qtremoteobjectglobal_types

type cQRemoteObjectAbstractPersistedStore*{.exportc: "QRemoteObjectAbstractPersistedStore", incompleteStruct.} = object
type cQRemoteObjectNode*{.exportc: "QRemoteObjectNode", incompleteStruct.} = object
type cQRemoteObjectHostBase*{.exportc: "QRemoteObjectHostBase", incompleteStruct.} = object
type cQRemoteObjectHost*{.exportc: "QRemoteObjectHost", incompleteStruct.} = object
type cQRemoteObjectRegistryHost*{.exportc: "QRemoteObjectRegistryHost", incompleteStruct.} = object

proc fcQRemoteObjectAbstractPersistedStore_metaObject(self: pointer): pointer {.importc: "QRemoteObjectAbstractPersistedStore_metaObject".}
proc fcQRemoteObjectAbstractPersistedStore_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectAbstractPersistedStore_metacast".}
proc fcQRemoteObjectAbstractPersistedStore_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectAbstractPersistedStore_metacall".}
proc fcQRemoteObjectAbstractPersistedStore_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectAbstractPersistedStore_tr_s".}
proc fcQRemoteObjectAbstractPersistedStore_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.importc: "QRemoteObjectAbstractPersistedStore_saveProperties".}
proc fcQRemoteObjectAbstractPersistedStore_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.importc: "QRemoteObjectAbstractPersistedStore_restoreProperties".}
proc fcQRemoteObjectAbstractPersistedStore_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectAbstractPersistedStore_tr_s_c".}
proc fcQRemoteObjectAbstractPersistedStore_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectAbstractPersistedStore_tr_s_c_n".}
proc fcQRemoteObjectAbstractPersistedStore_vdata(self: pointer): ptr pointer {.importc: "QRemoteObjectAbstractPersistedStore_vdata".}
proc fvdata_cQRemoteObjectAbstractPersistedStore(self: pointer): pointer {.importc: "vdata_QRemoteObjectAbstractPersistedStore".}

type cQRemoteObjectAbstractPersistedStoreVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  saveProperties*: proc(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.cdecl, raises: [], gcsafe.}
  restoreProperties*: proc(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_metaObject".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_metacast".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_metacall".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_event".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_eventFilter".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_timerEvent".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_childEvent".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_customEvent".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_connectNotify".}
proc fcQRemoteObjectAbstractPersistedStore_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectAbstractPersistedStore_virtualbase_disconnectNotify".}
proc fcQRemoteObjectAbstractPersistedStore_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectAbstractPersistedStore_protectedbase_sender".}
proc fcQRemoteObjectAbstractPersistedStore_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectAbstractPersistedStore_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectAbstractPersistedStore_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectAbstractPersistedStore_protectedbase_receivers".}
proc fcQRemoteObjectAbstractPersistedStore_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectAbstractPersistedStore_protectedbase_isSignalConnected".}
proc fcQRemoteObjectAbstractPersistedStore_new(vtbl: pointer, vdata: csize_t): ptr cQRemoteObjectAbstractPersistedStore {.importc: "QRemoteObjectAbstractPersistedStore_new".}
proc fcQRemoteObjectAbstractPersistedStore_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQRemoteObjectAbstractPersistedStore {.importc: "QRemoteObjectAbstractPersistedStore_new_parent".}
proc fcQRemoteObjectAbstractPersistedStore_staticMetaObject(): pointer {.importc: "QRemoteObjectAbstractPersistedStore_staticMetaObject".}
proc fcQRemoteObjectNode_metaObject(self: pointer): pointer {.importc: "QRemoteObjectNode_metaObject".}
proc fcQRemoteObjectNode_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectNode_metacast".}
proc fcQRemoteObjectNode_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectNode_metacall".}
proc fcQRemoteObjectNode_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectNode_tr_s".}
proc fcQRemoteObjectNode_connectToNode(self: pointer, address: pointer): bool {.importc: "QRemoteObjectNode_connectToNode".}
proc fcQRemoteObjectNode_addClientSideConnection(self: pointer, ioDevice: pointer): void {.importc: "QRemoteObjectNode_addClientSideConnection".}
proc fcQRemoteObjectNode_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QRemoteObjectNode_setName".}
proc fcQRemoteObjectNode_acquireDynamic(self: pointer, name: struct_seaqt_string): pointer {.importc: "QRemoteObjectNode_acquireDynamic".}
proc fcQRemoteObjectNode_acquireModelName(self: pointer, name: struct_seaqt_string): pointer {.importc: "QRemoteObjectNode_acquireModel_name".}
proc fcQRemoteObjectNode_registryUrl(self: pointer): pointer {.importc: "QRemoteObjectNode_registryUrl".}
proc fcQRemoteObjectNode_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.importc: "QRemoteObjectNode_setRegistryUrl".}
proc fcQRemoteObjectNode_waitForRegistry(self: pointer): bool {.importc: "QRemoteObjectNode_waitForRegistry".}
proc fcQRemoteObjectNode_registry(self: pointer): pointer {.importc: "QRemoteObjectNode_registry".}
proc fcQRemoteObjectNode_persistedStore(self: pointer): pointer {.importc: "QRemoteObjectNode_persistedStore".}
proc fcQRemoteObjectNode_setPersistedStore(self: pointer, persistedStore: pointer): void {.importc: "QRemoteObjectNode_setPersistedStore".}
proc fcQRemoteObjectNode_lastError(self: pointer): cint {.importc: "QRemoteObjectNode_lastError".}
proc fcQRemoteObjectNode_heartbeatInterval(self: pointer): cint {.importc: "QRemoteObjectNode_heartbeatInterval".}
proc fcQRemoteObjectNode_setHeartbeatInterval(self: pointer, interval: cint): void {.importc: "QRemoteObjectNode_setHeartbeatInterval".}
proc fcQRemoteObjectNode_remoteObjectAdded(self: pointer, param1: struct_seaqt_map): void {.importc: "QRemoteObjectNode_remoteObjectAdded".}
proc fcQRemoteObjectNode_connect_remoteObjectAdded(self: pointer, slot: int, callback: proc (slot: int, param1: struct_seaqt_map) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectNode_connect_remoteObjectAdded".}
proc fcQRemoteObjectNode_remoteObjectRemoved(self: pointer, param1: struct_seaqt_map): void {.importc: "QRemoteObjectNode_remoteObjectRemoved".}
proc fcQRemoteObjectNode_connect_remoteObjectRemoved(self: pointer, slot: int, callback: proc (slot: int, param1: struct_seaqt_map) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectNode_connect_remoteObjectRemoved".}
proc fcQRemoteObjectNode_error(self: pointer, errorCode: cint): void {.importc: "QRemoteObjectNode_error".}
proc fcQRemoteObjectNode_connect_error(self: pointer, slot: int, callback: proc (slot: int, errorCode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectNode_connect_error".}
proc fcQRemoteObjectNode_heartbeatIntervalChanged(self: pointer, heartbeatInterval: cint): void {.importc: "QRemoteObjectNode_heartbeatIntervalChanged".}
proc fcQRemoteObjectNode_connect_heartbeatIntervalChanged(self: pointer, slot: int, callback: proc (slot: int, heartbeatInterval: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectNode_connect_heartbeatIntervalChanged".}
proc fcQRemoteObjectNode_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectNode_tr_s_c".}
proc fcQRemoteObjectNode_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectNode_tr_s_c_n".}
proc fcQRemoteObjectNode_acquireModelNameAction(self: pointer, name: struct_seaqt_string, action: cint): pointer {.importc: "QRemoteObjectNode_acquireModel_name_action".}
proc fcQRemoteObjectNode_acquireModelNameActionRolesHint(self: pointer, name: struct_seaqt_string, action: cint, rolesHint: struct_seaqt_array): pointer {.importc: "QRemoteObjectNode_acquireModel_name_action_rolesHint".}
proc fcQRemoteObjectNode_waitForRegistryTimeout(self: pointer, timeout: cint): bool {.importc: "QRemoteObjectNode_waitForRegistry_timeout".}
proc fcQRemoteObjectNode_vdata(self: pointer): ptr pointer {.importc: "QRemoteObjectNode_vdata".}
proc fvdata_cQRemoteObjectNode(self: pointer): pointer {.importc: "vdata_QRemoteObjectNode".}

type cQRemoteObjectNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setName*: proc(self: pointer, name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  setRegistryUrl*: proc(self: pointer, registryAddress: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRemoteObjectNode_virtualbase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectNode_virtualbase_metaObject".}
proc fcQRemoteObjectNode_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectNode_virtualbase_metacast".}
proc fcQRemoteObjectNode_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectNode_virtualbase_metacall".}
proc fcQRemoteObjectNode_virtualbase_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QRemoteObjectNode_virtualbase_setName".}
proc fcQRemoteObjectNode_virtualbase_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.importc: "QRemoteObjectNode_virtualbase_setRegistryUrl".}
proc fcQRemoteObjectNode_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QRemoteObjectNode_virtualbase_timerEvent".}
proc fcQRemoteObjectNode_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRemoteObjectNode_virtualbase_event".}
proc fcQRemoteObjectNode_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRemoteObjectNode_virtualbase_eventFilter".}
proc fcQRemoteObjectNode_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectNode_virtualbase_childEvent".}
proc fcQRemoteObjectNode_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectNode_virtualbase_customEvent".}
proc fcQRemoteObjectNode_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectNode_virtualbase_connectNotify".}
proc fcQRemoteObjectNode_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectNode_virtualbase_disconnectNotify".}
proc fcQRemoteObjectNode_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectNode_protectedbase_sender".}
proc fcQRemoteObjectNode_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectNode_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectNode_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectNode_protectedbase_receivers".}
proc fcQRemoteObjectNode_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectNode_protectedbase_isSignalConnected".}
proc fcQRemoteObjectNode_new(vtbl: pointer, vdata: csize_t): ptr cQRemoteObjectNode {.importc: "QRemoteObjectNode_new".}
proc fcQRemoteObjectNode_new2(vtbl: pointer, vdata: csize_t, registryAddress: pointer): ptr cQRemoteObjectNode {.importc: "QRemoteObjectNode_new_registryAddress".}
proc fcQRemoteObjectNode_new3(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQRemoteObjectNode {.importc: "QRemoteObjectNode_new_parent".}
proc fcQRemoteObjectNode_new4(vtbl: pointer, vdata: csize_t, registryAddress: pointer, parent: pointer): ptr cQRemoteObjectNode {.importc: "QRemoteObjectNode_new_registryAddress_parent".}
proc fcQRemoteObjectNode_staticMetaObject(): pointer {.importc: "QRemoteObjectNode_staticMetaObject".}
proc fcQRemoteObjectHostBase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectHostBase_metaObject".}
proc fcQRemoteObjectHostBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectHostBase_metacast".}
proc fcQRemoteObjectHostBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectHostBase_metacall".}
proc fcQRemoteObjectHostBase_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectHostBase_tr_s".}
proc fcQRemoteObjectHostBase_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QRemoteObjectHostBase_setName".}
proc fcQRemoteObjectHostBase_enableRemotingObject(self: pointer, objectVal: pointer): bool {.importc: "QRemoteObjectHostBase_enableRemoting_object".}
proc fcQRemoteObjectHostBase_enableRemotingModelNameRoles(self: pointer, model: pointer, name: struct_seaqt_string, roles: struct_seaqt_array): bool {.importc: "QRemoteObjectHostBase_enableRemoting_model_name_roles".}
proc fcQRemoteObjectHostBase_disableRemoting(self: pointer, remoteObject: pointer): bool {.importc: "QRemoteObjectHostBase_disableRemoting".}
proc fcQRemoteObjectHostBase_addHostSideConnection(self: pointer, ioDevice: pointer): void {.importc: "QRemoteObjectHostBase_addHostSideConnection".}
proc fcQRemoteObjectHostBase_proxyRegistryUrl(self: pointer, registryUrl: pointer): bool {.importc: "QRemoteObjectHostBase_proxy_registryUrl".}
proc fcQRemoteObjectHostBase_reverseProxy(self: pointer): bool {.importc: "QRemoteObjectHostBase_reverseProxy".}
proc fcQRemoteObjectHostBase_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectHostBase_tr_s_c".}
proc fcQRemoteObjectHostBase_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectHostBase_tr_s_c_n".}
proc fcQRemoteObjectHostBase_enableRemotingObjectName(self: pointer, objectVal: pointer, name: struct_seaqt_string): bool {.importc: "QRemoteObjectHostBase_enableRemoting_object_name".}
proc fcQRemoteObjectHostBase_enableRemotingModelNameRolesSelectionModel(self: pointer, model: pointer, name: struct_seaqt_string, roles: struct_seaqt_array, selectionModel: pointer): bool {.importc: "QRemoteObjectHostBase_enableRemoting_model_name_roles_selectionModel".}
proc fcQRemoteObjectHostBase_proxyRegistryUrlHostUrl(self: pointer, registryUrl: pointer, hostUrl: pointer): bool {.importc: "QRemoteObjectHostBase_proxy_registryUrl_hostUrl".}
proc fcQRemoteObjectHostBase_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectHostBase_protectedbase_sender".}
proc fcQRemoteObjectHostBase_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectHostBase_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectHostBase_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectHostBase_protectedbase_receivers".}
proc fcQRemoteObjectHostBase_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectHostBase_protectedbase_isSignalConnected".}
proc fcQRemoteObjectHostBase_staticMetaObject(): pointer {.importc: "QRemoteObjectHostBase_staticMetaObject".}
proc fcQRemoteObjectHost_metaObject(self: pointer): pointer {.importc: "QRemoteObjectHost_metaObject".}
proc fcQRemoteObjectHost_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectHost_metacast".}
proc fcQRemoteObjectHost_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectHost_metacall".}
proc fcQRemoteObjectHost_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectHost_tr_s".}
proc fcQRemoteObjectHost_hostUrl(self: pointer): pointer {.importc: "QRemoteObjectHost_hostUrl".}
proc fcQRemoteObjectHost_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.importc: "QRemoteObjectHost_setHostUrl".}
proc fcQRemoteObjectHost_hostUrlChanged(self: pointer): void {.importc: "QRemoteObjectHost_hostUrlChanged".}
proc fcQRemoteObjectHost_connect_hostUrlChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectHost_connect_hostUrlChanged".}
proc fcQRemoteObjectHost_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectHost_tr_s_c".}
proc fcQRemoteObjectHost_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectHost_tr_s_c_n".}
proc fcQRemoteObjectHost_vdata(self: pointer): ptr pointer {.importc: "QRemoteObjectHost_vdata".}
proc fvdata_cQRemoteObjectHost(self: pointer): pointer {.importc: "vdata_QRemoteObjectHost".}

type cQRemoteObjectHostVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  hostUrl*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setHostUrl*: proc(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.cdecl, raises: [], gcsafe.}
  setName*: proc(self: pointer, name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  setRegistryUrl*: proc(self: pointer, registryAddress: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRemoteObjectHost_virtualbase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectHost_virtualbase_metaObject".}
proc fcQRemoteObjectHost_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectHost_virtualbase_metacast".}
proc fcQRemoteObjectHost_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectHost_virtualbase_metacall".}
proc fcQRemoteObjectHost_virtualbase_hostUrl(self: pointer): pointer {.importc: "QRemoteObjectHost_virtualbase_hostUrl".}
proc fcQRemoteObjectHost_virtualbase_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.importc: "QRemoteObjectHost_virtualbase_setHostUrl".}
proc fcQRemoteObjectHost_virtualbase_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QRemoteObjectHost_virtualbase_setName".}
proc fcQRemoteObjectHost_virtualbase_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.importc: "QRemoteObjectHost_virtualbase_setRegistryUrl".}
proc fcQRemoteObjectHost_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QRemoteObjectHost_virtualbase_timerEvent".}
proc fcQRemoteObjectHost_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRemoteObjectHost_virtualbase_event".}
proc fcQRemoteObjectHost_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRemoteObjectHost_virtualbase_eventFilter".}
proc fcQRemoteObjectHost_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectHost_virtualbase_childEvent".}
proc fcQRemoteObjectHost_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectHost_virtualbase_customEvent".}
proc fcQRemoteObjectHost_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectHost_virtualbase_connectNotify".}
proc fcQRemoteObjectHost_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectHost_virtualbase_disconnectNotify".}
proc fcQRemoteObjectHost_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectHost_protectedbase_sender".}
proc fcQRemoteObjectHost_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectHost_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectHost_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectHost_protectedbase_receivers".}
proc fcQRemoteObjectHost_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectHost_protectedbase_isSignalConnected".}
proc fcQRemoteObjectHost_new(vtbl: pointer, vdata: csize_t): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new".}
proc fcQRemoteObjectHost_new2(vtbl: pointer, vdata: csize_t, address: pointer): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new_address".}
proc fcQRemoteObjectHost_new3(vtbl: pointer, vdata: csize_t, address: pointer, parent: pointer): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new_address_parent".}
proc fcQRemoteObjectHost_new4(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new_parent".}
proc fcQRemoteObjectHost_new5(vtbl: pointer, vdata: csize_t, address: pointer, registryAddress: pointer): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new_address_registryAddress".}
proc fcQRemoteObjectHost_new6(vtbl: pointer, vdata: csize_t, address: pointer, registryAddress: pointer, allowedSchemas: cint): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new_address_registryAddress_allowedSchemas".}
proc fcQRemoteObjectHost_new7(vtbl: pointer, vdata: csize_t, address: pointer, registryAddress: pointer, allowedSchemas: cint, parent: pointer): ptr cQRemoteObjectHost {.importc: "QRemoteObjectHost_new_address_registryAddress_allowedSchemas_parent".}
proc fcQRemoteObjectHost_staticMetaObject(): pointer {.importc: "QRemoteObjectHost_staticMetaObject".}
proc fcQRemoteObjectRegistryHost_metaObject(self: pointer): pointer {.importc: "QRemoteObjectRegistryHost_metaObject".}
proc fcQRemoteObjectRegistryHost_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectRegistryHost_metacast".}
proc fcQRemoteObjectRegistryHost_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectRegistryHost_metacall".}
proc fcQRemoteObjectRegistryHost_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectRegistryHost_tr_s".}
proc fcQRemoteObjectRegistryHost_setRegistryUrl(self: pointer, registryUrl: pointer): bool {.importc: "QRemoteObjectRegistryHost_setRegistryUrl".}
proc fcQRemoteObjectRegistryHost_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectRegistryHost_tr_s_c".}
proc fcQRemoteObjectRegistryHost_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectRegistryHost_tr_s_c_n".}
proc fcQRemoteObjectRegistryHost_vdata(self: pointer): ptr pointer {.importc: "QRemoteObjectRegistryHost_vdata".}
proc fvdata_cQRemoteObjectRegistryHost(self: pointer): pointer {.importc: "vdata_QRemoteObjectRegistryHost".}

type cQRemoteObjectRegistryHostVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setRegistryUrl*: proc(self: pointer, registryUrl: pointer): bool {.cdecl, raises: [], gcsafe.}
  setName*: proc(self: pointer, name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  hostUrl*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setHostUrl*: proc(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRemoteObjectRegistryHost_virtualbase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectRegistryHost_virtualbase_metaObject".}
proc fcQRemoteObjectRegistryHost_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectRegistryHost_virtualbase_metacast".}
proc fcQRemoteObjectRegistryHost_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectRegistryHost_virtualbase_metacall".}
proc fcQRemoteObjectRegistryHost_virtualbase_setRegistryUrl(self: pointer, registryUrl: pointer): bool {.importc: "QRemoteObjectRegistryHost_virtualbase_setRegistryUrl".}
proc fcQRemoteObjectRegistryHost_virtualbase_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QRemoteObjectRegistryHost_virtualbase_setName".}
proc fcQRemoteObjectRegistryHost_virtualbase_hostUrl(self: pointer): pointer {.importc: "QRemoteObjectRegistryHost_virtualbase_hostUrl".}
proc fcQRemoteObjectRegistryHost_virtualbase_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.importc: "QRemoteObjectRegistryHost_virtualbase_setHostUrl".}
proc fcQRemoteObjectRegistryHost_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QRemoteObjectRegistryHost_virtualbase_timerEvent".}
proc fcQRemoteObjectRegistryHost_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRemoteObjectRegistryHost_virtualbase_event".}
proc fcQRemoteObjectRegistryHost_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRemoteObjectRegistryHost_virtualbase_eventFilter".}
proc fcQRemoteObjectRegistryHost_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectRegistryHost_virtualbase_childEvent".}
proc fcQRemoteObjectRegistryHost_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectRegistryHost_virtualbase_customEvent".}
proc fcQRemoteObjectRegistryHost_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectRegistryHost_virtualbase_connectNotify".}
proc fcQRemoteObjectRegistryHost_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectRegistryHost_virtualbase_disconnectNotify".}
proc fcQRemoteObjectRegistryHost_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectRegistryHost_protectedbase_sender".}
proc fcQRemoteObjectRegistryHost_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectRegistryHost_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectRegistryHost_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectRegistryHost_protectedbase_receivers".}
proc fcQRemoteObjectRegistryHost_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectRegistryHost_protectedbase_isSignalConnected".}
proc fcQRemoteObjectRegistryHost_new(vtbl: pointer, vdata: csize_t): ptr cQRemoteObjectRegistryHost {.importc: "QRemoteObjectRegistryHost_new".}
proc fcQRemoteObjectRegistryHost_new2(vtbl: pointer, vdata: csize_t, registryAddress: pointer): ptr cQRemoteObjectRegistryHost {.importc: "QRemoteObjectRegistryHost_new_registryAddress".}
proc fcQRemoteObjectRegistryHost_new3(vtbl: pointer, vdata: csize_t, registryAddress: pointer, parent: pointer): ptr cQRemoteObjectRegistryHost {.importc: "QRemoteObjectRegistryHost_new_registryAddress_parent".}
proc fcQRemoteObjectRegistryHost_staticMetaObject(): pointer {.importc: "QRemoteObjectRegistryHost_staticMetaObject".}

proc metaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectAbstractPersistedStore_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, param1: cstring): pointer =
  fcQRemoteObjectAbstractPersistedStore_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectAbstractPersistedStore_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, s: cstring): string =
  let v_ms = fcQRemoteObjectAbstractPersistedStore_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc saveProperties*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void =
  var values_CArray = newSeq[pointer](len(values))
  for i in 0..<len(values):
    values_CArray[i] = values[i].h

  fcQRemoteObjectAbstractPersistedStore_saveProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))), struct_seaqt_array(len: csize_t(len(values)), data: if len(values) == 0: nil else: addr(values_CArray[0])))

proc restoreProperties*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQRemoteObjectAbstractPersistedStore_restoreProperties(self.h, struct_seaqt_string(data: if len(repName) > 0: addr repName[0] else: nil, len: csize_t(len(repName))), struct_seaqt_string(data: if len(repSig) > 0: addr repSig[0] else: nil, len: csize_t(len(repSig))))
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectAbstractPersistedStore_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectAbstractPersistedStore_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRemoteObjectAbstractPersistedStoremetaObjectProc* = proc(self: QRemoteObjectAbstractPersistedStore): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoremetacastProc* = proc(self: QRemoteObjectAbstractPersistedStore, param1: cstring): pointer {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoremetacallProc* = proc(self: QRemoteObjectAbstractPersistedStore, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoresavePropertiesProc* = proc(self: QRemoteObjectAbstractPersistedStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStorerestorePropertiesProc* = proc(self: QRemoteObjectAbstractPersistedStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoreeventProc* = proc(self: QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoreeventFilterProc* = proc(self: QRemoteObjectAbstractPersistedStore, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoretimerEventProc* = proc(self: QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStorechildEventProc* = proc(self: QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStorecustomEventProc* = proc(self: QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoreconnectNotifyProc* = proc(self: QRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRemoteObjectAbstractPersistedStoredisconnectNotifyProc* = proc(self: QRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRemoteObjectAbstractPersistedStoreVTable* {.inheritable, pure.} = object
  vtbl: cQRemoteObjectAbstractPersistedStoreVTable
  metaObject*: QRemoteObjectAbstractPersistedStoremetaObjectProc
  metacast*: QRemoteObjectAbstractPersistedStoremetacastProc
  metacall*: QRemoteObjectAbstractPersistedStoremetacallProc
  saveProperties*: QRemoteObjectAbstractPersistedStoresavePropertiesProc
  restoreProperties*: QRemoteObjectAbstractPersistedStorerestorePropertiesProc
  event*: QRemoteObjectAbstractPersistedStoreeventProc
  eventFilter*: QRemoteObjectAbstractPersistedStoreeventFilterProc
  timerEvent*: QRemoteObjectAbstractPersistedStoretimerEventProc
  childEvent*: QRemoteObjectAbstractPersistedStorechildEventProc
  customEvent*: QRemoteObjectAbstractPersistedStorecustomEventProc
  connectNotify*: QRemoteObjectAbstractPersistedStoreconnectNotifyProc
  disconnectNotify*: QRemoteObjectAbstractPersistedStoredisconnectNotifyProc

proc QRemoteObjectAbstractPersistedStoremetaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectAbstractPersistedStore_virtualbase_metaObject(self.h), owned: false)

proc QRemoteObjectAbstractPersistedStoremetacast*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, param1: cstring): pointer =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_metacast(self.h, param1)

proc QRemoteObjectAbstractPersistedStoremetacall*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRemoteObjectAbstractPersistedStoreevent*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_event(self.h, event.h)

proc QRemoteObjectAbstractPersistedStoreeventFilter*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRemoteObjectAbstractPersistedStoretimerEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_timerEvent(self.h, event.h)

proc QRemoteObjectAbstractPersistedStorechildEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_childEvent(self.h, event.h)

proc QRemoteObjectAbstractPersistedStorecustomEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QEvent): void =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_customEvent(self.h, event.h)

proc QRemoteObjectAbstractPersistedStoreconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_connectNotify(self.h, signal.h)

proc QRemoteObjectAbstractPersistedStoredisconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectAbstractPersistedStore_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var vvalues_ma = values
  var vvaluesx_ret = newSeq[gen_qvariant_types.QVariant](int(vvalues_ma.len))
  let vvalues_outCast = cast[ptr UncheckedArray[pointer]](vvalues_ma.data)
  for i in 0 ..< vvalues_ma.len:
    vvaluesx_ret[i] = gen_qvariant_types.QVariant(h: vvalues_outCast[i], owned: true)
  c_free(vvalues_ma.data)
  let slotval3 = vvaluesx_ret
  vtbl[].saveProperties(self, slotval1, slotval2, slotval3)

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var virtualReturn = vtbl[].restoreProperties(self, slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRemoteObjectAbstractPersistedStore_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let self = QRemoteObjectAbstractPersistedStore(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRemoteObjectAbstractPersistedStore* {.inheritable.} = ref object of QRemoteObjectAbstractPersistedStore
  vtbl*: cQRemoteObjectAbstractPersistedStoreVTable

method metaObject*(self: VirtualQRemoteObjectAbstractPersistedStore): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRemoteObjectAbstractPersistedStoremetaObject(self[])
method metacast*(self: VirtualQRemoteObjectAbstractPersistedStore, param1: cstring): pointer {.base.} =
  QRemoteObjectAbstractPersistedStoremetacast(self[], param1)
method metacall*(self: VirtualQRemoteObjectAbstractPersistedStore, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRemoteObjectAbstractPersistedStoremetacall(self[], param1, param2, param3)
method saveProperties*(self: VirtualQRemoteObjectAbstractPersistedStore, repName: openArray[char], repSig: openArray[byte], values: openArray[gen_qvariant_types.QVariant]): void {.base.} =
  raiseAssert("missing implementation of QRemoteObjectAbstractPersistedStore.saveProperties")
method restoreProperties*(self: VirtualQRemoteObjectAbstractPersistedStore, repName: openArray[char], repSig: openArray[byte]): seq[gen_qvariant_types.QVariant] {.base.} =
  raiseAssert("missing implementation of QRemoteObjectAbstractPersistedStore.restoreProperties")
method event*(self: VirtualQRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectAbstractPersistedStoreevent(self[], event)
method eventFilter*(self: VirtualQRemoteObjectAbstractPersistedStore, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectAbstractPersistedStoreeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRemoteObjectAbstractPersistedStoretimerEvent(self[], event)
method childEvent*(self: VirtualQRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRemoteObjectAbstractPersistedStorechildEvent(self[], event)
method customEvent*(self: VirtualQRemoteObjectAbstractPersistedStore, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRemoteObjectAbstractPersistedStorecustomEvent(self[], event)
method connectNotify*(self: VirtualQRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectAbstractPersistedStoreconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectAbstractPersistedStoredisconnectNotify(self[], signal)

proc fcQRemoteObjectAbstractPersistedStore_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectAbstractPersistedStore_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_method_callback_saveProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string, values: struct_seaqt_array): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var vvalues_ma = values
  var vvaluesx_ret = newSeq[gen_qvariant_types.QVariant](int(vvalues_ma.len))
  let vvalues_outCast = cast[ptr UncheckedArray[pointer]](vvalues_ma.data)
  for i in 0 ..< vvalues_ma.len:
    vvaluesx_ret[i] = gen_qvariant_types.QVariant(h: vvalues_outCast[i], owned: true)
  c_free(vvalues_ma.data)
  let slotval3 = vvaluesx_ret
  inst.saveProperties(slotval1, slotval2, slotval3)

proc fcQRemoteObjectAbstractPersistedStore_method_callback_restoreProperties(self: pointer, repName: struct_seaqt_string, repSig: struct_seaqt_string): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let vrepName_ms = repName
  let vrepNamex_ret = string.fromBytes(vrepName_ms)
  c_free(vrepName_ms.data)
  let slotval1 = vrepNamex_ret
  var vrepSig_bytearray = repSig
  var vrepSigx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vrepSig_bytearray.data), 0, int(vrepSig_bytearray.len)-1))
  c_free(vrepSig_bytearray.data)
  let slotval2 = vrepSigx_ret
  var virtualReturn = inst.restoreProperties(slotval1, slotval2)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQRemoteObjectAbstractPersistedStore_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectAbstractPersistedStore_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRemoteObjectAbstractPersistedStore_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRemoteObjectAbstractPersistedStore_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRemoteObjectAbstractPersistedStore_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRemoteObjectAbstractPersistedStore_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectAbstractPersistedStore](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectAbstractPersistedStore_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore): cint =
  fcQRemoteObjectAbstractPersistedStore_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, signal: cstring): cint =
  fcQRemoteObjectAbstractPersistedStore_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectAbstractPersistedStore_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore,
    vtbl: ref QRemoteObjectAbstractPersistedStoreVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore =
  let vtbl = if vtbl == nil: new QRemoteObjectAbstractPersistedStoreVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectAbstractPersistedStore_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectAbstractPersistedStore_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectAbstractPersistedStore_vtable_callback_metacall
  if not isNil(vtbl[].saveProperties):
    vtbl[].vtbl.saveProperties = fcQRemoteObjectAbstractPersistedStore_vtable_callback_saveProperties
  if not isNil(vtbl[].restoreProperties):
    vtbl[].vtbl.restoreProperties = fcQRemoteObjectAbstractPersistedStore_vtable_callback_restoreProperties
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectAbstractPersistedStore_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectAbstractPersistedStore_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectAbstractPersistedStore_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectAbstractPersistedStore_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectAbstractPersistedStore_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectAbstractPersistedStore_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectAbstractPersistedStore_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore(h: fcQRemoteObjectAbstractPersistedStore_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQRemoteObjectAbstractPersistedStore_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectAbstractPersistedStoreVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore =
  let vtbl = if vtbl == nil: new QRemoteObjectAbstractPersistedStoreVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectAbstractPersistedStoreVTable](fcQRemoteObjectAbstractPersistedStore_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectAbstractPersistedStore_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectAbstractPersistedStore_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectAbstractPersistedStore_vtable_callback_metacall
  if not isNil(vtbl[].saveProperties):
    vtbl[].vtbl.saveProperties = fcQRemoteObjectAbstractPersistedStore_vtable_callback_saveProperties
  if not isNil(vtbl[].restoreProperties):
    vtbl[].vtbl.restoreProperties = fcQRemoteObjectAbstractPersistedStore_vtable_callback_restoreProperties
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectAbstractPersistedStore_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectAbstractPersistedStore_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectAbstractPersistedStore_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectAbstractPersistedStore_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectAbstractPersistedStore_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectAbstractPersistedStore_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectAbstractPersistedStore_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore(h: fcQRemoteObjectAbstractPersistedStore_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQRemoteObjectAbstractPersistedStore_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRemoteObjectAbstractPersistedStore_mvtbl = cQRemoteObjectAbstractPersistedStoreVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRemoteObjectAbstractPersistedStore()[])](self.fcQRemoteObjectAbstractPersistedStore_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRemoteObjectAbstractPersistedStore_method_callback_metaObject,
  metacast: fcQRemoteObjectAbstractPersistedStore_method_callback_metacast,
  metacall: fcQRemoteObjectAbstractPersistedStore_method_callback_metacall,
  saveProperties: fcQRemoteObjectAbstractPersistedStore_method_callback_saveProperties,
  restoreProperties: fcQRemoteObjectAbstractPersistedStore_method_callback_restoreProperties,
  event: fcQRemoteObjectAbstractPersistedStore_method_callback_event,
  eventFilter: fcQRemoteObjectAbstractPersistedStore_method_callback_eventFilter,
  timerEvent: fcQRemoteObjectAbstractPersistedStore_method_callback_timerEvent,
  childEvent: fcQRemoteObjectAbstractPersistedStore_method_callback_childEvent,
  customEvent: fcQRemoteObjectAbstractPersistedStore_method_callback_customEvent,
  connectNotify: fcQRemoteObjectAbstractPersistedStore_method_callback_connectNotify,
  disconnectNotify: fcQRemoteObjectAbstractPersistedStore_method_callback_disconnectNotify,
)
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore,
    inst: VirtualQRemoteObjectAbstractPersistedStore) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectAbstractPersistedStore_new(addr(cQRemoteObjectAbstractPersistedStore_mvtbl), csize_t(sizeof(pointer)))
  fcQRemoteObjectAbstractPersistedStore_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectAbstractPersistedStore) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectAbstractPersistedStore_new2(addr(cQRemoteObjectAbstractPersistedStore_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQRemoteObjectAbstractPersistedStore_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectAbstractPersistedStore_staticMetaObject())
proc metaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectNode_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: cstring): pointer =
  fcQRemoteObjectNode_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectNode_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectNode, s: cstring): string =
  let v_ms = fcQRemoteObjectNode_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectToNode*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, address: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectNode_connectToNode(self.h, address.h)

proc addClientSideConnection*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, ioDevice: gen_qiodevice_types.QIODevice): void =
  fcQRemoteObjectNode_addClientSideConnection(self.h, ioDevice.h)

proc setName*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char]): void =
  fcQRemoteObjectNode_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc acquireDynamic*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char]): gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica =
  gen_qremoteobjectdynamicreplica_types.QRemoteObjectDynamicReplica(h: fcQRemoteObjectNode_acquireDynamic(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc acquireModel*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char]): gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica =
  gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica(h: fcQRemoteObjectNode_acquireModelName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: false)

proc registryUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQRemoteObjectNode_registryUrl(self.h), owned: true)

proc setRegistryUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, registryAddress: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectNode_setRegistryUrl(self.h, registryAddress.h)

proc waitForRegistry*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): bool =
  fcQRemoteObjectNode_waitForRegistry(self.h)

proc registry*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qremoteobjectregistry_types.QRemoteObjectRegistry =
  gen_qremoteobjectregistry_types.QRemoteObjectRegistry(h: fcQRemoteObjectNode_registry(self.h), owned: false)

proc persistedStore*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore =
  gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore(h: fcQRemoteObjectNode_persistedStore(self.h), owned: false)

proc setPersistedStore*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, persistedStore: gen_qremoteobjectnode_types.QRemoteObjectAbstractPersistedStore): void =
  fcQRemoteObjectNode_setPersistedStore(self.h, persistedStore.h)

proc lastError*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): cint =
  cint(fcQRemoteObjectNode_lastError(self.h))

proc heartbeatInterval*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): cint =
  fcQRemoteObjectNode_heartbeatInterval(self.h)

proc setHeartbeatInterval*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, interval: cint): void =
  fcQRemoteObjectNode_setHeartbeatInterval(self.h, interval)

proc remoteObjectAdded*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]): void =
  var param1_CArray_First: struct_seaqt_string
  var param1_CArray_Second: pointer
  param1_CArray_First = struct_seaqt_string(data: if len(param1.first) > 0: addr param1.first[0] else: nil, len: csize_t(len(param1.first)))
  param1_CArray_Second = param1.second.h
  fcQRemoteObjectNode_remoteObjectAdded(self.h, struct_seaqt_map(len: 1,keys: addr(param1_CArray_First),values: addr(param1_CArray_Second),))

type QRemoteObjectNoderemoteObjectAddedSlot* = proc(param1: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo])
proc fcQRemoteObjectNode_slot_callback_remoteObjectAdded(slot: int, param1: struct_seaqt_map) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectNoderemoteObjectAddedSlot](cast[pointer](slot))
  var vparam1_mm = param1
  var vparam1_First_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](vparam1_mm.keys)
  var vparam1_Second_CArray = cast[ptr UncheckedArray[pointer]](vparam1_mm.values)
  let vparam1_first_ms = vparam1_First_CArray[0]
  let vparam1_firstx_ret = string.fromBytes(vparam1_first_ms)
  c_free(vparam1_first_ms.data)
  var vparam1_entry_First = vparam1_firstx_ret

  var vparam1_entry_Second = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: vparam1_Second_CArray[0], owned: true)

  c_free(vparam1_mm.keys)
  c_free(vparam1_mm.values)
  let slotval1 = (first: vparam1_entry_First , second: vparam1_entry_Second )

  nimfunc[](slotval1)

proc fcQRemoteObjectNode_slot_callback_remoteObjectAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectNoderemoteObjectAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRemoteObjectAdded*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, slot: QRemoteObjectNoderemoteObjectAddedSlot) =
  var tmp = new QRemoteObjectNoderemoteObjectAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectNode_connect_remoteObjectAdded(self.h, cast[int](addr tmp[]), fcQRemoteObjectNode_slot_callback_remoteObjectAdded, fcQRemoteObjectNode_slot_callback_remoteObjectAdded_release)

proc remoteObjectRemoved*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo]): void =
  var param1_CArray_First: struct_seaqt_string
  var param1_CArray_Second: pointer
  param1_CArray_First = struct_seaqt_string(data: if len(param1.first) > 0: addr param1.first[0] else: nil, len: csize_t(len(param1.first)))
  param1_CArray_Second = param1.second.h
  fcQRemoteObjectNode_remoteObjectRemoved(self.h, struct_seaqt_map(len: 1,keys: addr(param1_CArray_First),values: addr(param1_CArray_Second),))

type QRemoteObjectNoderemoteObjectRemovedSlot* = proc(param1: tuple[first: string, second: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo])
proc fcQRemoteObjectNode_slot_callback_remoteObjectRemoved(slot: int, param1: struct_seaqt_map) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectNoderemoteObjectRemovedSlot](cast[pointer](slot))
  var vparam1_mm = param1
  var vparam1_First_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](vparam1_mm.keys)
  var vparam1_Second_CArray = cast[ptr UncheckedArray[pointer]](vparam1_mm.values)
  let vparam1_first_ms = vparam1_First_CArray[0]
  let vparam1_firstx_ret = string.fromBytes(vparam1_first_ms)
  c_free(vparam1_first_ms.data)
  var vparam1_entry_First = vparam1_firstx_ret

  var vparam1_entry_Second = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: vparam1_Second_CArray[0], owned: true)

  c_free(vparam1_mm.keys)
  c_free(vparam1_mm.values)
  let slotval1 = (first: vparam1_entry_First , second: vparam1_entry_Second )

  nimfunc[](slotval1)

proc fcQRemoteObjectNode_slot_callback_remoteObjectRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectNoderemoteObjectRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRemoteObjectRemoved*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, slot: QRemoteObjectNoderemoteObjectRemovedSlot) =
  var tmp = new QRemoteObjectNoderemoteObjectRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectNode_connect_remoteObjectRemoved(self.h, cast[int](addr tmp[]), fcQRemoteObjectNode_slot_callback_remoteObjectRemoved, fcQRemoteObjectNode_slot_callback_remoteObjectRemoved_release)

proc error*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, errorCode: cint): void =
  fcQRemoteObjectNode_error(self.h, cint(errorCode))

type QRemoteObjectNodeerrorSlot* = proc(errorCode: cint)
proc fcQRemoteObjectNode_slot_callback_error(slot: int, errorCode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectNodeerrorSlot](cast[pointer](slot))
  let slotval1 = cint(errorCode)

  nimfunc[](slotval1)

proc fcQRemoteObjectNode_slot_callback_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectNodeerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, slot: QRemoteObjectNodeerrorSlot) =
  var tmp = new QRemoteObjectNodeerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectNode_connect_error(self.h, cast[int](addr tmp[]), fcQRemoteObjectNode_slot_callback_error, fcQRemoteObjectNode_slot_callback_error_release)

proc heartbeatIntervalChanged*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, heartbeatInterval: cint): void =
  fcQRemoteObjectNode_heartbeatIntervalChanged(self.h, heartbeatInterval)

type QRemoteObjectNodeheartbeatIntervalChangedSlot* = proc(heartbeatInterval: cint)
proc fcQRemoteObjectNode_slot_callback_heartbeatIntervalChanged(slot: int, heartbeatInterval: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectNodeheartbeatIntervalChangedSlot](cast[pointer](slot))
  let slotval1 = heartbeatInterval

  nimfunc[](slotval1)

proc fcQRemoteObjectNode_slot_callback_heartbeatIntervalChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectNodeheartbeatIntervalChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHeartbeatIntervalChanged*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, slot: QRemoteObjectNodeheartbeatIntervalChangedSlot) =
  var tmp = new QRemoteObjectNodeheartbeatIntervalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectNode_connect_heartbeatIntervalChanged(self.h, cast[int](addr tmp[]), fcQRemoteObjectNode_slot_callback_heartbeatIntervalChanged, fcQRemoteObjectNode_slot_callback_heartbeatIntervalChanged_release)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectNode, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectNode_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectNode, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectNode_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc acquireModel*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char], action: cint): gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica =
  gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica(h: fcQRemoteObjectNode_acquireModelNameAction(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(action)), owned: false)

proc acquireModel*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char], action: cint, rolesHint: openArray[cint]): gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica =
  var rolesHint_CArray = newSeq[cint](len(rolesHint))
  for i in 0..<len(rolesHint):
    rolesHint_CArray[i] = rolesHint[i]

  gen_qremoteobjectabstractitemmodelreplica_types.QAbstractItemModelReplica(h: fcQRemoteObjectNode_acquireModelNameActionRolesHint(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(action), struct_seaqt_array(len: csize_t(len(rolesHint)), data: if len(rolesHint) == 0: nil else: addr(rolesHint_CArray[0]))), owned: false)

proc waitForRegistry*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, timeout: cint): bool =
  fcQRemoteObjectNode_waitForRegistryTimeout(self.h, timeout)

type QRemoteObjectNodemetaObjectProc* = proc(self: QRemoteObjectNode): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRemoteObjectNodemetacastProc* = proc(self: QRemoteObjectNode, param1: cstring): pointer {.raises: [], gcsafe.}
type QRemoteObjectNodemetacallProc* = proc(self: QRemoteObjectNode, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRemoteObjectNodesetNameProc* = proc(self: QRemoteObjectNode, name: openArray[char]): void {.raises: [], gcsafe.}
type QRemoteObjectNodesetRegistryUrlProc* = proc(self: QRemoteObjectNode, registryAddress: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QRemoteObjectNodetimerEventProc* = proc(self: QRemoteObjectNode, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRemoteObjectNodeeventProc* = proc(self: QRemoteObjectNode, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectNodeeventFilterProc* = proc(self: QRemoteObjectNode, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectNodechildEventProc* = proc(self: QRemoteObjectNode, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRemoteObjectNodecustomEventProc* = proc(self: QRemoteObjectNode, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRemoteObjectNodeconnectNotifyProc* = proc(self: QRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRemoteObjectNodedisconnectNotifyProc* = proc(self: QRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRemoteObjectNodeVTable* {.inheritable, pure.} = object
  vtbl: cQRemoteObjectNodeVTable
  metaObject*: QRemoteObjectNodemetaObjectProc
  metacast*: QRemoteObjectNodemetacastProc
  metacall*: QRemoteObjectNodemetacallProc
  setName*: QRemoteObjectNodesetNameProc
  setRegistryUrl*: QRemoteObjectNodesetRegistryUrlProc
  timerEvent*: QRemoteObjectNodetimerEventProc
  event*: QRemoteObjectNodeeventProc
  eventFilter*: QRemoteObjectNodeeventFilterProc
  childEvent*: QRemoteObjectNodechildEventProc
  customEvent*: QRemoteObjectNodecustomEventProc
  connectNotify*: QRemoteObjectNodeconnectNotifyProc
  disconnectNotify*: QRemoteObjectNodedisconnectNotifyProc

proc QRemoteObjectNodemetaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectNode_virtualbase_metaObject(self.h), owned: false)

proc QRemoteObjectNodemetacast*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: cstring): pointer =
  fcQRemoteObjectNode_virtualbase_metacast(self.h, param1)

proc QRemoteObjectNodemetacall*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectNode_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRemoteObjectNodesetName*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, name: openArray[char]): void =
  fcQRemoteObjectNode_virtualbase_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc QRemoteObjectNodesetRegistryUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, registryAddress: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectNode_virtualbase_setRegistryUrl(self.h, registryAddress.h)

proc QRemoteObjectNodetimerEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQRemoteObjectNode_virtualbase_timerEvent(self.h, param1.h)

proc QRemoteObjectNodeevent*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectNode_virtualbase_event(self.h, event.h)

proc QRemoteObjectNodeeventFilter*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectNode_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRemoteObjectNodechildEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRemoteObjectNode_virtualbase_childEvent(self.h, event.h)

proc QRemoteObjectNodecustomEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, event: gen_qcoreevent_types.QEvent): void =
  fcQRemoteObjectNode_virtualbase_customEvent(self.h, event.h)

proc QRemoteObjectNodeconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectNode_virtualbase_connectNotify(self.h, signal.h)

proc QRemoteObjectNodedisconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectNode_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRemoteObjectNode_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectNode_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRemoteObjectNode_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectNode_vtable_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  vtbl[].setName(self, slotval1)

proc fcQRemoteObjectNode_vtable_callback_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: registryAddress, owned: false)
  var virtualReturn = vtbl[].setRegistryUrl(self, slotval1)
  virtualReturn

proc fcQRemoteObjectNode_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRemoteObjectNode_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRemoteObjectNode_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectNode_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRemoteObjectNode_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRemoteObjectNode_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRemoteObjectNode_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
  let self = QRemoteObjectNode(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRemoteObjectNode* {.inheritable.} = ref object of QRemoteObjectNode
  vtbl*: cQRemoteObjectNodeVTable

method metaObject*(self: VirtualQRemoteObjectNode): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRemoteObjectNodemetaObject(self[])
method metacast*(self: VirtualQRemoteObjectNode, param1: cstring): pointer {.base.} =
  QRemoteObjectNodemetacast(self[], param1)
method metacall*(self: VirtualQRemoteObjectNode, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRemoteObjectNodemetacall(self[], param1, param2, param3)
method setName*(self: VirtualQRemoteObjectNode, name: openArray[char]): void {.base.} =
  QRemoteObjectNodesetName(self[], name)
method setRegistryUrl*(self: VirtualQRemoteObjectNode, registryAddress: gen_qurl_types.QUrl): bool {.base.} =
  QRemoteObjectNodesetRegistryUrl(self[], registryAddress)
method timerEvent*(self: VirtualQRemoteObjectNode, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRemoteObjectNodetimerEvent(self[], param1)
method event*(self: VirtualQRemoteObjectNode, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectNodeevent(self[], event)
method eventFilter*(self: VirtualQRemoteObjectNode, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectNodeeventFilter(self[], watched, event)
method childEvent*(self: VirtualQRemoteObjectNode, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRemoteObjectNodechildEvent(self[], event)
method customEvent*(self: VirtualQRemoteObjectNode, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRemoteObjectNodecustomEvent(self[], event)
method connectNotify*(self: VirtualQRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectNodeconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectNodedisconnectNotify(self[], signal)

proc fcQRemoteObjectNode_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectNode_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRemoteObjectNode_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectNode_method_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  inst.setName(slotval1)

proc fcQRemoteObjectNode_method_callback_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qurl_types.QUrl(h: registryAddress, owned: false)
  var virtualReturn = inst.setRegistryUrl(slotval1)
  virtualReturn

proc fcQRemoteObjectNode_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQRemoteObjectNode_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRemoteObjectNode_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectNode_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRemoteObjectNode_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRemoteObjectNode_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRemoteObjectNode_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectNode](fcQRemoteObjectNode_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectNode_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectnode_types.QRemoteObjectNode): cint =
  fcQRemoteObjectNode_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, signal: cstring): cint =
  fcQRemoteObjectNode_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectnode_types.QRemoteObjectNode, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectNode_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    vtbl: ref QRemoteObjectNodeVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectNode =
  let vtbl = if vtbl == nil: new QRemoteObjectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectNode_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectNode_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectNode_vtable_callback_metacall
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectNode_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectNode_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectNode_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectNode_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectNode_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectNode_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectNode_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectNode_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectNode_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectNode(h: fcQRemoteObjectNode_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQRemoteObjectNode_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    registryAddress: gen_qurl_types.QUrl,
    vtbl: ref QRemoteObjectNodeVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectNode =
  let vtbl = if vtbl == nil: new QRemoteObjectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectNode_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectNode_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectNode_vtable_callback_metacall
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectNode_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectNode_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectNode_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectNode_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectNode_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectNode_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectNode_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectNode_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectNode_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectNode(h: fcQRemoteObjectNode_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), registryAddress.h), owned: true)
  fcQRemoteObjectNode_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectNodeVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectNode =
  let vtbl = if vtbl == nil: new QRemoteObjectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectNode_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectNode_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectNode_vtable_callback_metacall
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectNode_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectNode_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectNode_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectNode_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectNode_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectNode_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectNode_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectNode_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectNode_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectNode(h: fcQRemoteObjectNode_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQRemoteObjectNode_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    registryAddress: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectNodeVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectNode =
  let vtbl = if vtbl == nil: new QRemoteObjectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectNodeVTable](fcQRemoteObjectNode_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectNode_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectNode_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectNode_vtable_callback_metacall
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectNode_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectNode_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectNode_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectNode_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectNode_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectNode_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectNode_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectNode_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectNode_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectNode(h: fcQRemoteObjectNode_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), registryAddress.h, parent.h), owned: true)
  fcQRemoteObjectNode_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRemoteObjectNode_mvtbl = cQRemoteObjectNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRemoteObjectNode()[])](self.fcQRemoteObjectNode_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRemoteObjectNode_method_callback_metaObject,
  metacast: fcQRemoteObjectNode_method_callback_metacast,
  metacall: fcQRemoteObjectNode_method_callback_metacall,
  setName: fcQRemoteObjectNode_method_callback_setName,
  setRegistryUrl: fcQRemoteObjectNode_method_callback_setRegistryUrl,
  timerEvent: fcQRemoteObjectNode_method_callback_timerEvent,
  event: fcQRemoteObjectNode_method_callback_event,
  eventFilter: fcQRemoteObjectNode_method_callback_eventFilter,
  childEvent: fcQRemoteObjectNode_method_callback_childEvent,
  customEvent: fcQRemoteObjectNode_method_callback_customEvent,
  connectNotify: fcQRemoteObjectNode_method_callback_connectNotify,
  disconnectNotify: fcQRemoteObjectNode_method_callback_disconnectNotify,
)
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    inst: VirtualQRemoteObjectNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectNode_new(addr(cQRemoteObjectNode_mvtbl), csize_t(sizeof(pointer)))
  fcQRemoteObjectNode_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    registryAddress: gen_qurl_types.QUrl,
    inst: VirtualQRemoteObjectNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectNode_new2(addr(cQRemoteObjectNode_mvtbl), csize_t(sizeof(pointer)), registryAddress.h)
  fcQRemoteObjectNode_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectNode_new3(addr(cQRemoteObjectNode_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQRemoteObjectNode_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectNode,
    registryAddress: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectNode_new4(addr(cQRemoteObjectNode_mvtbl), csize_t(sizeof(pointer)), registryAddress.h, parent.h)
  fcQRemoteObjectNode_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qremoteobjectnode_types.QRemoteObjectNode): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectNode_staticMetaObject())
proc metaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectHostBase_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, param1: cstring): pointer =
  fcQRemoteObjectHostBase_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectHostBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectHostBase, s: cstring): string =
  let v_ms = fcQRemoteObjectHostBase_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, name: openArray[char]): void =
  fcQRemoteObjectHostBase_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc enableRemoting*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, objectVal: gen_qobject_types.QObject): bool =
  fcQRemoteObjectHostBase_enableRemotingObject(self.h, objectVal.h)

proc enableRemoting*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, model: gen_qabstractitemmodel_types.QAbstractItemModel, name: openArray[char], roles: openArray[cint]): bool =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQRemoteObjectHostBase_enableRemotingModelNameRoles(self.h, model.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc disableRemoting*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, remoteObject: gen_qobject_types.QObject): bool =
  fcQRemoteObjectHostBase_disableRemoting(self.h, remoteObject.h)

proc addHostSideConnection*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, ioDevice: gen_qiodevice_types.QIODevice): void =
  fcQRemoteObjectHostBase_addHostSideConnection(self.h, ioDevice.h)

proc proxy*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, registryUrl: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectHostBase_proxyRegistryUrl(self.h, registryUrl.h)

proc reverseProxy*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase): bool =
  fcQRemoteObjectHostBase_reverseProxy(self.h)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectHostBase, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectHostBase_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectHostBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectHostBase_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc enableRemoting*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, objectVal: gen_qobject_types.QObject, name: openArray[char]): bool =
  fcQRemoteObjectHostBase_enableRemotingObjectName(self.h, objectVal.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc enableRemoting*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, model: gen_qabstractitemmodel_types.QAbstractItemModel, name: openArray[char], roles: openArray[cint], selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): bool =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQRemoteObjectHostBase_enableRemotingModelNameRolesSelectionModel(self.h, model.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])), selectionModel.h)

proc proxy*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, registryUrl: gen_qurl_types.QUrl, hostUrl: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectHostBase_proxyRegistryUrlHostUrl(self.h, registryUrl.h, hostUrl.h)

proc sender*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectHostBase_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase): cint =
  fcQRemoteObjectHostBase_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, signal: cstring): cint =
  fcQRemoteObjectHostBase_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectnode_types.QRemoteObjectHostBase, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectHostBase_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qremoteobjectnode_types.QRemoteObjectHostBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectHostBase_staticMetaObject())
proc metaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectHost_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, param1: cstring): pointer =
  fcQRemoteObjectHost_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectHost_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectHost, s: cstring): string =
  let v_ms = fcQRemoteObjectHost_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hostUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQRemoteObjectHost_hostUrl(self.h), owned: true)

proc setHostUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool =
  fcQRemoteObjectHost_setHostUrl(self.h, hostAddress.h, cint(allowedSchemas))

proc hostUrlChanged*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): void =
  fcQRemoteObjectHost_hostUrlChanged(self.h)

type QRemoteObjectHosthostUrlChangedSlot* = proc()
proc fcQRemoteObjectHost_slot_callback_hostUrlChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectHosthostUrlChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQRemoteObjectHost_slot_callback_hostUrlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectHosthostUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHostUrlChanged*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, slot: QRemoteObjectHosthostUrlChangedSlot) =
  var tmp = new QRemoteObjectHosthostUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectHost_connect_hostUrlChanged(self.h, cast[int](addr tmp[]), fcQRemoteObjectHost_slot_callback_hostUrlChanged, fcQRemoteObjectHost_slot_callback_hostUrlChanged_release)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectHost, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectHost_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectHost, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectHost_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRemoteObjectHostmetaObjectProc* = proc(self: QRemoteObjectHost): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRemoteObjectHostmetacastProc* = proc(self: QRemoteObjectHost, param1: cstring): pointer {.raises: [], gcsafe.}
type QRemoteObjectHostmetacallProc* = proc(self: QRemoteObjectHost, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRemoteObjectHosthostUrlProc* = proc(self: QRemoteObjectHost): gen_qurl_types.QUrl {.raises: [], gcsafe.}
type QRemoteObjectHostsetHostUrlProc* = proc(self: QRemoteObjectHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool {.raises: [], gcsafe.}
type QRemoteObjectHostsetNameProc* = proc(self: QRemoteObjectHost, name: openArray[char]): void {.raises: [], gcsafe.}
type QRemoteObjectHostsetRegistryUrlProc* = proc(self: QRemoteObjectHost, registryAddress: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QRemoteObjectHosttimerEventProc* = proc(self: QRemoteObjectHost, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRemoteObjectHosteventProc* = proc(self: QRemoteObjectHost, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectHosteventFilterProc* = proc(self: QRemoteObjectHost, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectHostchildEventProc* = proc(self: QRemoteObjectHost, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRemoteObjectHostcustomEventProc* = proc(self: QRemoteObjectHost, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRemoteObjectHostconnectNotifyProc* = proc(self: QRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRemoteObjectHostdisconnectNotifyProc* = proc(self: QRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRemoteObjectHostVTable* {.inheritable, pure.} = object
  vtbl: cQRemoteObjectHostVTable
  metaObject*: QRemoteObjectHostmetaObjectProc
  metacast*: QRemoteObjectHostmetacastProc
  metacall*: QRemoteObjectHostmetacallProc
  hostUrl*: QRemoteObjectHosthostUrlProc
  setHostUrl*: QRemoteObjectHostsetHostUrlProc
  setName*: QRemoteObjectHostsetNameProc
  setRegistryUrl*: QRemoteObjectHostsetRegistryUrlProc
  timerEvent*: QRemoteObjectHosttimerEventProc
  event*: QRemoteObjectHosteventProc
  eventFilter*: QRemoteObjectHosteventFilterProc
  childEvent*: QRemoteObjectHostchildEventProc
  customEvent*: QRemoteObjectHostcustomEventProc
  connectNotify*: QRemoteObjectHostconnectNotifyProc
  disconnectNotify*: QRemoteObjectHostdisconnectNotifyProc

proc QRemoteObjectHostmetaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectHost_virtualbase_metaObject(self.h), owned: false)

proc QRemoteObjectHostmetacast*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, param1: cstring): pointer =
  fcQRemoteObjectHost_virtualbase_metacast(self.h, param1)

proc QRemoteObjectHostmetacall*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectHost_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRemoteObjectHosthostUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQRemoteObjectHost_virtualbase_hostUrl(self.h), owned: true)

proc QRemoteObjectHostsetHostUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool =
  fcQRemoteObjectHost_virtualbase_setHostUrl(self.h, hostAddress.h, cint(allowedSchemas))

proc QRemoteObjectHostsetName*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, name: openArray[char]): void =
  fcQRemoteObjectHost_virtualbase_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc QRemoteObjectHostsetRegistryUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, registryAddress: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectHost_virtualbase_setRegistryUrl(self.h, registryAddress.h)

proc QRemoteObjectHosttimerEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQRemoteObjectHost_virtualbase_timerEvent(self.h, param1.h)

proc QRemoteObjectHostevent*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectHost_virtualbase_event(self.h, event.h)

proc QRemoteObjectHosteventFilter*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectHost_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRemoteObjectHostchildEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRemoteObjectHost_virtualbase_childEvent(self.h, event.h)

proc QRemoteObjectHostcustomEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, event: gen_qcoreevent_types.QEvent): void =
  fcQRemoteObjectHost_virtualbase_customEvent(self.h, event.h)

proc QRemoteObjectHostconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectHost_virtualbase_connectNotify(self.h, signal.h)

proc QRemoteObjectHostdisconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectHost_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRemoteObjectHost_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectHost_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRemoteObjectHost_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectHost_vtable_callback_hostUrl(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  var virtualReturn = vtbl[].hostUrl(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectHost_vtable_callback_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: hostAddress, owned: false)
  let slotval2 = cint(allowedSchemas)
  var virtualReturn = vtbl[].setHostUrl(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectHost_vtable_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  vtbl[].setName(self, slotval1)

proc fcQRemoteObjectHost_vtable_callback_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: registryAddress, owned: false)
  var virtualReturn = vtbl[].setRegistryUrl(self, slotval1)
  virtualReturn

proc fcQRemoteObjectHost_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRemoteObjectHost_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRemoteObjectHost_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectHost_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRemoteObjectHost_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRemoteObjectHost_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRemoteObjectHost_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
  let self = QRemoteObjectHost(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRemoteObjectHost* {.inheritable.} = ref object of QRemoteObjectHost
  vtbl*: cQRemoteObjectHostVTable

method metaObject*(self: VirtualQRemoteObjectHost): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRemoteObjectHostmetaObject(self[])
method metacast*(self: VirtualQRemoteObjectHost, param1: cstring): pointer {.base.} =
  QRemoteObjectHostmetacast(self[], param1)
method metacall*(self: VirtualQRemoteObjectHost, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRemoteObjectHostmetacall(self[], param1, param2, param3)
method hostUrl*(self: VirtualQRemoteObjectHost): gen_qurl_types.QUrl {.base.} =
  QRemoteObjectHosthostUrl(self[])
method setHostUrl*(self: VirtualQRemoteObjectHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool {.base.} =
  QRemoteObjectHostsetHostUrl(self[], hostAddress, allowedSchemas)
method setName*(self: VirtualQRemoteObjectHost, name: openArray[char]): void {.base.} =
  QRemoteObjectHostsetName(self[], name)
method setRegistryUrl*(self: VirtualQRemoteObjectHost, registryAddress: gen_qurl_types.QUrl): bool {.base.} =
  QRemoteObjectHostsetRegistryUrl(self[], registryAddress)
method timerEvent*(self: VirtualQRemoteObjectHost, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRemoteObjectHosttimerEvent(self[], param1)
method event*(self: VirtualQRemoteObjectHost, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectHostevent(self[], event)
method eventFilter*(self: VirtualQRemoteObjectHost, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectHosteventFilter(self[], watched, event)
method childEvent*(self: VirtualQRemoteObjectHost, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRemoteObjectHostchildEvent(self[], event)
method customEvent*(self: VirtualQRemoteObjectHost, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRemoteObjectHostcustomEvent(self[], event)
method connectNotify*(self: VirtualQRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectHostconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectHostdisconnectNotify(self[], signal)

proc fcQRemoteObjectHost_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectHost_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRemoteObjectHost_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectHost_method_callback_hostUrl(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  var virtualReturn = inst.hostUrl()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectHost_method_callback_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qurl_types.QUrl(h: hostAddress, owned: false)
  let slotval2 = cint(allowedSchemas)
  var virtualReturn = inst.setHostUrl(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectHost_method_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  inst.setName(slotval1)

proc fcQRemoteObjectHost_method_callback_setRegistryUrl(self: pointer, registryAddress: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qurl_types.QUrl(h: registryAddress, owned: false)
  var virtualReturn = inst.setRegistryUrl(slotval1)
  virtualReturn

proc fcQRemoteObjectHost_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQRemoteObjectHost_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRemoteObjectHost_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectHost_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRemoteObjectHost_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRemoteObjectHost_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRemoteObjectHost_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectHost](fcQRemoteObjectHost_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectHost_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectnode_types.QRemoteObjectHost): cint =
  fcQRemoteObjectHost_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, signal: cstring): cint =
  fcQRemoteObjectHost_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectnode_types.QRemoteObjectHost, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectHost_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), address.h), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), address.h, parent.h), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, registryAddress: gen_qurl_types.QUrl,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new5(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), address.h, registryAddress.h), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, registryAddress: gen_qurl_types.QUrl, allowedSchemas: cint,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new6(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), address.h, registryAddress.h, cint(allowedSchemas)), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, registryAddress: gen_qurl_types.QUrl, allowedSchemas: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectHost =
  let vtbl = if vtbl == nil: new QRemoteObjectHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectHostVTable](fcQRemoteObjectHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectHost_vtable_callback_metacall
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectHost_vtable_callback_setName
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectHost(h: fcQRemoteObjectHost_new7(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), address.h, registryAddress.h, cint(allowedSchemas), parent.h), owned: true)
  fcQRemoteObjectHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRemoteObjectHost_mvtbl = cQRemoteObjectHostVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRemoteObjectHost()[])](self.fcQRemoteObjectHost_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRemoteObjectHost_method_callback_metaObject,
  metacast: fcQRemoteObjectHost_method_callback_metacast,
  metacall: fcQRemoteObjectHost_method_callback_metacall,
  hostUrl: fcQRemoteObjectHost_method_callback_hostUrl,
  setHostUrl: fcQRemoteObjectHost_method_callback_setHostUrl,
  setName: fcQRemoteObjectHost_method_callback_setName,
  setRegistryUrl: fcQRemoteObjectHost_method_callback_setRegistryUrl,
  timerEvent: fcQRemoteObjectHost_method_callback_timerEvent,
  event: fcQRemoteObjectHost_method_callback_event,
  eventFilter: fcQRemoteObjectHost_method_callback_eventFilter,
  childEvent: fcQRemoteObjectHost_method_callback_childEvent,
  customEvent: fcQRemoteObjectHost_method_callback_customEvent,
  connectNotify: fcQRemoteObjectHost_method_callback_connectNotify,
  disconnectNotify: fcQRemoteObjectHost_method_callback_disconnectNotify,
)
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)))
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new2(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)), address.h)
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new3(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)), address.h, parent.h)
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new4(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, registryAddress: gen_qurl_types.QUrl,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new5(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)), address.h, registryAddress.h)
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, registryAddress: gen_qurl_types.QUrl, allowedSchemas: cint,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new6(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)), address.h, registryAddress.h, cint(allowedSchemas))
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectHost,
    address: gen_qurl_types.QUrl, registryAddress: gen_qurl_types.QUrl, allowedSchemas: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectHost_new7(addr(cQRemoteObjectHost_mvtbl), csize_t(sizeof(pointer)), address.h, registryAddress.h, cint(allowedSchemas), parent.h)
  fcQRemoteObjectHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qremoteobjectnode_types.QRemoteObjectHost): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectHost_staticMetaObject())
proc metaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectRegistryHost_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, param1: cstring): pointer =
  fcQRemoteObjectRegistryHost_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectRegistryHost_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, s: cstring): string =
  let v_ms = fcQRemoteObjectRegistryHost_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setRegistryUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, registryUrl: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectRegistryHost_setRegistryUrl(self.h, registryUrl.h)

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectRegistryHost_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectRegistryHost_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRemoteObjectRegistryHostmetaObjectProc* = proc(self: QRemoteObjectRegistryHost): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostmetacastProc* = proc(self: QRemoteObjectRegistryHost, param1: cstring): pointer {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostmetacallProc* = proc(self: QRemoteObjectRegistryHost, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostsetRegistryUrlProc* = proc(self: QRemoteObjectRegistryHost, registryUrl: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostsetNameProc* = proc(self: QRemoteObjectRegistryHost, name: openArray[char]): void {.raises: [], gcsafe.}
type QRemoteObjectRegistryHosthostUrlProc* = proc(self: QRemoteObjectRegistryHost): gen_qurl_types.QUrl {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostsetHostUrlProc* = proc(self: QRemoteObjectRegistryHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool {.raises: [], gcsafe.}
type QRemoteObjectRegistryHosttimerEventProc* = proc(self: QRemoteObjectRegistryHost, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRemoteObjectRegistryHosteventProc* = proc(self: QRemoteObjectRegistryHost, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectRegistryHosteventFilterProc* = proc(self: QRemoteObjectRegistryHost, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostchildEventProc* = proc(self: QRemoteObjectRegistryHost, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostcustomEventProc* = proc(self: QRemoteObjectRegistryHost, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostconnectNotifyProc* = proc(self: QRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRemoteObjectRegistryHostdisconnectNotifyProc* = proc(self: QRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRemoteObjectRegistryHostVTable* {.inheritable, pure.} = object
  vtbl: cQRemoteObjectRegistryHostVTable
  metaObject*: QRemoteObjectRegistryHostmetaObjectProc
  metacast*: QRemoteObjectRegistryHostmetacastProc
  metacall*: QRemoteObjectRegistryHostmetacallProc
  setRegistryUrl*: QRemoteObjectRegistryHostsetRegistryUrlProc
  setName*: QRemoteObjectRegistryHostsetNameProc
  hostUrl*: QRemoteObjectRegistryHosthostUrlProc
  setHostUrl*: QRemoteObjectRegistryHostsetHostUrlProc
  timerEvent*: QRemoteObjectRegistryHosttimerEventProc
  event*: QRemoteObjectRegistryHosteventProc
  eventFilter*: QRemoteObjectRegistryHosteventFilterProc
  childEvent*: QRemoteObjectRegistryHostchildEventProc
  customEvent*: QRemoteObjectRegistryHostcustomEventProc
  connectNotify*: QRemoteObjectRegistryHostconnectNotifyProc
  disconnectNotify*: QRemoteObjectRegistryHostdisconnectNotifyProc

proc QRemoteObjectRegistryHostmetaObject*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectRegistryHost_virtualbase_metaObject(self.h), owned: false)

proc QRemoteObjectRegistryHostmetacast*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, param1: cstring): pointer =
  fcQRemoteObjectRegistryHost_virtualbase_metacast(self.h, param1)

proc QRemoteObjectRegistryHostmetacall*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectRegistryHost_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRemoteObjectRegistryHostsetRegistryUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, registryUrl: gen_qurl_types.QUrl): bool =
  fcQRemoteObjectRegistryHost_virtualbase_setRegistryUrl(self.h, registryUrl.h)

proc QRemoteObjectRegistryHostsetName*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, name: openArray[char]): void =
  fcQRemoteObjectRegistryHost_virtualbase_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc QRemoteObjectRegistryHosthostUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQRemoteObjectRegistryHost_virtualbase_hostUrl(self.h), owned: true)

proc QRemoteObjectRegistryHostsetHostUrl*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool =
  fcQRemoteObjectRegistryHost_virtualbase_setHostUrl(self.h, hostAddress.h, cint(allowedSchemas))

proc QRemoteObjectRegistryHosttimerEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQRemoteObjectRegistryHost_virtualbase_timerEvent(self.h, param1.h)

proc QRemoteObjectRegistryHostevent*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectRegistryHost_virtualbase_event(self.h, event.h)

proc QRemoteObjectRegistryHosteventFilter*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectRegistryHost_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRemoteObjectRegistryHostchildEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRemoteObjectRegistryHost_virtualbase_childEvent(self.h, event.h)

proc QRemoteObjectRegistryHostcustomEvent*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, event: gen_qcoreevent_types.QEvent): void =
  fcQRemoteObjectRegistryHost_virtualbase_customEvent(self.h, event.h)

proc QRemoteObjectRegistryHostconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectRegistryHost_virtualbase_connectNotify(self.h, signal.h)

proc QRemoteObjectRegistryHostdisconnectNotify*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectRegistryHost_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRemoteObjectRegistryHost_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectRegistryHost_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRemoteObjectRegistryHost_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectRegistryHost_vtable_callback_setRegistryUrl(self: pointer, registryUrl: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: registryUrl, owned: false)
  var virtualReturn = vtbl[].setRegistryUrl(self, slotval1)
  virtualReturn

proc fcQRemoteObjectRegistryHost_vtable_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  vtbl[].setName(self, slotval1)

proc fcQRemoteObjectRegistryHost_vtable_callback_hostUrl(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  var virtualReturn = vtbl[].hostUrl(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectRegistryHost_vtable_callback_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: hostAddress, owned: false)
  let slotval2 = cint(allowedSchemas)
  var virtualReturn = vtbl[].setHostUrl(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectRegistryHost_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRemoteObjectRegistryHost_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRemoteObjectRegistryHost_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectRegistryHost_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRemoteObjectRegistryHost_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRemoteObjectRegistryHost_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRemoteObjectRegistryHost_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
  let self = QRemoteObjectRegistryHost(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRemoteObjectRegistryHost* {.inheritable.} = ref object of QRemoteObjectRegistryHost
  vtbl*: cQRemoteObjectRegistryHostVTable

method metaObject*(self: VirtualQRemoteObjectRegistryHost): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRemoteObjectRegistryHostmetaObject(self[])
method metacast*(self: VirtualQRemoteObjectRegistryHost, param1: cstring): pointer {.base.} =
  QRemoteObjectRegistryHostmetacast(self[], param1)
method metacall*(self: VirtualQRemoteObjectRegistryHost, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRemoteObjectRegistryHostmetacall(self[], param1, param2, param3)
method setRegistryUrl*(self: VirtualQRemoteObjectRegistryHost, registryUrl: gen_qurl_types.QUrl): bool {.base.} =
  QRemoteObjectRegistryHostsetRegistryUrl(self[], registryUrl)
method setName*(self: VirtualQRemoteObjectRegistryHost, name: openArray[char]): void {.base.} =
  QRemoteObjectRegistryHostsetName(self[], name)
method hostUrl*(self: VirtualQRemoteObjectRegistryHost): gen_qurl_types.QUrl {.base.} =
  QRemoteObjectRegistryHosthostUrl(self[])
method setHostUrl*(self: VirtualQRemoteObjectRegistryHost, hostAddress: gen_qurl_types.QUrl, allowedSchemas: cint): bool {.base.} =
  QRemoteObjectRegistryHostsetHostUrl(self[], hostAddress, allowedSchemas)
method timerEvent*(self: VirtualQRemoteObjectRegistryHost, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRemoteObjectRegistryHosttimerEvent(self[], param1)
method event*(self: VirtualQRemoteObjectRegistryHost, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectRegistryHostevent(self[], event)
method eventFilter*(self: VirtualQRemoteObjectRegistryHost, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectRegistryHosteventFilter(self[], watched, event)
method childEvent*(self: VirtualQRemoteObjectRegistryHost, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRemoteObjectRegistryHostchildEvent(self[], event)
method customEvent*(self: VirtualQRemoteObjectRegistryHost, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRemoteObjectRegistryHostcustomEvent(self[], event)
method connectNotify*(self: VirtualQRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectRegistryHostconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectRegistryHostdisconnectNotify(self[], signal)

proc fcQRemoteObjectRegistryHost_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectRegistryHost_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRemoteObjectRegistryHost_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectRegistryHost_method_callback_setRegistryUrl(self: pointer, registryUrl: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qurl_types.QUrl(h: registryUrl, owned: false)
  var virtualReturn = inst.setRegistryUrl(slotval1)
  virtualReturn

proc fcQRemoteObjectRegistryHost_method_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  inst.setName(slotval1)

proc fcQRemoteObjectRegistryHost_method_callback_hostUrl(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  var virtualReturn = inst.hostUrl()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectRegistryHost_method_callback_setHostUrl(self: pointer, hostAddress: pointer, allowedSchemas: cint): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qurl_types.QUrl(h: hostAddress, owned: false)
  let slotval2 = cint(allowedSchemas)
  var virtualReturn = inst.setHostUrl(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectRegistryHost_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQRemoteObjectRegistryHost_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRemoteObjectRegistryHost_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectRegistryHost_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRemoteObjectRegistryHost_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRemoteObjectRegistryHost_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRemoteObjectRegistryHost_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectRegistryHost](fcQRemoteObjectRegistryHost_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectRegistryHost_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost): cint =
  fcQRemoteObjectRegistryHost_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, signal: cstring): cint =
  fcQRemoteObjectRegistryHost_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectnode_types.QRemoteObjectRegistryHost, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectRegistryHost_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost,
    vtbl: ref QRemoteObjectRegistryHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectRegistryHost =
  let vtbl = if vtbl == nil: new QRemoteObjectRegistryHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectRegistryHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectRegistryHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectRegistryHost_vtable_callback_metacall
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectRegistryHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectRegistryHost_vtable_callback_setName
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectRegistryHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectRegistryHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectRegistryHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectRegistryHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectRegistryHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectRegistryHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectRegistryHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectRegistryHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectRegistryHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectRegistryHost(h: fcQRemoteObjectRegistryHost_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQRemoteObjectRegistryHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost,
    registryAddress: gen_qurl_types.QUrl,
    vtbl: ref QRemoteObjectRegistryHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectRegistryHost =
  let vtbl = if vtbl == nil: new QRemoteObjectRegistryHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectRegistryHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectRegistryHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectRegistryHost_vtable_callback_metacall
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectRegistryHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectRegistryHost_vtable_callback_setName
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectRegistryHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectRegistryHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectRegistryHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectRegistryHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectRegistryHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectRegistryHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectRegistryHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectRegistryHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectRegistryHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectRegistryHost(h: fcQRemoteObjectRegistryHost_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), registryAddress.h), owned: true)
  fcQRemoteObjectRegistryHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost,
    registryAddress: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectRegistryHostVTable = nil): gen_qremoteobjectnode_types.QRemoteObjectRegistryHost =
  let vtbl = if vtbl == nil: new QRemoteObjectRegistryHostVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectRegistryHostVTable](fcQRemoteObjectRegistryHost_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectRegistryHost_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectRegistryHost_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectRegistryHost_vtable_callback_metacall
  if not isNil(vtbl[].setRegistryUrl):
    vtbl[].vtbl.setRegistryUrl = fcQRemoteObjectRegistryHost_vtable_callback_setRegistryUrl
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQRemoteObjectRegistryHost_vtable_callback_setName
  if not isNil(vtbl[].hostUrl):
    vtbl[].vtbl.hostUrl = fcQRemoteObjectRegistryHost_vtable_callback_hostUrl
  if not isNil(vtbl[].setHostUrl):
    vtbl[].vtbl.setHostUrl = fcQRemoteObjectRegistryHost_vtable_callback_setHostUrl
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectRegistryHost_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectRegistryHost_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectRegistryHost_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectRegistryHost_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectRegistryHost_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectRegistryHost_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectRegistryHost_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectnode_types.QRemoteObjectRegistryHost(h: fcQRemoteObjectRegistryHost_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), registryAddress.h, parent.h), owned: true)
  fcQRemoteObjectRegistryHost_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRemoteObjectRegistryHost_mvtbl = cQRemoteObjectRegistryHostVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRemoteObjectRegistryHost()[])](self.fcQRemoteObjectRegistryHost_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRemoteObjectRegistryHost_method_callback_metaObject,
  metacast: fcQRemoteObjectRegistryHost_method_callback_metacast,
  metacall: fcQRemoteObjectRegistryHost_method_callback_metacall,
  setRegistryUrl: fcQRemoteObjectRegistryHost_method_callback_setRegistryUrl,
  setName: fcQRemoteObjectRegistryHost_method_callback_setName,
  hostUrl: fcQRemoteObjectRegistryHost_method_callback_hostUrl,
  setHostUrl: fcQRemoteObjectRegistryHost_method_callback_setHostUrl,
  timerEvent: fcQRemoteObjectRegistryHost_method_callback_timerEvent,
  event: fcQRemoteObjectRegistryHost_method_callback_event,
  eventFilter: fcQRemoteObjectRegistryHost_method_callback_eventFilter,
  childEvent: fcQRemoteObjectRegistryHost_method_callback_childEvent,
  customEvent: fcQRemoteObjectRegistryHost_method_callback_customEvent,
  connectNotify: fcQRemoteObjectRegistryHost_method_callback_connectNotify,
  disconnectNotify: fcQRemoteObjectRegistryHost_method_callback_disconnectNotify,
)
proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost,
    inst: VirtualQRemoteObjectRegistryHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectRegistryHost_new(addr(cQRemoteObjectRegistryHost_mvtbl), csize_t(sizeof(pointer)))
  fcQRemoteObjectRegistryHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost,
    registryAddress: gen_qurl_types.QUrl,
    inst: VirtualQRemoteObjectRegistryHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectRegistryHost_new2(addr(cQRemoteObjectRegistryHost_mvtbl), csize_t(sizeof(pointer)), registryAddress.h)
  fcQRemoteObjectRegistryHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost,
    registryAddress: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectRegistryHost) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectRegistryHost_new3(addr(cQRemoteObjectRegistryHost_mvtbl), csize_t(sizeof(pointer)), registryAddress.h, parent.h)
  fcQRemoteObjectRegistryHost_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qremoteobjectnode_types.QRemoteObjectRegistryHost): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectRegistryHost_staticMetaObject())
