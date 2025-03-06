import ./Qt5Core_libs

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


type QEventLoopProcessEventsFlagEnum* = distinct cint
template AllEvents*(_: type QEventLoopProcessEventsFlagEnum): untyped = 0
template ExcludeUserInputEvents*(_: type QEventLoopProcessEventsFlagEnum): untyped = 1
template ExcludeSocketNotifiers*(_: type QEventLoopProcessEventsFlagEnum): untyped = 2
template WaitForMoreEvents*(_: type QEventLoopProcessEventsFlagEnum): untyped = 4
template X11ExcludeTimers*(_: type QEventLoopProcessEventsFlagEnum): untyped = 8
template EventLoopExec*(_: type QEventLoopProcessEventsFlagEnum): untyped = 32
template DialogExec*(_: type QEventLoopProcessEventsFlagEnum): untyped = 64


import ./gen_qeventloop_types
export gen_qeventloop_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qthread_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qthread_types

type cQEventLoop*{.exportc: "QEventLoop", incompleteStruct.} = object
type cQEventLoopLocker*{.exportc: "QEventLoopLocker", incompleteStruct.} = object

proc fcQEventLoop_metaObject(self: pointer, ): pointer {.importc: "QEventLoop_metaObject".}
proc fcQEventLoop_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventLoop_metacast".}
proc fcQEventLoop_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventLoop_metacall".}
proc fcQEventLoop_tr(s: cstring): struct_miqt_string {.importc: "QEventLoop_tr".}
proc fcQEventLoop_trUtf8(s: cstring): struct_miqt_string {.importc: "QEventLoop_trUtf8".}
proc fcQEventLoop_processEvents(self: pointer, ): bool {.importc: "QEventLoop_processEvents".}
proc fcQEventLoop_processEvents2(self: pointer, flags: cint, maximumTime: cint): void {.importc: "QEventLoop_processEvents2".}
proc fcQEventLoop_exec(self: pointer, ): cint {.importc: "QEventLoop_exec".}
proc fcQEventLoop_exit(self: pointer, ): void {.importc: "QEventLoop_exit".}
proc fcQEventLoop_isRunning(self: pointer, ): bool {.importc: "QEventLoop_isRunning".}
proc fcQEventLoop_wakeUp(self: pointer, ): void {.importc: "QEventLoop_wakeUp".}
proc fcQEventLoop_event(self: pointer, event: pointer): bool {.importc: "QEventLoop_event".}
proc fcQEventLoop_quit(self: pointer, ): void {.importc: "QEventLoop_quit".}
proc fcQEventLoop_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventLoop_tr2".}
proc fcQEventLoop_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventLoop_tr3".}
proc fcQEventLoop_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventLoop_trUtf82".}
proc fcQEventLoop_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventLoop_trUtf83".}
proc fcQEventLoop_processEvents1(self: pointer, flags: cint): bool {.importc: "QEventLoop_processEvents1".}
proc fcQEventLoop_exec1(self: pointer, flags: cint): cint {.importc: "QEventLoop_exec1".}
proc fcQEventLoop_exit1(self: pointer, returnCode: cint): void {.importc: "QEventLoop_exit1".}
type cQEventLoopVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQEventLoopVTable, self: ptr cQEventLoop) {.cdecl, raises:[], gcsafe.}
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
proc fcQEventLoop_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QEventLoop_virtualbase_metaObject".}
proc fcQEventLoop_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventLoop_virtualbase_metacast".}
proc fcQEventLoop_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventLoop_virtualbase_metacall".}
proc fcQEventLoop_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QEventLoop_virtualbase_event".}
proc fcQEventLoop_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QEventLoop_virtualbase_eventFilter".}
proc fcQEventLoop_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QEventLoop_virtualbase_timerEvent".}
proc fcQEventLoop_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QEventLoop_virtualbase_childEvent".}
proc fcQEventLoop_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QEventLoop_virtualbase_customEvent".}
proc fcQEventLoop_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QEventLoop_virtualbase_connectNotify".}
proc fcQEventLoop_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QEventLoop_virtualbase_disconnectNotify".}
proc fcQEventLoop_protectedbase_sender(self: pointer, ): pointer {.importc: "QEventLoop_protectedbase_sender".}
proc fcQEventLoop_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QEventLoop_protectedbase_senderSignalIndex".}
proc fcQEventLoop_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QEventLoop_protectedbase_receivers".}
proc fcQEventLoop_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QEventLoop_protectedbase_isSignalConnected".}
proc fcQEventLoop_new(vtbl: pointer, ): ptr cQEventLoop {.importc: "QEventLoop_new".}
proc fcQEventLoop_new2(vtbl: pointer, parent: pointer): ptr cQEventLoop {.importc: "QEventLoop_new2".}
proc fcQEventLoop_staticMetaObject(): pointer {.importc: "QEventLoop_staticMetaObject".}
proc fcQEventLoopLocker_new(): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new".}
proc fcQEventLoopLocker_new2(loop: pointer): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new2".}
proc fcQEventLoopLocker_new3(thread: pointer): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new3".}

proc metaObject*(self: gen_qeventloop_types.QEventLoop, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventLoop_metaObject(self.h), owned: false)

proc metacast*(self: gen_qeventloop_types.QEventLoop, param1: cstring): pointer =
  fcQEventLoop_metacast(self.h, param1)

proc metacall*(self: gen_qeventloop_types.QEventLoop, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventLoop_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qeventloop_types.QEventLoop, s: cstring): string =
  let v_ms = fcQEventLoop_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventloop_types.QEventLoop, s: cstring): string =
  let v_ms = fcQEventLoop_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc processEvents*(self: gen_qeventloop_types.QEventLoop, ): bool =
  fcQEventLoop_processEvents(self.h)

proc processEvents*(self: gen_qeventloop_types.QEventLoop, flags: cint, maximumTime: cint): void =
  fcQEventLoop_processEvents2(self.h, cint(flags), maximumTime)

proc exec*(self: gen_qeventloop_types.QEventLoop, ): cint =
  fcQEventLoop_exec(self.h)

proc exit*(self: gen_qeventloop_types.QEventLoop, ): void =
  fcQEventLoop_exit(self.h)

proc isRunning*(self: gen_qeventloop_types.QEventLoop, ): bool =
  fcQEventLoop_isRunning(self.h)

proc wakeUp*(self: gen_qeventloop_types.QEventLoop, ): void =
  fcQEventLoop_wakeUp(self.h)

proc event*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventLoop_event(self.h, event.h)

proc quit*(self: gen_qeventloop_types.QEventLoop, ): void =
  fcQEventLoop_quit(self.h)

proc tr*(_: type gen_qeventloop_types.QEventLoop, s: cstring, c: cstring): string =
  let v_ms = fcQEventLoop_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qeventloop_types.QEventLoop, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventLoop_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventloop_types.QEventLoop, s: cstring, c: cstring): string =
  let v_ms = fcQEventLoop_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventloop_types.QEventLoop, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventLoop_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc processEvents*(self: gen_qeventloop_types.QEventLoop, flags: cint): bool =
  fcQEventLoop_processEvents1(self.h, cint(flags))

proc exec*(self: gen_qeventloop_types.QEventLoop, flags: cint): cint =
  fcQEventLoop_exec1(self.h, cint(flags))

proc exit*(self: gen_qeventloop_types.QEventLoop, returnCode: cint): void =
  fcQEventLoop_exit1(self.h, returnCode)

type QEventLoopmetaObjectProc* = proc(self: QEventLoop): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QEventLoopmetacastProc* = proc(self: QEventLoop, param1: cstring): pointer {.raises: [], gcsafe.}
type QEventLoopmetacallProc* = proc(self: QEventLoop, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QEventLoopeventProc* = proc(self: QEventLoop, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventLoopeventFilterProc* = proc(self: QEventLoop, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventLooptimerEventProc* = proc(self: QEventLoop, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QEventLoopchildEventProc* = proc(self: QEventLoop, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QEventLoopcustomEventProc* = proc(self: QEventLoop, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QEventLoopconnectNotifyProc* = proc(self: QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QEventLoopdisconnectNotifyProc* = proc(self: QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QEventLoopVTable* {.inheritable, pure.} = object
  vtbl: cQEventLoopVTable
  metaObject*: QEventLoopmetaObjectProc
  metacast*: QEventLoopmetacastProc
  metacall*: QEventLoopmetacallProc
  event*: QEventLoopeventProc
  eventFilter*: QEventLoopeventFilterProc
  timerEvent*: QEventLooptimerEventProc
  childEvent*: QEventLoopchildEventProc
  customEvent*: QEventLoopcustomEventProc
  connectNotify*: QEventLoopconnectNotifyProc
  disconnectNotify*: QEventLoopdisconnectNotifyProc
proc QEventLoopmetaObject*(self: gen_qeventloop_types.QEventLoop, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventLoop_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQEventLoop_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QEventLoopmetacast*(self: gen_qeventloop_types.QEventLoop, param1: cstring): pointer =
  fcQEventLoop_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQEventLoop_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QEventLoopmetacall*(self: gen_qeventloop_types.QEventLoop, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventLoop_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQEventLoop_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QEventLoopevent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventLoop_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQEventLoop_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QEventLoopeventFilter*(self: gen_qeventloop_types.QEventLoop, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventLoop_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQEventLoop_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QEventLooptimerEvent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQEventLoop_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQEventLoop_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QEventLoopchildEvent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QChildEvent): void =
  fcQEventLoop_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQEventLoop_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QEventLoopcustomEvent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QEvent): void =
  fcQEventLoop_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQEventLoop_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QEventLoopconnectNotify*(self: gen_qeventloop_types.QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQEventLoop_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQEventLoop_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QEventLoopdisconnectNotify*(self: gen_qeventloop_types.QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQEventLoop_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQEventLoop_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventLoopVTable](vtbl)
  let self = QEventLoop(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQEventLoop* {.inheritable.} = ref object of QEventLoop
  vtbl*: cQEventLoopVTable
method metaObject*(self: VirtualQEventLoop, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QEventLoopmetaObject(self[])
proc miqt_exec_method_cQEventLoop_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQEventLoop, param1: cstring): pointer {.base.} =
  QEventLoopmetacast(self[], param1)
proc miqt_exec_method_cQEventLoop_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQEventLoop, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QEventLoopmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQEventLoop_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQEventLoop, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QEventLoopevent(self[], event)
proc miqt_exec_method_cQEventLoop_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQEventLoop, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QEventLoopeventFilter(self[], watched, event)
proc miqt_exec_method_cQEventLoop_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQEventLoop, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QEventLooptimerEvent(self[], event)
proc miqt_exec_method_cQEventLoop_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQEventLoop, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QEventLoopchildEvent(self[], event)
proc miqt_exec_method_cQEventLoop_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQEventLoop, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QEventLoopcustomEvent(self[], event)
proc miqt_exec_method_cQEventLoop_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QEventLoopconnectNotify(self[], signal)
proc miqt_exec_method_cQEventLoop_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QEventLoopdisconnectNotify(self[], signal)
proc miqt_exec_method_cQEventLoop_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQEventLoop](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qeventloop_types.QEventLoop, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQEventLoop_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qeventloop_types.QEventLoop, ): cint =
  fcQEventLoop_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qeventloop_types.QEventLoop, signal: cstring): cint =
  fcQEventLoop_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qeventloop_types.QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQEventLoop_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qeventloop_types.QEventLoop,
    vtbl: ref QEventLoopVTable = nil): gen_qeventloop_types.QEventLoop =
  let vtbl = if vtbl == nil: new QEventLoopVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQEventLoopVTable, _: ptr cQEventLoop) {.cdecl.} =
    let vtbl = cast[ref QEventLoopVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQEventLoop_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQEventLoop_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQEventLoop_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQEventLoop_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQEventLoop_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQEventLoop_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQEventLoop_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQEventLoop_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQEventLoop_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQEventLoop_disconnectNotify
  gen_qeventloop_types.QEventLoop(h: fcQEventLoop_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qeventloop_types.QEventLoop,
    parent: gen_qobject_types.QObject,
    vtbl: ref QEventLoopVTable = nil): gen_qeventloop_types.QEventLoop =
  let vtbl = if vtbl == nil: new QEventLoopVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQEventLoopVTable, _: ptr cQEventLoop) {.cdecl.} =
    let vtbl = cast[ref QEventLoopVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQEventLoop_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQEventLoop_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQEventLoop_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQEventLoop_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQEventLoop_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQEventLoop_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQEventLoop_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQEventLoop_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQEventLoop_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQEventLoop_disconnectNotify
  gen_qeventloop_types.QEventLoop(h: fcQEventLoop_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qeventloop_types.QEventLoop,
    vtbl: VirtualQEventLoop) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQEventLoopVTable, _: ptr cQEventLoop) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQEventLoop()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQEventLoop_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQEventLoop_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQEventLoop_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQEventLoop_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQEventLoop_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQEventLoop_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQEventLoop_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQEventLoop_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQEventLoop_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQEventLoop_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQEventLoop_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qeventloop_types.QEventLoop,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQEventLoop) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQEventLoopVTable, _: ptr cQEventLoop) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQEventLoop()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQEventLoop, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQEventLoop_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQEventLoop_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQEventLoop_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQEventLoop_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQEventLoop_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQEventLoop_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQEventLoop_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQEventLoop_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQEventLoop_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQEventLoop_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQEventLoop_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qeventloop_types.QEventLoop): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventLoop_staticMetaObject())
proc create*(T: type gen_qeventloop_types.QEventLoopLocker): gen_qeventloop_types.QEventLoopLocker =
  gen_qeventloop_types.QEventLoopLocker(h: fcQEventLoopLocker_new(), owned: true)

proc create*(T: type gen_qeventloop_types.QEventLoopLocker,
    loop: gen_qeventloop_types.QEventLoop): gen_qeventloop_types.QEventLoopLocker =
  gen_qeventloop_types.QEventLoopLocker(h: fcQEventLoopLocker_new2(loop.h), owned: true)

proc create*(T: type gen_qeventloop_types.QEventLoopLocker,
    thread: gen_qthread_types.QThread): gen_qeventloop_types.QEventLoopLocker =
  gen_qeventloop_types.QEventLoopLocker(h: fcQEventLoopLocker_new3(thread.h), owned: true)

