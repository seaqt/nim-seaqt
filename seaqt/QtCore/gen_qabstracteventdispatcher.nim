import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


import ./gen_qabstracteventdispatcher_types
export gen_qabstracteventdispatcher_types

import
  ./gen_qabstractnativeeventfilter_types,
  ./gen_qdeadlinetimer_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qsocketnotifier_types,
  ./gen_qthread_types
export
  gen_qabstractnativeeventfilter_types,
  gen_qdeadlinetimer_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsocketnotifier_types,
  gen_qthread_types

type cQAbstractEventDispatcher*{.exportc: "QAbstractEventDispatcher", incompleteStruct.} = object
type cQAbstractEventDispatcherV2*{.exportc: "QAbstractEventDispatcherV2", incompleteStruct.} = object
type cQAbstractEventDispatcherTimerInfo*{.exportc: "QAbstractEventDispatcher__TimerInfo", incompleteStruct.} = object
type cQAbstractEventDispatcherTimerInfoV2*{.exportc: "QAbstractEventDispatcher__TimerInfoV2", incompleteStruct.} = object

proc fcQAbstractEventDispatcher_metaObject(self: pointer): pointer {.importc: "QAbstractEventDispatcher_metaObject".}
proc fcQAbstractEventDispatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractEventDispatcher_metacast".}
proc fcQAbstractEventDispatcher_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractEventDispatcher_metacall".}
proc fcQAbstractEventDispatcher_trS(s: cstring): struct_seaqt_string {.importc: "QAbstractEventDispatcher_tr_s".}
proc fcQAbstractEventDispatcher_instance(): pointer {.importc: "QAbstractEventDispatcher_instance".}
proc fcQAbstractEventDispatcher_processEvents(self: pointer, flags: cint): bool {.importc: "QAbstractEventDispatcher_processEvents".}
proc fcQAbstractEventDispatcher_registerSocketNotifier(self: pointer, notifier: pointer): void {.importc: "QAbstractEventDispatcher_registerSocketNotifier".}
proc fcQAbstractEventDispatcher_unregisterSocketNotifier(self: pointer, notifier: pointer): void {.importc: "QAbstractEventDispatcher_unregisterSocketNotifier".}
proc fcQAbstractEventDispatcher_registerTimerQint64_Qt_TimerType_QObject(self: pointer, interval: clonglong, timerType: cint, objectVal: pointer): cint {.importc: "QAbstractEventDispatcher_registerTimer_qint64_Qt_TimerType_QObject".}
proc fcQAbstractEventDispatcher_registerTimerIntQint64_Qt_TimerType_QObject(self: pointer, timerId: cint, interval: clonglong, timerType: cint, objectVal: pointer): void {.importc: "QAbstractEventDispatcher_registerTimer_int_qint64_Qt_TimerType_QObject".}
proc fcQAbstractEventDispatcher_unregisterTimerInt(self: pointer, timerId: cint): bool {.importc: "QAbstractEventDispatcher_unregisterTimer_int".}
proc fcQAbstractEventDispatcher_unregisterTimers(self: pointer, objectVal: pointer): bool {.importc: "QAbstractEventDispatcher_unregisterTimers".}
proc fcQAbstractEventDispatcher_registeredTimers(self: pointer, objectVal: pointer): struct_seaqt_array {.importc: "QAbstractEventDispatcher_registeredTimers".}
proc fcQAbstractEventDispatcher_remainingTimeInt(self: pointer, timerId: cint): cint {.importc: "QAbstractEventDispatcher_remainingTime_int".}
proc fcQAbstractEventDispatcher_unregisterTimer_Qt_TimerId(self: pointer, timerId: cint): bool {.importc: "QAbstractEventDispatcher_unregisterTimer_Qt_TimerId".}
proc fcQAbstractEventDispatcher_timersForObject(self: pointer, objectVal: pointer): struct_seaqt_array {.importc: "QAbstractEventDispatcher_timersForObject".}
proc fcQAbstractEventDispatcher_wakeUp(self: pointer): void {.importc: "QAbstractEventDispatcher_wakeUp".}
proc fcQAbstractEventDispatcher_interrupt(self: pointer): void {.importc: "QAbstractEventDispatcher_interrupt".}
proc fcQAbstractEventDispatcher_startingUp(self: pointer): void {.importc: "QAbstractEventDispatcher_startingUp".}
proc fcQAbstractEventDispatcher_closingDown(self: pointer): void {.importc: "QAbstractEventDispatcher_closingDown".}
proc fcQAbstractEventDispatcher_installNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QAbstractEventDispatcher_installNativeEventFilter".}
proc fcQAbstractEventDispatcher_removeNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QAbstractEventDispatcher_removeNativeEventFilter".}
proc fcQAbstractEventDispatcher_filterNativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QAbstractEventDispatcher_filterNativeEvent".}
proc fcQAbstractEventDispatcher_aboutToBlock(self: pointer): void {.importc: "QAbstractEventDispatcher_aboutToBlock".}
proc fcQAbstractEventDispatcher_connect_aboutToBlock(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractEventDispatcher_connect_aboutToBlock".}
proc fcQAbstractEventDispatcher_awake(self: pointer): void {.importc: "QAbstractEventDispatcher_awake".}
proc fcQAbstractEventDispatcher_connect_awake(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractEventDispatcher_connect_awake".}
proc fcQAbstractEventDispatcher_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QAbstractEventDispatcher_tr_s_c".}
proc fcQAbstractEventDispatcher_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QAbstractEventDispatcher_tr_s_c_n".}
proc fcQAbstractEventDispatcher_instanceThread(thread: pointer): pointer {.importc: "QAbstractEventDispatcher_instance_thread".}
proc fcQAbstractEventDispatcher_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractEventDispatcher_protectedbase_sender".}
proc fcQAbstractEventDispatcher_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractEventDispatcher_protectedbase_senderSignalIndex".}
proc fcQAbstractEventDispatcher_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractEventDispatcher_protectedbase_receivers".}
proc fcQAbstractEventDispatcher_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractEventDispatcher_protectedbase_isSignalConnected".}
proc fcQAbstractEventDispatcher_staticMetaObject(): pointer {.importc: "QAbstractEventDispatcher_staticMetaObject".}
proc fcQAbstractEventDispatcherV2_metaObject(self: pointer): pointer {.importc: "QAbstractEventDispatcherV2_metaObject".}
proc fcQAbstractEventDispatcherV2_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractEventDispatcherV2_metacast".}
proc fcQAbstractEventDispatcherV2_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractEventDispatcherV2_metacall".}
proc fcQAbstractEventDispatcherV2_trS(s: cstring): struct_seaqt_string {.importc: "QAbstractEventDispatcherV2_tr_s".}
proc fcQAbstractEventDispatcherV2_unregisterTimer(self: pointer, timerId: cint): bool {.importc: "QAbstractEventDispatcherV2_unregisterTimer".}
proc fcQAbstractEventDispatcherV2_timersForObject(self: pointer, objectVal: pointer): struct_seaqt_array {.importc: "QAbstractEventDispatcherV2_timersForObject".}
proc fcQAbstractEventDispatcherV2_processEventsWithDeadline(self: pointer, flags: cint, deadline: pointer): bool {.importc: "QAbstractEventDispatcherV2_processEventsWithDeadline".}
proc fcQAbstractEventDispatcherV2_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QAbstractEventDispatcherV2_tr_s_c".}
proc fcQAbstractEventDispatcherV2_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QAbstractEventDispatcherV2_tr_s_c_n".}
proc fcQAbstractEventDispatcherV2_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractEventDispatcherV2_protectedbase_sender".}
proc fcQAbstractEventDispatcherV2_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractEventDispatcherV2_protectedbase_senderSignalIndex".}
proc fcQAbstractEventDispatcherV2_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractEventDispatcherV2_protectedbase_receivers".}
proc fcQAbstractEventDispatcherV2_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractEventDispatcherV2_protectedbase_isSignalConnected".}
proc fcQAbstractEventDispatcherV2_staticMetaObject(): pointer {.importc: "QAbstractEventDispatcherV2_staticMetaObject".}
proc fcQAbstractEventDispatcherTimerInfo_timerId(self: pointer): cint {.importc: "QAbstractEventDispatcher__TimerInfo_timerId".}
proc fcQAbstractEventDispatcherTimerInfo_setTimerId(self: pointer, timerId: cint): void {.importc: "QAbstractEventDispatcher__TimerInfo_setTimerId".}
proc fcQAbstractEventDispatcherTimerInfo_interval(self: pointer): cint {.importc: "QAbstractEventDispatcher__TimerInfo_interval".}
proc fcQAbstractEventDispatcherTimerInfo_setInterval(self: pointer, interval: cint): void {.importc: "QAbstractEventDispatcher__TimerInfo_setInterval".}
proc fcQAbstractEventDispatcherTimerInfo_timerType(self: pointer): cint {.importc: "QAbstractEventDispatcher__TimerInfo_timerType".}
proc fcQAbstractEventDispatcherTimerInfo_setTimerType(self: pointer, timerType: cint): void {.importc: "QAbstractEventDispatcher__TimerInfo_setTimerType".}
proc fcQAbstractEventDispatcherTimerInfo_new(id: cint, i: cint, t: cint): ptr cQAbstractEventDispatcherTimerInfo {.importc: "QAbstractEventDispatcher__TimerInfo_new_id_i_t".}
proc fcQAbstractEventDispatcherTimerInfo_new2(fromVal: pointer): ptr cQAbstractEventDispatcherTimerInfo {.importc: "QAbstractEventDispatcher__TimerInfo_new_from".}
proc fcQAbstractEventDispatcherTimerInfoV2_timerId(self: pointer): cint {.importc: "QAbstractEventDispatcher__TimerInfoV2_timerId".}
proc fcQAbstractEventDispatcherTimerInfoV2_setTimerId(self: pointer, timerId: cint): void {.importc: "QAbstractEventDispatcher__TimerInfoV2_setTimerId".}
proc fcQAbstractEventDispatcherTimerInfoV2_timerType(self: pointer): cint {.importc: "QAbstractEventDispatcher__TimerInfoV2_timerType".}
proc fcQAbstractEventDispatcherTimerInfoV2_setTimerType(self: pointer, timerType: cint): void {.importc: "QAbstractEventDispatcher__TimerInfoV2_setTimerType".}
proc fcQAbstractEventDispatcherTimerInfoV2_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QAbstractEventDispatcher__TimerInfoV2_operatorAssign".}
proc fcQAbstractEventDispatcherTimerInfoV2_new(fromVal: pointer): ptr cQAbstractEventDispatcherTimerInfoV2 {.importc: "QAbstractEventDispatcher__TimerInfoV2_new_from".}
proc fcQAbstractEventDispatcherTimerInfoV2_new2(): ptr cQAbstractEventDispatcherTimerInfoV2 {.importc: "QAbstractEventDispatcher__TimerInfoV2_new".}

proc metaObject*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractEventDispatcher_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, param1: cstring): pointer =
  fcQAbstractEventDispatcher_metacast(self.h, param1)

proc metacall*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractEventDispatcher_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, s: cstring): string =
  let v_ms = fcQAbstractEventDispatcher_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc instance*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQAbstractEventDispatcher_instance(), owned: false)

proc processEvents*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, flags: cint): bool =
  fcQAbstractEventDispatcher_processEvents(self.h, cint(flags))

proc registerSocketNotifier*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, notifier: gen_qsocketnotifier_types.QSocketNotifier): void =
  fcQAbstractEventDispatcher_registerSocketNotifier(self.h, notifier.h)

proc unregisterSocketNotifier*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, notifier: gen_qsocketnotifier_types.QSocketNotifier): void =
  fcQAbstractEventDispatcher_unregisterSocketNotifier(self.h, notifier.h)

proc registerTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, interval: clonglong, timerType: cint, objectVal: gen_qobject_types.QObject): cint =
  fcQAbstractEventDispatcher_registerTimerQint64_Qt_TimerType_QObject(self.h, interval, cint(timerType), objectVal.h)

proc registerTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint, interval: clonglong, timerType: cint, objectVal: gen_qobject_types.QObject): void =
  fcQAbstractEventDispatcher_registerTimerIntQint64_Qt_TimerType_QObject(self.h, timerId, interval, cint(timerType), objectVal.h)

proc unregisterTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint): bool =
  fcQAbstractEventDispatcher_unregisterTimerInt(self.h, timerId)

proc unregisterTimers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, objectVal: gen_qobject_types.QObject): bool =
  fcQAbstractEventDispatcher_unregisterTimers(self.h, objectVal.h)

proc registeredTimers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, objectVal: gen_qobject_types.QObject): seq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo] =
  var v_ma = fcQAbstractEventDispatcher_registeredTimers(self.h, objectVal.h)
  var vx_ret = newSeq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc remainingTime*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint): cint =
  fcQAbstractEventDispatcher_remainingTimeInt(self.h, timerId)

proc unregisterTimer2*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint): bool =
  fcQAbstractEventDispatcher_unregisterTimer_Qt_TimerId(self.h, cint(timerId))

proc timersForObject*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, objectVal: gen_qobject_types.QObject): seq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2] =
  var v_ma = fcQAbstractEventDispatcher_timersForObject(self.h, objectVal.h)
  var vx_ret = newSeq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc wakeUp*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQAbstractEventDispatcher_wakeUp(self.h)

proc interrupt*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQAbstractEventDispatcher_interrupt(self.h)

proc startingUp*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQAbstractEventDispatcher_startingUp(self.h)

proc closingDown*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQAbstractEventDispatcher_closingDown(self.h)

proc installNativeEventFilter*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQAbstractEventDispatcher_installNativeEventFilter(self.h, filterObj.h)

proc removeNativeEventFilter*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQAbstractEventDispatcher_removeNativeEventFilter(self.h, filterObj.h)

proc filterNativeEvent*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQAbstractEventDispatcher_filterNativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc aboutToBlock*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQAbstractEventDispatcher_aboutToBlock(self.h)

type QAbstractEventDispatcheraboutToBlockSlot* = proc()
proc fcQAbstractEventDispatcher_slot_callback_aboutToBlock(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractEventDispatcheraboutToBlockSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractEventDispatcher_slot_callback_aboutToBlock_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractEventDispatcheraboutToBlockSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAboutToBlock*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, slot: QAbstractEventDispatcheraboutToBlockSlot) =
  var tmp = new QAbstractEventDispatcheraboutToBlockSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractEventDispatcher_connect_aboutToBlock(self.h, cast[int](addr tmp[]), fcQAbstractEventDispatcher_slot_callback_aboutToBlock, fcQAbstractEventDispatcher_slot_callback_aboutToBlock_release)

proc awake*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQAbstractEventDispatcher_awake(self.h)

type QAbstractEventDispatcherawakeSlot* = proc()
proc fcQAbstractEventDispatcher_slot_callback_awake(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractEventDispatcherawakeSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractEventDispatcher_slot_callback_awake_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractEventDispatcherawakeSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAwake*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, slot: QAbstractEventDispatcherawakeSlot) =
  var tmp = new QAbstractEventDispatcherawakeSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractEventDispatcher_connect_awake(self.h, cast[int](addr tmp[]), fcQAbstractEventDispatcher_slot_callback_awake, fcQAbstractEventDispatcher_slot_callback_awake_release)

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractEventDispatcher_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractEventDispatcher_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc instance*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, thread: gen_qthread_types.QThread): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQAbstractEventDispatcher_instanceThread(thread.h), owned: false)

proc sender*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractEventDispatcher_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): cint =
  fcQAbstractEventDispatcher_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, signal: cstring): cint =
  fcQAbstractEventDispatcher_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractEventDispatcher_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractEventDispatcher_staticMetaObject())
proc metaObject*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractEventDispatcherV2_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, param1: cstring): pointer =
  fcQAbstractEventDispatcherV2_metacast(self.h, param1)

proc metacall*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractEventDispatcherV2_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, s: cstring): string =
  let v_ms = fcQAbstractEventDispatcherV2_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc unregisterTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, timerId: cint): bool =
  fcQAbstractEventDispatcherV2_unregisterTimer(self.h, cint(timerId))

proc timersForObject*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, objectVal: gen_qobject_types.QObject): seq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2] =
  var v_ma = fcQAbstractEventDispatcherV2_timersForObject(self.h, objectVal.h)
  var vx_ret = newSeq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc processEventsWithDeadline*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, flags: cint, deadline: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQAbstractEventDispatcherV2_processEventsWithDeadline(self.h, cint(flags), deadline.h)

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractEventDispatcherV2_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractEventDispatcherV2_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractEventDispatcherV2_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2): cint =
  fcQAbstractEventDispatcherV2_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, signal: cstring): cint =
  fcQAbstractEventDispatcherV2_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractEventDispatcherV2_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherV2): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractEventDispatcherV2_staticMetaObject())
proc timerId*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo): cint =
  fcQAbstractEventDispatcherTimerInfo_timerId(self.h)

proc setTimerId*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo, timerId: cint): void =
  fcQAbstractEventDispatcherTimerInfo_setTimerId(self.h, timerId)

proc interval*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo): cint =
  fcQAbstractEventDispatcherTimerInfo_interval(self.h)

proc setInterval*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo, interval: cint): void =
  fcQAbstractEventDispatcherTimerInfo_setInterval(self.h, interval)

proc timerType*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo): cint =
  cint(fcQAbstractEventDispatcherTimerInfo_timerType(self.h))

proc setTimerType*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo, timerType: cint): void =
  fcQAbstractEventDispatcherTimerInfo_setTimerType(self.h, cint(timerType))

proc create*(T: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo,
    id: cint, i: cint, t: cint): gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo =
  let tmp = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo(h: fcQAbstractEventDispatcherTimerInfo_new(id, i, cint(t)), owned: true)
  tmp
proc create*(T: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo,
    fromVal: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo): gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo =
  let tmp = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo(h: fcQAbstractEventDispatcherTimerInfo_new2(fromVal.h), owned: true)
  tmp
proc timerId*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2): cint =
  cint(fcQAbstractEventDispatcherTimerInfoV2_timerId(self.h))

proc setTimerId*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2, timerId: cint): void =
  fcQAbstractEventDispatcherTimerInfoV2_setTimerId(self.h, cint(timerId))

proc timerType*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2): cint =
  cint(fcQAbstractEventDispatcherTimerInfoV2_timerType(self.h))

proc setTimerType*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2, timerType: cint): void =
  fcQAbstractEventDispatcherTimerInfoV2_setTimerType(self.h, cint(timerType))

proc operatorAssign*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2, fromVal: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2): void =
  fcQAbstractEventDispatcherTimerInfoV2_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2,
    fromVal: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2): gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2 =
  let tmp = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2(h: fcQAbstractEventDispatcherTimerInfoV2_new(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2): gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2 =
  let tmp = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfoV2(h: fcQAbstractEventDispatcherTimerInfoV2_new2(), owned: true)
  tmp
