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

proc fcQWebChannel_metaObject(self: pointer, ): pointer {.importc: "QWebChannel_metaObject".}
proc fcQWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannel_metacast".}
proc fcQWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannel_metacall".}
proc fcQWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QWebChannel_tr".}
proc fcQWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QWebChannel_registerObjects".}
proc fcQWebChannel_registeredObjects(self: pointer, ): struct_miqt_map {.importc: "QWebChannel_registeredObjects".}
proc fcQWebChannel_registerObject(self: pointer, id: struct_miqt_string, objectVal: pointer): void {.importc: "QWebChannel_registerObject".}
proc fcQWebChannel_deregisterObject(self: pointer, objectVal: pointer): void {.importc: "QWebChannel_deregisterObject".}
proc fcQWebChannel_blockUpdates(self: pointer, ): bool {.importc: "QWebChannel_blockUpdates".}
proc fcQWebChannel_setBlockUpdates(self: pointer, blockVal: bool): void {.importc: "QWebChannel_setBlockUpdates".}
proc fcQWebChannel_propertyUpdateInterval(self: pointer, ): cint {.importc: "QWebChannel_propertyUpdateInterval".}
proc fcQWebChannel_setPropertyUpdateInterval(self: pointer, ms: cint): void {.importc: "QWebChannel_setPropertyUpdateInterval".}
proc fcQWebChannel_blockUpdatesChanged(self: pointer, blockVal: bool): void {.importc: "QWebChannel_blockUpdatesChanged".}
proc fcQWebChannel_connect_blockUpdatesChanged(self: pointer, slot: int, callback: proc (slot: int, blockVal: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebChannel_connect_blockUpdatesChanged".}
proc fcQWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QWebChannel_connectTo".}
proc fcQWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QWebChannel_disconnectFrom".}
proc fcQWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannel_tr2".}
proc fcQWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannel_tr3".}
type cQWebChannelVTable = object
  destructor*: proc(vtbl: ptr cQWebChannelVTable, self: ptr cQWebChannel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebChannel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebChannel_virtualbase_metaObject".}
proc fcQWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannel_virtualbase_metacast".}
proc fcQWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannel_virtualbase_metacall".}
proc fcQWebChannel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebChannel_virtualbase_event".}
proc fcQWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebChannel_virtualbase_eventFilter".}
proc fcQWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebChannel_virtualbase_timerEvent".}
proc fcQWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebChannel_virtualbase_childEvent".}
proc fcQWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebChannel_virtualbase_customEvent".}
proc fcQWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannel_virtualbase_connectNotify".}
proc fcQWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebChannel_virtualbase_disconnectNotify".}
proc fcQWebChannel_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebChannel_protectedbase_sender".}
proc fcQWebChannel_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebChannel_protectedbase_senderSignalIndex".}
proc fcQWebChannel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebChannel_protectedbase_receivers".}
proc fcQWebChannel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebChannel_protectedbase_isSignalConnected".}
proc fcQWebChannel_new(vtbl: pointer, ): ptr cQWebChannel {.importc: "QWebChannel_new".}
proc fcQWebChannel_new2(vtbl: pointer, parent: pointer): ptr cQWebChannel {.importc: "QWebChannel_new2".}
proc fcQWebChannel_staticMetaObject(): pointer {.importc: "QWebChannel_staticMetaObject".}
proc fcQWebChannel_delete(self: pointer) {.importc: "QWebChannel_delete".}

proc metaObject*(self: gen_qwebchannel_types.QWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_metaObject(self.h))

proc metacast*(self: gen_qwebchannel_types.QWebChannel, param1: cstring): pointer =
  fcQWebChannel_metacast(self.h, param1)

proc metacall*(self: gen_qwebchannel_types.QWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebchannel_types.QWebChannel, s: cstring): string =
  let v_ms = fcQWebChannel_tr(s)
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

proc propertyUpdateInterval*(self: gen_qwebchannel_types.QWebChannel, ): cint =
  fcQWebChannel_propertyUpdateInterval(self.h)

proc setPropertyUpdateInterval*(self: gen_qwebchannel_types.QWebChannel, ms: cint): void =
  fcQWebChannel_setPropertyUpdateInterval(self.h, ms)

proc blockUpdatesChanged*(self: gen_qwebchannel_types.QWebChannel, blockVal: bool): void =
  fcQWebChannel_blockUpdatesChanged(self.h, blockVal)

type QWebChannelblockUpdatesChangedSlot* = proc(blockVal: bool)
proc miqt_exec_callback_cQWebChannel_blockUpdatesChanged(slot: int, blockVal: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebChannelblockUpdatesChangedSlot](cast[pointer](slot))
  let slotval1 = blockVal

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebChannel_blockUpdatesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebChannelblockUpdatesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblockUpdatesChanged*(self: gen_qwebchannel_types.QWebChannel, slot: QWebChannelblockUpdatesChangedSlot) =
  var tmp = new QWebChannelblockUpdatesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannel_connect_blockUpdatesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebChannel_blockUpdatesChanged, miqt_exec_callback_cQWebChannel_blockUpdatesChanged_release)

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
type QWebChannelVTable* = object
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
proc QWebChannelmetaObject*(self: gen_qwebchannel_types.QWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebChannel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebChannelmetacast*(self: gen_qwebchannel_types.QWebChannel, param1: cstring): pointer =
  fcQWebChannel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebChannel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebChannelmetacall*(self: gen_qwebchannel_types.QWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebChannel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebChannelevent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWebChannel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebChanneleventFilter*(self: gen_qwebchannel_types.QWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebChannel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebChanneltimerEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebChannel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebChannel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebChannelchildEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebChannel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebChannel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebChannelcustomEvent*(self: gen_qwebchannel_types.QWebChannel, event: gen_qcoreevent_types.QEvent): void =
  fcQWebChannel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebChannel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebChannelconnectNotify*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebChannel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebChanneldisconnectNotify*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebChannel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebChannelVTable](vtbl)
  let self = QWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qwebchannel_types.QWebChannel, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebChannel_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebchannel_types.QWebChannel, ): cint =
  fcQWebChannel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebchannel_types.QWebChannel, signal: cstring): cint =
  fcQWebChannel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebchannel_types.QWebChannel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebChannel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebchannel_types.QWebChannel,
    vtbl: ref QWebChannelVTable = nil): gen_qwebchannel_types.QWebChannel =
  let vtbl = if vtbl == nil: new QWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebChannelVTable, _: ptr cQWebChannel) {.cdecl.} =
    let vtbl = cast[ref QWebChannelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebChannel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebChannel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebChannel_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebChannel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebChannel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebChannel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebChannel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebChannel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebChannel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebChannel_disconnectNotify
  gen_qwebchannel_types.QWebChannel(h: fcQWebChannel_new(addr(vtbl[]), ))

proc create*(T: type gen_qwebchannel_types.QWebChannel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebChannelVTable = nil): gen_qwebchannel_types.QWebChannel =
  let vtbl = if vtbl == nil: new QWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebChannelVTable, _: ptr cQWebChannel) {.cdecl.} =
    let vtbl = cast[ref QWebChannelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebChannel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebChannel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebChannel_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebChannel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebChannel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebChannel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebChannel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebChannel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebChannel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebChannel_disconnectNotify
  gen_qwebchannel_types.QWebChannel(h: fcQWebChannel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qwebchannel_types.QWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebChannel_staticMetaObject())
proc delete*(self: gen_qwebchannel_types.QWebChannel) =
  fcQWebChannel_delete(self.h)
