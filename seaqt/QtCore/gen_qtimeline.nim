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
{.compile("gen_qtimeline.cpp", cflags).}


type QTimeLineStateEnum* = distinct cint
template NotRunning*(_: type QTimeLineStateEnum): untyped = 0
template Paused*(_: type QTimeLineStateEnum): untyped = 1
template Running*(_: type QTimeLineStateEnum): untyped = 2


type QTimeLineDirectionEnum* = distinct cint
template Forward*(_: type QTimeLineDirectionEnum): untyped = 0
template Backward*(_: type QTimeLineDirectionEnum): untyped = 1


import ./gen_qtimeline_types
export gen_qtimeline_types

import
  ./gen_qcoreevent_types,
  ./gen_qeasingcurve_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qeasingcurve_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQTimeLine*{.exportc: "QTimeLine", incompleteStruct.} = object

proc fcQTimeLine_new(): ptr cQTimeLine {.importc: "QTimeLine_new".}
proc fcQTimeLine_new2(duration: cint): ptr cQTimeLine {.importc: "QTimeLine_new2".}
proc fcQTimeLine_new3(duration: cint, parent: pointer): ptr cQTimeLine {.importc: "QTimeLine_new3".}
proc fcQTimeLine_metaObject(self: pointer, ): pointer {.importc: "QTimeLine_metaObject".}
proc fcQTimeLine_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeLine_metacast".}
proc fcQTimeLine_tr(s: cstring): struct_miqt_string {.importc: "QTimeLine_tr".}
proc fcQTimeLine_state(self: pointer, ): cint {.importc: "QTimeLine_state".}
proc fcQTimeLine_loopCount(self: pointer, ): cint {.importc: "QTimeLine_loopCount".}
proc fcQTimeLine_setLoopCount(self: pointer, count: cint): void {.importc: "QTimeLine_setLoopCount".}
proc fcQTimeLine_direction(self: pointer, ): cint {.importc: "QTimeLine_direction".}
proc fcQTimeLine_setDirection(self: pointer, direction: cint): void {.importc: "QTimeLine_setDirection".}
proc fcQTimeLine_duration(self: pointer, ): cint {.importc: "QTimeLine_duration".}
proc fcQTimeLine_setDuration(self: pointer, duration: cint): void {.importc: "QTimeLine_setDuration".}
proc fcQTimeLine_startFrame(self: pointer, ): cint {.importc: "QTimeLine_startFrame".}
proc fcQTimeLine_setStartFrame(self: pointer, frame: cint): void {.importc: "QTimeLine_setStartFrame".}
proc fcQTimeLine_endFrame(self: pointer, ): cint {.importc: "QTimeLine_endFrame".}
proc fcQTimeLine_setEndFrame(self: pointer, frame: cint): void {.importc: "QTimeLine_setEndFrame".}
proc fcQTimeLine_setFrameRange(self: pointer, startFrame: cint, endFrame: cint): void {.importc: "QTimeLine_setFrameRange".}
proc fcQTimeLine_updateInterval(self: pointer, ): cint {.importc: "QTimeLine_updateInterval".}
proc fcQTimeLine_setUpdateInterval(self: pointer, interval: cint): void {.importc: "QTimeLine_setUpdateInterval".}
proc fcQTimeLine_easingCurve(self: pointer, ): pointer {.importc: "QTimeLine_easingCurve".}
proc fcQTimeLine_setEasingCurve(self: pointer, curve: pointer): void {.importc: "QTimeLine_setEasingCurve".}
proc fcQTimeLine_currentTime(self: pointer, ): cint {.importc: "QTimeLine_currentTime".}
proc fcQTimeLine_currentFrame(self: pointer, ): cint {.importc: "QTimeLine_currentFrame".}
proc fcQTimeLine_currentValue(self: pointer, ): float64 {.importc: "QTimeLine_currentValue".}
proc fcQTimeLine_frameForTime(self: pointer, msec: cint): cint {.importc: "QTimeLine_frameForTime".}
proc fcQTimeLine_valueForTime(self: pointer, msec: cint): float64 {.importc: "QTimeLine_valueForTime".}
proc fcQTimeLine_start(self: pointer, ): void {.importc: "QTimeLine_start".}
proc fcQTimeLine_resume(self: pointer, ): void {.importc: "QTimeLine_resume".}
proc fcQTimeLine_stop(self: pointer, ): void {.importc: "QTimeLine_stop".}
proc fcQTimeLine_setPaused(self: pointer, paused: bool): void {.importc: "QTimeLine_setPaused".}
proc fcQTimeLine_setCurrentTime(self: pointer, msec: cint): void {.importc: "QTimeLine_setCurrentTime".}
proc fcQTimeLine_toggleDirection(self: pointer, ): void {.importc: "QTimeLine_toggleDirection".}
proc fcQTimeLine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeLine_tr2".}
proc fcQTimeLine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeLine_tr3".}
proc fQTimeLine_virtualbase_valueForTime(self: pointer, msec: cint): float64{.importc: "QTimeLine_virtualbase_valueForTime".}
proc fcQTimeLine_override_virtual_valueForTime(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_valueForTime".}
proc fQTimeLine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTimeLine_virtualbase_timerEvent".}
proc fcQTimeLine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_timerEvent".}
proc fQTimeLine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTimeLine_virtualbase_event".}
proc fcQTimeLine_override_virtual_event(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_event".}
proc fQTimeLine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTimeLine_virtualbase_eventFilter".}
proc fcQTimeLine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_eventFilter".}
proc fQTimeLine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTimeLine_virtualbase_childEvent".}
proc fcQTimeLine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_childEvent".}
proc fQTimeLine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTimeLine_virtualbase_customEvent".}
proc fcQTimeLine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_customEvent".}
proc fQTimeLine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTimeLine_virtualbase_connectNotify".}
proc fcQTimeLine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_connectNotify".}
proc fQTimeLine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTimeLine_virtualbase_disconnectNotify".}
proc fcQTimeLine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_disconnectNotify".}
proc fcQTimeLine_delete(self: pointer) {.importc: "QTimeLine_delete".}


func init*(T: type gen_qtimeline_types.QTimeLine, h: ptr cQTimeLine): gen_qtimeline_types.QTimeLine =
  T(h: h)
proc create*(T: type gen_qtimeline_types.QTimeLine, ): gen_qtimeline_types.QTimeLine =
  gen_qtimeline_types.QTimeLine.init(fcQTimeLine_new())

proc create*(T: type gen_qtimeline_types.QTimeLine, duration: cint): gen_qtimeline_types.QTimeLine =
  gen_qtimeline_types.QTimeLine.init(fcQTimeLine_new2(duration))

proc create*(T: type gen_qtimeline_types.QTimeLine, duration: cint, parent: gen_qobject_types.QObject): gen_qtimeline_types.QTimeLine =
  gen_qtimeline_types.QTimeLine.init(fcQTimeLine_new3(duration, parent.h))

proc metaObject*(self: gen_qtimeline_types.QTimeLine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_metaObject(self.h))

proc metacast*(self: gen_qtimeline_types.QTimeLine, param1: cstring): pointer =
  fcQTimeLine_metacast(self.h, param1)

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring): string =
  let v_ms = fcQTimeLine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qtimeline_types.QTimeLine, ): cint =
  cint(fcQTimeLine_state(self.h))

proc loopCount*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_loopCount(self.h)

proc setLoopCount*(self: gen_qtimeline_types.QTimeLine, count: cint): void =
  fcQTimeLine_setLoopCount(self.h, count)

proc direction*(self: gen_qtimeline_types.QTimeLine, ): cint =
  cint(fcQTimeLine_direction(self.h))

proc setDirection*(self: gen_qtimeline_types.QTimeLine, direction: cint): void =
  fcQTimeLine_setDirection(self.h, cint(direction))

proc duration*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_duration(self.h)

proc setDuration*(self: gen_qtimeline_types.QTimeLine, duration: cint): void =
  fcQTimeLine_setDuration(self.h, duration)

proc startFrame*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_startFrame(self.h)

proc setStartFrame*(self: gen_qtimeline_types.QTimeLine, frame: cint): void =
  fcQTimeLine_setStartFrame(self.h, frame)

proc endFrame*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_endFrame(self.h)

proc setEndFrame*(self: gen_qtimeline_types.QTimeLine, frame: cint): void =
  fcQTimeLine_setEndFrame(self.h, frame)

proc setFrameRange*(self: gen_qtimeline_types.QTimeLine, startFrame: cint, endFrame: cint): void =
  fcQTimeLine_setFrameRange(self.h, startFrame, endFrame)

proc updateInterval*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_updateInterval(self.h)

proc setUpdateInterval*(self: gen_qtimeline_types.QTimeLine, interval: cint): void =
  fcQTimeLine_setUpdateInterval(self.h, interval)

proc easingCurve*(self: gen_qtimeline_types.QTimeLine, ): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQTimeLine_easingCurve(self.h))

proc setEasingCurve*(self: gen_qtimeline_types.QTimeLine, curve: gen_qeasingcurve_types.QEasingCurve): void =
  fcQTimeLine_setEasingCurve(self.h, curve.h)

proc currentTime*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_currentTime(self.h)

proc currentFrame*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_currentFrame(self.h)

proc currentValue*(self: gen_qtimeline_types.QTimeLine, ): float64 =
  fcQTimeLine_currentValue(self.h)

proc frameForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): cint =
  fcQTimeLine_frameForTime(self.h, msec)

proc valueForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): float64 =
  fcQTimeLine_valueForTime(self.h, msec)

proc start*(self: gen_qtimeline_types.QTimeLine, ): void =
  fcQTimeLine_start(self.h)

proc resume*(self: gen_qtimeline_types.QTimeLine, ): void =
  fcQTimeLine_resume(self.h)

proc stop*(self: gen_qtimeline_types.QTimeLine, ): void =
  fcQTimeLine_stop(self.h)

proc setPaused*(self: gen_qtimeline_types.QTimeLine, paused: bool): void =
  fcQTimeLine_setPaused(self.h, paused)

proc setCurrentTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): void =
  fcQTimeLine_setCurrentTime(self.h, msec)

proc toggleDirection*(self: gen_qtimeline_types.QTimeLine, ): void =
  fcQTimeLine_toggleDirection(self.h)

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring, c: cstring): string =
  let v_ms = fcQTimeLine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTimeLine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTimeLinevalueForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): float64 =
  fQTimeLine_virtualbase_valueForTime(self.h, msec)

type QTimeLinevalueForTimeProc* = proc(msec: cint): float64
proc onvalueForTime*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLinevalueForTimeProc) =
  # TODO check subclass
  var tmp = new QTimeLinevalueForTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_valueForTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_valueForTime(self: ptr cQTimeLine, slot: int, msec: cint): float64 {.exportc: "miqt_exec_callback_QTimeLine_valueForTime ".} =
  var nimfunc = cast[ptr QTimeLinevalueForTimeProc](cast[pointer](slot))
  let slotval1 = msec


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimeLinetimerEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTimeLine_virtualbase_timerEvent(self.h, event.h)

type QTimeLinetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLinetimerEventProc) =
  # TODO check subclass
  var tmp = new QTimeLinetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_timerEvent(self: ptr cQTimeLine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_timerEvent ".} =
  var nimfunc = cast[ptr QTimeLinetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTimeLineevent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QEvent): bool =
  fQTimeLine_virtualbase_event(self.h, event.h)

type QTimeLineeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLineeventProc) =
  # TODO check subclass
  var tmp = new QTimeLineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_event(self: ptr cQTimeLine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeLine_event ".} =
  var nimfunc = cast[ptr QTimeLineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimeLineeventFilter*(self: gen_qtimeline_types.QTimeLine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTimeLine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTimeLineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLineeventFilterProc) =
  # TODO check subclass
  var tmp = new QTimeLineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_eventFilter(self: ptr cQTimeLine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeLine_eventFilter ".} =
  var nimfunc = cast[ptr QTimeLineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTimeLinechildEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QChildEvent): void =
  fQTimeLine_virtualbase_childEvent(self.h, event.h)

type QTimeLinechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLinechildEventProc) =
  # TODO check subclass
  var tmp = new QTimeLinechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_childEvent(self: ptr cQTimeLine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_childEvent ".} =
  var nimfunc = cast[ptr QTimeLinechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTimeLinecustomEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QEvent): void =
  fQTimeLine_virtualbase_customEvent(self.h, event.h)

type QTimeLinecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLinecustomEventProc) =
  # TODO check subclass
  var tmp = new QTimeLinecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_customEvent(self: ptr cQTimeLine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_customEvent ".} =
  var nimfunc = cast[ptr QTimeLinecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTimeLineconnectNotify*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTimeLine_virtualbase_connectNotify(self.h, signal.h)

type QTimeLineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTimeLineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_connectNotify(self: ptr cQTimeLine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_connectNotify ".} =
  var nimfunc = cast[ptr QTimeLineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTimeLinedisconnectNotify*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTimeLine_virtualbase_disconnectNotify(self.h, signal.h)

type QTimeLinedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtimeline_types.QTimeLine, slot: QTimeLinedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTimeLinedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_disconnectNotify(self: ptr cQTimeLine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_disconnectNotify ".} =
  var nimfunc = cast[ptr QTimeLinedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtimeline_types.QTimeLine) =
  fcQTimeLine_delete(self.h)
