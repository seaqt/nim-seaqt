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


{.compile("gen_qthreadpool.cpp", QtCoreCFlags).}


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

proc fcQThreadPool_metaObject(self: pointer): pointer {.importc: "QThreadPool_metaObject".}
proc fcQThreadPool_metacast(self: pointer, param1: cstring): pointer {.importc: "QThreadPool_metacast".}
proc fcQThreadPool_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThreadPool_metacall".}
proc fcQThreadPool_tr(s: cstring): struct_miqt_string {.importc: "QThreadPool_tr".}
proc fcQThreadPool_trUtf8(s: cstring): struct_miqt_string {.importc: "QThreadPool_trUtf8".}
proc fcQThreadPool_globalInstance(): pointer {.importc: "QThreadPool_globalInstance".}
proc fcQThreadPool_start(self: pointer, runnable: pointer): void {.importc: "QThreadPool_start".}
proc fcQThreadPool_tryStart(self: pointer, runnable: pointer): bool {.importc: "QThreadPool_tryStart".}
proc fcQThreadPool_expiryTimeout(self: pointer): cint {.importc: "QThreadPool_expiryTimeout".}
proc fcQThreadPool_setExpiryTimeout(self: pointer, expiryTimeout: cint): void {.importc: "QThreadPool_setExpiryTimeout".}
proc fcQThreadPool_maxThreadCount(self: pointer): cint {.importc: "QThreadPool_maxThreadCount".}
proc fcQThreadPool_setMaxThreadCount(self: pointer, maxThreadCount: cint): void {.importc: "QThreadPool_setMaxThreadCount".}
proc fcQThreadPool_activeThreadCount(self: pointer): cint {.importc: "QThreadPool_activeThreadCount".}
proc fcQThreadPool_setStackSize(self: pointer, stackSize: cuint): void {.importc: "QThreadPool_setStackSize".}
proc fcQThreadPool_stackSize(self: pointer): cuint {.importc: "QThreadPool_stackSize".}
proc fcQThreadPool_reserveThread(self: pointer): void {.importc: "QThreadPool_reserveThread".}
proc fcQThreadPool_releaseThread(self: pointer): void {.importc: "QThreadPool_releaseThread".}
proc fcQThreadPool_waitForDone(self: pointer): bool {.importc: "QThreadPool_waitForDone".}
proc fcQThreadPool_clear(self: pointer): void {.importc: "QThreadPool_clear".}
proc fcQThreadPool_contains(self: pointer, thread: pointer): bool {.importc: "QThreadPool_contains".}
proc fcQThreadPool_cancel(self: pointer, runnable: pointer): void {.importc: "QThreadPool_cancel".}
proc fcQThreadPool_tryTake(self: pointer, runnable: pointer): bool {.importc: "QThreadPool_tryTake".}
proc fcQThreadPool_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QThreadPool_tr2".}
proc fcQThreadPool_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThreadPool_tr3".}
proc fcQThreadPool_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QThreadPool_trUtf82".}
proc fcQThreadPool_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThreadPool_trUtf83".}
proc fcQThreadPool_start2(self: pointer, runnable: pointer, priority: cint): void {.importc: "QThreadPool_start2".}
proc fcQThreadPool_waitForDone1(self: pointer, msecs: cint): bool {.importc: "QThreadPool_waitForDone1".}
proc fcQThreadPool_vtbl(self: pointer): pointer {.importc: "QThreadPool_vtbl".}
proc fcQThreadPool_vdata(self: pointer): pointer {.importc: "QThreadPool_vdata".}

type cQThreadPoolVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQThreadPool_virtualbase_metaObject(self: pointer): pointer {.importc: "QThreadPool_virtualbase_metaObject".}
proc fcQThreadPool_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QThreadPool_virtualbase_metacast".}
proc fcQThreadPool_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThreadPool_virtualbase_metacall".}
proc fcQThreadPool_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QThreadPool_virtualbase_event".}
proc fcQThreadPool_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QThreadPool_virtualbase_eventFilter".}
proc fcQThreadPool_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QThreadPool_virtualbase_timerEvent".}
proc fcQThreadPool_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QThreadPool_virtualbase_childEvent".}
proc fcQThreadPool_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QThreadPool_virtualbase_customEvent".}
proc fcQThreadPool_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QThreadPool_virtualbase_connectNotify".}
proc fcQThreadPool_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QThreadPool_virtualbase_disconnectNotify".}
proc fcQThreadPool_protectedbase_sender(self: pointer): pointer {.importc: "QThreadPool_protectedbase_sender".}
proc fcQThreadPool_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QThreadPool_protectedbase_senderSignalIndex".}
proc fcQThreadPool_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QThreadPool_protectedbase_receivers".}
proc fcQThreadPool_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QThreadPool_protectedbase_isSignalConnected".}
proc fcQThreadPool_new(vtbl, vdata: pointer): ptr cQThreadPool {.importc: "QThreadPool_new".}
proc fcQThreadPool_new2(vtbl, vdata: pointer, parent: pointer): ptr cQThreadPool {.importc: "QThreadPool_new2".}
proc fcQThreadPool_staticMetaObject(): pointer {.importc: "QThreadPool_staticMetaObject".}

proc metaObject*(self: gen_qthreadpool_types.QThreadPool): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_metaObject(self.h), owned: false)

proc metacast*(self: gen_qthreadpool_types.QThreadPool, param1: cstring): pointer =
  fcQThreadPool_metacast(self.h, param1)

proc metacall*(self: gen_qthreadpool_types.QThreadPool, param1: cint, param2: cint, param3: pointer): cint =
  fcQThreadPool_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qthreadpool_types.QThreadPool, s: cstring): string =
  let v_ms = fcQThreadPool_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qthreadpool_types.QThreadPool, s: cstring): string =
  let v_ms = fcQThreadPool_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc globalInstance*(_: type gen_qthreadpool_types.QThreadPool): gen_qthreadpool_types.QThreadPool =
  gen_qthreadpool_types.QThreadPool(h: fcQThreadPool_globalInstance(), owned: false)

proc start*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): void =
  fcQThreadPool_start(self.h, runnable.h)

proc tryStart*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): bool =
  fcQThreadPool_tryStart(self.h, runnable.h)

proc expiryTimeout*(self: gen_qthreadpool_types.QThreadPool): cint =
  fcQThreadPool_expiryTimeout(self.h)

proc setExpiryTimeout*(self: gen_qthreadpool_types.QThreadPool, expiryTimeout: cint): void =
  fcQThreadPool_setExpiryTimeout(self.h, expiryTimeout)

proc maxThreadCount*(self: gen_qthreadpool_types.QThreadPool): cint =
  fcQThreadPool_maxThreadCount(self.h)

proc setMaxThreadCount*(self: gen_qthreadpool_types.QThreadPool, maxThreadCount: cint): void =
  fcQThreadPool_setMaxThreadCount(self.h, maxThreadCount)

proc activeThreadCount*(self: gen_qthreadpool_types.QThreadPool): cint =
  fcQThreadPool_activeThreadCount(self.h)

proc setStackSize*(self: gen_qthreadpool_types.QThreadPool, stackSize: cuint): void =
  fcQThreadPool_setStackSize(self.h, stackSize)

proc stackSize*(self: gen_qthreadpool_types.QThreadPool): cuint =
  fcQThreadPool_stackSize(self.h)

proc reserveThread*(self: gen_qthreadpool_types.QThreadPool): void =
  fcQThreadPool_reserveThread(self.h)

proc releaseThread*(self: gen_qthreadpool_types.QThreadPool): void =
  fcQThreadPool_releaseThread(self.h)

proc waitForDone*(self: gen_qthreadpool_types.QThreadPool): bool =
  fcQThreadPool_waitForDone(self.h)

proc clear*(self: gen_qthreadpool_types.QThreadPool): void =
  fcQThreadPool_clear(self.h)

proc contains*(self: gen_qthreadpool_types.QThreadPool, thread: gen_qthread_types.QThread): bool =
  fcQThreadPool_contains(self.h, thread.h)

proc cancel*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): void =
  fcQThreadPool_cancel(self.h, runnable.h)

proc tryTake*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable): bool =
  fcQThreadPool_tryTake(self.h, runnable.h)

proc tr*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring): string =
  let v_ms = fcQThreadPool_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQThreadPool_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring): string =
  let v_ms = fcQThreadPool_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qthreadpool_types.QThreadPool, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQThreadPool_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qthreadpool_types.QThreadPool, runnable: gen_qrunnable_types.QRunnable, priority: cint): void =
  fcQThreadPool_start2(self.h, runnable.h, priority)

proc waitForDone*(self: gen_qthreadpool_types.QThreadPool, msecs: cint): bool =
  fcQThreadPool_waitForDone1(self.h, msecs)

type QThreadPoolmetaObjectProc* = proc(self: QThreadPool): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QThreadPoolmetacastProc* = proc(self: QThreadPool, param1: cstring): pointer {.raises: [], gcsafe.}
type QThreadPoolmetacallProc* = proc(self: QThreadPool, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QThreadPooleventProc* = proc(self: QThreadPool, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QThreadPooleventFilterProc* = proc(self: QThreadPool, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QThreadPooltimerEventProc* = proc(self: QThreadPool, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QThreadPoolchildEventProc* = proc(self: QThreadPool, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QThreadPoolcustomEventProc* = proc(self: QThreadPool, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QThreadPoolconnectNotifyProc* = proc(self: QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QThreadPooldisconnectNotifyProc* = proc(self: QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QThreadPoolVTable* {.inheritable, pure.} = object
  vtbl: cQThreadPoolVTable
  metaObject*: QThreadPoolmetaObjectProc
  metacast*: QThreadPoolmetacastProc
  metacall*: QThreadPoolmetacallProc
  event*: QThreadPooleventProc
  eventFilter*: QThreadPooleventFilterProc
  timerEvent*: QThreadPooltimerEventProc
  childEvent*: QThreadPoolchildEventProc
  customEvent*: QThreadPoolcustomEventProc
  connectNotify*: QThreadPoolconnectNotifyProc
  disconnectNotify*: QThreadPooldisconnectNotifyProc

proc QThreadPoolmetaObject*(self: gen_qthreadpool_types.QThreadPool): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_virtualbase_metaObject(self.h), owned: false)

proc QThreadPoolmetacast*(self: gen_qthreadpool_types.QThreadPool, param1: cstring): pointer =
  fcQThreadPool_virtualbase_metacast(self.h, param1)

proc QThreadPoolmetacall*(self: gen_qthreadpool_types.QThreadPool, param1: cint, param2: cint, param3: pointer): cint =
  fcQThreadPool_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QThreadPoolevent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QEvent): bool =
  fcQThreadPool_virtualbase_event(self.h, event.h)

proc QThreadPooleventFilter*(self: gen_qthreadpool_types.QThreadPool, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQThreadPool_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QThreadPooltimerEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQThreadPool_virtualbase_timerEvent(self.h, event.h)

proc QThreadPoolchildEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QChildEvent): void =
  fcQThreadPool_virtualbase_childEvent(self.h, event.h)

proc QThreadPoolcustomEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QEvent): void =
  fcQThreadPool_virtualbase_customEvent(self.h, event.h)

proc QThreadPoolconnectNotify*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQThreadPool_virtualbase_connectNotify(self.h, signal.h)

proc QThreadPooldisconnectNotify*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQThreadPool_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQThreadPool_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQThreadPool_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQThreadPool_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQThreadPool_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQThreadPool_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQThreadPool_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQThreadPool_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQThreadPool_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQThreadPool_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQThreadPool_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](fcQThreadPool_vdata(self))
  let self = QThreadPool(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQThreadPool* {.inheritable.} = ref object of QThreadPool
  vtbl*: cQThreadPoolVTable

method metaObject*(self: VirtualQThreadPool): gen_qobjectdefs_types.QMetaObject {.base.} =
  QThreadPoolmetaObject(self[])
method metacast*(self: VirtualQThreadPool, param1: cstring): pointer {.base.} =
  QThreadPoolmetacast(self[], param1)
method metacall*(self: VirtualQThreadPool, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QThreadPoolmetacall(self[], param1, param2, param3)
method event*(self: VirtualQThreadPool, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QThreadPoolevent(self[], event)
method eventFilter*(self: VirtualQThreadPool, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QThreadPooleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQThreadPool, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QThreadPooltimerEvent(self[], event)
method childEvent*(self: VirtualQThreadPool, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QThreadPoolchildEvent(self[], event)
method customEvent*(self: VirtualQThreadPool, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QThreadPoolcustomEvent(self[], event)
method connectNotify*(self: VirtualQThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QThreadPoolconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QThreadPooldisconnectNotify(self[], signal)

proc fcQThreadPool_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQThreadPool_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQThreadPool_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQThreadPool_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQThreadPool_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQThreadPool_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQThreadPool_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQThreadPool_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQThreadPool_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQThreadPool_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQThreadPool](fcQThreadPool_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qthreadpool_types.QThreadPool): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQThreadPool_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qthreadpool_types.QThreadPool): cint =
  fcQThreadPool_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qthreadpool_types.QThreadPool, signal: cstring): cint =
  fcQThreadPool_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQThreadPool_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qthreadpool_types.QThreadPool,
    vtbl: ref QThreadPoolVTable = nil): gen_qthreadpool_types.QThreadPool =
  let vtbl = if vtbl == nil: new QThreadPoolVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QThreadPoolVTable](fcQThreadPool_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQThreadPool_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQThreadPool_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQThreadPool_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQThreadPool_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQThreadPool_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQThreadPool_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQThreadPool_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQThreadPool_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQThreadPool_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQThreadPool_vtable_callback_disconnectNotify
  gen_qthreadpool_types.QThreadPool(h: fcQThreadPool_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qthreadpool_types.QThreadPool,
    parent: gen_qobject_types.QObject,
    vtbl: ref QThreadPoolVTable = nil): gen_qthreadpool_types.QThreadPool =
  let vtbl = if vtbl == nil: new QThreadPoolVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QThreadPoolVTable](fcQThreadPool_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQThreadPool_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQThreadPool_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQThreadPool_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQThreadPool_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQThreadPool_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQThreadPool_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQThreadPool_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQThreadPool_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQThreadPool_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQThreadPool_vtable_callback_disconnectNotify
  gen_qthreadpool_types.QThreadPool(h: fcQThreadPool_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQThreadPool_mvtbl = cQThreadPoolVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQThreadPool()[])](self.fcQThreadPool_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQThreadPool_method_callback_metaObject,
  metacast: fcQThreadPool_method_callback_metacast,
  metacall: fcQThreadPool_method_callback_metacall,
  event: fcQThreadPool_method_callback_event,
  eventFilter: fcQThreadPool_method_callback_eventFilter,
  timerEvent: fcQThreadPool_method_callback_timerEvent,
  childEvent: fcQThreadPool_method_callback_childEvent,
  customEvent: fcQThreadPool_method_callback_customEvent,
  connectNotify: fcQThreadPool_method_callback_connectNotify,
  disconnectNotify: fcQThreadPool_method_callback_disconnectNotify,
)
proc create*(T: type gen_qthreadpool_types.QThreadPool,
    inst: VirtualQThreadPool) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQThreadPool_new(addr(cQThreadPool_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qthreadpool_types.QThreadPool,
    parent: gen_qobject_types.QObject,
    inst: VirtualQThreadPool) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQThreadPool_new2(addr(cQThreadPool_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qthreadpool_types.QThreadPool): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_staticMetaObject())
