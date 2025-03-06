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
{.compile("gen_qthreadpool.cpp", cflags).}


import ./gen_qthreadpool_types
export gen_qthreadpool_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qrunnable_types,
  ./gen_qthread_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrunnable_types,
  gen_qthread_types

type cQThreadPool*{.exportc: "QThreadPool", incompleteStruct.} = object

proc fcQThreadPool_new(): ptr cQThreadPool {.importc: "QThreadPool_new".}
proc fcQThreadPool_new2(parent: pointer): ptr cQThreadPool {.importc: "QThreadPool_new2".}
proc fcQThreadPool_metaObject(self: pointer, ): pointer {.importc: "QThreadPool_metaObject".}
proc fcQThreadPool_metacast(self: pointer, param1: cstring): pointer {.importc: "QThreadPool_metacast".}
proc fcQThreadPool_tr(s: cstring): struct_miqt_string {.importc: "QThreadPool_tr".}
proc fcQThreadPool_trUtf8(s: cstring): struct_miqt_string {.importc: "QThreadPool_trUtf8".}
proc fcQThreadPool_globalInstance(): pointer {.importc: "QThreadPool_globalInstance".}
proc fcQThreadPool_start(self: pointer, runnable: pointer): void {.importc: "QThreadPool_start".}
proc fcQThreadPool_tryStart(self: pointer, runnable: pointer): bool {.importc: "QThreadPool_tryStart".}
proc fcQThreadPool_expiryTimeout(self: pointer, ): cint {.importc: "QThreadPool_expiryTimeout".}
proc fcQThreadPool_setExpiryTimeout(self: pointer, expiryTimeout: cint): void {.importc: "QThreadPool_setExpiryTimeout".}
proc fcQThreadPool_maxThreadCount(self: pointer, ): cint {.importc: "QThreadPool_maxThreadCount".}
proc fcQThreadPool_setMaxThreadCount(self: pointer, maxThreadCount: cint): void {.importc: "QThreadPool_setMaxThreadCount".}
proc fcQThreadPool_activeThreadCount(self: pointer, ): cint {.importc: "QThreadPool_activeThreadCount".}
proc fcQThreadPool_setStackSize(self: pointer, stackSize: cuint): void {.importc: "QThreadPool_setStackSize".}
proc fcQThreadPool_stackSize(self: pointer, ): cuint {.importc: "QThreadPool_stackSize".}
proc fcQThreadPool_reserveThread(self: pointer, ): void {.importc: "QThreadPool_reserveThread".}
proc fcQThreadPool_releaseThread(self: pointer, ): void {.importc: "QThreadPool_releaseThread".}
proc fcQThreadPool_waitForDone(self: pointer, ): bool {.importc: "QThreadPool_waitForDone".}
proc fcQThreadPool_clear(self: pointer, ): void {.importc: "QThreadPool_clear".}
proc fcQThreadPool_contains(self: pointer, thread: pointer): bool {.importc: "QThreadPool_contains".}
proc fcQThreadPool_cancel(self: pointer, runnable: pointer): void {.importc: "QThreadPool_cancel".}
proc fcQThreadPool_tryTake(self: pointer, runnable: pointer): bool {.importc: "QThreadPool_tryTake".}
proc fcQThreadPool_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QThreadPool_tr2".}
proc fcQThreadPool_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThreadPool_tr3".}
proc fcQThreadPool_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QThreadPool_trUtf82".}
proc fcQThreadPool_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThreadPool_trUtf83".}
proc fcQThreadPool_start2(self: pointer, runnable: pointer, priority: cint): void {.importc: "QThreadPool_start2".}
proc fcQThreadPool_waitForDone1(self: pointer, msecs: cint): bool {.importc: "QThreadPool_waitForDone1".}
proc fQThreadPool_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QThreadPool_virtualbase_event".}
proc fcQThreadPool_override_virtual_event(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_event".}
proc fQThreadPool_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QThreadPool_virtualbase_eventFilter".}
proc fcQThreadPool_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_eventFilter".}
proc fQThreadPool_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QThreadPool_virtualbase_timerEvent".}
proc fcQThreadPool_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_timerEvent".}
proc fQThreadPool_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QThreadPool_virtualbase_childEvent".}
proc fcQThreadPool_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_childEvent".}
proc fQThreadPool_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QThreadPool_virtualbase_customEvent".}
proc fcQThreadPool_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_customEvent".}
proc fQThreadPool_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QThreadPool_virtualbase_connectNotify".}
proc fcQThreadPool_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_connectNotify".}
proc fQThreadPool_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QThreadPool_virtualbase_disconnectNotify".}
proc fcQThreadPool_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_disconnectNotify".}
proc fcQThreadPool_delete(self: pointer) {.importc: "QThreadPool_delete".}


func init*(T: type gen_qthreadpool_types.QThreadPool, h: ptr cQThreadPool): gen_qthreadpool_types.QThreadPool =
  T(h: h)
proc create*(T: type gen_qthreadpool_types.QThreadPool, ): gen_qthreadpool_types.QThreadPool =
  gen_qthreadpool_types.QThreadPool.init(fcQThreadPool_new())

proc create*(T: type gen_qthreadpool_types.QThreadPool, parent: gen_qobject_types.QObject): gen_qthreadpool_types.QThreadPool =
  gen_qthreadpool_types.QThreadPool.init(fcQThreadPool_new2(parent.h))

proc metaObject*(self: gen_qthreadpool_types.QThreadPool, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_metaObject(self.h))

proc metacast*(self: gen_qthreadpool_types.QThreadPool, param1: cstring): pointer =
  fcQThreadPool_metacast(self.h, param1)

proc tr*(_: type gen_qthreadpool_types.QThreadPool, s: cstring): string =
  let v_ms = fcQThreadPool_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qthreadpool_types.QThreadPool, s: cstring): string =
  let v_ms = fcQThreadPool_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globalInstance*(_: type gen_qthreadpool_types.QThreadPool, ): gen_qthreadpool_types.QThreadPool =
  gen_qthreadpool_types.QThreadPool(h: fcQThreadPool_globalInstance())

proc start*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): void =
  fcQThreadPool_start(self.h, runnable.h)

proc tryStart*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): bool =
  fcQThreadPool_tryStart(self.h, runnable.h)

proc expiryTimeout*(self: gen_qthreadpool_types.QThreadPool, ): cint =
  fcQThreadPool_expiryTimeout(self.h)

proc setExpiryTimeout*(self: gen_qthreadpool_types.QThreadPool, expiryTimeout: cint): void =
  fcQThreadPool_setExpiryTimeout(self.h, expiryTimeout)

proc maxThreadCount*(self: gen_qthreadpool_types.QThreadPool, ): cint =
  fcQThreadPool_maxThreadCount(self.h)

proc setMaxThreadCount*(self: gen_qthreadpool_types.QThreadPool, maxThreadCount: cint): void =
  fcQThreadPool_setMaxThreadCount(self.h, maxThreadCount)

proc activeThreadCount*(self: gen_qthreadpool_types.QThreadPool, ): cint =
  fcQThreadPool_activeThreadCount(self.h)

proc setStackSize*(self: gen_qthreadpool_types.QThreadPool, stackSize: cuint): void =
  fcQThreadPool_setStackSize(self.h, stackSize)

proc stackSize*(self: gen_qthreadpool_types.QThreadPool, ): cuint =
  fcQThreadPool_stackSize(self.h)

proc reserveThread*(self: gen_qthreadpool_types.QThreadPool, ): void =
  fcQThreadPool_reserveThread(self.h)

proc releaseThread*(self: gen_qthreadpool_types.QThreadPool, ): void =
  fcQThreadPool_releaseThread(self.h)

proc waitForDone*(self: gen_qthreadpool_types.QThreadPool, ): bool =
  fcQThreadPool_waitForDone(self.h)

proc clear*(self: gen_qthreadpool_types.QThreadPool, ): void =
  fcQThreadPool_clear(self.h)

proc contains*(self: gen_qthreadpool_types.QThreadPool, thread: gen_qthread_types.QThread): bool =
  fcQThreadPool_contains(self.h, thread.h)

proc cancel*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): void =
  fcQThreadPool_cancel(self.h, runnable.h)

proc tryTake*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): bool =
  fcQThreadPool_tryTake(self.h, runnable.h)

proc tr*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring): string =
  let v_ms = fcQThreadPool_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQThreadPool_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring): string =
  let v_ms = fcQThreadPool_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQThreadPool_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable, priority: cint): void =
  fcQThreadPool_start2(self.h, runnable.h, priority)

proc waitForDone*(self: gen_qthreadpool_types.QThreadPool, msecs: cint): bool =
  fcQThreadPool_waitForDone1(self.h, msecs)

proc QThreadPoolevent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QEvent): bool =
  fQThreadPool_virtualbase_event(self.h, event.h)

type QThreadPooleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPooleventProc) =
  # TODO check subclass
  var tmp = new QThreadPooleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_event(self: ptr cQThreadPool, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QThreadPool_event ".} =
  var nimfunc = cast[ptr QThreadPooleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QThreadPooleventFilter*(self: gen_qthreadpool_types.QThreadPool, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQThreadPool_virtualbase_eventFilter(self.h, watched.h, event.h)

type QThreadPooleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPooleventFilterProc) =
  # TODO check subclass
  var tmp = new QThreadPooleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_eventFilter(self: ptr cQThreadPool, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QThreadPool_eventFilter ".} =
  var nimfunc = cast[ptr QThreadPooleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QThreadPooltimerEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QTimerEvent): void =
  fQThreadPool_virtualbase_timerEvent(self.h, event.h)

type QThreadPooltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPooltimerEventProc) =
  # TODO check subclass
  var tmp = new QThreadPooltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_timerEvent(self: ptr cQThreadPool, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_timerEvent ".} =
  var nimfunc = cast[ptr QThreadPooltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QThreadPoolchildEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QChildEvent): void =
  fQThreadPool_virtualbase_childEvent(self.h, event.h)

type QThreadPoolchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPoolchildEventProc) =
  # TODO check subclass
  var tmp = new QThreadPoolchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_childEvent(self: ptr cQThreadPool, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_childEvent ".} =
  var nimfunc = cast[ptr QThreadPoolchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QThreadPoolcustomEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QEvent): void =
  fQThreadPool_virtualbase_customEvent(self.h, event.h)

type QThreadPoolcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPoolcustomEventProc) =
  # TODO check subclass
  var tmp = new QThreadPoolcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_customEvent(self: ptr cQThreadPool, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_customEvent ".} =
  var nimfunc = cast[ptr QThreadPoolcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QThreadPoolconnectNotify*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQThreadPool_virtualbase_connectNotify(self.h, signal.h)

type QThreadPoolconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPoolconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QThreadPoolconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_connectNotify(self: ptr cQThreadPool, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_connectNotify ".} =
  var nimfunc = cast[ptr QThreadPoolconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QThreadPooldisconnectNotify*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQThreadPool_virtualbase_disconnectNotify(self.h, signal.h)

type QThreadPooldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qthreadpool_types.QThreadPool, slot: QThreadPooldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QThreadPooldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_disconnectNotify(self: ptr cQThreadPool, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_disconnectNotify ".} =
  var nimfunc = cast[ptr QThreadPooldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qthreadpool_types.QThreadPool) =
  fcQThreadPool_delete(self.h)
