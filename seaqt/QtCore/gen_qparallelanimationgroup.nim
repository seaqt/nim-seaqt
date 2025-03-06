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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qparallelanimationgroup.cpp", cflags).}


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

proc fcQParallelAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QParallelAnimationGroup_metaObject".}
proc fcQParallelAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QParallelAnimationGroup_metacast".}
proc fcQParallelAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QParallelAnimationGroup_metacall".}
proc fcQParallelAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr".}
proc fcQParallelAnimationGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf8".}
proc fcQParallelAnimationGroup_duration(self: pointer, ): cint {.importc: "QParallelAnimationGroup_duration".}
proc fcQParallelAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr2".}
proc fcQParallelAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_tr3".}
proc fcQParallelAnimationGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf82".}
proc fcQParallelAnimationGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf83".}
type cQParallelAnimationGroupVTable = object
  destructor*: proc(vtbl: ptr cQParallelAnimationGroupVTable, self: ptr cQParallelAnimationGroup) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(vtbl, self: pointer, currentTime: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(vtbl, self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQParallelAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QParallelAnimationGroup_virtualbase_metaObject".}
proc fcQParallelAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QParallelAnimationGroup_virtualbase_metacast".}
proc fcQParallelAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QParallelAnimationGroup_virtualbase_metacall".}
proc fcQParallelAnimationGroup_virtualbase_duration(self: pointer, ): cint {.importc: "QParallelAnimationGroup_virtualbase_duration".}
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
proc fcQParallelAnimationGroup_protectedbase_sender(self: pointer, ): pointer {.importc: "QParallelAnimationGroup_protectedbase_sender".}
proc fcQParallelAnimationGroup_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QParallelAnimationGroup_protectedbase_senderSignalIndex".}
proc fcQParallelAnimationGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QParallelAnimationGroup_protectedbase_receivers".}
proc fcQParallelAnimationGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QParallelAnimationGroup_protectedbase_isSignalConnected".}
proc fcQParallelAnimationGroup_new(vtbl: pointer, ): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new".}
proc fcQParallelAnimationGroup_new2(vtbl: pointer, parent: pointer): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new2".}
proc fcQParallelAnimationGroup_staticMetaObject(): pointer {.importc: "QParallelAnimationGroup_staticMetaObject".}
proc fcQParallelAnimationGroup_delete(self: pointer) {.importc: "QParallelAnimationGroup_delete".}

proc metaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQParallelAnimationGroup_metaObject(self.h))

proc metacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cstring): pointer =
  fcQParallelAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQParallelAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring): string =
  let v_ms = fcQParallelAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring): string =
  let v_ms = fcQParallelAnimationGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): cint =
  fcQParallelAnimationGroup_duration(self.h)

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQParallelAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQParallelAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring): string =
  let v_ms = fcQParallelAnimationGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQParallelAnimationGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QParallelAnimationGroupVTable* = object
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
proc QParallelAnimationGroupmetaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQParallelAnimationGroup_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQParallelAnimationGroup_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QParallelAnimationGroupmetacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cstring): pointer =
  fcQParallelAnimationGroup_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQParallelAnimationGroup_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QParallelAnimationGroupmetacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQParallelAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQParallelAnimationGroup_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QParallelAnimationGroupduration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): cint =
  fcQParallelAnimationGroup_virtualbase_duration(self.h)

proc miqt_exec_callback_cQParallelAnimationGroup_duration(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QParallelAnimationGroupevent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQParallelAnimationGroup_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQParallelAnimationGroup_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QParallelAnimationGroupupdateCurrentTime*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, currentTime: cint): void =
  fcQParallelAnimationGroup_virtualbase_updateCurrentTime(self.h, currentTime)

proc miqt_exec_callback_cQParallelAnimationGroup_updateCurrentTime(vtbl: pointer, self: pointer, currentTime: cint): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = currentTime
  vtbl[].updateCurrentTime(self, slotval1)

proc QParallelAnimationGroupupdateState*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, newState: cint, oldState: cint): void =
  fcQParallelAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_cQParallelAnimationGroup_updateState(vtbl: pointer, self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QParallelAnimationGroupupdateDirection*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, direction: cint): void =
  fcQParallelAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

proc miqt_exec_callback_cQParallelAnimationGroup_updateDirection(vtbl: pointer, self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QParallelAnimationGroupeventFilter*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQParallelAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQParallelAnimationGroup_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QParallelAnimationGrouptimerEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQParallelAnimationGroup_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQParallelAnimationGroup_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QParallelAnimationGroupchildEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQParallelAnimationGroup_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQParallelAnimationGroup_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QParallelAnimationGroupcustomEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQParallelAnimationGroup_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQParallelAnimationGroup_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QParallelAnimationGroupconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQParallelAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQParallelAnimationGroup_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QParallelAnimationGroupdisconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQParallelAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQParallelAnimationGroup_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QParallelAnimationGroupVTable](vtbl)
  let self = QParallelAnimationGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQParallelAnimationGroup_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): cint =
  fcQParallelAnimationGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: cstring): cint =
  fcQParallelAnimationGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQParallelAnimationGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup,
    vtbl: ref QParallelAnimationGroupVTable = nil): gen_qparallelanimationgroup_types.QParallelAnimationGroup =
  let vtbl = if vtbl == nil: new QParallelAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQParallelAnimationGroupVTable, _: ptr cQParallelAnimationGroup) {.cdecl.} =
    let vtbl = cast[ref QParallelAnimationGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQParallelAnimationGroup_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQParallelAnimationGroup_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQParallelAnimationGroup_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQParallelAnimationGroup_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQParallelAnimationGroup_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQParallelAnimationGroup_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQParallelAnimationGroup_updateState
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQParallelAnimationGroup_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQParallelAnimationGroup_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQParallelAnimationGroup_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQParallelAnimationGroup_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQParallelAnimationGroup_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQParallelAnimationGroup_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQParallelAnimationGroup_disconnectNotify
  gen_qparallelanimationgroup_types.QParallelAnimationGroup(h: fcQParallelAnimationGroup_new(addr(vtbl[]), ))

proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QParallelAnimationGroupVTable = nil): gen_qparallelanimationgroup_types.QParallelAnimationGroup =
  let vtbl = if vtbl == nil: new QParallelAnimationGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQParallelAnimationGroupVTable, _: ptr cQParallelAnimationGroup) {.cdecl.} =
    let vtbl = cast[ref QParallelAnimationGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQParallelAnimationGroup_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQParallelAnimationGroup_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQParallelAnimationGroup_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQParallelAnimationGroup_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQParallelAnimationGroup_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQParallelAnimationGroup_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQParallelAnimationGroup_updateState
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQParallelAnimationGroup_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQParallelAnimationGroup_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQParallelAnimationGroup_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQParallelAnimationGroup_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQParallelAnimationGroup_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQParallelAnimationGroup_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQParallelAnimationGroup_disconnectNotify
  gen_qparallelanimationgroup_types.QParallelAnimationGroup(h: fcQParallelAnimationGroup_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQParallelAnimationGroup_staticMetaObject())
proc delete*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup) =
  fcQParallelAnimationGroup_delete(self.h)
