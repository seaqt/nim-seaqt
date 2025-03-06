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
{.compile("gen_qwebchannel.cpp", cflags).}


import ./gen_qwebchannel_types
export gen_qwebchannel_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qwebchannelabstracttransport_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebchannelabstracttransport_types

type cQWebChannel*{.exportc: "QWebChannel", incompleteStruct.} = object

proc fcQWebChannel_new(): ptr cQWebChannel {.importc: "QWebChannel_new".}
proc fcQWebChannel_new2(parent: pointer): ptr cQWebChannel {.importc: "QWebChannel_new2".}
proc fcQWebChannel_metaObject(self: pointer, ): pointer {.importc: "QWebChannel_metaObject".}
proc fcQWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannel_metacast".}
proc fcQWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QWebChannel_tr".}
proc fcQWebChannel_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebChannel_trUtf8".}
proc fcQWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QWebChannel_registerObjects".}
proc fcQWebChannel_registeredObjects(self: pointer, ): struct_miqt_map {.importc: "QWebChannel_registeredObjects".}
proc fcQWebChannel_registerObject(self: pointer, id: struct_miqt_string, objectVal: pointer): void {.importc: "QWebChannel_registerObject".}
proc fcQWebChannel_deregisterObject(self: pointer, objectVal: pointer): void {.importc: "QWebChannel_deregisterObject".}
proc fcQWebChannel_blockUpdates(self: pointer, ): bool {.importc: "QWebChannel_blockUpdates".}
proc fcQWebChannel_setBlockUpdates(self: pointer, blockVal: bool): void {.importc: "QWebChannel_setBlockUpdates".}
proc fcQWebChannel_blockUpdatesChanged(self: pointer, blockVal: bool): void {.importc: "QWebChannel_blockUpdatesChanged".}
proc fcQWebChannel_connect_blockUpdatesChanged(self: pointer, slot: int) {.importc: "QWebChannel_connect_blockUpdatesChanged".}
proc fcQWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QWebChannel_connectTo".}
proc fcQWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QWebChannel_disconnectFrom".}
proc fcQWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannel_tr2".}
proc fcQWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannel_tr3".}
proc fcQWebChannel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannel_trUtf82".}
proc fcQWebChannel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannel_trUtf83".}
proc fQWebChannel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebChannel_virtualbase_event".}
proc fcQWebChannel_override_virtual_event(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_event".}
proc fQWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebChannel_virtualbase_eventFilter".}
proc fcQWebChannel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_eventFilter".}
proc fQWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebChannel_virtualbase_timerEvent".}
proc fcQWebChannel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_timerEvent".}
proc fQWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebChannel_virtualbase_childEvent".}
proc fcQWebChannel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_childEvent".}
proc fQWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebChannel_virtualbase_customEvent".}
proc fcQWebChannel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_customEvent".}
proc fQWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannel_virtualbase_connectNotify".}
proc fcQWebChannel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_connectNotify".}
proc fQWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannel_virtualbase_disconnectNotify".}
proc fcQWebChannel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebChannel_override_virtual_disconnectNotify".}
proc fcQWebChannel_delete(self: pointer) {.importc: "QWebChannel_delete".}


func init*(T: type gen_qwebchannel_types.QWebChannel, h: ptr cQWebChannel): gen_qwebchannel_types.QWebChannel =
  T(h: h)
proc create*(T: type gen_qwebchannel_types.QWebChannel, ): gen_qwebchannel_types.QWebChannel =
  gen_qwebchannel_types.QWebChannel.init(fcQWebChannel_new())

proc create*(T: type gen_qwebchannel_types.QWebChannel, parent: gen_qobject_types.QObject): gen_qwebchannel_types.QWebChannel =
  gen_qwebchannel_types.QWebChannel.init(fcQWebChannel_new2(parent.h))

proc metaObject*(self: gen_qwebchannel_types.QWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_metaObject(self.h))

proc metacast*(self: gen_qwebchannel_types.QWebChannel, param1: cstring): pointer =
  fcQWebChannel_metacast(self.h, param1)

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring): string =
  let v_ms = fcQWebChannel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannel_types.QWebChannel, s: cstring): string =
  let v_ms = fcQWebChannel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: gen_qwebchannel_types.QWebChannel, objects: Table[string,gen_qobject_types.QObject]): void =
  var objects_Keys_CArray = newSeq[struct_miqt_string](len(objects))
  var objects_Values_CArray = newSeq[pointer](len(objects))
  var objects_ctr = 0
  for objectsk, objectsv in objects:
    objects_Keys_CArray[objects_ctr] = struct_miqt_string(data: objects_k, len: csize_t(len(objects_k)))
    objects_Values_CArray[objects_ctr] = objects_v.h
    objects_ctr += 1

  fcQWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc registeredObjects*(self: gen_qwebchannel_types.QWebChannel, ): Table[string,gen_qobject_types.QObject] =
  var v_mm = fcQWebChannel_registeredObjects(self.h)
  var vx_ret: Table[string, gen_qobject_types.QObject]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qobject_types.QObject(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc registerObject*(self: gen_qwebchannel_types.QWebChannel, id: string, objectVal: gen_qobject_types.QObject): void =
  fcQWebChannel_registerObject(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), objectVal.h)

proc deregisterObject*(self: gen_qwebchannel_types.QWebChannel, objectVal: gen_qobject_types.QObject): void =
  fcQWebChannel_deregisterObject(self.h, objectVal.h)

proc blockUpdates*(self: gen_qwebchannel_types.QWebChannel, ): bool =
  fcQWebChannel_blockUpdates(self.h)

proc setBlockUpdates*(self: gen_qwebchannel_types.QWebChannel, blockVal: bool): void =
  fcQWebChannel_setBlockUpdates(self.h, blockVal)

proc blockUpdatesChanged*(self: gen_qwebchannel_types.QWebChannel, blockVal: bool): void =
  fcQWebChannel_blockUpdatesChanged(self.h, blockVal)

type QWebChannelblockUpdatesChangedSlot* = proc(blockVal: bool)
proc miqt_exec_callback_QWebChannel_blockUpdatesChanged(slot: int, blockVal: bool) {.exportc.} =
  let nimfunc = cast[ptr QWebChannelblockUpdatesChangedSlot](cast[pointer](slot))
  let slotval1 = blockVal

  nimfunc[](slotval1)

proc onblockUpdatesChanged*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChannelblockUpdatesChangedSlot) =
  var tmp = new QWebChannelblockUpdatesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_connect_blockUpdatesChanged(self.h, cast[int](addr tmp[]))

proc connectTo*(self: gen_qwebchannel_types.QWebChannel, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: gen_qwebchannel_types.QWebChannel, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannel_disconnectFrom(self.h, transport.h)

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWebChannelevent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QEvent): bool =
  fQWebChannel_virtualbase_event(self.h, event.h)

type QWebChanneleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChanneleventProc) =
  # TODO check subclass
  var tmp = new QWebChanneleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_event(self: ptr cQWebChannel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannel_event ".} =
  var nimfunc = cast[ptr QWebChanneleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebChanneleventFilter*(self: gen_qwebchannel_types.QWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebChanneleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChanneleventFilterProc) =
  # TODO check subclass
  var tmp = new QWebChanneleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_eventFilter(self: ptr cQWebChannel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannel_eventFilter ".} =
  var nimfunc = cast[ptr QWebChanneleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebChanneltimerEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebChannel_virtualbase_timerEvent(self.h, event.h)

type QWebChanneltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChanneltimerEventProc) =
  # TODO check subclass
  var tmp = new QWebChanneltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_timerEvent(self: ptr cQWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_timerEvent ".} =
  var nimfunc = cast[ptr QWebChanneltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebChannelchildEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebChannel_virtualbase_childEvent(self.h, event.h)

type QWebChannelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChannelchildEventProc) =
  # TODO check subclass
  var tmp = new QWebChannelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_childEvent(self: ptr cQWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_childEvent ".} =
  var nimfunc = cast[ptr QWebChannelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebChannelcustomEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QEvent): void =
  fQWebChannel_virtualbase_customEvent(self.h, event.h)

type QWebChannelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChannelcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebChannelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_customEvent(self: ptr cQWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_customEvent ".} =
  var nimfunc = cast[ptr QWebChannelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebChannelconnectNotify*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebChannel_virtualbase_connectNotify(self.h, signal.h)

type QWebChannelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChannelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebChannelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_connectNotify(self: ptr cQWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_connectNotify ".} =
  var nimfunc = cast[ptr QWebChannelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebChanneldisconnectNotify*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

type QWebChanneldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChanneldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebChanneldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannel_disconnectNotify(self: ptr cQWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannel_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebChanneldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwebchannel_types.QWebChannel) =
  fcQWebChannel_delete(self.h)
