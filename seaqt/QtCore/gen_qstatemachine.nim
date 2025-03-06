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
{.compile("gen_qstatemachine.cpp", cflags).}


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
  std/sets
export
  gen_qabstractanimation_types,
  gen_qabstractstate_types,
  gen_qcoreevent,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate

type cQStateMachine*{.exportc: "QStateMachine", incompleteStruct.} = object
type cQStateMachineSignalEvent*{.exportc: "QStateMachine__SignalEvent", incompleteStruct.} = object
type cQStateMachineWrappedEvent*{.exportc: "QStateMachine__WrappedEvent", incompleteStruct.} = object

proc fcQStateMachine_metaObject(self: pointer, ): pointer {.importc: "QStateMachine_metaObject".}
proc fcQStateMachine_metacast(self: pointer, param1: cstring): pointer {.importc: "QStateMachine_metacast".}
proc fcQStateMachine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStateMachine_metacall".}
proc fcQStateMachine_tr(s: cstring): struct_miqt_string {.importc: "QStateMachine_tr".}
proc fcQStateMachine_trUtf8(s: cstring): struct_miqt_string {.importc: "QStateMachine_trUtf8".}
proc fcQStateMachine_addState(self: pointer, state: pointer): void {.importc: "QStateMachine_addState".}
proc fcQStateMachine_removeState(self: pointer, state: pointer): void {.importc: "QStateMachine_removeState".}
proc fcQStateMachine_error(self: pointer, ): cint {.importc: "QStateMachine_error".}
proc fcQStateMachine_errorString(self: pointer, ): struct_miqt_string {.importc: "QStateMachine_errorString".}
proc fcQStateMachine_clearError(self: pointer, ): void {.importc: "QStateMachine_clearError".}
proc fcQStateMachine_isRunning(self: pointer, ): bool {.importc: "QStateMachine_isRunning".}
proc fcQStateMachine_isAnimated(self: pointer, ): bool {.importc: "QStateMachine_isAnimated".}
proc fcQStateMachine_setAnimated(self: pointer, enabled: bool): void {.importc: "QStateMachine_setAnimated".}
proc fcQStateMachine_addDefaultAnimation(self: pointer, animation: pointer): void {.importc: "QStateMachine_addDefaultAnimation".}
proc fcQStateMachine_defaultAnimations(self: pointer, ): struct_miqt_array {.importc: "QStateMachine_defaultAnimations".}
proc fcQStateMachine_removeDefaultAnimation(self: pointer, animation: pointer): void {.importc: "QStateMachine_removeDefaultAnimation".}
proc fcQStateMachine_globalRestorePolicy(self: pointer, ): cint {.importc: "QStateMachine_globalRestorePolicy".}
proc fcQStateMachine_setGlobalRestorePolicy(self: pointer, restorePolicy: cint): void {.importc: "QStateMachine_setGlobalRestorePolicy".}
proc fcQStateMachine_postEvent(self: pointer, event: pointer): void {.importc: "QStateMachine_postEvent".}
proc fcQStateMachine_postDelayedEvent(self: pointer, event: pointer, delay: cint): cint {.importc: "QStateMachine_postDelayedEvent".}
proc fcQStateMachine_cancelDelayedEvent(self: pointer, id: cint): bool {.importc: "QStateMachine_cancelDelayedEvent".}
proc fcQStateMachine_configuration(self: pointer, ): HashSet[pointer] {.importc: "QStateMachine_configuration".}
proc fcQStateMachine_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStateMachine_eventFilter".}
proc fcQStateMachine_start(self: pointer, ): void {.importc: "QStateMachine_start".}
proc fcQStateMachine_stop(self: pointer, ): void {.importc: "QStateMachine_stop".}
proc fcQStateMachine_setRunning(self: pointer, running: bool): void {.importc: "QStateMachine_setRunning".}
proc fcQStateMachine_runningChanged(self: pointer, running: bool): void {.importc: "QStateMachine_runningChanged".}
proc fcQStateMachine_connect_runningChanged(self: pointer, slot: int) {.importc: "QStateMachine_connect_runningChanged".}
proc fcQStateMachine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStateMachine_tr2".}
proc fcQStateMachine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStateMachine_tr3".}
proc fcQStateMachine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStateMachine_trUtf82".}
proc fcQStateMachine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStateMachine_trUtf83".}
proc fcQStateMachine_postEvent2(self: pointer, event: pointer, priority: cint): void {.importc: "QStateMachine_postEvent2".}
type cQStateMachineVTable = object
  destructor*: proc(vtbl: ptr cQStateMachineVTable, self: ptr cQStateMachine) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  onEntry*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  onExit*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  beginSelectTransitions*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  endSelectTransitions*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  beginMicrostep*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  endMicrostep*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStateMachine_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStateMachine_virtualbase_metaObject".}
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
proc fcQStateMachine_new(vtbl: pointer, ): ptr cQStateMachine {.importc: "QStateMachine_new".}
proc fcQStateMachine_new2(vtbl: pointer, childMode: cint): ptr cQStateMachine {.importc: "QStateMachine_new2".}
proc fcQStateMachine_new3(vtbl: pointer, parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new3".}
proc fcQStateMachine_new4(vtbl: pointer, childMode: cint, parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new4".}
proc fcQStateMachine_staticMetaObject(): pointer {.importc: "QStateMachine_staticMetaObject".}
proc fcQStateMachine_delete(self: pointer) {.importc: "QStateMachine_delete".}
proc fcQStateMachineSignalEvent_sender(self: pointer, ): pointer {.importc: "QStateMachine__SignalEvent_sender".}
proc fcQStateMachineSignalEvent_signalIndex(self: pointer, ): cint {.importc: "QStateMachine__SignalEvent_signalIndex".}
proc fcQStateMachineSignalEvent_new(param1: pointer): ptr cQStateMachineSignalEvent {.importc: "QStateMachine__SignalEvent_new".}
proc fcQStateMachineSignalEvent_delete(self: pointer) {.importc: "QStateMachine__SignalEvent_delete".}
proc fcQStateMachineWrappedEvent_objectX(self: pointer, ): pointer {.importc: "QStateMachine__WrappedEvent_object".}
proc fcQStateMachineWrappedEvent_event(self: pointer, ): pointer {.importc: "QStateMachine__WrappedEvent_event".}
proc fcQStateMachineWrappedEvent_new(objectVal: pointer, event: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new".}
proc fcQStateMachineWrappedEvent_new2(param1: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new2".}
proc fcQStateMachineWrappedEvent_delete(self: pointer) {.importc: "QStateMachine__WrappedEvent_delete".}

proc metaObject*(self: gen_qstatemachine_types.QStateMachine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_metaObject(self.h))

proc metacast*(self: gen_qstatemachine_types.QStateMachine, param1: cstring): pointer =
  fcQStateMachine_metacast(self.h, param1)

proc metacall*(self: gen_qstatemachine_types.QStateMachine, param1: cint, param2: cint, param3: pointer): cint =
  fcQStateMachine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstatemachine_types.QStateMachine, s: cstring): string =
  let v_ms = fcQStateMachine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatemachine_types.QStateMachine, s: cstring): string =
  let v_ms = fcQStateMachine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addState*(self: gen_qstatemachine_types.QStateMachine, state: gen_qabstractstate_types.QAbstractState): void =
  fcQStateMachine_addState(self.h, state.h)

proc removeState*(self: gen_qstatemachine_types.QStateMachine, state: gen_qabstractstate_types.QAbstractState): void =
  fcQStateMachine_removeState(self.h, state.h)

proc error*(self: gen_qstatemachine_types.QStateMachine, ): cint =
  cint(fcQStateMachine_error(self.h))

proc errorString*(self: gen_qstatemachine_types.QStateMachine, ): string =
  let v_ms = fcQStateMachine_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearError*(self: gen_qstatemachine_types.QStateMachine, ): void =
  fcQStateMachine_clearError(self.h)

proc isRunning*(self: gen_qstatemachine_types.QStateMachine, ): bool =
  fcQStateMachine_isRunning(self.h)

proc isAnimated*(self: gen_qstatemachine_types.QStateMachine, ): bool =
  fcQStateMachine_isAnimated(self.h)

proc setAnimated*(self: gen_qstatemachine_types.QStateMachine, enabled: bool): void =
  fcQStateMachine_setAnimated(self.h, enabled)

proc addDefaultAnimation*(self: gen_qstatemachine_types.QStateMachine, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQStateMachine_addDefaultAnimation(self.h, animation.h)

proc defaultAnimations*(self: gen_qstatemachine_types.QStateMachine, ): seq[gen_qabstractanimation_types.QAbstractAnimation] =
  var v_ma = fcQStateMachine_defaultAnimations(self.h)
  var vx_ret = newSeq[gen_qabstractanimation_types.QAbstractAnimation](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractanimation_types.QAbstractAnimation(h: v_outCast[i])
  vx_ret

proc removeDefaultAnimation*(self: gen_qstatemachine_types.QStateMachine, animation: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQStateMachine_removeDefaultAnimation(self.h, animation.h)

proc globalRestorePolicy*(self: gen_qstatemachine_types.QStateMachine, ): cint =
  cint(fcQStateMachine_globalRestorePolicy(self.h))

proc setGlobalRestorePolicy*(self: gen_qstatemachine_types.QStateMachine, restorePolicy: cint): void =
  fcQStateMachine_setGlobalRestorePolicy(self.h, cint(restorePolicy))

proc postEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_postEvent(self.h, event.h)

proc postDelayedEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent, delay: cint): cint =
  fcQStateMachine_postDelayedEvent(self.h, event.h, delay)

proc cancelDelayedEvent*(self: gen_qstatemachine_types.QStateMachine, id: cint): bool =
  fcQStateMachine_cancelDelayedEvent(self.h, id)

proc configuration*(self: gen_qstatemachine_types.QStateMachine, ): HashSet[gen_qabstractstate_types.QAbstractState] =
  var v_ma = fcQStateMachine_configuration(self.h)
  vx_ret: HashSet[gen_qabstractstate_types.QAbstractState])
  v_outCast = cast[ptr UncheckedArray[pointer](v_ma.data))
  for i in 0..<v_ma.len:
    vx_ret.incl gen_qabstractstate_types.QAbstractState(h: v_outCast[i])
  vx_ret

proc eventFilter*(self: gen_qstatemachine_types.QStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStateMachine_eventFilter(self.h, watched.h, event.h)

proc start*(self: gen_qstatemachine_types.QStateMachine, ): void =
  fcQStateMachine_start(self.h)

proc stop*(self: gen_qstatemachine_types.QStateMachine, ): void =
  fcQStateMachine_stop(self.h)

proc setRunning*(self: gen_qstatemachine_types.QStateMachine, running: bool): void =
  fcQStateMachine_setRunning(self.h, running)

proc runningChanged*(self: gen_qstatemachine_types.QStateMachine, running: bool): void =
  fcQStateMachine_runningChanged(self.h, running)

type QStateMachinerunningChangedSlot* = proc(running: bool)
proc miqt_exec_callback_cQStateMachine_runningChanged(slot: int, running: bool) {.exportc: "miqt_exec_callback_QStateMachine_runningChanged".} =
  let nimfunc = cast[ptr QStateMachinerunningChangedSlot](cast[pointer](slot))
  let slotval1 = running

  nimfunc[](slotval1)

proc onrunningChanged*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinerunningChangedSlot) =
  var tmp = new QStateMachinerunningChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_connect_runningChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring): string =
  let v_ms = fcQStateMachine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStateMachine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring): string =
  let v_ms = fcQStateMachine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatemachine_types.QStateMachine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStateMachine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QStateMachineVTable* = object
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
proc QStateMachinemetaObject*(self: gen_qstatemachine_types.QStateMachine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQStateMachine_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QStateMachinemetacast*(self: gen_qstatemachine_types.QStateMachine, param1: cstring): pointer =
  fcQStateMachine_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStateMachine_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStateMachinemetacall*(self: gen_qstatemachine_types.QStateMachine, param1: cint, param2: cint, param3: pointer): cint =
  fcQStateMachine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStateMachine_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStateMachineeventFilter*(self: gen_qstatemachine_types.QStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStateMachine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStateMachine_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStateMachineonEntry*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_onEntry(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_onEntry(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onEntry(self, slotval1)

proc QStateMachineonExit*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_onExit(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_onExit(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onExit(self, slotval1)

proc QStateMachinebeginSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_beginSelectTransitions(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_beginSelectTransitions(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].beginSelectTransitions(self, slotval1)

proc QStateMachineendSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_endSelectTransitions(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_endSelectTransitions(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].endSelectTransitions(self, slotval1)

proc QStateMachinebeginMicrostep*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_beginMicrostep(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_beginMicrostep(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].beginMicrostep(self, slotval1)

proc QStateMachineendMicrostep*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_endMicrostep(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_endMicrostep(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].endMicrostep(self, slotval1)

proc QStateMachineevent*(self: gen_qstatemachine_types.QStateMachine, e: gen_qcoreevent_types.QEvent): bool =
  fcQStateMachine_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQStateMachine_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStateMachinetimerEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStateMachine_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QStateMachinechildEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStateMachine_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QStateMachinecustomEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fcQStateMachine_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStateMachine_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QStateMachineconnectNotify*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStateMachine_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStateMachine_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QStateMachinedisconnectNotify*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStateMachine_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStateMachine_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStateMachineVTable](vtbl)
  let self = QStateMachine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateMachineVTable, _: ptr cQStateMachine) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStateMachine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStateMachine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStateMachine_metacall
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStateMachine_eventFilter
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQStateMachine_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQStateMachine_onExit
  if not isNil(vtbl.beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = miqt_exec_callback_cQStateMachine_beginSelectTransitions
  if not isNil(vtbl.endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = miqt_exec_callback_cQStateMachine_endSelectTransitions
  if not isNil(vtbl.beginMicrostep):
    vtbl[].vtbl.beginMicrostep = miqt_exec_callback_cQStateMachine_beginMicrostep
  if not isNil(vtbl.endMicrostep):
    vtbl[].vtbl.endMicrostep = miqt_exec_callback_cQStateMachine_endMicrostep
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStateMachine_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStateMachine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStateMachine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStateMachine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStateMachine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStateMachine_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new(addr(vtbl[]), ))

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    childMode: cint,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateMachineVTable, _: ptr cQStateMachine) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStateMachine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStateMachine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStateMachine_metacall
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStateMachine_eventFilter
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQStateMachine_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQStateMachine_onExit
  if not isNil(vtbl.beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = miqt_exec_callback_cQStateMachine_beginSelectTransitions
  if not isNil(vtbl.endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = miqt_exec_callback_cQStateMachine_endSelectTransitions
  if not isNil(vtbl.beginMicrostep):
    vtbl[].vtbl.beginMicrostep = miqt_exec_callback_cQStateMachine_beginMicrostep
  if not isNil(vtbl.endMicrostep):
    vtbl[].vtbl.endMicrostep = miqt_exec_callback_cQStateMachine_endMicrostep
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStateMachine_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStateMachine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStateMachine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStateMachine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStateMachine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStateMachine_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new2(addr(vtbl[]), cint(childMode)))

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateMachineVTable, _: ptr cQStateMachine) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStateMachine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStateMachine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStateMachine_metacall
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStateMachine_eventFilter
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQStateMachine_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQStateMachine_onExit
  if not isNil(vtbl.beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = miqt_exec_callback_cQStateMachine_beginSelectTransitions
  if not isNil(vtbl.endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = miqt_exec_callback_cQStateMachine_endSelectTransitions
  if not isNil(vtbl.beginMicrostep):
    vtbl[].vtbl.beginMicrostep = miqt_exec_callback_cQStateMachine_beginMicrostep
  if not isNil(vtbl.endMicrostep):
    vtbl[].vtbl.endMicrostep = miqt_exec_callback_cQStateMachine_endMicrostep
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStateMachine_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStateMachine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStateMachine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStateMachine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStateMachine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStateMachine_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qstatemachine_types.QStateMachine,
    childMode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QStateMachineVTable = nil): gen_qstatemachine_types.QStateMachine =
  let vtbl = if vtbl == nil: new QStateMachineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStateMachineVTable, _: ptr cQStateMachine) {.cdecl.} =
    let vtbl = cast[ref QStateMachineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStateMachine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStateMachine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStateMachine_metacall
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStateMachine_eventFilter
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQStateMachine_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQStateMachine_onExit
  if not isNil(vtbl.beginSelectTransitions):
    vtbl[].vtbl.beginSelectTransitions = miqt_exec_callback_cQStateMachine_beginSelectTransitions
  if not isNil(vtbl.endSelectTransitions):
    vtbl[].vtbl.endSelectTransitions = miqt_exec_callback_cQStateMachine_endSelectTransitions
  if not isNil(vtbl.beginMicrostep):
    vtbl[].vtbl.beginMicrostep = miqt_exec_callback_cQStateMachine_beginMicrostep
  if not isNil(vtbl.endMicrostep):
    vtbl[].vtbl.endMicrostep = miqt_exec_callback_cQStateMachine_endMicrostep
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStateMachine_event
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStateMachine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStateMachine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStateMachine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStateMachine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStateMachine_disconnectNotify
  gen_qstatemachine_types.QStateMachine(h: fcQStateMachine_new4(addr(vtbl[]), cint(childMode), parent.h))

proc staticMetaObject*(_: type gen_qstatemachine_types.QStateMachine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_staticMetaObject())
proc delete*(self: gen_qstatemachine_types.QStateMachine) =
  fcQStateMachine_delete(self.h)
proc sender*(self: gen_qstatemachine_types.QStateMachineSignalEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachineSignalEvent_sender(self.h))

proc signalIndex*(self: gen_qstatemachine_types.QStateMachineSignalEvent, ): cint =
  fcQStateMachineSignalEvent_signalIndex(self.h)

proc create*(T: type gen_qstatemachine_types.QStateMachineSignalEvent,
    param1: gen_qstatemachine_types.QStateMachineSignalEvent): gen_qstatemachine_types.QStateMachineSignalEvent =
  gen_qstatemachine_types.QStateMachineSignalEvent(h: fcQStateMachineSignalEvent_new(param1.h))

proc delete*(self: gen_qstatemachine_types.QStateMachineSignalEvent) =
  fcQStateMachineSignalEvent_delete(self.h)
proc objectX*(self: gen_qstatemachine_types.QStateMachineWrappedEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachineWrappedEvent_objectX(self.h))

proc event*(self: gen_qstatemachine_types.QStateMachineWrappedEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQStateMachineWrappedEvent_event(self.h))

proc create*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent,
    objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  gen_qstatemachine_types.QStateMachineWrappedEvent(h: fcQStateMachineWrappedEvent_new(objectVal.h, event.h))

proc create*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent,
    param1: gen_qstatemachine_types.QStateMachineWrappedEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  gen_qstatemachine_types.QStateMachineWrappedEvent(h: fcQStateMachineWrappedEvent_new2(param1.h))

proc delete*(self: gen_qstatemachine_types.QStateMachineWrappedEvent) =
  fcQStateMachineWrappedEvent_delete(self.h)
