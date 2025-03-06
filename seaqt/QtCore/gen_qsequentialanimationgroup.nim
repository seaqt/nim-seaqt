import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qsequentialanimationgroup.cpp", cflags).}


import ./gen_qsequentialanimationgroup_types
export gen_qsequentialanimationgroup_types

import
  ./gen_qabstractanimation_types,
  ./gen_qanimationgroup,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qpauseanimation_types
export
  gen_qabstractanimation_types,
  gen_qanimationgroup,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpauseanimation_types

type cQSequentialAnimationGroup*{.exportc: "QSequentialAnimationGroup", incompleteStruct.} = object

proc fcQSequentialAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_metaObject".}
proc fcQSequentialAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QSequentialAnimationGroup_metacast".}
proc fcQSequentialAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSequentialAnimationGroup_metacall".}
proc fcQSequentialAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr".}
proc fcQSequentialAnimationGroup_addPause(self: pointer, msecs: cint): pointer {.importc: "QSequentialAnimationGroup_addPause".}
proc fcQSequentialAnimationGroup_insertPause(self: pointer, index: cint, msecs: cint): pointer {.importc: "QSequentialAnimationGroup_insertPause".}
proc fcQSequentialAnimationGroup_currentAnimation(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_currentAnimation".}
proc fcQSequentialAnimationGroup_duration(self: pointer, ): cint {.importc: "QSequentialAnimationGroup_duration".}
proc fcQSequentialAnimationGroup_currentAnimationChanged(self: pointer, current: pointer): void {.importc: "QSequentialAnimationGroup_currentAnimationChanged".}
proc fcQSequentialAnimationGroup_connect_currentAnimationChanged(self: pointer, slot: int, callback: proc (slot: int, current: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSequentialAnimationGroup_connect_currentAnimationChanged".}
proc fcQSequentialAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr2".}
proc fcQSequentialAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr3".}
type cQSequentialAnimationGroupVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSequentialAnimationGroupVTable, self: ptr cQSequentialAnimationGroup) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(vtbl, self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSequentialAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_virtualbase_metaObject".}
proc fcQSequentialAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSequentialAnimationGroup_virtualbase_metacast".}
proc fcQSequentialAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSequentialAnimationGroup_virtualbase_metacall".}
proc fcQSequentialAnimationGroup_virtualbase_duration(self: pointer, ): cint {.importc: "QSequentialAnimationGroup_virtualbase_duration".}
proc fcQSequentialAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSequentialAnimationGroup_virtualbase_event".}
proc fcQSequentialAnimationGroup_virtualbase_updateCurrentTime(self: pointer, param1: cint): void {.importc: "QSequentialAnimationGroup_virtualbase_updateCurrentTime".}
proc fcQSequentialAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QSequentialAnimationGroup_virtualbase_updateState".}
proc fcQSequentialAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QSequentialAnimationGroup_virtualbase_updateDirection".}
proc fcQSequentialAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSequentialAnimationGroup_virtualbase_eventFilter".}
proc fcQSequentialAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSequentialAnimationGroup_virtualbase_timerEvent".}
proc fcQSequentialAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSequentialAnimationGroup_virtualbase_childEvent".}
proc fcQSequentialAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSequentialAnimationGroup_virtualbase_customEvent".}
proc fcQSequentialAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSequentialAnimationGroup_virtualbase_connectNotify".}
proc fcQSequentialAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSequentialAnimationGroup_virtualbase_disconnectNotify".}
proc fcQSequentialAnimationGroup_protectedbase_sender(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_protectedbase_sender".}
proc fcQSequentialAnimationGroup_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSequentialAnimationGroup_protectedbase_senderSignalIndex".}
proc fcQSequentialAnimationGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSequentialAnimationGroup_protectedbase_receivers".}
proc fcQSequentialAnimationGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSequentialAnimationGroup_protectedbase_isSignalConnected".}
proc fcQSequentialAnimationGroup_new(vtbl: pointer, ): ptr cQSequentialAnimationGroup {.importc: "QSequentialAnimationGroup_new".}
proc fcQSequentialAnimationGroup_new2(vtbl: pointer, parent: pointer): ptr cQSequentialAnimationGroup {.importc: "QSequentialAnimationGroup_new2".}
proc fcQSequentialAnimationGroup_staticMetaObject(): pointer {.importc: "QSequentialAnimationGroup_staticMetaObject".}

proc metaObject*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSequentialAnimationGroup_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cstring): pointer =
  fcQSequentialAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQSequentialAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring): string =
  let v_ms = fcQSequentialAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPause*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, msecs: cint): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation(h: fcQSequentialAnimationGroup_addPause(self.h, msecs), owned: false)

proc insertPause*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, index: cint, msecs: cint): gen_qpauseanimation_types.QPauseAnimation =
  gen_qpauseanimation_types.QPauseAnimation(h: fcQSequentialAnimationGroup_insertPause(self.h, index, msecs), owned: false)

proc currentAnimation*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQSequentialAnimationGroup_currentAnimation(self.h), owned: false)

proc duration*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): cint =
  fcQSequentialAnimationGroup_duration(self.h)

proc currentAnimationChanged*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, current: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQSequentialAnimationGroup_currentAnimationChanged(self.h, current.h)

type QSequentialAnimationGroupcurrentAnimationChangedSlot* = proc(current: gen_qabstractanimation_types.QAbstractAnimation)
proc miqt_exec_callback_cQSequentialAnimationGroup_currentAnimationChanged(slot: int, current: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSequentialAnimationGroupcurrentAnimationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractanimation_types.QAbstractAnimation(h: current, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSequentialAnimationGroup_currentAnimationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSequentialAnimationGroupcurrentAnimationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentAnimationChanged*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, slot: QSequentialAnimationGroupcurrentAnimationChangedSlot) =
  var tmp = new QSequentialAnimationGroupcurrentAnimationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_connect_currentAnimationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSequentialAnimationGroup_currentAnimationChanged, miqt_exec_callback_cQSequentialAnimationGroup_currentAnimationChanged_release)

proc tr*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQSequentialAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSequentialAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSequentialAnimationGroupmetaObjectProc* = proc(self: QSequentialAnimationGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSequentialAnimationGroupmetacastProc* = proc(self: QSequentialAnimationGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QSequentialAnimationGroupmetacallProc* = proc(self: QSequentialAnimationGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSequentialAnimationGroupdurationProc* = proc(self: QSequentialAnimationGroup): cint {.raises: [], gcsafe.}
type QSequentialAnimationGroupeventProc* = proc(self: QSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSequentialAnimationGroupupdateCurrentTimeProc* = proc(self: QSequentialAnimationGroup, param1: cint): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupupdateStateProc* = proc(self: QSequentialAnimationGroup, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupupdateDirectionProc* = proc(self: QSequentialAnimationGroup, direction: cint): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupeventFilterProc* = proc(self: QSequentialAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSequentialAnimationGrouptimerEventProc* = proc(self: QSequentialAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupchildEventProc* = proc(self: QSequentialAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupcustomEventProc* = proc(self: QSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupconnectNotifyProc* = proc(self: QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupdisconnectNotifyProc* = proc(self: QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSequentialAnimationGroupVTable* {.inheritable, pure.} = object
  vtbl: cQSequentialAnimationGroupVTable
  metaObject*: QSequentialAnimationGroupmetaObjectProc
  metacast*: QSequentialAnimationGroupmetacastProc
  metacall*: QSequentialAnimationGroupmetacallProc
  duration*: QSequentialAnimationGroupdurationProc
  event*: QSequentialAnimationGroupeventProc
  updateCurrentTime*: QSequentialAnimationGroupupdateCurrentTimeProc
  updateState*: QSequentialAnimationGroupupdateStateProc
  updateDirection*: QSequentialAnimationGroupupdateDirectionProc
  eventFilter*: QSequentialAnimationGroupeventFilterProc
  timerEvent*: QSequentialAnimationGrouptimerEventProc
  childEvent*: QSequentialAnimationGroupchildEventProc
  customEvent*: QSequentialAnimationGroupcustomEventProc
  connectNotify*: QSequentialAnimationGroupconnectNotifyProc
  disconnectNotify*: QSequentialAnimationGroupdisconnectNotifyProc
proc QSequentialAnimationGroupmetaObject*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSequentialAnimationGroup_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQSequentialAnimationGroup_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSequentialAnimationGroupmetacast*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cstring): pointer =
  fcQSequentialAnimationGroup_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSequentialAnimationGroup_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSequentialAnimationGroupmetacall*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQSequentialAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSequentialAnimationGroup_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSequentialAnimationGroupduration*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): cint =
  fcQSequentialAnimationGroup_virtualbase_duration(self.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_duration(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QSequentialAnimationGroupevent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQSequentialAnimationGroup_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSequentialAnimationGroupupdateCurrentTime*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, param1: cint): void =
  fcQSequentialAnimationGroup_virtualbase_updateCurrentTime(self.h, param1)

proc miqt_exec_callback_cQSequentialAnimationGroup_updateCurrentTime(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = param1
  vtbl[].updateCurrentTime(self, slotval1)

proc QSequentialAnimationGroupupdateState*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, newState: cint, oldState: cint): void =
  fcQSequentialAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_cQSequentialAnimationGroup_updateState(vtbl: pointer, self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QSequentialAnimationGroupupdateDirection*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, direction: cint): void =
  fcQSequentialAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

proc miqt_exec_callback_cQSequentialAnimationGroup_updateDirection(vtbl: pointer, self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QSequentialAnimationGroupeventFilter*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSequentialAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSequentialAnimationGrouptimerEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSequentialAnimationGroup_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSequentialAnimationGroupchildEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSequentialAnimationGroup_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSequentialAnimationGroupcustomEvent*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQSequentialAnimationGroup_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSequentialAnimationGroupconnectNotify*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSequentialAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSequentialAnimationGroupdisconnectNotify*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSequentialAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSequentialAnimationGroup_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSequentialAnimationGroupVTable](vtbl)
  let self = QSequentialAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSequentialAnimationGroup* {.inheritable.} = ref object of QSequentialAnimationGroup
  vtbl*: cQSequentialAnimationGroupVTable
method metaObject*(self: VirtualQSequentialAnimationGroup, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSequentialAnimationGroupmetaObject(self[])
proc miqt_exec_method_cQSequentialAnimationGroup_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSequentialAnimationGroup, param1: cstring): pointer {.base.} =
  QSequentialAnimationGroupmetacast(self[], param1)
proc miqt_exec_method_cQSequentialAnimationGroup_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSequentialAnimationGroup, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSequentialAnimationGroupmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQSequentialAnimationGroup_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method duration*(self: VirtualQSequentialAnimationGroup, ): cint {.base.} =
  QSequentialAnimationGroupduration(self[])
proc miqt_exec_method_cQSequentialAnimationGroup_duration(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  var virtualReturn = vtbl.duration()
  virtualReturn

method event*(self: VirtualQSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSequentialAnimationGroupevent(self[], event)
proc miqt_exec_method_cQSequentialAnimationGroup_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method updateCurrentTime*(self: VirtualQSequentialAnimationGroup, param1: cint): void {.base.} =
  QSequentialAnimationGroupupdateCurrentTime(self[], param1)
proc miqt_exec_method_cQSequentialAnimationGroup_updateCurrentTime(vtbl: pointer, inst: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = param1
  vtbl.updateCurrentTime(slotval1)

method updateState*(self: VirtualQSequentialAnimationGroup, newState: cint, oldState: cint): void {.base.} =
  QSequentialAnimationGroupupdateState(self[], newState, oldState)
proc miqt_exec_method_cQSequentialAnimationGroup_updateState(vtbl: pointer, inst: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl.updateState(slotval1, slotval2)

method updateDirection*(self: VirtualQSequentialAnimationGroup, direction: cint): void {.base.} =
  QSequentialAnimationGroupupdateDirection(self[], direction)
proc miqt_exec_method_cQSequentialAnimationGroup_updateDirection(vtbl: pointer, inst: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = cint(direction)
  vtbl.updateDirection(slotval1)

method eventFilter*(self: VirtualQSequentialAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSequentialAnimationGroupeventFilter(self[], watched, event)
proc miqt_exec_method_cQSequentialAnimationGroup_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSequentialAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSequentialAnimationGrouptimerEvent(self[], event)
proc miqt_exec_method_cQSequentialAnimationGroup_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQSequentialAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSequentialAnimationGroupchildEvent(self[], event)
proc miqt_exec_method_cQSequentialAnimationGroup_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQSequentialAnimationGroup, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSequentialAnimationGroupcustomEvent(self[], event)
proc miqt_exec_method_cQSequentialAnimationGroup_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSequentialAnimationGroupconnectNotify(self[], signal)
proc miqt_exec_method_cQSequentialAnimationGroup_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSequentialAnimationGroupdisconnectNotify(self[], signal)
proc miqt_exec_method_cQSequentialAnimationGroup_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSequentialAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSequentialAnimationGroup_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, ): cint =
  fcQSequentialAnimationGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, signal: cstring): cint =
  fcQSequentialAnimationGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsequentialanimationgroup_types.QSequentialAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSequentialAnimationGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup,
    vtbl: ref QSequentialAnimationGroupVTable = nil): gen_qsequentialanimationgroup_types.QSequentialAnimationGroup =
  let vtbl = if vtbl == nil: new QSequentialAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSequentialAnimationGroupVTable, _: ptr cQSequentialAnimationGroup) {.cdecl.} =
    let vtbl = cast[ref QSequentialAnimationGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSequentialAnimationGroup_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSequentialAnimationGroup_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSequentialAnimationGroup_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQSequentialAnimationGroup_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSequentialAnimationGroup_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQSequentialAnimationGroup_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQSequentialAnimationGroup_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQSequentialAnimationGroup_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSequentialAnimationGroup_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSequentialAnimationGroup_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSequentialAnimationGroup_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSequentialAnimationGroup_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSequentialAnimationGroup_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSequentialAnimationGroup_disconnectNotify
  gen_qsequentialanimationgroup_types.QSequentialAnimationGroup(h: fcQSequentialAnimationGroup_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSequentialAnimationGroupVTable = nil): gen_qsequentialanimationgroup_types.QSequentialAnimationGroup =
  let vtbl = if vtbl == nil: new QSequentialAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSequentialAnimationGroupVTable, _: ptr cQSequentialAnimationGroup) {.cdecl.} =
    let vtbl = cast[ref QSequentialAnimationGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSequentialAnimationGroup_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSequentialAnimationGroup_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSequentialAnimationGroup_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQSequentialAnimationGroup_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSequentialAnimationGroup_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQSequentialAnimationGroup_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQSequentialAnimationGroup_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQSequentialAnimationGroup_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSequentialAnimationGroup_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSequentialAnimationGroup_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSequentialAnimationGroup_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSequentialAnimationGroup_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSequentialAnimationGroup_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSequentialAnimationGroup_disconnectNotify
  gen_qsequentialanimationgroup_types.QSequentialAnimationGroup(h: fcQSequentialAnimationGroup_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup,
    vtbl: VirtualQSequentialAnimationGroup) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSequentialAnimationGroupVTable, _: ptr cQSequentialAnimationGroup) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSequentialAnimationGroup()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSequentialAnimationGroup_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSequentialAnimationGroup_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSequentialAnimationGroup_metacall
  vtbl[].vtbl.duration = miqt_exec_method_cQSequentialAnimationGroup_duration
  vtbl[].vtbl.event = miqt_exec_method_cQSequentialAnimationGroup_event
  vtbl[].vtbl.updateCurrentTime = miqt_exec_method_cQSequentialAnimationGroup_updateCurrentTime
  vtbl[].vtbl.updateState = miqt_exec_method_cQSequentialAnimationGroup_updateState
  vtbl[].vtbl.updateDirection = miqt_exec_method_cQSequentialAnimationGroup_updateDirection
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSequentialAnimationGroup_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSequentialAnimationGroup_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSequentialAnimationGroup_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSequentialAnimationGroup_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSequentialAnimationGroup_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSequentialAnimationGroup_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSequentialAnimationGroup_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQSequentialAnimationGroup) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSequentialAnimationGroupVTable, _: ptr cQSequentialAnimationGroup) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSequentialAnimationGroup()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSequentialAnimationGroup, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSequentialAnimationGroup_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSequentialAnimationGroup_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSequentialAnimationGroup_metacall
  vtbl[].vtbl.duration = miqt_exec_method_cQSequentialAnimationGroup_duration
  vtbl[].vtbl.event = miqt_exec_method_cQSequentialAnimationGroup_event
  vtbl[].vtbl.updateCurrentTime = miqt_exec_method_cQSequentialAnimationGroup_updateCurrentTime
  vtbl[].vtbl.updateState = miqt_exec_method_cQSequentialAnimationGroup_updateState
  vtbl[].vtbl.updateDirection = miqt_exec_method_cQSequentialAnimationGroup_updateDirection
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSequentialAnimationGroup_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSequentialAnimationGroup_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSequentialAnimationGroup_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSequentialAnimationGroup_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSequentialAnimationGroup_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSequentialAnimationGroup_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSequentialAnimationGroup_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qsequentialanimationgroup_types.QSequentialAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSequentialAnimationGroup_staticMetaObject())
