import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qanimationgroup.cpp", cflags).}


import ./gen_qanimationgroup_types
export gen_qanimationgroup_types

import
  ./gen_qabstractanimation,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qabstractanimation,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQAnimationGroup*{.exportc: "QAnimationGroup", incompleteStruct.} = object

proc fcQAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QAnimationGroup_metaObject".}
proc fcQAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationGroup_metacast".}
proc fcQAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationGroup_metacall".}
proc fcQAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QAnimationGroup_tr".}
proc fcQAnimationGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QAnimationGroup_trUtf8".}
proc fcQAnimationGroup_animationAt(self: pointer, index: cint): pointer {.importc: "QAnimationGroup_animationAt".}
proc fcQAnimationGroup_animationCount(self: pointer, ): cint {.importc: "QAnimationGroup_animationCount".}
proc fcQAnimationGroup_indexOfAnimation(self: pointer, animation: pointer): cint {.importc: "QAnimationGroup_indexOfAnimation".}
proc fcQAnimationGroup_addAnimation(self: pointer, animation: pointer): void {.importc: "QAnimationGroup_addAnimation".}
proc fcQAnimationGroup_insertAnimation(self: pointer, index: cint, animation: pointer): void {.importc: "QAnimationGroup_insertAnimation".}
proc fcQAnimationGroup_removeAnimation(self: pointer, animation: pointer): void {.importc: "QAnimationGroup_removeAnimation".}
proc fcQAnimationGroup_takeAnimation(self: pointer, index: cint): pointer {.importc: "QAnimationGroup_takeAnimation".}
proc fcQAnimationGroup_clear(self: pointer, ): void {.importc: "QAnimationGroup_clear".}
proc fcQAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationGroup_tr2".}
proc fcQAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationGroup_tr3".}
proc fcQAnimationGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationGroup_trUtf82".}
proc fcQAnimationGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationGroup_trUtf83".}
type cQAnimationGroupVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQAnimationGroupVTable, self: ptr cQAnimationGroup) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  duration*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(vtbl, self: pointer, currentTime: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(vtbl, self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAnimationGroup_virtualbase_metaObject".}
proc fcQAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationGroup_virtualbase_metacast".}
proc fcQAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationGroup_virtualbase_metacall".}
proc fcQAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAnimationGroup_virtualbase_event".}
proc fcQAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QAnimationGroup_virtualbase_updateState".}
proc fcQAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QAnimationGroup_virtualbase_updateDirection".}
proc fcQAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAnimationGroup_virtualbase_eventFilter".}
proc fcQAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAnimationGroup_virtualbase_timerEvent".}
proc fcQAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAnimationGroup_virtualbase_childEvent".}
proc fcQAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAnimationGroup_virtualbase_customEvent".}
proc fcQAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAnimationGroup_virtualbase_connectNotify".}
proc fcQAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAnimationGroup_virtualbase_disconnectNotify".}
proc fcQAnimationGroup_protectedbase_sender(self: pointer, ): pointer {.importc: "QAnimationGroup_protectedbase_sender".}
proc fcQAnimationGroup_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAnimationGroup_protectedbase_senderSignalIndex".}
proc fcQAnimationGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAnimationGroup_protectedbase_receivers".}
proc fcQAnimationGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAnimationGroup_protectedbase_isSignalConnected".}
proc fcQAnimationGroup_new(vtbl: pointer, ): ptr cQAnimationGroup {.importc: "QAnimationGroup_new".}
proc fcQAnimationGroup_new2(vtbl: pointer, parent: pointer): ptr cQAnimationGroup {.importc: "QAnimationGroup_new2".}
proc fcQAnimationGroup_staticMetaObject(): pointer {.importc: "QAnimationGroup_staticMetaObject".}

proc metaObject*(self: gen_qanimationgroup_types.QAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationGroup_metaObject(self.h), owned: false)

proc metacast*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cstring): pointer =
  fcQAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring): string =
  let v_ms = fcQAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring): string =
  let v_ms = fcQAnimationGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc animationAt*(self: gen_qanimationgroup_types.QAnimationGroup, index: cint): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQAnimationGroup_animationAt(self.h, index), owned: false)

proc animationCount*(self: gen_qanimationgroup_types.QAnimationGroup, ): cint =
  fcQAnimationGroup_animationCount(self.h)

proc indexOfAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, animation: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAnimationGroup_indexOfAnimation(self.h, animation.h)

proc addAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAnimationGroup_addAnimation(self.h, animation.h)

proc insertAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, index: cint, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAnimationGroup_insertAnimation(self.h, index, animation.h)

proc removeAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAnimationGroup_removeAnimation(self.h, animation.h)

proc takeAnimation*(self: gen_qanimationgroup_types.QAnimationGroup, index: cint): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQAnimationGroup_takeAnimation(self.h, index), owned: false)

proc clear*(self: gen_qanimationgroup_types.QAnimationGroup, ): void =
  fcQAnimationGroup_clear(self.h)

proc tr*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQAnimationGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qanimationgroup_types.QAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAnimationGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAnimationGroupmetaObjectProc* = proc(self: QAnimationGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAnimationGroupmetacastProc* = proc(self: QAnimationGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QAnimationGroupmetacallProc* = proc(self: QAnimationGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAnimationGroupeventProc* = proc(self: QAnimationGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAnimationGroupdurationProc* = proc(self: QAnimationGroup): cint {.raises: [], gcsafe.}
type QAnimationGroupupdateCurrentTimeProc* = proc(self: QAnimationGroup, currentTime: cint): void {.raises: [], gcsafe.}
type QAnimationGroupupdateStateProc* = proc(self: QAnimationGroup, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QAnimationGroupupdateDirectionProc* = proc(self: QAnimationGroup, direction: cint): void {.raises: [], gcsafe.}
type QAnimationGroupeventFilterProc* = proc(self: QAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAnimationGrouptimerEventProc* = proc(self: QAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAnimationGroupchildEventProc* = proc(self: QAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAnimationGroupcustomEventProc* = proc(self: QAnimationGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAnimationGroupconnectNotifyProc* = proc(self: QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAnimationGroupdisconnectNotifyProc* = proc(self: QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAnimationGroupVTable* {.inheritable, pure.} = object
  vtbl: cQAnimationGroupVTable
  metaObject*: QAnimationGroupmetaObjectProc
  metacast*: QAnimationGroupmetacastProc
  metacall*: QAnimationGroupmetacallProc
  event*: QAnimationGroupeventProc
  duration*: QAnimationGroupdurationProc
  updateCurrentTime*: QAnimationGroupupdateCurrentTimeProc
  updateState*: QAnimationGroupupdateStateProc
  updateDirection*: QAnimationGroupupdateDirectionProc
  eventFilter*: QAnimationGroupeventFilterProc
  timerEvent*: QAnimationGrouptimerEventProc
  childEvent*: QAnimationGroupchildEventProc
  customEvent*: QAnimationGroupcustomEventProc
  connectNotify*: QAnimationGroupconnectNotifyProc
  disconnectNotify*: QAnimationGroupdisconnectNotifyProc
proc QAnimationGroupmetaObject*(self: gen_qanimationgroup_types.QAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationGroup_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQAnimationGroup_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAnimationGroupmetacast*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cstring): pointer =
  fcQAnimationGroup_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAnimationGroup_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAnimationGroupmetacall*(self: gen_qanimationgroup_types.QAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAnimationGroup_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAnimationGroupevent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQAnimationGroup_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAnimationGroup_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQAnimationGroup_duration(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc miqt_exec_callback_cQAnimationGroup_updateCurrentTime(vtbl: pointer, self: pointer, currentTime: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = currentTime
  vtbl[].updateCurrentTime(self, slotval1)

proc QAnimationGroupupdateState*(self: gen_qanimationgroup_types.QAnimationGroup, newState: cint, oldState: cint): void =
  fcQAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_cQAnimationGroup_updateState(vtbl: pointer, self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QAnimationGroupupdateDirection*(self: gen_qanimationgroup_types.QAnimationGroup, direction: cint): void =
  fcQAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

proc miqt_exec_callback_cQAnimationGroup_updateDirection(vtbl: pointer, self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QAnimationGroupeventFilter*(self: gen_qanimationgroup_types.QAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAnimationGroup_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAnimationGrouptimerEvent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAnimationGroup_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAnimationGroup_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAnimationGroupchildEvent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAnimationGroup_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAnimationGroup_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAnimationGroupcustomEvent*(self: gen_qanimationgroup_types.QAnimationGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQAnimationGroup_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAnimationGroup_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAnimationGroupconnectNotify*(self: gen_qanimationgroup_types.QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAnimationGroup_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAnimationGroupdisconnectNotify*(self: gen_qanimationgroup_types.QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAnimationGroup_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationGroupVTable](vtbl)
  let self = QAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAnimationGroup* {.inheritable.} = ref object of QAnimationGroup
  vtbl*: cQAnimationGroupVTable
method metaObject*(self: VirtualQAnimationGroup, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAnimationGroupmetaObject(self[])
proc miqt_exec_method_cQAnimationGroup_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAnimationGroup, param1: cstring): pointer {.base.} =
  QAnimationGroupmetacast(self[], param1)
proc miqt_exec_method_cQAnimationGroup_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAnimationGroup, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAnimationGroupmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQAnimationGroup_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQAnimationGroup, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAnimationGroupevent(self[], event)
proc miqt_exec_method_cQAnimationGroup_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method duration*(self: VirtualQAnimationGroup, ): cint {.base.} =
  raiseAssert("missing implementation of QAnimationGroup_virtualbase_duration")
proc miqt_exec_method_cQAnimationGroup_duration(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  var virtualReturn = vtbl.duration()
  virtualReturn

method updateCurrentTime*(self: VirtualQAnimationGroup, currentTime: cint): void {.base.} =
  raiseAssert("missing implementation of QAnimationGroup_virtualbase_updateCurrentTime")
proc miqt_exec_method_cQAnimationGroup_updateCurrentTime(vtbl: pointer, inst: pointer, currentTime: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = currentTime
  vtbl.updateCurrentTime(slotval1)

method updateState*(self: VirtualQAnimationGroup, newState: cint, oldState: cint): void {.base.} =
  QAnimationGroupupdateState(self[], newState, oldState)
proc miqt_exec_method_cQAnimationGroup_updateState(vtbl: pointer, inst: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl.updateState(slotval1, slotval2)

method updateDirection*(self: VirtualQAnimationGroup, direction: cint): void {.base.} =
  QAnimationGroupupdateDirection(self[], direction)
proc miqt_exec_method_cQAnimationGroup_updateDirection(vtbl: pointer, inst: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = cint(direction)
  vtbl.updateDirection(slotval1)

method eventFilter*(self: VirtualQAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAnimationGroupeventFilter(self[], watched, event)
proc miqt_exec_method_cQAnimationGroup_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAnimationGrouptimerEvent(self[], event)
proc miqt_exec_method_cQAnimationGroup_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAnimationGroupchildEvent(self[], event)
proc miqt_exec_method_cQAnimationGroup_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQAnimationGroup, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAnimationGroupcustomEvent(self[], event)
proc miqt_exec_method_cQAnimationGroup_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAnimationGroupconnectNotify(self[], signal)
proc miqt_exec_method_cQAnimationGroup_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAnimationGroupdisconnectNotify(self[], signal)
proc miqt_exec_method_cQAnimationGroup_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAnimationGroup](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qanimationgroup_types.QAnimationGroup, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAnimationGroup_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qanimationgroup_types.QAnimationGroup, ): cint =
  fcQAnimationGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qanimationgroup_types.QAnimationGroup, signal: cstring): cint =
  fcQAnimationGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qanimationgroup_types.QAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAnimationGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qanimationgroup_types.QAnimationGroup,
    vtbl: ref QAnimationGroupVTable = nil): gen_qanimationgroup_types.QAnimationGroup =
  let vtbl = if vtbl == nil: new QAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAnimationGroupVTable, _: ptr cQAnimationGroup) {.cdecl.} =
    let vtbl = cast[ref QAnimationGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAnimationGroup_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAnimationGroup_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAnimationGroup_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAnimationGroup_event
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQAnimationGroup_duration
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQAnimationGroup_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQAnimationGroup_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQAnimationGroup_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAnimationGroup_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAnimationGroup_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAnimationGroup_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAnimationGroup_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAnimationGroup_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAnimationGroup_disconnectNotify
  gen_qanimationgroup_types.QAnimationGroup(h: fcQAnimationGroup_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qanimationgroup_types.QAnimationGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAnimationGroupVTable = nil): gen_qanimationgroup_types.QAnimationGroup =
  let vtbl = if vtbl == nil: new QAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAnimationGroupVTable, _: ptr cQAnimationGroup) {.cdecl.} =
    let vtbl = cast[ref QAnimationGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAnimationGroup_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAnimationGroup_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAnimationGroup_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAnimationGroup_event
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQAnimationGroup_duration
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQAnimationGroup_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQAnimationGroup_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQAnimationGroup_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAnimationGroup_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAnimationGroup_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAnimationGroup_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAnimationGroup_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAnimationGroup_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAnimationGroup_disconnectNotify
  gen_qanimationgroup_types.QAnimationGroup(h: fcQAnimationGroup_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qanimationgroup_types.QAnimationGroup,
    vtbl: VirtualQAnimationGroup) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAnimationGroupVTable, _: ptr cQAnimationGroup) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAnimationGroup()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAnimationGroup_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAnimationGroup_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAnimationGroup_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAnimationGroup_event
  vtbl[].vtbl.duration = miqt_exec_method_cQAnimationGroup_duration
  vtbl[].vtbl.updateCurrentTime = miqt_exec_method_cQAnimationGroup_updateCurrentTime
  vtbl[].vtbl.updateState = miqt_exec_method_cQAnimationGroup_updateState
  vtbl[].vtbl.updateDirection = miqt_exec_method_cQAnimationGroup_updateDirection
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAnimationGroup_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAnimationGroup_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAnimationGroup_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAnimationGroup_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAnimationGroup_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAnimationGroup_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAnimationGroup_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qanimationgroup_types.QAnimationGroup,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQAnimationGroup) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAnimationGroupVTable, _: ptr cQAnimationGroup) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAnimationGroup()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAnimationGroup, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAnimationGroup_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAnimationGroup_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAnimationGroup_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAnimationGroup_event
  vtbl[].vtbl.duration = miqt_exec_method_cQAnimationGroup_duration
  vtbl[].vtbl.updateCurrentTime = miqt_exec_method_cQAnimationGroup_updateCurrentTime
  vtbl[].vtbl.updateState = miqt_exec_method_cQAnimationGroup_updateState
  vtbl[].vtbl.updateDirection = miqt_exec_method_cQAnimationGroup_updateDirection
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAnimationGroup_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAnimationGroup_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAnimationGroup_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAnimationGroup_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAnimationGroup_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAnimationGroup_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAnimationGroup_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qanimationgroup_types.QAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationGroup_staticMetaObject())
