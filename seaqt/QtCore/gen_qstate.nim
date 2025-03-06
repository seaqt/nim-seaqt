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
{.compile("gen_qstate.cpp", cflags).}


type QStateChildModeEnum* = distinct cint
template ExclusiveStates*(_: type QStateChildModeEnum): untyped = 0
template ParallelStates*(_: type QStateChildModeEnum): untyped = 1


type QStateRestorePolicyEnum* = distinct cint
template DontRestoreProperties*(_: type QStateRestorePolicyEnum): untyped = 0
template RestoreProperties*(_: type QStateRestorePolicyEnum): untyped = 1


import ./gen_qstate_types
export gen_qstate_types

import
  ./gen_qabstractstate,
  ./gen_qabstracttransition_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qsignaltransition_types,
  ./gen_qvariant_types
export
  gen_qabstractstate,
  gen_qabstracttransition_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsignaltransition_types,
  gen_qvariant_types

type cQState*{.exportc: "QState", incompleteStruct.} = object

proc fcQState_metaObject(self: pointer, ): pointer {.importc: "QState_metaObject".}
proc fcQState_metacast(self: pointer, param1: cstring): pointer {.importc: "QState_metacast".}
proc fcQState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QState_metacall".}
proc fcQState_tr(s: cstring): struct_miqt_string {.importc: "QState_tr".}
proc fcQState_trUtf8(s: cstring): struct_miqt_string {.importc: "QState_trUtf8".}
proc fcQState_errorState(self: pointer, ): pointer {.importc: "QState_errorState".}
proc fcQState_setErrorState(self: pointer, state: pointer): void {.importc: "QState_setErrorState".}
proc fcQState_addTransition(self: pointer, transition: pointer): void {.importc: "QState_addTransition".}
proc fcQState_addTransition2(self: pointer, sender: pointer, signal: cstring, target: pointer): pointer {.importc: "QState_addTransition2".}
proc fcQState_addTransitionWithTarget(self: pointer, target: pointer): pointer {.importc: "QState_addTransitionWithTarget".}
proc fcQState_removeTransition(self: pointer, transition: pointer): void {.importc: "QState_removeTransition".}
proc fcQState_transitions(self: pointer, ): struct_miqt_array {.importc: "QState_transitions".}
proc fcQState_initialState(self: pointer, ): pointer {.importc: "QState_initialState".}
proc fcQState_setInitialState(self: pointer, state: pointer): void {.importc: "QState_setInitialState".}
proc fcQState_childMode(self: pointer, ): cint {.importc: "QState_childMode".}
proc fcQState_setChildMode(self: pointer, mode: cint): void {.importc: "QState_setChildMode".}
proc fcQState_assignProperty(self: pointer, objectVal: pointer, name: cstring, value: pointer): void {.importc: "QState_assignProperty".}
proc fcQState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QState_tr2".}
proc fcQState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QState_tr3".}
proc fcQState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QState_trUtf82".}
proc fcQState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QState_trUtf83".}
type cQStateVTable = object
  destructor*: proc(vtbl: ptr cQStateVTable, self: ptr cQState) {.cdecl, raises:[], gcsafe.}
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
proc fcQState_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QState_virtualbase_metaObject".}
proc fcQState_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QState_virtualbase_metacast".}
proc fcQState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QState_virtualbase_metacall".}
proc fcQState_virtualbase_onEntry(self: pointer, event: pointer): void {.importc: "QState_virtualbase_onEntry".}
proc fcQState_virtualbase_onExit(self: pointer, event: pointer): void {.importc: "QState_virtualbase_onExit".}
proc fcQState_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QState_virtualbase_event".}
proc fcQState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QState_virtualbase_eventFilter".}
proc fcQState_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QState_virtualbase_timerEvent".}
proc fcQState_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QState_virtualbase_childEvent".}
proc fcQState_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QState_virtualbase_customEvent".}
proc fcQState_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QState_virtualbase_connectNotify".}
proc fcQState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QState_virtualbase_disconnectNotify".}
proc fcQState_new(vtbl: pointer, ): ptr cQState {.importc: "QState_new".}
proc fcQState_new2(vtbl: pointer, childMode: cint): ptr cQState {.importc: "QState_new2".}
proc fcQState_new3(vtbl: pointer, parent: pointer): ptr cQState {.importc: "QState_new3".}
proc fcQState_new4(vtbl: pointer, childMode: cint, parent: pointer): ptr cQState {.importc: "QState_new4".}
proc fcQState_staticMetaObject(): pointer {.importc: "QState_staticMetaObject".}
proc fcQState_delete(self: pointer) {.importc: "QState_delete".}

proc metaObject*(self: gen_qstate_types.QState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_metaObject(self.h))

proc metacast*(self: gen_qstate_types.QState, param1: cstring): pointer =
  fcQState_metacast(self.h, param1)

proc metacall*(self: gen_qstate_types.QState, param1: cint, param2: cint, param3: pointer): cint =
  fcQState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstate_types.QState, s: cstring): string =
  let v_ms = fcQState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstate_types.QState, s: cstring): string =
  let v_ms = fcQState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc errorState*(self: gen_qstate_types.QState, ): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQState_errorState(self.h))

proc setErrorState*(self: gen_qstate_types.QState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQState_setErrorState(self.h, state.h)

proc addTransition*(self: gen_qstate_types.QState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQState_addTransition(self.h, transition.h)

proc addTransition*(self: gen_qstate_types.QState, sender: gen_qobject_types.QObject, signal: cstring, target: gen_qabstractstate_types.QAbstractState): gen_qsignaltransition_types.QSignalTransition =
  gen_qsignaltransition_types.QSignalTransition(h: fcQState_addTransition2(self.h, sender.h, signal, target.h))

proc addTransition*(self: gen_qstate_types.QState, target: gen_qabstractstate_types.QAbstractState): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition(h: fcQState_addTransitionWithTarget(self.h, target.h))

proc removeTransition*(self: gen_qstate_types.QState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQState_removeTransition(self.h, transition.h)

proc transitions*(self: gen_qstate_types.QState, ): seq[gen_qabstracttransition_types.QAbstractTransition] =
  var v_ma = fcQState_transitions(self.h)
  var vx_ret = newSeq[gen_qabstracttransition_types.QAbstractTransition](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracttransition_types.QAbstractTransition(h: v_outCast[i])
  vx_ret

proc initialState*(self: gen_qstate_types.QState, ): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQState_initialState(self.h))

proc setInitialState*(self: gen_qstate_types.QState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQState_setInitialState(self.h, state.h)

proc childMode*(self: gen_qstate_types.QState, ): cint =
  cint(fcQState_childMode(self.h))

proc setChildMode*(self: gen_qstate_types.QState, mode: cint): void =
  fcQState_setChildMode(self.h, cint(mode))

proc assignProperty*(self: gen_qstate_types.QState, objectVal: gen_qobject_types.QObject, name: cstring, value: gen_qvariant_types.QVariant): void =
  fcQState_assignProperty(self.h, objectVal.h, name, value.h)

proc tr*(_: type gen_qstate_types.QState, s: cstring, c: cstring): string =
  let v_ms = fcQState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstate_types.QState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstate_types.QState, s: cstring, c: cstring): string =
  let v_ms = fcQState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstate_types.QState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStatemetaObjectProc* = proc(self: QState): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStatemetacastProc* = proc(self: QState, param1: cstring): pointer {.raises: [], gcsafe.}
type QStatemetacallProc* = proc(self: QState, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStateonEntryProc* = proc(self: QState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateonExitProc* = proc(self: QState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateeventProc* = proc(self: QState, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStateeventFilterProc* = proc(self: QState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStatetimerEventProc* = proc(self: QState, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStatechildEventProc* = proc(self: QState, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStatecustomEventProc* = proc(self: QState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateconnectNotifyProc* = proc(self: QState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStatedisconnectNotifyProc* = proc(self: QState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStateVTable* = object
  vtbl: cQStateVTable
  metaObject*: QStatemetaObjectProc
  metacast*: QStatemetacastProc
  metacall*: QStatemetacallProc
  onEntry*: QStateonEntryProc
  onExit*: QStateonExitProc
  event*: QStateeventProc
  eventFilter*: QStateeventFilterProc
  timerEvent*: QStatetimerEventProc
  childEvent*: QStatechildEventProc
  customEvent*: QStatecustomEventProc
  connectNotify*: QStateconnectNotifyProc
  disconnectNotify*: QStatedisconnectNotifyProc
proc QStatemetaObject*(self: gen_qstate_types.QState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQState_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QStatemetacast*(self: gen_qstate_types.QState, param1: cstring): pointer =
  fcQState_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQState_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStatemetacall*(self: gen_qstate_types.QState, param1: cint, param2: cint, param3: pointer): cint =
  fcQState_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQState_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStateonEntry*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fcQState_virtualbase_onEntry(self.h, event.h)

proc miqt_exec_callback_cQState_onEntry(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onEntry(self, slotval1)

proc QStateonExit*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fcQState_virtualbase_onExit(self.h, event.h)

proc miqt_exec_callback_cQState_onExit(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onExit(self, slotval1)

proc QStateevent*(self: gen_qstate_types.QState, e: gen_qcoreevent_types.QEvent): bool =
  fcQState_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQState_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStateeventFilter*(self: gen_qstate_types.QState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQState_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQState_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStatetimerEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQState_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQState_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QStatechildEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QChildEvent): void =
  fcQState_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQState_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QStatecustomEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fcQState_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQState_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QStateconnectNotify*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQState_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQState_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QStatedisconnectNotify*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQState_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQState_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](vtbl)
  let self = QState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qstate_types.QState,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateVTable, _: ptr cQState) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQState_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new(addr(vtbl[]), ))

proc create*(T: type gen_qstate_types.QState,
    childMode: cint,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateVTable, _: ptr cQState) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQState_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new2(addr(vtbl[]), cint(childMode)))

proc create*(T: type gen_qstate_types.QState,
    parent: gen_qstate_types.QState,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateVTable, _: ptr cQState) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQState_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qstate_types.QState,
    childMode: cint, parent: gen_qstate_types.QState,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateVTable, _: ptr cQState) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQState_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new4(addr(vtbl[]), cint(childMode), parent.h))

proc staticMetaObject*(_: type gen_qstate_types.QState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_staticMetaObject())
proc delete*(self: gen_qstate_types.QState) =
  fcQState_delete(self.h)
