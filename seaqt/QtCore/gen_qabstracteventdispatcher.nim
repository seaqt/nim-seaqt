import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qabstracteventdispatcher.cpp", cflags).}


import ./gen_qabstracteventdispatcher_types
export gen_qabstracteventdispatcher_types

import
  ./gen_qabstractnativeeventfilter_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qsocketnotifier_types,
  ./gen_qthread_types
export
  gen_qabstractnativeeventfilter_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsocketnotifier_types,
  gen_qthread_types

type cQAbstractEventDispatcher*{.exportc: "QAbstractEventDispatcher", incompleteStruct.} = object
type cQAbstractEventDispatcherTimerInfo*{.exportc: "QAbstractEventDispatcher__TimerInfo", incompleteStruct.} = object

proc fcQAbstractEventDispatcher_metaObject(self: pointer, ): pointer {.importc: "QAbstractEventDispatcher_metaObject".}
proc fcQAbstractEventDispatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractEventDispatcher_metacast".}
proc fcQAbstractEventDispatcher_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractEventDispatcher_metacall".}
proc fcQAbstractEventDispatcher_tr(s: cstring): struct_miqt_string {.importc: "QAbstractEventDispatcher_tr".}
proc fcQAbstractEventDispatcher_instance(): pointer {.importc: "QAbstractEventDispatcher_instance".}
proc fcQAbstractEventDispatcher_processEvents(self: pointer, flags: cint): bool {.importc: "QAbstractEventDispatcher_processEvents".}
proc fcQAbstractEventDispatcher_registerSocketNotifier(self: pointer, notifier: pointer): void {.importc: "QAbstractEventDispatcher_registerSocketNotifier".}
proc fcQAbstractEventDispatcher_unregisterSocketNotifier(self: pointer, notifier: pointer): void {.importc: "QAbstractEventDispatcher_unregisterSocketNotifier".}
proc fcQAbstractEventDispatcher_registerTimer(self: pointer, interval: clonglong, timerType: cint, objectVal: pointer): cint {.importc: "QAbstractEventDispatcher_registerTimer".}
proc fcQAbstractEventDispatcher_registerTimer2(self: pointer, timerId: cint, interval: clonglong, timerType: cint, objectVal: pointer): void {.importc: "QAbstractEventDispatcher_registerTimer2".}
proc fcQAbstractEventDispatcher_unregisterTimer(self: pointer, timerId: cint): bool {.importc: "QAbstractEventDispatcher_unregisterTimer".}
proc fcQAbstractEventDispatcher_unregisterTimers(self: pointer, objectVal: pointer): bool {.importc: "QAbstractEventDispatcher_unregisterTimers".}
proc fcQAbstractEventDispatcher_registeredTimers(self: pointer, objectVal: pointer): struct_miqt_array {.importc: "QAbstractEventDispatcher_registeredTimers".}
proc fcQAbstractEventDispatcher_remainingTime(self: pointer, timerId: cint): cint {.importc: "QAbstractEventDispatcher_remainingTime".}
proc fcQAbstractEventDispatcher_wakeUp(self: pointer, ): void {.importc: "QAbstractEventDispatcher_wakeUp".}
proc fcQAbstractEventDispatcher_interrupt(self: pointer, ): void {.importc: "QAbstractEventDispatcher_interrupt".}
proc fcQAbstractEventDispatcher_startingUp(self: pointer, ): void {.importc: "QAbstractEventDispatcher_startingUp".}
proc fcQAbstractEventDispatcher_closingDown(self: pointer, ): void {.importc: "QAbstractEventDispatcher_closingDown".}
proc fcQAbstractEventDispatcher_installNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QAbstractEventDispatcher_installNativeEventFilter".}
proc fcQAbstractEventDispatcher_removeNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QAbstractEventDispatcher_removeNativeEventFilter".}
proc fcQAbstractEventDispatcher_filterNativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QAbstractEventDispatcher_filterNativeEvent".}
proc fcQAbstractEventDispatcher_aboutToBlock(self: pointer, ): void {.importc: "QAbstractEventDispatcher_aboutToBlock".}
proc fcQAbstractEventDispatcher_connect_aboutToBlock(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractEventDispatcher_connect_aboutToBlock".}
proc fcQAbstractEventDispatcher_awake(self: pointer, ): void {.importc: "QAbstractEventDispatcher_awake".}
proc fcQAbstractEventDispatcher_connect_awake(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractEventDispatcher_connect_awake".}
proc fcQAbstractEventDispatcher_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractEventDispatcher_tr2".}
proc fcQAbstractEventDispatcher_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractEventDispatcher_tr3".}
proc fcQAbstractEventDispatcher_instance1(thread: pointer): pointer {.importc: "QAbstractEventDispatcher_instance1".}
proc fcQAbstractEventDispatcher_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractEventDispatcher_protectedbase_sender".}
proc fcQAbstractEventDispatcher_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractEventDispatcher_protectedbase_senderSignalIndex".}
proc fcQAbstractEventDispatcher_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractEventDispatcher_protectedbase_receivers".}
proc fcQAbstractEventDispatcher_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractEventDispatcher_protectedbase_isSignalConnected".}
proc fcQAbstractEventDispatcher_staticMetaObject(): pointer {.importc: "QAbstractEventDispatcher_staticMetaObject".}
proc fcQAbstractEventDispatcher_delete(self: pointer) {.importc: "QAbstractEventDispatcher_delete".}
proc fcQAbstractEventDispatcherTimerInfo_new(id: cint, i: cint, t: cint): ptr cQAbstractEventDispatcherTimerInfo {.importc: "QAbstractEventDispatcher__TimerInfo_new".}
proc fcQAbstractEventDispatcherTimerInfo_delete(self: pointer) {.importc: "QAbstractEventDispatcher__TimerInfo_delete".}

proc metaObject*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractEventDispatcher_metaObject(self.h))

proc metacast*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, param1: cstring): pointer =
  fcQAbstractEventDispatcher_metacast(self.h, param1)

proc metacall*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractEventDispatcher_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, s: cstring): string =
  let v_ms = fcQAbstractEventDispatcher_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc instance*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQAbstractEventDispatcher_instance())

proc processEvents*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, flags: cint): bool =
  fcQAbstractEventDispatcher_processEvents(self.h, cint(flags))

proc registerSocketNotifier*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, notifier: gen_qsocketnotifier_types.QSocketNotifier): void =
  fcQAbstractEventDispatcher_registerSocketNotifier(self.h, notifier.h)

proc unregisterSocketNotifier*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, notifier: gen_qsocketnotifier_types.QSocketNotifier): void =
  fcQAbstractEventDispatcher_unregisterSocketNotifier(self.h, notifier.h)

proc registerTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, interval: clonglong, timerType: cint, objectVal: gen_qobject_types.QObject): cint =
  fcQAbstractEventDispatcher_registerTimer(self.h, interval, cint(timerType), objectVal.h)

proc registerTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint, interval: clonglong, timerType: cint, objectVal: gen_qobject_types.QObject): void =
  fcQAbstractEventDispatcher_registerTimer2(self.h, timerId, interval, cint(timerType), objectVal.h)

proc unregisterTimer*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint): bool =
  fcQAbstractEventDispatcher_unregisterTimer(self.h, timerId)

proc unregisterTimers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, objectVal: gen_qobject_types.QObject): bool =
  fcQAbstractEventDispatcher_unregisterTimers(self.h, objectVal.h)

proc registeredTimers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, objectVal: gen_qobject_types.QObject): seq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo] =
  var v_ma = fcQAbstractEventDispatcher_registeredTimers(self.h, objectVal.h)
  var vx_ret = newSeq[gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc remainingTime*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, timerId: cint): cint =
  fcQAbstractEventDispatcher_remainingTime(self.h, timerId)

proc wakeUp*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): void =
  fcQAbstractEventDispatcher_wakeUp(self.h)

proc interrupt*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): void =
  fcQAbstractEventDispatcher_interrupt(self.h)

proc startingUp*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): void =
  fcQAbstractEventDispatcher_startingUp(self.h)

proc closingDown*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): void =
  fcQAbstractEventDispatcher_closingDown(self.h)

proc installNativeEventFilter*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQAbstractEventDispatcher_installNativeEventFilter(self.h, filterObj.h)

proc removeNativeEventFilter*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, filterObj: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter): void =
  fcQAbstractEventDispatcher_removeNativeEventFilter(self.h, filterObj.h)

proc filterNativeEvent*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQAbstractEventDispatcher_filterNativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc aboutToBlock*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): void =
  fcQAbstractEventDispatcher_aboutToBlock(self.h)

type QAbstractEventDispatcheraboutToBlockSlot* = proc()
proc miqt_exec_callback_cQAbstractEventDispatcher_aboutToBlock(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractEventDispatcheraboutToBlockSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractEventDispatcher_aboutToBlock_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractEventDispatcheraboutToBlockSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaboutToBlock*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, slot: QAbstractEventDispatcheraboutToBlockSlot) =
  var tmp = new QAbstractEventDispatcheraboutToBlockSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractEventDispatcher_connect_aboutToBlock(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractEventDispatcher_aboutToBlock, miqt_exec_callback_cQAbstractEventDispatcher_aboutToBlock_release)

proc awake*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): void =
  fcQAbstractEventDispatcher_awake(self.h)

type QAbstractEventDispatcherawakeSlot* = proc()
proc miqt_exec_callback_cQAbstractEventDispatcher_awake(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractEventDispatcherawakeSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractEventDispatcher_awake_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractEventDispatcherawakeSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onawake*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, slot: QAbstractEventDispatcherawakeSlot) =
  var tmp = new QAbstractEventDispatcherawakeSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractEventDispatcher_connect_awake(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractEventDispatcher_awake, miqt_exec_callback_cQAbstractEventDispatcher_awake_release)

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractEventDispatcher_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractEventDispatcher_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc instance*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, thread: gen_qthread_types.QThread): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQAbstractEventDispatcher_instance1(thread.h))

proc sender*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractEventDispatcher_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, ): cint =
  fcQAbstractEventDispatcher_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, signal: cstring): cint =
  fcQAbstractEventDispatcher_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractEventDispatcher_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractEventDispatcher_staticMetaObject())
proc delete*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher) =
  fcQAbstractEventDispatcher_delete(self.h)
proc create*(T: type gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo,
    id: cint, i: cint, t: cint): gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo(h: fcQAbstractEventDispatcherTimerInfo_new(id, i, cint(t)))

proc delete*(self: gen_qabstracteventdispatcher_types.QAbstractEventDispatcherTimerInfo) =
  fcQAbstractEventDispatcherTimerInfo_delete(self.h)
