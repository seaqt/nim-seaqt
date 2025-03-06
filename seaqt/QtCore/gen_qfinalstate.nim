import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qfinalstate.cpp", cflags).}


import ./gen_qfinalstate_types
export gen_qfinalstate_types

import
  ./gen_qabstractstate,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstractstate,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQFinalState*{.exportc: "QFinalState", incompleteStruct.} = object

proc fcQFinalState_metaObject(self: pointer, ): pointer {.importc: "QFinalState_metaObject".}
proc fcQFinalState_metacast(self: pointer, param1: cstring): pointer {.importc: "QFinalState_metacast".}
proc fcQFinalState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFinalState_metacall".}
proc fcQFinalState_tr(s: cstring): struct_miqt_string {.importc: "QFinalState_tr".}
proc fcQFinalState_trUtf8(s: cstring): struct_miqt_string {.importc: "QFinalState_trUtf8".}
proc fcQFinalState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_tr2".}
proc fcQFinalState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_tr3".}
proc fcQFinalState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_trUtf82".}
proc fcQFinalState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_trUtf83".}
type cQFinalStateVTable = object
  destructor*: proc(vtbl: ptr cQFinalStateVTable, self: ptr cQFinalState) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  onEntry*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  onExit*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFinalState_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFinalState_virtualbase_metaObject".}
proc fcQFinalState_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFinalState_virtualbase_metacast".}
proc fcQFinalState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFinalState_virtualbase_metacall".}
proc fcQFinalState_virtualbase_onEntry(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_onEntry".}
proc fcQFinalState_virtualbase_onExit(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_onExit".}
proc fcQFinalState_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFinalState_virtualbase_event".}
proc fcQFinalState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFinalState_virtualbase_eventFilter".}
proc fcQFinalState_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_timerEvent".}
proc fcQFinalState_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_childEvent".}
proc fcQFinalState_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFinalState_virtualbase_customEvent".}
proc fcQFinalState_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFinalState_virtualbase_connectNotify".}
proc fcQFinalState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFinalState_virtualbase_disconnectNotify".}
proc fcQFinalState_new(vtbl: pointer, ): ptr cQFinalState {.importc: "QFinalState_new".}
proc fcQFinalState_new2(vtbl: pointer, parent: pointer): ptr cQFinalState {.importc: "QFinalState_new2".}
proc fcQFinalState_staticMetaObject(): pointer {.importc: "QFinalState_staticMetaObject".}
proc fcQFinalState_delete(self: pointer) {.importc: "QFinalState_delete".}

proc metaObject*(self: gen_qfinalstate_types.QFinalState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_metaObject(self.h))

proc metacast*(self: gen_qfinalstate_types.QFinalState, param1: cstring): pointer =
  fcQFinalState_metacast(self.h, param1)

proc metacall*(self: gen_qfinalstate_types.QFinalState, param1: cint, param2: cint, param3: pointer): cint =
  fcQFinalState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfinalstate_types.QFinalState, s: cstring): string =
  let v_ms = fcQFinalState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfinalstate_types.QFinalState, s: cstring): string =
  let v_ms = fcQFinalState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring): string =
  let v_ms = fcQFinalState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFinalState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring): string =
  let v_ms = fcQFinalState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfinalstate_types.QFinalState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFinalState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFinalStatemetaObjectProc* = proc(self: QFinalState): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFinalStatemetacastProc* = proc(self: QFinalState, param1: cstring): pointer {.raises: [], gcsafe.}
type QFinalStatemetacallProc* = proc(self: QFinalState, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFinalStateonEntryProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFinalStateonExitProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFinalStateeventProc* = proc(self: QFinalState, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFinalStateeventFilterProc* = proc(self: QFinalState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFinalStatetimerEventProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFinalStatechildEventProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFinalStatecustomEventProc* = proc(self: QFinalState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFinalStateconnectNotifyProc* = proc(self: QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFinalStatedisconnectNotifyProc* = proc(self: QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFinalStateVTable* = object
  vtbl: cQFinalStateVTable
  metaObject*: QFinalStatemetaObjectProc
  metacast*: QFinalStatemetacastProc
  metacall*: QFinalStatemetacallProc
  onEntry*: QFinalStateonEntryProc
  onExit*: QFinalStateonExitProc
  event*: QFinalStateeventProc
  eventFilter*: QFinalStateeventFilterProc
  timerEvent*: QFinalStatetimerEventProc
  childEvent*: QFinalStatechildEventProc
  customEvent*: QFinalStatecustomEventProc
  connectNotify*: QFinalStateconnectNotifyProc
  disconnectNotify*: QFinalStatedisconnectNotifyProc
proc QFinalStatemetaObject*(self: gen_qfinalstate_types.QFinalState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFinalState_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFinalStatemetacast*(self: gen_qfinalstate_types.QFinalState, param1: cstring): pointer =
  fcQFinalState_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFinalState_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFinalStatemetacall*(self: gen_qfinalstate_types.QFinalState, param1: cint, param2: cint, param3: pointer): cint =
  fcQFinalState_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFinalState_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFinalStateonEntry*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fcQFinalState_virtualbase_onEntry(self.h, event.h)

proc miqt_exec_callback_cQFinalState_onEntry(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onEntry(self, slotval1)

proc QFinalStateonExit*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fcQFinalState_virtualbase_onExit(self.h, event.h)

proc miqt_exec_callback_cQFinalState_onExit(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onExit(self, slotval1)

proc QFinalStateevent*(self: gen_qfinalstate_types.QFinalState, e: gen_qcoreevent_types.QEvent): bool =
  fcQFinalState_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQFinalState_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFinalStateeventFilter*(self: gen_qfinalstate_types.QFinalState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFinalState_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFinalState_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFinalStatetimerEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFinalState_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFinalState_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFinalStatechildEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFinalState_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFinalState_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFinalStatecustomEvent*(self: gen_qfinalstate_types.QFinalState, event: gen_qcoreevent_types.QEvent): void =
  fcQFinalState_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFinalState_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFinalStateconnectNotify*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFinalState_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFinalState_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFinalStatedisconnectNotify*(self: gen_qfinalstate_types.QFinalState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFinalState_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFinalState_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFinalStateVTable](vtbl)
  let self = QFinalState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qfinalstate_types.QFinalState,
    vtbl: ref QFinalStateVTable = nil): gen_qfinalstate_types.QFinalState =
  let vtbl = if vtbl == nil: new QFinalStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFinalStateVTable, _: ptr cQFinalState) {.cdecl.} =
    let vtbl = cast[ref QFinalStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFinalState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFinalState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFinalState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQFinalState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQFinalState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFinalState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFinalState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFinalState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFinalState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFinalState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFinalState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFinalState_disconnectNotify
  gen_qfinalstate_types.QFinalState(h: fcQFinalState_new(addr(vtbl[]), ))

proc create*(T: type gen_qfinalstate_types.QFinalState,
    parent: gen_qstate_types.QState,
    vtbl: ref QFinalStateVTable = nil): gen_qfinalstate_types.QFinalState =
  let vtbl = if vtbl == nil: new QFinalStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFinalStateVTable, _: ptr cQFinalState) {.cdecl.} =
    let vtbl = cast[ref QFinalStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFinalState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFinalState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFinalState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQFinalState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQFinalState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFinalState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFinalState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFinalState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFinalState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFinalState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFinalState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFinalState_disconnectNotify
  gen_qfinalstate_types.QFinalState(h: fcQFinalState_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qfinalstate_types.QFinalState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFinalState_staticMetaObject())
proc delete*(self: gen_qfinalstate_types.QFinalState) =
  fcQFinalState_delete(self.h)
