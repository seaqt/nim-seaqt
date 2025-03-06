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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
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

proc fcQThread_metaObject(self: pointer, ): pointer {.importc: "QThread_metaObject".}
proc fcQThread_metacast(self: pointer, param1: cstring): pointer {.importc: "QThread_metacast".}
proc fcQThread_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThread_metacall".}
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
type cQThreadVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQThreadVTable, self: ptr cQThread) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  run*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQThread_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QThread_virtualbase_metaObject".}
proc fcQThread_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QThread_virtualbase_metacast".}
proc fcQThread_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThread_virtualbase_metacall".}
proc fcQThread_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QThread_virtualbase_event".}
proc fcQThread_virtualbase_run(self: pointer, ): void {.importc: "QThread_virtualbase_run".}
proc fcQThread_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QThread_virtualbase_eventFilter".}
proc fcQThread_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QThread_virtualbase_timerEvent".}
proc fcQThread_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QThread_virtualbase_childEvent".}
proc fcQThread_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QThread_virtualbase_customEvent".}
proc fcQThread_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QThread_virtualbase_connectNotify".}
proc fcQThread_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QThread_virtualbase_disconnectNotify".}
proc fcQThread_protectedbase_exec(self: pointer, ): cint {.importc: "QThread_protectedbase_exec".}
proc fcQThread_protectedbase_sender(self: pointer, ): pointer {.importc: "QThread_protectedbase_sender".}
proc fcQThread_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QThread_protectedbase_senderSignalIndex".}
proc fcQThread_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QThread_protectedbase_receivers".}
proc fcQThread_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QThread_protectedbase_isSignalConnected".}
proc fcQThread_new(vtbl: pointer, ): ptr cQThread {.importc: "QThread_new".}
proc fcQThread_new2(vtbl: pointer, parent: pointer): ptr cQThread {.importc: "QThread_new2".}
proc fcQThread_staticMetaObject(): pointer {.importc: "QThread_staticMetaObject".}

proc metaObject*(self: gen_qthread_types.QThread, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThread_metaObject(self.h), owned: false)

proc metacast*(self: gen_qthread_types.QThread, param1: cstring): pointer =
  fcQThread_metacast(self.h, param1)

proc metacall*(self: gen_qthread_types.QThread, param1: cint, param2: cint, param3: pointer): cint =
  fcQThread_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qthread_types.QThread, s: cstring): string =
  let v_ms = fcQThread_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentThreadId*(_: type gen_qthread_types.QThread, ): pointer =
  fcQThread_currentThreadId()

proc currentThread*(_: type gen_qthread_types.QThread, ): gen_qthread_types.QThread =
  gen_qthread_types.QThread(h: fcQThread_currentThread(), owned: false)

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
  gen_qabstracteventdispatcher_types.QAbstractEventDispatcher(h: fcQThread_eventDispatcher(self.h), owned: false)

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

type QThreadmetaObjectProc* = proc(self: QThread): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QThreadmetacastProc* = proc(self: QThread, param1: cstring): pointer {.raises: [], gcsafe.}
type QThreadmetacallProc* = proc(self: QThread, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QThreadeventProc* = proc(self: QThread, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QThreadrunProc* = proc(self: QThread): void {.raises: [], gcsafe.}
type QThreadeventFilterProc* = proc(self: QThread, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QThreadtimerEventProc* = proc(self: QThread, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QThreadchildEventProc* = proc(self: QThread, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QThreadcustomEventProc* = proc(self: QThread, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QThreadconnectNotifyProc* = proc(self: QThread, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QThreaddisconnectNotifyProc* = proc(self: QThread, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QThreadVTable* {.inheritable, pure.} = object
  vtbl: cQThreadVTable
  metaObject*: QThreadmetaObjectProc
  metacast*: QThreadmetacastProc
  metacall*: QThreadmetacallProc
  event*: QThreadeventProc
  run*: QThreadrunProc
  eventFilter*: QThreadeventFilterProc
  timerEvent*: QThreadtimerEventProc
  childEvent*: QThreadchildEventProc
  customEvent*: QThreadcustomEventProc
  connectNotify*: QThreadconnectNotifyProc
  disconnectNotify*: QThreaddisconnectNotifyProc
proc QThreadmetaObject*(self: gen_qthread_types.QThread, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThread_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQThread_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QThreadmetacast*(self: gen_qthread_types.QThread, param1: cstring): pointer =
  fcQThread_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQThread_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QThreadmetacall*(self: gen_qthread_types.QThread, param1: cint, param2: cint, param3: pointer): cint =
  fcQThread_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQThread_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QThreadevent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QEvent): bool =
  fcQThread_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQThread_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QThreadrun*(self: gen_qthread_types.QThread, ): void =
  fcQThread_virtualbase_run(self.h)

proc miqt_exec_callback_cQThread_run(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  vtbl[].run(self)

proc QThreadeventFilter*(self: gen_qthread_types.QThread, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQThread_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQThread_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QThreadtimerEvent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQThread_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQThread_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QThreadchildEvent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QChildEvent): void =
  fcQThread_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQThread_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QThreadcustomEvent*(self: gen_qthread_types.QThread, event: gen_qcoreevent_types.QEvent): void =
  fcQThread_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQThread_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QThreadconnectNotify*(self: gen_qthread_types.QThread, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQThread_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQThread_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QThreaddisconnectNotify*(self: gen_qthread_types.QThread, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQThread_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQThread_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadVTable](vtbl)
  let self = QThread(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQThread* {.inheritable.} = ref object of QThread
  vtbl*: cQThreadVTable
method metaObject*(self: VirtualQThread, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QThreadmetaObject(self[])
proc miqt_exec_method_cQThread_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQThread, param1: cstring): pointer {.base.} =
  QThreadmetacast(self[], param1)
proc miqt_exec_method_cQThread_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQThread, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QThreadmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQThread_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQThread, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QThreadevent(self[], event)
proc miqt_exec_method_cQThread_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method run*(self: VirtualQThread, ): void {.base.} =
  QThreadrun(self[])
proc miqt_exec_method_cQThread_run(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  vtbl.run()

method eventFilter*(self: VirtualQThread, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QThreadeventFilter(self[], watched, event)
proc miqt_exec_method_cQThread_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQThread, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QThreadtimerEvent(self[], event)
proc miqt_exec_method_cQThread_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQThread, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QThreadchildEvent(self[], event)
proc miqt_exec_method_cQThread_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQThread, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QThreadcustomEvent(self[], event)
proc miqt_exec_method_cQThread_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQThread, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QThreadconnectNotify(self[], signal)
proc miqt_exec_method_cQThread_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQThread, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QThreaddisconnectNotify(self[], signal)
proc miqt_exec_method_cQThread_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQThread](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc exec*(self: gen_qthread_types.QThread, ): cint =
  fcQThread_protectedbase_exec(self.h)

proc sender*(self: gen_qthread_types.QThread, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQThread_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qthread_types.QThread, ): cint =
  fcQThread_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qthread_types.QThread, signal: cstring): cint =
  fcQThread_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qthread_types.QThread, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQThread_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qthread_types.QThread,
    vtbl: ref QThreadVTable = nil): gen_qthread_types.QThread =
  let vtbl = if vtbl == nil: new QThreadVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQThreadVTable, _: ptr cQThread) {.cdecl.} =
    let vtbl = cast[ref QThreadVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQThread_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQThread_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQThread_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQThread_event
  if not isNil(vtbl[].run):
    vtbl[].vtbl.run = miqt_exec_callback_cQThread_run
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQThread_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQThread_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQThread_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQThread_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQThread_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQThread_disconnectNotify
  gen_qthread_types.QThread(h: fcQThread_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qthread_types.QThread,
    parent: gen_qobject_types.QObject,
    vtbl: ref QThreadVTable = nil): gen_qthread_types.QThread =
  let vtbl = if vtbl == nil: new QThreadVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQThreadVTable, _: ptr cQThread) {.cdecl.} =
    let vtbl = cast[ref QThreadVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQThread_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQThread_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQThread_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQThread_event
  if not isNil(vtbl[].run):
    vtbl[].vtbl.run = miqt_exec_callback_cQThread_run
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQThread_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQThread_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQThread_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQThread_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQThread_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQThread_disconnectNotify
  gen_qthread_types.QThread(h: fcQThread_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qthread_types.QThread,
    vtbl: VirtualQThread) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQThreadVTable, _: ptr cQThread) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQThread()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQThread_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQThread_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQThread_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQThread_event
  vtbl[].vtbl.run = miqt_exec_method_cQThread_run
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQThread_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQThread_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQThread_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQThread_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQThread_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQThread_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQThread_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qthread_types.QThread,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQThread) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQThreadVTable, _: ptr cQThread) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQThread()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQThread, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQThread_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQThread_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQThread_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQThread_event
  vtbl[].vtbl.run = miqt_exec_method_cQThread_run
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQThread_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQThread_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQThread_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQThread_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQThread_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQThread_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQThread_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qthread_types.QThread): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThread_staticMetaObject())
