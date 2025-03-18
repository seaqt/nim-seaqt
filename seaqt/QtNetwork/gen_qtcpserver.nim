import ./qtnetwork_pkg

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


{.compile("gen_qtcpserver.cpp", QtNetworkCFlags).}


import ./gen_qtcpserver_types
export gen_qtcpserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qhostaddress_types,
  ./gen_qnetworkproxy_types,
  ./gen_qtcpsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qhostaddress_types,
  gen_qnetworkproxy_types,
  gen_qtcpsocket_types

type cQTcpServer*{.exportc: "QTcpServer", incompleteStruct.} = object

proc fcQTcpServer_metaObject(self: pointer): pointer {.importc: "QTcpServer_metaObject".}
proc fcQTcpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpServer_metacast".}
proc fcQTcpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpServer_metacall".}
proc fcQTcpServer_tr(s: cstring): struct_miqt_string {.importc: "QTcpServer_tr".}
proc fcQTcpServer_trUtf8(s: cstring): struct_miqt_string {.importc: "QTcpServer_trUtf8".}
proc fcQTcpServer_listen(self: pointer): bool {.importc: "QTcpServer_listen".}
proc fcQTcpServer_close(self: pointer): void {.importc: "QTcpServer_close".}
proc fcQTcpServer_isListening(self: pointer): bool {.importc: "QTcpServer_isListening".}
proc fcQTcpServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QTcpServer_setMaxPendingConnections".}
proc fcQTcpServer_maxPendingConnections(self: pointer): cint {.importc: "QTcpServer_maxPendingConnections".}
proc fcQTcpServer_serverPort(self: pointer): cushort {.importc: "QTcpServer_serverPort".}
proc fcQTcpServer_serverAddress(self: pointer): pointer {.importc: "QTcpServer_serverAddress".}
proc fcQTcpServer_socketDescriptor(self: pointer): uint {.importc: "QTcpServer_socketDescriptor".}
proc fcQTcpServer_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QTcpServer_setSocketDescriptor".}
proc fcQTcpServer_waitForNewConnection(self: pointer): bool {.importc: "QTcpServer_waitForNewConnection".}
proc fcQTcpServer_hasPendingConnections(self: pointer): bool {.importc: "QTcpServer_hasPendingConnections".}
proc fcQTcpServer_nextPendingConnection(self: pointer): pointer {.importc: "QTcpServer_nextPendingConnection".}
proc fcQTcpServer_serverError(self: pointer): cint {.importc: "QTcpServer_serverError".}
proc fcQTcpServer_errorString(self: pointer): struct_miqt_string {.importc: "QTcpServer_errorString".}
proc fcQTcpServer_pauseAccepting(self: pointer): void {.importc: "QTcpServer_pauseAccepting".}
proc fcQTcpServer_resumeAccepting(self: pointer): void {.importc: "QTcpServer_resumeAccepting".}
proc fcQTcpServer_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QTcpServer_setProxy".}
proc fcQTcpServer_proxy(self: pointer): pointer {.importc: "QTcpServer_proxy".}
proc fcQTcpServer_newConnection(self: pointer): void {.importc: "QTcpServer_newConnection".}
proc fcQTcpServer_connect_newConnection(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTcpServer_connect_newConnection".}
proc fcQTcpServer_acceptError(self: pointer, socketError: cint): void {.importc: "QTcpServer_acceptError".}
proc fcQTcpServer_connect_acceptError(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTcpServer_connect_acceptError".}
proc fcQTcpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpServer_tr2".}
proc fcQTcpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpServer_tr3".}
proc fcQTcpServer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpServer_trUtf82".}
proc fcQTcpServer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpServer_trUtf83".}
proc fcQTcpServer_listen1(self: pointer, address: pointer): bool {.importc: "QTcpServer_listen1".}
proc fcQTcpServer_listen2(self: pointer, address: pointer, port: cushort): bool {.importc: "QTcpServer_listen2".}
proc fcQTcpServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QTcpServer_waitForNewConnection1".}
proc fcQTcpServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QTcpServer_waitForNewConnection2".}
proc fcQTcpServer_vtbl(self: pointer): pointer {.importc: "QTcpServer_vtbl".}
proc fcQTcpServer_vdata(self: pointer): pointer {.importc: "QTcpServer_vdata".}

type cQTcpServerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasPendingConnections*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  nextPendingConnection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  incomingConnection*: proc(self: pointer, handle: uint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTcpServer_virtualbase_metaObject(self: pointer): pointer {.importc: "QTcpServer_virtualbase_metaObject".}
proc fcQTcpServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpServer_virtualbase_metacast".}
proc fcQTcpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpServer_virtualbase_metacall".}
proc fcQTcpServer_virtualbase_hasPendingConnections(self: pointer): bool {.importc: "QTcpServer_virtualbase_hasPendingConnections".}
proc fcQTcpServer_virtualbase_nextPendingConnection(self: pointer): pointer {.importc: "QTcpServer_virtualbase_nextPendingConnection".}
proc fcQTcpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void {.importc: "QTcpServer_virtualbase_incomingConnection".}
proc fcQTcpServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTcpServer_virtualbase_event".}
proc fcQTcpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTcpServer_virtualbase_eventFilter".}
proc fcQTcpServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTcpServer_virtualbase_timerEvent".}
proc fcQTcpServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTcpServer_virtualbase_childEvent".}
proc fcQTcpServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTcpServer_virtualbase_customEvent".}
proc fcQTcpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTcpServer_virtualbase_connectNotify".}
proc fcQTcpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTcpServer_virtualbase_disconnectNotify".}
proc fcQTcpServer_protectedbase_addPendingConnection(self: pointer, socket: pointer): void {.importc: "QTcpServer_protectedbase_addPendingConnection".}
proc fcQTcpServer_protectedbase_sender(self: pointer): pointer {.importc: "QTcpServer_protectedbase_sender".}
proc fcQTcpServer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTcpServer_protectedbase_senderSignalIndex".}
proc fcQTcpServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTcpServer_protectedbase_receivers".}
proc fcQTcpServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTcpServer_protectedbase_isSignalConnected".}
proc fcQTcpServer_new(vtbl, vdata: pointer): ptr cQTcpServer {.importc: "QTcpServer_new".}
proc fcQTcpServer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTcpServer {.importc: "QTcpServer_new2".}
proc fcQTcpServer_staticMetaObject(): pointer {.importc: "QTcpServer_staticMetaObject".}

proc metaObject*(self: gen_qtcpserver_types.QTcpServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtcpserver_types.QTcpServer, param1: cstring): pointer =
  fcQTcpServer_metacast(self.h, param1)

proc metacall*(self: gen_qtcpserver_types.QTcpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring): string =
  let v_ms = fcQTcpServer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpserver_types.QTcpServer, s: cstring): string =
  let v_ms = fcQTcpServer_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qtcpserver_types.QTcpServer): bool =
  fcQTcpServer_listen(self.h)

proc close*(self: gen_qtcpserver_types.QTcpServer): void =
  fcQTcpServer_close(self.h)

proc isListening*(self: gen_qtcpserver_types.QTcpServer): bool =
  fcQTcpServer_isListening(self.h)

proc setMaxPendingConnections*(self: gen_qtcpserver_types.QTcpServer, numConnections: cint): void =
  fcQTcpServer_setMaxPendingConnections(self.h, numConnections)

proc maxPendingConnections*(self: gen_qtcpserver_types.QTcpServer): cint =
  fcQTcpServer_maxPendingConnections(self.h)

proc serverPort*(self: gen_qtcpserver_types.QTcpServer): cushort =
  fcQTcpServer_serverPort(self.h)

proc serverAddress*(self: gen_qtcpserver_types.QTcpServer): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQTcpServer_serverAddress(self.h), owned: true)

proc socketDescriptor*(self: gen_qtcpserver_types.QTcpServer): uint =
  fcQTcpServer_socketDescriptor(self.h)

proc setSocketDescriptor*(self: gen_qtcpserver_types.QTcpServer, socketDescriptor: uint): bool =
  fcQTcpServer_setSocketDescriptor(self.h, socketDescriptor)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer): bool =
  fcQTcpServer_waitForNewConnection(self.h)

proc hasPendingConnections*(self: gen_qtcpserver_types.QTcpServer): bool =
  fcQTcpServer_hasPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qtcpserver_types.QTcpServer): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpServer_nextPendingConnection(self.h), owned: false)

proc serverError*(self: gen_qtcpserver_types.QTcpServer): cint =
  cint(fcQTcpServer_serverError(self.h))

proc errorString*(self: gen_qtcpserver_types.QTcpServer): string =
  let v_ms = fcQTcpServer_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pauseAccepting*(self: gen_qtcpserver_types.QTcpServer): void =
  fcQTcpServer_pauseAccepting(self.h)

proc resumeAccepting*(self: gen_qtcpserver_types.QTcpServer): void =
  fcQTcpServer_resumeAccepting(self.h)

proc setProxy*(self: gen_qtcpserver_types.QTcpServer, networkProxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQTcpServer_setProxy(self.h, networkProxy.h)

proc proxy*(self: gen_qtcpserver_types.QTcpServer): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQTcpServer_proxy(self.h), owned: true)

proc newConnection*(self: gen_qtcpserver_types.QTcpServer): void =
  fcQTcpServer_newConnection(self.h)

type QTcpServernewConnectionSlot* = proc()
proc fcQTcpServer_slot_callback_newConnection(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTcpServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQTcpServer_slot_callback_newConnection_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTcpServernewConnectionSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNewConnection*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServernewConnectionSlot) =
  var tmp = new QTcpServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_connect_newConnection(self.h, cast[int](addr tmp[]), fcQTcpServer_slot_callback_newConnection, fcQTcpServer_slot_callback_newConnection_release)

proc acceptError*(self: gen_qtcpserver_types.QTcpServer, socketError: cint): void =
  fcQTcpServer_acceptError(self.h, cint(socketError))

type QTcpServeracceptErrorSlot* = proc(socketError: cint)
proc fcQTcpServer_slot_callback_acceptError(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTcpServeracceptErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc fcQTcpServer_slot_callback_acceptError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTcpServeracceptErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAcceptError*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServeracceptErrorSlot) =
  var tmp = new QTcpServeracceptErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_connect_acceptError(self.h, cast[int](addr tmp[]), fcQTcpServer_slot_callback_acceptError, fcQTcpServer_slot_callback_acceptError_release)

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring): string =
  let v_ms = fcQTcpServer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring): string =
  let v_ms = fcQTcpServer_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpServer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qtcpserver_types.QTcpServer, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQTcpServer_listen1(self.h, address.h)

proc listen*(self: gen_qtcpserver_types.QTcpServer, address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQTcpServer_listen2(self.h, address.h, port)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer, msec: cint): bool =
  fcQTcpServer_waitForNewConnection1(self.h, msec)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer, msec: cint, timedOut: ptr bool): bool =
  fcQTcpServer_waitForNewConnection2(self.h, msec, timedOut)

type QTcpServermetaObjectProc* = proc(self: QTcpServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTcpServermetacastProc* = proc(self: QTcpServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QTcpServermetacallProc* = proc(self: QTcpServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTcpServerhasPendingConnectionsProc* = proc(self: QTcpServer): bool {.raises: [], gcsafe.}
type QTcpServernextPendingConnectionProc* = proc(self: QTcpServer): gen_qtcpsocket_types.QTcpSocket {.raises: [], gcsafe.}
type QTcpServerincomingConnectionProc* = proc(self: QTcpServer, handle: uint): void {.raises: [], gcsafe.}
type QTcpServereventProc* = proc(self: QTcpServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTcpServereventFilterProc* = proc(self: QTcpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTcpServertimerEventProc* = proc(self: QTcpServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTcpServerchildEventProc* = proc(self: QTcpServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTcpServercustomEventProc* = proc(self: QTcpServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTcpServerconnectNotifyProc* = proc(self: QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTcpServerdisconnectNotifyProc* = proc(self: QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTcpServerVTable* {.inheritable, pure.} = object
  vtbl: cQTcpServerVTable
  metaObject*: QTcpServermetaObjectProc
  metacast*: QTcpServermetacastProc
  metacall*: QTcpServermetacallProc
  hasPendingConnections*: QTcpServerhasPendingConnectionsProc
  nextPendingConnection*: QTcpServernextPendingConnectionProc
  incomingConnection*: QTcpServerincomingConnectionProc
  event*: QTcpServereventProc
  eventFilter*: QTcpServereventFilterProc
  timerEvent*: QTcpServertimerEventProc
  childEvent*: QTcpServerchildEventProc
  customEvent*: QTcpServercustomEventProc
  connectNotify*: QTcpServerconnectNotifyProc
  disconnectNotify*: QTcpServerdisconnectNotifyProc

proc QTcpServermetaObject*(self: gen_qtcpserver_types.QTcpServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_virtualbase_metaObject(self.h), owned: false)

proc QTcpServermetacast*(self: gen_qtcpserver_types.QTcpServer, param1: cstring): pointer =
  fcQTcpServer_virtualbase_metacast(self.h, param1)

proc QTcpServermetacall*(self: gen_qtcpserver_types.QTcpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTcpServerhasPendingConnections*(self: gen_qtcpserver_types.QTcpServer): bool =
  fcQTcpServer_virtualbase_hasPendingConnections(self.h)

proc QTcpServernextPendingConnection*(self: gen_qtcpserver_types.QTcpServer): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpServer_virtualbase_nextPendingConnection(self.h), owned: false)

proc QTcpServerincomingConnection*(self: gen_qtcpserver_types.QTcpServer, handle: uint): void =
  fcQTcpServer_virtualbase_incomingConnection(self.h, handle)

proc QTcpServerevent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpServer_virtualbase_event(self.h, event.h)

proc QTcpServereventFilter*(self: gen_qtcpserver_types.QTcpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTcpServertimerEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTcpServer_virtualbase_timerEvent(self.h, event.h)

proc QTcpServerchildEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTcpServer_virtualbase_childEvent(self.h, event.h)

proc QTcpServercustomEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QEvent): void =
  fcQTcpServer_virtualbase_customEvent(self.h, event.h)

proc QTcpServerconnectNotify*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpServer_virtualbase_connectNotify(self.h, signal.h)

proc QTcpServerdisconnectNotify*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpServer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTcpServer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpServer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTcpServer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTcpServer_vtable_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  var virtualReturn = vtbl[].hasPendingConnections(self)
  virtualReturn

proc fcQTcpServer_vtable_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  var virtualReturn = vtbl[].nextPendingConnection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpServer_vtable_callback_incomingConnection(self: pointer, handle: uint): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = handle
  vtbl[].incomingConnection(self, slotval1)

proc fcQTcpServer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTcpServer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTcpServer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTcpServer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTcpServer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTcpServer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTcpServer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](fcQTcpServer_vdata(self))
  let self = QTcpServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTcpServer* {.inheritable.} = ref object of QTcpServer
  vtbl*: cQTcpServerVTable

method metaObject*(self: VirtualQTcpServer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTcpServermetaObject(self[])
method metacast*(self: VirtualQTcpServer, param1: cstring): pointer {.base.} =
  QTcpServermetacast(self[], param1)
method metacall*(self: VirtualQTcpServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTcpServermetacall(self[], param1, param2, param3)
method hasPendingConnections*(self: VirtualQTcpServer): bool {.base.} =
  QTcpServerhasPendingConnections(self[])
method nextPendingConnection*(self: VirtualQTcpServer): gen_qtcpsocket_types.QTcpSocket {.base.} =
  QTcpServernextPendingConnection(self[])
method incomingConnection*(self: VirtualQTcpServer, handle: uint): void {.base.} =
  QTcpServerincomingConnection(self[], handle)
method event*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpServerevent(self[], event)
method eventFilter*(self: VirtualQTcpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpServereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTcpServertimerEvent(self[], event)
method childEvent*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTcpServerchildEvent(self[], event)
method customEvent*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTcpServercustomEvent(self[], event)
method connectNotify*(self: VirtualQTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpServerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpServerdisconnectNotify(self[], signal)

proc fcQTcpServer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpServer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTcpServer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTcpServer_method_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  var virtualReturn = inst.hasPendingConnections()
  virtualReturn

proc fcQTcpServer_method_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  var virtualReturn = inst.nextPendingConnection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpServer_method_callback_incomingConnection(self: pointer, handle: uint): void {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = handle
  inst.incomingConnection(slotval1)

proc fcQTcpServer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTcpServer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTcpServer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTcpServer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTcpServer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTcpServer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTcpServer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpServer](fcQTcpServer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc addPendingConnection*(self: gen_qtcpserver_types.QTcpServer, socket: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpServer_protectedbase_addPendingConnection(self.h, socket.h)

proc sender*(self: gen_qtcpserver_types.QTcpServer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTcpServer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtcpserver_types.QTcpServer): cint =
  fcQTcpServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtcpserver_types.QTcpServer, signal: cstring): cint =
  fcQTcpServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTcpServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    vtbl: ref QTcpServerVTable = nil): gen_qtcpserver_types.QTcpServer =
  let vtbl = if vtbl == nil: new QTcpServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTcpServerVTable](fcQTcpServer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTcpServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTcpServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTcpServer_vtable_callback_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = fcQTcpServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = fcQTcpServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = fcQTcpServer_vtable_callback_incomingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTcpServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTcpServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTcpServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTcpServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTcpServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTcpServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTcpServer_vtable_callback_disconnectNotify
  gen_qtcpserver_types.QTcpServer(h: fcQTcpServer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTcpServerVTable = nil): gen_qtcpserver_types.QTcpServer =
  let vtbl = if vtbl == nil: new QTcpServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTcpServerVTable](fcQTcpServer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTcpServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTcpServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTcpServer_vtable_callback_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = fcQTcpServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = fcQTcpServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = fcQTcpServer_vtable_callback_incomingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTcpServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTcpServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTcpServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTcpServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTcpServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTcpServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTcpServer_vtable_callback_disconnectNotify
  gen_qtcpserver_types.QTcpServer(h: fcQTcpServer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTcpServer_mvtbl = cQTcpServerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTcpServer()[])](self.fcQTcpServer_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTcpServer_method_callback_metaObject,
  metacast: fcQTcpServer_method_callback_metacast,
  metacall: fcQTcpServer_method_callback_metacall,
  hasPendingConnections: fcQTcpServer_method_callback_hasPendingConnections,
  nextPendingConnection: fcQTcpServer_method_callback_nextPendingConnection,
  incomingConnection: fcQTcpServer_method_callback_incomingConnection,
  event: fcQTcpServer_method_callback_event,
  eventFilter: fcQTcpServer_method_callback_eventFilter,
  timerEvent: fcQTcpServer_method_callback_timerEvent,
  childEvent: fcQTcpServer_method_callback_childEvent,
  customEvent: fcQTcpServer_method_callback_customEvent,
  connectNotify: fcQTcpServer_method_callback_connectNotify,
  disconnectNotify: fcQTcpServer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtcpserver_types.QTcpServer,
    inst: VirtualQTcpServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTcpServer_new(addr(cQTcpServer_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTcpServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTcpServer_new2(addr(cQTcpServer_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtcpserver_types.QTcpServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_staticMetaObject())
