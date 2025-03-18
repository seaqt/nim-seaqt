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


{.compile("gen_qqmlwebchannel.cpp", QtWebChannelCFlags).}


import ./gen_qqmlwebchannel_types
export gen_qqmlwebchannel_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qwebchannel,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qwebchannel

type cQQmlWebChannel*{.exportc: "QQmlWebChannel", incompleteStruct.} = object

proc fcQQmlWebChannel_metaObject(self: pointer): pointer {.importc: "QQmlWebChannel_metaObject".}
proc fcQQmlWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlWebChannel_metacast".}
proc fcQQmlWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlWebChannel_metacall".}
proc fcQQmlWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr".}
proc fcQQmlWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QQmlWebChannel_registerObjects".}
proc fcQQmlWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_connectTo".}
proc fcQQmlWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_disconnectFrom".}
proc fcQQmlWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr2".}
proc fcQQmlWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlWebChannel_tr3".}
proc fcQQmlWebChannel_vtbl(self: pointer): pointer {.importc: "QQmlWebChannel_vtbl".}
proc fcQQmlWebChannel_vdata(self: pointer): pointer {.importc: "QQmlWebChannel_vdata".}

type cQQmlWebChannelVTable {.pure.} = object
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
proc fcQQmlWebChannel_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlWebChannel_virtualbase_metaObject".}
proc fcQQmlWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlWebChannel_virtualbase_metacast".}
proc fcQQmlWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlWebChannel_virtualbase_metacall".}
proc fcQQmlWebChannel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlWebChannel_virtualbase_event".}
proc fcQQmlWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlWebChannel_virtualbase_eventFilter".}
proc fcQQmlWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlWebChannel_virtualbase_timerEvent".}
proc fcQQmlWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlWebChannel_virtualbase_childEvent".}
proc fcQQmlWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlWebChannel_virtualbase_customEvent".}
proc fcQQmlWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlWebChannel_virtualbase_connectNotify".}
proc fcQQmlWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlWebChannel_virtualbase_disconnectNotify".}
proc fcQQmlWebChannel_protectedbase_sender(self: pointer): pointer {.importc: "QQmlWebChannel_protectedbase_sender".}
proc fcQQmlWebChannel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlWebChannel_protectedbase_senderSignalIndex".}
proc fcQQmlWebChannel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlWebChannel_protectedbase_receivers".}
proc fcQQmlWebChannel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlWebChannel_protectedbase_isSignalConnected".}
proc fcQQmlWebChannel_new(vtbl, vdata: pointer): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new".}
proc fcQQmlWebChannel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new2".}
proc fcQQmlWebChannel_staticMetaObject(): pointer {.importc: "QQmlWebChannel_staticMetaObject".}

proc metaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cstring): pointer =
  fcQQmlWebChannel_metacast(self.h, param1)

proc metacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring): string =
  let v_ms = fcQQmlWebChannel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: gen_qqmlwebchannel_types.QQmlWebChannel, objects: Table[string,gen_qvariant_types.QVariant]): void =
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

  fcQQmlWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc connectTo*(self: gen_qqmlwebchannel_types.QQmlWebChannel, transport: gen_qobject_types.QObject): void =
  fcQQmlWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: gen_qqmlwebchannel_types.QQmlWebChannel, transport: gen_qobject_types.QObject): void =
  fcQQmlWebChannel_disconnectFrom(self.h, transport.h)

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQQmlWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQmlWebChannelmetaObjectProc* = proc(self: QQmlWebChannel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlWebChannelmetacastProc* = proc(self: QQmlWebChannel, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlWebChannelmetacallProc* = proc(self: QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlWebChanneleventProc* = proc(self: QQmlWebChannel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlWebChanneleventFilterProc* = proc(self: QQmlWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlWebChanneltimerEventProc* = proc(self: QQmlWebChannel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlWebChannelchildEventProc* = proc(self: QQmlWebChannel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlWebChannelcustomEventProc* = proc(self: QQmlWebChannel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlWebChannelconnectNotifyProc* = proc(self: QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlWebChanneldisconnectNotifyProc* = proc(self: QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQmlWebChannelVTable* {.inheritable, pure.} = object
  vtbl: cQQmlWebChannelVTable
  metaObject*: QQmlWebChannelmetaObjectProc
  metacast*: QQmlWebChannelmetacastProc
  metacall*: QQmlWebChannelmetacallProc
  event*: QQmlWebChanneleventProc
  eventFilter*: QQmlWebChanneleventFilterProc
  timerEvent*: QQmlWebChanneltimerEventProc
  childEvent*: QQmlWebChannelchildEventProc
  customEvent*: QQmlWebChannelcustomEventProc
  connectNotify*: QQmlWebChannelconnectNotifyProc
  disconnectNotify*: QQmlWebChanneldisconnectNotifyProc

proc QQmlWebChannelmetaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_virtualbase_metaObject(self.h), owned: false)

proc QQmlWebChannelmetacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cstring): pointer =
  fcQQmlWebChannel_virtualbase_metacast(self.h, param1)

proc QQmlWebChannelmetacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQmlWebChannelevent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlWebChannel_virtualbase_event(self.h, event.h)

proc QQmlWebChanneleventFilter*(self: gen_qqmlwebchannel_types.QQmlWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQmlWebChanneltimerEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlWebChannel_virtualbase_timerEvent(self.h, event.h)

proc QQmlWebChannelchildEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlWebChannel_virtualbase_childEvent(self.h, event.h)

proc QQmlWebChannelcustomEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlWebChannel_virtualbase_customEvent(self.h, event.h)

proc QQmlWebChannelconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlWebChannel_virtualbase_connectNotify(self.h, signal.h)

proc QQmlWebChanneldisconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlWebChannel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQmlWebChannel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlWebChannel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQmlWebChannel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlWebChannel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQmlWebChannel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQmlWebChannel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQmlWebChannel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQmlWebChannel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQmlWebChannel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQmlWebChannel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlWebChannel* {.inheritable.} = ref object of QQmlWebChannel
  vtbl*: cQQmlWebChannelVTable

method metaObject*(self: VirtualQQmlWebChannel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlWebChannelmetaObject(self[])
method metacast*(self: VirtualQQmlWebChannel, param1: cstring): pointer {.base.} =
  QQmlWebChannelmetacast(self[], param1)
method metacall*(self: VirtualQQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlWebChannelmetacall(self[], param1, param2, param3)
method event*(self: VirtualQQmlWebChannel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlWebChannelevent(self[], event)
method eventFilter*(self: VirtualQQmlWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlWebChanneleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQmlWebChannel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlWebChanneltimerEvent(self[], event)
method childEvent*(self: VirtualQQmlWebChannel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlWebChannelchildEvent(self[], event)
method customEvent*(self: VirtualQQmlWebChannel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlWebChannelcustomEvent(self[], event)
method connectNotify*(self: VirtualQQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlWebChannelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlWebChanneldisconnectNotify(self[], signal)

proc fcQQmlWebChannel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlWebChannel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQmlWebChannel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlWebChannel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQmlWebChannel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQmlWebChannel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQmlWebChannel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQmlWebChannel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQmlWebChannel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQmlWebChannel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlWebChannel](fcQQmlWebChannel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qqmlwebchannel_types.QQmlWebChannel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlWebChannel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlwebchannel_types.QQmlWebChannel): cint =
  fcQQmlWebChannel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: cstring): cint =
  fcQQmlWebChannel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlWebChannel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel,
    vtbl: ref QQmlWebChannelVTable = nil): gen_qqmlwebchannel_types.QQmlWebChannel =
  let vtbl = if vtbl == nil: new QQmlWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlWebChannel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlWebChannel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlWebChannel_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlWebChannel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlWebChannel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlWebChannel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlWebChannel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlWebChannel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlWebChannel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlWebChannel_vtable_callback_disconnectNotify
  gen_qqmlwebchannel_types.QQmlWebChannel(h: fcQQmlWebChannel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlWebChannelVTable = nil): gen_qqmlwebchannel_types.QQmlWebChannel =
  let vtbl = if vtbl == nil: new QQmlWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlWebChannelVTable](fcQQmlWebChannel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlWebChannel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlWebChannel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlWebChannel_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlWebChannel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlWebChannel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlWebChannel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlWebChannel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlWebChannel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlWebChannel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlWebChannel_vtable_callback_disconnectNotify
  gen_qqmlwebchannel_types.QQmlWebChannel(h: fcQQmlWebChannel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQmlWebChannel_mvtbl = cQQmlWebChannelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlWebChannel()[])](self.fcQQmlWebChannel_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQmlWebChannel_method_callback_metaObject,
  metacast: fcQQmlWebChannel_method_callback_metacast,
  metacall: fcQQmlWebChannel_method_callback_metacall,
  event: fcQQmlWebChannel_method_callback_event,
  eventFilter: fcQQmlWebChannel_method_callback_eventFilter,
  timerEvent: fcQQmlWebChannel_method_callback_timerEvent,
  childEvent: fcQQmlWebChannel_method_callback_childEvent,
  customEvent: fcQQmlWebChannel_method_callback_customEvent,
  connectNotify: fcQQmlWebChannel_method_callback_connectNotify,
  disconnectNotify: fcQQmlWebChannel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel,
    inst: VirtualQQmlWebChannel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlWebChannel_new(addr(cQQmlWebChannel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQmlWebChannel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlWebChannel_new2(addr(cQQmlWebChannel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlwebchannel_types.QQmlWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_staticMetaObject())
