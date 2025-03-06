import ./Qt6WebChannel_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebChannel")  & " -fPIC"
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

proc fcQWebChannelAbstractTransport_new(): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new".}
proc fcQWebChannelAbstractTransport_new2(parent: pointer): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new2".}
proc fcQWebChannelAbstractTransport_metaObject(self: pointer, ): pointer {.importc: "QWebChannelAbstractTransport_metaObject".}
proc fcQWebChannelAbstractTransport_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannelAbstractTransport_metacast".}
proc fcQWebChannelAbstractTransport_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannelAbstractTransport_metacall".}
proc fcQWebChannelAbstractTransport_tr(s: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr".}
proc fcQWebChannelAbstractTransport_sendMessage(self: pointer, message: pointer): void {.importc: "QWebChannelAbstractTransport_sendMessage".}
proc fcQWebChannelAbstractTransport_messageReceived(self: pointer, message: pointer, transport: pointer): void {.importc: "QWebChannelAbstractTransport_messageReceived".}
proc fcQWebChannelAbstractTransport_connect_messageReceived(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_connect_messageReceived".}
proc fcQWebChannelAbstractTransport_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr2".}
proc fcQWebChannelAbstractTransport_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr3".}
proc fQWebChannelAbstractTransport_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebChannelAbstractTransport_virtualbase_metaObject".}
proc fcQWebChannelAbstractTransport_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_metaObject".}
proc fQWebChannelAbstractTransport_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebChannelAbstractTransport_virtualbase_metacast".}
proc fcQWebChannelAbstractTransport_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_metacast".}
proc fQWebChannelAbstractTransport_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebChannelAbstractTransport_virtualbase_metacall".}
proc fcQWebChannelAbstractTransport_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_metacall".}
proc fcQWebChannelAbstractTransport_override_virtual_sendMessage(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_sendMessage".}
proc fQWebChannelAbstractTransport_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebChannelAbstractTransport_virtualbase_event".}
proc fcQWebChannelAbstractTransport_override_virtual_event(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_event".}
proc fQWebChannelAbstractTransport_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebChannelAbstractTransport_virtualbase_eventFilter".}
proc fcQWebChannelAbstractTransport_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_eventFilter".}
proc fQWebChannelAbstractTransport_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_timerEvent".}
proc fcQWebChannelAbstractTransport_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_timerEvent".}
proc fQWebChannelAbstractTransport_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_childEvent".}
proc fcQWebChannelAbstractTransport_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_childEvent".}
proc fQWebChannelAbstractTransport_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_customEvent".}
proc fcQWebChannelAbstractTransport_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_customEvent".}
proc fQWebChannelAbstractTransport_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_connectNotify".}
proc fcQWebChannelAbstractTransport_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_connectNotify".}
proc fQWebChannelAbstractTransport_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_disconnectNotify".}
proc fcQWebChannelAbstractTransport_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_disconnectNotify".}
proc fcQWebChannelAbstractTransport_staticMetaObject(): pointer {.importc: "QWebChannelAbstractTransport_staticMetaObject".}
proc fcQWebChannelAbstractTransport_delete(self: pointer) {.importc: "QWebChannelAbstractTransport_delete".}


func init*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, h: ptr cQWebChannelAbstractTransport): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  T(h: h)
proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, ): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport.init(fcQWebChannelAbstractTransport_new())

proc create*(T: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, parent: gen_qobject_types.QObject): gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport =
  gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport.init(fcQWebChannelAbstractTransport_new2(parent.h))

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

proc sendMessage*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject): void =
  fcQWebChannelAbstractTransport_sendMessage(self.h, message.h)

proc messageReceived*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, message: gen_qjsonobject_types.QJsonObject, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannelAbstractTransport_messageReceived(self.h, message.h, transport.h)

type QWebChannelAbstractTransportmessageReceivedSlot* = proc(message: gen_qjsonobject_types.QJsonObject, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport)
proc miqt_exec_callback_QWebChannelAbstractTransport_messageReceived(slot: int, message: pointer, transport: pointer) {.exportc.} =
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

proc QWebChannelAbstractTransportmetaObject*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWebChannelAbstractTransport_virtualbase_metaObject(self.h))

type QWebChannelAbstractTransportmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportmetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_metaObject(self: ptr cQWebChannelAbstractTransport, slot: int): pointer {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_metaObject ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebChannelAbstractTransportmetacast*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cstring): pointer =
  fQWebChannelAbstractTransport_virtualbase_metacast(self.h, param1)

type QWebChannelAbstractTransportmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportmetacastProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_metacast(self: ptr cQWebChannelAbstractTransport, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_metacast ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebChannelAbstractTransportmetacall*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, param1: cint, param2: cint, param3: pointer): cint =
  fQWebChannelAbstractTransport_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebChannelAbstractTransportmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportmetacallProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_metacall(self: ptr cQWebChannelAbstractTransport, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_metacall ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QWebChannelAbstractTransportsendMessageProc* = proc(message: gen_qjsonobject_types.QJsonObject): void
proc onsendMessage*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportsendMessageProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportsendMessageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_sendMessage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_sendMessage(self: ptr cQWebChannelAbstractTransport, slot: int, message: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_sendMessage ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportsendMessageProc](cast[pointer](slot))
  let slotval1 = gen_qjsonobject_types.QJsonObject(h: message)


  nimfunc[](slotval1)
proc QWebChannelAbstractTransportevent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): bool =
  fQWebChannelAbstractTransport_virtualbase_event(self.h, event.h)

type QWebChannelAbstractTransporteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransporteventProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransporteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_event(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_event ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransporteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebChannelAbstractTransporteventFilter*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebChannelAbstractTransport_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebChannelAbstractTransporteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransporteventFilterProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransporteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_eventFilter(self: ptr cQWebChannelAbstractTransport, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_eventFilter ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransporteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebChannelAbstractTransporttimerEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebChannelAbstractTransport_virtualbase_timerEvent(self.h, event.h)

type QWebChannelAbstractTransporttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransporttimerEventProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransporttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_timerEvent(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_timerEvent ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransporttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebChannelAbstractTransportchildEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebChannelAbstractTransport_virtualbase_childEvent(self.h, event.h)

type QWebChannelAbstractTransportchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportchildEventProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_childEvent(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_childEvent ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebChannelAbstractTransportcustomEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, event: gen_qcoreevent_types.QEvent): void =
  fQWebChannelAbstractTransport_virtualbase_customEvent(self.h, event.h)

type QWebChannelAbstractTransportcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_customEvent(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_customEvent ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebChannelAbstractTransportconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebChannelAbstractTransport_virtualbase_connectNotify(self.h, signal.h)

type QWebChannelAbstractTransportconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_connectNotify(self: ptr cQWebChannelAbstractTransport, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_connectNotify ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebChannelAbstractTransportdisconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebChannelAbstractTransport_virtualbase_disconnectNotify(self.h, signal.h)

type QWebChannelAbstractTransportdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport, slot: QWebChannelAbstractTransportdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebChannelAbstractTransportdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_disconnectNotify(self: ptr cQWebChannelAbstractTransport, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebChannelAbstractTransportdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannelAbstractTransport_staticMetaObject())
proc delete*(self: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport) =
  fcQWebChannelAbstractTransport_delete(self.h)
