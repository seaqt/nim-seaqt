import ./Qt6Network_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qtcpserver.cpp", cflags).}


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

proc fcQTcpServer_metaObject(self: pointer, ): pointer {.importc: "QTcpServer_metaObject".}
proc fcQTcpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpServer_metacast".}
proc fcQTcpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpServer_metacall".}
proc fcQTcpServer_tr(s: cstring): struct_miqt_string {.importc: "QTcpServer_tr".}
proc fcQTcpServer_listen(self: pointer, ): bool {.importc: "QTcpServer_listen".}
proc fcQTcpServer_close(self: pointer, ): void {.importc: "QTcpServer_close".}
proc fcQTcpServer_isListening(self: pointer, ): bool {.importc: "QTcpServer_isListening".}
proc fcQTcpServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QTcpServer_setMaxPendingConnections".}
proc fcQTcpServer_maxPendingConnections(self: pointer, ): cint {.importc: "QTcpServer_maxPendingConnections".}
proc fcQTcpServer_setListenBacklogSize(self: pointer, size: cint): void {.importc: "QTcpServer_setListenBacklogSize".}
proc fcQTcpServer_listenBacklogSize(self: pointer, ): cint {.importc: "QTcpServer_listenBacklogSize".}
proc fcQTcpServer_serverPort(self: pointer, ): cushort {.importc: "QTcpServer_serverPort".}
proc fcQTcpServer_serverAddress(self: pointer, ): pointer {.importc: "QTcpServer_serverAddress".}
proc fcQTcpServer_socketDescriptor(self: pointer, ): uint {.importc: "QTcpServer_socketDescriptor".}
proc fcQTcpServer_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QTcpServer_setSocketDescriptor".}
proc fcQTcpServer_waitForNewConnection(self: pointer, ): bool {.importc: "QTcpServer_waitForNewConnection".}
proc fcQTcpServer_hasPendingConnections(self: pointer, ): bool {.importc: "QTcpServer_hasPendingConnections".}
proc fcQTcpServer_nextPendingConnection(self: pointer, ): pointer {.importc: "QTcpServer_nextPendingConnection".}
proc fcQTcpServer_serverError(self: pointer, ): cint {.importc: "QTcpServer_serverError".}
proc fcQTcpServer_errorString(self: pointer, ): struct_miqt_string {.importc: "QTcpServer_errorString".}
proc fcQTcpServer_pauseAccepting(self: pointer, ): void {.importc: "QTcpServer_pauseAccepting".}
proc fcQTcpServer_resumeAccepting(self: pointer, ): void {.importc: "QTcpServer_resumeAccepting".}
proc fcQTcpServer_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QTcpServer_setProxy".}
proc fcQTcpServer_proxy(self: pointer, ): pointer {.importc: "QTcpServer_proxy".}
proc fcQTcpServer_newConnection(self: pointer, ): void {.importc: "QTcpServer_newConnection".}
proc fcQTcpServer_connect_newConnection(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTcpServer_connect_newConnection".}
proc fcQTcpServer_acceptError(self: pointer, socketError: cint): void {.importc: "QTcpServer_acceptError".}
proc fcQTcpServer_connect_acceptError(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTcpServer_connect_acceptError".}
proc fcQTcpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpServer_tr2".}
proc fcQTcpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpServer_tr3".}
proc fcQTcpServer_listen1(self: pointer, address: pointer): bool {.importc: "QTcpServer_listen1".}
proc fcQTcpServer_listen2(self: pointer, address: pointer, port: cushort): bool {.importc: "QTcpServer_listen2".}
proc fcQTcpServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QTcpServer_waitForNewConnection1".}
proc fcQTcpServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QTcpServer_waitForNewConnection2".}
type cQTcpServerVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQTcpServerVTable, self: ptr cQTcpServer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasPendingConnections*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  nextPendingConnection*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  incomingConnection*: proc(vtbl, self: pointer, handle: uint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTcpServer_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTcpServer_virtualbase_metaObject".}
proc fcQTcpServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpServer_virtualbase_metacast".}
proc fcQTcpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpServer_virtualbase_metacall".}
proc fcQTcpServer_virtualbase_hasPendingConnections(self: pointer, ): bool {.importc: "QTcpServer_virtualbase_hasPendingConnections".}
proc fcQTcpServer_virtualbase_nextPendingConnection(self: pointer, ): pointer {.importc: "QTcpServer_virtualbase_nextPendingConnection".}
proc fcQTcpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void {.importc: "QTcpServer_virtualbase_incomingConnection".}
proc fcQTcpServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTcpServer_virtualbase_event".}
proc fcQTcpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTcpServer_virtualbase_eventFilter".}
proc fcQTcpServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTcpServer_virtualbase_timerEvent".}
proc fcQTcpServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTcpServer_virtualbase_childEvent".}
proc fcQTcpServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTcpServer_virtualbase_customEvent".}
proc fcQTcpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTcpServer_virtualbase_connectNotify".}
proc fcQTcpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTcpServer_virtualbase_disconnectNotify".}
proc fcQTcpServer_protectedbase_addPendingConnection(self: pointer, socket: pointer): void {.importc: "QTcpServer_protectedbase_addPendingConnection".}
proc fcQTcpServer_protectedbase_sender(self: pointer, ): pointer {.importc: "QTcpServer_protectedbase_sender".}
proc fcQTcpServer_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTcpServer_protectedbase_senderSignalIndex".}
proc fcQTcpServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTcpServer_protectedbase_receivers".}
proc fcQTcpServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTcpServer_protectedbase_isSignalConnected".}
proc fcQTcpServer_new(vtbl: pointer, ): ptr cQTcpServer {.importc: "QTcpServer_new".}
proc fcQTcpServer_new2(vtbl: pointer, parent: pointer): ptr cQTcpServer {.importc: "QTcpServer_new2".}
proc fcQTcpServer_staticMetaObject(): pointer {.importc: "QTcpServer_staticMetaObject".}

proc metaObject*(self: gen_qtcpserver_types.QTcpServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtcpserver_types.QTcpServer, param1: cstring): pointer =
  fcQTcpServer_metacast(self.h, param1)

proc metacall*(self: gen_qtcpserver_types.QTcpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring): string =
  let v_ms = fcQTcpServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_listen(self.h)

proc close*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_close(self.h)

proc isListening*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_isListening(self.h)

proc setMaxPendingConnections*(self: gen_qtcpserver_types.QTcpServer, numConnections: cint): void =
  fcQTcpServer_setMaxPendingConnections(self.h, numConnections)

proc maxPendingConnections*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  fcQTcpServer_maxPendingConnections(self.h)

proc setListenBacklogSize*(self: gen_qtcpserver_types.QTcpServer, size: cint): void =
  fcQTcpServer_setListenBacklogSize(self.h, size)

proc listenBacklogSize*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  fcQTcpServer_listenBacklogSize(self.h)

proc serverPort*(self: gen_qtcpserver_types.QTcpServer, ): cushort =
  fcQTcpServer_serverPort(self.h)

proc serverAddress*(self: gen_qtcpserver_types.QTcpServer, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQTcpServer_serverAddress(self.h), owned: true)

proc socketDescriptor*(self: gen_qtcpserver_types.QTcpServer, ): uint =
  fcQTcpServer_socketDescriptor(self.h)

proc setSocketDescriptor*(self: gen_qtcpserver_types.QTcpServer, socketDescriptor: uint): bool =
  fcQTcpServer_setSocketDescriptor(self.h, socketDescriptor)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_waitForNewConnection(self.h)

proc hasPendingConnections*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_hasPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qtcpserver_types.QTcpServer, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpServer_nextPendingConnection(self.h), owned: false)

proc serverError*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  cint(fcQTcpServer_serverError(self.h))

proc errorString*(self: gen_qtcpserver_types.QTcpServer, ): string =
  let v_ms = fcQTcpServer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pauseAccepting*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_pauseAccepting(self.h)

proc resumeAccepting*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_resumeAccepting(self.h)

proc setProxy*(self: gen_qtcpserver_types.QTcpServer, networkProxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQTcpServer_setProxy(self.h, networkProxy.h)

proc proxy*(self: gen_qtcpserver_types.QTcpServer, ): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQTcpServer_proxy(self.h), owned: true)

proc newConnection*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_newConnection(self.h)

type QTcpServernewConnectionSlot* = proc()
proc miqt_exec_callback_cQTcpServer_newConnection(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTcpServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQTcpServer_newConnection_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTcpServernewConnectionSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnewConnection*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServernewConnectionSlot) =
  var tmp = new QTcpServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_connect_newConnection(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTcpServer_newConnection, miqt_exec_callback_cQTcpServer_newConnection_release)

proc acceptError*(self: gen_qtcpserver_types.QTcpServer, socketError: cint): void =
  fcQTcpServer_acceptError(self.h, cint(socketError))

type QTcpServeracceptErrorSlot* = proc(socketError: cint)
proc miqt_exec_callback_cQTcpServer_acceptError(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTcpServeracceptErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTcpServer_acceptError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTcpServeracceptErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onacceptError*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServeracceptErrorSlot) =
  var tmp = new QTcpServeracceptErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_connect_acceptError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTcpServer_acceptError, miqt_exec_callback_cQTcpServer_acceptError_release)

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring): string =
  let v_ms = fcQTcpServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
proc QTcpServermetaObject*(self: gen_qtcpserver_types.QTcpServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQTcpServer_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTcpServermetacast*(self: gen_qtcpserver_types.QTcpServer, param1: cstring): pointer =
  fcQTcpServer_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTcpServer_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTcpServermetacall*(self: gen_qtcpserver_types.QTcpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTcpServer_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpServerhasPendingConnections*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_virtualbase_hasPendingConnections(self.h)

proc miqt_exec_callback_cQTcpServer_hasPendingConnections(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  var virtualReturn = vtbl[].hasPendingConnections(self)
  virtualReturn

proc QTcpServernextPendingConnection*(self: gen_qtcpserver_types.QTcpServer, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpServer_virtualbase_nextPendingConnection(self.h), owned: false)

proc miqt_exec_callback_cQTcpServer_nextPendingConnection(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  var virtualReturn = vtbl[].nextPendingConnection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTcpServerincomingConnection*(self: gen_qtcpserver_types.QTcpServer, handle: uint): void =
  fcQTcpServer_virtualbase_incomingConnection(self.h, handle)

proc miqt_exec_callback_cQTcpServer_incomingConnection(vtbl: pointer, self: pointer, handle: uint): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = handle
  vtbl[].incomingConnection(self, slotval1)

proc QTcpServerevent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpServer_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTcpServer_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTcpServereventFilter*(self: gen_qtcpserver_types.QTcpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTcpServer_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTcpServertimerEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTcpServer_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTcpServer_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTcpServerchildEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTcpServer_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTcpServer_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTcpServercustomEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QEvent): void =
  fcQTcpServer_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTcpServer_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTcpServerconnectNotify*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpServer_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTcpServer_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTcpServerdisconnectNotify*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpServer_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTcpServer_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpServerVTable](vtbl)
  let self = QTcpServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTcpServer* {.inheritable.} = ref object of QTcpServer
  vtbl*: cQTcpServerVTable
method metaObject*(self: VirtualQTcpServer, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTcpServermetaObject(self[])
proc miqt_exec_method_cQTcpServer_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTcpServer, param1: cstring): pointer {.base.} =
  QTcpServermetacast(self[], param1)
proc miqt_exec_method_cQTcpServer_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTcpServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTcpServermetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQTcpServer_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method hasPendingConnections*(self: VirtualQTcpServer, ): bool {.base.} =
  QTcpServerhasPendingConnections(self[])
proc miqt_exec_method_cQTcpServer_hasPendingConnections(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  var virtualReturn = vtbl.hasPendingConnections()
  virtualReturn

method nextPendingConnection*(self: VirtualQTcpServer, ): gen_qtcpsocket_types.QTcpSocket {.base.} =
  QTcpServernextPendingConnection(self[])
proc miqt_exec_method_cQTcpServer_nextPendingConnection(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  var virtualReturn = vtbl.nextPendingConnection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method incomingConnection*(self: VirtualQTcpServer, handle: uint): void {.base.} =
  QTcpServerincomingConnection(self[], handle)
proc miqt_exec_method_cQTcpServer_incomingConnection(vtbl: pointer, inst: pointer, handle: uint): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = handle
  vtbl.incomingConnection(slotval1)

method event*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpServerevent(self[], event)
proc miqt_exec_method_cQTcpServer_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTcpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpServereventFilter(self[], watched, event)
proc miqt_exec_method_cQTcpServer_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTcpServertimerEvent(self[], event)
proc miqt_exec_method_cQTcpServer_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTcpServerchildEvent(self[], event)
proc miqt_exec_method_cQTcpServer_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQTcpServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTcpServercustomEvent(self[], event)
proc miqt_exec_method_cQTcpServer_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpServerconnectNotify(self[], signal)
proc miqt_exec_method_cQTcpServer_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpServerdisconnectNotify(self[], signal)
proc miqt_exec_method_cQTcpServer_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpServer](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc addPendingConnection*(self: gen_qtcpserver_types.QTcpServer, socket: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpServer_protectedbase_addPendingConnection(self.h, socket.h)

proc sender*(self: gen_qtcpserver_types.QTcpServer, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTcpServer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  fcQTcpServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtcpserver_types.QTcpServer, signal: cstring): cint =
  fcQTcpServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTcpServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    vtbl: ref QTcpServerVTable = nil): gen_qtcpserver_types.QTcpServer =
  let vtbl = if vtbl == nil: new QTcpServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpServerVTable, _: ptr cQTcpServer) {.cdecl.} =
    let vtbl = cast[ref QTcpServerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTcpServer_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTcpServer_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTcpServer_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = miqt_exec_callback_cQTcpServer_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = miqt_exec_callback_cQTcpServer_nextPendingConnection
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = miqt_exec_callback_cQTcpServer_incomingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTcpServer_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTcpServer_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTcpServer_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTcpServer_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTcpServer_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTcpServer_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTcpServer_disconnectNotify
  gen_qtcpserver_types.QTcpServer(h: fcQTcpServer_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTcpServerVTable = nil): gen_qtcpserver_types.QTcpServer =
  let vtbl = if vtbl == nil: new QTcpServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpServerVTable, _: ptr cQTcpServer) {.cdecl.} =
    let vtbl = cast[ref QTcpServerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTcpServer_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTcpServer_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTcpServer_metacall
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = miqt_exec_callback_cQTcpServer_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = miqt_exec_callback_cQTcpServer_nextPendingConnection
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = miqt_exec_callback_cQTcpServer_incomingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTcpServer_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTcpServer_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTcpServer_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTcpServer_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTcpServer_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTcpServer_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTcpServer_disconnectNotify
  gen_qtcpserver_types.QTcpServer(h: fcQTcpServer_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    vtbl: VirtualQTcpServer) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpServerVTable, _: ptr cQTcpServer) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTcpServer()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTcpServer_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTcpServer_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTcpServer_metacall
  vtbl[].vtbl.hasPendingConnections = miqt_exec_method_cQTcpServer_hasPendingConnections
  vtbl[].vtbl.nextPendingConnection = miqt_exec_method_cQTcpServer_nextPendingConnection
  vtbl[].vtbl.incomingConnection = miqt_exec_method_cQTcpServer_incomingConnection
  vtbl[].vtbl.event = miqt_exec_method_cQTcpServer_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTcpServer_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTcpServer_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTcpServer_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTcpServer_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTcpServer_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTcpServer_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTcpServer_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qtcpserver_types.QTcpServer,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQTcpServer) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpServerVTable, _: ptr cQTcpServer) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTcpServer()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpServer, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTcpServer_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTcpServer_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTcpServer_metacall
  vtbl[].vtbl.hasPendingConnections = miqt_exec_method_cQTcpServer_hasPendingConnections
  vtbl[].vtbl.nextPendingConnection = miqt_exec_method_cQTcpServer_nextPendingConnection
  vtbl[].vtbl.incomingConnection = miqt_exec_method_cQTcpServer_incomingConnection
  vtbl[].vtbl.event = miqt_exec_method_cQTcpServer_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTcpServer_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTcpServer_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTcpServer_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTcpServer_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTcpServer_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTcpServer_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTcpServer_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtcpserver_types.QTcpServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_staticMetaObject())
