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


{.compile("gen_qstatemachine.cpp", QtCoreCFlags).}


type QStateMachineEventPriorityEnum* = distinct cint
template NormalPriority*(_: type QStateMachineEventPriorityEnum): untyped = 0
template HighPriority*(_: type QStateMachineEventPriorityEnum): untyped = 1


type QStateMachineErrorEnum* = distinct cint
template NoError*(_: type QStateMachineErrorEnum): untyped = 0
template NoInitialStateError*(_: type QStateMachineErrorEnum): untyped = 1
template NoDefaultStateInHistoryStateError*(_: type QStateMachineErrorEnum): untyped = 2
template NoCommonAncestorForTransitionError*(_: type QStateMachineErrorEnum): untyped = 3
template StateMachineChildModeSetToParallelError*(_: type QStateMachineErrorEnum): untyped = 4


import ./gen_qstatemachine_types
export gen_qstatemachine_types

import
  ./gen_qabstractanimation_types,
  ./gen_qabstractstate_types,
  ./gen_qcoreevent,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate,
  ./gen_qvariant_types,
  std/sets
export
  gen_qabstractanimation_types,
  gen_qabstractstate_types,
  gen_qcoreevent,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate,
  gen_qvariant_types

type cQStateMachine*{.exportc: "QStateMachine", incompleteStruct.} = object
type cQStateMachineSignalEvent*{.exportc: "QStateMachine__SignalEvent", incompleteStruct.} = object
type cQStateMachineWrappedEvent*{.exportc: "QStateMachine__WrappedEvent", incompleteStruct.} = object

proc fcQStateMachine_metaObject(self: pointer): pointer {.importc: "QStateMachine_metaObject".}
proc fcQStateMachine_metacast(self: pointer, param1: cstring): pointer {.importc: "QStateMachine_metacast".}
proc fcQStateMachine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStateMachine_metacall".}
proc fcQStateMachine_tr(s: cstring): struct_miqt_string {.importc: "QStateMachine_tr".}
proc fcQStateMachine_trUtf8(s: cstring): struct_miqt_string {.importc: "QStateMachine_trUtf8".}
proc fcQStateMachine_addState(self: pointer, state: pointer): void {.importc: "QStateMachine_addState".}
proc fcQStateMachine_removeState(self: pointer, state: pointer): void {.importc: "QStateMachine_removeState".}
proc fcQStateMachine_error(self: pointer): cint {.importc: "QStateMachine_error".}
proc fcQStateMachine_errorString(self: pointer): struct_miqt_string {.importc: "QStateMachine_errorString".}
proc fcQStateMachine_clearError(self: pointer): void {.importc: "QStateMachine_clearError".}
proc fcQStateMachine_isRunning(self: pointer): bool {.importc: "QStateMachine_isRunning".}
proc fcQStateMachine_isAnimated(self: pointer): bool {.importc: "QStateMachine_isAnimated".}
proc fcQStateMachine_setAnimated(self: pointer, enabled: bool): void {.importc: "QStateMachine_setAnimated".}
proc fcQStateMachine_addDefaultAnimation(self: pointer, animation: pointer): void {.importc: "QStateMachine_addDefaultAnimation".}
proc fcQStateMachine_defaultAnimations(self: pointer): struct_miqt_array {.importc: "QStateMachine_defaultAnimations".}
proc fcQStateMachine_removeDefaultAnimation(self: pointer, animation: pointer): void {.importc: "QStateMachine_removeDefaultAnimation".}
proc fcQStateMachine_globalRestorePolicy(self: pointer): cint {.importc: "QStateMachine_globalRestorePolicy".}
proc fcQStateMachine_setGlobalRestorePolicy(self: pointer, restorePolicy: cint): void {.importc: "QStateMachine_setGlobalRestorePolicy".}
proc fcQStateMachine_postEvent(self: pointer, event: pointer): void {.importc: "QStateMachine_postEvent".}
proc fcQStateMachine_postDelayedEvent(self: pointer, event: pointer, delay: cint): cint {.importc: "QStateMachine_postDelayedEvent".}
proc fcQStateMachine_cancelDelayedEvent(self: pointer, id: cint): bool {.importc: "QStateMachine_cancelDelayedEvent".}
proc fcQStateMachine_configuration(self: pointer): HashSet[pointer] {.importc: "QStateMachine_configuration".}
proc fcQStateMachine_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStateMachine_eventFilter".}
proc fcQStateMachine_start(self: pointer): void {.importc: "QStateMachine_start".}
proc fcQStateMachine_stop(self: pointer): void {.importc: "QStateMachine_stop".}
proc fcQStateMachine_setRunning(self: pointer, running: bool): void {.importc: "QStateMachine_setRunning".}
proc fcQStateMachine_runningChanged(self: pointer, running: bool): void {.importc: "QStateMachine_runningChanged".}
proc fcQStateMachine_connect_runningChanged(self: pointer, slot: int, callback: proc (slot: int, running: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStateMachine_connect_runningChanged".}
proc fcQStateMachine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStateMachine_tr2".}
proc fcQStateMachine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStateMachine_tr3".}
proc fcQStateMachine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStateMachine_trUtf82".}
proc fcQStateMachine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStateMachine_trUtf83".}
proc fcQStateMachine_postEvent2(self: pointer, event: pointer, priority: cint): void {.importc: "QStateMachine_postEvent2".}
proc fcQStateMachine_vtbl(self: pointer): pointer {.importc: "QStateMachine_vtbl".}
proc fcQStateMachine_vdata(self: pointer): pointer {.importc: "QStateMachine_vdata".}

type cQStateMachineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  onEntry*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  onExit*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  beginSelectTransitions*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  endSelectTransitions*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  beginMicrostep*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  endMicrostep*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStateMachine_virtualbase_metaObject(self: pointer): pointer {.importc: "QStateMachine_virtualbase_metaObject".}
proc fcQStateMachine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStateMachine_virtualbase_metacast".}
proc fcQStateMachine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStateMachine_virtualbase_metacall".}
proc fcQStateMachine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStateMachine_virtualbase_eventFilter".}
proc fcQStateMachine_virtualbase_onEntry(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_onEntry".}
proc fcQStateMachine_virtualbase_onExit(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_onExit".}
proc fcQStateMachine_virtualbase_beginSelectTransitions(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_beginSelectTransitions".}
proc fcQStateMachine_virtualbase_endSelectTransitions(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_endSelectTransitions".}
proc fcQStateMachine_virtualbase_beginMicrostep(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_beginMicrostep".}
proc fcQStateMachine_virtualbase_endMicrostep(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_endMicrostep".}
proc fcQStateMachine_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QStateMachine_virtualbase_event".}
proc fcQStateMachine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_timerEvent".}
proc fcQStateMachine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_childEvent".}
proc fcQStateMachine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStateMachine_virtualbase_customEvent".}
proc fcQStateMachine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStateMachine_virtualbase_connectNotify".}
proc fcQStateMachine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStateMachine_virtualbase_disconnectNotify".}
proc fcQStateMachine_protectedbase_sender(self: pointer): pointer {.importc: "QStateMachine_protectedbase_sender".}
proc fcQStateMachine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QStateMachine_protectedbase_senderSignalIndex".}
proc fcQStateMachine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStateMachine_protectedbase_receivers".}
proc fcQStateMachine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStateMachine_protectedbase_isSignalConnected".}
proc fcQStateMachine_new(vtbl, vdata: pointer): ptr cQStateMachine {.importc: "QStateMachine_new".}
proc fcQStateMachine_new2(vtbl, vdata: pointer, childMode: cint): ptr cQStateMachine {.importc: "QStateMachine_new2".}
proc fcQStateMachine_new3(vtbl, vdata: pointer, parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new3".}
proc fcQStateMachine_new4(vtbl, vdata: pointer, childMode: cint, parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new4".}
proc fcQStateMachine_staticMetaObject(): pointer {.importc: "QStateMachine_staticMetaObject".}
proc fcQStateMachineSignalEvent_sender(self: pointer): pointer {.importc: "QStateMachine__SignalEvent_sender".}
proc fcQStateMachineSignalEvent_signalIndex(self: pointer): cint {.importc: "QStateMachine__SignalEvent_signalIndex".}
proc fcQStateMachineSignalEvent_arguments(self: pointer): struct_miqt_array {.importc: "QStateMachine__SignalEvent_arguments".}
proc fcQStateMachineSignalEvent_new(sender: pointer, signalIndex: cint, arguments: struct_miqt_array): ptr cQStateMachineSignalEvent {.importc: "QStateMachine__SignalEvent_new".}
proc fcQStateMachineSignalEvent_new2(param1: pointer): ptr cQStateMachineSignalEvent {.importc: "QStateMachine__SignalEvent_new2".}
proc fcQStateMachineWrappedEvent_objectX(self: pointer): pointer {.importc: "QStateMachine__WrappedEvent_object".}
proc fcQStateMachineWrappedEvent_event(self: pointer): pointer {.importc: "QStateMachine__WrappedEvent_event".}
proc fcQStateMachineWrappedEvent_new(objectVal: pointer, event: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new".}
proc fcQStateMachineWrappedEvent_new2(param1: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new2".}

proc metaObject*(self: gen_qstatemachine_types.QStateMachine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstatemachine_types.QStateMachine, param1: cstring): pointer =
  fcQStateMachine_metacast(self.h, param1)

proc metacall*(self: gen_qstatemachine_types.QStateMachine, param1: cint, param2: cint, param3: pointer): cint =
  fcQStateMachine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstatemachine_types.QStateMachine, s: cstring): string =
  let v_ms = fcQStateMachine_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatemachine_types.QStateMachine, s: cstring): string =
  let v_ms = fcQStateMachine_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addState*(self: gen_qstatemachine_types.QStateMachine, state: gen_qabstractstate_types.QAbstractState): void =
  fcQStateMachine_addState(self.h, state.h)

proc removeState*(self: gen_qstatemachine_types.QStateMachine, state: gen_qabstractstate_types.QAbstractState): void =
  fcQStateMachine_removeState(self.h, state.h)

proc error*(self: gen_qstatemachine_types.QStateMachine): cint =
  cint(fcQStateMachine_error(self.h))

proc errorString*(self: gen_qstatemachine_types.QStateMachine): string =
  let v_ms = fcQStateMachine_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clearError*(self: gen_qstatemachine_types.QStateMachine): void =
  fcQStateMachine_clearError(self.h)

proc isRunning*(self: gen_qstatemachine_types.QStateMachine): bool =
  fcQStateMachine_isRunning(self.h)

proc isAnimated*(self: gen_qstatemachine_types.QStateMachine): bool =
  fcQStateMachine_isAnimated(self.h)

proc setAnimated*(self: gen_qstatemachine_types.QStateMachine, enabled: bool): void =
  fcQStateMachine_setAnimated(self.h, enabled)

proc addDefaultAnimation*(self: gen_qstatemachine_types.QStateMachine, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQStateMachine_addDefaultAnimation(self.h, animation.h)

proc defaultAnimations*(self: gen_qstatemachine_types.QStateMachine): seq[gen_qabstractanimation_types.QAbstractAnimation] =
  var v_ma = fcQStateMachine_defaultAnimations(self.h)
  var vx_ret = newSeq[gen_qabstractanimation_types.QAbstractAnimation](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractanimation_types.QAbstractAnimation(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc removeDefaultAnimation*(self: gen_qstatemachine_types.QStateMachine, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQStateMachine_removeDefaultAnimation(self.h, animation.h)

proc globalRestorePolicy*(self: gen_qstatemachine_types.QStateMachine): cint =
  cint(fcQStateMachine_globalRestorePolicy(self.h))

proc setGlobalRestorePolicy*(self: gen_qstatemachine_types.QStateMachine, restorePolicy: cint): void =
  fcQStateMachine_setGlobalRestorePolicy(self.h, cint(restorePolicy))

proc postEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_postEvent(self.h, event.h)

proc postDelayedEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent, delay: cint): cint =
  fcQStateMachine_postDelayedEvent(self.h, event.h, delay)

proc cancelDelayedEvent*(self: gen_qstatemachine_types.QStateMachine, id: cint): bool =
  fcQStateMachine_cancelDelayedEvent(self.h, id)

proc configuration*(self: gen_qstatemachine_types.QStateMachine): HashSet[gen_qabstractstate_types.QAbstractState] =
  var v_ma = fcQStateMachine_configuration(self.h)
  vx_ret: HashSet[gen_qabstractstate_types.QAbstractState])
  v_outCast = cast[ptr UncheckedArray[pointer](v_ma.data))
  for i in 0..<v_ma.len:
    vx_ret.incl gen_qabstractstate_types.QAbstractState(h: v_outCast[i], owned: false)
  vx_ret

proc eventFilter*(self: gen_qstatemachine_types.QStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStateMachine_eventFilter(self.h, watched.h, event.h)

proc start*(self: gen_qstatemachine_types.QStateMachine): void =
  fcQStateMachine_start(self.h)

proc stop*(self: gen_qstatemachine_types.QStateMachine): void =
  fcQStateMachine_stop(self.h)

proc setRunning*(self: gen_qstatemachine_types.QStateMachine, running: bool): void =
  fcQStateMachine_setRunning(self.h, running)

proc runningChanged*(self: gen_qstatemachine_types.QStateMachine, running: bool): void =
  fcQStateMachine_runningChanged(self.h, running)

type QStateMachinerunningChangedSlot* = proc(running: bool)
proc fcQStateMachine_slot_callback_runningChanged(slot: int, running: bool) {.cdecl.} =
  let nimfunc = cast[ptr QStateMachinerunningChangedSlot](cast[pointer](slot))
  let slotval1 = running

  nimfunc[](slotval1)

proc fcQStateMachine_slot_callback_runningChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStateMachinerunningChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRunningChanged*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinerunningChangedSlot) =
  var tmp = new QStateMachinerunningChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_connect_runningChanged(self.h, cast[int](addr tmp[]), fcQStateMachine_slot_callback_runningChanged, fcQStateMachine_slot_callback_runningChanged_release)

proc tr*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring): string =
  let v_ms = fcQStateMachine_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStateMachine_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring): string =
  let v_ms = fcQStateMachine_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStateMachine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc postEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent, priority: cint): void =
  fcQStateMachine_postEvent2(self.h, event.h, cint(priority))

type QStateMachinemetaObjectProc* = proc(self: QStateMachine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStateMachinemetacastProc* = proc(self: QStateMachine, param1: cstring): pointer {.raises: [], gcsafe.}
type QStateMachinemetacallProc* = proc(self: QStateMachine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStateMachineeventFilterProc* = proc(self: QStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStateMachineonEntryProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachineonExitProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachinebeginSelectTransitionsProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachineendSelectTransitionsProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachinebeginMicrostepProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachineendMicrostepProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachineeventProc* = proc(self: QStateMachine, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStateMachinetimerEventProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStateMachinechildEventProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStateMachinecustomEventProc* = proc(self: QStateMachine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStateMachineconnectNotifyProc* = proc(self: QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStateMachinedisconnectNotifyProc* = proc(self: QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QStateMachineVTable* {.inheritable, pure.} = object
  vtbl: cQStateMachineVTable
  metaObject*: QStateMachinemetaObjectProc
  metacast*: QStateMachinemetacastProc
  metacall*: QStateMachinemetacallProc
  eventFilter*: QStateMachineeventFilterProc
  onEntry*: QStateMachineonEntryProc
  onExit*: QStateMachineonExitProc
  beginSelectTransitions*: QStateMachinebeginSelectTransitionsProc
  endSelectTransitions*: QStateMachineendSelectTransitionsProc
  beginMicrostep*: QStateMachinebeginMicrostepProc
  endMicrostep*: QStateMachineendMicrostepProc
  event*: QStateMachineeventProc
  timerEvent*: QStateMachinetimerEventProc
  childEvent*: QStateMachinechildEventProc
  customEvent*: QStateMachinecustomEventProc
  connectNotify*: QStateMachineconnectNotifyProc
  disconnectNotify*: QStateMachinedisconnectNotifyProc

proc QStateMachinemetaObject*(self: gen_qstatemachine_types.QStateMachine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_virtualbase_metaObject(self.h), owned: false)

proc QStateMachinemetacast*(self: gen_qstatemachine_types.QStateMachine, param1: cstring): pointer =
  fcQStateMachine_virtualbase_metacast(self.h, param1)

proc QStateMachinemetacall*(self: gen_qstatemachine_types.QStateMachine, param1: cint, param2: cint, param3: pointer): cint =
  fcQStateMachine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QStateMachineeventFilter*(self: gen_qstatemachine_types.QStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStateMachine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QStateMachineonEntry*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_onEntry(self.h, event.h)

proc QStateMachineonExit*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_onExit(self.h, event.h)

proc QStateMachinebeginSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_beginSelectTransitions(self.h, event.h)

proc QStateMachineendSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_endSelectTransitions(self.h, event.h)

proc QStateMachinebeginMicrostep*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_beginMicrostep(self.h, event.h)

proc QStateMachineendMicrostep*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_endMicrostep(self.h, event.h)

proc QStateMachineevent*(self: gen_qstatemachine_types.QStateMachine, e: gen_qcoreevent_types.QEvent): bool =
  fcQStateMachine_virtualbase_event(self.h, e.h)

proc QStateMachinetimerEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStateMachine_virtualbase_timerEvent(self.h, event.h)

proc QStateMachinechildEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStateMachine_virtualbase_childEvent(self.h, event.h)

proc QStateMachinecustomEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_customEvent(self.h, event.h)

proc QStateMachineconnectNotify*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStateMachine_virtualbase_connectNotify(self.h, signal.h)

proc QStateMachinedisconnectNotify*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStateMachine_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQStateMachine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStateMachine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQStateMachine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStateMachine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQStateMachine_vtable_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onEntry(self, slotval1)

proc fcQStateMachine_vtable_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].onExit(self, slotval1)

proc fcQStateMachine_vtable_callback_beginSelectTransitions(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].beginSelectTransitions(self, slotval1)

proc fcQStateMachine_vtable_callback_endSelectTransitions(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].endSelectTransitions(self, slotval1)

proc fcQStateMachine_vtable_callback_beginMicrostep(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].beginMicrostep(self, slotval1)

proc fcQStateMachine_vtable_callback_endMicrostep(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].endMicrostep(self, slotval1)

proc fcQStateMachine_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQStateMachine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQStateMachine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQStateMachine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQStateMachine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQStateMachine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](fcQStateMachine_vdata(self))
  let self = QStateMachine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStateMachine* {.inheritable.} = ref object of QStateMachine
  vtbl*: cQStateMachineVTable

method metaObject*(self: VirtualQStateMachine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStateMachinemetaObject(self[])
method metacast*(self: VirtualQStateMachine, param1: cstring): pointer {.base.} =
  QStateMachinemetacast(self[], param1)
method metacall*(self: VirtualQStateMachine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStateMachinemetacall(self[], param1, param2, param3)
method eventFilter*(self: VirtualQStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStateMachineeventFilter(self[], watched, event)
method onEntry*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachineonEntry(self[], event)
method onExit*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachineonExit(self[], event)
method beginSelectTransitions*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachinebeginSelectTransitions(self[], event)
method endSelectTransitions*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachineendSelectTransitions(self[], event)
method beginMicrostep*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachinebeginMicrostep(self[], event)
method endMicrostep*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachineendMicrostep(self[], event)
method event*(self: VirtualQStateMachine, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStateMachineevent(self[], e)
method timerEvent*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStateMachinetimerEvent(self[], event)
method childEvent*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStateMachinechildEvent(self[], event)
method customEvent*(self: VirtualQStateMachine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStateMachinecustomEvent(self[], event)
method connectNotify*(self: VirtualQStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStateMachineconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStateMachinedisconnectNotify(self[], signal)

proc fcQStateMachine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStateMachine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQStateMachine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStateMachine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQStateMachine_method_callback_onEntry(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onEntry(slotval1)

proc fcQStateMachine_method_callback_onExit(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.onExit(slotval1)

proc fcQStateMachine_method_callback_beginSelectTransitions(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.beginSelectTransitions(slotval1)

proc fcQStateMachine_method_callback_endSelectTransitions(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.endSelectTransitions(slotval1)

proc fcQStateMachine_method_callback_beginMicrostep(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.beginMicrostep(slotval1)

proc fcQStateMachine_method_callback_endMicrostep(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.endMicrostep(slotval1)

proc fcQStateMachine_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQStateMachine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQStateMachine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQStateMachine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQStateMachine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQStateMachine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStateMachine](fcQStateMachine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qstatemachine_types.QStateMachine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstatemachine_types.QStateMachine): cint =
  fcQStateMachine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstatemachine_types.QStateMachine, signal: cstring): cint =
  fcQStateMachine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStateMachine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](fcQStateMachine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStateMachine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStateMachine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStateMachine_vtable_callback_metacall
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStateMachine_vtable_callback_eventFilter
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQStateMachine_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQStateMachine_vtable_callback_onExit
  if not isNil(vtbl[].beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = fcQStateMachine_vtable_callback_beginSelectTransitions
  if not isNil(vtbl[].endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = fcQStateMachine_vtable_callback_endSelectTransitions
  if not isNil(vtbl[].beginMicrostep):
    vtbl[].vtbl.beginMicrostep = fcQStateMachine_vtable_callback_beginMicrostep
  if not isNil(vtbl[].endMicrostep):
    vtbl[].vtbl.endMicrostep = fcQStateMachine_vtable_callback_endMicrostep
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStateMachine_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStateMachine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStateMachine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStateMachine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStateMachine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStateMachine_vtable_callback_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    childMode: cint,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](fcQStateMachine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStateMachine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStateMachine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStateMachine_vtable_callback_metacall
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStateMachine_vtable_callback_eventFilter
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQStateMachine_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQStateMachine_vtable_callback_onExit
  if not isNil(vtbl[].beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = fcQStateMachine_vtable_callback_beginSelectTransitions
  if not isNil(vtbl[].endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = fcQStateMachine_vtable_callback_endSelectTransitions
  if not isNil(vtbl[].beginMicrostep):
    vtbl[].vtbl.beginMicrostep = fcQStateMachine_vtable_callback_beginMicrostep
  if not isNil(vtbl[].endMicrostep):
    vtbl[].vtbl.endMicrostep = fcQStateMachine_vtable_callback_endMicrostep
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStateMachine_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStateMachine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStateMachine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStateMachine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStateMachine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStateMachine_vtable_callback_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(childMode)), owned: true)

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](fcQStateMachine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStateMachine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStateMachine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStateMachine_vtable_callback_metacall
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStateMachine_vtable_callback_eventFilter
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQStateMachine_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQStateMachine_vtable_callback_onExit
  if not isNil(vtbl[].beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = fcQStateMachine_vtable_callback_beginSelectTransitions
  if not isNil(vtbl[].endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = fcQStateMachine_vtable_callback_endSelectTransitions
  if not isNil(vtbl[].beginMicrostep):
    vtbl[].vtbl.beginMicrostep = fcQStateMachine_vtable_callback_beginMicrostep
  if not isNil(vtbl[].endMicrostep):
    vtbl[].vtbl.endMicrostep = fcQStateMachine_vtable_callback_endMicrostep
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStateMachine_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStateMachine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStateMachine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStateMachine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStateMachine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStateMachine_vtable_callback_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    childMode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](fcQStateMachine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStateMachine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStateMachine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStateMachine_vtable_callback_metacall
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStateMachine_vtable_callback_eventFilter
  if not isNil(vtbl[].onEntry):
    vtbl[].vtbl.onEntry = fcQStateMachine_vtable_callback_onEntry
  if not isNil(vtbl[].onExit):
    vtbl[].vtbl.onExit = fcQStateMachine_vtable_callback_onExit
  if not isNil(vtbl[].beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = fcQStateMachine_vtable_callback_beginSelectTransitions
  if not isNil(vtbl[].endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = fcQStateMachine_vtable_callback_endSelectTransitions
  if not isNil(vtbl[].beginMicrostep):
    vtbl[].vtbl.beginMicrostep = fcQStateMachine_vtable_callback_beginMicrostep
  if not isNil(vtbl[].endMicrostep):
    vtbl[].vtbl.endMicrostep = fcQStateMachine_vtable_callback_endMicrostep
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStateMachine_vtable_callback_event
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStateMachine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStateMachine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStateMachine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStateMachine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStateMachine_vtable_callback_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(childMode), parent.h), owned: true)

const cQStateMachine_mvtbl = cQStateMachineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStateMachine()[])](self.fcQStateMachine_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQStateMachine_method_callback_metaObject,
  metacast: fcQStateMachine_method_callback_metacast,
  metacall: fcQStateMachine_method_callback_metacall,
  eventFilter: fcQStateMachine_method_callback_eventFilter,
  onEntry: fcQStateMachine_method_callback_onEntry,
  onExit: fcQStateMachine_method_callback_onExit,
  beginSelectTransitions: fcQStateMachine_method_callback_beginSelectTransitions,
  endSelectTransitions: fcQStateMachine_method_callback_endSelectTransitions,
  beginMicrostep: fcQStateMachine_method_callback_beginMicrostep,
  endMicrostep: fcQStateMachine_method_callback_endMicrostep,
  event: fcQStateMachine_method_callback_event,
  timerEvent: fcQStateMachine_method_callback_timerEvent,
  childEvent: fcQStateMachine_method_callback_childEvent,
  customEvent: fcQStateMachine_method_callback_customEvent,
  connectNotify: fcQStateMachine_method_callback_connectNotify,
  disconnectNotify: fcQStateMachine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qstatemachine_types.QStateMachine,
    inst: VirtualQStateMachine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStateMachine_new(addr(cQStateMachine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    childMode: cint,
    inst: VirtualQStateMachine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStateMachine_new2(addr(cQStateMachine_mvtbl), addr(inst[]), cint(childMode))
  inst[].owned = true

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    parent: gen_qobject_types.QObject,
    inst: VirtualQStateMachine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStateMachine_new3(addr(cQStateMachine_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    childMode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQStateMachine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStateMachine_new4(addr(cQStateMachine_mvtbl), addr(inst[]), cint(childMode), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qstatemachine_types.QStateMachine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_staticMetaObject())
proc sender*(self: gen_qstatemachine_types.QStateMachineSignalEvent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachineSignalEvent_sender(self.h), owned: false)

proc signalIndex*(self: gen_qstatemachine_types.QStateMachineSignalEvent): cint =
  fcQStateMachineSignalEvent_signalIndex(self.h)

proc arguments*(self: gen_qstatemachine_types.QStateMachineSignalEvent): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQStateMachineSignalEvent_arguments(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qstatemachine_types.QStateMachineSignalEvent,
    sender: gen_qobject_types.QObject, signalIndex: cint, arguments: openArray[gen_qvariant_types.QVariant]): gen_qstatemachine_types.QStateMachineSignalEvent =
  var arguments_CArray = newSeq[pointer](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = arguments[i].h

  gen_qstatemachine_types.QStateMachineSignalEvent(h: fcQStateMachineSignalEvent_new(sender.h, signalIndex, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0]))), owned: true)

proc create*(T: type gen_qstatemachine_types.QStateMachineSignalEvent,
    param1: gen_qstatemachine_types.QStateMachineSignalEvent): gen_qstatemachine_types.QStateMachineSignalEvent =
  gen_qstatemachine_types.QStateMachineSignalEvent(h: fcQStateMachineSignalEvent_new2(param1.h), owned: true)

proc objectX*(self: gen_qstatemachine_types.QStateMachineWrappedEvent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachineWrappedEvent_objectX(self.h), owned: false)

proc event*(self: gen_qstatemachine_types.QStateMachineWrappedEvent): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQStateMachineWrappedEvent_event(self.h), owned: false)

proc create*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent,
    objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  gen_qstatemachine_types.QStateMachineWrappedEvent(h: fcQStateMachineWrappedEvent_new(objectVal.h, event.h), owned: true)

proc create*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent,
    param1: gen_qstatemachine_types.QStateMachineWrappedEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  gen_qstatemachine_types.QStateMachineWrappedEvent(h: fcQStateMachineWrappedEvent_new2(param1.h), owned: true)

