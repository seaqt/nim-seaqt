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


import ./gen_qconnectionfactories_types
export gen_qconnectionfactories_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  std/sets
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQtROIoDeviceBase*{.exportc: "QtROIoDeviceBase", incompleteStruct.} = object
type cQtROServerIoDevice*{.exportc: "QtROServerIoDevice", incompleteStruct.} = object
type cQConnectionAbstractServer*{.exportc: "QConnectionAbstractServer", incompleteStruct.} = object
type cQtROClientIoDevice*{.exportc: "QtROClientIoDevice", incompleteStruct.} = object
type cQtROServerFactory*{.exportc: "QtROServerFactory", incompleteStruct.} = object
type cQtROClientFactory*{.exportc: "QtROClientFactory", incompleteStruct.} = object

proc fcQtROIoDeviceBase_metaObject(self: pointer): pointer {.importc: "QtROIoDeviceBase_metaObject".}
proc fcQtROIoDeviceBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QtROIoDeviceBase_metacast".}
proc fcQtROIoDeviceBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtROIoDeviceBase_metacall".}
proc fcQtROIoDeviceBase_trS(s: cstring): struct_seaqt_string {.importc: "QtROIoDeviceBase_tr_s".}
proc fcQtROIoDeviceBase_read(self: pointer, param1: ptr cint, param2: struct_seaqt_string): bool {.importc: "QtROIoDeviceBase_read".}
proc fcQtROIoDeviceBase_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.importc: "QtROIoDeviceBase_write_QByteArray".}
proc fcQtROIoDeviceBase_write_QByteArrayQint64(self: pointer, data: struct_seaqt_string, param2: clonglong): void {.importc: "QtROIoDeviceBase_write_QByteArray_qint64".}
proc fcQtROIoDeviceBase_isOpen(self: pointer): bool {.importc: "QtROIoDeviceBase_isOpen".}
proc fcQtROIoDeviceBase_close(self: pointer): void {.importc: "QtROIoDeviceBase_close".}
proc fcQtROIoDeviceBase_bytesAvailable(self: pointer): clonglong {.importc: "QtROIoDeviceBase_bytesAvailable".}
proc fcQtROIoDeviceBase_connection(self: pointer): pointer {.importc: "QtROIoDeviceBase_connection".}
proc fcQtROIoDeviceBase_initializeDataStream(self: pointer): void {.importc: "QtROIoDeviceBase_initializeDataStream".}
proc fcQtROIoDeviceBase_isClosing(self: pointer): bool {.importc: "QtROIoDeviceBase_isClosing".}
proc fcQtROIoDeviceBase_addSource(self: pointer, param1: struct_seaqt_string): void {.importc: "QtROIoDeviceBase_addSource".}
proc fcQtROIoDeviceBase_removeSource(self: pointer, param1: struct_seaqt_string): void {.importc: "QtROIoDeviceBase_removeSource".}
proc fcQtROIoDeviceBase_remoteObjects(self: pointer): struct_seaqt_array {.importc: "QtROIoDeviceBase_remoteObjects".}
proc fcQtROIoDeviceBase_readyRead(self: pointer): void {.importc: "QtROIoDeviceBase_readyRead".}
proc fcQtROIoDeviceBase_connect_readyRead(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QtROIoDeviceBase_connect_readyRead".}
proc fcQtROIoDeviceBase_disconnected(self: pointer): void {.importc: "QtROIoDeviceBase_disconnected".}
proc fcQtROIoDeviceBase_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QtROIoDeviceBase_connect_disconnected".}
proc fcQtROIoDeviceBase_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QtROIoDeviceBase_tr_s_c".}
proc fcQtROIoDeviceBase_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QtROIoDeviceBase_tr_s_c_n".}
proc fcQtROIoDeviceBase_vdata(self: pointer): ptr pointer {.importc: "QtROIoDeviceBase_vdata".}
proc fvdata_cQtROIoDeviceBase(self: pointer): pointer {.importc: "vdata_QtROIoDeviceBase".}

type cQtROIoDeviceBaseVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  write_QByteArray*: proc(self: pointer, data: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  write_QByteArrayQint64*: proc(self: pointer, data: struct_seaqt_string, param2: clonglong): void {.cdecl, raises: [], gcsafe.}
  isOpen*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  connection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  deviceType*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  doClose*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQtROIoDeviceBase_virtualbase_metaObject(self: pointer): pointer {.importc: "QtROIoDeviceBase_virtualbase_metaObject".}
proc fcQtROIoDeviceBase_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QtROIoDeviceBase_virtualbase_metacast".}
proc fcQtROIoDeviceBase_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtROIoDeviceBase_virtualbase_metacall".}
proc fcQtROIoDeviceBase_virtualbase_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.importc: "QtROIoDeviceBase_virtualbase_write_QByteArray".}
proc fcQtROIoDeviceBase_virtualbase_write_QByteArrayQint64(self: pointer, data: struct_seaqt_string, param2: clonglong): void {.importc: "QtROIoDeviceBase_virtualbase_write_QByteArray_qint64".}
proc fcQtROIoDeviceBase_virtualbase_isOpen(self: pointer): bool {.importc: "QtROIoDeviceBase_virtualbase_isOpen".}
proc fcQtROIoDeviceBase_virtualbase_close(self: pointer): void {.importc: "QtROIoDeviceBase_virtualbase_close".}
proc fcQtROIoDeviceBase_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QtROIoDeviceBase_virtualbase_bytesAvailable".}
proc fcQtROIoDeviceBase_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QtROIoDeviceBase_virtualbase_event".}
proc fcQtROIoDeviceBase_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QtROIoDeviceBase_virtualbase_eventFilter".}
proc fcQtROIoDeviceBase_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QtROIoDeviceBase_virtualbase_timerEvent".}
proc fcQtROIoDeviceBase_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QtROIoDeviceBase_virtualbase_childEvent".}
proc fcQtROIoDeviceBase_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QtROIoDeviceBase_virtualbase_customEvent".}
proc fcQtROIoDeviceBase_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QtROIoDeviceBase_virtualbase_connectNotify".}
proc fcQtROIoDeviceBase_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QtROIoDeviceBase_virtualbase_disconnectNotify".}
proc fcQtROIoDeviceBase_protectedbase_sender(self: pointer): pointer {.importc: "QtROIoDeviceBase_protectedbase_sender".}
proc fcQtROIoDeviceBase_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QtROIoDeviceBase_protectedbase_senderSignalIndex".}
proc fcQtROIoDeviceBase_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QtROIoDeviceBase_protectedbase_receivers".}
proc fcQtROIoDeviceBase_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QtROIoDeviceBase_protectedbase_isSignalConnected".}
proc fcQtROIoDeviceBase_new(vtbl: pointer, vdata: csize_t): ptr cQtROIoDeviceBase {.importc: "QtROIoDeviceBase_new".}
proc fcQtROIoDeviceBase_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQtROIoDeviceBase {.importc: "QtROIoDeviceBase_new_parent".}
proc fcQtROIoDeviceBase_staticMetaObject(): pointer {.importc: "QtROIoDeviceBase_staticMetaObject".}
proc fcQtROServerIoDevice_metaObject(self: pointer): pointer {.importc: "QtROServerIoDevice_metaObject".}
proc fcQtROServerIoDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QtROServerIoDevice_metacast".}
proc fcQtROServerIoDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtROServerIoDevice_metacall".}
proc fcQtROServerIoDevice_trS(s: cstring): struct_seaqt_string {.importc: "QtROServerIoDevice_tr_s".}
proc fcQtROServerIoDevice_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QtROServerIoDevice_tr_s_c".}
proc fcQtROServerIoDevice_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QtROServerIoDevice_tr_s_c_n".}
proc fcQtROServerIoDevice_vdata(self: pointer): ptr pointer {.importc: "QtROServerIoDevice_vdata".}
proc fvdata_cQtROServerIoDevice(self: pointer): pointer {.importc: "vdata_QtROServerIoDevice".}

type cQtROServerIoDeviceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  deviceType*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  write_QByteArray*: proc(self: pointer, data: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  isOpen*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  connection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doClose*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQtROServerIoDevice_virtualbase_metaObject(self: pointer): pointer {.importc: "QtROServerIoDevice_virtualbase_metaObject".}
proc fcQtROServerIoDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QtROServerIoDevice_virtualbase_metacast".}
proc fcQtROServerIoDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtROServerIoDevice_virtualbase_metacall".}
proc fcQtROServerIoDevice_virtualbase_deviceType(self: pointer): struct_seaqt_string {.importc: "QtROServerIoDevice_virtualbase_deviceType".}
proc fcQtROServerIoDevice_virtualbase_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.importc: "QtROServerIoDevice_virtualbase_write_QByteArray".}
proc fcQtROServerIoDevice_virtualbase_isOpen(self: pointer): bool {.importc: "QtROServerIoDevice_virtualbase_isOpen".}
proc fcQtROServerIoDevice_virtualbase_close(self: pointer): void {.importc: "QtROServerIoDevice_virtualbase_close".}
proc fcQtROServerIoDevice_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QtROServerIoDevice_virtualbase_bytesAvailable".}
proc fcQtROServerIoDevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QtROServerIoDevice_virtualbase_event".}
proc fcQtROServerIoDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QtROServerIoDevice_virtualbase_eventFilter".}
proc fcQtROServerIoDevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QtROServerIoDevice_virtualbase_timerEvent".}
proc fcQtROServerIoDevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QtROServerIoDevice_virtualbase_childEvent".}
proc fcQtROServerIoDevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QtROServerIoDevice_virtualbase_customEvent".}
proc fcQtROServerIoDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QtROServerIoDevice_virtualbase_connectNotify".}
proc fcQtROServerIoDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QtROServerIoDevice_virtualbase_disconnectNotify".}
proc fcQtROServerIoDevice_protectedbase_sender(self: pointer): pointer {.importc: "QtROServerIoDevice_protectedbase_sender".}
proc fcQtROServerIoDevice_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QtROServerIoDevice_protectedbase_senderSignalIndex".}
proc fcQtROServerIoDevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QtROServerIoDevice_protectedbase_receivers".}
proc fcQtROServerIoDevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QtROServerIoDevice_protectedbase_isSignalConnected".}
proc fcQtROServerIoDevice_new(vtbl: pointer, vdata: csize_t): ptr cQtROServerIoDevice {.importc: "QtROServerIoDevice_new".}
proc fcQtROServerIoDevice_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQtROServerIoDevice {.importc: "QtROServerIoDevice_new_parent".}
proc fcQtROServerIoDevice_staticMetaObject(): pointer {.importc: "QtROServerIoDevice_staticMetaObject".}
proc fcQConnectionAbstractServer_metaObject(self: pointer): pointer {.importc: "QConnectionAbstractServer_metaObject".}
proc fcQConnectionAbstractServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QConnectionAbstractServer_metacast".}
proc fcQConnectionAbstractServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConnectionAbstractServer_metacall".}
proc fcQConnectionAbstractServer_trS(s: cstring): struct_seaqt_string {.importc: "QConnectionAbstractServer_tr_s".}
proc fcQConnectionAbstractServer_hasPendingConnections(self: pointer): bool {.importc: "QConnectionAbstractServer_hasPendingConnections".}
proc fcQConnectionAbstractServer_nextPendingConnection(self: pointer): pointer {.importc: "QConnectionAbstractServer_nextPendingConnection".}
proc fcQConnectionAbstractServer_address(self: pointer): pointer {.importc: "QConnectionAbstractServer_address".}
proc fcQConnectionAbstractServer_listen(self: pointer, address: pointer): bool {.importc: "QConnectionAbstractServer_listen".}
proc fcQConnectionAbstractServer_serverError(self: pointer): cint {.importc: "QConnectionAbstractServer_serverError".}
proc fcQConnectionAbstractServer_close(self: pointer): void {.importc: "QConnectionAbstractServer_close".}
proc fcQConnectionAbstractServer_newConnection(self: pointer): void {.importc: "QConnectionAbstractServer_newConnection".}
proc fcQConnectionAbstractServer_connect_newConnection(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QConnectionAbstractServer_connect_newConnection".}
proc fcQConnectionAbstractServer_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QConnectionAbstractServer_tr_s_c".}
proc fcQConnectionAbstractServer_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QConnectionAbstractServer_tr_s_c_n".}
proc fcQConnectionAbstractServer_vdata(self: pointer): ptr pointer {.importc: "QConnectionAbstractServer_vdata".}
proc fvdata_cQConnectionAbstractServer(self: pointer): pointer {.importc: "vdata_QConnectionAbstractServer".}

type cQConnectionAbstractServerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasPendingConnections*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  address*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  listen*: proc(self: pointer, address: pointer): bool {.cdecl, raises: [], gcsafe.}
  serverError*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  configureNewConnection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQConnectionAbstractServer_virtualbase_metaObject(self: pointer): pointer {.importc: "QConnectionAbstractServer_virtualbase_metaObject".}
proc fcQConnectionAbstractServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QConnectionAbstractServer_virtualbase_metacast".}
proc fcQConnectionAbstractServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConnectionAbstractServer_virtualbase_metacall".}
proc fcQConnectionAbstractServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QConnectionAbstractServer_virtualbase_event".}
proc fcQConnectionAbstractServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QConnectionAbstractServer_virtualbase_eventFilter".}
proc fcQConnectionAbstractServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QConnectionAbstractServer_virtualbase_timerEvent".}
proc fcQConnectionAbstractServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QConnectionAbstractServer_virtualbase_childEvent".}
proc fcQConnectionAbstractServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QConnectionAbstractServer_virtualbase_customEvent".}
proc fcQConnectionAbstractServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QConnectionAbstractServer_virtualbase_connectNotify".}
proc fcQConnectionAbstractServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QConnectionAbstractServer_virtualbase_disconnectNotify".}
proc fcQConnectionAbstractServer_protectedbase_sender(self: pointer): pointer {.importc: "QConnectionAbstractServer_protectedbase_sender".}
proc fcQConnectionAbstractServer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QConnectionAbstractServer_protectedbase_senderSignalIndex".}
proc fcQConnectionAbstractServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QConnectionAbstractServer_protectedbase_receivers".}
proc fcQConnectionAbstractServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QConnectionAbstractServer_protectedbase_isSignalConnected".}
proc fcQConnectionAbstractServer_new(vtbl: pointer, vdata: csize_t): ptr cQConnectionAbstractServer {.importc: "QConnectionAbstractServer_new".}
proc fcQConnectionAbstractServer_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQConnectionAbstractServer {.importc: "QConnectionAbstractServer_new_parent".}
proc fcQConnectionAbstractServer_staticMetaObject(): pointer {.importc: "QConnectionAbstractServer_staticMetaObject".}
proc fcQtROClientIoDevice_metaObject(self: pointer): pointer {.importc: "QtROClientIoDevice_metaObject".}
proc fcQtROClientIoDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QtROClientIoDevice_metacast".}
proc fcQtROClientIoDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtROClientIoDevice_metacall".}
proc fcQtROClientIoDevice_trS(s: cstring): struct_seaqt_string {.importc: "QtROClientIoDevice_tr_s".}
proc fcQtROClientIoDevice_disconnectFromServer(self: pointer): void {.importc: "QtROClientIoDevice_disconnectFromServer".}
proc fcQtROClientIoDevice_connectToServer(self: pointer): void {.importc: "QtROClientIoDevice_connectToServer".}
proc fcQtROClientIoDevice_url(self: pointer): pointer {.importc: "QtROClientIoDevice_url".}
proc fcQtROClientIoDevice_shouldReconnect(self: pointer, param1: pointer): void {.importc: "QtROClientIoDevice_shouldReconnect".}
proc fcQtROClientIoDevice_connect_shouldReconnect(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QtROClientIoDevice_connect_shouldReconnect".}
proc fcQtROClientIoDevice_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QtROClientIoDevice_tr_s_c".}
proc fcQtROClientIoDevice_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QtROClientIoDevice_tr_s_c_n".}
proc fcQtROClientIoDevice_vdata(self: pointer): ptr pointer {.importc: "QtROClientIoDevice_vdata".}
proc fvdata_cQtROClientIoDevice(self: pointer): pointer {.importc: "vdata_QtROClientIoDevice".}

type cQtROClientIoDeviceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  connectToServer*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  doDisconnectFromServer*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  deviceType*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  write_QByteArray*: proc(self: pointer, data: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  isOpen*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  connection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doClose*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQtROClientIoDevice_virtualbase_metaObject(self: pointer): pointer {.importc: "QtROClientIoDevice_virtualbase_metaObject".}
proc fcQtROClientIoDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QtROClientIoDevice_virtualbase_metacast".}
proc fcQtROClientIoDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QtROClientIoDevice_virtualbase_metacall".}
proc fcQtROClientIoDevice_virtualbase_deviceType(self: pointer): struct_seaqt_string {.importc: "QtROClientIoDevice_virtualbase_deviceType".}
proc fcQtROClientIoDevice_virtualbase_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.importc: "QtROClientIoDevice_virtualbase_write_QByteArray".}
proc fcQtROClientIoDevice_virtualbase_isOpen(self: pointer): bool {.importc: "QtROClientIoDevice_virtualbase_isOpen".}
proc fcQtROClientIoDevice_virtualbase_close(self: pointer): void {.importc: "QtROClientIoDevice_virtualbase_close".}
proc fcQtROClientIoDevice_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QtROClientIoDevice_virtualbase_bytesAvailable".}
proc fcQtROClientIoDevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QtROClientIoDevice_virtualbase_event".}
proc fcQtROClientIoDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QtROClientIoDevice_virtualbase_eventFilter".}
proc fcQtROClientIoDevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QtROClientIoDevice_virtualbase_timerEvent".}
proc fcQtROClientIoDevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QtROClientIoDevice_virtualbase_childEvent".}
proc fcQtROClientIoDevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QtROClientIoDevice_virtualbase_customEvent".}
proc fcQtROClientIoDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QtROClientIoDevice_virtualbase_connectNotify".}
proc fcQtROClientIoDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QtROClientIoDevice_virtualbase_disconnectNotify".}
proc fcQtROClientIoDevice_protectedbase_setUrl(self: pointer, url: pointer): void {.importc: "QtROClientIoDevice_protectedbase_setUrl".}
proc fcQtROClientIoDevice_protectedbase_sender(self: pointer): pointer {.importc: "QtROClientIoDevice_protectedbase_sender".}
proc fcQtROClientIoDevice_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QtROClientIoDevice_protectedbase_senderSignalIndex".}
proc fcQtROClientIoDevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QtROClientIoDevice_protectedbase_receivers".}
proc fcQtROClientIoDevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QtROClientIoDevice_protectedbase_isSignalConnected".}
proc fcQtROClientIoDevice_new(vtbl: pointer, vdata: csize_t): ptr cQtROClientIoDevice {.importc: "QtROClientIoDevice_new".}
proc fcQtROClientIoDevice_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQtROClientIoDevice {.importc: "QtROClientIoDevice_new_parent".}
proc fcQtROClientIoDevice_staticMetaObject(): pointer {.importc: "QtROClientIoDevice_staticMetaObject".}
proc fcQtROServerFactory_instance(): pointer {.importc: "QtROServerFactory_instance".}
proc fcQtROServerFactory_createUrl(self: pointer, url: pointer): pointer {.importc: "QtROServerFactory_create_url".}
proc fcQtROServerFactory_isValid(self: pointer, url: pointer): bool {.importc: "QtROServerFactory_isValid".}
proc fcQtROServerFactory_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QtROServerFactory_operatorAssign".}
proc fcQtROServerFactory_createUrlParent(self: pointer, url: pointer, parent: pointer): pointer {.importc: "QtROServerFactory_create_url_parent".}
proc fcQtROServerFactory_new(fromVal: pointer): ptr cQtROServerFactory {.importc: "QtROServerFactory_new".}
proc fcQtROClientFactory_instance(): pointer {.importc: "QtROClientFactory_instance".}
proc fcQtROClientFactory_createUrl(self: pointer, url: pointer): pointer {.importc: "QtROClientFactory_create_url".}
proc fcQtROClientFactory_isValid(self: pointer, url: pointer): bool {.importc: "QtROClientFactory_isValid".}
proc fcQtROClientFactory_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QtROClientFactory_operatorAssign".}
proc fcQtROClientFactory_createUrlParent(self: pointer, url: pointer, parent: pointer): pointer {.importc: "QtROClientFactory_create_url_parent".}
proc fcQtROClientFactory_new(fromVal: pointer): ptr cQtROClientFactory {.importc: "QtROClientFactory_new".}

proc metaObject*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROIoDeviceBase_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: cstring): pointer =
  fcQtROIoDeviceBase_metacast(self.h, param1)

proc metacall*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: cint, param2: cint, param3: pointer): cint =
  fcQtROIoDeviceBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnectionfactories_types.QtROIoDeviceBase, s: cstring): string =
  let v_ms = fcQtROIoDeviceBase_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc read*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: ptr cint, param2: openArray[char]): bool =
  fcQtROIoDeviceBase_read(self.h, param1, struct_seaqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))))

proc write*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, data: openArray[byte]): void =
  fcQtROIoDeviceBase_write_QByteArray(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc write*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, data: openArray[byte], param2: clonglong): void =
  fcQtROIoDeviceBase_write_QByteArrayQint64(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), param2)

proc isOpen*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): bool =
  fcQtROIoDeviceBase_isOpen(self.h)

proc close*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): void =
  fcQtROIoDeviceBase_close(self.h)

proc bytesAvailable*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): clonglong =
  fcQtROIoDeviceBase_bytesAvailable(self.h)

proc connection*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQtROIoDeviceBase_connection(self.h), owned: false)

proc initializeDataStream*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): void =
  fcQtROIoDeviceBase_initializeDataStream(self.h)

proc isClosing*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): bool =
  fcQtROIoDeviceBase_isClosing(self.h)

proc addSource*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: openArray[char]): void =
  fcQtROIoDeviceBase_addSource(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc removeSource*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: openArray[char]): void =
  fcQtROIoDeviceBase_removeSource(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc remoteObjects*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): HashSet[string] =
  var v_ma = fcQtROIoDeviceBase_remoteObjects(self.h)
  var vx_ret = initHashSet[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_sv_ms = v_outCast[i]
    let vx_svx_ret = string.fromBytes(vx_sv_ms)
    c_free(vx_sv_ms.data)
    vx_ret.incl vx_svx_ret
  c_free(v_ma.data)
  vx_ret

proc readyRead*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): void =
  fcQtROIoDeviceBase_readyRead(self.h)

type QtROIoDeviceBasereadyReadSlot* = proc()
proc fcQtROIoDeviceBase_slot_callback_readyRead(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QtROIoDeviceBasereadyReadSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQtROIoDeviceBase_slot_callback_readyRead_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QtROIoDeviceBasereadyReadSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReadyRead*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, slot: QtROIoDeviceBasereadyReadSlot) =
  var tmp = new QtROIoDeviceBasereadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQtROIoDeviceBase_connect_readyRead(self.h, cast[int](addr tmp[]), fcQtROIoDeviceBase_slot_callback_readyRead, fcQtROIoDeviceBase_slot_callback_readyRead_release)

proc disconnected*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): void =
  fcQtROIoDeviceBase_disconnected(self.h)

type QtROIoDeviceBasedisconnectedSlot* = proc()
proc fcQtROIoDeviceBase_slot_callback_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QtROIoDeviceBasedisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQtROIoDeviceBase_slot_callback_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QtROIoDeviceBasedisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDisconnected*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, slot: QtROIoDeviceBasedisconnectedSlot) =
  var tmp = new QtROIoDeviceBasedisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQtROIoDeviceBase_connect_disconnected(self.h, cast[int](addr tmp[]), fcQtROIoDeviceBase_slot_callback_disconnected, fcQtROIoDeviceBase_slot_callback_disconnected_release)

proc tr*(_: type gen_qconnectionfactories_types.QtROIoDeviceBase, s: cstring, c: cstring): string =
  let v_ms = fcQtROIoDeviceBase_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnectionfactories_types.QtROIoDeviceBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQtROIoDeviceBase_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QtROIoDeviceBasemetaObjectProc* = proc(self: QtROIoDeviceBase): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QtROIoDeviceBasemetacastProc* = proc(self: QtROIoDeviceBase, param1: cstring): pointer {.raises: [], gcsafe.}
type QtROIoDeviceBasemetacallProc* = proc(self: QtROIoDeviceBase, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QtROIoDeviceBasewrite_QByteArrayProc* = proc(self: QtROIoDeviceBase, data: openArray[byte]): void {.raises: [], gcsafe.}
type QtROIoDeviceBasewrite_QByteArrayQint64Proc* = proc(self: QtROIoDeviceBase, data: openArray[byte], param2: clonglong): void {.raises: [], gcsafe.}
type QtROIoDeviceBaseisOpenProc* = proc(self: QtROIoDeviceBase): bool {.raises: [], gcsafe.}
type QtROIoDeviceBasecloseProc* = proc(self: QtROIoDeviceBase): void {.raises: [], gcsafe.}
type QtROIoDeviceBasebytesAvailableProc* = proc(self: QtROIoDeviceBase): clonglong {.raises: [], gcsafe.}
type QtROIoDeviceBaseconnectionProc* = proc(self: QtROIoDeviceBase): gen_qiodevice_types.QIODevice {.raises: [], gcsafe.}
type QtROIoDeviceBasedeviceTypeProc* = proc(self: QtROIoDeviceBase): string {.raises: [], gcsafe.}
type QtROIoDeviceBasedoCloseProc* = proc(self: QtROIoDeviceBase): void {.raises: [], gcsafe.}
type QtROIoDeviceBaseeventProc* = proc(self: QtROIoDeviceBase, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QtROIoDeviceBaseeventFilterProc* = proc(self: QtROIoDeviceBase, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QtROIoDeviceBasetimerEventProc* = proc(self: QtROIoDeviceBase, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QtROIoDeviceBasechildEventProc* = proc(self: QtROIoDeviceBase, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QtROIoDeviceBasecustomEventProc* = proc(self: QtROIoDeviceBase, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QtROIoDeviceBaseconnectNotifyProc* = proc(self: QtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QtROIoDeviceBasedisconnectNotifyProc* = proc(self: QtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QtROIoDeviceBaseVTable* {.inheritable, pure.} = object
  vtbl: cQtROIoDeviceBaseVTable
  metaObject*: QtROIoDeviceBasemetaObjectProc
  metacast*: QtROIoDeviceBasemetacastProc
  metacall*: QtROIoDeviceBasemetacallProc
  write_QByteArray*: QtROIoDeviceBasewrite_QByteArrayProc
  write_QByteArrayQint64*: QtROIoDeviceBasewrite_QByteArrayQint64Proc
  isOpen*: QtROIoDeviceBaseisOpenProc
  close*: QtROIoDeviceBasecloseProc
  bytesAvailable*: QtROIoDeviceBasebytesAvailableProc
  connection*: QtROIoDeviceBaseconnectionProc
  deviceType*: QtROIoDeviceBasedeviceTypeProc
  doClose*: QtROIoDeviceBasedoCloseProc
  event*: QtROIoDeviceBaseeventProc
  eventFilter*: QtROIoDeviceBaseeventFilterProc
  timerEvent*: QtROIoDeviceBasetimerEventProc
  childEvent*: QtROIoDeviceBasechildEventProc
  customEvent*: QtROIoDeviceBasecustomEventProc
  connectNotify*: QtROIoDeviceBaseconnectNotifyProc
  disconnectNotify*: QtROIoDeviceBasedisconnectNotifyProc

proc QtROIoDeviceBasemetaObject*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROIoDeviceBase_virtualbase_metaObject(self.h), owned: false)

proc QtROIoDeviceBasemetacast*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: cstring): pointer =
  fcQtROIoDeviceBase_virtualbase_metacast(self.h, param1)

proc QtROIoDeviceBasemetacall*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, param1: cint, param2: cint, param3: pointer): cint =
  fcQtROIoDeviceBase_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QtROIoDeviceBasewrite*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, data: openArray[byte]): void =
  fcQtROIoDeviceBase_virtualbase_write_QByteArray(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc QtROIoDeviceBasewrite*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, data: openArray[byte], param2: clonglong): void =
  fcQtROIoDeviceBase_virtualbase_write_QByteArrayQint64(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), param2)

proc QtROIoDeviceBaseisOpen*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): bool =
  fcQtROIoDeviceBase_virtualbase_isOpen(self.h)

proc QtROIoDeviceBaseclose*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): void =
  fcQtROIoDeviceBase_virtualbase_close(self.h)

proc QtROIoDeviceBasebytesAvailable*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): clonglong =
  fcQtROIoDeviceBase_virtualbase_bytesAvailable(self.h)

proc QtROIoDeviceBaseevent*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, event: gen_qcoreevent_types.QEvent): bool =
  fcQtROIoDeviceBase_virtualbase_event(self.h, event.h)

proc QtROIoDeviceBaseeventFilter*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQtROIoDeviceBase_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QtROIoDeviceBasetimerEvent*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQtROIoDeviceBase_virtualbase_timerEvent(self.h, event.h)

proc QtROIoDeviceBasechildEvent*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, event: gen_qcoreevent_types.QChildEvent): void =
  fcQtROIoDeviceBase_virtualbase_childEvent(self.h, event.h)

proc QtROIoDeviceBasecustomEvent*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, event: gen_qcoreevent_types.QEvent): void =
  fcQtROIoDeviceBase_virtualbase_customEvent(self.h, event.h)

proc QtROIoDeviceBaseconnectNotify*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQtROIoDeviceBase_virtualbase_connectNotify(self.h, signal.h)

proc QtROIoDeviceBasedisconnectNotify*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQtROIoDeviceBase_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQtROIoDeviceBase_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROIoDeviceBase_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQtROIoDeviceBase_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQtROIoDeviceBase_vtable_callback_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  vtbl[].write_QByteArray(self, slotval1)

proc fcQtROIoDeviceBase_vtable_callback_write_QByteArrayQint64(self: pointer, data: struct_seaqt_string, param2: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  let slotval2 = param2
  vtbl[].write_QByteArrayQint64(self, slotval1, slotval2)

proc fcQtROIoDeviceBase_vtable_callback_isOpen(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var virtualReturn = vtbl[].isOpen(self)
  virtualReturn

proc fcQtROIoDeviceBase_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  vtbl[].close(self)

proc fcQtROIoDeviceBase_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQtROIoDeviceBase_vtable_callback_connection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var virtualReturn = vtbl[].connection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROIoDeviceBase_vtable_callback_deviceType(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  var virtualReturn = vtbl[].deviceType(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQtROIoDeviceBase_vtable_callback_doClose(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  vtbl[].doClose(self)

proc fcQtROIoDeviceBase_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQtROIoDeviceBase_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQtROIoDeviceBase_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQtROIoDeviceBase_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQtROIoDeviceBase_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQtROIoDeviceBase_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQtROIoDeviceBase_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
  let self = QtROIoDeviceBase(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQtROIoDeviceBase* {.inheritable.} = ref object of QtROIoDeviceBase
  vtbl*: cQtROIoDeviceBaseVTable

method metaObject*(self: VirtualQtROIoDeviceBase): gen_qobjectdefs_types.QMetaObject {.base.} =
  QtROIoDeviceBasemetaObject(self[])
method metacast*(self: VirtualQtROIoDeviceBase, param1: cstring): pointer {.base.} =
  QtROIoDeviceBasemetacast(self[], param1)
method metacall*(self: VirtualQtROIoDeviceBase, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QtROIoDeviceBasemetacall(self[], param1, param2, param3)
method write*(self: VirtualQtROIoDeviceBase, data: openArray[byte]): void {.base.} =
  QtROIoDeviceBasewrite(self[], data)
method write*(self: VirtualQtROIoDeviceBase, data: openArray[byte], param2: clonglong): void {.base.} =
  QtROIoDeviceBasewrite(self[], data, param2)
method isOpen*(self: VirtualQtROIoDeviceBase): bool {.base.} =
  QtROIoDeviceBaseisOpen(self[])
method close*(self: VirtualQtROIoDeviceBase): void {.base.} =
  QtROIoDeviceBaseclose(self[])
method bytesAvailable*(self: VirtualQtROIoDeviceBase): clonglong {.base.} =
  QtROIoDeviceBasebytesAvailable(self[])
method connection*(self: VirtualQtROIoDeviceBase): gen_qiodevice_types.QIODevice {.base.} =
  raiseAssert("missing implementation of QtROIoDeviceBase.connection")
method deviceType*(self: VirtualQtROIoDeviceBase): string {.base.} =
  raiseAssert("missing implementation of QtROIoDeviceBase.deviceType")
method doClose*(self: VirtualQtROIoDeviceBase): void {.base.} =
  raiseAssert("missing implementation of QtROIoDeviceBase.doClose")
method event*(self: VirtualQtROIoDeviceBase, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QtROIoDeviceBaseevent(self[], event)
method eventFilter*(self: VirtualQtROIoDeviceBase, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QtROIoDeviceBaseeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQtROIoDeviceBase, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QtROIoDeviceBasetimerEvent(self[], event)
method childEvent*(self: VirtualQtROIoDeviceBase, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QtROIoDeviceBasechildEvent(self[], event)
method customEvent*(self: VirtualQtROIoDeviceBase, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QtROIoDeviceBasecustomEvent(self[], event)
method connectNotify*(self: VirtualQtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QtROIoDeviceBaseconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QtROIoDeviceBasedisconnectNotify(self[], signal)

proc fcQtROIoDeviceBase_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROIoDeviceBase_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQtROIoDeviceBase_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQtROIoDeviceBase_method_callback_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  inst.write(slotval1)

proc fcQtROIoDeviceBase_method_callback_write_QByteArrayQint64(self: pointer, data: struct_seaqt_string, param2: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  let slotval2 = param2
  inst.write(slotval1, slotval2)

proc fcQtROIoDeviceBase_method_callback_isOpen(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var virtualReturn = inst.isOpen()
  virtualReturn

proc fcQtROIoDeviceBase_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  inst.close()

proc fcQtROIoDeviceBase_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQtROIoDeviceBase_method_callback_connection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var virtualReturn = inst.connection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROIoDeviceBase_method_callback_deviceType(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  var virtualReturn = inst.deviceType()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQtROIoDeviceBase_method_callback_doClose(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  inst.doClose()

proc fcQtROIoDeviceBase_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQtROIoDeviceBase_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQtROIoDeviceBase_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQtROIoDeviceBase_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQtROIoDeviceBase_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQtROIoDeviceBase_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQtROIoDeviceBase_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROIoDeviceBase](fcQtROIoDeviceBase_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQtROIoDeviceBase_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnectionfactories_types.QtROIoDeviceBase): cint =
  fcQtROIoDeviceBase_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, signal: cstring): cint =
  fcQtROIoDeviceBase_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnectionfactories_types.QtROIoDeviceBase, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQtROIoDeviceBase_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnectionfactories_types.QtROIoDeviceBase,
    vtbl: ref QtROIoDeviceBaseVTable = nil): gen_qconnectionfactories_types.QtROIoDeviceBase =
  let vtbl = if vtbl == nil: new QtROIoDeviceBaseVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQtROIoDeviceBase_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQtROIoDeviceBase_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQtROIoDeviceBase_vtable_callback_metacall
  if not isNil(vtbl[].write_QByteArray):
    vtbl[].vtbl.write_QByteArray = fcQtROIoDeviceBase_vtable_callback_write_QByteArray
  if not isNil(vtbl[].write_QByteArrayQint64):
    vtbl[].vtbl.write_QByteArrayQint64 = fcQtROIoDeviceBase_vtable_callback_write_QByteArrayQint64
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQtROIoDeviceBase_vtable_callback_isOpen
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQtROIoDeviceBase_vtable_callback_close
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQtROIoDeviceBase_vtable_callback_bytesAvailable
  if not isNil(vtbl[].connection):
    vtbl[].vtbl.connection = fcQtROIoDeviceBase_vtable_callback_connection
  if not isNil(vtbl[].deviceType):
    vtbl[].vtbl.deviceType = fcQtROIoDeviceBase_vtable_callback_deviceType
  if not isNil(vtbl[].doClose):
    vtbl[].vtbl.doClose = fcQtROIoDeviceBase_vtable_callback_doClose
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQtROIoDeviceBase_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQtROIoDeviceBase_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQtROIoDeviceBase_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQtROIoDeviceBase_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQtROIoDeviceBase_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQtROIoDeviceBase_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQtROIoDeviceBase_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QtROIoDeviceBase(h: fcQtROIoDeviceBase_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQtROIoDeviceBase_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnectionfactories_types.QtROIoDeviceBase,
    parent: gen_qobject_types.QObject,
    vtbl: ref QtROIoDeviceBaseVTable = nil): gen_qconnectionfactories_types.QtROIoDeviceBase =
  let vtbl = if vtbl == nil: new QtROIoDeviceBaseVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QtROIoDeviceBaseVTable](fcQtROIoDeviceBase_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQtROIoDeviceBase_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQtROIoDeviceBase_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQtROIoDeviceBase_vtable_callback_metacall
  if not isNil(vtbl[].write_QByteArray):
    vtbl[].vtbl.write_QByteArray = fcQtROIoDeviceBase_vtable_callback_write_QByteArray
  if not isNil(vtbl[].write_QByteArrayQint64):
    vtbl[].vtbl.write_QByteArrayQint64 = fcQtROIoDeviceBase_vtable_callback_write_QByteArrayQint64
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQtROIoDeviceBase_vtable_callback_isOpen
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQtROIoDeviceBase_vtable_callback_close
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQtROIoDeviceBase_vtable_callback_bytesAvailable
  if not isNil(vtbl[].connection):
    vtbl[].vtbl.connection = fcQtROIoDeviceBase_vtable_callback_connection
  if not isNil(vtbl[].deviceType):
    vtbl[].vtbl.deviceType = fcQtROIoDeviceBase_vtable_callback_deviceType
  if not isNil(vtbl[].doClose):
    vtbl[].vtbl.doClose = fcQtROIoDeviceBase_vtable_callback_doClose
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQtROIoDeviceBase_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQtROIoDeviceBase_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQtROIoDeviceBase_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQtROIoDeviceBase_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQtROIoDeviceBase_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQtROIoDeviceBase_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQtROIoDeviceBase_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QtROIoDeviceBase(h: fcQtROIoDeviceBase_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQtROIoDeviceBase_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQtROIoDeviceBase_mvtbl = cQtROIoDeviceBaseVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQtROIoDeviceBase()[])](self.fcQtROIoDeviceBase_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQtROIoDeviceBase_method_callback_metaObject,
  metacast: fcQtROIoDeviceBase_method_callback_metacast,
  metacall: fcQtROIoDeviceBase_method_callback_metacall,
  write_QByteArray: fcQtROIoDeviceBase_method_callback_write_QByteArray,
  write_QByteArrayQint64: fcQtROIoDeviceBase_method_callback_write_QByteArrayQint64,
  isOpen: fcQtROIoDeviceBase_method_callback_isOpen,
  close: fcQtROIoDeviceBase_method_callback_close,
  bytesAvailable: fcQtROIoDeviceBase_method_callback_bytesAvailable,
  connection: fcQtROIoDeviceBase_method_callback_connection,
  deviceType: fcQtROIoDeviceBase_method_callback_deviceType,
  doClose: fcQtROIoDeviceBase_method_callback_doClose,
  event: fcQtROIoDeviceBase_method_callback_event,
  eventFilter: fcQtROIoDeviceBase_method_callback_eventFilter,
  timerEvent: fcQtROIoDeviceBase_method_callback_timerEvent,
  childEvent: fcQtROIoDeviceBase_method_callback_childEvent,
  customEvent: fcQtROIoDeviceBase_method_callback_customEvent,
  connectNotify: fcQtROIoDeviceBase_method_callback_connectNotify,
  disconnectNotify: fcQtROIoDeviceBase_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnectionfactories_types.QtROIoDeviceBase,
    inst: VirtualQtROIoDeviceBase) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQtROIoDeviceBase_new(addr(cQtROIoDeviceBase_mvtbl), csize_t(sizeof(pointer)))
  fcQtROIoDeviceBase_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnectionfactories_types.QtROIoDeviceBase,
    parent: gen_qobject_types.QObject,
    inst: VirtualQtROIoDeviceBase) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQtROIoDeviceBase_new2(addr(cQtROIoDeviceBase_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQtROIoDeviceBase_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnectionfactories_types.QtROIoDeviceBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROIoDeviceBase_staticMetaObject())
proc metaObject*(self: gen_qconnectionfactories_types.QtROServerIoDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROServerIoDevice_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnectionfactories_types.QtROServerIoDevice, param1: cstring): pointer =
  fcQtROServerIoDevice_metacast(self.h, param1)

proc metacall*(self: gen_qconnectionfactories_types.QtROServerIoDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQtROServerIoDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnectionfactories_types.QtROServerIoDevice, s: cstring): string =
  let v_ms = fcQtROServerIoDevice_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnectionfactories_types.QtROServerIoDevice, s: cstring, c: cstring): string =
  let v_ms = fcQtROServerIoDevice_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnectionfactories_types.QtROServerIoDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQtROServerIoDevice_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QtROServerIoDevicemetaObjectProc* = proc(self: QtROServerIoDevice): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QtROServerIoDevicemetacastProc* = proc(self: QtROServerIoDevice, param1: cstring): pointer {.raises: [], gcsafe.}
type QtROServerIoDevicemetacallProc* = proc(self: QtROServerIoDevice, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QtROServerIoDevicedeviceTypeProc* = proc(self: QtROServerIoDevice): string {.raises: [], gcsafe.}
type QtROServerIoDevicewrite_QByteArrayProc* = proc(self: QtROServerIoDevice, data: openArray[byte]): void {.raises: [], gcsafe.}
type QtROServerIoDeviceisOpenProc* = proc(self: QtROServerIoDevice): bool {.raises: [], gcsafe.}
type QtROServerIoDevicecloseProc* = proc(self: QtROServerIoDevice): void {.raises: [], gcsafe.}
type QtROServerIoDevicebytesAvailableProc* = proc(self: QtROServerIoDevice): clonglong {.raises: [], gcsafe.}
type QtROServerIoDeviceconnectionProc* = proc(self: QtROServerIoDevice): gen_qiodevice_types.QIODevice {.raises: [], gcsafe.}
type QtROServerIoDevicedoCloseProc* = proc(self: QtROServerIoDevice): void {.raises: [], gcsafe.}
type QtROServerIoDeviceeventProc* = proc(self: QtROServerIoDevice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QtROServerIoDeviceeventFilterProc* = proc(self: QtROServerIoDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QtROServerIoDevicetimerEventProc* = proc(self: QtROServerIoDevice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QtROServerIoDevicechildEventProc* = proc(self: QtROServerIoDevice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QtROServerIoDevicecustomEventProc* = proc(self: QtROServerIoDevice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QtROServerIoDeviceconnectNotifyProc* = proc(self: QtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QtROServerIoDevicedisconnectNotifyProc* = proc(self: QtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QtROServerIoDeviceVTable* {.inheritable, pure.} = object
  vtbl: cQtROServerIoDeviceVTable
  metaObject*: QtROServerIoDevicemetaObjectProc
  metacast*: QtROServerIoDevicemetacastProc
  metacall*: QtROServerIoDevicemetacallProc
  deviceType*: QtROServerIoDevicedeviceTypeProc
  write_QByteArray*: QtROServerIoDevicewrite_QByteArrayProc
  isOpen*: QtROServerIoDeviceisOpenProc
  close*: QtROServerIoDevicecloseProc
  bytesAvailable*: QtROServerIoDevicebytesAvailableProc
  connection*: QtROServerIoDeviceconnectionProc
  doClose*: QtROServerIoDevicedoCloseProc
  event*: QtROServerIoDeviceeventProc
  eventFilter*: QtROServerIoDeviceeventFilterProc
  timerEvent*: QtROServerIoDevicetimerEventProc
  childEvent*: QtROServerIoDevicechildEventProc
  customEvent*: QtROServerIoDevicecustomEventProc
  connectNotify*: QtROServerIoDeviceconnectNotifyProc
  disconnectNotify*: QtROServerIoDevicedisconnectNotifyProc

proc QtROServerIoDevicemetaObject*(self: gen_qconnectionfactories_types.QtROServerIoDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROServerIoDevice_virtualbase_metaObject(self.h), owned: false)

proc QtROServerIoDevicemetacast*(self: gen_qconnectionfactories_types.QtROServerIoDevice, param1: cstring): pointer =
  fcQtROServerIoDevice_virtualbase_metacast(self.h, param1)

proc QtROServerIoDevicemetacall*(self: gen_qconnectionfactories_types.QtROServerIoDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQtROServerIoDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QtROServerIoDevicedeviceType*(self: gen_qconnectionfactories_types.QtROServerIoDevice): string =
  let v_ms = fcQtROServerIoDevice_virtualbase_deviceType(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QtROServerIoDevicewrite*(self: gen_qconnectionfactories_types.QtROServerIoDevice, data: openArray[byte]): void =
  fcQtROServerIoDevice_virtualbase_write_QByteArray(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc QtROServerIoDeviceisOpen*(self: gen_qconnectionfactories_types.QtROServerIoDevice): bool =
  fcQtROServerIoDevice_virtualbase_isOpen(self.h)

proc QtROServerIoDeviceclose*(self: gen_qconnectionfactories_types.QtROServerIoDevice): void =
  fcQtROServerIoDevice_virtualbase_close(self.h)

proc QtROServerIoDevicebytesAvailable*(self: gen_qconnectionfactories_types.QtROServerIoDevice): clonglong =
  fcQtROServerIoDevice_virtualbase_bytesAvailable(self.h)

proc QtROServerIoDeviceevent*(self: gen_qconnectionfactories_types.QtROServerIoDevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQtROServerIoDevice_virtualbase_event(self.h, event.h)

proc QtROServerIoDeviceeventFilter*(self: gen_qconnectionfactories_types.QtROServerIoDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQtROServerIoDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QtROServerIoDevicetimerEvent*(self: gen_qconnectionfactories_types.QtROServerIoDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQtROServerIoDevice_virtualbase_timerEvent(self.h, event.h)

proc QtROServerIoDevicechildEvent*(self: gen_qconnectionfactories_types.QtROServerIoDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQtROServerIoDevice_virtualbase_childEvent(self.h, event.h)

proc QtROServerIoDevicecustomEvent*(self: gen_qconnectionfactories_types.QtROServerIoDevice, event: gen_qcoreevent_types.QEvent): void =
  fcQtROServerIoDevice_virtualbase_customEvent(self.h, event.h)

proc QtROServerIoDeviceconnectNotify*(self: gen_qconnectionfactories_types.QtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQtROServerIoDevice_virtualbase_connectNotify(self.h, signal.h)

proc QtROServerIoDevicedisconnectNotify*(self: gen_qconnectionfactories_types.QtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQtROServerIoDevice_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQtROServerIoDevice_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROServerIoDevice_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQtROServerIoDevice_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQtROServerIoDevice_vtable_callback_deviceType(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  var virtualReturn = vtbl[].deviceType(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQtROServerIoDevice_vtable_callback_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  vtbl[].write_QByteArray(self, slotval1)

proc fcQtROServerIoDevice_vtable_callback_isOpen(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  var virtualReturn = vtbl[].isOpen(self)
  virtualReturn

proc fcQtROServerIoDevice_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  vtbl[].close(self)

proc fcQtROServerIoDevice_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQtROServerIoDevice_vtable_callback_connection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  var virtualReturn = vtbl[].connection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROServerIoDevice_vtable_callback_doClose(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  vtbl[].doClose(self)

proc fcQtROServerIoDevice_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQtROServerIoDevice_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQtROServerIoDevice_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQtROServerIoDevice_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQtROServerIoDevice_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQtROServerIoDevice_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQtROServerIoDevice_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
  let self = QtROServerIoDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQtROServerIoDevice* {.inheritable.} = ref object of QtROServerIoDevice
  vtbl*: cQtROServerIoDeviceVTable

method metaObject*(self: VirtualQtROServerIoDevice): gen_qobjectdefs_types.QMetaObject {.base.} =
  QtROServerIoDevicemetaObject(self[])
method metacast*(self: VirtualQtROServerIoDevice, param1: cstring): pointer {.base.} =
  QtROServerIoDevicemetacast(self[], param1)
method metacall*(self: VirtualQtROServerIoDevice, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QtROServerIoDevicemetacall(self[], param1, param2, param3)
method deviceType*(self: VirtualQtROServerIoDevice): string {.base.} =
  QtROServerIoDevicedeviceType(self[])
method write*(self: VirtualQtROServerIoDevice, data: openArray[byte]): void {.base.} =
  QtROServerIoDevicewrite(self[], data)
method isOpen*(self: VirtualQtROServerIoDevice): bool {.base.} =
  QtROServerIoDeviceisOpen(self[])
method close*(self: VirtualQtROServerIoDevice): void {.base.} =
  QtROServerIoDeviceclose(self[])
method bytesAvailable*(self: VirtualQtROServerIoDevice): clonglong {.base.} =
  QtROServerIoDevicebytesAvailable(self[])
method connection*(self: VirtualQtROServerIoDevice): gen_qiodevice_types.QIODevice {.base.} =
  raiseAssert("missing implementation of QtROServerIoDevice.connection")
method doClose*(self: VirtualQtROServerIoDevice): void {.base.} =
  raiseAssert("missing implementation of QtROServerIoDevice.doClose")
method event*(self: VirtualQtROServerIoDevice, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QtROServerIoDeviceevent(self[], event)
method eventFilter*(self: VirtualQtROServerIoDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QtROServerIoDeviceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQtROServerIoDevice, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QtROServerIoDevicetimerEvent(self[], event)
method childEvent*(self: VirtualQtROServerIoDevice, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QtROServerIoDevicechildEvent(self[], event)
method customEvent*(self: VirtualQtROServerIoDevice, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QtROServerIoDevicecustomEvent(self[], event)
method connectNotify*(self: VirtualQtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QtROServerIoDeviceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QtROServerIoDevicedisconnectNotify(self[], signal)

proc fcQtROServerIoDevice_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROServerIoDevice_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQtROServerIoDevice_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQtROServerIoDevice_method_callback_deviceType(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  var virtualReturn = inst.deviceType()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQtROServerIoDevice_method_callback_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  inst.write(slotval1)

proc fcQtROServerIoDevice_method_callback_isOpen(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  var virtualReturn = inst.isOpen()
  virtualReturn

proc fcQtROServerIoDevice_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  inst.close()

proc fcQtROServerIoDevice_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQtROServerIoDevice_method_callback_connection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  var virtualReturn = inst.connection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROServerIoDevice_method_callback_doClose(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  inst.doClose()

proc fcQtROServerIoDevice_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQtROServerIoDevice_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQtROServerIoDevice_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQtROServerIoDevice_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQtROServerIoDevice_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQtROServerIoDevice_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQtROServerIoDevice_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROServerIoDevice](fcQtROServerIoDevice_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qconnectionfactories_types.QtROServerIoDevice): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQtROServerIoDevice_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnectionfactories_types.QtROServerIoDevice): cint =
  fcQtROServerIoDevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnectionfactories_types.QtROServerIoDevice, signal: cstring): cint =
  fcQtROServerIoDevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnectionfactories_types.QtROServerIoDevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQtROServerIoDevice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnectionfactories_types.QtROServerIoDevice,
    vtbl: ref QtROServerIoDeviceVTable = nil): gen_qconnectionfactories_types.QtROServerIoDevice =
  let vtbl = if vtbl == nil: new QtROServerIoDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQtROServerIoDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQtROServerIoDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQtROServerIoDevice_vtable_callback_metacall
  if not isNil(vtbl[].deviceType):
    vtbl[].vtbl.deviceType = fcQtROServerIoDevice_vtable_callback_deviceType
  if not isNil(vtbl[].write_QByteArray):
    vtbl[].vtbl.write_QByteArray = fcQtROServerIoDevice_vtable_callback_write_QByteArray
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQtROServerIoDevice_vtable_callback_isOpen
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQtROServerIoDevice_vtable_callback_close
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQtROServerIoDevice_vtable_callback_bytesAvailable
  if not isNil(vtbl[].connection):
    vtbl[].vtbl.connection = fcQtROServerIoDevice_vtable_callback_connection
  if not isNil(vtbl[].doClose):
    vtbl[].vtbl.doClose = fcQtROServerIoDevice_vtable_callback_doClose
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQtROServerIoDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQtROServerIoDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQtROServerIoDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQtROServerIoDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQtROServerIoDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQtROServerIoDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQtROServerIoDevice_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QtROServerIoDevice(h: fcQtROServerIoDevice_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQtROServerIoDevice_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnectionfactories_types.QtROServerIoDevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QtROServerIoDeviceVTable = nil): gen_qconnectionfactories_types.QtROServerIoDevice =
  let vtbl = if vtbl == nil: new QtROServerIoDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QtROServerIoDeviceVTable](fcQtROServerIoDevice_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQtROServerIoDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQtROServerIoDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQtROServerIoDevice_vtable_callback_metacall
  if not isNil(vtbl[].deviceType):
    vtbl[].vtbl.deviceType = fcQtROServerIoDevice_vtable_callback_deviceType
  if not isNil(vtbl[].write_QByteArray):
    vtbl[].vtbl.write_QByteArray = fcQtROServerIoDevice_vtable_callback_write_QByteArray
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQtROServerIoDevice_vtable_callback_isOpen
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQtROServerIoDevice_vtable_callback_close
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQtROServerIoDevice_vtable_callback_bytesAvailable
  if not isNil(vtbl[].connection):
    vtbl[].vtbl.connection = fcQtROServerIoDevice_vtable_callback_connection
  if not isNil(vtbl[].doClose):
    vtbl[].vtbl.doClose = fcQtROServerIoDevice_vtable_callback_doClose
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQtROServerIoDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQtROServerIoDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQtROServerIoDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQtROServerIoDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQtROServerIoDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQtROServerIoDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQtROServerIoDevice_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QtROServerIoDevice(h: fcQtROServerIoDevice_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQtROServerIoDevice_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQtROServerIoDevice_mvtbl = cQtROServerIoDeviceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQtROServerIoDevice()[])](self.fcQtROServerIoDevice_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQtROServerIoDevice_method_callback_metaObject,
  metacast: fcQtROServerIoDevice_method_callback_metacast,
  metacall: fcQtROServerIoDevice_method_callback_metacall,
  deviceType: fcQtROServerIoDevice_method_callback_deviceType,
  write_QByteArray: fcQtROServerIoDevice_method_callback_write_QByteArray,
  isOpen: fcQtROServerIoDevice_method_callback_isOpen,
  close: fcQtROServerIoDevice_method_callback_close,
  bytesAvailable: fcQtROServerIoDevice_method_callback_bytesAvailable,
  connection: fcQtROServerIoDevice_method_callback_connection,
  doClose: fcQtROServerIoDevice_method_callback_doClose,
  event: fcQtROServerIoDevice_method_callback_event,
  eventFilter: fcQtROServerIoDevice_method_callback_eventFilter,
  timerEvent: fcQtROServerIoDevice_method_callback_timerEvent,
  childEvent: fcQtROServerIoDevice_method_callback_childEvent,
  customEvent: fcQtROServerIoDevice_method_callback_customEvent,
  connectNotify: fcQtROServerIoDevice_method_callback_connectNotify,
  disconnectNotify: fcQtROServerIoDevice_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnectionfactories_types.QtROServerIoDevice,
    inst: VirtualQtROServerIoDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQtROServerIoDevice_new(addr(cQtROServerIoDevice_mvtbl), csize_t(sizeof(pointer)))
  fcQtROServerIoDevice_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnectionfactories_types.QtROServerIoDevice,
    parent: gen_qobject_types.QObject,
    inst: VirtualQtROServerIoDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQtROServerIoDevice_new2(addr(cQtROServerIoDevice_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQtROServerIoDevice_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnectionfactories_types.QtROServerIoDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROServerIoDevice_staticMetaObject())
proc metaObject*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConnectionAbstractServer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, param1: cstring): pointer =
  fcQConnectionAbstractServer_metacast(self.h, param1)

proc metacall*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQConnectionAbstractServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnectionfactories_types.QConnectionAbstractServer, s: cstring): string =
  let v_ms = fcQConnectionAbstractServer_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasPendingConnections*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): bool =
  fcQConnectionAbstractServer_hasPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): gen_qconnectionfactories_types.QtROServerIoDevice =
  gen_qconnectionfactories_types.QtROServerIoDevice(h: fcQConnectionAbstractServer_nextPendingConnection(self.h), owned: false)

proc address*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQConnectionAbstractServer_address(self.h), owned: true)

proc listen*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, address: gen_qurl_types.QUrl): bool =
  fcQConnectionAbstractServer_listen(self.h, address.h)

proc serverError*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): cint =
  cint(fcQConnectionAbstractServer_serverError(self.h))

proc close*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): void =
  fcQConnectionAbstractServer_close(self.h)

proc newConnection*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): void =
  fcQConnectionAbstractServer_newConnection(self.h)

type QConnectionAbstractServernewConnectionSlot* = proc()
proc fcQConnectionAbstractServer_slot_callback_newConnection(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QConnectionAbstractServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQConnectionAbstractServer_slot_callback_newConnection_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QConnectionAbstractServernewConnectionSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNewConnection*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, slot: QConnectionAbstractServernewConnectionSlot) =
  var tmp = new QConnectionAbstractServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQConnectionAbstractServer_connect_newConnection(self.h, cast[int](addr tmp[]), fcQConnectionAbstractServer_slot_callback_newConnection, fcQConnectionAbstractServer_slot_callback_newConnection_release)

proc tr*(_: type gen_qconnectionfactories_types.QConnectionAbstractServer, s: cstring, c: cstring): string =
  let v_ms = fcQConnectionAbstractServer_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnectionfactories_types.QConnectionAbstractServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQConnectionAbstractServer_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QConnectionAbstractServermetaObjectProc* = proc(self: QConnectionAbstractServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QConnectionAbstractServermetacastProc* = proc(self: QConnectionAbstractServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QConnectionAbstractServermetacallProc* = proc(self: QConnectionAbstractServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QConnectionAbstractServerhasPendingConnectionsProc* = proc(self: QConnectionAbstractServer): bool {.raises: [], gcsafe.}
type QConnectionAbstractServeraddressProc* = proc(self: QConnectionAbstractServer): gen_qurl_types.QUrl {.raises: [], gcsafe.}
type QConnectionAbstractServerlistenProc* = proc(self: QConnectionAbstractServer, address: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QConnectionAbstractServerserverErrorProc* = proc(self: QConnectionAbstractServer): cint {.raises: [], gcsafe.}
type QConnectionAbstractServercloseProc* = proc(self: QConnectionAbstractServer): void {.raises: [], gcsafe.}
type QConnectionAbstractServerconfigureNewConnectionProc* = proc(self: QConnectionAbstractServer): gen_qconnectionfactories_types.QtROServerIoDevice {.raises: [], gcsafe.}
type QConnectionAbstractServereventProc* = proc(self: QConnectionAbstractServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QConnectionAbstractServereventFilterProc* = proc(self: QConnectionAbstractServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QConnectionAbstractServertimerEventProc* = proc(self: QConnectionAbstractServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QConnectionAbstractServerchildEventProc* = proc(self: QConnectionAbstractServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QConnectionAbstractServercustomEventProc* = proc(self: QConnectionAbstractServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QConnectionAbstractServerconnectNotifyProc* = proc(self: QConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QConnectionAbstractServerdisconnectNotifyProc* = proc(self: QConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QConnectionAbstractServerVTable* {.inheritable, pure.} = object
  vtbl: cQConnectionAbstractServerVTable
  metaObject*: QConnectionAbstractServermetaObjectProc
  metacast*: QConnectionAbstractServermetacastProc
  metacall*: QConnectionAbstractServermetacallProc
  hasPendingConnections*: QConnectionAbstractServerhasPendingConnectionsProc
  address*: QConnectionAbstractServeraddressProc
  listen*: QConnectionAbstractServerlistenProc
  serverError*: QConnectionAbstractServerserverErrorProc
  close*: QConnectionAbstractServercloseProc
  configureNewConnection*: QConnectionAbstractServerconfigureNewConnectionProc
  event*: QConnectionAbstractServereventProc
  eventFilter*: QConnectionAbstractServereventFilterProc
  timerEvent*: QConnectionAbstractServertimerEventProc
  childEvent*: QConnectionAbstractServerchildEventProc
  customEvent*: QConnectionAbstractServercustomEventProc
  connectNotify*: QConnectionAbstractServerconnectNotifyProc
  disconnectNotify*: QConnectionAbstractServerdisconnectNotifyProc

proc QConnectionAbstractServermetaObject*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConnectionAbstractServer_virtualbase_metaObject(self.h), owned: false)

proc QConnectionAbstractServermetacast*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, param1: cstring): pointer =
  fcQConnectionAbstractServer_virtualbase_metacast(self.h, param1)

proc QConnectionAbstractServermetacall*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQConnectionAbstractServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QConnectionAbstractServerevent*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQConnectionAbstractServer_virtualbase_event(self.h, event.h)

proc QConnectionAbstractServereventFilter*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQConnectionAbstractServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QConnectionAbstractServertimerEvent*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQConnectionAbstractServer_virtualbase_timerEvent(self.h, event.h)

proc QConnectionAbstractServerchildEvent*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQConnectionAbstractServer_virtualbase_childEvent(self.h, event.h)

proc QConnectionAbstractServercustomEvent*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, event: gen_qcoreevent_types.QEvent): void =
  fcQConnectionAbstractServer_virtualbase_customEvent(self.h, event.h)

proc QConnectionAbstractServerconnectNotify*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQConnectionAbstractServer_virtualbase_connectNotify(self.h, signal.h)

proc QConnectionAbstractServerdisconnectNotify*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQConnectionAbstractServer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQConnectionAbstractServer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConnectionAbstractServer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQConnectionAbstractServer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConnectionAbstractServer_vtable_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  var virtualReturn = vtbl[].hasPendingConnections(self)
  virtualReturn

proc fcQConnectionAbstractServer_vtable_callback_address(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  var virtualReturn = vtbl[].address(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConnectionAbstractServer_vtable_callback_listen(self: pointer, address: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: address, owned: false)
  var virtualReturn = vtbl[].listen(self, slotval1)
  virtualReturn

proc fcQConnectionAbstractServer_vtable_callback_serverError(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  var virtualReturn = vtbl[].serverError(self)
  cint(virtualReturn)

proc fcQConnectionAbstractServer_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  vtbl[].close(self)

proc fcQConnectionAbstractServer_vtable_callback_configureNewConnection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  var virtualReturn = vtbl[].configureNewConnection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConnectionAbstractServer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQConnectionAbstractServer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQConnectionAbstractServer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQConnectionAbstractServer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQConnectionAbstractServer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQConnectionAbstractServer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQConnectionAbstractServer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
  let self = QConnectionAbstractServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQConnectionAbstractServer* {.inheritable.} = ref object of QConnectionAbstractServer
  vtbl*: cQConnectionAbstractServerVTable

method metaObject*(self: VirtualQConnectionAbstractServer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QConnectionAbstractServermetaObject(self[])
method metacast*(self: VirtualQConnectionAbstractServer, param1: cstring): pointer {.base.} =
  QConnectionAbstractServermetacast(self[], param1)
method metacall*(self: VirtualQConnectionAbstractServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QConnectionAbstractServermetacall(self[], param1, param2, param3)
method hasPendingConnections*(self: VirtualQConnectionAbstractServer): bool {.base.} =
  raiseAssert("missing implementation of QConnectionAbstractServer.hasPendingConnections")
method address*(self: VirtualQConnectionAbstractServer): gen_qurl_types.QUrl {.base.} =
  raiseAssert("missing implementation of QConnectionAbstractServer.address")
method listen*(self: VirtualQConnectionAbstractServer, address: gen_qurl_types.QUrl): bool {.base.} =
  raiseAssert("missing implementation of QConnectionAbstractServer.listen")
method serverError*(self: VirtualQConnectionAbstractServer): cint {.base.} =
  raiseAssert("missing implementation of QConnectionAbstractServer.serverError")
method close*(self: VirtualQConnectionAbstractServer): void {.base.} =
  raiseAssert("missing implementation of QConnectionAbstractServer.close")
method configureNewConnection*(self: VirtualQConnectionAbstractServer): gen_qconnectionfactories_types.QtROServerIoDevice {.base.} =
  raiseAssert("missing implementation of QConnectionAbstractServer.configureNewConnection")
method event*(self: VirtualQConnectionAbstractServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QConnectionAbstractServerevent(self[], event)
method eventFilter*(self: VirtualQConnectionAbstractServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QConnectionAbstractServereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQConnectionAbstractServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QConnectionAbstractServertimerEvent(self[], event)
method childEvent*(self: VirtualQConnectionAbstractServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QConnectionAbstractServerchildEvent(self[], event)
method customEvent*(self: VirtualQConnectionAbstractServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QConnectionAbstractServercustomEvent(self[], event)
method connectNotify*(self: VirtualQConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QConnectionAbstractServerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QConnectionAbstractServerdisconnectNotify(self[], signal)

proc fcQConnectionAbstractServer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConnectionAbstractServer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQConnectionAbstractServer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQConnectionAbstractServer_method_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  var virtualReturn = inst.hasPendingConnections()
  virtualReturn

proc fcQConnectionAbstractServer_method_callback_address(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  var virtualReturn = inst.address()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConnectionAbstractServer_method_callback_listen(self: pointer, address: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qurl_types.QUrl(h: address, owned: false)
  var virtualReturn = inst.listen(slotval1)
  virtualReturn

proc fcQConnectionAbstractServer_method_callback_serverError(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  var virtualReturn = inst.serverError()
  cint(virtualReturn)

proc fcQConnectionAbstractServer_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  inst.close()

proc fcQConnectionAbstractServer_method_callback_configureNewConnection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  var virtualReturn = inst.configureNewConnection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQConnectionAbstractServer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQConnectionAbstractServer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQConnectionAbstractServer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQConnectionAbstractServer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQConnectionAbstractServer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQConnectionAbstractServer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQConnectionAbstractServer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQConnectionAbstractServer](fcQConnectionAbstractServer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQConnectionAbstractServer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnectionfactories_types.QConnectionAbstractServer): cint =
  fcQConnectionAbstractServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, signal: cstring): cint =
  fcQConnectionAbstractServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnectionfactories_types.QConnectionAbstractServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQConnectionAbstractServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnectionfactories_types.QConnectionAbstractServer,
    vtbl: ref QConnectionAbstractServerVTable = nil): gen_qconnectionfactories_types.QConnectionAbstractServer =
  let vtbl = if vtbl == nil: new QConnectionAbstractServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQConnectionAbstractServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQConnectionAbstractServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQConnectionAbstractServer_vtable_callback_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = fcQConnectionAbstractServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].address):
    vtbl[].vtbl.address = fcQConnectionAbstractServer_vtable_callback_address
  if not isNil(vtbl[].listen):
    vtbl[].vtbl.listen = fcQConnectionAbstractServer_vtable_callback_listen
  if not isNil(vtbl[].serverError):
    vtbl[].vtbl.serverError = fcQConnectionAbstractServer_vtable_callback_serverError
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQConnectionAbstractServer_vtable_callback_close
  if not isNil(vtbl[].configureNewConnection):
    vtbl[].vtbl.configureNewConnection = fcQConnectionAbstractServer_vtable_callback_configureNewConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQConnectionAbstractServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQConnectionAbstractServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQConnectionAbstractServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQConnectionAbstractServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQConnectionAbstractServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQConnectionAbstractServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQConnectionAbstractServer_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QConnectionAbstractServer(h: fcQConnectionAbstractServer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQConnectionAbstractServer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnectionfactories_types.QConnectionAbstractServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QConnectionAbstractServerVTable = nil): gen_qconnectionfactories_types.QConnectionAbstractServer =
  let vtbl = if vtbl == nil: new QConnectionAbstractServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QConnectionAbstractServerVTable](fcQConnectionAbstractServer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQConnectionAbstractServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQConnectionAbstractServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQConnectionAbstractServer_vtable_callback_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = fcQConnectionAbstractServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].address):
    vtbl[].vtbl.address = fcQConnectionAbstractServer_vtable_callback_address
  if not isNil(vtbl[].listen):
    vtbl[].vtbl.listen = fcQConnectionAbstractServer_vtable_callback_listen
  if not isNil(vtbl[].serverError):
    vtbl[].vtbl.serverError = fcQConnectionAbstractServer_vtable_callback_serverError
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQConnectionAbstractServer_vtable_callback_close
  if not isNil(vtbl[].configureNewConnection):
    vtbl[].vtbl.configureNewConnection = fcQConnectionAbstractServer_vtable_callback_configureNewConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQConnectionAbstractServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQConnectionAbstractServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQConnectionAbstractServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQConnectionAbstractServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQConnectionAbstractServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQConnectionAbstractServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQConnectionAbstractServer_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QConnectionAbstractServer(h: fcQConnectionAbstractServer_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQConnectionAbstractServer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQConnectionAbstractServer_mvtbl = cQConnectionAbstractServerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQConnectionAbstractServer()[])](self.fcQConnectionAbstractServer_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQConnectionAbstractServer_method_callback_metaObject,
  metacast: fcQConnectionAbstractServer_method_callback_metacast,
  metacall: fcQConnectionAbstractServer_method_callback_metacall,
  hasPendingConnections: fcQConnectionAbstractServer_method_callback_hasPendingConnections,
  address: fcQConnectionAbstractServer_method_callback_address,
  listen: fcQConnectionAbstractServer_method_callback_listen,
  serverError: fcQConnectionAbstractServer_method_callback_serverError,
  close: fcQConnectionAbstractServer_method_callback_close,
  configureNewConnection: fcQConnectionAbstractServer_method_callback_configureNewConnection,
  event: fcQConnectionAbstractServer_method_callback_event,
  eventFilter: fcQConnectionAbstractServer_method_callback_eventFilter,
  timerEvent: fcQConnectionAbstractServer_method_callback_timerEvent,
  childEvent: fcQConnectionAbstractServer_method_callback_childEvent,
  customEvent: fcQConnectionAbstractServer_method_callback_customEvent,
  connectNotify: fcQConnectionAbstractServer_method_callback_connectNotify,
  disconnectNotify: fcQConnectionAbstractServer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnectionfactories_types.QConnectionAbstractServer,
    inst: VirtualQConnectionAbstractServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQConnectionAbstractServer_new(addr(cQConnectionAbstractServer_mvtbl), csize_t(sizeof(pointer)))
  fcQConnectionAbstractServer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnectionfactories_types.QConnectionAbstractServer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQConnectionAbstractServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQConnectionAbstractServer_new2(addr(cQConnectionAbstractServer_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQConnectionAbstractServer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnectionfactories_types.QConnectionAbstractServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQConnectionAbstractServer_staticMetaObject())
proc metaObject*(self: gen_qconnectionfactories_types.QtROClientIoDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROClientIoDevice_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnectionfactories_types.QtROClientIoDevice, param1: cstring): pointer =
  fcQtROClientIoDevice_metacast(self.h, param1)

proc metacall*(self: gen_qconnectionfactories_types.QtROClientIoDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQtROClientIoDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnectionfactories_types.QtROClientIoDevice, s: cstring): string =
  let v_ms = fcQtROClientIoDevice_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc disconnectFromServer*(self: gen_qconnectionfactories_types.QtROClientIoDevice): void =
  fcQtROClientIoDevice_disconnectFromServer(self.h)

proc connectToServer*(self: gen_qconnectionfactories_types.QtROClientIoDevice): void =
  fcQtROClientIoDevice_connectToServer(self.h)

proc url*(self: gen_qconnectionfactories_types.QtROClientIoDevice): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQtROClientIoDevice_url(self.h), owned: true)

proc shouldReconnect*(self: gen_qconnectionfactories_types.QtROClientIoDevice, param1: gen_qconnectionfactories_types.QtROClientIoDevice): void =
  fcQtROClientIoDevice_shouldReconnect(self.h, param1.h)

type QtROClientIoDeviceshouldReconnectSlot* = proc(param1: gen_qconnectionfactories_types.QtROClientIoDevice)
proc fcQtROClientIoDevice_slot_callback_shouldReconnect(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QtROClientIoDeviceshouldReconnectSlot](cast[pointer](slot))
  let slotval1 = gen_qconnectionfactories_types.QtROClientIoDevice(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQtROClientIoDevice_slot_callback_shouldReconnect_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QtROClientIoDeviceshouldReconnectSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onShouldReconnect*(self: gen_qconnectionfactories_types.QtROClientIoDevice, slot: QtROClientIoDeviceshouldReconnectSlot) =
  var tmp = new QtROClientIoDeviceshouldReconnectSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQtROClientIoDevice_connect_shouldReconnect(self.h, cast[int](addr tmp[]), fcQtROClientIoDevice_slot_callback_shouldReconnect, fcQtROClientIoDevice_slot_callback_shouldReconnect_release)

proc tr*(_: type gen_qconnectionfactories_types.QtROClientIoDevice, s: cstring, c: cstring): string =
  let v_ms = fcQtROClientIoDevice_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnectionfactories_types.QtROClientIoDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQtROClientIoDevice_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QtROClientIoDevicemetaObjectProc* = proc(self: QtROClientIoDevice): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QtROClientIoDevicemetacastProc* = proc(self: QtROClientIoDevice, param1: cstring): pointer {.raises: [], gcsafe.}
type QtROClientIoDevicemetacallProc* = proc(self: QtROClientIoDevice, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QtROClientIoDeviceconnectToServerProc* = proc(self: QtROClientIoDevice): void {.raises: [], gcsafe.}
type QtROClientIoDevicedoDisconnectFromServerProc* = proc(self: QtROClientIoDevice): void {.raises: [], gcsafe.}
type QtROClientIoDevicedeviceTypeProc* = proc(self: QtROClientIoDevice): string {.raises: [], gcsafe.}
type QtROClientIoDevicewrite_QByteArrayProc* = proc(self: QtROClientIoDevice, data: openArray[byte]): void {.raises: [], gcsafe.}
type QtROClientIoDeviceisOpenProc* = proc(self: QtROClientIoDevice): bool {.raises: [], gcsafe.}
type QtROClientIoDevicecloseProc* = proc(self: QtROClientIoDevice): void {.raises: [], gcsafe.}
type QtROClientIoDevicebytesAvailableProc* = proc(self: QtROClientIoDevice): clonglong {.raises: [], gcsafe.}
type QtROClientIoDeviceconnectionProc* = proc(self: QtROClientIoDevice): gen_qiodevice_types.QIODevice {.raises: [], gcsafe.}
type QtROClientIoDevicedoCloseProc* = proc(self: QtROClientIoDevice): void {.raises: [], gcsafe.}
type QtROClientIoDeviceeventProc* = proc(self: QtROClientIoDevice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QtROClientIoDeviceeventFilterProc* = proc(self: QtROClientIoDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QtROClientIoDevicetimerEventProc* = proc(self: QtROClientIoDevice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QtROClientIoDevicechildEventProc* = proc(self: QtROClientIoDevice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QtROClientIoDevicecustomEventProc* = proc(self: QtROClientIoDevice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QtROClientIoDeviceconnectNotifyProc* = proc(self: QtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QtROClientIoDevicedisconnectNotifyProc* = proc(self: QtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QtROClientIoDeviceVTable* {.inheritable, pure.} = object
  vtbl: cQtROClientIoDeviceVTable
  metaObject*: QtROClientIoDevicemetaObjectProc
  metacast*: QtROClientIoDevicemetacastProc
  metacall*: QtROClientIoDevicemetacallProc
  connectToServer*: QtROClientIoDeviceconnectToServerProc
  doDisconnectFromServer*: QtROClientIoDevicedoDisconnectFromServerProc
  deviceType*: QtROClientIoDevicedeviceTypeProc
  write_QByteArray*: QtROClientIoDevicewrite_QByteArrayProc
  isOpen*: QtROClientIoDeviceisOpenProc
  close*: QtROClientIoDevicecloseProc
  bytesAvailable*: QtROClientIoDevicebytesAvailableProc
  connection*: QtROClientIoDeviceconnectionProc
  doClose*: QtROClientIoDevicedoCloseProc
  event*: QtROClientIoDeviceeventProc
  eventFilter*: QtROClientIoDeviceeventFilterProc
  timerEvent*: QtROClientIoDevicetimerEventProc
  childEvent*: QtROClientIoDevicechildEventProc
  customEvent*: QtROClientIoDevicecustomEventProc
  connectNotify*: QtROClientIoDeviceconnectNotifyProc
  disconnectNotify*: QtROClientIoDevicedisconnectNotifyProc

proc QtROClientIoDevicemetaObject*(self: gen_qconnectionfactories_types.QtROClientIoDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROClientIoDevice_virtualbase_metaObject(self.h), owned: false)

proc QtROClientIoDevicemetacast*(self: gen_qconnectionfactories_types.QtROClientIoDevice, param1: cstring): pointer =
  fcQtROClientIoDevice_virtualbase_metacast(self.h, param1)

proc QtROClientIoDevicemetacall*(self: gen_qconnectionfactories_types.QtROClientIoDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQtROClientIoDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QtROClientIoDevicedeviceType*(self: gen_qconnectionfactories_types.QtROClientIoDevice): string =
  let v_ms = fcQtROClientIoDevice_virtualbase_deviceType(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QtROClientIoDevicewrite*(self: gen_qconnectionfactories_types.QtROClientIoDevice, data: openArray[byte]): void =
  fcQtROClientIoDevice_virtualbase_write_QByteArray(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc QtROClientIoDeviceisOpen*(self: gen_qconnectionfactories_types.QtROClientIoDevice): bool =
  fcQtROClientIoDevice_virtualbase_isOpen(self.h)

proc QtROClientIoDeviceclose*(self: gen_qconnectionfactories_types.QtROClientIoDevice): void =
  fcQtROClientIoDevice_virtualbase_close(self.h)

proc QtROClientIoDevicebytesAvailable*(self: gen_qconnectionfactories_types.QtROClientIoDevice): clonglong =
  fcQtROClientIoDevice_virtualbase_bytesAvailable(self.h)

proc QtROClientIoDeviceevent*(self: gen_qconnectionfactories_types.QtROClientIoDevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQtROClientIoDevice_virtualbase_event(self.h, event.h)

proc QtROClientIoDeviceeventFilter*(self: gen_qconnectionfactories_types.QtROClientIoDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQtROClientIoDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QtROClientIoDevicetimerEvent*(self: gen_qconnectionfactories_types.QtROClientIoDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQtROClientIoDevice_virtualbase_timerEvent(self.h, event.h)

proc QtROClientIoDevicechildEvent*(self: gen_qconnectionfactories_types.QtROClientIoDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQtROClientIoDevice_virtualbase_childEvent(self.h, event.h)

proc QtROClientIoDevicecustomEvent*(self: gen_qconnectionfactories_types.QtROClientIoDevice, event: gen_qcoreevent_types.QEvent): void =
  fcQtROClientIoDevice_virtualbase_customEvent(self.h, event.h)

proc QtROClientIoDeviceconnectNotify*(self: gen_qconnectionfactories_types.QtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQtROClientIoDevice_virtualbase_connectNotify(self.h, signal.h)

proc QtROClientIoDevicedisconnectNotify*(self: gen_qconnectionfactories_types.QtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQtROClientIoDevice_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQtROClientIoDevice_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROClientIoDevice_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQtROClientIoDevice_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQtROClientIoDevice_vtable_callback_connectToServer(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  vtbl[].connectToServer(self)

proc fcQtROClientIoDevice_vtable_callback_doDisconnectFromServer(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  vtbl[].doDisconnectFromServer(self)

proc fcQtROClientIoDevice_vtable_callback_deviceType(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  var virtualReturn = vtbl[].deviceType(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQtROClientIoDevice_vtable_callback_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  vtbl[].write_QByteArray(self, slotval1)

proc fcQtROClientIoDevice_vtable_callback_isOpen(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  var virtualReturn = vtbl[].isOpen(self)
  virtualReturn

proc fcQtROClientIoDevice_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  vtbl[].close(self)

proc fcQtROClientIoDevice_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQtROClientIoDevice_vtable_callback_connection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  var virtualReturn = vtbl[].connection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROClientIoDevice_vtable_callback_doClose(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  vtbl[].doClose(self)

proc fcQtROClientIoDevice_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQtROClientIoDevice_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQtROClientIoDevice_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQtROClientIoDevice_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQtROClientIoDevice_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQtROClientIoDevice_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQtROClientIoDevice_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
  let self = QtROClientIoDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQtROClientIoDevice* {.inheritable.} = ref object of QtROClientIoDevice
  vtbl*: cQtROClientIoDeviceVTable

method metaObject*(self: VirtualQtROClientIoDevice): gen_qobjectdefs_types.QMetaObject {.base.} =
  QtROClientIoDevicemetaObject(self[])
method metacast*(self: VirtualQtROClientIoDevice, param1: cstring): pointer {.base.} =
  QtROClientIoDevicemetacast(self[], param1)
method metacall*(self: VirtualQtROClientIoDevice, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QtROClientIoDevicemetacall(self[], param1, param2, param3)
method connectToServer*(self: VirtualQtROClientIoDevice): void {.base.} =
  raiseAssert("missing implementation of QtROClientIoDevice.connectToServer")
method doDisconnectFromServer*(self: VirtualQtROClientIoDevice): void {.base.} =
  raiseAssert("missing implementation of QtROClientIoDevice.doDisconnectFromServer")
method deviceType*(self: VirtualQtROClientIoDevice): string {.base.} =
  QtROClientIoDevicedeviceType(self[])
method write*(self: VirtualQtROClientIoDevice, data: openArray[byte]): void {.base.} =
  QtROClientIoDevicewrite(self[], data)
method isOpen*(self: VirtualQtROClientIoDevice): bool {.base.} =
  QtROClientIoDeviceisOpen(self[])
method close*(self: VirtualQtROClientIoDevice): void {.base.} =
  QtROClientIoDeviceclose(self[])
method bytesAvailable*(self: VirtualQtROClientIoDevice): clonglong {.base.} =
  QtROClientIoDevicebytesAvailable(self[])
method connection*(self: VirtualQtROClientIoDevice): gen_qiodevice_types.QIODevice {.base.} =
  raiseAssert("missing implementation of QtROClientIoDevice.connection")
method doClose*(self: VirtualQtROClientIoDevice): void {.base.} =
  raiseAssert("missing implementation of QtROClientIoDevice.doClose")
method event*(self: VirtualQtROClientIoDevice, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QtROClientIoDeviceevent(self[], event)
method eventFilter*(self: VirtualQtROClientIoDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QtROClientIoDeviceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQtROClientIoDevice, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QtROClientIoDevicetimerEvent(self[], event)
method childEvent*(self: VirtualQtROClientIoDevice, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QtROClientIoDevicechildEvent(self[], event)
method customEvent*(self: VirtualQtROClientIoDevice, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QtROClientIoDevicecustomEvent(self[], event)
method connectNotify*(self: VirtualQtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QtROClientIoDeviceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QtROClientIoDevicedisconnectNotify(self[], signal)

proc fcQtROClientIoDevice_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROClientIoDevice_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQtROClientIoDevice_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQtROClientIoDevice_method_callback_connectToServer(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  inst.connectToServer()

proc fcQtROClientIoDevice_method_callback_doDisconnectFromServer(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  inst.doDisconnectFromServer()

proc fcQtROClientIoDevice_method_callback_deviceType(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  var virtualReturn = inst.deviceType()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQtROClientIoDevice_method_callback_write_QByteArray(self: pointer, data: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  var vdata_bytearray = data
  var vdatax_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vdata_bytearray.data), 0, int(vdata_bytearray.len)-1))
  c_free(vdata_bytearray.data)
  let slotval1 = vdatax_ret
  inst.write(slotval1)

proc fcQtROClientIoDevice_method_callback_isOpen(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  var virtualReturn = inst.isOpen()
  virtualReturn

proc fcQtROClientIoDevice_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  inst.close()

proc fcQtROClientIoDevice_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQtROClientIoDevice_method_callback_connection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  var virtualReturn = inst.connection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQtROClientIoDevice_method_callback_doClose(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  inst.doClose()

proc fcQtROClientIoDevice_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQtROClientIoDevice_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQtROClientIoDevice_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQtROClientIoDevice_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQtROClientIoDevice_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQtROClientIoDevice_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQtROClientIoDevice_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQtROClientIoDevice](fcQtROClientIoDevice_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setUrl*(self: gen_qconnectionfactories_types.QtROClientIoDevice, url: gen_qurl_types.QUrl): void =
  fcQtROClientIoDevice_protectedbase_setUrl(self.h, url.h)

proc sender*(self: gen_qconnectionfactories_types.QtROClientIoDevice): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQtROClientIoDevice_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnectionfactories_types.QtROClientIoDevice): cint =
  fcQtROClientIoDevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnectionfactories_types.QtROClientIoDevice, signal: cstring): cint =
  fcQtROClientIoDevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnectionfactories_types.QtROClientIoDevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQtROClientIoDevice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnectionfactories_types.QtROClientIoDevice,
    vtbl: ref QtROClientIoDeviceVTable = nil): gen_qconnectionfactories_types.QtROClientIoDevice =
  let vtbl = if vtbl == nil: new QtROClientIoDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQtROClientIoDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQtROClientIoDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQtROClientIoDevice_vtable_callback_metacall
  if not isNil(vtbl[].connectToServer):
    vtbl[].vtbl.connectToServer = fcQtROClientIoDevice_vtable_callback_connectToServer
  if not isNil(vtbl[].doDisconnectFromServer):
    vtbl[].vtbl.doDisconnectFromServer = fcQtROClientIoDevice_vtable_callback_doDisconnectFromServer
  if not isNil(vtbl[].deviceType):
    vtbl[].vtbl.deviceType = fcQtROClientIoDevice_vtable_callback_deviceType
  if not isNil(vtbl[].write_QByteArray):
    vtbl[].vtbl.write_QByteArray = fcQtROClientIoDevice_vtable_callback_write_QByteArray
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQtROClientIoDevice_vtable_callback_isOpen
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQtROClientIoDevice_vtable_callback_close
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQtROClientIoDevice_vtable_callback_bytesAvailable
  if not isNil(vtbl[].connection):
    vtbl[].vtbl.connection = fcQtROClientIoDevice_vtable_callback_connection
  if not isNil(vtbl[].doClose):
    vtbl[].vtbl.doClose = fcQtROClientIoDevice_vtable_callback_doClose
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQtROClientIoDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQtROClientIoDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQtROClientIoDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQtROClientIoDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQtROClientIoDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQtROClientIoDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQtROClientIoDevice_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QtROClientIoDevice(h: fcQtROClientIoDevice_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQtROClientIoDevice_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnectionfactories_types.QtROClientIoDevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QtROClientIoDeviceVTable = nil): gen_qconnectionfactories_types.QtROClientIoDevice =
  let vtbl = if vtbl == nil: new QtROClientIoDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QtROClientIoDeviceVTable](fcQtROClientIoDevice_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQtROClientIoDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQtROClientIoDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQtROClientIoDevice_vtable_callback_metacall
  if not isNil(vtbl[].connectToServer):
    vtbl[].vtbl.connectToServer = fcQtROClientIoDevice_vtable_callback_connectToServer
  if not isNil(vtbl[].doDisconnectFromServer):
    vtbl[].vtbl.doDisconnectFromServer = fcQtROClientIoDevice_vtable_callback_doDisconnectFromServer
  if not isNil(vtbl[].deviceType):
    vtbl[].vtbl.deviceType = fcQtROClientIoDevice_vtable_callback_deviceType
  if not isNil(vtbl[].write_QByteArray):
    vtbl[].vtbl.write_QByteArray = fcQtROClientIoDevice_vtable_callback_write_QByteArray
  if not isNil(vtbl[].isOpen):
    vtbl[].vtbl.isOpen = fcQtROClientIoDevice_vtable_callback_isOpen
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQtROClientIoDevice_vtable_callback_close
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQtROClientIoDevice_vtable_callback_bytesAvailable
  if not isNil(vtbl[].connection):
    vtbl[].vtbl.connection = fcQtROClientIoDevice_vtable_callback_connection
  if not isNil(vtbl[].doClose):
    vtbl[].vtbl.doClose = fcQtROClientIoDevice_vtable_callback_doClose
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQtROClientIoDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQtROClientIoDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQtROClientIoDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQtROClientIoDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQtROClientIoDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQtROClientIoDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQtROClientIoDevice_vtable_callback_disconnectNotify
  let tmp = gen_qconnectionfactories_types.QtROClientIoDevice(h: fcQtROClientIoDevice_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQtROClientIoDevice_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQtROClientIoDevice_mvtbl = cQtROClientIoDeviceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQtROClientIoDevice()[])](self.fcQtROClientIoDevice_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQtROClientIoDevice_method_callback_metaObject,
  metacast: fcQtROClientIoDevice_method_callback_metacast,
  metacall: fcQtROClientIoDevice_method_callback_metacall,
  connectToServer: fcQtROClientIoDevice_method_callback_connectToServer,
  doDisconnectFromServer: fcQtROClientIoDevice_method_callback_doDisconnectFromServer,
  deviceType: fcQtROClientIoDevice_method_callback_deviceType,
  write_QByteArray: fcQtROClientIoDevice_method_callback_write_QByteArray,
  isOpen: fcQtROClientIoDevice_method_callback_isOpen,
  close: fcQtROClientIoDevice_method_callback_close,
  bytesAvailable: fcQtROClientIoDevice_method_callback_bytesAvailable,
  connection: fcQtROClientIoDevice_method_callback_connection,
  doClose: fcQtROClientIoDevice_method_callback_doClose,
  event: fcQtROClientIoDevice_method_callback_event,
  eventFilter: fcQtROClientIoDevice_method_callback_eventFilter,
  timerEvent: fcQtROClientIoDevice_method_callback_timerEvent,
  childEvent: fcQtROClientIoDevice_method_callback_childEvent,
  customEvent: fcQtROClientIoDevice_method_callback_customEvent,
  connectNotify: fcQtROClientIoDevice_method_callback_connectNotify,
  disconnectNotify: fcQtROClientIoDevice_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnectionfactories_types.QtROClientIoDevice,
    inst: VirtualQtROClientIoDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQtROClientIoDevice_new(addr(cQtROClientIoDevice_mvtbl), csize_t(sizeof(pointer)))
  fcQtROClientIoDevice_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnectionfactories_types.QtROClientIoDevice,
    parent: gen_qobject_types.QObject,
    inst: VirtualQtROClientIoDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQtROClientIoDevice_new2(addr(cQtROClientIoDevice_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQtROClientIoDevice_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnectionfactories_types.QtROClientIoDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQtROClientIoDevice_staticMetaObject())
proc instance*(_: type gen_qconnectionfactories_types.QtROServerFactory): gen_qconnectionfactories_types.QtROServerFactory =
  gen_qconnectionfactories_types.QtROServerFactory(h: fcQtROServerFactory_instance(), owned: false)

proc createX*(self: gen_qconnectionfactories_types.QtROServerFactory, url: gen_qurl_types.QUrl): gen_qconnectionfactories_types.QConnectionAbstractServer =
  gen_qconnectionfactories_types.QConnectionAbstractServer(h: fcQtROServerFactory_createUrl(self.h, url.h), owned: false)

proc isValid*(self: gen_qconnectionfactories_types.QtROServerFactory, url: gen_qurl_types.QUrl): bool =
  fcQtROServerFactory_isValid(self.h, url.h)

proc operatorAssign*(self: gen_qconnectionfactories_types.QtROServerFactory, fromVal: gen_qconnectionfactories_types.QtROServerFactory): void =
  fcQtROServerFactory_operatorAssign(self.h, fromVal.h)

proc createX*(self: gen_qconnectionfactories_types.QtROServerFactory, url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject): gen_qconnectionfactories_types.QConnectionAbstractServer =
  gen_qconnectionfactories_types.QConnectionAbstractServer(h: fcQtROServerFactory_createUrlParent(self.h, url.h, parent.h), owned: false)

proc create*(T: type gen_qconnectionfactories_types.QtROServerFactory,
    fromVal: gen_qconnectionfactories_types.QtROServerFactory): gen_qconnectionfactories_types.QtROServerFactory =
  let tmp = gen_qconnectionfactories_types.QtROServerFactory(h: fcQtROServerFactory_new(fromVal.h), owned: true)
  tmp
proc instance*(_: type gen_qconnectionfactories_types.QtROClientFactory): gen_qconnectionfactories_types.QtROClientFactory =
  gen_qconnectionfactories_types.QtROClientFactory(h: fcQtROClientFactory_instance(), owned: false)

proc createX*(self: gen_qconnectionfactories_types.QtROClientFactory, url: gen_qurl_types.QUrl): gen_qconnectionfactories_types.QtROClientIoDevice =
  gen_qconnectionfactories_types.QtROClientIoDevice(h: fcQtROClientFactory_createUrl(self.h, url.h), owned: false)

proc isValid*(self: gen_qconnectionfactories_types.QtROClientFactory, url: gen_qurl_types.QUrl): bool =
  fcQtROClientFactory_isValid(self.h, url.h)

proc operatorAssign*(self: gen_qconnectionfactories_types.QtROClientFactory, fromVal: gen_qconnectionfactories_types.QtROClientFactory): void =
  fcQtROClientFactory_operatorAssign(self.h, fromVal.h)

proc createX*(self: gen_qconnectionfactories_types.QtROClientFactory, url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject): gen_qconnectionfactories_types.QtROClientIoDevice =
  gen_qconnectionfactories_types.QtROClientIoDevice(h: fcQtROClientFactory_createUrlParent(self.h, url.h, parent.h), owned: false)

proc create*(T: type gen_qconnectionfactories_types.QtROClientFactory,
    fromVal: gen_qconnectionfactories_types.QtROClientFactory): gen_qconnectionfactories_types.QtROClientFactory =
  let tmp = gen_qconnectionfactories_types.QtROClientFactory(h: fcQtROClientFactory_new(fromVal.h), owned: true)
  tmp
