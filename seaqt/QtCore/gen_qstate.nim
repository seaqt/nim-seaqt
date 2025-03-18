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


{.compile("gen_qstate.cpp", QtCoreCFlags).}


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

proc fcQState_metaObject(self: pointer): pointer {.importc: "QState_metaObject".}
proc fcQState_metacast(self: pointer, param1: cstring): pointer {.importc: "QState_metacast".}
proc fcQState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QState_metacall".}
proc fcQState_tr(s: cstring): struct_miqt_string {.importc: "QState_tr".}
proc fcQState_trUtf8(s: cstring): struct_miqt_string {.importc: "QState_trUtf8".}
proc fcQState_errorState(self: pointer): pointer {.importc: "QState_errorState".}
proc fcQState_setErrorState(self: pointer, state: pointer): void {.importc: "QState_setErrorState".}
proc fcQState_addTransition(self: pointer, transition: pointer): void {.importc: "QState_addTransition".}
proc fcQState_addTransition2(self: pointer, sender: pointer, signal: cstring, target: pointer): pointer {.importc: "QState_addTransition2".}
proc fcQState_addTransitionWithTarget(self: pointer, target: pointer): pointer {.importc: "QState_addTransitionWithTarget".}
proc fcQState_removeTransition(self: pointer, transition: pointer): void {.importc: "QState_removeTransition".}
proc fcQState_transitions(self: pointer): struct_miqt_array {.importc: "QState_transitions".}
proc fcQState_initialState(self: pointer): pointer {.importc: "QState_initialState".}
proc fcQState_setInitialState(self: pointer, state: pointer): void {.importc: "QState_setInitialState".}
proc fcQState_childMode(self: pointer): cint {.importc: "QState_childMode".}
proc fcQState_setChildMode(self: pointer, mode: cint): void {.importc: "QState_setChildMode".}
proc fcQState_assignProperty(self: pointer, objectVal: pointer, name: cstring, value: pointer): void {.importc: "QState_assignProperty".}
proc fcQState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QState_tr2".}
proc fcQState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QState_tr3".}
proc fcQState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QState_trUtf82".}
proc fcQState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QState_trUtf83".}
proc fcQState_vtbl(self: pointer): pointer {.importc: "QState_vtbl".}
proc fcQState_vdata(self: pointer): pointer {.importc: "QState_vdata".}

type cQStateVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  onEntry*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  onExit*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQState_virtualbase_metaObject(self: pointer): pointer {.importc: "QState_virtualbase_metaObject".}
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
proc fcQState_protectedbase_sender(self: pointer): pointer {.importc: "QState_protectedbase_sender".}
proc fcQState_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QState_protectedbase_senderSignalIndex".}
proc fcQState_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QState_protectedbase_receivers".}
proc fcQState_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QState_protectedbase_isSignalConnected".}
proc fcQState_new(vtbl, vdata: pointer): ptr cQState {.importc: "QState_new".}
proc fcQState_new2(vtbl, vdata: pointer, childMode: cint): ptr cQState {.importc: "QState_new2".}
proc fcQState_new3(vtbl, vdata: pointer, parent: pointer): ptr cQState {.importc: "QState_new3".}
proc fcQState_new4(vtbl, vdata: pointer, childMode: cint, parent: pointer): ptr cQState {.importc: "QState_new4".}
proc fcQState_staticMetaObject(): pointer {.importc: "QState_staticMetaObject".}

proc metaObject*(self: gen_qstate_types.QState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstate_types.QState, param1: cstring): pointer =
  fcQState_metacast(self.h, param1)

proc metacall*(self: gen_qstate_types.QState, param1: cint, param2: cint, param3: pointer): cint =
  fcQState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstate_types.QState, s: cstring): string =
  let v_ms = fcQState_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstate_types.QState, s: cstring): string =
  let v_ms = fcQState_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc errorState*(self: gen_qstate_types.QState): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQState_errorState(self.h), owned: false)

proc setErrorState*(self: gen_qstate_types.QState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQState_setErrorState(self.h, state.h)

proc addTransition*(self: gen_qstate_types.QState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQState_addTransition(self.h, transition.h)

proc addTransition*(self: gen_qstate_types.QState, sender: gen_qobject_types.QObject, signal: cstring, target: gen_qabstractstate_types.QAbstractState): gen_qsignaltransition_types.QSignalTransition =
  gen_qsignaltransition_types.QSignalTransition(h: fcQState_addTransition2(self.h, sender.h, signal, target.h), owned: false)

proc addTransition*(self: gen_qstate_types.QState, target: gen_qabstractstate_types.QAbstractState): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition(h: fcQState_addTransitionWithTarget(self.h, target.h), owned: false)

proc removeTransition*(self: gen_qstate_types.QState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQState_removeTransition(self.h, transition.h)

proc transitions*(self: gen_qstate_types.QState): seq[gen_qabstracttransition_types.QAbstractTransition] =
  var v_ma = fcQState_transitions(self.h)
  var vx_ret = newSeq[gen_qabstracttransition_types.QAbstractTransition](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracttransition_types.QAbstractTransition(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc initialState*(self: gen_qstate_types.QState): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQState_initialState(self.h), owned: false)

proc setInitialState*(self: gen_qstate_types.QState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQState_setInitialState(self.h, state.h)

proc childMode*(self: gen_qstate_types.QState): cint =
  cint(fcQState_childMode(self.h))

proc setChildMode*(self: gen_qstate_types.QState, mode: cint): void =
  fcQState_setChildMode(self.h, cint(mode))

proc assignProperty*(self: gen_qstate_types.QState, objectVal: gen_qobject_types.QObject, name: cstring, value: gen_qvariant_types.QVariant): void =
  fcQState_assignProperty(self.h, objectVal.h, name, value.h)

proc tr*(_: type gen_qstate_types.QState, s: cstring, c: cstring): string =
  let v_ms = fcQState_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstate_types.QState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQState_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstate_types.QState, s: cstring, c: cstring): string =
  let v_ms = fcQState_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstate_types.QState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QStateVTable* {.inheritable, pure.} = object
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

proc QStatemetaObject*(self: gen_qstate_types.QState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_virtualbase_metaObject(self.h), owned: false)

proc QStatemetacast*(self: gen_qstate_types.QState, param1: cstring): pointer =
  fcQState_virtualbase_metacast(self.h, param1)

proc QStatemetacall*(self: gen_qstate_types.QState, param1: cint, param2: cint, param3: pointer): cint =
  fcQState_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QStateonEntry*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fcQState_virtualbase_onEntry(self.h, event.h)

proc QStateonExit*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fcQState_virtualbase_onExit(self.h, event.h)

proc QStateevent*(self: gen_qstate_types.QState, e: gen_qcoreevent_types.QEvent): bool =
  fcQState_virtualbase_event(self.h, e.h)

proc QStateeventFilter*(self: gen_qstate_types.QState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQState_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QStatetimerEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQState_virtualbase_timerEvent(self.h, event.h)

proc QStatechildEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QChildEvent): void =
  fcQState_virtualbase_childEvent(self.h, event.h)

proc QStatecustomEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fcQState_virtualbase_customEvent(self.h, event.h)

proc QStateconnectNotify*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQState_virtualbase_connectNotify(self.h, signal.h)

proc QStatedisconnectNotify*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQState_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQState_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQState_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQState_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQState_vtable_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onEntry(self, slotval1)

proc fcQState_vtable_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onExit(self, slotval1)

proc fcQState_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQState_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQState_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQState_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQState_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQState_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQState_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateVTable](fcQState_vdata(self))
  let self = QState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQState* {.inheritable.} = ref object of QState
  vtbl*: cQStateVTable

method metaObject*(self: VirtualQState): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStatemetaObject(self[])
method metacast*(self: VirtualQState, param1: cstring): pointer {.base.} =
  QStatemetacast(self[], param1)
method metacall*(self: VirtualQState, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStatemetacall(self[], param1, param2, param3)
method onEntry*(self: VirtualQState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateonEntry(self[], event)
method onExit*(self: VirtualQState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateonExit(self[], event)
method event*(self: VirtualQState, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStateevent(self[], e)
method eventFilter*(self: VirtualQState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStateeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQState, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStatetimerEvent(self[], event)
method childEvent*(self: VirtualQState, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStatechildEvent(self[], event)
method customEvent*(self: VirtualQState, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStatecustomEvent(self[], event)
method connectNotify*(self: VirtualQState, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStateconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQState, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStatedisconnectNotify(self[], signal)

proc fcQState_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQState_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQState_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQState_method_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onEntry(slotval1)

proc fcQState_method_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onExit(slotval1)

proc fcQState_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQState_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQState_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQState_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQState_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQState_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQState_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQState](fcQState_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qstate_types.QState): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQState_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstate_types.QState): cint =
  fcQState_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstate_types.QState, signal: cstring): cint =
  fcQState_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQState_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstate_types.QState,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](fcQState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQState_vtable_callback_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qstate_types.QState,
    childMode: cint,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](fcQState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQState_vtable_callback_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(childMode)), owned: true)

proc create*(T: type gen_qstate_types.QState,
    parent: gen_qstate_types.QState,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](fcQState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQState_vtable_callback_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qstate_types.QState,
    childMode: cint, parent: gen_qstate_types.QState,
    vtbl: ref QStateVTable = nil): gen_qstate_types.QState =
  let vtbl = if vtbl == nil: new QStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateVTable](fcQState_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQState_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQState_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQState_vtable_callback_metacall
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQState_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQState_vtable_callback_onExit
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQState_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQState_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQState_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQState_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQState_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQState_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQState_vtable_callback_disconnectNotify
  gen_qstate_types.QState(h: fcQState_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(childMode), parent.h), owned: true)

const cQState_mvtbl = cQStateVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQState()[])](self.fcQState_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQState_method_callback_metaObject,
  metacast: fcQState_method_callback_metacast,
  metacall: fcQState_method_callback_metacall,
  onEntry: fcQState_method_callback_onEntry,
  onExit: fcQState_method_callback_onExit,
  event: fcQState_method_callback_event,
  eventFilter: fcQState_method_callback_eventFilter,
  timerEvent: fcQState_method_callback_timerEvent,
  childEvent: fcQState_method_callback_childEvent,
  customEvent: fcQState_method_callback_customEvent,
  connectNotify: fcQState_method_callback_connectNotify,
  disconnectNotify: fcQState_method_callback_disconnectNotify,
)
proc create*(T: type gen_qstate_types.QState,
    inst: VirtualQState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQState_new(addr(cQState_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qstate_types.QState,
    childMode: cint,
    inst: VirtualQState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQState_new2(addr(cQState_mvtbl), addr(inst[]), cint(childMode))
  inst[].owned = true

proc create*(T: type gen_qstate_types.QState,
    parent: gen_qstate_types.QState,
    inst: VirtualQState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQState_new3(addr(cQState_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qstate_types.QState,
    childMode: cint, parent: gen_qstate_types.QState,
    inst: VirtualQState) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQState_new4(addr(cQState_mvtbl), addr(inst[]), cint(childMode), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qstate_types.QState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_staticMetaObject())
