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
{.compile("gen_qtimeline.cpp", cflags).}


type QTimeLineStateEnum* = distinct cint
template NotRunning*(_: type QTimeLineStateEnum): untyped = 0
template Paused*(_: type QTimeLineStateEnum): untyped = 1
template Running*(_: type QTimeLineStateEnum): untyped = 2


type QTimeLineDirectionEnum* = distinct cint
template Forward*(_: type QTimeLineDirectionEnum): untyped = 0
template Backward*(_: type QTimeLineDirectionEnum): untyped = 1


type QTimeLineCurveShapeEnum* = distinct cint
template EaseInCurve*(_: type QTimeLineCurveShapeEnum): untyped = 0
template EaseOutCurve*(_: type QTimeLineCurveShapeEnum): untyped = 1
template EaseInOutCurve*(_: type QTimeLineCurveShapeEnum): untyped = 2
template LinearCurve*(_: type QTimeLineCurveShapeEnum): untyped = 3
template SineCurve*(_: type QTimeLineCurveShapeEnum): untyped = 4
template CosineCurve*(_: type QTimeLineCurveShapeEnum): untyped = 5


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

proc fcQTimeLine_metaObject(self: pointer, ): pointer {.importc: "QTimeLine_metaObject".}
proc fcQTimeLine_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeLine_metacast".}
proc fcQTimeLine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeLine_metacall".}
proc fcQTimeLine_tr(s: cstring): struct_miqt_string {.importc: "QTimeLine_tr".}
proc fcQTimeLine_trUtf8(s: cstring): struct_miqt_string {.importc: "QTimeLine_trUtf8".}
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
proc fcQTimeLine_curveShape(self: pointer, ): cint {.importc: "QTimeLine_curveShape".}
proc fcQTimeLine_setCurveShape(self: pointer, shape: cint): void {.importc: "QTimeLine_setCurveShape".}
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
proc fcQTimeLine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeLine_trUtf82".}
proc fcQTimeLine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeLine_trUtf83".}
type cQTimeLineVTable = object
  destructor*: proc(vtbl: ptr cQTimeLineVTable, self: ptr cQTimeLine) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  valueForTime*: proc(vtbl, self: pointer, msec: cint): float64 {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTimeLine_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTimeLine_virtualbase_metaObject".}
proc fcQTimeLine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeLine_virtualbase_metacast".}
proc fcQTimeLine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeLine_virtualbase_metacall".}
proc fcQTimeLine_virtualbase_valueForTime(self: pointer, msec: cint): float64 {.importc: "QTimeLine_virtualbase_valueForTime".}
proc fcQTimeLine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTimeLine_virtualbase_timerEvent".}
proc fcQTimeLine_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTimeLine_virtualbase_event".}
proc fcQTimeLine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTimeLine_virtualbase_eventFilter".}
proc fcQTimeLine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTimeLine_virtualbase_childEvent".}
proc fcQTimeLine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTimeLine_virtualbase_customEvent".}
proc fcQTimeLine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTimeLine_virtualbase_connectNotify".}
proc fcQTimeLine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTimeLine_virtualbase_disconnectNotify".}
proc fcQTimeLine_protectedbase_sender(self: pointer, ): pointer {.importc: "QTimeLine_protectedbase_sender".}
proc fcQTimeLine_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTimeLine_protectedbase_senderSignalIndex".}
proc fcQTimeLine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTimeLine_protectedbase_receivers".}
proc fcQTimeLine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTimeLine_protectedbase_isSignalConnected".}
proc fcQTimeLine_new(vtbl: pointer, ): ptr cQTimeLine {.importc: "QTimeLine_new".}
proc fcQTimeLine_new2(vtbl: pointer, duration: cint): ptr cQTimeLine {.importc: "QTimeLine_new2".}
proc fcQTimeLine_new3(vtbl: pointer, duration: cint, parent: pointer): ptr cQTimeLine {.importc: "QTimeLine_new3".}
proc fcQTimeLine_staticMetaObject(): pointer {.importc: "QTimeLine_staticMetaObject".}
proc fcQTimeLine_delete(self: pointer) {.importc: "QTimeLine_delete".}

proc metaObject*(self: gen_qtimeline_types.QTimeLine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_metaObject(self.h))

proc metacast*(self: gen_qtimeline_types.QTimeLine, param1: cstring): pointer =
  fcQTimeLine_metacast(self.h, param1)

proc metacall*(self: gen_qtimeline_types.QTimeLine, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimeLine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring): string =
  let v_ms = fcQTimeLine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtimeline_types.QTimeLine, s: cstring): string =
  let v_ms = fcQTimeLine_trUtf8(s)
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

proc curveShape*(self: gen_qtimeline_types.QTimeLine, ): cint =
  cint(fcQTimeLine_curveShape(self.h))

proc setCurveShape*(self: gen_qtimeline_types.QTimeLine, shape: cint): void =
  fcQTimeLine_setCurveShape(self.h, cint(shape))

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

proc trUtf8*(_: type gen_qtimeline_types.QTimeLine, s: cstring, c: cstring): string =
  let v_ms = fcQTimeLine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtimeline_types.QTimeLine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTimeLine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTimeLinemetaObjectProc* = proc(self: QTimeLine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTimeLinemetacastProc* = proc(self: QTimeLine, param1: cstring): pointer {.raises: [], gcsafe.}
type QTimeLinemetacallProc* = proc(self: QTimeLine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTimeLinevalueForTimeProc* = proc(self: QTimeLine, msec: cint): float64 {.raises: [], gcsafe.}
type QTimeLinetimerEventProc* = proc(self: QTimeLine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTimeLineeventProc* = proc(self: QTimeLine, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTimeLineeventFilterProc* = proc(self: QTimeLine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTimeLinechildEventProc* = proc(self: QTimeLine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTimeLinecustomEventProc* = proc(self: QTimeLine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTimeLineconnectNotifyProc* = proc(self: QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTimeLinedisconnectNotifyProc* = proc(self: QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTimeLineVTable* = object
  vtbl: cQTimeLineVTable
  metaObject*: QTimeLinemetaObjectProc
  metacast*: QTimeLinemetacastProc
  metacall*: QTimeLinemetacallProc
  valueForTime*: QTimeLinevalueForTimeProc
  timerEvent*: QTimeLinetimerEventProc
  event*: QTimeLineeventProc
  eventFilter*: QTimeLineeventFilterProc
  childEvent*: QTimeLinechildEventProc
  customEvent*: QTimeLinecustomEventProc
  connectNotify*: QTimeLineconnectNotifyProc
  disconnectNotify*: QTimeLinedisconnectNotifyProc
proc QTimeLinemetaObject*(self: gen_qtimeline_types.QTimeLine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTimeLine_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTimeLinemetacast*(self: gen_qtimeline_types.QTimeLine, param1: cstring): pointer =
  fcQTimeLine_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTimeLine_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTimeLinemetacall*(self: gen_qtimeline_types.QTimeLine, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimeLine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTimeLine_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTimeLinevalueForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): float64 =
  fcQTimeLine_virtualbase_valueForTime(self.h, msec)

proc miqt_exec_callback_cQTimeLine_valueForTime(vtbl: pointer, self: pointer, msec: cint): float64 {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = msec
  var virtualReturn = vtbl[].valueForTime(self, slotval1)
  virtualReturn

proc QTimeLinetimerEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTimeLine_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTimeLine_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTimeLineevent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimeLine_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTimeLine_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTimeLineeventFilter*(self: gen_qtimeline_types.QTimeLine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimeLine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTimeLine_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTimeLinechildEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTimeLine_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTimeLine_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTimeLinecustomEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QEvent): void =
  fcQTimeLine_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTimeLine_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTimeLineconnectNotify*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimeLine_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTimeLine_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTimeLinedisconnectNotify*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimeLine_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTimeLine_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](vtbl)
  let self = QTimeLine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qtimeline_types.QTimeLine, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTimeLine_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtimeline_types.QTimeLine, ): cint =
  fcQTimeLine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtimeline_types.QTimeLine, signal: cstring): cint =
  fcQTimeLine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTimeLine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtimeline_types.QTimeLine,
    vtbl: ref QTimeLineVTable = nil): gen_qtimeline_types.QTimeLine =
  let vtbl = if vtbl == nil: new QTimeLineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTimeLineVTable, _: ptr cQTimeLine) {.cdecl.} =
    let vtbl = cast[ref QTimeLineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTimeLine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTimeLine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTimeLine_metacall
  if not isNil(vtbl.valueForTime):
    vtbl[].vtbl.valueForTime = miqt_exec_callback_cQTimeLine_valueForTime
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTimeLine_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTimeLine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTimeLine_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTimeLine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTimeLine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTimeLine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTimeLine_disconnectNotify
  gen_qtimeline_types.QTimeLine(h: fcQTimeLine_new(addr(vtbl[]), ))

proc create*(T: type gen_qtimeline_types.QTimeLine,
    duration: cint,
    vtbl: ref QTimeLineVTable = nil): gen_qtimeline_types.QTimeLine =
  let vtbl = if vtbl == nil: new QTimeLineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTimeLineVTable, _: ptr cQTimeLine) {.cdecl.} =
    let vtbl = cast[ref QTimeLineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTimeLine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTimeLine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTimeLine_metacall
  if not isNil(vtbl.valueForTime):
    vtbl[].vtbl.valueForTime = miqt_exec_callback_cQTimeLine_valueForTime
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTimeLine_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTimeLine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTimeLine_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTimeLine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTimeLine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTimeLine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTimeLine_disconnectNotify
  gen_qtimeline_types.QTimeLine(h: fcQTimeLine_new2(addr(vtbl[]), duration))

proc create*(T: type gen_qtimeline_types.QTimeLine,
    duration: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QTimeLineVTable = nil): gen_qtimeline_types.QTimeLine =
  let vtbl = if vtbl == nil: new QTimeLineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTimeLineVTable, _: ptr cQTimeLine) {.cdecl.} =
    let vtbl = cast[ref QTimeLineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTimeLine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTimeLine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTimeLine_metacall
  if not isNil(vtbl.valueForTime):
    vtbl[].vtbl.valueForTime = miqt_exec_callback_cQTimeLine_valueForTime
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTimeLine_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTimeLine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTimeLine_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTimeLine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTimeLine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTimeLine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTimeLine_disconnectNotify
  gen_qtimeline_types.QTimeLine(h: fcQTimeLine_new3(addr(vtbl[]), duration, parent.h))

proc staticMetaObject*(_: type gen_qtimeline_types.QTimeLine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_staticMetaObject())
proc delete*(self: gen_qtimeline_types.QTimeLine) =
  fcQTimeLine_delete(self.h)
