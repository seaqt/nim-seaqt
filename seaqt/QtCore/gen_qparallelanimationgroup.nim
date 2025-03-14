import ./qtcore_pkg

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


{.compile("gen_qparallelanimationgroup.cpp", QtCoreCFlags).}


import ./gen_qparallelanimationgroup_types
export gen_qparallelanimationgroup_types

import
  ./gen_qanimationgroup,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qanimationgroup,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQParallelAnimationGroup*{.exportc: "QParallelAnimationGroup", incompleteStruct.} = object

proc fcQParallelAnimationGroup_metaObject(self: pointer): pointer {.importc: "QParallelAnimationGroup_metaObject".}
proc fcQParallelAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QParallelAnimationGroup_metacast".}
proc fcQParallelAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QParallelAnimationGroup_metacall".}
proc fcQParallelAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr".}
proc fcQParallelAnimationGroup_duration(self: pointer): cint {.importc: "QParallelAnimationGroup_duration".}
proc fcQParallelAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr2".}
proc fcQParallelAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_tr3".}
proc fcQParallelAnimationGroup_vtbl(self: pointer): pointer {.importc: "QParallelAnimationGroup_vtbl".}
proc fcQParallelAnimationGroup_vdata(self: pointer): pointer {.importc: "QParallelAnimationGroup_vdata".}
type cQParallelAnimationGroupVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(self: pointer, currentTime: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQParallelAnimationGroup_virtualbase_metaObject(self: pointer): pointer {.importc: "QParallelAnimationGroup_virtualbase_metaObject".}
proc fcQParallelAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QParallelAnimationGroup_virtualbase_metacast".}
proc fcQParallelAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QParallelAnimationGroup_virtualbase_metacall".}
proc fcQParallelAnimationGroup_virtualbase_duration(self: pointer): cint {.importc: "QParallelAnimationGroup_virtualbase_duration".}
proc fcQParallelAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QParallelAnimationGroup_virtualbase_event".}
proc fcQParallelAnimationGroup_virtualbase_updateCurrentTime(self: pointer, currentTime: cint): void {.importc: "QParallelAnimationGroup_virtualbase_updateCurrentTime".}
proc fcQParallelAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QParallelAnimationGroup_virtualbase_updateState".}
proc fcQParallelAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QParallelAnimationGroup_virtualbase_updateDirection".}
proc fcQParallelAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QParallelAnimationGroup_virtualbase_eventFilter".}
proc fcQParallelAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QParallelAnimationGroup_virtualbase_timerEvent".}
proc fcQParallelAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QParallelAnimationGroup_virtualbase_childEvent".}
proc fcQParallelAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QParallelAnimationGroup_virtualbase_customEvent".}
proc fcQParallelAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QParallelAnimationGroup_virtualbase_connectNotify".}
proc fcQParallelAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QParallelAnimationGroup_virtualbase_disconnectNotify".}
proc fcQParallelAnimationGroup_protectedbase_sender(self: pointer): pointer {.importc: "QParallelAnimationGroup_protectedbase_sender".}
proc fcQParallelAnimationGroup_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QParallelAnimationGroup_protectedbase_senderSignalIndex".}
proc fcQParallelAnimationGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QParallelAnimationGroup_protectedbase_receivers".}
proc fcQParallelAnimationGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QParallelAnimationGroup_protectedbase_isSignalConnected".}
proc fcQParallelAnimationGroup_new(vtbl, vdata: pointer): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new".}
proc fcQParallelAnimationGroup_new2(vtbl, vdata: pointer, parent: pointer): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new2".}
proc fcQParallelAnimationGroup_staticMetaObject(): pointer {.importc: "QParallelAnimationGroup_staticMetaObject".}

proc metaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQParallelAnimationGroup_metaObject(self.h), owned: false)

proc metacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cstring): pointer =
  fcQParallelAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQParallelAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring): string =
  let v_ms = fcQParallelAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup): cint =
  fcQParallelAnimationGroup_duration(self.h)

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQParallelAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQParallelAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QParallelAnimationGroupmetaObjectProc* = proc(self: QParallelAnimationGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QParallelAnimationGroupmetacastProc* = proc(self: QParallelAnimationGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QParallelAnimationGroupmetacallProc* = proc(self: QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QParallelAnimationGroupdurationProc* = proc(self: QParallelAnimationGroup): cint {.raises: [], gcsafe.}
type QParallelAnimationGroupeventProc* = proc(self: QParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QParallelAnimationGroupupdateCurrentTimeProc* = proc(self: QParallelAnimationGroup, currentTime: cint): void {.raises: [], gcsafe.}
type QParallelAnimationGroupupdateStateProc* = proc(self: QParallelAnimationGroup, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QParallelAnimationGroupupdateDirectionProc* = proc(self: QParallelAnimationGroup, direction: cint): void {.raises: [], gcsafe.}
type QParallelAnimationGroupeventFilterProc* = proc(self: QParallelAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QParallelAnimationGrouptimerEventProc* = proc(self: QParallelAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QParallelAnimationGroupchildEventProc* = proc(self: QParallelAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QParallelAnimationGroupcustomEventProc* = proc(self: QParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QParallelAnimationGroupconnectNotifyProc* = proc(self: QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QParallelAnimationGroupdisconnectNotifyProc* = proc(self: QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QParallelAnimationGroupVTable* {.inheritable, pure.} = object
  vtbl: cQParallelAnimationGroupVTable
  metaObject*: QParallelAnimationGroupmetaObjectProc
  metacast*: QParallelAnimationGroupmetacastProc
  metacall*: QParallelAnimationGroupmetacallProc
  duration*: QParallelAnimationGroupdurationProc
  event*: QParallelAnimationGroupeventProc
  updateCurrentTime*: QParallelAnimationGroupupdateCurrentTimeProc
  updateState*: QParallelAnimationGroupupdateStateProc
  updateDirection*: QParallelAnimationGroupupdateDirectionProc
  eventFilter*: QParallelAnimationGroupeventFilterProc
  timerEvent*: QParallelAnimationGrouptimerEventProc
  childEvent*: QParallelAnimationGroupchildEventProc
  customEvent*: QParallelAnimationGroupcustomEventProc
  connectNotify*: QParallelAnimationGroupconnectNotifyProc
  disconnectNotify*: QParallelAnimationGroupdisconnectNotifyProc
proc QParallelAnimationGroupmetaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQParallelAnimationGroup_virtualbase_metaObject(self.h), owned: false)

proc cQParallelAnimationGroup_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QParallelAnimationGroupmetacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cstring): pointer =
  fcQParallelAnimationGroup_virtualbase_metacast(self.h, param1)

proc cQParallelAnimationGroup_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QParallelAnimationGroupmetacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQParallelAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQParallelAnimationGroup_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QParallelAnimationGroupduration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup): cint =
  fcQParallelAnimationGroup_virtualbase_duration(self.h)

proc cQParallelAnimationGroup_vtable_callback_duration(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QParallelAnimationGroupevent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQParallelAnimationGroup_virtualbase_event(self.h, event.h)

proc cQParallelAnimationGroup_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QParallelAnimationGroupupdateCurrentTime*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, currentTime: cint): void =
  fcQParallelAnimationGroup_virtualbase_updateCurrentTime(self.h, currentTime)

proc cQParallelAnimationGroup_vtable_callback_updateCurrentTime(self: pointer, currentTime: cint): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = currentTime
  vtbl[].updateCurrentTime(self, slotval1)

proc QParallelAnimationGroupupdateState*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, newState: cint, oldState: cint): void =
  fcQParallelAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc cQParallelAnimationGroup_vtable_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QParallelAnimationGroupupdateDirection*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, direction: cint): void =
  fcQParallelAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

proc cQParallelAnimationGroup_vtable_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QParallelAnimationGroupeventFilter*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQParallelAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQParallelAnimationGroup_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QParallelAnimationGrouptimerEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQParallelAnimationGroup_virtualbase_timerEvent(self.h, event.h)

proc cQParallelAnimationGroup_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QParallelAnimationGroupchildEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQParallelAnimationGroup_virtualbase_childEvent(self.h, event.h)

proc cQParallelAnimationGroup_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QParallelAnimationGroupcustomEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQParallelAnimationGroup_virtualbase_customEvent(self.h, event.h)

proc cQParallelAnimationGroup_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QParallelAnimationGroupconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQParallelAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

proc cQParallelAnimationGroup_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QParallelAnimationGroupdisconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQParallelAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc cQParallelAnimationGroup_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQParallelAnimationGroup* {.inheritable.} = ref object of QParallelAnimationGroup
  vtbl*: cQParallelAnimationGroupVTable
method metaObject*(self: VirtualQParallelAnimationGroup): gen_qobjectdefs_types.QMetaObject {.base.} =
  QParallelAnimationGroupmetaObject(self[])
proc cQParallelAnimationGroup_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQParallelAnimationGroup, param1: cstring): pointer {.base.} =
  QParallelAnimationGroupmetacast(self[], param1)
proc cQParallelAnimationGroup_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QParallelAnimationGroupmetacall(self[], param1, param2, param3)
proc cQParallelAnimationGroup_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method duration*(self: VirtualQParallelAnimationGroup): cint {.base.} =
  QParallelAnimationGroupduration(self[])
proc cQParallelAnimationGroup_method_callback_duration(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  var virtualReturn = inst.duration()
  virtualReturn

method event*(self: VirtualQParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QParallelAnimationGroupevent(self[], event)
proc cQParallelAnimationGroup_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method updateCurrentTime*(self: VirtualQParallelAnimationGroup, currentTime: cint): void {.base.} =
  QParallelAnimationGroupupdateCurrentTime(self[], currentTime)
proc cQParallelAnimationGroup_method_callback_updateCurrentTime(self: pointer, currentTime: cint): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = currentTime
  inst.updateCurrentTime(slotval1)

method updateState*(self: VirtualQParallelAnimationGroup, newState: cint, oldState: cint): void {.base.} =
  QParallelAnimationGroupupdateState(self[], newState, oldState)
proc cQParallelAnimationGroup_method_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  inst.updateState(slotval1, slotval2)

method updateDirection*(self: VirtualQParallelAnimationGroup, direction: cint): void {.base.} =
  QParallelAnimationGroupupdateDirection(self[], direction)
proc cQParallelAnimationGroup_method_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = cint(direction)
  inst.updateDirection(slotval1)

method eventFilter*(self: VirtualQParallelAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QParallelAnimationGroupeventFilter(self[], watched, event)
proc cQParallelAnimationGroup_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQParallelAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QParallelAnimationGrouptimerEvent(self[], event)
proc cQParallelAnimationGroup_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQParallelAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QParallelAnimationGroupchildEvent(self[], event)
proc cQParallelAnimationGroup_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QParallelAnimationGroupcustomEvent(self[], event)
proc cQParallelAnimationGroup_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QParallelAnimationGroupconnectNotify(self[], signal)
proc cQParallelAnimationGroup_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QParallelAnimationGroupdisconnectNotify(self[], signal)
proc cQParallelAnimationGroup_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQParallelAnimationGroup](fcQParallelAnimationGroup_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQParallelAnimationGroup_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup): cint =
  fcQParallelAnimationGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: cstring): cint =
  fcQParallelAnimationGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQParallelAnimationGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup,
    vtbl: ref QParallelAnimationGroupVTable = nil): gen_qparallelanimationgroup_types.QParallelAnimationGroup =
  let vtbl = if vtbl == nil: new QParallelAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQParallelAnimationGroup_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQParallelAnimationGroup_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQParallelAnimationGroup_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQParallelAnimationGroup_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQParallelAnimationGroup_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQParallelAnimationGroup_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQParallelAnimationGroup_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQParallelAnimationGroup_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQParallelAnimationGroup_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQParallelAnimationGroup_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQParallelAnimationGroup_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQParallelAnimationGroup_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQParallelAnimationGroup_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQParallelAnimationGroup_vtable_callback_disconnectNotify
  gen_qparallelanimationgroup_types.QParallelAnimationGroup(h: fcQParallelAnimationGroup_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QParallelAnimationGroupVTable = nil): gen_qparallelanimationgroup_types.QParallelAnimationGroup =
  let vtbl = if vtbl == nil: new QParallelAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QParallelAnimationGroupVTable](fcQParallelAnimationGroup_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQParallelAnimationGroup_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQParallelAnimationGroup_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQParallelAnimationGroup_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQParallelAnimationGroup_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQParallelAnimationGroup_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQParallelAnimationGroup_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQParallelAnimationGroup_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQParallelAnimationGroup_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQParallelAnimationGroup_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQParallelAnimationGroup_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQParallelAnimationGroup_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQParallelAnimationGroup_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQParallelAnimationGroup_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQParallelAnimationGroup_vtable_callback_disconnectNotify
  gen_qparallelanimationgroup_types.QParallelAnimationGroup(h: fcQParallelAnimationGroup_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQParallelAnimationGroup_mvtbl = cQParallelAnimationGroupVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQParallelAnimationGroup()[])](self.fcQParallelAnimationGroup_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQParallelAnimationGroup_method_callback_metaObject,
  metacast: cQParallelAnimationGroup_method_callback_metacast,
  metacall: cQParallelAnimationGroup_method_callback_metacall,
  duration: cQParallelAnimationGroup_method_callback_duration,
  event: cQParallelAnimationGroup_method_callback_event,
  updateCurrentTime: cQParallelAnimationGroup_method_callback_updateCurrentTime,
  updateState: cQParallelAnimationGroup_method_callback_updateState,
  updateDirection: cQParallelAnimationGroup_method_callback_updateDirection,
  eventFilter: cQParallelAnimationGroup_method_callback_eventFilter,
  timerEvent: cQParallelAnimationGroup_method_callback_timerEvent,
  childEvent: cQParallelAnimationGroup_method_callback_childEvent,
  customEvent: cQParallelAnimationGroup_method_callback_customEvent,
  connectNotify: cQParallelAnimationGroup_method_callback_connectNotify,
  disconnectNotify: cQParallelAnimationGroup_method_callback_disconnectNotify,
)
proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup,
    inst: VirtualQParallelAnimationGroup) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQParallelAnimationGroup_new(addr(cQParallelAnimationGroup_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup,
    parent: gen_qobject_types.QObject,
    inst: VirtualQParallelAnimationGroup) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQParallelAnimationGroup_new2(addr(cQParallelAnimationGroup_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQParallelAnimationGroup_staticMetaObject())
