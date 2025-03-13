import ./Qt6WebChannel_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebChannel") & " -fPIC"
{.compile("gen_qwebchannelabstracttransport.cpp", cflags).}


import ./gen_qwebchannelabstracttransport_types
export gen_qwebchannelabstracttransport_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qjsonobject_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qjsonobject_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQWebChannelAbstractTransport*{.exportc: "QWebChannelAbstractTransport", incompleteStruct.} = object

proc fcQWebChannelAbstractTransport_metaObject(self: pointer): pointer {.importc: "QWebChannelAbstractTransport_metaObject".}
proc fcQWebChannelAbstractTransport_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannelAbstractTransport_metacast".}
proc fcQWebChannelAbstractTransport_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannelAbstractTransport_metacall".}
proc fcQWebChannelAbstractTransport_tr(s: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr".}
proc fcQWebChannelAbstractTransport_sendMessage(self: pointer, message: pointer): void {.importc: "QWebChannelAbstractTransport_sendMessage".}
proc fcQWebChannelAbstractTransport_messageReceived(self: pointer, message: pointer, transport: pointer): void {.importc: "QWebChannelAbstractTransport_messageReceived".}
proc fcQWebChannelAbstractTransport_connect_messageReceived(self: pointer, slot: int, callback: proc (slot: int, message: pointer, transport: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebChannelAbstractTransport_connect_messageReceived".}
proc fcQWebChannelAbstractTransport_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr2".}
proc fcQWebChannelAbstractTransport_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr3".}
proc fcQWebChannelAbstractTransport_vtbl(self: pointer): pointer {.importc: "QWebChannelAbstractTransport_vtbl".}
proc fcQWebChannelAbstractTransport_vdata(self: pointer): pointer {.importc: "QWebChannelAbstractTransport_vdata".}
type cQWebChannelAbstractTransportVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sendMessage*: proc(self: pointer, message: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebChannelAbstractTransport_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebChannelAbstractTransport_virtualbase_metaObject".}
proc fcQWebChannelAbstractTransport_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannelAbstractTransport_virtualbase_metacast".}
proc fcQWebChannelAbstractTransport_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannelAbstractTransport_virtualbase_metacall".}
proc fcQWebChannelAbstractTransport_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebChannelAbstractTransport_virtualbase_event".}
proc fcQWebChannelAbstractTransport_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebChannelAbstractTransport_virtualbase_eventFilter".}
proc fcQWebChannelAbstractTransport_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_timerEvent".}
proc fcQWebChannelAbstractTransport_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_childEvent".}
proc fcQWebChannelAbstractTransport_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_customEvent".}
proc fcQWebChannelAbstractTransport_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_connectNotify".}
proc fcQWebChannelAbstractTransport_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_disconnectNotify".}
proc fcQWebChannelAbstractTransport_protectedbase_sender(self: pointer): pointer {.importc: "QWebChannelAbstractTransport_protectedbase_sender".}
proc fcQWebChannelAbstractTransport_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebChannelAbstractTransport_protectedbase_senderSignalIndex".}
proc fcQWebChannelAbstractTransport_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebChannelAbstractTransport_protectedbase_receivers".}
proc fcQWebChannelAbstractTransport_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebChannelAbstractTransport_protectedbase_isSignalConnected".}
proc fcQWebChannelAbstractTransport_new(vtbl, vdata: pointer): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new".}
proc fcQWebChannelAbstractTransport_new2(vtbl, vdata: pointer, parent: pointer): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new2".}
proc fcQWebChannelAbstractTransport_staticMetaObject(): pointer {.importc: "QWebChannelAbstractTransport_staticMetaObject".}

proc metaObject*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cstring): pointer =
  fcQWebChannelAbstractTransport_metacast(self.h, param1)

proc metacall*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannelAbstractTransport_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring): string =
  let v_ms = fcQWebChannelAbstractTransport_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sendMessage*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject): void =
  fcQWebChannelAbstractTransport_sendMessage(self.h, message.h)

proc messageReceived*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannelAbstractTransport_messageReceived(self.h, message.h, transport.h)

type QWebChannelAbstractTransportmessageReceivedSlot* = proc(message: gen_qjsonobject_types.QJsonObject, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport)
proc cQWebChannelAbstractTransport_slot_callback_messageReceived(slot: int, message: pointer, transport: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebChannelAbstractTransportmessageReceivedSlot](cast[pointer](slot))
  let slotval1 = gen_qjsonobject_types.QJsonObject(h: message, owned: false)

  let slotval2 = gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport(h: transport, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQWebChannelAbstractTransport_slot_callback_messageReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebChannelAbstractTransportmessageReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmessageReceived*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportmessageReceivedSlot) =
  var tmp = new QWebChannelAbstractTransportmessageReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_connect_messageReceived(self.h, cast[int](addr tmp[]), cQWebChannelAbstractTransport_slot_callback_messageReceived, cQWebChannelAbstractTransport_slot_callback_messageReceived_release)

proc tr*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannelAbstractTransport_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannelAbstractTransport_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWebChannelAbstractTransportmetaObjectProc* = proc(self: QWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebChannelAbstractTransportmetacastProc* = proc(self: QWebChannelAbstractTransport, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebChannelAbstractTransportmetacallProc* = proc(self: QWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebChannelAbstractTransportsendMessageProc* = proc(self: QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject): void {.raises: [], gcsafe.}
type QWebChannelAbstractTransporteventProc* = proc(self: QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebChannelAbstractTransporteventFilterProc* = proc(self: QWebChannelAbstractTransport, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebChannelAbstractTransporttimerEventProc* = proc(self: QWebChannelAbstractTransport, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebChannelAbstractTransportchildEventProc* = proc(self: QWebChannelAbstractTransport, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebChannelAbstractTransportcustomEventProc* = proc(self: QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebChannelAbstractTransportconnectNotifyProc* = proc(self: QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebChannelAbstractTransportdisconnectNotifyProc* = proc(self: QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebChannelAbstractTransportVTable* {.inheritable, pure.} = object
  vtbl: cQWebChannelAbstractTransportVTable
  metaObject*: QWebChannelAbstractTransportmetaObjectProc
  metacast*: QWebChannelAbstractTransportmetacastProc
  metacall*: QWebChannelAbstractTransportmetacallProc
  sendMessage*: QWebChannelAbstractTransportsendMessageProc
  event*: QWebChannelAbstractTransporteventProc
  eventFilter*: QWebChannelAbstractTransporteventFilterProc
  timerEvent*: QWebChannelAbstractTransporttimerEventProc
  childEvent*: QWebChannelAbstractTransportchildEventProc
  customEvent*: QWebChannelAbstractTransportcustomEventProc
  connectNotify*: QWebChannelAbstractTransportconnectNotifyProc
  disconnectNotify*: QWebChannelAbstractTransportdisconnectNotifyProc
proc QWebChannelAbstractTransportmetaObject*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_virtualbase_metaObject(self.h), owned: false)

proc cQWebChannelAbstractTransport_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebChannelAbstractTransportmetacast*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cstring): pointer =
  fcQWebChannelAbstractTransport_virtualbase_metacast(self.h, param1)

proc cQWebChannelAbstractTransport_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebChannelAbstractTransportmetacall*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannelAbstractTransport_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebChannelAbstractTransport_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQWebChannelAbstractTransport_vtable_callback_sendMessage(self: pointer, message: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qjsonobject_types.QJsonObject(h: message, owned: false)
  vtbl[].sendMessage(self, slotval1)

proc QWebChannelAbstractTransportevent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannelAbstractTransport_virtualbase_event(self.h, event.h)

proc cQWebChannelAbstractTransport_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebChannelAbstractTransporteventFilter*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannelAbstractTransport_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebChannelAbstractTransport_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebChannelAbstractTransporttimerEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebChannelAbstractTransport_virtualbase_timerEvent(self.h, event.h)

proc cQWebChannelAbstractTransport_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebChannelAbstractTransportchildEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebChannelAbstractTransport_virtualbase_childEvent(self.h, event.h)

proc cQWebChannelAbstractTransport_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebChannelAbstractTransportcustomEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): void =
  fcQWebChannelAbstractTransport_virtualbase_customEvent(self.h, event.h)

proc cQWebChannelAbstractTransport_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebChannelAbstractTransportconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannelAbstractTransport_virtualbase_connectNotify(self.h, signal.h)

proc cQWebChannelAbstractTransport_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebChannelAbstractTransportdisconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannelAbstractTransport_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebChannelAbstractTransport_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebChannelAbstractTransport* {.inheritable.} = ref object of QWebChannelAbstractTransport
  vtbl*: cQWebChannelAbstractTransportVTable
method metaObject*(self: VirtualQWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebChannelAbstractTransportmetaObject(self[])
proc cQWebChannelAbstractTransport_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebChannelAbstractTransport, param1: cstring): pointer {.base.} =
  QWebChannelAbstractTransportmetacast(self[], param1)
proc cQWebChannelAbstractTransport_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebChannelAbstractTransportmetacall(self[], param1, param2, param3)
proc cQWebChannelAbstractTransport_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sendMessage*(self: VirtualQWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject): void {.base.} =
  raiseAssert("missing implementation of QWebChannelAbstractTransport_virtualbase_sendMessage")
proc cQWebChannelAbstractTransport_method_callback_sendMessage(self: pointer, message: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qjsonobject_types.QJsonObject(h: message, owned: false)
  inst.sendMessage(slotval1)

method event*(self: VirtualQWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebChannelAbstractTransportevent(self[], event)
proc cQWebChannelAbstractTransport_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebChannelAbstractTransport, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebChannelAbstractTransporteventFilter(self[], watched, event)
proc cQWebChannelAbstractTransport_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebChannelAbstractTransport, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebChannelAbstractTransporttimerEvent(self[], event)
proc cQWebChannelAbstractTransport_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebChannelAbstractTransport, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebChannelAbstractTransportchildEvent(self[], event)
proc cQWebChannelAbstractTransport_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebChannelAbstractTransportcustomEvent(self[], event)
proc cQWebChannelAbstractTransport_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebChannelAbstractTransportconnectNotify(self[], signal)
proc cQWebChannelAbstractTransport_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebChannelAbstractTransportdisconnectNotify(self[], signal)
proc cQWebChannelAbstractTransport_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannelAbstractTransport](fcQWebChannelAbstractTransport_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebChannelAbstractTransport_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): cint =
  fcQWebChannelAbstractTransport_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: cstring): cint =
  fcQWebChannelAbstractTransport_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebChannelAbstractTransport_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport,
    vtbl: ref QWebChannelAbstractTransportVTable = nil): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  let vtbl = if vtbl == nil: new QWebChannelAbstractTransportVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebChannelAbstractTransport_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebChannelAbstractTransport_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebChannelAbstractTransport_vtable_callback_metacall
  if not isNil(vtbl[].sendMessage):
    vtbl[].vtbl.sendMessage = cQWebChannelAbstractTransport_vtable_callback_sendMessage
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebChannelAbstractTransport_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebChannelAbstractTransport_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebChannelAbstractTransport_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebChannelAbstractTransport_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebChannelAbstractTransport_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebChannelAbstractTransport_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebChannelAbstractTransport_vtable_callback_disconnectNotify
  gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport(h: fcQWebChannelAbstractTransport_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebChannelAbstractTransportVTable = nil): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  let vtbl = if vtbl == nil: new QWebChannelAbstractTransportVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebChannelAbstractTransportVTable](fcQWebChannelAbstractTransport_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebChannelAbstractTransport_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebChannelAbstractTransport_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebChannelAbstractTransport_vtable_callback_metacall
  if not isNil(vtbl[].sendMessage):
    vtbl[].vtbl.sendMessage = cQWebChannelAbstractTransport_vtable_callback_sendMessage
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebChannelAbstractTransport_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebChannelAbstractTransport_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebChannelAbstractTransport_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebChannelAbstractTransport_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebChannelAbstractTransport_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebChannelAbstractTransport_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebChannelAbstractTransport_vtable_callback_disconnectNotify
  gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport(h: fcQWebChannelAbstractTransport_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQWebChannelAbstractTransport_mvtbl = cQWebChannelAbstractTransportVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebChannelAbstractTransport()[])](self.fcQWebChannelAbstractTransport_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebChannelAbstractTransport_method_callback_metaObject,
  metacast: cQWebChannelAbstractTransport_method_callback_metacast,
  metacall: cQWebChannelAbstractTransport_method_callback_metacall,
  sendMessage: cQWebChannelAbstractTransport_method_callback_sendMessage,
  event: cQWebChannelAbstractTransport_method_callback_event,
  eventFilter: cQWebChannelAbstractTransport_method_callback_eventFilter,
  timerEvent: cQWebChannelAbstractTransport_method_callback_timerEvent,
  childEvent: cQWebChannelAbstractTransport_method_callback_childEvent,
  customEvent: cQWebChannelAbstractTransport_method_callback_customEvent,
  connectNotify: cQWebChannelAbstractTransport_method_callback_connectNotify,
  disconnectNotify: cQWebChannelAbstractTransport_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport,
    inst: VirtualQWebChannelAbstractTransport) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebChannelAbstractTransport_new(addr(cQWebChannelAbstractTransport_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWebChannelAbstractTransport) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebChannelAbstractTransport_new2(addr(cQWebChannelAbstractTransport_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_staticMetaObject())
