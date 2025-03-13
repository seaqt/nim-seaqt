import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qlocalserver.cpp", cflags).}


type QLocalServerSocketOptionEnum* = distinct cint
template NoOptions*(_: type QLocalServerSocketOptionEnum): untyped = 0
template UserAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 1
template GroupAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 2
template OtherAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 4
template WorldAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 7
template AbstractNamespaceOption*(_: type QLocalServerSocketOptionEnum): untyped = 8


import ./gen_qlocalserver_types
export gen_qlocalserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qlocalsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qlocalsocket_types

type cQLocalServer*{.exportc: "QLocalServer", incompleteStruct.} = object

proc fcQLocalServer_metaObject(self: pointer): pointer {.importc: "QLocalServer_metaObject".}
proc fcQLocalServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalServer_metacast".}
proc fcQLocalServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalServer_metacall".}
proc fcQLocalServer_tr(s: cstring): struct_miqt_string {.importc: "QLocalServer_tr".}
proc fcQLocalServer_newConnection(self: pointer): void {.importc: "QLocalServer_newConnection".}
proc fcQLocalServer_connect_newConnection(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLocalServer_connect_newConnection".}
proc fcQLocalServer_close(self: pointer): void {.importc: "QLocalServer_close".}
proc fcQLocalServer_errorString(self: pointer): struct_miqt_string {.importc: "QLocalServer_errorString".}
proc fcQLocalServer_hasPendingConnections(self: pointer): bool {.importc: "QLocalServer_hasPendingConnections".}
proc fcQLocalServer_isListening(self: pointer): bool {.importc: "QLocalServer_isListening".}
proc fcQLocalServer_listen(self: pointer, name: struct_miqt_string): bool {.importc: "QLocalServer_listen".}
proc fcQLocalServer_listenWithSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QLocalServer_listenWithSocketDescriptor".}
proc fcQLocalServer_maxPendingConnections(self: pointer): cint {.importc: "QLocalServer_maxPendingConnections".}
proc fcQLocalServer_nextPendingConnection(self: pointer): pointer {.importc: "QLocalServer_nextPendingConnection".}
proc fcQLocalServer_serverName(self: pointer): struct_miqt_string {.importc: "QLocalServer_serverName".}
proc fcQLocalServer_fullServerName(self: pointer): struct_miqt_string {.importc: "QLocalServer_fullServerName".}
proc fcQLocalServer_removeServer(name: struct_miqt_string): bool {.importc: "QLocalServer_removeServer".}
proc fcQLocalServer_serverError(self: pointer): cint {.importc: "QLocalServer_serverError".}
proc fcQLocalServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QLocalServer_setMaxPendingConnections".}
proc fcQLocalServer_waitForNewConnection(self: pointer): bool {.importc: "QLocalServer_waitForNewConnection".}
proc fcQLocalServer_setListenBacklogSize(self: pointer, size: cint): void {.importc: "QLocalServer_setListenBacklogSize".}
proc fcQLocalServer_listenBacklogSize(self: pointer): cint {.importc: "QLocalServer_listenBacklogSize".}
proc fcQLocalServer_setSocketOptions(self: pointer, options: cint): void {.importc: "QLocalServer_setSocketOptions".}
proc fcQLocalServer_socketOptions(self: pointer): cint {.importc: "QLocalServer_socketOptions".}
proc fcQLocalServer_socketDescriptor(self: pointer): uint {.importc: "QLocalServer_socketDescriptor".}
proc fcQLocalServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLocalServer_tr2".}
proc fcQLocalServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLocalServer_tr3".}
proc fcQLocalServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QLocalServer_waitForNewConnection1".}
proc fcQLocalServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QLocalServer_waitForNewConnection2".}
proc fcQLocalServer_vtbl(self: pointer): pointer {.importc: "QLocalServer_vtbl".}
proc fcQLocalServer_vdata(self: pointer): pointer {.importc: "QLocalServer_vdata".}
type cQLocalServerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasPendingConnections*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  nextPendingConnection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  incomingConnection*: proc(self: pointer, socketDescriptor: uint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLocalServer_virtualbase_metaObject(self: pointer): pointer {.importc: "QLocalServer_virtualbase_metaObject".}
proc fcQLocalServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalServer_virtualbase_metacast".}
proc fcQLocalServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalServer_virtualbase_metacall".}
proc fcQLocalServer_virtualbase_hasPendingConnections(self: pointer): bool {.importc: "QLocalServer_virtualbase_hasPendingConnections".}
proc fcQLocalServer_virtualbase_nextPendingConnection(self: pointer): pointer {.importc: "QLocalServer_virtualbase_nextPendingConnection".}
proc fcQLocalServer_virtualbase_incomingConnection(self: pointer, socketDescriptor: uint): void {.importc: "QLocalServer_virtualbase_incomingConnection".}
proc fcQLocalServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QLocalServer_virtualbase_event".}
proc fcQLocalServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLocalServer_virtualbase_eventFilter".}
proc fcQLocalServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLocalServer_virtualbase_timerEvent".}
proc fcQLocalServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLocalServer_virtualbase_childEvent".}
proc fcQLocalServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLocalServer_virtualbase_customEvent".}
proc fcQLocalServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLocalServer_virtualbase_connectNotify".}
proc fcQLocalServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLocalServer_virtualbase_disconnectNotify".}
proc fcQLocalServer_protectedbase_sender(self: pointer): pointer {.importc: "QLocalServer_protectedbase_sender".}
proc fcQLocalServer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLocalServer_protectedbase_senderSignalIndex".}
proc fcQLocalServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLocalServer_protectedbase_receivers".}
proc fcQLocalServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLocalServer_protectedbase_isSignalConnected".}
proc fcQLocalServer_new(vtbl, vdata: pointer): ptr cQLocalServer {.importc: "QLocalServer_new".}
proc fcQLocalServer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQLocalServer {.importc: "QLocalServer_new2".}
proc fcQLocalServer_staticMetaObject(): pointer {.importc: "QLocalServer_staticMetaObject".}

proc metaObject*(self: gen_qlocalserver_types.QLocalServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalServer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlocalserver_types.QLocalServer, param1: cstring): pointer =
  fcQLocalServer_metacast(self.h, param1)

proc metacall*(self: gen_qlocalserver_types.QLocalServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQLocalServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlocalserver_types.QLocalServer, s: cstring): string =
  let v_ms = fcQLocalServer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc newConnection*(self: gen_qlocalserver_types.QLocalServer): void =
  fcQLocalServer_newConnection(self.h)

type QLocalServernewConnectionSlot* = proc()
proc cQLocalServer_slot_callback_newConnection(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLocalServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc cQLocalServer_slot_callback_newConnection_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLocalServernewConnectionSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnewConnection*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServernewConnectionSlot) =
  var tmp = new QLocalServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_connect_newConnection(self.h, cast[int](addr tmp[]), cQLocalServer_slot_callback_newConnection, cQLocalServer_slot_callback_newConnection_release)

proc close*(self: gen_qlocalserver_types.QLocalServer): void =
  fcQLocalServer_close(self.h)

proc errorString*(self: gen_qlocalserver_types.QLocalServer): string =
  let v_ms = fcQLocalServer_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasPendingConnections*(self: gen_qlocalserver_types.QLocalServer): bool =
  fcQLocalServer_hasPendingConnections(self.h)

proc isListening*(self: gen_qlocalserver_types.QLocalServer): bool =
  fcQLocalServer_isListening(self.h)

proc listen*(self: gen_qlocalserver_types.QLocalServer, name: openArray[char]): bool =
  fcQLocalServer_listen(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc listen*(self: gen_qlocalserver_types.QLocalServer, socketDescriptor: uint): bool =
  fcQLocalServer_listenWithSocketDescriptor(self.h, socketDescriptor)

proc maxPendingConnections*(self: gen_qlocalserver_types.QLocalServer): cint =
  fcQLocalServer_maxPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qlocalserver_types.QLocalServer): gen_qlocalsocket_types.QLocalSocket =
  gen_qlocalsocket_types.QLocalSocket(h: fcQLocalServer_nextPendingConnection(self.h), owned: false)

proc serverName*(self: gen_qlocalserver_types.QLocalServer): string =
  let v_ms = fcQLocalServer_serverName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fullServerName*(self: gen_qlocalserver_types.QLocalServer): string =
  let v_ms = fcQLocalServer_fullServerName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc removeServer*(_: type gen_qlocalserver_types.QLocalServer, name: openArray[char]): bool =
  fcQLocalServer_removeServer(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc serverError*(self: gen_qlocalserver_types.QLocalServer): cint =
  cint(fcQLocalServer_serverError(self.h))

proc setMaxPendingConnections*(self: gen_qlocalserver_types.QLocalServer, numConnections: cint): void =
  fcQLocalServer_setMaxPendingConnections(self.h, numConnections)

proc waitForNewConnection*(self: gen_qlocalserver_types.QLocalServer): bool =
  fcQLocalServer_waitForNewConnection(self.h)

proc setListenBacklogSize*(self: gen_qlocalserver_types.QLocalServer, size: cint): void =
  fcQLocalServer_setListenBacklogSize(self.h, size)

proc listenBacklogSize*(self: gen_qlocalserver_types.QLocalServer): cint =
  fcQLocalServer_listenBacklogSize(self.h)

proc setSocketOptions*(self: gen_qlocalserver_types.QLocalServer, options: cint): void =
  fcQLocalServer_setSocketOptions(self.h, cint(options))

proc socketOptions*(self: gen_qlocalserver_types.QLocalServer): cint =
  cint(fcQLocalServer_socketOptions(self.h))

proc socketDescriptor*(self: gen_qlocalserver_types.QLocalServer): uint =
  fcQLocalServer_socketDescriptor(self.h)

proc tr*(_: type gen_qlocalserver_types.QLocalServer, s: cstring, c: cstring): string =
  let v_ms = fcQLocalServer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlocalserver_types.QLocalServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLocalServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc waitForNewConnection*(self: gen_qlocalserver_types.QLocalServer, msec: cint): bool =
  fcQLocalServer_waitForNewConnection1(self.h, msec)

proc waitForNewConnection*(self: gen_qlocalserver_types.QLocalServer, msec: cint, timedOut: ptr bool): bool =
  fcQLocalServer_waitForNewConnection2(self.h, msec, timedOut)

type QLocalServermetaObjectProc* = proc(self: QLocalServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLocalServermetacastProc* = proc(self: QLocalServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QLocalServermetacallProc* = proc(self: QLocalServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLocalServerhasPendingConnectionsProc* = proc(self: QLocalServer): bool {.raises: [], gcsafe.}
type QLocalServernextPendingConnectionProc* = proc(self: QLocalServer): gen_qlocalsocket_types.QLocalSocket {.raises: [], gcsafe.}
type QLocalServerincomingConnectionProc* = proc(self: QLocalServer, socketDescriptor: uint): void {.raises: [], gcsafe.}
type QLocalServereventProc* = proc(self: QLocalServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLocalServereventFilterProc* = proc(self: QLocalServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLocalServertimerEventProc* = proc(self: QLocalServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLocalServerchildEventProc* = proc(self: QLocalServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLocalServercustomEventProc* = proc(self: QLocalServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLocalServerconnectNotifyProc* = proc(self: QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLocalServerdisconnectNotifyProc* = proc(self: QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLocalServerVTable* {.inheritable, pure.} = object
  vtbl: cQLocalServerVTable
  metaObject*: QLocalServermetaObjectProc
  metacast*: QLocalServermetacastProc
  metacall*: QLocalServermetacallProc
  hasPendingConnections*: QLocalServerhasPendingConnectionsProc
  nextPendingConnection*: QLocalServernextPendingConnectionProc
  incomingConnection*: QLocalServerincomingConnectionProc
  event*: QLocalServereventProc
  eventFilter*: QLocalServereventFilterProc
  timerEvent*: QLocalServertimerEventProc
  childEvent*: QLocalServerchildEventProc
  customEvent*: QLocalServercustomEventProc
  connectNotify*: QLocalServerconnectNotifyProc
  disconnectNotify*: QLocalServerdisconnectNotifyProc
proc QLocalServermetaObject*(self: gen_qlocalserver_types.QLocalServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalServer_virtualbase_metaObject(self.h), owned: false)

proc cQLocalServer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLocalServermetacast*(self: gen_qlocalserver_types.QLocalServer, param1: cstring): pointer =
  fcQLocalServer_virtualbase_metacast(self.h, param1)

proc cQLocalServer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QLocalServermetacall*(self: gen_qlocalserver_types.QLocalServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQLocalServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQLocalServer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLocalServerhasPendingConnections*(self: gen_qlocalserver_types.QLocalServer): bool =
  fcQLocalServer_virtualbase_hasPendingConnections(self.h)

proc cQLocalServer_vtable_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  var virtualReturn = vtbl[].hasPendingConnections(self)
  virtualReturn

proc QLocalServernextPendingConnection*(self: gen_qlocalserver_types.QLocalServer): gen_qlocalsocket_types.QLocalSocket =
  gen_qlocalsocket_types.QLocalSocket(h: fcQLocalServer_virtualbase_nextPendingConnection(self.h), owned: false)

proc cQLocalServer_vtable_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  var virtualReturn = vtbl[].nextPendingConnection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLocalServerincomingConnection*(self: gen_qlocalserver_types.QLocalServer, socketDescriptor: uint): void =
  fcQLocalServer_virtualbase_incomingConnection(self.h, socketDescriptor)

proc cQLocalServer_vtable_callback_incomingConnection(self: pointer, socketDescriptor: uint): void {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = socketDescriptor
  vtbl[].incomingConnection(self, slotval1)

proc QLocalServerevent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQLocalServer_virtualbase_event(self.h, event.h)

proc cQLocalServer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QLocalServereventFilter*(self: gen_qlocalserver_types.QLocalServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLocalServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQLocalServer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QLocalServertimerEvent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLocalServer_virtualbase_timerEvent(self.h, event.h)

proc cQLocalServer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QLocalServerchildEvent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLocalServer_virtualbase_childEvent(self.h, event.h)

proc cQLocalServer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QLocalServercustomEvent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QEvent): void =
  fcQLocalServer_virtualbase_customEvent(self.h, event.h)

proc cQLocalServer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QLocalServerconnectNotify*(self: gen_qlocalserver_types.QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLocalServer_virtualbase_connectNotify(self.h, signal.h)

proc cQLocalServer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QLocalServerdisconnectNotify*(self: gen_qlocalserver_types.QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLocalServer_virtualbase_disconnectNotify(self.h, signal.h)

proc cQLocalServer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalServerVTable](fcQLocalServer_vdata(self))
  let self = QLocalServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLocalServer* {.inheritable.} = ref object of QLocalServer
  vtbl*: cQLocalServerVTable
method metaObject*(self: VirtualQLocalServer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLocalServermetaObject(self[])
proc cQLocalServer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQLocalServer, param1: cstring): pointer {.base.} =
  QLocalServermetacast(self[], param1)
proc cQLocalServer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQLocalServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLocalServermetacall(self[], param1, param2, param3)
proc cQLocalServer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method hasPendingConnections*(self: VirtualQLocalServer): bool {.base.} =
  QLocalServerhasPendingConnections(self[])
proc cQLocalServer_method_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  var virtualReturn = inst.hasPendingConnections()
  virtualReturn

method nextPendingConnection*(self: VirtualQLocalServer): gen_qlocalsocket_types.QLocalSocket {.base.} =
  QLocalServernextPendingConnection(self[])
proc cQLocalServer_method_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  var virtualReturn = inst.nextPendingConnection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method incomingConnection*(self: VirtualQLocalServer, socketDescriptor: uint): void {.base.} =
  QLocalServerincomingConnection(self[], socketDescriptor)
proc cQLocalServer_method_callback_incomingConnection(self: pointer, socketDescriptor: uint): void {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = socketDescriptor
  inst.incomingConnection(slotval1)

method event*(self: VirtualQLocalServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLocalServerevent(self[], event)
proc cQLocalServer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQLocalServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLocalServereventFilter(self[], watched, event)
proc cQLocalServer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQLocalServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLocalServertimerEvent(self[], event)
proc cQLocalServer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQLocalServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLocalServerchildEvent(self[], event)
proc cQLocalServer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQLocalServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLocalServercustomEvent(self[], event)
proc cQLocalServer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLocalServerconnectNotify(self[], signal)
proc cQLocalServer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLocalServerdisconnectNotify(self[], signal)
proc cQLocalServer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalServer](fcQLocalServer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qlocalserver_types.QLocalServer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLocalServer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlocalserver_types.QLocalServer): cint =
  fcQLocalServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlocalserver_types.QLocalServer, signal: cstring): cint =
  fcQLocalServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlocalserver_types.QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLocalServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlocalserver_types.QLocalServer,
    vtbl: ref QLocalServerVTable = nil): gen_qlocalserver_types.QLocalServer =
  let vtbl = if vtbl == nil: new QLocalServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLocalServerVTable](fcQLocalServer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLocalServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLocalServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLocalServer_vtable_callback_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = cQLocalServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = cQLocalServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = cQLocalServer_vtable_callback_incomingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLocalServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLocalServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLocalServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLocalServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLocalServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLocalServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLocalServer_vtable_callback_disconnectNotify
  gen_qlocalserver_types.QLocalServer(h: fcQLocalServer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlocalserver_types.QLocalServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QLocalServerVTable = nil): gen_qlocalserver_types.QLocalServer =
  let vtbl = if vtbl == nil: new QLocalServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLocalServerVTable](fcQLocalServer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLocalServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLocalServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLocalServer_vtable_callback_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = cQLocalServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = cQLocalServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = cQLocalServer_vtable_callback_incomingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLocalServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLocalServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLocalServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLocalServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLocalServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLocalServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLocalServer_vtable_callback_disconnectNotify
  gen_qlocalserver_types.QLocalServer(h: fcQLocalServer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQLocalServer_mvtbl = cQLocalServerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLocalServer()[])](self.fcQLocalServer_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQLocalServer_method_callback_metaObject,
  metacast: cQLocalServer_method_callback_metacast,
  metacall: cQLocalServer_method_callback_metacall,
  hasPendingConnections: cQLocalServer_method_callback_hasPendingConnections,
  nextPendingConnection: cQLocalServer_method_callback_nextPendingConnection,
  incomingConnection: cQLocalServer_method_callback_incomingConnection,
  event: cQLocalServer_method_callback_event,
  eventFilter: cQLocalServer_method_callback_eventFilter,
  timerEvent: cQLocalServer_method_callback_timerEvent,
  childEvent: cQLocalServer_method_callback_childEvent,
  customEvent: cQLocalServer_method_callback_customEvent,
  connectNotify: cQLocalServer_method_callback_connectNotify,
  disconnectNotify: cQLocalServer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlocalserver_types.QLocalServer,
    inst: VirtualQLocalServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLocalServer_new(addr(cQLocalServer_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlocalserver_types.QLocalServer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQLocalServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLocalServer_new2(addr(cQLocalServer_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlocalserver_types.QLocalServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalServer_staticMetaObject())
