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
{.compile("gen_qabstractanimation.cpp", cflags).}


type QAbstractAnimationDirectionEnum* = distinct cint
template Forward*(_: type QAbstractAnimationDirectionEnum): untyped = 0
template Backward*(_: type QAbstractAnimationDirectionEnum): untyped = 1


type QAbstractAnimationStateEnum* = distinct cint
template Stopped*(_: type QAbstractAnimationStateEnum): untyped = 0
template Paused*(_: type QAbstractAnimationStateEnum): untyped = 1
template Running*(_: type QAbstractAnimationStateEnum): untyped = 2


type QAbstractAnimationDeletionPolicyEnum* = distinct cint
template KeepWhenStopped*(_: type QAbstractAnimationDeletionPolicyEnum): untyped = 0
template DeleteWhenStopped*(_: type QAbstractAnimationDeletionPolicyEnum): untyped = 1


import ./gen_qabstractanimation_types
export gen_qabstractanimation_types

import
  ./gen_qanimationgroup_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qanimationgroup_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQAbstractAnimation*{.exportc: "QAbstractAnimation", incompleteStruct.} = object
type cQAnimationDriver*{.exportc: "QAnimationDriver", incompleteStruct.} = object

proc fcQAbstractAnimation_new(): ptr cQAbstractAnimation {.importc: "QAbstractAnimation_new".}
proc fcQAbstractAnimation_new2(parent: pointer): ptr cQAbstractAnimation {.importc: "QAbstractAnimation_new2".}
proc fcQAbstractAnimation_metaObject(self: pointer, ): pointer {.importc: "QAbstractAnimation_metaObject".}
proc fcQAbstractAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAnimation_metacast".}
proc fcQAbstractAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAnimation_metacall".}
proc fcQAbstractAnimation_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAnimation_tr".}
proc fcQAbstractAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAnimation_trUtf8".}
proc fcQAbstractAnimation_state(self: pointer, ): cint {.importc: "QAbstractAnimation_state".}
proc fcQAbstractAnimation_group(self: pointer, ): pointer {.importc: "QAbstractAnimation_group".}
proc fcQAbstractAnimation_direction(self: pointer, ): cint {.importc: "QAbstractAnimation_direction".}
proc fcQAbstractAnimation_setDirection(self: pointer, direction: cint): void {.importc: "QAbstractAnimation_setDirection".}
proc fcQAbstractAnimation_currentTime(self: pointer, ): cint {.importc: "QAbstractAnimation_currentTime".}
proc fcQAbstractAnimation_currentLoopTime(self: pointer, ): cint {.importc: "QAbstractAnimation_currentLoopTime".}
proc fcQAbstractAnimation_loopCount(self: pointer, ): cint {.importc: "QAbstractAnimation_loopCount".}
proc fcQAbstractAnimation_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QAbstractAnimation_setLoopCount".}
proc fcQAbstractAnimation_currentLoop(self: pointer, ): cint {.importc: "QAbstractAnimation_currentLoop".}
proc fcQAbstractAnimation_duration(self: pointer, ): cint {.importc: "QAbstractAnimation_duration".}
proc fcQAbstractAnimation_totalDuration(self: pointer, ): cint {.importc: "QAbstractAnimation_totalDuration".}
proc fcQAbstractAnimation_finished(self: pointer, ): void {.importc: "QAbstractAnimation_finished".}
proc fcQAbstractAnimation_connect_finished(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_finished".}
proc fcQAbstractAnimation_stateChanged(self: pointer, newState: cint, oldState: cint): void {.importc: "QAbstractAnimation_stateChanged".}
proc fcQAbstractAnimation_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_stateChanged".}
proc fcQAbstractAnimation_currentLoopChanged(self: pointer, currentLoop: cint): void {.importc: "QAbstractAnimation_currentLoopChanged".}
proc fcQAbstractAnimation_connect_currentLoopChanged(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_currentLoopChanged".}
proc fcQAbstractAnimation_directionChanged(self: pointer, param1: cint): void {.importc: "QAbstractAnimation_directionChanged".}
proc fcQAbstractAnimation_connect_directionChanged(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_directionChanged".}
proc fcQAbstractAnimation_start(self: pointer, ): void {.importc: "QAbstractAnimation_start".}
proc fcQAbstractAnimation_pause(self: pointer, ): void {.importc: "QAbstractAnimation_pause".}
proc fcQAbstractAnimation_resume(self: pointer, ): void {.importc: "QAbstractAnimation_resume".}
proc fcQAbstractAnimation_setPaused(self: pointer, paused: bool): void {.importc: "QAbstractAnimation_setPaused".}
proc fcQAbstractAnimation_stop(self: pointer, ): void {.importc: "QAbstractAnimation_stop".}
proc fcQAbstractAnimation_setCurrentTime(self: pointer, msecs: cint): void {.importc: "QAbstractAnimation_setCurrentTime".}
proc fcQAbstractAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAnimation_tr2".}
proc fcQAbstractAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAnimation_tr3".}
proc fcQAbstractAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAnimation_trUtf82".}
proc fcQAbstractAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAnimation_trUtf83".}
proc fcQAbstractAnimation_start1(self: pointer, policy: cint): void {.importc: "QAbstractAnimation_start1".}
proc fQAbstractAnimation_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractAnimation_virtualbase_metaObject".}
proc fcQAbstractAnimation_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_metaObject".}
proc fQAbstractAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractAnimation_virtualbase_metacast".}
proc fcQAbstractAnimation_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_metacast".}
proc fQAbstractAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractAnimation_virtualbase_metacall".}
proc fcQAbstractAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_metacall".}
proc fcQAbstractAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_duration".}
proc fQAbstractAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractAnimation_virtualbase_event".}
proc fcQAbstractAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_event".}
proc fcQAbstractAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_updateCurrentTime".}
proc fQAbstractAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QAbstractAnimation_virtualbase_updateState".}
proc fcQAbstractAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_updateState".}
proc fQAbstractAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QAbstractAnimation_virtualbase_updateDirection".}
proc fcQAbstractAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_updateDirection".}
proc fQAbstractAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractAnimation_virtualbase_eventFilter".}
proc fcQAbstractAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_eventFilter".}
proc fQAbstractAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractAnimation_virtualbase_timerEvent".}
proc fcQAbstractAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_timerEvent".}
proc fQAbstractAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractAnimation_virtualbase_childEvent".}
proc fcQAbstractAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_childEvent".}
proc fQAbstractAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractAnimation_virtualbase_customEvent".}
proc fcQAbstractAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_customEvent".}
proc fQAbstractAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractAnimation_virtualbase_connectNotify".}
proc fcQAbstractAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_connectNotify".}
proc fQAbstractAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractAnimation_virtualbase_disconnectNotify".}
proc fcQAbstractAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_disconnectNotify".}
proc fcQAbstractAnimation_staticMetaObject(): pointer {.importc: "QAbstractAnimation_staticMetaObject".}
proc fcQAbstractAnimation_delete(self: pointer) {.importc: "QAbstractAnimation_delete".}
proc fcQAnimationDriver_new(): ptr cQAnimationDriver {.importc: "QAnimationDriver_new".}
proc fcQAnimationDriver_new2(parent: pointer): ptr cQAnimationDriver {.importc: "QAnimationDriver_new2".}
proc fcQAnimationDriver_metaObject(self: pointer, ): pointer {.importc: "QAnimationDriver_metaObject".}
proc fcQAnimationDriver_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationDriver_metacast".}
proc fcQAnimationDriver_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationDriver_metacall".}
proc fcQAnimationDriver_tr(s: cstring): struct_miqt_string {.importc: "QAnimationDriver_tr".}
proc fcQAnimationDriver_trUtf8(s: cstring): struct_miqt_string {.importc: "QAnimationDriver_trUtf8".}
proc fcQAnimationDriver_advance(self: pointer, ): void {.importc: "QAnimationDriver_advance".}
proc fcQAnimationDriver_install(self: pointer, ): void {.importc: "QAnimationDriver_install".}
proc fcQAnimationDriver_uninstall(self: pointer, ): void {.importc: "QAnimationDriver_uninstall".}
proc fcQAnimationDriver_isRunning(self: pointer, ): bool {.importc: "QAnimationDriver_isRunning".}
proc fcQAnimationDriver_elapsed(self: pointer, ): clonglong {.importc: "QAnimationDriver_elapsed".}
proc fcQAnimationDriver_setStartTime(self: pointer, startTime: clonglong): void {.importc: "QAnimationDriver_setStartTime".}
proc fcQAnimationDriver_startTime(self: pointer, ): clonglong {.importc: "QAnimationDriver_startTime".}
proc fcQAnimationDriver_started(self: pointer, ): void {.importc: "QAnimationDriver_started".}
proc fcQAnimationDriver_connect_started(self: pointer, slot: int) {.importc: "QAnimationDriver_connect_started".}
proc fcQAnimationDriver_stopped(self: pointer, ): void {.importc: "QAnimationDriver_stopped".}
proc fcQAnimationDriver_connect_stopped(self: pointer, slot: int) {.importc: "QAnimationDriver_connect_stopped".}
proc fcQAnimationDriver_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationDriver_tr2".}
proc fcQAnimationDriver_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationDriver_tr3".}
proc fcQAnimationDriver_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationDriver_trUtf82".}
proc fcQAnimationDriver_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationDriver_trUtf83".}
proc fQAnimationDriver_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAnimationDriver_virtualbase_metaObject".}
proc fcQAnimationDriver_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_metaObject".}
proc fQAnimationDriver_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAnimationDriver_virtualbase_metacast".}
proc fcQAnimationDriver_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_metacast".}
proc fQAnimationDriver_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAnimationDriver_virtualbase_metacall".}
proc fcQAnimationDriver_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_metacall".}
proc fQAnimationDriver_virtualbase_advance(self: pointer, ): void{.importc: "QAnimationDriver_virtualbase_advance".}
proc fcQAnimationDriver_override_virtual_advance(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_advance".}
proc fQAnimationDriver_virtualbase_elapsed(self: pointer, ): clonglong{.importc: "QAnimationDriver_virtualbase_elapsed".}
proc fcQAnimationDriver_override_virtual_elapsed(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_elapsed".}
proc fQAnimationDriver_virtualbase_start(self: pointer, ): void{.importc: "QAnimationDriver_virtualbase_start".}
proc fcQAnimationDriver_override_virtual_start(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_start".}
proc fQAnimationDriver_virtualbase_stop(self: pointer, ): void{.importc: "QAnimationDriver_virtualbase_stop".}
proc fcQAnimationDriver_override_virtual_stop(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_stop".}
proc fQAnimationDriver_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAnimationDriver_virtualbase_event".}
proc fcQAnimationDriver_override_virtual_event(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_event".}
proc fQAnimationDriver_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAnimationDriver_virtualbase_eventFilter".}
proc fcQAnimationDriver_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_eventFilter".}
proc fQAnimationDriver_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAnimationDriver_virtualbase_timerEvent".}
proc fcQAnimationDriver_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_timerEvent".}
proc fQAnimationDriver_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAnimationDriver_virtualbase_childEvent".}
proc fcQAnimationDriver_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_childEvent".}
proc fQAnimationDriver_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAnimationDriver_virtualbase_customEvent".}
proc fcQAnimationDriver_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_customEvent".}
proc fQAnimationDriver_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationDriver_virtualbase_connectNotify".}
proc fcQAnimationDriver_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_connectNotify".}
proc fQAnimationDriver_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationDriver_virtualbase_disconnectNotify".}
proc fcQAnimationDriver_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_disconnectNotify".}
proc fcQAnimationDriver_staticMetaObject(): pointer {.importc: "QAnimationDriver_staticMetaObject".}
proc fcQAnimationDriver_delete(self: pointer) {.importc: "QAnimationDriver_delete".}


func init*(T: type gen_qabstractanimation_types.QAbstractAnimation, h: ptr cQAbstractAnimation): gen_qabstractanimation_types.QAbstractAnimation =
  T(h: h)
proc create*(T: type gen_qabstractanimation_types.QAbstractAnimation, ): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation.init(fcQAbstractAnimation_new())

proc create*(T: type gen_qabstractanimation_types.QAbstractAnimation, parent: gen_qobject_types.QObject): gen_qabstractanimation_types.QAbstractAnimation =
  gen_qabstractanimation_types.QAbstractAnimation.init(fcQAbstractAnimation_new2(parent.h))

proc metaObject*(self: gen_qabstractanimation_types.QAbstractAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAnimation_metaObject(self.h))

proc metacast*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cstring): pointer =
  fcQAbstractAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring): string =
  let v_ms = fcQAbstractAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring): string =
  let v_ms = fcQAbstractAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  cint(fcQAbstractAnimation_state(self.h))

proc group*(self: gen_qabstractanimation_types.QAbstractAnimation, ): gen_qanimationgroup_types.QAnimationGroup =
  gen_qanimationgroup_types.QAnimationGroup(h: fcQAbstractAnimation_group(self.h))

proc direction*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  cint(fcQAbstractAnimation_direction(self.h))

proc setDirection*(self: gen_qabstractanimation_types.QAbstractAnimation, direction: cint): void =
  fcQAbstractAnimation_setDirection(self.h, cint(direction))

proc currentTime*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  fcQAbstractAnimation_currentTime(self.h)

proc currentLoopTime*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  fcQAbstractAnimation_currentLoopTime(self.h)

proc loopCount*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  fcQAbstractAnimation_loopCount(self.h)

proc setLoopCount*(self: gen_qabstractanimation_types.QAbstractAnimation, loopCount: cint): void =
  fcQAbstractAnimation_setLoopCount(self.h, loopCount)

proc currentLoop*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  fcQAbstractAnimation_currentLoop(self.h)

proc duration*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  fcQAbstractAnimation_duration(self.h)

proc totalDuration*(self: gen_qabstractanimation_types.QAbstractAnimation, ): cint =
  fcQAbstractAnimation_totalDuration(self.h)

proc finished*(self: gen_qabstractanimation_types.QAbstractAnimation, ): void =
  fcQAbstractAnimation_finished(self.h)

type QAbstractAnimationfinishedSlot* = proc()
proc miqt_exec_callback_QAbstractAnimation_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractAnimationfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationfinishedSlot) =
  var tmp = new QAbstractAnimationfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_finished(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, newState: cint, oldState: cint): void =
  fcQAbstractAnimation_stateChanged(self.h, cint(newState), cint(oldState))

type QAbstractAnimationstateChangedSlot* = proc(newState: cint, oldState: cint)
proc miqt_exec_callback_QAbstractAnimation_stateChanged(slot: int, newState: cint, oldState: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractAnimationstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)

  nimfunc[](slotval1, slotval2)

proc onstateChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationstateChangedSlot) =
  var tmp = new QAbstractAnimationstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc currentLoopChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, currentLoop: cint): void =
  fcQAbstractAnimation_currentLoopChanged(self.h, currentLoop)

type QAbstractAnimationcurrentLoopChangedSlot* = proc(currentLoop: cint)
proc miqt_exec_callback_QAbstractAnimation_currentLoopChanged(slot: int, currentLoop: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractAnimationcurrentLoopChangedSlot](cast[pointer](slot))
  let slotval1 = currentLoop

  nimfunc[](slotval1)

proc oncurrentLoopChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationcurrentLoopChangedSlot) =
  var tmp = new QAbstractAnimationcurrentLoopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_currentLoopChanged(self.h, cast[int](addr tmp[]))

proc directionChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cint): void =
  fcQAbstractAnimation_directionChanged(self.h, cint(param1))

type QAbstractAnimationdirectionChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QAbstractAnimation_directionChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractAnimationdirectionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc ondirectionChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationdirectionChangedSlot) =
  var tmp = new QAbstractAnimationdirectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_directionChanged(self.h, cast[int](addr tmp[]))

proc start*(self: gen_qabstractanimation_types.QAbstractAnimation, ): void =
  fcQAbstractAnimation_start(self.h)

proc pause*(self: gen_qabstractanimation_types.QAbstractAnimation, ): void =
  fcQAbstractAnimation_pause(self.h)

proc resume*(self: gen_qabstractanimation_types.QAbstractAnimation, ): void =
  fcQAbstractAnimation_resume(self.h)

proc setPaused*(self: gen_qabstractanimation_types.QAbstractAnimation, paused: bool): void =
  fcQAbstractAnimation_setPaused(self.h, paused)

proc stop*(self: gen_qabstractanimation_types.QAbstractAnimation, ): void =
  fcQAbstractAnimation_stop(self.h)

proc setCurrentTime*(self: gen_qabstractanimation_types.QAbstractAnimation, msecs: cint): void =
  fcQAbstractAnimation_setCurrentTime(self.h, msecs)

proc tr*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qabstractanimation_types.QAbstractAnimation, policy: cint): void =
  fcQAbstractAnimation_start1(self.h, cint(policy))

proc QAbstractAnimationmetaObject*(self: gen_qabstractanimation_types.QAbstractAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractAnimation_virtualbase_metaObject(self.h))

type QAbstractAnimationmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_metaObject(self: ptr cQAbstractAnimation, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractAnimation_metaObject ".} =
  var nimfunc = cast[ptr QAbstractAnimationmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractAnimationmetacast*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cstring): pointer =
  fQAbstractAnimation_virtualbase_metacast(self.h, param1)

type QAbstractAnimationmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_metacast(self: ptr cQAbstractAnimation, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractAnimation_metacast ".} =
  var nimfunc = cast[ptr QAbstractAnimationmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractAnimationmetacall*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractAnimationmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_metacall(self: ptr cQAbstractAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractAnimation_metacall ".} =
  var nimfunc = cast[ptr QAbstractAnimationmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractAnimationdurationProc* = proc(): cint
proc onduration*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationdurationProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_duration(self: ptr cQAbstractAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractAnimation_duration ".} =
  var nimfunc = cast[ptr QAbstractAnimationdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractAnimationevent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractAnimation_virtualbase_event(self.h, event.h)

type QAbstractAnimationeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationeventProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_event(self: ptr cQAbstractAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractAnimation_event ".} =
  var nimfunc = cast[ptr QAbstractAnimationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractAnimationupdateCurrentTimeProc* = proc(currentTime: cint): void
proc onupdateCurrentTime*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_updateCurrentTime(self: ptr cQAbstractAnimation, slot: int, currentTime: cint): void {.exportc: "miqt_exec_callback_QAbstractAnimation_updateCurrentTime ".} =
  var nimfunc = cast[ptr QAbstractAnimationupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = currentTime


  nimfunc[](slotval1)
proc QAbstractAnimationupdateState*(self: gen_qabstractanimation_types.QAbstractAnimation, newState: cint, oldState: cint): void =
  fQAbstractAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QAbstractAnimationupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationupdateStateProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_updateState(self: ptr cQAbstractAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QAbstractAnimation_updateState ".} =
  var nimfunc = cast[ptr QAbstractAnimationupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QAbstractAnimationupdateDirection*(self: gen_qabstractanimation_types.QAbstractAnimation, direction: cint): void =
  fQAbstractAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QAbstractAnimationupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_updateDirection(self: ptr cQAbstractAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QAbstractAnimation_updateDirection ".} =
  var nimfunc = cast[ptr QAbstractAnimationupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QAbstractAnimationeventFilter*(self: gen_qabstractanimation_types.QAbstractAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractAnimationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_eventFilter(self: ptr cQAbstractAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractAnimation_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractAnimationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractAnimationtimerEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractAnimation_virtualbase_timerEvent(self.h, event.h)

type QAbstractAnimationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationtimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_timerEvent(self: ptr cQAbstractAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractAnimationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractAnimationchildEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractAnimation_virtualbase_childEvent(self.h, event.h)

type QAbstractAnimationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_childEvent(self: ptr cQAbstractAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_childEvent ".} =
  var nimfunc = cast[ptr QAbstractAnimationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractAnimationcustomEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractAnimation_virtualbase_customEvent(self.h, event.h)

type QAbstractAnimationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_customEvent(self: ptr cQAbstractAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_customEvent ".} =
  var nimfunc = cast[ptr QAbstractAnimationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractAnimationconnectNotify*(self: gen_qabstractanimation_types.QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractAnimation_virtualbase_connectNotify(self.h, signal.h)

type QAbstractAnimationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_connectNotify(self: ptr cQAbstractAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractAnimationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractAnimationdisconnectNotify*(self: gen_qabstractanimation_types.QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractAnimationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractAnimationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_disconnectNotify(self: ptr cQAbstractAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractAnimationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractanimation_types.QAbstractAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAnimation_staticMetaObject())
proc delete*(self: gen_qabstractanimation_types.QAbstractAnimation) =
  fcQAbstractAnimation_delete(self.h)

func init*(T: type gen_qabstractanimation_types.QAnimationDriver, h: ptr cQAnimationDriver): gen_qabstractanimation_types.QAnimationDriver =
  T(h: h)
proc create*(T: type gen_qabstractanimation_types.QAnimationDriver, ): gen_qabstractanimation_types.QAnimationDriver =
  gen_qabstractanimation_types.QAnimationDriver.init(fcQAnimationDriver_new())

proc create*(T: type gen_qabstractanimation_types.QAnimationDriver, parent: gen_qobject_types.QObject): gen_qabstractanimation_types.QAnimationDriver =
  gen_qabstractanimation_types.QAnimationDriver.init(fcQAnimationDriver_new2(parent.h))

proc metaObject*(self: gen_qabstractanimation_types.QAnimationDriver, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationDriver_metaObject(self.h))

proc metacast*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cstring): pointer =
  fcQAnimationDriver_metacast(self.h, param1)

proc metacall*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cint, param2: cint, param3: pointer): cint =
  fcQAnimationDriver_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring): string =
  let v_ms = fcQAnimationDriver_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring): string =
  let v_ms = fcQAnimationDriver_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc advance*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fcQAnimationDriver_advance(self.h)

proc install*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fcQAnimationDriver_install(self.h)

proc uninstall*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fcQAnimationDriver_uninstall(self.h)

proc isRunning*(self: gen_qabstractanimation_types.QAnimationDriver, ): bool =
  fcQAnimationDriver_isRunning(self.h)

proc elapsed*(self: gen_qabstractanimation_types.QAnimationDriver, ): clonglong =
  fcQAnimationDriver_elapsed(self.h)

proc setStartTime*(self: gen_qabstractanimation_types.QAnimationDriver, startTime: clonglong): void =
  fcQAnimationDriver_setStartTime(self.h, startTime)

proc startTime*(self: gen_qabstractanimation_types.QAnimationDriver, ): clonglong =
  fcQAnimationDriver_startTime(self.h)

proc started*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fcQAnimationDriver_started(self.h)

type QAnimationDriverstartedSlot* = proc()
proc miqt_exec_callback_QAnimationDriver_started(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAnimationDriverstartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onstarted*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverstartedSlot) =
  var tmp = new QAnimationDriverstartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_connect_started(self.h, cast[int](addr tmp[]))

proc stopped*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fcQAnimationDriver_stopped(self.h)

type QAnimationDriverstoppedSlot* = proc()
proc miqt_exec_callback_QAnimationDriver_stopped(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAnimationDriverstoppedSlot](cast[pointer](slot))
  nimfunc[]()

proc onstopped*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverstoppedSlot) =
  var tmp = new QAnimationDriverstoppedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_connect_stopped(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring, c: cstring): string =
  let v_ms = fcQAnimationDriver_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAnimationDriver_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring, c: cstring): string =
  let v_ms = fcQAnimationDriver_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAnimationDriver_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAnimationDrivermetaObject*(self: gen_qabstractanimation_types.QAnimationDriver, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAnimationDriver_virtualbase_metaObject(self.h))

type QAnimationDrivermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivermetaObjectProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_metaObject(self: ptr cQAnimationDriver, slot: int): pointer {.exportc: "miqt_exec_callback_QAnimationDriver_metaObject ".} =
  var nimfunc = cast[ptr QAnimationDrivermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAnimationDrivermetacast*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cstring): pointer =
  fQAnimationDriver_virtualbase_metacast(self.h, param1)

type QAnimationDrivermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivermetacastProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_metacast(self: ptr cQAnimationDriver, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAnimationDriver_metacast ".} =
  var nimfunc = cast[ptr QAnimationDrivermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAnimationDrivermetacall*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cint, param2: cint, param3: pointer): cint =
  fQAnimationDriver_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAnimationDrivermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivermetacallProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_metacall(self: ptr cQAnimationDriver, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAnimationDriver_metacall ".} =
  var nimfunc = cast[ptr QAnimationDrivermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAnimationDriveradvance*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fQAnimationDriver_virtualbase_advance(self.h)

type QAnimationDriveradvanceProc* = proc(): void
proc onadvance*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriveradvanceProc) =
  # TODO check subclass
  var tmp = new QAnimationDriveradvanceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_advance(self: ptr cQAnimationDriver, slot: int): void {.exportc: "miqt_exec_callback_QAnimationDriver_advance ".} =
  var nimfunc = cast[ptr QAnimationDriveradvanceProc](cast[pointer](slot))

  nimfunc[]()
proc QAnimationDriverelapsed*(self: gen_qabstractanimation_types.QAnimationDriver, ): clonglong =
  fQAnimationDriver_virtualbase_elapsed(self.h)

type QAnimationDriverelapsedProc* = proc(): clonglong
proc onelapsed*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverelapsedProc) =
  # TODO check subclass
  var tmp = new QAnimationDriverelapsedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_elapsed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_elapsed(self: ptr cQAnimationDriver, slot: int): clonglong {.exportc: "miqt_exec_callback_QAnimationDriver_elapsed ".} =
  var nimfunc = cast[ptr QAnimationDriverelapsedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAnimationDriverstart*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fQAnimationDriver_virtualbase_start(self.h)

type QAnimationDriverstartProc* = proc(): void
proc onstart*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverstartProc) =
  # TODO check subclass
  var tmp = new QAnimationDriverstartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_start(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_start(self: ptr cQAnimationDriver, slot: int): void {.exportc: "miqt_exec_callback_QAnimationDriver_start ".} =
  var nimfunc = cast[ptr QAnimationDriverstartProc](cast[pointer](slot))

  nimfunc[]()
proc QAnimationDriverstop*(self: gen_qabstractanimation_types.QAnimationDriver, ): void =
  fQAnimationDriver_virtualbase_stop(self.h)

type QAnimationDriverstopProc* = proc(): void
proc onstop*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverstopProc) =
  # TODO check subclass
  var tmp = new QAnimationDriverstopProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_stop(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_stop(self: ptr cQAnimationDriver, slot: int): void {.exportc: "miqt_exec_callback_QAnimationDriver_stop ".} =
  var nimfunc = cast[ptr QAnimationDriverstopProc](cast[pointer](slot))

  nimfunc[]()
proc QAnimationDriverevent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QEvent): bool =
  fQAnimationDriver_virtualbase_event(self.h, event.h)

type QAnimationDrivereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivereventProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_event(self: ptr cQAnimationDriver, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationDriver_event ".} =
  var nimfunc = cast[ptr QAnimationDrivereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAnimationDrivereventFilter*(self: gen_qabstractanimation_types.QAnimationDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAnimationDriver_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAnimationDrivereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivereventFilterProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_eventFilter(self: ptr cQAnimationDriver, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationDriver_eventFilter ".} =
  var nimfunc = cast[ptr QAnimationDrivereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAnimationDrivertimerEvent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAnimationDriver_virtualbase_timerEvent(self.h, event.h)

type QAnimationDrivertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivertimerEventProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_timerEvent(self: ptr cQAnimationDriver, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_timerEvent ".} =
  var nimfunc = cast[ptr QAnimationDrivertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAnimationDriverchildEvent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QChildEvent): void =
  fQAnimationDriver_virtualbase_childEvent(self.h, event.h)

type QAnimationDriverchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverchildEventProc) =
  # TODO check subclass
  var tmp = new QAnimationDriverchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_childEvent(self: ptr cQAnimationDriver, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_childEvent ".} =
  var nimfunc = cast[ptr QAnimationDriverchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAnimationDrivercustomEvent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QEvent): void =
  fQAnimationDriver_virtualbase_customEvent(self.h, event.h)

type QAnimationDrivercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDrivercustomEventProc) =
  # TODO check subclass
  var tmp = new QAnimationDrivercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_customEvent(self: ptr cQAnimationDriver, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_customEvent ".} =
  var nimfunc = cast[ptr QAnimationDrivercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAnimationDriverconnectNotify*(self: gen_qabstractanimation_types.QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAnimationDriver_virtualbase_connectNotify(self.h, signal.h)

type QAnimationDriverconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAnimationDriverconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_connectNotify(self: ptr cQAnimationDriver, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_connectNotify ".} =
  var nimfunc = cast[ptr QAnimationDriverconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAnimationDriverdisconnectNotify*(self: gen_qabstractanimation_types.QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAnimationDriver_virtualbase_disconnectNotify(self.h, signal.h)

type QAnimationDriverdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAnimationDriverdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_disconnectNotify(self: ptr cQAnimationDriver, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_disconnectNotify ".} =
  var nimfunc = cast[ptr QAnimationDriverdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractanimation_types.QAnimationDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationDriver_staticMetaObject())
proc delete*(self: gen_qabstractanimation_types.QAnimationDriver) =
  fcQAnimationDriver_delete(self.h)
