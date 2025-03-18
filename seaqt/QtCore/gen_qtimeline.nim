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


{.compile("gen_qtimeline.cpp", QtCoreCFlags).}


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

proc fcQTimeLine_metaObject(self: pointer): pointer {.importc: "QTimeLine_metaObject".}
proc fcQTimeLine_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeLine_metacast".}
proc fcQTimeLine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeLine_metacall".}
proc fcQTimeLine_tr(s: cstring): struct_miqt_string {.importc: "QTimeLine_tr".}
proc fcQTimeLine_state(self: pointer): cint {.importc: "QTimeLine_state".}
proc fcQTimeLine_loopCount(self: pointer): cint {.importc: "QTimeLine_loopCount".}
proc fcQTimeLine_setLoopCount(self: pointer, count: cint): void {.importc: "QTimeLine_setLoopCount".}
proc fcQTimeLine_direction(self: pointer): cint {.importc: "QTimeLine_direction".}
proc fcQTimeLine_setDirection(self: pointer, direction: cint): void {.importc: "QTimeLine_setDirection".}
proc fcQTimeLine_duration(self: pointer): cint {.importc: "QTimeLine_duration".}
proc fcQTimeLine_setDuration(self: pointer, duration: cint): void {.importc: "QTimeLine_setDuration".}
proc fcQTimeLine_startFrame(self: pointer): cint {.importc: "QTimeLine_startFrame".}
proc fcQTimeLine_setStartFrame(self: pointer, frame: cint): void {.importc: "QTimeLine_setStartFrame".}
proc fcQTimeLine_endFrame(self: pointer): cint {.importc: "QTimeLine_endFrame".}
proc fcQTimeLine_setEndFrame(self: pointer, frame: cint): void {.importc: "QTimeLine_setEndFrame".}
proc fcQTimeLine_setFrameRange(self: pointer, startFrame: cint, endFrame: cint): void {.importc: "QTimeLine_setFrameRange".}
proc fcQTimeLine_updateInterval(self: pointer): cint {.importc: "QTimeLine_updateInterval".}
proc fcQTimeLine_setUpdateInterval(self: pointer, interval: cint): void {.importc: "QTimeLine_setUpdateInterval".}
proc fcQTimeLine_easingCurve(self: pointer): pointer {.importc: "QTimeLine_easingCurve".}
proc fcQTimeLine_setEasingCurve(self: pointer, curve: pointer): void {.importc: "QTimeLine_setEasingCurve".}
proc fcQTimeLine_currentTime(self: pointer): cint {.importc: "QTimeLine_currentTime".}
proc fcQTimeLine_currentFrame(self: pointer): cint {.importc: "QTimeLine_currentFrame".}
proc fcQTimeLine_currentValue(self: pointer): float64 {.importc: "QTimeLine_currentValue".}
proc fcQTimeLine_frameForTime(self: pointer, msec: cint): cint {.importc: "QTimeLine_frameForTime".}
proc fcQTimeLine_valueForTime(self: pointer, msec: cint): float64 {.importc: "QTimeLine_valueForTime".}
proc fcQTimeLine_start(self: pointer): void {.importc: "QTimeLine_start".}
proc fcQTimeLine_resume(self: pointer): void {.importc: "QTimeLine_resume".}
proc fcQTimeLine_stop(self: pointer): void {.importc: "QTimeLine_stop".}
proc fcQTimeLine_setPaused(self: pointer, paused: bool): void {.importc: "QTimeLine_setPaused".}
proc fcQTimeLine_setCurrentTime(self: pointer, msec: cint): void {.importc: "QTimeLine_setCurrentTime".}
proc fcQTimeLine_toggleDirection(self: pointer): void {.importc: "QTimeLine_toggleDirection".}
proc fcQTimeLine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeLine_tr2".}
proc fcQTimeLine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeLine_tr3".}
proc fcQTimeLine_vtbl(self: pointer): pointer {.importc: "QTimeLine_vtbl".}
proc fcQTimeLine_vdata(self: pointer): pointer {.importc: "QTimeLine_vdata".}

type cQTimeLineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  valueForTime*: proc(self: pointer, msec: cint): float64 {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTimeLine_virtualbase_metaObject(self: pointer): pointer {.importc: "QTimeLine_virtualbase_metaObject".}
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
proc fcQTimeLine_protectedbase_sender(self: pointer): pointer {.importc: "QTimeLine_protectedbase_sender".}
proc fcQTimeLine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTimeLine_protectedbase_senderSignalIndex".}
proc fcQTimeLine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTimeLine_protectedbase_receivers".}
proc fcQTimeLine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTimeLine_protectedbase_isSignalConnected".}
proc fcQTimeLine_new(vtbl, vdata: pointer): ptr cQTimeLine {.importc: "QTimeLine_new".}
proc fcQTimeLine_new2(vtbl, vdata: pointer, duration: cint): ptr cQTimeLine {.importc: "QTimeLine_new2".}
proc fcQTimeLine_new3(vtbl, vdata: pointer, duration: cint, parent: pointer): ptr cQTimeLine {.importc: "QTimeLine_new3".}
proc fcQTimeLine_staticMetaObject(): pointer {.importc: "QTimeLine_staticMetaObject".}

proc metaObject*(self: gen_qtimeline_types.QTimeLine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtimeline_types.QTimeLine, param1: cstring): pointer =
  fcQTimeLine_metacast(self.h, param1)

proc metacall*(self: gen_qtimeline_types.QTimeLine, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimeLine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring): string =
  let v_ms = fcQTimeLine_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qtimeline_types.QTimeLine): cint =
  cint(fcQTimeLine_state(self.h))

proc loopCount*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_loopCount(self.h)

proc setLoopCount*(self: gen_qtimeline_types.QTimeLine, count: cint): void =
  fcQTimeLine_setLoopCount(self.h, count)

proc direction*(self: gen_qtimeline_types.QTimeLine): cint =
  cint(fcQTimeLine_direction(self.h))

proc setDirection*(self: gen_qtimeline_types.QTimeLine, direction: cint): void =
  fcQTimeLine_setDirection(self.h, cint(direction))

proc duration*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_duration(self.h)

proc setDuration*(self: gen_qtimeline_types.QTimeLine, duration: cint): void =
  fcQTimeLine_setDuration(self.h, duration)

proc startFrame*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_startFrame(self.h)

proc setStartFrame*(self: gen_qtimeline_types.QTimeLine, frame: cint): void =
  fcQTimeLine_setStartFrame(self.h, frame)

proc endFrame*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_endFrame(self.h)

proc setEndFrame*(self: gen_qtimeline_types.QTimeLine, frame: cint): void =
  fcQTimeLine_setEndFrame(self.h, frame)

proc setFrameRange*(self: gen_qtimeline_types.QTimeLine, startFrame: cint, endFrame: cint): void =
  fcQTimeLine_setFrameRange(self.h, startFrame, endFrame)

proc updateInterval*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_updateInterval(self.h)

proc setUpdateInterval*(self: gen_qtimeline_types.QTimeLine, interval: cint): void =
  fcQTimeLine_setUpdateInterval(self.h, interval)

proc easingCurve*(self: gen_qtimeline_types.QTimeLine): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQTimeLine_easingCurve(self.h), owned: true)

proc setEasingCurve*(self: gen_qtimeline_types.QTimeLine, curve: gen_qeasingcurve_types.QEasingCurve): void =
  fcQTimeLine_setEasingCurve(self.h, curve.h)

proc currentTime*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_currentTime(self.h)

proc currentFrame*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_currentFrame(self.h)

proc currentValue*(self: gen_qtimeline_types.QTimeLine): float64 =
  fcQTimeLine_currentValue(self.h)

proc frameForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): cint =
  fcQTimeLine_frameForTime(self.h, msec)

proc valueForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): float64 =
  fcQTimeLine_valueForTime(self.h, msec)

proc start*(self: gen_qtimeline_types.QTimeLine): void =
  fcQTimeLine_start(self.h)

proc resume*(self: gen_qtimeline_types.QTimeLine): void =
  fcQTimeLine_resume(self.h)

proc stop*(self: gen_qtimeline_types.QTimeLine): void =
  fcQTimeLine_stop(self.h)

proc setPaused*(self: gen_qtimeline_types.QTimeLine, paused: bool): void =
  fcQTimeLine_setPaused(self.h, paused)

proc setCurrentTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): void =
  fcQTimeLine_setCurrentTime(self.h, msec)

proc toggleDirection*(self: gen_qtimeline_types.QTimeLine): void =
  fcQTimeLine_toggleDirection(self.h)

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring, c: cstring): string =
  let v_ms = fcQTimeLine_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtimeline_types.QTimeLine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTimeLine_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QTimeLineVTable* {.inheritable, pure.} = object
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

proc QTimeLinemetaObject*(self: gen_qtimeline_types.QTimeLine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_virtualbase_metaObject(self.h), owned: false)

proc QTimeLinemetacast*(self: gen_qtimeline_types.QTimeLine, param1: cstring): pointer =
  fcQTimeLine_virtualbase_metacast(self.h, param1)

proc QTimeLinemetacall*(self: gen_qtimeline_types.QTimeLine, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimeLine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTimeLinevalueForTime*(self: gen_qtimeline_types.QTimeLine, msec: cint): float64 =
  fcQTimeLine_virtualbase_valueForTime(self.h, msec)

proc QTimeLinetimerEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTimeLine_virtualbase_timerEvent(self.h, event.h)

proc QTimeLineevent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimeLine_virtualbase_event(self.h, event.h)

proc QTimeLineeventFilter*(self: gen_qtimeline_types.QTimeLine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimeLine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTimeLinechildEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTimeLine_virtualbase_childEvent(self.h, event.h)

proc QTimeLinecustomEvent*(self: gen_qtimeline_types.QTimeLine, event: gen_qcoreevent_types.QEvent): void =
  fcQTimeLine_virtualbase_customEvent(self.h, event.h)

proc QTimeLineconnectNotify*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimeLine_virtualbase_connectNotify(self.h, signal.h)

proc QTimeLinedisconnectNotify*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimeLine_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTimeLine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTimeLine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTimeLine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTimeLine_vtable_callback_valueForTime(self: pointer, msec: cint): float64 {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = msec
  var virtualReturn = vtbl[].valueForTime(self, slotval1)
  virtualReturn

proc fcQTimeLine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTimeLine_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTimeLine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTimeLine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTimeLine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTimeLine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTimeLine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeLineVTable](fcQTimeLine_vdata(self))
  let self = QTimeLine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTimeLine* {.inheritable.} = ref object of QTimeLine
  vtbl*: cQTimeLineVTable

method metaObject*(self: VirtualQTimeLine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTimeLinemetaObject(self[])
method metacast*(self: VirtualQTimeLine, param1: cstring): pointer {.base.} =
  QTimeLinemetacast(self[], param1)
method metacall*(self: VirtualQTimeLine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTimeLinemetacall(self[], param1, param2, param3)
method valueForTime*(self: VirtualQTimeLine, msec: cint): float64 {.base.} =
  QTimeLinevalueForTime(self[], msec)
method timerEvent*(self: VirtualQTimeLine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTimeLinetimerEvent(self[], event)
method event*(self: VirtualQTimeLine, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTimeLineevent(self[], event)
method eventFilter*(self: VirtualQTimeLine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTimeLineeventFilter(self[], watched, event)
method childEvent*(self: VirtualQTimeLine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTimeLinechildEvent(self[], event)
method customEvent*(self: VirtualQTimeLine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTimeLinecustomEvent(self[], event)
method connectNotify*(self: VirtualQTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTimeLineconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTimeLine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTimeLinedisconnectNotify(self[], signal)

proc fcQTimeLine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTimeLine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTimeLine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTimeLine_method_callback_valueForTime(self: pointer, msec: cint): float64 {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = msec
  var virtualReturn = inst.valueForTime(slotval1)
  virtualReturn

proc fcQTimeLine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTimeLine_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTimeLine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTimeLine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTimeLine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTimeLine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTimeLine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeLine](fcQTimeLine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qtimeline_types.QTimeLine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTimeLine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtimeline_types.QTimeLine): cint =
  fcQTimeLine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtimeline_types.QTimeLine, signal: cstring): cint =
  fcQTimeLine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtimeline_types.QTimeLine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTimeLine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtimeline_types.QTimeLine,
    vtbl: ref QTimeLineVTable = nil): gen_qtimeline_types.QTimeLine =
  let vtbl = if vtbl == nil: new QTimeLineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeLineVTable](fcQTimeLine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTimeLine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTimeLine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTimeLine_vtable_callback_metacall
  if not isNil(vtbl[].valueForTime):
    vtbl[].vtbl.valueForTime = fcQTimeLine_vtable_callback_valueForTime
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTimeLine_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTimeLine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTimeLine_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTimeLine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTimeLine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTimeLine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTimeLine_vtable_callback_disconnectNotify
  gen_qtimeline_types.QTimeLine(h: fcQTimeLine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtimeline_types.QTimeLine,
    duration: cint,
    vtbl: ref QTimeLineVTable = nil): gen_qtimeline_types.QTimeLine =
  let vtbl = if vtbl == nil: new QTimeLineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeLineVTable](fcQTimeLine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTimeLine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTimeLine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTimeLine_vtable_callback_metacall
  if not isNil(vtbl[].valueForTime):
    vtbl[].vtbl.valueForTime = fcQTimeLine_vtable_callback_valueForTime
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTimeLine_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTimeLine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTimeLine_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTimeLine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTimeLine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTimeLine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTimeLine_vtable_callback_disconnectNotify
  gen_qtimeline_types.QTimeLine(h: fcQTimeLine_new2(addr(vtbl[].vtbl), addr(vtbl[]), duration), owned: true)

proc create*(T: type gen_qtimeline_types.QTimeLine,
    duration: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QTimeLineVTable = nil): gen_qtimeline_types.QTimeLine =
  let vtbl = if vtbl == nil: new QTimeLineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeLineVTable](fcQTimeLine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTimeLine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTimeLine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTimeLine_vtable_callback_metacall
  if not isNil(vtbl[].valueForTime):
    vtbl[].vtbl.valueForTime = fcQTimeLine_vtable_callback_valueForTime
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTimeLine_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTimeLine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTimeLine_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTimeLine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTimeLine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTimeLine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTimeLine_vtable_callback_disconnectNotify
  gen_qtimeline_types.QTimeLine(h: fcQTimeLine_new3(addr(vtbl[].vtbl), addr(vtbl[]), duration, parent.h), owned: true)

const cQTimeLine_mvtbl = cQTimeLineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTimeLine()[])](self.fcQTimeLine_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTimeLine_method_callback_metaObject,
  metacast: fcQTimeLine_method_callback_metacast,
  metacall: fcQTimeLine_method_callback_metacall,
  valueForTime: fcQTimeLine_method_callback_valueForTime,
  timerEvent: fcQTimeLine_method_callback_timerEvent,
  event: fcQTimeLine_method_callback_event,
  eventFilter: fcQTimeLine_method_callback_eventFilter,
  childEvent: fcQTimeLine_method_callback_childEvent,
  customEvent: fcQTimeLine_method_callback_customEvent,
  connectNotify: fcQTimeLine_method_callback_connectNotify,
  disconnectNotify: fcQTimeLine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtimeline_types.QTimeLine,
    inst: VirtualQTimeLine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeLine_new(addr(cQTimeLine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtimeline_types.QTimeLine,
    duration: cint,
    inst: VirtualQTimeLine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeLine_new2(addr(cQTimeLine_mvtbl), addr(inst[]), duration)
  inst[].owned = true

proc create*(T: type gen_qtimeline_types.QTimeLine,
    duration: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQTimeLine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeLine_new3(addr(cQTimeLine_mvtbl), addr(inst[]), duration, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtimeline_types.QTimeLine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeLine_staticMetaObject())
