import ./qtwebchannel_pkg

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


{.compile("gen_qwebchannel.cpp", QtWebChannelCFlags).}


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

proc fcQWebChannel_metaObject(self: pointer): pointer {.importc: "QWebChannel_metaObject".}
proc fcQWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannel_metacast".}
proc fcQWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannel_metacall".}
proc fcQWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QWebChannel_tr".}
proc fcQWebChannel_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebChannel_trUtf8".}
proc fcQWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QWebChannel_registerObjects".}
proc fcQWebChannel_registeredObjects(self: pointer): struct_miqt_map {.importc: "QWebChannel_registeredObjects".}
proc fcQWebChannel_registerObject(self: pointer, id: struct_miqt_string, objectVal: pointer): void {.importc: "QWebChannel_registerObject".}
proc fcQWebChannel_deregisterObject(self: pointer, objectVal: pointer): void {.importc: "QWebChannel_deregisterObject".}
proc fcQWebChannel_blockUpdates(self: pointer): bool {.importc: "QWebChannel_blockUpdates".}
proc fcQWebChannel_setBlockUpdates(self: pointer, blockVal: bool): void {.importc: "QWebChannel_setBlockUpdates".}
proc fcQWebChannel_blockUpdatesChanged(self: pointer, blockVal: bool): void {.importc: "QWebChannel_blockUpdatesChanged".}
proc fcQWebChannel_connect_blockUpdatesChanged(self: pointer, slot: int, callback: proc (slot: int, blockVal: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebChannel_connect_blockUpdatesChanged".}
proc fcQWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QWebChannel_connectTo".}
proc fcQWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QWebChannel_disconnectFrom".}
proc fcQWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannel_tr2".}
proc fcQWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannel_tr3".}
proc fcQWebChannel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannel_trUtf82".}
proc fcQWebChannel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannel_trUtf83".}
proc fcQWebChannel_vtbl(self: pointer): pointer {.importc: "QWebChannel_vtbl".}
proc fcQWebChannel_vdata(self: pointer): pointer {.importc: "QWebChannel_vdata".}
type cQWebChannelVTable {.pure.} = object
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
proc fcQWebChannel_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebChannel_virtualbase_metaObject".}
proc fcQWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannel_virtualbase_metacast".}
proc fcQWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannel_virtualbase_metacall".}
proc fcQWebChannel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebChannel_virtualbase_event".}
proc fcQWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebChannel_virtualbase_eventFilter".}
proc fcQWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebChannel_virtualbase_timerEvent".}
proc fcQWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebChannel_virtualbase_childEvent".}
proc fcQWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebChannel_virtualbase_customEvent".}
proc fcQWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannel_virtualbase_connectNotify".}
proc fcQWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannel_virtualbase_disconnectNotify".}
proc fcQWebChannel_protectedbase_sender(self: pointer): pointer {.importc: "QWebChannel_protectedbase_sender".}
proc fcQWebChannel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebChannel_protectedbase_senderSignalIndex".}
proc fcQWebChannel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebChannel_protectedbase_receivers".}
proc fcQWebChannel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebChannel_protectedbase_isSignalConnected".}
proc fcQWebChannel_new(vtbl, vdata: pointer): ptr cQWebChannel {.importc: "QWebChannel_new".}
proc fcQWebChannel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQWebChannel {.importc: "QWebChannel_new2".}
proc fcQWebChannel_staticMetaObject(): pointer {.importc: "QWebChannel_staticMetaObject".}

proc metaObject*(self: gen_qwebchannel_types.QWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebchannel_types.QWebChannel, param1: cstring): pointer =
  fcQWebChannel_metacast(self.h, param1)

proc metacall*(self: gen_qwebchannel_types.QWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring): string =
  let v_ms = fcQWebChannel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannel_types.QWebChannel, s: cstring): string =
  let v_ms = fcQWebChannel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: gen_qwebchannel_types.QWebChannel, objects: Table[string,gen_qobject_types.QObject]): void =
  var objects_Keys_CArray = newSeq[struct_miqt_string](len(objects))
  var objects_Values_CArray = newSeq[pointer](len(objects))
  var objects_ctr = 0
  for objects_k in objects.keys():
    objects_Keys_CArray[objects_ctr] = struct_miqt_string(data: if len(objects_k) > 0: addr objects_k[0] else: nil, len: csize_t(len(objects_k)))
    objects_ctr += 1
  objects_ctr = 0
  for objects_v in objects.values():
    objects_Values_CArray[objects_ctr] = objects_v.h
    objects_ctr += 1

  fcQWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc registeredObjects*(self: gen_qwebchannel_types.QWebChannel): Table[string,gen_qobject_types.QObject] =
  var v_mm = fcQWebChannel_registeredObjects(self.h)
  var vx_ret: Table[string, gen_qobject_types.QObject]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(vx_hashkey_ms)
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qobject_types.QObject(h: v_Values[i], owned: false)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc registerObject*(self: gen_qwebchannel_types.QWebChannel, id: openArray[char], objectVal: gen_qobject_types.QObject): void =
  fcQWebChannel_registerObject(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))), objectVal.h)

proc deregisterObject*(self: gen_qwebchannel_types.QWebChannel, objectVal: gen_qobject_types.QObject): void =
  fcQWebChannel_deregisterObject(self.h, objectVal.h)

proc blockUpdates*(self: gen_qwebchannel_types.QWebChannel): bool =
  fcQWebChannel_blockUpdates(self.h)

proc setBlockUpdates*(self: gen_qwebchannel_types.QWebChannel, blockVal: bool): void =
  fcQWebChannel_setBlockUpdates(self.h, blockVal)

proc blockUpdatesChanged*(self: gen_qwebchannel_types.QWebChannel, blockVal: bool): void =
  fcQWebChannel_blockUpdatesChanged(self.h, blockVal)

type QWebChannelblockUpdatesChangedSlot* = proc(blockVal: bool)
proc cQWebChannel_slot_callback_blockUpdatesChanged(slot: int, blockVal: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebChannelblockUpdatesChangedSlot](cast[pointer](slot))
  let slotval1 = blockVal

  nimfunc[](slotval1)

proc cQWebChannel_slot_callback_blockUpdatesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebChannelblockUpdatesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblockUpdatesChanged*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChannelblockUpdatesChangedSlot) =
  var tmp = new QWebChannelblockUpdatesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_connect_blockUpdatesChanged(self.h, cast[int](addr tmp[]), cQWebChannel_slot_callback_blockUpdatesChanged, cQWebChannel_slot_callback_blockUpdatesChanged_release)

proc connectTo*(self: gen_qwebchannel_types.QWebChannel, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: gen_qwebchannel_types.QWebChannel, transport: gen_qwebchannelabstracttransport_types.QWebChannelAbstractTransport): void =
  fcQWebChannel_disconnectFrom(self.h, transport.h)

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQWebChannel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebchannel_types.QWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebChannel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWebChannelmetaObjectProc* = proc(self: QWebChannel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebChannelmetacastProc* = proc(self: QWebChannel, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebChannelmetacallProc* = proc(self: QWebChannel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebChanneleventProc* = proc(self: QWebChannel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebChanneleventFilterProc* = proc(self: QWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebChanneltimerEventProc* = proc(self: QWebChannel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebChannelchildEventProc* = proc(self: QWebChannel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebChannelcustomEventProc* = proc(self: QWebChannel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebChannelconnectNotifyProc* = proc(self: QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebChanneldisconnectNotifyProc* = proc(self: QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebChannelVTable* {.inheritable, pure.} = object
  vtbl: cQWebChannelVTable
  metaObject*: QWebChannelmetaObjectProc
  metacast*: QWebChannelmetacastProc
  metacall*: QWebChannelmetacallProc
  event*: QWebChanneleventProc
  eventFilter*: QWebChanneleventFilterProc
  timerEvent*: QWebChanneltimerEventProc
  childEvent*: QWebChannelchildEventProc
  customEvent*: QWebChannelcustomEventProc
  connectNotify*: QWebChannelconnectNotifyProc
  disconnectNotify*: QWebChanneldisconnectNotifyProc
proc QWebChannelmetaObject*(self: gen_qwebchannel_types.QWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_virtualbase_metaObject(self.h), owned: false)

proc cQWebChannel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebChannelmetacast*(self: gen_qwebchannel_types.QWebChannel, param1: cstring): pointer =
  fcQWebChannel_virtualbase_metacast(self.h, param1)

proc cQWebChannel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebChannelmetacall*(self: gen_qwebchannel_types.QWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebChannel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebChannelevent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannel_virtualbase_event(self.h, event.h)

proc cQWebChannel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebChanneleventFilter*(self: gen_qwebchannel_types.QWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebChannel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebChanneltimerEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebChannel_virtualbase_timerEvent(self.h, event.h)

proc cQWebChannel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebChannelchildEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebChannel_virtualbase_childEvent(self.h, event.h)

proc cQWebChannel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebChannelcustomEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QEvent): void =
  fcQWebChannel_virtualbase_customEvent(self.h, event.h)

proc cQWebChannel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebChannelconnectNotify*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannel_virtualbase_connectNotify(self.h, signal.h)

proc cQWebChannel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebChanneldisconnectNotify*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebChannel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](fcQWebChannel_vdata(self))
  let self = QWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebChannel* {.inheritable.} = ref object of QWebChannel
  vtbl*: cQWebChannelVTable
method metaObject*(self: VirtualQWebChannel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebChannelmetaObject(self[])
proc cQWebChannel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebChannel, param1: cstring): pointer {.base.} =
  QWebChannelmetacast(self[], param1)
proc cQWebChannel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebChannel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebChannelmetacall(self[], param1, param2, param3)
proc cQWebChannel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQWebChannel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebChannelevent(self[], event)
proc cQWebChannel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebChanneleventFilter(self[], watched, event)
proc cQWebChannel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebChannel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebChanneltimerEvent(self[], event)
proc cQWebChannel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebChannel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebChannelchildEvent(self[], event)
proc cQWebChannel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebChannel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebChannelcustomEvent(self[], event)
proc cQWebChannel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebChannelconnectNotify(self[], signal)
proc cQWebChannel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebChanneldisconnectNotify(self[], signal)
proc cQWebChannel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebChannel](fcQWebChannel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qwebchannel_types.QWebChannel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebChannel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebchannel_types.QWebChannel): cint =
  fcQWebChannel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebchannel_types.QWebChannel, signal: cstring): cint =
  fcQWebChannel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebChannel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebchannel_types.QWebChannel,
    vtbl: ref QWebChannelVTable = nil): gen_qwebchannel_types.QWebChannel =
  let vtbl = if vtbl == nil: new QWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebChannelVTable](fcQWebChannel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebChannel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebChannel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebChannel_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebChannel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebChannel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebChannel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebChannel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebChannel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebChannel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebChannel_vtable_callback_disconnectNotify
  gen_qwebchannel_types.QWebChannel(h: fcQWebChannel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebchannel_types.QWebChannel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebChannelVTable = nil): gen_qwebchannel_types.QWebChannel =
  let vtbl = if vtbl == nil: new QWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebChannelVTable](fcQWebChannel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebChannel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebChannel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebChannel_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebChannel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebChannel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebChannel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebChannel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebChannel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebChannel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebChannel_vtable_callback_disconnectNotify
  gen_qwebchannel_types.QWebChannel(h: fcQWebChannel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQWebChannel_mvtbl = cQWebChannelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebChannel()[])](self.fcQWebChannel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebChannel_method_callback_metaObject,
  metacast: cQWebChannel_method_callback_metacast,
  metacall: cQWebChannel_method_callback_metacall,
  event: cQWebChannel_method_callback_event,
  eventFilter: cQWebChannel_method_callback_eventFilter,
  timerEvent: cQWebChannel_method_callback_timerEvent,
  childEvent: cQWebChannel_method_callback_childEvent,
  customEvent: cQWebChannel_method_callback_customEvent,
  connectNotify: cQWebChannel_method_callback_connectNotify,
  disconnectNotify: cQWebChannel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebchannel_types.QWebChannel,
    inst: VirtualQWebChannel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebChannel_new(addr(cQWebChannel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebchannel_types.QWebChannel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWebChannel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebChannel_new2(addr(cQWebChannel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebchannel_types.QWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_staticMetaObject())
