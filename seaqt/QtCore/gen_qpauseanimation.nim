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
{.compile("gen_qpauseanimation.cpp", cflags).}


import ./gen_qpauseanimation_types
export gen_qpauseanimation_types

import
  ./gen_qabstractanimation,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qabstractanimation,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQPauseAnimation*{.exportc: "QPauseAnimation", incompleteStruct.} = object

proc fcQPauseAnimation_metaObject(self: pointer, ): pointer {.importc: "QPauseAnimation_metaObject".}
proc fcQPauseAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPauseAnimation_metacast".}
proc fcQPauseAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPauseAnimation_metacall".}
proc fcQPauseAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr".}
proc fcQPauseAnimation_duration(self: pointer, ): cint {.importc: "QPauseAnimation_duration".}
proc fcQPauseAnimation_setDuration(self: pointer, msecs: cint): void {.importc: "QPauseAnimation_setDuration".}
proc fcQPauseAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr2".}
proc fcQPauseAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_tr3".}
type cQPauseAnimationVTable = object
  destructor*: proc(vtbl: ptr cQPauseAnimationVTable, self: ptr cQPauseAnimation) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(vtbl, self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPauseAnimation_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPauseAnimation_virtualbase_metaObject".}
proc fcQPauseAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPauseAnimation_virtualbase_metacast".}
proc fcQPauseAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPauseAnimation_virtualbase_metacall".}
proc fcQPauseAnimation_virtualbase_duration(self: pointer, ): cint {.importc: "QPauseAnimation_virtualbase_duration".}
proc fcQPauseAnimation_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QPauseAnimation_virtualbase_event".}
proc fcQPauseAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void {.importc: "QPauseAnimation_virtualbase_updateCurrentTime".}
proc fcQPauseAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QPauseAnimation_virtualbase_updateState".}
proc fcQPauseAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QPauseAnimation_virtualbase_updateDirection".}
proc fcQPauseAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPauseAnimation_virtualbase_eventFilter".}
proc fcQPauseAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPauseAnimation_virtualbase_timerEvent".}
proc fcQPauseAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPauseAnimation_virtualbase_childEvent".}
proc fcQPauseAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPauseAnimation_virtualbase_customEvent".}
proc fcQPauseAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPauseAnimation_virtualbase_connectNotify".}
proc fcQPauseAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPauseAnimation_virtualbase_disconnectNotify".}
proc fcQPauseAnimation_new(vtbl: pointer, ): ptr cQPauseAnimation {.importc: "QPauseAnimation_new".}
proc fcQPauseAnimation_new2(vtbl: pointer, msecs: cint): ptr cQPauseAnimation {.importc: "QPauseAnimation_new2".}
proc fcQPauseAnimation_new3(vtbl: pointer, parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new3".}
proc fcQPauseAnimation_new4(vtbl: pointer, msecs: cint, parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new4".}
proc fcQPauseAnimation_staticMetaObject(): pointer {.importc: "QPauseAnimation_staticMetaObject".}
proc fcQPauseAnimation_delete(self: pointer) {.importc: "QPauseAnimation_delete".}

proc metaObject*(self: gen_qpauseanimation_types.QPauseAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_metaObject(self.h))

proc metacast*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cstring): pointer =
  fcQPauseAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPauseAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring): string =
  let v_ms = fcQPauseAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qpauseanimation_types.QPauseAnimation, ): cint =
  fcQPauseAnimation_duration(self.h)

proc setDuration*(self: gen_qpauseanimation_types.QPauseAnimation, msecs: cint): void =
  fcQPauseAnimation_setDuration(self.h, msecs)

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQPauseAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpauseanimation_types.QPauseAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPauseAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QPauseAnimationmetaObjectProc* = proc(self: QPauseAnimation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPauseAnimationmetacastProc* = proc(self: QPauseAnimation, param1: cstring): pointer {.raises: [], gcsafe.}
type QPauseAnimationmetacallProc* = proc(self: QPauseAnimation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPauseAnimationdurationProc* = proc(self: QPauseAnimation): cint {.raises: [], gcsafe.}
type QPauseAnimationeventProc* = proc(self: QPauseAnimation, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPauseAnimationupdateCurrentTimeProc* = proc(self: QPauseAnimation, param1: cint): void {.raises: [], gcsafe.}
type QPauseAnimationupdateStateProc* = proc(self: QPauseAnimation, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QPauseAnimationupdateDirectionProc* = proc(self: QPauseAnimation, direction: cint): void {.raises: [], gcsafe.}
type QPauseAnimationeventFilterProc* = proc(self: QPauseAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPauseAnimationtimerEventProc* = proc(self: QPauseAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPauseAnimationchildEventProc* = proc(self: QPauseAnimation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPauseAnimationcustomEventProc* = proc(self: QPauseAnimation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPauseAnimationconnectNotifyProc* = proc(self: QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPauseAnimationdisconnectNotifyProc* = proc(self: QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPauseAnimationVTable* = object
  vtbl: cQPauseAnimationVTable
  metaObject*: QPauseAnimationmetaObjectProc
  metacast*: QPauseAnimationmetacastProc
  metacall*: QPauseAnimationmetacallProc
  duration*: QPauseAnimationdurationProc
  event*: QPauseAnimationeventProc
  updateCurrentTime*: QPauseAnimationupdateCurrentTimeProc
  updateState*: QPauseAnimationupdateStateProc
  updateDirection*: QPauseAnimationupdateDirectionProc
  eventFilter*: QPauseAnimationeventFilterProc
  timerEvent*: QPauseAnimationtimerEventProc
  childEvent*: QPauseAnimationchildEventProc
  customEvent*: QPauseAnimationcustomEventProc
  connectNotify*: QPauseAnimationconnectNotifyProc
  disconnectNotify*: QPauseAnimationdisconnectNotifyProc
proc QPauseAnimationmetaObject*(self: gen_qpauseanimation_types.QPauseAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPauseAnimation_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPauseAnimationmetacast*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cstring): pointer =
  fcQPauseAnimation_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPauseAnimation_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPauseAnimationmetacall*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQPauseAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPauseAnimation_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPauseAnimationduration*(self: gen_qpauseanimation_types.QPauseAnimation, ): cint =
  fcQPauseAnimation_virtualbase_duration(self.h)

proc miqt_exec_callback_cQPauseAnimation_duration(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QPauseAnimationevent*(self: gen_qpauseanimation_types.QPauseAnimation, e: gen_qcoreevent_types.QEvent): bool =
  fcQPauseAnimation_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQPauseAnimation_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPauseAnimationupdateCurrentTime*(self: gen_qpauseanimation_types.QPauseAnimation, param1: cint): void =
  fcQPauseAnimation_virtualbase_updateCurrentTime(self.h, param1)

proc miqt_exec_callback_cQPauseAnimation_updateCurrentTime(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = param1
  vtbl[].updateCurrentTime(self, slotval1)

proc QPauseAnimationupdateState*(self: gen_qpauseanimation_types.QPauseAnimation, newState: cint, oldState: cint): void =
  fcQPauseAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_cQPauseAnimation_updateState(vtbl: pointer, self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QPauseAnimationupdateDirection*(self: gen_qpauseanimation_types.QPauseAnimation, direction: cint): void =
  fcQPauseAnimation_virtualbase_updateDirection(self.h, cint(direction))

proc miqt_exec_callback_cQPauseAnimation_updateDirection(vtbl: pointer, self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QPauseAnimationeventFilter*(self: gen_qpauseanimation_types.QPauseAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPauseAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPauseAnimation_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPauseAnimationtimerEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPauseAnimation_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPauseAnimation_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPauseAnimationchildEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPauseAnimation_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPauseAnimation_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPauseAnimationcustomEvent*(self: gen_qpauseanimation_types.QPauseAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQPauseAnimation_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPauseAnimation_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPauseAnimationconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPauseAnimation_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPauseAnimation_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPauseAnimationdisconnectNotify*(self: gen_qpauseanimation_types.QPauseAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPauseAnimation_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPauseAnimation_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPauseAnimationVTable](vtbl)
  let self = QPauseAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPauseAnimationVTable, _: ptr cQPauseAnimation) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPauseAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPauseAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPauseAnimation_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPauseAnimation_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPauseAnimation_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPauseAnimation_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPauseAnimation_updateState
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPauseAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPauseAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPauseAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPauseAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPauseAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPauseAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPauseAnimation_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new(addr(vtbl[]), ))

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    msecs: cint,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPauseAnimationVTable, _: ptr cQPauseAnimation) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPauseAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPauseAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPauseAnimation_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPauseAnimation_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPauseAnimation_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPauseAnimation_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPauseAnimation_updateState
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPauseAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPauseAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPauseAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPauseAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPauseAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPauseAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPauseAnimation_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new2(addr(vtbl[]), msecs))

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPauseAnimationVTable, _: ptr cQPauseAnimation) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPauseAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPauseAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPauseAnimation_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPauseAnimation_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPauseAnimation_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPauseAnimation_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPauseAnimation_updateState
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPauseAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPauseAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPauseAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPauseAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPauseAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPauseAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPauseAnimation_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qpauseanimation_types.QPauseAnimation,
    msecs: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QPauseAnimationVTable = nil): gen_qpauseanimation_types.QPauseAnimation =
  let vtbl = if vtbl == nil: new QPauseAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPauseAnimationVTable, _: ptr cQPauseAnimation) {.cdecl.} =
    let vtbl = cast[ref QPauseAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPauseAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPauseAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPauseAnimation_metacall
  if not isNil(vtbl.duration):
    vtbl[].vtbl.duration = miqt_exec_callback_cQPauseAnimation_duration
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPauseAnimation_event
  if not isNil(vtbl.updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = miqt_exec_callback_cQPauseAnimation_updateCurrentTime
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQPauseAnimation_updateState
  if not isNil(vtbl.updateDirection):
    vtbl[].vtbl.updateDirection = miqt_exec_callback_cQPauseAnimation_updateDirection
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPauseAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPauseAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPauseAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPauseAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPauseAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPauseAnimation_disconnectNotify
  gen_qpauseanimation_types.QPauseAnimation(h: fcQPauseAnimation_new4(addr(vtbl[]), msecs, parent.h))

proc staticMetaObject*(_: type gen_qpauseanimation_types.QPauseAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPauseAnimation_staticMetaObject())
proc delete*(self: gen_qpauseanimation_types.QPauseAnimation) =
  fcQPauseAnimation_delete(self.h)
