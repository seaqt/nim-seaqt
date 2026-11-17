import ./qtcore_pkg

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


{.compile("gen_qchronotimer.cpp", QtCoreCFlags).}


import ./gen_qchronotimer_types
export gen_qchronotimer_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQChronoTimer*{.exportc: "QChronoTimer", incompleteStruct.} = object

proc fcQChronoTimer_metaObject(self: pointer): pointer {.importc: "QChronoTimer_metaObject".}
proc fcQChronoTimer_metacast(self: pointer, param1: cstring): pointer {.importc: "QChronoTimer_metacast".}
proc fcQChronoTimer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QChronoTimer_metacall".}
proc fcQChronoTimer_trS(s: cstring): struct_seaqt_string {.importc: "QChronoTimer_tr_s".}
proc fcQChronoTimer_isActive(self: pointer): bool {.importc: "QChronoTimer_isActive".}
proc fcQChronoTimer_id(self: pointer): cint {.importc: "QChronoTimer_id".}
proc fcQChronoTimer_setTimerType(self: pointer, atype: cint): void {.importc: "QChronoTimer_setTimerType".}
proc fcQChronoTimer_timerType(self: pointer): cint {.importc: "QChronoTimer_timerType".}
proc fcQChronoTimer_setSingleShot(self: pointer, singleShot: bool): void {.importc: "QChronoTimer_setSingleShot".}
proc fcQChronoTimer_isSingleShot(self: pointer): bool {.importc: "QChronoTimer_isSingleShot".}
proc fcQChronoTimer_start(self: pointer): void {.importc: "QChronoTimer_start".}
proc fcQChronoTimer_stop(self: pointer): void {.importc: "QChronoTimer_stop".}
proc fcQChronoTimer_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QChronoTimer_tr_s_c".}
proc fcQChronoTimer_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QChronoTimer_tr_s_c_n".}
proc fcQChronoTimer_connect_timeout(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QChronoTimer_connect_timeout".}
proc fcQChronoTimer_vdata(self: pointer): ptr pointer {.importc: "QChronoTimer_vdata".}
proc fvdata_cQChronoTimer(self: pointer): pointer {.importc: "vdata_QChronoTimer".}

type cQChronoTimerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQChronoTimer_virtualbase_metaObject(self: pointer): pointer {.importc: "QChronoTimer_virtualbase_metaObject".}
proc fcQChronoTimer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QChronoTimer_virtualbase_metacast".}
proc fcQChronoTimer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QChronoTimer_virtualbase_metacall".}
proc fcQChronoTimer_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QChronoTimer_virtualbase_timerEvent".}
proc fcQChronoTimer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QChronoTimer_virtualbase_event".}
proc fcQChronoTimer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QChronoTimer_virtualbase_eventFilter".}
proc fcQChronoTimer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QChronoTimer_virtualbase_childEvent".}
proc fcQChronoTimer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QChronoTimer_virtualbase_customEvent".}
proc fcQChronoTimer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QChronoTimer_virtualbase_connectNotify".}
proc fcQChronoTimer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QChronoTimer_virtualbase_disconnectNotify".}
proc fcQChronoTimer_protectedbase_sender(self: pointer): pointer {.importc: "QChronoTimer_protectedbase_sender".}
proc fcQChronoTimer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QChronoTimer_protectedbase_senderSignalIndex".}
proc fcQChronoTimer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QChronoTimer_protectedbase_receivers".}
proc fcQChronoTimer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QChronoTimer_protectedbase_isSignalConnected".}
proc fcQChronoTimer_new(vtbl: pointer, vdata: csize_t): ptr cQChronoTimer {.importc: "QChronoTimer_new".}
proc fcQChronoTimer_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQChronoTimer {.importc: "QChronoTimer_new_parent".}
proc fcQChronoTimer_staticMetaObject(): pointer {.importc: "QChronoTimer_staticMetaObject".}

proc metaObject*(self: gen_qchronotimer_types.QChronoTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQChronoTimer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qchronotimer_types.QChronoTimer, param1: cstring): pointer =
  fcQChronoTimer_metacast(self.h, param1)

proc metacall*(self: gen_qchronotimer_types.QChronoTimer, param1: cint, param2: cint, param3: pointer): cint =
  fcQChronoTimer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qchronotimer_types.QChronoTimer, s: cstring): string =
  let v_ms = fcQChronoTimer_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: gen_qchronotimer_types.QChronoTimer): bool =
  fcQChronoTimer_isActive(self.h)

proc id*(self: gen_qchronotimer_types.QChronoTimer): cint =
  cint(fcQChronoTimer_id(self.h))

proc setTimerType*(self: gen_qchronotimer_types.QChronoTimer, atype: cint): void =
  fcQChronoTimer_setTimerType(self.h, cint(atype))

proc timerType*(self: gen_qchronotimer_types.QChronoTimer): cint =
  cint(fcQChronoTimer_timerType(self.h))

proc setSingleShot*(self: gen_qchronotimer_types.QChronoTimer, singleShot: bool): void =
  fcQChronoTimer_setSingleShot(self.h, singleShot)

proc isSingleShot*(self: gen_qchronotimer_types.QChronoTimer): bool =
  fcQChronoTimer_isSingleShot(self.h)

proc start*(self: gen_qchronotimer_types.QChronoTimer): void =
  fcQChronoTimer_start(self.h)

proc stop*(self: gen_qchronotimer_types.QChronoTimer): void =
  fcQChronoTimer_stop(self.h)

proc tr*(_: type gen_qchronotimer_types.QChronoTimer, s: cstring, c: cstring): string =
  let v_ms = fcQChronoTimer_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qchronotimer_types.QChronoTimer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQChronoTimer_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QChronoTimertimeoutSlot* = proc()
proc fcQChronoTimer_slot_callback_timeout(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QChronoTimertimeoutSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQChronoTimer_slot_callback_timeout_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QChronoTimertimeoutSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTimeout*(self: gen_qchronotimer_types.QChronoTimer, slot: QChronoTimertimeoutSlot) =
  var tmp = new QChronoTimertimeoutSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQChronoTimer_connect_timeout(self.h, cast[int](addr tmp[]), fcQChronoTimer_slot_callback_timeout, fcQChronoTimer_slot_callback_timeout_release)

type QChronoTimermetaObjectProc* = proc(self: QChronoTimer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QChronoTimermetacastProc* = proc(self: QChronoTimer, param1: cstring): pointer {.raises: [], gcsafe.}
type QChronoTimermetacallProc* = proc(self: QChronoTimer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QChronoTimertimerEventProc* = proc(self: QChronoTimer, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QChronoTimereventProc* = proc(self: QChronoTimer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QChronoTimereventFilterProc* = proc(self: QChronoTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QChronoTimerchildEventProc* = proc(self: QChronoTimer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QChronoTimercustomEventProc* = proc(self: QChronoTimer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QChronoTimerconnectNotifyProc* = proc(self: QChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QChronoTimerdisconnectNotifyProc* = proc(self: QChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QChronoTimerVTable* {.inheritable, pure.} = object
  vtbl: cQChronoTimerVTable
  metaObject*: QChronoTimermetaObjectProc
  metacast*: QChronoTimermetacastProc
  metacall*: QChronoTimermetacallProc
  timerEvent*: QChronoTimertimerEventProc
  event*: QChronoTimereventProc
  eventFilter*: QChronoTimereventFilterProc
  childEvent*: QChronoTimerchildEventProc
  customEvent*: QChronoTimercustomEventProc
  connectNotify*: QChronoTimerconnectNotifyProc
  disconnectNotify*: QChronoTimerdisconnectNotifyProc

proc QChronoTimermetaObject*(self: gen_qchronotimer_types.QChronoTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQChronoTimer_virtualbase_metaObject(self.h), owned: false)

proc QChronoTimermetacast*(self: gen_qchronotimer_types.QChronoTimer, param1: cstring): pointer =
  fcQChronoTimer_virtualbase_metacast(self.h, param1)

proc QChronoTimermetacall*(self: gen_qchronotimer_types.QChronoTimer, param1: cint, param2: cint, param3: pointer): cint =
  fcQChronoTimer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QChronoTimertimerEvent*(self: gen_qchronotimer_types.QChronoTimer, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQChronoTimer_virtualbase_timerEvent(self.h, param1.h)

proc QChronoTimerevent*(self: gen_qchronotimer_types.QChronoTimer, event: gen_qcoreevent_types.QEvent): bool =
  fcQChronoTimer_virtualbase_event(self.h, event.h)

proc QChronoTimereventFilter*(self: gen_qchronotimer_types.QChronoTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQChronoTimer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QChronoTimerchildEvent*(self: gen_qchronotimer_types.QChronoTimer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQChronoTimer_virtualbase_childEvent(self.h, event.h)

proc QChronoTimercustomEvent*(self: gen_qchronotimer_types.QChronoTimer, event: gen_qcoreevent_types.QEvent): void =
  fcQChronoTimer_virtualbase_customEvent(self.h, event.h)

proc QChronoTimerconnectNotify*(self: gen_qchronotimer_types.QChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQChronoTimer_virtualbase_connectNotify(self.h, signal.h)

proc QChronoTimerdisconnectNotify*(self: gen_qchronotimer_types.QChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQChronoTimer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQChronoTimer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQChronoTimer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQChronoTimer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQChronoTimer_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQChronoTimer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQChronoTimer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQChronoTimer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQChronoTimer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQChronoTimer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQChronoTimer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
  let self = QChronoTimer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQChronoTimer* {.inheritable.} = ref object of QChronoTimer
  vtbl*: cQChronoTimerVTable

method metaObject*(self: VirtualQChronoTimer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QChronoTimermetaObject(self[])
method metacast*(self: VirtualQChronoTimer, param1: cstring): pointer {.base.} =
  QChronoTimermetacast(self[], param1)
method metacall*(self: VirtualQChronoTimer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QChronoTimermetacall(self[], param1, param2, param3)
method timerEvent*(self: VirtualQChronoTimer, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QChronoTimertimerEvent(self[], param1)
method event*(self: VirtualQChronoTimer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QChronoTimerevent(self[], event)
method eventFilter*(self: VirtualQChronoTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QChronoTimereventFilter(self[], watched, event)
method childEvent*(self: VirtualQChronoTimer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QChronoTimerchildEvent(self[], event)
method customEvent*(self: VirtualQChronoTimer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QChronoTimercustomEvent(self[], event)
method connectNotify*(self: VirtualQChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QChronoTimerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QChronoTimerdisconnectNotify(self[], signal)

proc fcQChronoTimer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQChronoTimer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQChronoTimer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQChronoTimer_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQChronoTimer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQChronoTimer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQChronoTimer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQChronoTimer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQChronoTimer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQChronoTimer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQChronoTimer](fcQChronoTimer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qchronotimer_types.QChronoTimer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQChronoTimer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qchronotimer_types.QChronoTimer): cint =
  fcQChronoTimer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qchronotimer_types.QChronoTimer, signal: cstring): cint =
  fcQChronoTimer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qchronotimer_types.QChronoTimer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQChronoTimer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qchronotimer_types.QChronoTimer,
    vtbl: ref QChronoTimerVTable = nil): gen_qchronotimer_types.QChronoTimer =
  let vtbl = if vtbl == nil: new QChronoTimerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQChronoTimer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQChronoTimer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQChronoTimer_vtable_callback_metacall
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQChronoTimer_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQChronoTimer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQChronoTimer_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQChronoTimer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQChronoTimer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQChronoTimer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQChronoTimer_vtable_callback_disconnectNotify
  let tmp = gen_qchronotimer_types.QChronoTimer(h: fcQChronoTimer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQChronoTimer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qchronotimer_types.QChronoTimer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QChronoTimerVTable = nil): gen_qchronotimer_types.QChronoTimer =
  let vtbl = if vtbl == nil: new QChronoTimerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QChronoTimerVTable](fcQChronoTimer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQChronoTimer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQChronoTimer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQChronoTimer_vtable_callback_metacall
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQChronoTimer_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQChronoTimer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQChronoTimer_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQChronoTimer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQChronoTimer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQChronoTimer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQChronoTimer_vtable_callback_disconnectNotify
  let tmp = gen_qchronotimer_types.QChronoTimer(h: fcQChronoTimer_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQChronoTimer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQChronoTimer_mvtbl = cQChronoTimerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQChronoTimer()[])](self.fcQChronoTimer_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQChronoTimer_method_callback_metaObject,
  metacast: fcQChronoTimer_method_callback_metacast,
  metacall: fcQChronoTimer_method_callback_metacall,
  timerEvent: fcQChronoTimer_method_callback_timerEvent,
  event: fcQChronoTimer_method_callback_event,
  eventFilter: fcQChronoTimer_method_callback_eventFilter,
  childEvent: fcQChronoTimer_method_callback_childEvent,
  customEvent: fcQChronoTimer_method_callback_customEvent,
  connectNotify: fcQChronoTimer_method_callback_connectNotify,
  disconnectNotify: fcQChronoTimer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qchronotimer_types.QChronoTimer,
    inst: VirtualQChronoTimer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQChronoTimer_new(addr(cQChronoTimer_mvtbl), csize_t(sizeof(pointer)))
  fcQChronoTimer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qchronotimer_types.QChronoTimer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQChronoTimer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQChronoTimer_new2(addr(cQChronoTimer_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQChronoTimer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qchronotimer_types.QChronoTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQChronoTimer_staticMetaObject())
