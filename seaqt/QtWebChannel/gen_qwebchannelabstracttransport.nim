import ./Qt5WebChannel_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5WebChannel")  & " -fPIC"
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

proc fcQWebChannelAbstractTransport_metaObject(self: pointer, ): pointer {.importc: "QWebChannelAbstractTransport_metaObject".}
proc fcQWebChannelAbstractTransport_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannelAbstractTransport_metacast".}
proc fcQWebChannelAbstractTransport_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannelAbstractTransport_metacall".}
proc fcQWebChannelAbstractTransport_tr(s: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr".}
proc fcQWebChannelAbstractTransport_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_trUtf8".}
proc fcQWebChannelAbstractTransport_sendMessage(self: pointer, message: pointer): void {.importc: "QWebChannelAbstractTransport_sendMessage".}
proc fcQWebChannelAbstractTransport_messageReceived(self: pointer, message: pointer, transport: pointer): void {.importc: "QWebChannelAbstractTransport_messageReceived".}
proc fcQWebChannelAbstractTransport_connect_messageReceived(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_connect_messageReceived".}
proc fcQWebChannelAbstractTransport_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr2".}
proc fcQWebChannelAbstractTransport_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr3".}
proc fcQWebChannelAbstractTransport_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_trUtf82".}
proc fcQWebChannelAbstractTransport_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannelAbstractTransport_trUtf83".}
type cQWebChannelAbstractTransportVTable = object
  destructor*: proc(vtbl: ptr cQWebChannelAbstractTransportVTable, self: ptr cQWebChannelAbstractTransport) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sendMessage*: proc(vtbl, self: pointer, message: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebChannelAbstractTransport_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebChannelAbstractTransport_virtualbase_metaObject".}
proc fcQWebChannelAbstractTransport_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannelAbstractTransport_virtualbase_metacast".}
proc fcQWebChannelAbstractTransport_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannelAbstractTransport_virtualbase_metacall".}
proc fcQWebChannelAbstractTransport_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebChannelAbstractTransport_virtualbase_event".}
proc fcQWebChannelAbstractTransport_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebChannelAbstractTransport_virtualbase_eventFilter".}
proc fcQWebChannelAbstractTransport_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_timerEvent".}
proc fcQWebChannelAbstractTransport_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_childEvent".}
proc fcQWebChannelAbstractTransport_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_customEvent".}
proc fcQWebChannelAbstractTransport_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_connectNotify".}
proc fcQWebChannelAbstractTransport_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannelAbstractTransport_virtualbase_disconnectNotify".}
proc fcQWebChannelAbstractTransport_new(vtbl: pointer, ): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new".}
proc fcQWebChannelAbstractTransport_new2(vtbl: pointer, parent: pointer): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new2".}
proc fcQWebChannelAbstractTransport_staticMetaObject(): pointer {.importc: "QWebChannelAbstractTransport_staticMetaObject".}
proc fcQWebChannelAbstractTransport_delete(self: pointer) {.importc: "QWebChannelAbstractTransport_delete".}

proc metaObject*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_metaObject(self.h))

proc metacast*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cstring): pointer =
  fcQWebChannelAbstractTransport_metacast(self.h, param1)

proc metacall*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannelAbstractTransport_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring): string =
  let v_ms = fcQWebChannelAbstractTransport_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring): string =
  let v_ms = fcQWebChannelAbstractTransport_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sendMessage*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject): void =
  fcQWebChannelAbstractTransport_sendMessage(self.h, message.h)

proc messageReceived*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannelAbstractTransport_messageReceived(self.h, message.h, transport.h)

type QWebChannelAbstractTransportmessageReceivedSlot* = proc(message: gen_qjsonobject_types.QJsonObject, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport)
proc miqt_exec_callback_cQWebChannelAbstractTransport_messageReceived(slot: int, message: pointer, transport: pointer) {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_messageReceived".} =
  let nimfunc = cast[ptr QWebChannelAbstractTransportmessageReceivedSlot](cast[pointer](slot))
  let slotval1 = gen_qjsonobject_types.QJsonObject(h: message)

  let slotval2 = gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport(h: transport)

  nimfunc[](slotval1, slotval2)

proc onmessageReceived*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportmessageReceivedSlot) =
  var tmp = new QWebChannelAbstractTransportmessageReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_connect_messageReceived(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannelAbstractTransport_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannelAbstractTransport_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannelAbstractTransport_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannelAbstractTransport_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QWebChannelAbstractTransportVTable* = object
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
proc QWebChannelAbstractTransportmetaObject*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebChannelAbstractTransport_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebChannelAbstractTransportmetacast*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cstring): pointer =
  fcQWebChannelAbstractTransport_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebChannelAbstractTransport_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebChannelAbstractTransportmetacall*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannelAbstractTransport_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebChannelAbstractTransport_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQWebChannelAbstractTransport_sendMessage(vtbl: pointer, self: pointer, message: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qjsonobject_types.QJsonObject(h: message)
  vtbl[].sendMessage(self, slotval1)

proc QWebChannelAbstractTransportevent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannelAbstractTransport_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebChannelAbstractTransporteventFilter*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannelAbstractTransport_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebChannelAbstractTransporttimerEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebChannelAbstractTransport_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebChannelAbstractTransportchildEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebChannelAbstractTransport_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebChannelAbstractTransportcustomEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): void =
  fcQWebChannelAbstractTransport_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebChannelAbstractTransportconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannelAbstractTransport_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebChannelAbstractTransportdisconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannelAbstractTransport_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebChannelAbstractTransport_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelAbstractTransportVTable](vtbl)
  let self = QWebChannelAbstractTransport(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport,
    vtbl: ref QWebChannelAbstractTransportVTable = nil): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  let vtbl = if vtbl == nil: new QWebChannelAbstractTransportVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebChannelAbstractTransportVTable, _: ptr cQWebChannelAbstractTransport) {.cdecl.} =
    let vtbl = cast[ref QWebChannelAbstractTransportVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebChannelAbstractTransport_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebChannelAbstractTransport_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebChannelAbstractTransport_metacall
  if not isNil(vtbl.sendMessage):
    vtbl[].vtbl.sendMessage = miqt_exec_callback_cQWebChannelAbstractTransport_sendMessage
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebChannelAbstractTransport_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebChannelAbstractTransport_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebChannelAbstractTransport_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebChannelAbstractTransport_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebChannelAbstractTransport_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebChannelAbstractTransport_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebChannelAbstractTransport_disconnectNotify
  gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport(h: fcQWebChannelAbstractTransport_new(addr(vtbl[]), ))

proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebChannelAbstractTransportVTable = nil): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  let vtbl = if vtbl == nil: new QWebChannelAbstractTransportVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebChannelAbstractTransportVTable, _: ptr cQWebChannelAbstractTransport) {.cdecl.} =
    let vtbl = cast[ref QWebChannelAbstractTransportVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebChannelAbstractTransport_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebChannelAbstractTransport_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebChannelAbstractTransport_metacall
  if not isNil(vtbl.sendMessage):
    vtbl[].vtbl.sendMessage = miqt_exec_callback_cQWebChannelAbstractTransport_sendMessage
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebChannelAbstractTransport_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebChannelAbstractTransport_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebChannelAbstractTransport_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebChannelAbstractTransport_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebChannelAbstractTransport_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebChannelAbstractTransport_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebChannelAbstractTransport_disconnectNotify
  gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport(h: fcQWebChannelAbstractTransport_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_staticMetaObject())
proc delete*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport) =
  fcQWebChannelAbstractTransport_delete(self.h)
