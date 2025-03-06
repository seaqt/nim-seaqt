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

proc fcQState_new(): ptr cQState {.importc: "QState_new".}
proc fcQState_new2(childMode: cint): ptr cQState {.importc: "QState_new2".}
proc fcQState_new3(parent: pointer): ptr cQState {.importc: "QState_new3".}
proc fcQState_new4(childMode: cint, parent: pointer): ptr cQState {.importc: "QState_new4".}
proc fcQState_metaObject(self: pointer, ): pointer {.importc: "QState_metaObject".}
proc fcQState_metacast(self: pointer, param1: cstring): pointer {.importc: "QState_metacast".}
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
proc fQState_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QState_virtualbase_onEntry".}
proc fcQState_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QState_override_virtual_onEntry".}
proc fQState_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QState_virtualbase_onExit".}
proc fcQState_override_virtual_onExit(self: pointer, slot: int) {.importc: "QState_override_virtual_onExit".}
proc fQState_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QState_virtualbase_event".}
proc fcQState_override_virtual_event(self: pointer, slot: int) {.importc: "QState_override_virtual_event".}
proc fQState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QState_virtualbase_eventFilter".}
proc fcQState_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QState_override_virtual_eventFilter".}
proc fQState_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QState_virtualbase_timerEvent".}
proc fcQState_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QState_override_virtual_timerEvent".}
proc fQState_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QState_virtualbase_childEvent".}
proc fcQState_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QState_override_virtual_childEvent".}
proc fQState_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QState_virtualbase_customEvent".}
proc fcQState_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QState_override_virtual_customEvent".}
proc fQState_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QState_virtualbase_connectNotify".}
proc fcQState_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QState_override_virtual_connectNotify".}
proc fQState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QState_virtualbase_disconnectNotify".}
proc fcQState_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QState_override_virtual_disconnectNotify".}
proc fcQState_delete(self: pointer) {.importc: "QState_delete".}


func init*(T: type gen_qstate_types.QState, h: ptr cQState): gen_qstate_types.QState =
  T(h: h)
proc create*(T: type gen_qstate_types.QState, ): gen_qstate_types.QState =
  gen_qstate_types.QState.init(fcQState_new())

proc create*(T: type gen_qstate_types.QState, childMode: cint): gen_qstate_types.QState =
  gen_qstate_types.QState.init(fcQState_new2(cint(childMode)))

proc create*(T: type gen_qstate_types.QState, parent: gen_qstate_types.QState): gen_qstate_types.QState =
  gen_qstate_types.QState.init(fcQState_new3(parent.h))

proc create*(T: type gen_qstate_types.QState, childMode: cint, parent: gen_qstate_types.QState): gen_qstate_types.QState =
  gen_qstate_types.QState.init(fcQState_new4(cint(childMode), parent.h))

proc metaObject*(self: gen_qstate_types.QState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQState_metaObject(self.h))

proc metacast*(self: gen_qstate_types.QState, param1: cstring): pointer =
  fcQState_metacast(self.h, param1)

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

proc QStateonEntry*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fQState_virtualbase_onEntry(self.h, event.h)

type QStateonEntryProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononEntry*(self: gen_qstate_types.QState, slot: QStateonEntryProc) =
  # TODO check subclass
  var tmp = new QStateonEntryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_onEntry(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_onEntry ".} =
  var nimfunc = cast[ptr QStateonEntryProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateonExit*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fQState_virtualbase_onExit(self.h, event.h)

type QStateonExitProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc ononExit*(self: gen_qstate_types.QState, slot: QStateonExitProc) =
  # TODO check subclass
  var tmp = new QStateonExitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_onExit(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_onExit ".} =
  var nimfunc = cast[ptr QStateonExitProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateevent*(self: gen_qstate_types.QState, e: gen_qcoreevent_types.QEvent): bool =
  fQState_virtualbase_event(self.h, e.h)

type QStateeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstate_types.QState, slot: QStateeventProc) =
  # TODO check subclass
  var tmp = new QStateeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_event(self: ptr cQState, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QState_event ".} =
  var nimfunc = cast[ptr QStateeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStateeventFilter*(self: gen_qstate_types.QState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQState_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStateeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstate_types.QState, slot: QStateeventFilterProc) =
  # TODO check subclass
  var tmp = new QStateeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_eventFilter(self: ptr cQState, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QState_eventFilter ".} =
  var nimfunc = cast[ptr QStateeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStatetimerEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QTimerEvent): void =
  fQState_virtualbase_timerEvent(self.h, event.h)

type QStatetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstate_types.QState, slot: QStatetimerEventProc) =
  # TODO check subclass
  var tmp = new QStatetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_timerEvent(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_timerEvent ".} =
  var nimfunc = cast[ptr QStatetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStatechildEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QChildEvent): void =
  fQState_virtualbase_childEvent(self.h, event.h)

type QStatechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstate_types.QState, slot: QStatechildEventProc) =
  # TODO check subclass
  var tmp = new QStatechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_childEvent(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_childEvent ".} =
  var nimfunc = cast[ptr QStatechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStatecustomEvent*(self: gen_qstate_types.QState, event: gen_qcoreevent_types.QEvent): void =
  fQState_virtualbase_customEvent(self.h, event.h)

type QStatecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstate_types.QState, slot: QStatecustomEventProc) =
  # TODO check subclass
  var tmp = new QStatecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_customEvent(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_customEvent ".} =
  var nimfunc = cast[ptr QStatecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStateconnectNotify*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQState_virtualbase_connectNotify(self.h, signal.h)

type QStateconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstate_types.QState, slot: QStateconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStateconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_connectNotify(self: ptr cQState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QState_connectNotify ".} =
  var nimfunc = cast[ptr QStateconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStatedisconnectNotify*(self: gen_qstate_types.QState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQState_virtualbase_disconnectNotify(self.h, signal.h)

type QStatedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstate_types.QState, slot: QStatedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStatedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_disconnectNotify(self: ptr cQState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QState_disconnectNotify ".} =
  var nimfunc = cast[ptr QStatedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qstate_types.QState) =
  fcQState_delete(self.h)
