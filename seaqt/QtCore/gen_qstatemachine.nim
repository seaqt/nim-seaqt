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

proc fcQStateMachine_new(): ptr cQStateMachine {.importc: "QStateMachine_new".}
proc fcQStateMachine_new2(childMode: cint): ptr cQStateMachine {.importc: "QStateMachine_new2".}
proc fcQStateMachine_new3(parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new3".}
proc fcQStateMachine_new4(childMode: cint, parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new4".}
proc fcQStateMachine_metaObject(self: pointer, ): pointer {.importc: "QStateMachine_metaObject".}
proc fcQStateMachine_metacast(self: pointer, param1: cstring): pointer {.importc: "QStateMachine_metacast".}
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
proc fQStateMachine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStateMachine_virtualbase_eventFilter".}
proc fcQStateMachine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_eventFilter".}
proc fQStateMachine_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_onEntry".}
proc fcQStateMachine_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_onEntry".}
proc fQStateMachine_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_onExit".}
proc fcQStateMachine_override_virtual_onExit(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_onExit".}
proc fQStateMachine_virtualbase_beginSelectTransitions(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_beginSelectTransitions".}
proc fcQStateMachine_override_virtual_beginSelectTransitions(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_beginSelectTransitions".}
proc fQStateMachine_virtualbase_endSelectTransitions(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_endSelectTransitions".}
proc fcQStateMachine_override_virtual_endSelectTransitions(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_endSelectTransitions".}
proc fQStateMachine_virtualbase_beginMicrostep(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_beginMicrostep".}
proc fcQStateMachine_override_virtual_beginMicrostep(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_beginMicrostep".}
proc fQStateMachine_virtualbase_endMicrostep(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_endMicrostep".}
proc fcQStateMachine_override_virtual_endMicrostep(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_endMicrostep".}
proc fQStateMachine_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QStateMachine_virtualbase_event".}
proc fcQStateMachine_override_virtual_event(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_event".}
proc fQStateMachine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_timerEvent".}
proc fcQStateMachine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_timerEvent".}
proc fQStateMachine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_childEvent".}
proc fcQStateMachine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_childEvent".}
proc fQStateMachine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_customEvent".}
proc fcQStateMachine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_customEvent".}
proc fQStateMachine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStateMachine_virtualbase_connectNotify".}
proc fcQStateMachine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_connectNotify".}
proc fQStateMachine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStateMachine_virtualbase_disconnectNotify".}
proc fcQStateMachine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_disconnectNotify".}
proc fcQStateMachine_delete(self: pointer) {.importc: "QStateMachine_delete".}
proc fcQStateMachineSignalEvent_new(param1: pointer): ptr cQStateMachineSignalEvent {.importc: "QStateMachine__SignalEvent_new".}
proc fcQStateMachineSignalEvent_sender(self: pointer, ): pointer {.importc: "QStateMachine__SignalEvent_sender".}
proc fcQStateMachineSignalEvent_signalIndex(self: pointer, ): cint {.importc: "QStateMachine__SignalEvent_signalIndex".}
proc fcQStateMachineSignalEvent_delete(self: pointer) {.importc: "QStateMachine__SignalEvent_delete".}
proc fcQStateMachineWrappedEvent_new(objectVal: pointer, event: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new".}
proc fcQStateMachineWrappedEvent_new2(param1: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new2".}
proc fcQStateMachineWrappedEvent_objectX(self: pointer, ): pointer {.importc: "QStateMachine__WrappedEvent_object".}
proc fcQStateMachineWrappedEvent_event(self: pointer, ): pointer {.importc: "QStateMachine__WrappedEvent_event".}
proc fcQStateMachineWrappedEvent_delete(self: pointer) {.importc: "QStateMachine__WrappedEvent_delete".}


func init*(T: type gen_qstatemachine_types.QStateMachine, h: ptr cQStateMachine): gen_qstatemachine_types.QStateMachine =
  T(h: h)
proc create*(T: type gen_qstatemachine_types.QStateMachine, ): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine.init(fcQStateMachine_new())

proc create*(T: type gen_qstatemachine_types.QStateMachine, childMode: cint): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine.init(fcQStateMachine_new2(cint(childMode)))

proc create*(T: type gen_qstatemachine_types.QStateMachine, parent: gen_qobject_types.QObject): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine.init(fcQStateMachine_new3(parent.h))

proc create*(T: type gen_qstatemachine_types.QStateMachine, childMode: cint, parent: gen_qobject_types.QObject): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine.init(fcQStateMachine_new4(cint(childMode), parent.h))

proc metaObject*(self: gen_qstatemachine_types.QStateMachine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStateMachine_metaObject(self.h))

proc metacast*(self: gen_qstatemachine_types.QStateMachine, param1: cstring): pointer =
  fcQStateMachine_metacast(self.h, param1)

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
proc miqt_exec_callback_QStateMachine_runningChanged(slot: int, running: bool) {.exportc.} =
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

proc QStateMachineeventFilter*(self: gen_qstatemachine_types.QStateMachine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStateMachine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStateMachineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineeventFilterProc) =
  # TODO check subclass
  var tmp = new QStateMachineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_eventFilter(self: ptr cQStateMachine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStateMachine_eventFilter ".} =
  var nimfunc = cast[ptr QStateMachineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStateMachineonEntry*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_onEntry(self.h, event.h)

type QStateMachineonEntryProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononEntry*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineonEntryProc) =
  # TODO check subclass
  var tmp = new QStateMachineonEntryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_onEntry(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_onEntry ".} =
  var nimfunc = cast[ptr QStateMachineonEntryProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachineonExit*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_onExit(self.h, event.h)

type QStateMachineonExitProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononExit*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineonExitProc) =
  # TODO check subclass
  var tmp = new QStateMachineonExitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_onExit(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_onExit ".} =
  var nimfunc = cast[ptr QStateMachineonExitProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachinebeginSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_beginSelectTransitions(self.h, event.h)

type QStateMachinebeginSelectTransitionsProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onbeginSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinebeginSelectTransitionsProc) =
  # TODO check subclass
  var tmp = new QStateMachinebeginSelectTransitionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_beginSelectTransitions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_beginSelectTransitions(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_beginSelectTransitions ".} =
  var nimfunc = cast[ptr QStateMachinebeginSelectTransitionsProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachineendSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_endSelectTransitions(self.h, event.h)

type QStateMachineendSelectTransitionsProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onendSelectTransitions*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineendSelectTransitionsProc) =
  # TODO check subclass
  var tmp = new QStateMachineendSelectTransitionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_endSelectTransitions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_endSelectTransitions(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_endSelectTransitions ".} =
  var nimfunc = cast[ptr QStateMachineendSelectTransitionsProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachinebeginMicrostep*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_beginMicrostep(self.h, event.h)

type QStateMachinebeginMicrostepProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onbeginMicrostep*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinebeginMicrostepProc) =
  # TODO check subclass
  var tmp = new QStateMachinebeginMicrostepProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_beginMicrostep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_beginMicrostep(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_beginMicrostep ".} =
  var nimfunc = cast[ptr QStateMachinebeginMicrostepProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachineendMicrostep*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_endMicrostep(self.h, event.h)

type QStateMachineendMicrostepProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onendMicrostep*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineendMicrostepProc) =
  # TODO check subclass
  var tmp = new QStateMachineendMicrostepProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_endMicrostep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_endMicrostep(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_endMicrostep ".} =
  var nimfunc = cast[ptr QStateMachineendMicrostepProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachineevent*(self: gen_qstatemachine_types.QStateMachine, e: gen_qcoreevent_types.QEvent): bool =
  fQStateMachine_virtualbase_event(self.h, e.h)

type QStateMachineeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineeventProc) =
  # TODO check subclass
  var tmp = new QStateMachineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_event(self: ptr cQStateMachine, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QStateMachine_event ".} =
  var nimfunc = cast[ptr QStateMachineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStateMachinetimerEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStateMachine_virtualbase_timerEvent(self.h, event.h)

type QStateMachinetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinetimerEventProc) =
  # TODO check subclass
  var tmp = new QStateMachinetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_timerEvent(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_timerEvent ".} =
  var nimfunc = cast[ptr QStateMachinetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachinechildEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QChildEvent): void =
  fQStateMachine_virtualbase_childEvent(self.h, event.h)

type QStateMachinechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinechildEventProc) =
  # TODO check subclass
  var tmp = new QStateMachinechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_childEvent(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_childEvent ".} =
  var nimfunc = cast[ptr QStateMachinechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachinecustomEvent*(self: gen_qstatemachine_types.QStateMachine, event: gen_qcoreevent_types.QEvent): void =
  fQStateMachine_virtualbase_customEvent(self.h, event.h)

type QStateMachinecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinecustomEventProc) =
  # TODO check subclass
  var tmp = new QStateMachinecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_customEvent(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_customEvent ".} =
  var nimfunc = cast[ptr QStateMachinecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateMachineconnectNotify*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStateMachine_virtualbase_connectNotify(self.h, signal.h)

type QStateMachineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStateMachineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_connectNotify(self: ptr cQStateMachine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_connectNotify ".} =
  var nimfunc = cast[ptr QStateMachineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStateMachinedisconnectNotify*(self: gen_qstatemachine_types.QStateMachine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStateMachine_virtualbase_disconnectNotify(self.h, signal.h)

type QStateMachinedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstatemachine_types.QStateMachine, slot: QStateMachinedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStateMachinedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_disconnectNotify(self: ptr cQStateMachine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_disconnectNotify ".} =
  var nimfunc = cast[ptr QStateMachinedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qstatemachine_types.QStateMachine) =
  fcQStateMachine_delete(self.h)

func init*(T: type gen_qstatemachine_types.QStateMachineSignalEvent, h: ptr cQStateMachineSignalEvent): gen_qstatemachine_types.QStateMachineSignalEvent =
  T(h: h)
proc create*(T: type gen_qstatemachine_types.QStateMachineSignalEvent, param1: gen_qstatemachine_types.QStateMachineSignalEvent): gen_qstatemachine_types.QStateMachineSignalEvent =
  gen_qstatemachine_types.QStateMachineSignalEvent.init(fcQStateMachineSignalEvent_new(param1.h))

proc sender*(self: gen_qstatemachine_types.QStateMachineSignalEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachineSignalEvent_sender(self.h))

proc signalIndex*(self: gen_qstatemachine_types.QStateMachineSignalEvent, ): cint =
  fcQStateMachineSignalEvent_signalIndex(self.h)

proc delete*(self: gen_qstatemachine_types.QStateMachineSignalEvent) =
  fcQStateMachineSignalEvent_delete(self.h)

func init*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent, h: ptr cQStateMachineWrappedEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  T(h: h)
proc create*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  gen_qstatemachine_types.QStateMachineWrappedEvent.init(fcQStateMachineWrappedEvent_new(objectVal.h, event.h))

proc create*(T: type gen_qstatemachine_types.QStateMachineWrappedEvent, param1: gen_qstatemachine_types.QStateMachineWrappedEvent): gen_qstatemachine_types.QStateMachineWrappedEvent =
  gen_qstatemachine_types.QStateMachineWrappedEvent.init(fcQStateMachineWrappedEvent_new2(param1.h))

proc objectX*(self: gen_qstatemachine_types.QStateMachineWrappedEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStateMachineWrappedEvent_objectX(self.h))

proc event*(self: gen_qstatemachine_types.QStateMachineWrappedEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQStateMachineWrappedEvent_event(self.h))

proc delete*(self: gen_qstatemachine_types.QStateMachineWrappedEvent) =
  fcQStateMachineWrappedEvent_delete(self.h)
