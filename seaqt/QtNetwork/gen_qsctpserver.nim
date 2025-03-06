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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qsctpserver.cpp", cflags).}


import ./gen_qsctpserver_types
export gen_qsctpserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qsctpsocket_types,
  ./gen_qtcpserver,
  ./gen_qtcpsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsctpsocket_types,
  gen_qtcpserver,
  gen_qtcpsocket_types

type cQSctpServer*{.exportc: "QSctpServer", incompleteStruct.} = object

proc fcQSctpServer_metaObject(self: pointer, ): pointer {.importc: "QSctpServer_metaObject".}
proc fcQSctpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpServer_metacast".}
proc fcQSctpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpServer_metacall".}
proc fcQSctpServer_tr(s: cstring): struct_miqt_string {.importc: "QSctpServer_tr".}
proc fcQSctpServer_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpServer_setMaximumChannelCount".}
proc fcQSctpServer_maximumChannelCount(self: pointer, ): cint {.importc: "QSctpServer_maximumChannelCount".}
proc fcQSctpServer_nextPendingDatagramConnection(self: pointer, ): pointer {.importc: "QSctpServer_nextPendingDatagramConnection".}
proc fcQSctpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpServer_tr2".}
proc fcQSctpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpServer_tr3".}
type cQSctpServerVTable = object
  destructor*: proc(vtbl: ptr cQSctpServerVTable, self: ptr cQSctpServer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  incomingConnection*: proc(vtbl, self: pointer, handle: uint): void {.cdecl, raises: [], gcsafe.}
  hasPendingConnections*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  nextPendingConnection*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSctpServer_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSctpServer_virtualbase_metaObject".}
proc fcQSctpServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpServer_virtualbase_metacast".}
proc fcQSctpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpServer_virtualbase_metacall".}
proc fcQSctpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void {.importc: "QSctpServer_virtualbase_incomingConnection".}
proc fcQSctpServer_virtualbase_hasPendingConnections(self: pointer, ): bool {.importc: "QSctpServer_virtualbase_hasPendingConnections".}
proc fcQSctpServer_virtualbase_nextPendingConnection(self: pointer, ): pointer {.importc: "QSctpServer_virtualbase_nextPendingConnection".}
proc fcQSctpServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSctpServer_virtualbase_event".}
proc fcQSctpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSctpServer_virtualbase_eventFilter".}
proc fcQSctpServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSctpServer_virtualbase_timerEvent".}
proc fcQSctpServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSctpServer_virtualbase_childEvent".}
proc fcQSctpServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSctpServer_virtualbase_customEvent".}
proc fcQSctpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSctpServer_virtualbase_connectNotify".}
proc fcQSctpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSctpServer_virtualbase_disconnectNotify".}
proc fcQSctpServer_protectedbase_addPendingConnection(self: pointer, socket: pointer): void {.importc: "QSctpServer_protectedbase_addPendingConnection".}
proc fcQSctpServer_protectedbase_sender(self: pointer, ): pointer {.importc: "QSctpServer_protectedbase_sender".}
proc fcQSctpServer_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSctpServer_protectedbase_senderSignalIndex".}
proc fcQSctpServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSctpServer_protectedbase_receivers".}
proc fcQSctpServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSctpServer_protectedbase_isSignalConnected".}
proc fcQSctpServer_new(vtbl: pointer, ): ptr cQSctpServer {.importc: "QSctpServer_new".}
proc fcQSctpServer_new2(vtbl: pointer, parent: pointer): ptr cQSctpServer {.importc: "QSctpServer_new2".}
proc fcQSctpServer_staticMetaObject(): pointer {.importc: "QSctpServer_staticMetaObject".}
proc fcQSctpServer_delete(self: pointer) {.importc: "QSctpServer_delete".}

proc metaObject*(self: gen_qsctpserver_types.QSctpServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpServer_metaObject(self.h))

proc metacast*(self: gen_qsctpserver_types.QSctpServer, param1: cstring): pointer =
  fcQSctpServer_metacast(self.h, param1)

proc metacall*(self: gen_qsctpserver_types.QSctpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsctpserver_types.QSctpServer, s: cstring): string =
  let v_ms = fcQSctpServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMaximumChannelCount*(self: gen_qsctpserver_types.QSctpServer, count: cint): void =
  fcQSctpServer_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: gen_qsctpserver_types.QSctpServer, ): cint =
  fcQSctpServer_maximumChannelCount(self.h)

proc nextPendingDatagramConnection*(self: gen_qsctpserver_types.QSctpServer, ): gen_qsctpsocket_types.QSctpSocket =
  gen_qsctpsocket_types.QSctpSocket(h: fcQSctpServer_nextPendingDatagramConnection(self.h))

proc tr*(_: type gen_qsctpserver_types.QSctpServer, s: cstring, c: cstring): string =
  let v_ms = fcQSctpServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsctpserver_types.QSctpServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSctpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSctpServermetaObjectProc* = proc(self: QSctpServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSctpServermetacastProc* = proc(self: QSctpServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QSctpServermetacallProc* = proc(self: QSctpServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSctpServerincomingConnectionProc* = proc(self: QSctpServer, handle: uint): void {.raises: [], gcsafe.}
type QSctpServerhasPendingConnectionsProc* = proc(self: QSctpServer): bool {.raises: [], gcsafe.}
type QSctpServernextPendingConnectionProc* = proc(self: QSctpServer): gen_qtcpsocket_types.QTcpSocket {.raises: [], gcsafe.}
type QSctpServereventProc* = proc(self: QSctpServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSctpServereventFilterProc* = proc(self: QSctpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSctpServertimerEventProc* = proc(self: QSctpServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSctpServerchildEventProc* = proc(self: QSctpServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSctpServercustomEventProc* = proc(self: QSctpServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSctpServerconnectNotifyProc* = proc(self: QSctpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSctpServerdisconnectNotifyProc* = proc(self: QSctpServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSctpServerVTable* = object
  vtbl: cQSctpServerVTable
  metaObject*: QSctpServermetaObjectProc
  metacast*: QSctpServermetacastProc
  metacall*: QSctpServermetacallProc
  incomingConnection*: QSctpServerincomingConnectionProc
  hasPendingConnections*: QSctpServerhasPendingConnectionsProc
  nextPendingConnection*: QSctpServernextPendingConnectionProc
  event*: QSctpServereventProc
  eventFilter*: QSctpServereventFilterProc
  timerEvent*: QSctpServertimerEventProc
  childEvent*: QSctpServerchildEventProc
  customEvent*: QSctpServercustomEventProc
  connectNotify*: QSctpServerconnectNotifyProc
  disconnectNotify*: QSctpServerdisconnectNotifyProc
proc QSctpServermetaObject*(self: gen_qsctpserver_types.QSctpServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpServer_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSctpServer_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSctpServermetacast*(self: gen_qsctpserver_types.QSctpServer, param1: cstring): pointer =
  fcQSctpServer_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSctpServer_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSctpServermetacall*(self: gen_qsctpserver_types.QSctpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSctpServer_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpServerincomingConnection*(self: gen_qsctpserver_types.QSctpServer, handle: uint): void =
  fcQSctpServer_virtualbase_incomingConnection(self.h, handle)

proc miqt_exec_callback_cQSctpServer_incomingConnection(vtbl: pointer, self: pointer, handle: uint): void {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = handle
  vtbl[].incomingConnection(self, slotval1)

proc QSctpServerhasPendingConnections*(self: gen_qsctpserver_types.QSctpServer, ): bool =
  fcQSctpServer_virtualbase_hasPendingConnections(self.h)

proc miqt_exec_callback_cQSctpServer_hasPendingConnections(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  var virtualReturn = vtbl[].hasPendingConnections(self)
  virtualReturn

proc QSctpServernextPendingConnection*(self: gen_qsctpserver_types.QSctpServer, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQSctpServer_virtualbase_nextPendingConnection(self.h))

proc miqt_exec_callback_cQSctpServer_nextPendingConnection(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  var virtualReturn = vtbl[].nextPendingConnection(self)
  virtualReturn.h

proc QSctpServerevent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQSctpServer_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSctpServer_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSctpServereventFilter*(self: gen_qsctpserver_types.QSctpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSctpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSctpServer_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSctpServertimerEvent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSctpServer_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSctpServer_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSctpServerchildEvent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSctpServer_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSctpServer_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSctpServercustomEvent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent_types.QEvent): void =
  fcQSctpServer_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSctpServer_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSctpServerconnectNotify*(self: gen_qsctpserver_types.QSctpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSctpServer_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSctpServer_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSctpServerdisconnectNotify*(self: gen_qsctpserver_types.QSctpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSctpServer_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSctpServer_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpServerVTable](vtbl)
  let self = QSctpServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc addPendingConnection*(self: gen_qsctpserver_types.QSctpServer, socket: gen_qtcpsocket_types.QTcpSocket): void =
  fcQSctpServer_protectedbase_addPendingConnection(self.h, socket.h)

proc sender*(self: gen_qsctpserver_types.QSctpServer, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSctpServer_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsctpserver_types.QSctpServer, ): cint =
  fcQSctpServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsctpserver_types.QSctpServer, signal: cstring): cint =
  fcQSctpServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsctpserver_types.QSctpServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSctpServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsctpserver_types.QSctpServer,
    vtbl: ref QSctpServerVTable = nil): gen_qsctpserver_types.QSctpServer =
  let vtbl = if vtbl == nil: new QSctpServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSctpServerVTable, _: ptr cQSctpServer) {.cdecl.} =
    let vtbl = cast[ref QSctpServerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSctpServer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSctpServer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSctpServer_metacall
  if not isNil(vtbl.incomingConnection):
    vtbl[].vtbl.incomingConnection = miqt_exec_callback_cQSctpServer_incomingConnection
  if not isNil(vtbl.hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = miqt_exec_callback_cQSctpServer_hasPendingConnections
  if not isNil(vtbl.nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = miqt_exec_callback_cQSctpServer_nextPendingConnection
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSctpServer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSctpServer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSctpServer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSctpServer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSctpServer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSctpServer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSctpServer_disconnectNotify
  gen_qsctpserver_types.QSctpServer(h: fcQSctpServer_new(addr(vtbl[]), ))

proc create*(T: type gen_qsctpserver_types.QSctpServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSctpServerVTable = nil): gen_qsctpserver_types.QSctpServer =
  let vtbl = if vtbl == nil: new QSctpServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSctpServerVTable, _: ptr cQSctpServer) {.cdecl.} =
    let vtbl = cast[ref QSctpServerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSctpServer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSctpServer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSctpServer_metacall
  if not isNil(vtbl.incomingConnection):
    vtbl[].vtbl.incomingConnection = miqt_exec_callback_cQSctpServer_incomingConnection
  if not isNil(vtbl.hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = miqt_exec_callback_cQSctpServer_hasPendingConnections
  if not isNil(vtbl.nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = miqt_exec_callback_cQSctpServer_nextPendingConnection
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSctpServer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSctpServer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSctpServer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSctpServer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSctpServer_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSctpServer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSctpServer_disconnectNotify
  gen_qsctpserver_types.QSctpServer(h: fcQSctpServer_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsctpserver_types.QSctpServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpServer_staticMetaObject())
proc delete*(self: gen_qsctpserver_types.QSctpServer) =
  fcQSctpServer_delete(self.h)
