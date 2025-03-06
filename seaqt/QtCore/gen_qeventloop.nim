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
{.compile("gen_qeventloop.cpp", cflags).}


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

proc fcQEventLoop_new(): ptr cQEventLoop {.importc: "QEventLoop_new".}
proc fcQEventLoop_new2(parent: pointer): ptr cQEventLoop {.importc: "QEventLoop_new2".}
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
proc fQEventLoop_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QEventLoop_virtualbase_metaObject".}
proc fcQEventLoop_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_metaObject".}
proc fQEventLoop_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QEventLoop_virtualbase_metacast".}
proc fcQEventLoop_override_virtual_metacast(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_metacast".}
proc fQEventLoop_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QEventLoop_virtualbase_metacall".}
proc fcQEventLoop_override_virtual_metacall(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_metacall".}
proc fQEventLoop_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QEventLoop_virtualbase_event".}
proc fcQEventLoop_override_virtual_event(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_event".}
proc fQEventLoop_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QEventLoop_virtualbase_eventFilter".}
proc fcQEventLoop_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_eventFilter".}
proc fQEventLoop_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QEventLoop_virtualbase_timerEvent".}
proc fcQEventLoop_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_timerEvent".}
proc fQEventLoop_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QEventLoop_virtualbase_childEvent".}
proc fcQEventLoop_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_childEvent".}
proc fQEventLoop_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QEventLoop_virtualbase_customEvent".}
proc fcQEventLoop_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_customEvent".}
proc fQEventLoop_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QEventLoop_virtualbase_connectNotify".}
proc fcQEventLoop_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_connectNotify".}
proc fQEventLoop_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QEventLoop_virtualbase_disconnectNotify".}
proc fcQEventLoop_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_disconnectNotify".}
proc fcQEventLoop_staticMetaObject(): pointer {.importc: "QEventLoop_staticMetaObject".}
proc fcQEventLoop_delete(self: pointer) {.importc: "QEventLoop_delete".}
proc fcQEventLoopLocker_new(): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new".}
proc fcQEventLoopLocker_new2(loop: pointer): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new2".}
proc fcQEventLoopLocker_new3(thread: pointer): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new3".}
proc fcQEventLoopLocker_delete(self: pointer) {.importc: "QEventLoopLocker_delete".}


func init*(T: type gen_qeventloop_types.QEventLoop, h: ptr cQEventLoop): gen_qeventloop_types.QEventLoop =
  T(h: h)
proc create*(T: type gen_qeventloop_types.QEventLoop, ): gen_qeventloop_types.QEventLoop =
  gen_qeventloop_types.QEventLoop.init(fcQEventLoop_new())

proc create*(T: type gen_qeventloop_types.QEventLoop, parent: gen_qobject_types.QObject): gen_qeventloop_types.QEventLoop =
  gen_qeventloop_types.QEventLoop.init(fcQEventLoop_new2(parent.h))

proc metaObject*(self: gen_qeventloop_types.QEventLoop, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventLoop_metaObject(self.h))

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

proc QEventLoopmetaObject*(self: gen_qeventloop_types.QEventLoop, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQEventLoop_virtualbase_metaObject(self.h))

type QEventLoopmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopmetaObjectProc) =
  # TODO check subclass
  var tmp = new QEventLoopmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_metaObject(self: ptr cQEventLoop, slot: int): pointer {.exportc: "miqt_exec_callback_QEventLoop_metaObject ".} =
  var nimfunc = cast[ptr QEventLoopmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QEventLoopmetacast*(self: gen_qeventloop_types.QEventLoop, param1: cstring): pointer =
  fQEventLoop_virtualbase_metacast(self.h, param1)

type QEventLoopmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopmetacastProc) =
  # TODO check subclass
  var tmp = new QEventLoopmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_metacast(self: ptr cQEventLoop, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QEventLoop_metacast ".} =
  var nimfunc = cast[ptr QEventLoopmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QEventLoopmetacall*(self: gen_qeventloop_types.QEventLoop, param1: cint, param2: cint, param3: pointer): cint =
  fQEventLoop_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QEventLoopmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopmetacallProc) =
  # TODO check subclass
  var tmp = new QEventLoopmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_metacall(self: ptr cQEventLoop, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QEventLoop_metacall ".} =
  var nimfunc = cast[ptr QEventLoopmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QEventLoopevent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QEvent): bool =
  fQEventLoop_virtualbase_event(self.h, event.h)

type QEventLoopeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopeventProc) =
  # TODO check subclass
  var tmp = new QEventLoopeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_event(self: ptr cQEventLoop, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QEventLoop_event ".} =
  var nimfunc = cast[ptr QEventLoopeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QEventLoopeventFilter*(self: gen_qeventloop_types.QEventLoop, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQEventLoop_virtualbase_eventFilter(self.h, watched.h, event.h)

type QEventLoopeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopeventFilterProc) =
  # TODO check subclass
  var tmp = new QEventLoopeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_eventFilter(self: ptr cQEventLoop, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QEventLoop_eventFilter ".} =
  var nimfunc = cast[ptr QEventLoopeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QEventLooptimerEvent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QTimerEvent): void =
  fQEventLoop_virtualbase_timerEvent(self.h, event.h)

type QEventLooptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qeventloop_types.QEventLoop, slot: QEventLooptimerEventProc) =
  # TODO check subclass
  var tmp = new QEventLooptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_timerEvent(self: ptr cQEventLoop, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_timerEvent ".} =
  var nimfunc = cast[ptr QEventLooptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QEventLoopchildEvent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QChildEvent): void =
  fQEventLoop_virtualbase_childEvent(self.h, event.h)

type QEventLoopchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopchildEventProc) =
  # TODO check subclass
  var tmp = new QEventLoopchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_childEvent(self: ptr cQEventLoop, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_childEvent ".} =
  var nimfunc = cast[ptr QEventLoopchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QEventLoopcustomEvent*(self: gen_qeventloop_types.QEventLoop, event: gen_qcoreevent_types.QEvent): void =
  fQEventLoop_virtualbase_customEvent(self.h, event.h)

type QEventLoopcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopcustomEventProc) =
  # TODO check subclass
  var tmp = new QEventLoopcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_customEvent(self: ptr cQEventLoop, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_customEvent ".} =
  var nimfunc = cast[ptr QEventLoopcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QEventLoopconnectNotify*(self: gen_qeventloop_types.QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQEventLoop_virtualbase_connectNotify(self.h, signal.h)

type QEventLoopconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QEventLoopconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_connectNotify(self: ptr cQEventLoop, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_connectNotify ".} =
  var nimfunc = cast[ptr QEventLoopconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QEventLoopdisconnectNotify*(self: gen_qeventloop_types.QEventLoop, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQEventLoop_virtualbase_disconnectNotify(self.h, signal.h)

type QEventLoopdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qeventloop_types.QEventLoop, slot: QEventLoopdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QEventLoopdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_disconnectNotify(self: ptr cQEventLoop, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_disconnectNotify ".} =
  var nimfunc = cast[ptr QEventLoopdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qeventloop_types.QEventLoop): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventLoop_staticMetaObject())
proc delete*(self: gen_qeventloop_types.QEventLoop) =
  fcQEventLoop_delete(self.h)

func init*(T: type gen_qeventloop_types.QEventLoopLocker, h: ptr cQEventLoopLocker): gen_qeventloop_types.QEventLoopLocker =
  T(h: h)
proc create*(T: type gen_qeventloop_types.QEventLoopLocker, ): gen_qeventloop_types.QEventLoopLocker =
  gen_qeventloop_types.QEventLoopLocker.init(fcQEventLoopLocker_new())

proc create*(T: type gen_qeventloop_types.QEventLoopLocker, loop: gen_qeventloop_types.QEventLoop): gen_qeventloop_types.QEventLoopLocker =
  gen_qeventloop_types.QEventLoopLocker.init(fcQEventLoopLocker_new2(loop.h))

proc create*(T: type gen_qeventloop_types.QEventLoopLocker, thread: gen_qthread_types.QThread): gen_qeventloop_types.QEventLoopLocker =
  gen_qeventloop_types.QEventLoopLocker.init(fcQEventLoopLocker_new3(thread.h))

proc delete*(self: gen_qeventloop_types.QEventLoopLocker) =
  fcQEventLoopLocker_delete(self.h)
