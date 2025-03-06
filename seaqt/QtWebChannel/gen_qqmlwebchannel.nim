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
{.compile("gen_qqmlwebchannel.cpp", cflags).}


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

proc fcQQmlWebChannel_metaObject(self: pointer, ): pointer {.importc: "QQmlWebChannel_metaObject".}
proc fcQQmlWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlWebChannel_metacast".}
proc fcQQmlWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlWebChannel_metacall".}
proc fcQQmlWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr".}
proc fcQQmlWebChannel_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlWebChannel_trUtf8".}
proc fcQQmlWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QQmlWebChannel_registerObjects".}
proc fcQQmlWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_connectTo".}
proc fcQQmlWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_disconnectFrom".}
proc fcQQmlWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr2".}
proc fcQQmlWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlWebChannel_tr3".}
proc fcQQmlWebChannel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlWebChannel_trUtf82".}
proc fcQQmlWebChannel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlWebChannel_trUtf83".}
type cQQmlWebChannelVTable = object
  destructor*: proc(vtbl: ptr cQQmlWebChannelVTable, self: ptr cQQmlWebChannel) {.cdecl, raises:[], gcsafe.}
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
proc fcQQmlWebChannel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlWebChannel_virtualbase_metaObject".}
proc fcQQmlWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlWebChannel_virtualbase_metacast".}
proc fcQQmlWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlWebChannel_virtualbase_metacall".}
proc fcQQmlWebChannel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlWebChannel_virtualbase_event".}
proc fcQQmlWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlWebChannel_virtualbase_eventFilter".}
proc fcQQmlWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlWebChannel_virtualbase_timerEvent".}
proc fcQQmlWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlWebChannel_virtualbase_childEvent".}
proc fcQQmlWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlWebChannel_virtualbase_customEvent".}
proc fcQQmlWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlWebChannel_virtualbase_connectNotify".}
proc fcQQmlWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlWebChannel_virtualbase_disconnectNotify".}
proc fcQQmlWebChannel_new(vtbl: pointer, ): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new".}
proc fcQQmlWebChannel_new2(vtbl: pointer, parent: pointer): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new2".}
proc fcQQmlWebChannel_staticMetaObject(): pointer {.importc: "QQmlWebChannel_staticMetaObject".}
proc fcQQmlWebChannel_delete(self: pointer) {.importc: "QQmlWebChannel_delete".}

proc metaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_metaObject(self.h))

proc metacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cstring): pointer =
  fcQQmlWebChannel_metacast(self.h, param1)

proc metacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring): string =
  let v_ms = fcQQmlWebChannel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring): string =
  let v_ms = fcQQmlWebChannel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: gen_qqmlwebchannel_types.QQmlWebChannel, objects: Table[string,gen_qvariant_types.QVariant]): void =
  var objects_Keys_CArray = newSeq[struct_miqt_string](len(objects))
  var objects_Values_CArray = newSeq[pointer](len(objects))
  var objects_ctr = 0
  for objectsk, objectsv in objects:
    objects_Keys_CArray[objects_ctr] = struct_miqt_string(data: objects_k, len: csize_t(len(objects_k)))
    objects_Values_CArray[objects_ctr] = objects_v.h
    objects_ctr += 1

  fcQQmlWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc connectTo*(self: gen_qqmlwebchannel_types.QQmlWebChannel, transport: gen_qobject_types.QObject): void =
  fcQQmlWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: gen_qqmlwebchannel_types.QQmlWebChannel, transport: gen_qobject_types.QObject): void =
  fcQQmlWebChannel_disconnectFrom(self.h, transport.h)

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQQmlWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQQmlWebChannel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlWebChannel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QQmlWebChannelVTable* = object
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
proc QQmlWebChannelmetaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlWebChannel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlWebChannelmetacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cstring): pointer =
  fcQQmlWebChannel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlWebChannel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlWebChannelmetacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlWebChannel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlWebChannelevent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlWebChannel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlWebChannel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlWebChanneleventFilter*(self: gen_qqmlwebchannel_types.QQmlWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlWebChannel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlWebChanneltimerEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlWebChannel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlWebChannel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlWebChannelchildEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlWebChannel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlWebChannel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlWebChannelcustomEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlWebChannel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlWebChannel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlWebChannelconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlWebChannel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlWebChannel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlWebChanneldisconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlWebChannel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlWebChannelVTable](vtbl)
  let self = QQmlWebChannel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel,
    vtbl: ref QQmlWebChannelVTable = nil): gen_qqmlwebchannel_types.QQmlWebChannel =
  let vtbl = if vtbl == nil: new QQmlWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlWebChannelVTable, _: ptr cQQmlWebChannel) {.cdecl.} =
    let vtbl = cast[ref QQmlWebChannelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlWebChannel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlWebChannel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlWebChannel_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlWebChannel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlWebChannel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlWebChannel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlWebChannel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlWebChannel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlWebChannel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlWebChannel_disconnectNotify
  gen_qqmlwebchannel_types.QQmlWebChannel(h: fcQQmlWebChannel_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlWebChannelVTable = nil): gen_qqmlwebchannel_types.QQmlWebChannel =
  let vtbl = if vtbl == nil: new QQmlWebChannelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlWebChannelVTable, _: ptr cQQmlWebChannel) {.cdecl.} =
    let vtbl = cast[ref QQmlWebChannelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlWebChannel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlWebChannel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlWebChannel_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlWebChannel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlWebChannel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlWebChannel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlWebChannel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlWebChannel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlWebChannel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlWebChannel_disconnectNotify
  gen_qqmlwebchannel_types.QQmlWebChannel(h: fcQQmlWebChannel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qqmlwebchannel_types.QQmlWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_staticMetaObject())
proc delete*(self: gen_qqmlwebchannel_types.QQmlWebChannel) =
  fcQQmlWebChannel_delete(self.h)
