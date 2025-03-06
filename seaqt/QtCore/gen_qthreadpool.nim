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

proc fcQThreadPool_metaObject(self: pointer, ): pointer {.importc: "QThreadPool_metaObject".}
proc fcQThreadPool_metacast(self: pointer, param1: cstring): pointer {.importc: "QThreadPool_metacast".}
proc fcQThreadPool_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThreadPool_metacall".}
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
type cQThreadPoolVTable = object
  destructor*: proc(vtbl: ptr cQThreadPoolVTable, self: ptr cQThreadPool) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQThreadPool_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QThreadPool_virtualbase_metaObject".}
proc fcQThreadPool_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QThreadPool_virtualbase_metacast".}
proc fcQThreadPool_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThreadPool_virtualbase_metacall".}
proc fcQThreadPool_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QThreadPool_virtualbase_event".}
proc fcQThreadPool_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QThreadPool_virtualbase_eventFilter".}
proc fcQThreadPool_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QThreadPool_virtualbase_timerEvent".}
proc fcQThreadPool_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QThreadPool_virtualbase_childEvent".}
proc fcQThreadPool_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QThreadPool_virtualbase_customEvent".}
proc fcQThreadPool_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QThreadPool_virtualbase_connectNotify".}
proc fcQThreadPool_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QThreadPool_virtualbase_disconnectNotify".}
proc fcQThreadPool_new(vtbl: pointer, ): ptr cQThreadPool {.importc: "QThreadPool_new".}
proc fcQThreadPool_new2(vtbl: pointer, parent: pointer): ptr cQThreadPool {.importc: "QThreadPool_new2".}
proc fcQThreadPool_staticMetaObject(): pointer {.importc: "QThreadPool_staticMetaObject".}
proc fcQThreadPool_delete(self: pointer) {.importc: "QThreadPool_delete".}

proc metaObject*(self: gen_qthreadpool_types.QThreadPool, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_metaObject(self.h))

proc metacast*(self: gen_qthreadpool_types.QThreadPool, param1: cstring): pointer =
  fcQThreadPool_metacast(self.h, param1)

proc metacall*(self: gen_qthreadpool_types.QThreadPool, param1: cint, param2: cint, param3: pointer): cint =
  fcQThreadPool_metacall(self.h, cint(param1), param2, param3)

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
type QThreadPoolVTable* = object
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
proc QThreadPoolmetaObject*(self: gen_qthreadpool_types.QThreadPool, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQThreadPool_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QThreadPoolmetacast*(self: gen_qthreadpool_types.QThreadPool, param1: cstring): pointer =
  fcQThreadPool_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQThreadPool_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QThreadPoolmetacall*(self: gen_qthreadpool_types.QThreadPool, param1: cint, param2: cint, param3: pointer): cint =
  fcQThreadPool_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQThreadPool_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QThreadPoolevent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QEvent): bool =
  fcQThreadPool_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQThreadPool_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QThreadPooleventFilter*(self: gen_qthreadpool_types.QThreadPool, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQThreadPool_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQThreadPool_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QThreadPooltimerEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQThreadPool_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQThreadPool_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QThreadPoolchildEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QChildEvent): void =
  fcQThreadPool_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQThreadPool_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QThreadPoolcustomEvent*(self: gen_qthreadpool_types.QThreadPool, event: gen_qcoreevent_types.QEvent): void =
  fcQThreadPool_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQThreadPool_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QThreadPoolconnectNotify*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQThreadPool_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQThreadPool_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QThreadPooldisconnectNotify*(self: gen_qthreadpool_types.QThreadPool, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQThreadPool_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQThreadPool_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QThreadPoolVTable](vtbl)
  let self = QThreadPool(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qthreadpool_types.QThreadPool,
    vtbl: ref QThreadPoolVTable = nil): gen_qthreadpool_types.QThreadPool =
  let vtbl = if vtbl == nil: new QThreadPoolVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQThreadPoolVTable, _: ptr cQThreadPool) {.cdecl.} =
    let vtbl = cast[ref QThreadPoolVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQThreadPool_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQThreadPool_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQThreadPool_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQThreadPool_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQThreadPool_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQThreadPool_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQThreadPool_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQThreadPool_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQThreadPool_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQThreadPool_disconnectNotify
  gen_qthreadpool_types.QThreadPool(h: fcQThreadPool_new(addr(vtbl[]), ))

proc create*(T: type gen_qthreadpool_types.QThreadPool,
    parent: gen_qobject_types.QObject,
    vtbl: ref QThreadPoolVTable = nil): gen_qthreadpool_types.QThreadPool =
  let vtbl = if vtbl == nil: new QThreadPoolVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQThreadPoolVTable, _: ptr cQThreadPool) {.cdecl.} =
    let vtbl = cast[ref QThreadPoolVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQThreadPool_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQThreadPool_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQThreadPool_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQThreadPool_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQThreadPool_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQThreadPool_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQThreadPool_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQThreadPool_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQThreadPool_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQThreadPool_disconnectNotify
  gen_qthreadpool_types.QThreadPool(h: fcQThreadPool_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qthreadpool_types.QThreadPool): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQThreadPool_staticMetaObject())
proc delete*(self: gen_qthreadpool_types.QThreadPool) =
  fcQThreadPool_delete(self.h)
