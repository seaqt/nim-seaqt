import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qthread.cpp", cflags).}


type QThreadPriorityEnum* = distinct cint
template IdlePriority*(_: type QThreadPriorityEnum): untyped = 0
template LowestPriority*(_: type QThreadPriorityEnum): untyped = 1
template LowPriority*(_: type QThreadPriorityEnum): untyped = 2
template NormalPriority*(_: type QThreadPriorityEnum): untyped = 3
template HighPriority*(_: type QThreadPriorityEnum): untyped = 4
template HighestPriority*(_: type QThreadPriorityEnum): untyped = 5
template TimeCriticalPriority*(_: type QThreadPriorityEnum): untyped = 6
template InheritPriority*(_: type QThreadPriorityEnum): untyped = 7


import ./gen_qthread_types
export gen_qthread_types

import
  ./gen_qabstracteventdispatcher_types,
  ./gen_qcoreevent_types,
  ./gen_qdeadlinetimer_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qabstracteventdispatcher_types,
  gen_qcoreevent_types,
  gen_qdeadlinetimer_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQThread*{.exportc: "QThread", incompleteStruct.} = object

proc fcQThread_new(): ptr cQThread {.importc: "QThread_new".}
proc fcQThread_new2(parent: pointer): ptr cQThread {.importc: "QThread_new2".}
proc fcQThread_metaObject(self: pointer, ): pointer {.importc: "QThread_metaObject".}
proc fcQThread_metacast(self: pointer, param1: cstring): pointer {.importc: "QThread_metacast".}
proc fcQThread_tr(s: cstring): struct_miqt_string {.importc: "QThread_tr".}
proc fcQThread_currentThreadId(): pointer {.importc: "QThread_currentThreadId".}
proc fcQThread_currentThread(): pointer {.importc: "QThread_currentThread".}
proc fcQThread_idealThreadCount(): cint {.importc: "QThread_idealThreadCount".}
proc fcQThread_yieldCurrentThread(): void {.importc: "QThread_yieldCurrentThread".}
proc fcQThread_setPriority(self: pointer, priority: cint): void {.importc: "QThread_setPriority".}
proc fcQThread_priority(self: pointer, ): cint {.importc: "QThread_priority".}
proc fcQThread_isFinished(self: pointer, ): bool {.importc: "QThread_isFinished".}
proc fcQThread_isRunning(self: pointer, ): bool {.importc: "QThread_isRunning".}
proc fcQThread_requestInterruption(self: pointer, ): void {.importc: "QThread_requestInterruption".}
proc fcQThread_isInterruptionRequested(self: pointer, ): bool {.importc: "QThread_isInterruptionRequested".}
proc fcQThread_setStackSize(self: pointer, stackSize: cuint): void {.importc: "QThread_setStackSize".}
proc fcQThread_stackSize(self: pointer, ): cuint {.importc: "QThread_stackSize".}
proc fcQThread_eventDispatcher(self: pointer, ): pointer {.importc: "QThread_eventDispatcher".}
proc fcQThread_setEventDispatcher(self: pointer, eventDispatcher: pointer): void {.importc: "QThread_setEventDispatcher".}
proc fcQThread_event(self: pointer, event: pointer): bool {.importc: "QThread_event".}
proc fcQThread_loopLevel(self: pointer, ): cint {.importc: "QThread_loopLevel".}
proc fcQThread_start(self: pointer, ): void {.importc: "QThread_start".}
proc fcQThread_terminate(self: pointer, ): void {.importc: "QThread_terminate".}
proc fcQThread_exit(self: pointer, ): void {.importc: "QThread_exit".}
proc fcQThread_quit(self: pointer, ): void {.importc: "QThread_quit".}
proc fcQThread_wait(self: pointer, ): bool {.importc: "QThread_wait".}
proc fcQThread_waitWithTime(self: pointer, time: culong): bool {.importc: "QThread_waitWithTime".}
proc fcQThread_sleep(param1: culong): void {.importc: "QThread_sleep".}
proc fcQThread_msleep(param1: culong): void {.importc: "QThread_msleep".}
proc fcQThread_usleep(param1: culong): void {.importc: "QThread_usleep".}
proc fcQThread_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QThread_tr2".}
proc fcQThread_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThread_tr3".}
proc fcQThread_start1(self: pointer, param1: cint): void {.importc: "QThread_start1".}
proc fcQThread_exit1(self: pointer, retcode: cint): void {.importc: "QThread_exit1".}
proc fcQThread_wait1(self: pointer, deadline: pointer): bool {.importc: "QThread_wait1".}
proc fQThread_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QThread_virtualbase_event".}
proc fcQThread_override_virtual_event(self: pointer, slot: int) {.importc: "QThread_override_virtual_event".}
proc fQThread_virtualbase_run(self: pointer, ): void{.importc: "QThread_virtualbase_run".}
proc fcQThread_override_virtual_run(self: pointer, slot: int) {.importc: "QThread_override_virtual_run".}
proc fQThread_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QThread_virtualbase_eventFilter".}
proc fcQThread_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QThread_override_virtual_eventFilter".}
proc fQThread_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QThread_virtualbase_timerEvent".}
proc fcQThread_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QThread_override_virtual_timerEvent".}
proc fQThread_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QThread_virtualbase_childEvent".}
proc fcQThread_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QThread_override_virtual_childEvent".}
proc fQThread_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QThread_virtualbase_customEvent".}
proc fcQThread_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QThread_override_virtual_customEvent".}
proc fQThread_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QThread_virtualbase_connectNotify".}
proc fcQThread_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QThread_override_virtual_connectNotify".}
proc fQThread_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QThread_virtualbase_disconnectNotify".}
proc fcQThread_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QThread_override_virtual_disconnectNotify".}
proc fcQThread_delete(self: pointer) {.importc: "QThread_delete".}


func init*(T: type gen_qthread_types.QThread, h: ptr cQThread): gen_qthread_types.QThread =
  T(h: h)
proc create*(T: type gen_qthread_types.QThread, ): gen_qthread_types.QThread =
  gen_qthread_types.QThread.init(fcQThread_new())

proc create*(T: type gen_qthread_types.QThread, parent: gen_qobject_types.QObject): gen_qthread_types.QThread =
  gen_qthread_types.QThread.init(fcQThread_new2(parent.h))

proc metaObject*(self: gen_qthread_types.QThread, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThread_metaObject(self.h))

proc metacast*(self: gen_qthread_types.QThread, param1: cstring): pointer =
  fcQThread_metacast(self.h, param1)

proc tr*(_: type gen_qthread_types.QThread, s: cstring): string =
  let v_ms = fcQThread_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentThreadId*(_: type gen_qthread_types.QThread, ): pointer =
  fcQThread_currentThreadId()

proc currentThread*(_: type gen_qthread_types.QThread, ): gen_qthread_types.QThread =
  gen_qthread_types.QThread(h: fcQThread_currentThread())

proc idealThreadCount*(_: type gen_qthread_types.QThread, ): cint =
  fcQThread_idealThreadCount()

proc yieldCurrentThread*(_: type gen_qthread_types.QThread, ): void =
  fcQThread_yieldCurrentThread()

proc setPriority*(self: gen_qthread_types.QThread, priority: cint): void =
  fcQThread_setPriority(self.h, cint(priority))

proc priority*(self: gen_qthread_types.QThread, ): cint =
  cint(fcQThread_priority(self.h))

proc isFinished*(self: gen_qthread_types.QThread, ): bool =
  fcQThread_isFinished(self.h)

proc isRunning*(self: gen_qthread_types.QThread, ): bool =
  fcQThread_isRunning(self.h)

proc requestInterruption*(self: gen_qthread_types.QThread, ): void =
  fcQThread_requestInterruption(self.h)

proc isInterruptionRequested*(self: gen_qthread_types.QThread, ): bool =
  fcQThread_isInterruptionRequested(self.h)

proc setStackSize*(self: gen_qthread_types.QThread, stackSize: cuint): void =
  fcQThread_setStackSize(self.h, stackSize)

proc stackSize*(self: gen_qthread_types.QThread, ): cuint =
  fcQThread_stackSize(self.h)

proc eventDispatcher*(self: gen_qthread_types.QThread, ): gen_qabstracteventdispatcher_types.QAbstractEventDispatcher =
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQThread_eventDispatcher(self.h))

proc setEventDispatcher*(self: gen_qthread_types.QThread, eventDispatcher: gen_qabstracteventdispatcher_types.QAbstractEventDispatcher): void =
  fcQThread_setEventDispatcher(self.h, eventDispatcher.h)

proc event*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QEvent): bool =
  fcQThread_event(self.h, event.h)

proc loopLevel*(self: gen_qthread_types.QThread, ): cint =
  fcQThread_loopLevel(self.h)

proc start*(self: gen_qthread_types.QThread, ): void =
  fcQThread_start(self.h)

proc terminate*(self: gen_qthread_types.QThread, ): void =
  fcQThread_terminate(self.h)

proc exit*(self: gen_qthread_types.QThread, ): void =
  fcQThread_exit(self.h)

proc quit*(self: gen_qthread_types.QThread, ): void =
  fcQThread_quit(self.h)

proc wait*(self: gen_qthread_types.QThread, ): bool =
  fcQThread_wait(self.h)

proc wait*(self: gen_qthread_types.QThread, time: culong): bool =
  fcQThread_waitWithTime(self.h, time)

proc sleep*(_: type gen_qthread_types.QThread, param1: culong): void =
  fcQThread_sleep(param1)

proc msleep*(_: type gen_qthread_types.QThread, param1: culong): void =
  fcQThread_msleep(param1)

proc usleep*(_: type gen_qthread_types.QThread, param1: culong): void =
  fcQThread_usleep(param1)

proc tr*(_: type gen_qthread_types.QThread, s: cstring, c: cstring): string =
  let v_ms = fcQThread_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qthread_types.QThread, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQThread_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qthread_types.QThread, param1: cint): void =
  fcQThread_start1(self.h, cint(param1))

proc exit*(self: gen_qthread_types.QThread, retcode: cint): void =
  fcQThread_exit1(self.h, retcode)

proc wait*(self: gen_qthread_types.QThread, deadline: gen_qdeadlinetimer_types.QDeadlineTimer): bool =
  fcQThread_wait1(self.h, deadline.h)

proc QThreadevent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QEvent): bool =
  fQThread_virtualbase_event(self.h, event.h)

type QThreadeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qthread_types.QThread, slot: QThreadeventProc) =
  # TODO check subclass
  var tmp = new QThreadeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_event(self: ptr cQThread, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QThread_event ".} =
  var nimfunc = cast[ptr QThreadeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QThreadrun*(self: gen_qthread_types.QThread, ): void =
  fQThread_virtualbase_run(self.h)

type QThreadrunProc* = proc(): void
proc onrun*(self: gen_qthread_types.QThread, slot: QThreadrunProc) =
  # TODO check subclass
  var tmp = new QThreadrunProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_run(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_run(self: ptr cQThread, slot: int): void {.exportc: "miqt_exec_callback_QThread_run ".} =
  var nimfunc = cast[ptr QThreadrunProc](cast[pointer](slot))

  nimfunc[]()
proc QThreadeventFilter*(self: gen_qthread_types.QThread, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQThread_virtualbase_eventFilter(self.h, watched.h, event.h)

type QThreadeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qthread_types.QThread, slot: QThreadeventFilterProc) =
  # TODO check subclass
  var tmp = new QThreadeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_eventFilter(self: ptr cQThread, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QThread_eventFilter ".} =
  var nimfunc = cast[ptr QThreadeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QThreadtimerEvent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QTimerEvent): void =
  fQThread_virtualbase_timerEvent(self.h, event.h)

type QThreadtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qthread_types.QThread, slot: QThreadtimerEventProc) =
  # TODO check subclass
  var tmp = new QThreadtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_timerEvent(self: ptr cQThread, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThread_timerEvent ".} =
  var nimfunc = cast[ptr QThreadtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QThreadchildEvent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QChildEvent): void =
  fQThread_virtualbase_childEvent(self.h, event.h)

type QThreadchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qthread_types.QThread, slot: QThreadchildEventProc) =
  # TODO check subclass
  var tmp = new QThreadchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_childEvent(self: ptr cQThread, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThread_childEvent ".} =
  var nimfunc = cast[ptr QThreadchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QThreadcustomEvent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QEvent): void =
  fQThread_virtualbase_customEvent(self.h, event.h)

type QThreadcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qthread_types.QThread, slot: QThreadcustomEventProc) =
  # TODO check subclass
  var tmp = new QThreadcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_customEvent(self: ptr cQThread, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThread_customEvent ".} =
  var nimfunc = cast[ptr QThreadcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QThreadconnectNotify*(self: gen_qthread_types.QThread, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQThread_virtualbase_connectNotify(self.h, signal.h)

type QThreadconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qthread_types.QThread, slot: QThreadconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QThreadconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_connectNotify(self: ptr cQThread, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThread_connectNotify ".} =
  var nimfunc = cast[ptr QThreadconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QThreaddisconnectNotify*(self: gen_qthread_types.QThread, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQThread_virtualbase_disconnectNotify(self.h, signal.h)

type QThreaddisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qthread_types.QThread, slot: QThreaddisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QThreaddisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_disconnectNotify(self: ptr cQThread, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThread_disconnectNotify ".} =
  var nimfunc = cast[ptr QThreaddisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qthread_types.QThread) =
  fcQThread_delete(self.h)
