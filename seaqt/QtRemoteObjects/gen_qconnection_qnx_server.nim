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


{.compile("gen_qconnection_qnx_server.cpp", QtRemoteObjectsCFlags).}


import ./gen_qconnection_qnx_server_types
export gen_qconnection_qnx_server_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQQnxNativeServer*{.exportc: "QQnxNativeServer", incompleteStruct.} = object

proc fcQQnxNativeServer_metaObject(self: pointer): pointer {.importc: "QQnxNativeServer_metaObject".}
proc fcQQnxNativeServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QQnxNativeServer_metacast".}
proc fcQQnxNativeServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQnxNativeServer_metacall".}
proc fcQQnxNativeServer_trS(s: cstring): struct_seaqt_string {.importc: "QQnxNativeServer_tr_s".}
proc fcQQnxNativeServer_newConnection(self: pointer): void {.importc: "QQnxNativeServer_newConnection".}
proc fcQQnxNativeServer_connect_newConnection(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQnxNativeServer_connect_newConnection".}
proc fcQQnxNativeServer_close(self: pointer): void {.importc: "QQnxNativeServer_close".}
proc fcQQnxNativeServer_hasPendingConnections(self: pointer): bool {.importc: "QQnxNativeServer_hasPendingConnections".}
proc fcQQnxNativeServer_isListening(self: pointer): bool {.importc: "QQnxNativeServer_isListening".}
proc fcQQnxNativeServer_listen(self: pointer, name: struct_seaqt_string): bool {.importc: "QQnxNativeServer_listen".}
proc fcQQnxNativeServer_serverName(self: pointer): struct_seaqt_string {.importc: "QQnxNativeServer_serverName".}
proc fcQQnxNativeServer_waitForNewConnection(self: pointer): bool {.importc: "QQnxNativeServer_waitForNewConnection".}
proc fcQQnxNativeServer_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QQnxNativeServer_tr_s_c".}
proc fcQQnxNativeServer_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QQnxNativeServer_tr_s_c_n".}
proc fcQQnxNativeServer_waitForNewConnectionMsec(self: pointer, msec: cint): bool {.importc: "QQnxNativeServer_waitForNewConnection_msec".}
proc fcQQnxNativeServer_waitForNewConnectionMsecTimedOut(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QQnxNativeServer_waitForNewConnection_msec_timedOut".}
proc fcQQnxNativeServer_vdata(self: pointer): ptr pointer {.importc: "QQnxNativeServer_vdata".}
proc fvdata_cQQnxNativeServer(self: pointer): pointer {.importc: "vdata_QQnxNativeServer".}

type cQQnxNativeServerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQnxNativeServer_virtualbase_metaObject(self: pointer): pointer {.importc: "QQnxNativeServer_virtualbase_metaObject".}
proc fcQQnxNativeServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQnxNativeServer_virtualbase_metacast".}
proc fcQQnxNativeServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQnxNativeServer_virtualbase_metacall".}
proc fcQQnxNativeServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQnxNativeServer_virtualbase_event".}
proc fcQQnxNativeServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQnxNativeServer_virtualbase_eventFilter".}
proc fcQQnxNativeServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQnxNativeServer_virtualbase_timerEvent".}
proc fcQQnxNativeServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQnxNativeServer_virtualbase_childEvent".}
proc fcQQnxNativeServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQnxNativeServer_virtualbase_customEvent".}
proc fcQQnxNativeServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQnxNativeServer_virtualbase_connectNotify".}
proc fcQQnxNativeServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQnxNativeServer_virtualbase_disconnectNotify".}
proc fcQQnxNativeServer_protectedbase_sender(self: pointer): pointer {.importc: "QQnxNativeServer_protectedbase_sender".}
proc fcQQnxNativeServer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQnxNativeServer_protectedbase_senderSignalIndex".}
proc fcQQnxNativeServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQnxNativeServer_protectedbase_receivers".}
proc fcQQnxNativeServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQnxNativeServer_protectedbase_isSignalConnected".}
proc fcQQnxNativeServer_new(vtbl: pointer, vdata: csize_t): ptr cQQnxNativeServer {.importc: "QQnxNativeServer_new".}
proc fcQQnxNativeServer_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQQnxNativeServer {.importc: "QQnxNativeServer_new_parent".}
proc fcQQnxNativeServer_staticMetaObject(): pointer {.importc: "QQnxNativeServer_staticMetaObject".}

proc metaObject*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQnxNativeServer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, param1: cstring): pointer =
  fcQQnxNativeServer_metacast(self.h, param1)

proc metacall*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQQnxNativeServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnection_qnx_server_types.QQnxNativeServer, s: cstring): string =
  let v_ms = fcQQnxNativeServer_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc newConnection*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): void =
  fcQQnxNativeServer_newConnection(self.h)

type QQnxNativeServernewConnectionSlot* = proc()
proc fcQQnxNativeServer_slot_callback_newConnection(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQnxNativeServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQnxNativeServer_slot_callback_newConnection_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQnxNativeServernewConnectionSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNewConnection*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, slot: QQnxNativeServernewConnectionSlot) =
  var tmp = new QQnxNativeServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQnxNativeServer_connect_newConnection(self.h, cast[int](addr tmp[]), fcQQnxNativeServer_slot_callback_newConnection, fcQQnxNativeServer_slot_callback_newConnection_release)

proc close*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): void =
  fcQQnxNativeServer_close(self.h)

proc hasPendingConnections*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): bool =
  fcQQnxNativeServer_hasPendingConnections(self.h)

proc isListening*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): bool =
  fcQQnxNativeServer_isListening(self.h)

proc listen*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, name: openArray[char]): bool =
  fcQQnxNativeServer_listen(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc serverName*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): string =
  let v_ms = fcQQnxNativeServer_serverName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc waitForNewConnection*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): bool =
  fcQQnxNativeServer_waitForNewConnection(self.h)

proc tr*(_: type gen_qconnection_qnx_server_types.QQnxNativeServer, s: cstring, c: cstring): string =
  let v_ms = fcQQnxNativeServer_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnection_qnx_server_types.QQnxNativeServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQnxNativeServer_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc waitForNewConnection*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, msec: cint): bool =
  fcQQnxNativeServer_waitForNewConnectionMsec(self.h, msec)

proc waitForNewConnection*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, msec: cint, timedOut: ptr bool): bool =
  fcQQnxNativeServer_waitForNewConnectionMsecTimedOut(self.h, msec, timedOut)

type QQnxNativeServermetaObjectProc* = proc(self: QQnxNativeServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQnxNativeServermetacastProc* = proc(self: QQnxNativeServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QQnxNativeServermetacallProc* = proc(self: QQnxNativeServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQnxNativeServereventProc* = proc(self: QQnxNativeServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQnxNativeServereventFilterProc* = proc(self: QQnxNativeServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQnxNativeServertimerEventProc* = proc(self: QQnxNativeServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQnxNativeServerchildEventProc* = proc(self: QQnxNativeServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQnxNativeServercustomEventProc* = proc(self: QQnxNativeServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQnxNativeServerconnectNotifyProc* = proc(self: QQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQnxNativeServerdisconnectNotifyProc* = proc(self: QQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQnxNativeServerVTable* {.inheritable, pure.} = object
  vtbl: cQQnxNativeServerVTable
  metaObject*: QQnxNativeServermetaObjectProc
  metacast*: QQnxNativeServermetacastProc
  metacall*: QQnxNativeServermetacallProc
  event*: QQnxNativeServereventProc
  eventFilter*: QQnxNativeServereventFilterProc
  timerEvent*: QQnxNativeServertimerEventProc
  childEvent*: QQnxNativeServerchildEventProc
  customEvent*: QQnxNativeServercustomEventProc
  connectNotify*: QQnxNativeServerconnectNotifyProc
  disconnectNotify*: QQnxNativeServerdisconnectNotifyProc

proc QQnxNativeServermetaObject*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQnxNativeServer_virtualbase_metaObject(self.h), owned: false)

proc QQnxNativeServermetacast*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, param1: cstring): pointer =
  fcQQnxNativeServer_virtualbase_metacast(self.h, param1)

proc QQnxNativeServermetacall*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQQnxNativeServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQnxNativeServerevent*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQQnxNativeServer_virtualbase_event(self.h, event.h)

proc QQnxNativeServereventFilter*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQnxNativeServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQnxNativeServertimerEvent*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQnxNativeServer_virtualbase_timerEvent(self.h, event.h)

proc QQnxNativeServerchildEvent*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQnxNativeServer_virtualbase_childEvent(self.h, event.h)

proc QQnxNativeServercustomEvent*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, event: gen_qcoreevent_types.QEvent): void =
  fcQQnxNativeServer_virtualbase_customEvent(self.h, event.h)

proc QQnxNativeServerconnectNotify*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQnxNativeServer_virtualbase_connectNotify(self.h, signal.h)

proc QQnxNativeServerdisconnectNotify*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQnxNativeServer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQnxNativeServer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQnxNativeServer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQnxNativeServer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQnxNativeServer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQnxNativeServer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeServer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQnxNativeServer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQnxNativeServer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQnxNativeServer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQnxNativeServer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
  let self = QQnxNativeServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQnxNativeServer* {.inheritable.} = ref object of QQnxNativeServer
  vtbl*: cQQnxNativeServerVTable

method metaObject*(self: VirtualQQnxNativeServer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQnxNativeServermetaObject(self[])
method metacast*(self: VirtualQQnxNativeServer, param1: cstring): pointer {.base.} =
  QQnxNativeServermetacast(self[], param1)
method metacall*(self: VirtualQQnxNativeServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQnxNativeServermetacall(self[], param1, param2, param3)
method event*(self: VirtualQQnxNativeServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQnxNativeServerevent(self[], event)
method eventFilter*(self: VirtualQQnxNativeServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQnxNativeServereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQnxNativeServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQnxNativeServertimerEvent(self[], event)
method childEvent*(self: VirtualQQnxNativeServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQnxNativeServerchildEvent(self[], event)
method customEvent*(self: VirtualQQnxNativeServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQnxNativeServercustomEvent(self[], event)
method connectNotify*(self: VirtualQQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQnxNativeServerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQnxNativeServerdisconnectNotify(self[], signal)

proc fcQQnxNativeServer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQnxNativeServer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQnxNativeServer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQnxNativeServer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQnxNativeServer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeServer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQnxNativeServer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQnxNativeServer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQnxNativeServer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQnxNativeServer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeServer](fcQQnxNativeServer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQnxNativeServer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnection_qnx_server_types.QQnxNativeServer): cint =
  fcQQnxNativeServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, signal: cstring): cint =
  fcQQnxNativeServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnection_qnx_server_types.QQnxNativeServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQnxNativeServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnection_qnx_server_types.QQnxNativeServer,
    vtbl: ref QQnxNativeServerVTable = nil): gen_qconnection_qnx_server_types.QQnxNativeServer =
  let vtbl = if vtbl == nil: new QQnxNativeServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQnxNativeServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQnxNativeServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQnxNativeServer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQnxNativeServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQnxNativeServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQnxNativeServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQnxNativeServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQnxNativeServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQnxNativeServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQnxNativeServer_vtable_callback_disconnectNotify
  let tmp = gen_qconnection_qnx_server_types.QQnxNativeServer(h: fcQQnxNativeServer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQQnxNativeServer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnection_qnx_server_types.QQnxNativeServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQnxNativeServerVTable = nil): gen_qconnection_qnx_server_types.QQnxNativeServer =
  let vtbl = if vtbl == nil: new QQnxNativeServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQnxNativeServerVTable](fcQQnxNativeServer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQnxNativeServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQnxNativeServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQnxNativeServer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQnxNativeServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQnxNativeServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQnxNativeServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQnxNativeServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQnxNativeServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQnxNativeServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQnxNativeServer_vtable_callback_disconnectNotify
  let tmp = gen_qconnection_qnx_server_types.QQnxNativeServer(h: fcQQnxNativeServer_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQQnxNativeServer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQQnxNativeServer_mvtbl = cQQnxNativeServerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQnxNativeServer()[])](self.fcQQnxNativeServer_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQnxNativeServer_method_callback_metaObject,
  metacast: fcQQnxNativeServer_method_callback_metacast,
  metacall: fcQQnxNativeServer_method_callback_metacall,
  event: fcQQnxNativeServer_method_callback_event,
  eventFilter: fcQQnxNativeServer_method_callback_eventFilter,
  timerEvent: fcQQnxNativeServer_method_callback_timerEvent,
  childEvent: fcQQnxNativeServer_method_callback_childEvent,
  customEvent: fcQQnxNativeServer_method_callback_customEvent,
  connectNotify: fcQQnxNativeServer_method_callback_connectNotify,
  disconnectNotify: fcQQnxNativeServer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnection_qnx_server_types.QQnxNativeServer,
    inst: VirtualQQnxNativeServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQnxNativeServer_new(addr(cQQnxNativeServer_mvtbl), csize_t(sizeof(pointer)))
  fcQQnxNativeServer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnection_qnx_server_types.QQnxNativeServer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQnxNativeServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQnxNativeServer_new2(addr(cQQnxNativeServer_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQQnxNativeServer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnection_qnx_server_types.QQnxNativeServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQnxNativeServer_staticMetaObject())
