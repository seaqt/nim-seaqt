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


type QRemoteObjectPendingCallErrorEnum* = distinct cint
template NoError*(_: type QRemoteObjectPendingCallErrorEnum): untyped = 0
template InvalidMessage*(_: type QRemoteObjectPendingCallErrorEnum): untyped = 1


import ./gen_qremoteobjectpendingcall_types
export gen_qremoteobjectpendingcall_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQRemoteObjectPendingCall*{.exportc: "QRemoteObjectPendingCall", incompleteStruct.} = object
type cQRemoteObjectPendingCallWatcher*{.exportc: "QRemoteObjectPendingCallWatcher", incompleteStruct.} = object

proc fcQRemoteObjectPendingCall_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QRemoteObjectPendingCall_operatorAssign".}
proc fcQRemoteObjectPendingCall_returnValue(self: pointer): pointer {.importc: "QRemoteObjectPendingCall_returnValue".}
proc fcQRemoteObjectPendingCall_error(self: pointer): cint {.importc: "QRemoteObjectPendingCall_error".}
proc fcQRemoteObjectPendingCall_isFinished(self: pointer): bool {.importc: "QRemoteObjectPendingCall_isFinished".}
proc fcQRemoteObjectPendingCall_waitForFinished(self: pointer): bool {.importc: "QRemoteObjectPendingCall_waitForFinished".}
proc fcQRemoteObjectPendingCall_fromCompletedCall(returnValue: pointer): pointer {.importc: "QRemoteObjectPendingCall_fromCompletedCall".}
proc fcQRemoteObjectPendingCall_waitForFinishedTimeout(self: pointer, timeout: cint): bool {.importc: "QRemoteObjectPendingCall_waitForFinished_timeout".}
proc fcQRemoteObjectPendingCall_new(): ptr cQRemoteObjectPendingCall {.importc: "QRemoteObjectPendingCall_new".}
proc fcQRemoteObjectPendingCall_new2(fromVal: pointer): ptr cQRemoteObjectPendingCall {.importc: "QRemoteObjectPendingCall_new_from".}
proc fcQRemoteObjectPendingCallWatcher_metaObject(self: pointer): pointer {.importc: "QRemoteObjectPendingCallWatcher_metaObject".}
proc fcQRemoteObjectPendingCallWatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectPendingCallWatcher_metacast".}
proc fcQRemoteObjectPendingCallWatcher_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectPendingCallWatcher_metacall".}
proc fcQRemoteObjectPendingCallWatcher_trS(s: cstring): struct_seaqt_string {.importc: "QRemoteObjectPendingCallWatcher_tr_s".}
proc fcQRemoteObjectPendingCallWatcher_isFinished(self: pointer): bool {.importc: "QRemoteObjectPendingCallWatcher_isFinished".}
proc fcQRemoteObjectPendingCallWatcher_waitForFinished(self: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_waitForFinished".}
proc fcQRemoteObjectPendingCallWatcher_finished(self: pointer, selfVal: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_finished".}
proc fcQRemoteObjectPendingCallWatcher_connect_finished(self: pointer, slot: int, callback: proc (slot: int, selfVal: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRemoteObjectPendingCallWatcher_connect_finished".}
proc fcQRemoteObjectPendingCallWatcher_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRemoteObjectPendingCallWatcher_tr_s_c".}
proc fcQRemoteObjectPendingCallWatcher_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRemoteObjectPendingCallWatcher_tr_s_c_n".}
proc fcQRemoteObjectPendingCallWatcher_vdata(self: pointer): ptr pointer {.importc: "QRemoteObjectPendingCallWatcher_vdata".}
proc fvdata_cQRemoteObjectPendingCallWatcher(self: pointer): pointer {.importc: "vdata_QRemoteObjectPendingCallWatcher".}

type cQRemoteObjectPendingCallWatcherVTable {.pure.} = object
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
proc fcQRemoteObjectPendingCallWatcher_virtualbase_metaObject(self: pointer): pointer {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_metaObject".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_metacast".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_metacall".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_event".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_eventFilter".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_timerEvent".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_childEvent".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_customEvent".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_connectNotify".}
proc fcQRemoteObjectPendingCallWatcher_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRemoteObjectPendingCallWatcher_virtualbase_disconnectNotify".}
proc fcQRemoteObjectPendingCallWatcher_protectedbase_sender(self: pointer): pointer {.importc: "QRemoteObjectPendingCallWatcher_protectedbase_sender".}
proc fcQRemoteObjectPendingCallWatcher_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRemoteObjectPendingCallWatcher_protectedbase_senderSignalIndex".}
proc fcQRemoteObjectPendingCallWatcher_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRemoteObjectPendingCallWatcher_protectedbase_receivers".}
proc fcQRemoteObjectPendingCallWatcher_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRemoteObjectPendingCallWatcher_protectedbase_isSignalConnected".}
proc fcQRemoteObjectPendingCallWatcher_new(vtbl: pointer, vdata: csize_t, call: pointer): ptr cQRemoteObjectPendingCallWatcher {.importc: "QRemoteObjectPendingCallWatcher_new_call".}
proc fcQRemoteObjectPendingCallWatcher_new2(vtbl: pointer, vdata: csize_t, call: pointer, parent: pointer): ptr cQRemoteObjectPendingCallWatcher {.importc: "QRemoteObjectPendingCallWatcher_new_call_parent".}
proc fcQRemoteObjectPendingCallWatcher_staticMetaObject(): pointer {.importc: "QRemoteObjectPendingCallWatcher_staticMetaObject".}

proc operatorAssign*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall, fromVal: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): void =
  fcQRemoteObjectPendingCall_operatorAssign(self.h, fromVal.h)

proc returnValue*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRemoteObjectPendingCall_returnValue(self.h), owned: true)

proc error*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): cint =
  cint(fcQRemoteObjectPendingCall_error(self.h))

proc isFinished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): bool =
  fcQRemoteObjectPendingCall_isFinished(self.h)

proc waitForFinished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): bool =
  fcQRemoteObjectPendingCall_waitForFinished(self.h)

proc fromCompletedCall*(_: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall, returnValue: gen_qvariant_types.QVariant): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall =
  gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall(h: fcQRemoteObjectPendingCall_fromCompletedCall(returnValue.h), owned: true)

proc waitForFinished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall, timeout: cint): bool =
  fcQRemoteObjectPendingCall_waitForFinishedTimeout(self.h, timeout)

proc create*(T: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall =
  let tmp = gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall(h: fcQRemoteObjectPendingCall_new(), owned: true)
  tmp
proc create*(T: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall,
    fromVal: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall =
  let tmp = gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall(h: fcQRemoteObjectPendingCall_new2(fromVal.h), owned: true)
  tmp
proc metaObject*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectPendingCallWatcher_metaObject(self.h), owned: false)

proc metacast*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, param1: cstring): pointer =
  fcQRemoteObjectPendingCallWatcher_metacast(self.h, param1)

proc metacall*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectPendingCallWatcher_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, s: cstring): string =
  let v_ms = fcQRemoteObjectPendingCallWatcher_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): bool =
  fcQRemoteObjectPendingCallWatcher_isFinished(self.h)

proc waitForFinished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): void =
  fcQRemoteObjectPendingCallWatcher_waitForFinished(self.h)

proc finished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, selfVal: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): void =
  fcQRemoteObjectPendingCallWatcher_finished(self.h, selfVal.h)

type QRemoteObjectPendingCallWatcherfinishedSlot* = proc(selfVal: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher)
proc fcQRemoteObjectPendingCallWatcher_slot_callback_finished(slot: int, selfVal: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QRemoteObjectPendingCallWatcherfinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher(h: selfVal, owned: false)

  nimfunc[](slotval1)

proc fcQRemoteObjectPendingCallWatcher_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRemoteObjectPendingCallWatcherfinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFinished*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, slot: QRemoteObjectPendingCallWatcherfinishedSlot) =
  var tmp = new QRemoteObjectPendingCallWatcherfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRemoteObjectPendingCallWatcher_connect_finished(self.h, cast[int](addr tmp[]), fcQRemoteObjectPendingCallWatcher_slot_callback_finished, fcQRemoteObjectPendingCallWatcher_slot_callback_finished_release)

proc tr*(_: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, s: cstring, c: cstring): string =
  let v_ms = fcQRemoteObjectPendingCallWatcher_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRemoteObjectPendingCallWatcher_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRemoteObjectPendingCallWatchermetaObjectProc* = proc(self: QRemoteObjectPendingCallWatcher): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatchermetacastProc* = proc(self: QRemoteObjectPendingCallWatcher, param1: cstring): pointer {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatchermetacallProc* = proc(self: QRemoteObjectPendingCallWatcher, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatchereventProc* = proc(self: QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatchereventFilterProc* = proc(self: QRemoteObjectPendingCallWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatchertimerEventProc* = proc(self: QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatcherchildEventProc* = proc(self: QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatchercustomEventProc* = proc(self: QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatcherconnectNotifyProc* = proc(self: QRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRemoteObjectPendingCallWatcherdisconnectNotifyProc* = proc(self: QRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRemoteObjectPendingCallWatcherVTable* {.inheritable, pure.} = object
  vtbl: cQRemoteObjectPendingCallWatcherVTable
  metaObject*: QRemoteObjectPendingCallWatchermetaObjectProc
  metacast*: QRemoteObjectPendingCallWatchermetacastProc
  metacall*: QRemoteObjectPendingCallWatchermetacallProc
  event*: QRemoteObjectPendingCallWatchereventProc
  eventFilter*: QRemoteObjectPendingCallWatchereventFilterProc
  timerEvent*: QRemoteObjectPendingCallWatchertimerEventProc
  childEvent*: QRemoteObjectPendingCallWatcherchildEventProc
  customEvent*: QRemoteObjectPendingCallWatchercustomEventProc
  connectNotify*: QRemoteObjectPendingCallWatcherconnectNotifyProc
  disconnectNotify*: QRemoteObjectPendingCallWatcherdisconnectNotifyProc

proc QRemoteObjectPendingCallWatchermetaObject*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectPendingCallWatcher_virtualbase_metaObject(self.h), owned: false)

proc QRemoteObjectPendingCallWatchermetacast*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, param1: cstring): pointer =
  fcQRemoteObjectPendingCallWatcher_virtualbase_metacast(self.h, param1)

proc QRemoteObjectPendingCallWatchermetacall*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQRemoteObjectPendingCallWatcher_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRemoteObjectPendingCallWatcherevent*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectPendingCallWatcher_virtualbase_event(self.h, event.h)

proc QRemoteObjectPendingCallWatchereventFilter*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRemoteObjectPendingCallWatcher_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRemoteObjectPendingCallWatchertimerEvent*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRemoteObjectPendingCallWatcher_virtualbase_timerEvent(self.h, event.h)

proc QRemoteObjectPendingCallWatcherchildEvent*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRemoteObjectPendingCallWatcher_virtualbase_childEvent(self.h, event.h)

proc QRemoteObjectPendingCallWatchercustomEvent*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QEvent): void =
  fcQRemoteObjectPendingCallWatcher_virtualbase_customEvent(self.h, event.h)

proc QRemoteObjectPendingCallWatcherconnectNotify*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectPendingCallWatcher_virtualbase_connectNotify(self.h, signal.h)

proc QRemoteObjectPendingCallWatcherdisconnectNotify*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRemoteObjectPendingCallWatcher_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRemoteObjectPendingCallWatcher_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRemoteObjectPendingCallWatcher_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let self = QRemoteObjectPendingCallWatcher(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRemoteObjectPendingCallWatcher* {.inheritable.} = ref object of QRemoteObjectPendingCallWatcher
  vtbl*: cQRemoteObjectPendingCallWatcherVTable

method metaObject*(self: VirtualQRemoteObjectPendingCallWatcher): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRemoteObjectPendingCallWatchermetaObject(self[])
method metacast*(self: VirtualQRemoteObjectPendingCallWatcher, param1: cstring): pointer {.base.} =
  QRemoteObjectPendingCallWatchermetacast(self[], param1)
method metacall*(self: VirtualQRemoteObjectPendingCallWatcher, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRemoteObjectPendingCallWatchermetacall(self[], param1, param2, param3)
method event*(self: VirtualQRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectPendingCallWatcherevent(self[], event)
method eventFilter*(self: VirtualQRemoteObjectPendingCallWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRemoteObjectPendingCallWatchereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRemoteObjectPendingCallWatchertimerEvent(self[], event)
method childEvent*(self: VirtualQRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRemoteObjectPendingCallWatcherchildEvent(self[], event)
method customEvent*(self: VirtualQRemoteObjectPendingCallWatcher, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRemoteObjectPendingCallWatchercustomEvent(self[], event)
method connectNotify*(self: VirtualQRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectPendingCallWatcherconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRemoteObjectPendingCallWatcherdisconnectNotify(self[], signal)

proc fcQRemoteObjectPendingCallWatcher_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRemoteObjectPendingCallWatcher_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRemoteObjectPendingCallWatcher_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRemoteObjectPendingCallWatcher_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRemoteObjectPendingCallWatcher_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRemoteObjectPendingCallWatcher_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRemoteObjectPendingCallWatcher_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRemoteObjectPendingCallWatcher](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRemoteObjectPendingCallWatcher_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): cint =
  fcQRemoteObjectPendingCallWatcher_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, signal: cstring): cint =
  fcQRemoteObjectPendingCallWatcher_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRemoteObjectPendingCallWatcher_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher,
    call: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall,
    vtbl: ref QRemoteObjectPendingCallWatcherVTable = nil): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher =
  let vtbl = if vtbl == nil: new QRemoteObjectPendingCallWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectPendingCallWatcher_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectPendingCallWatcher_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectPendingCallWatcher_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectPendingCallWatcher_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectPendingCallWatcher_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectPendingCallWatcher_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectPendingCallWatcher_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectPendingCallWatcher_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectPendingCallWatcher_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectPendingCallWatcher_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher(h: fcQRemoteObjectPendingCallWatcher_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), call.h), owned: true)
  fcQRemoteObjectPendingCallWatcher_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher,
    call: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall, parent: gen_qobject_types.QObject,
    vtbl: ref QRemoteObjectPendingCallWatcherVTable = nil): gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher =
  let vtbl = if vtbl == nil: new QRemoteObjectPendingCallWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRemoteObjectPendingCallWatcherVTable](fcQRemoteObjectPendingCallWatcher_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRemoteObjectPendingCallWatcher_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRemoteObjectPendingCallWatcher_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRemoteObjectPendingCallWatcher_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRemoteObjectPendingCallWatcher_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRemoteObjectPendingCallWatcher_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRemoteObjectPendingCallWatcher_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRemoteObjectPendingCallWatcher_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRemoteObjectPendingCallWatcher_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRemoteObjectPendingCallWatcher_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRemoteObjectPendingCallWatcher_vtable_callback_disconnectNotify
  let tmp = gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher(h: fcQRemoteObjectPendingCallWatcher_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), call.h, parent.h), owned: true)
  fcQRemoteObjectPendingCallWatcher_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRemoteObjectPendingCallWatcher_mvtbl = cQRemoteObjectPendingCallWatcherVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRemoteObjectPendingCallWatcher()[])](self.fcQRemoteObjectPendingCallWatcher_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRemoteObjectPendingCallWatcher_method_callback_metaObject,
  metacast: fcQRemoteObjectPendingCallWatcher_method_callback_metacast,
  metacall: fcQRemoteObjectPendingCallWatcher_method_callback_metacall,
  event: fcQRemoteObjectPendingCallWatcher_method_callback_event,
  eventFilter: fcQRemoteObjectPendingCallWatcher_method_callback_eventFilter,
  timerEvent: fcQRemoteObjectPendingCallWatcher_method_callback_timerEvent,
  childEvent: fcQRemoteObjectPendingCallWatcher_method_callback_childEvent,
  customEvent: fcQRemoteObjectPendingCallWatcher_method_callback_customEvent,
  connectNotify: fcQRemoteObjectPendingCallWatcher_method_callback_connectNotify,
  disconnectNotify: fcQRemoteObjectPendingCallWatcher_method_callback_disconnectNotify,
)
proc create*(T: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher,
    call: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall,
    inst: VirtualQRemoteObjectPendingCallWatcher) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectPendingCallWatcher_new(addr(cQRemoteObjectPendingCallWatcher_mvtbl), csize_t(sizeof(pointer)), call.h)
  fcQRemoteObjectPendingCallWatcher_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher,
    call: gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCall, parent: gen_qobject_types.QObject,
    inst: VirtualQRemoteObjectPendingCallWatcher) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRemoteObjectPendingCallWatcher_new2(addr(cQRemoteObjectPendingCallWatcher_mvtbl), csize_t(sizeof(pointer)), call.h, parent.h)
  fcQRemoteObjectPendingCallWatcher_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qremoteobjectpendingcall_types.QRemoteObjectPendingCallWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRemoteObjectPendingCallWatcher_staticMetaObject())
