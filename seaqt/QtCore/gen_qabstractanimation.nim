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


{.compile("gen_qabstractanimation.cpp", QtCoreCFlags).}


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

proc fcQAbstractAnimation_metaObject(self: pointer): pointer {.importc: "QAbstractAnimation_metaObject".}
proc fcQAbstractAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAnimation_metacast".}
proc fcQAbstractAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAnimation_metacall".}
proc fcQAbstractAnimation_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAnimation_tr".}
proc fcQAbstractAnimation_state(self: pointer): cint {.importc: "QAbstractAnimation_state".}
proc fcQAbstractAnimation_group(self: pointer): pointer {.importc: "QAbstractAnimation_group".}
proc fcQAbstractAnimation_direction(self: pointer): cint {.importc: "QAbstractAnimation_direction".}
proc fcQAbstractAnimation_setDirection(self: pointer, direction: cint): void {.importc: "QAbstractAnimation_setDirection".}
proc fcQAbstractAnimation_currentTime(self: pointer): cint {.importc: "QAbstractAnimation_currentTime".}
proc fcQAbstractAnimation_currentLoopTime(self: pointer): cint {.importc: "QAbstractAnimation_currentLoopTime".}
proc fcQAbstractAnimation_loopCount(self: pointer): cint {.importc: "QAbstractAnimation_loopCount".}
proc fcQAbstractAnimation_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QAbstractAnimation_setLoopCount".}
proc fcQAbstractAnimation_currentLoop(self: pointer): cint {.importc: "QAbstractAnimation_currentLoop".}
proc fcQAbstractAnimation_duration(self: pointer): cint {.importc: "QAbstractAnimation_duration".}
proc fcQAbstractAnimation_totalDuration(self: pointer): cint {.importc: "QAbstractAnimation_totalDuration".}
proc fcQAbstractAnimation_finished(self: pointer): void {.importc: "QAbstractAnimation_finished".}
proc fcQAbstractAnimation_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractAnimation_connect_finished".}
proc fcQAbstractAnimation_stateChanged(self: pointer, newState: cint, oldState: cint): void {.importc: "QAbstractAnimation_stateChanged".}
proc fcQAbstractAnimation_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, newState: cint, oldState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractAnimation_connect_stateChanged".}
proc fcQAbstractAnimation_currentLoopChanged(self: pointer, currentLoop: cint): void {.importc: "QAbstractAnimation_currentLoopChanged".}
proc fcQAbstractAnimation_connect_currentLoopChanged(self: pointer, slot: int, callback: proc (slot: int, currentLoop: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractAnimation_connect_currentLoopChanged".}
proc fcQAbstractAnimation_directionChanged(self: pointer, param1: cint): void {.importc: "QAbstractAnimation_directionChanged".}
proc fcQAbstractAnimation_connect_directionChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractAnimation_connect_directionChanged".}
proc fcQAbstractAnimation_start(self: pointer): void {.importc: "QAbstractAnimation_start".}
proc fcQAbstractAnimation_pause(self: pointer): void {.importc: "QAbstractAnimation_pause".}
proc fcQAbstractAnimation_resume(self: pointer): void {.importc: "QAbstractAnimation_resume".}
proc fcQAbstractAnimation_setPaused(self: pointer, paused: bool): void {.importc: "QAbstractAnimation_setPaused".}
proc fcQAbstractAnimation_stop(self: pointer): void {.importc: "QAbstractAnimation_stop".}
proc fcQAbstractAnimation_setCurrentTime(self: pointer, msecs: cint): void {.importc: "QAbstractAnimation_setCurrentTime".}
proc fcQAbstractAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAnimation_tr2".}
proc fcQAbstractAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAnimation_tr3".}
proc fcQAbstractAnimation_start1(self: pointer, policy: cint): void {.importc: "QAbstractAnimation_start1".}
proc fcQAbstractAnimation_vtbl(self: pointer): pointer {.importc: "QAbstractAnimation_vtbl".}
proc fcQAbstractAnimation_vdata(self: pointer): pointer {.importc: "QAbstractAnimation_vdata".}
type cQAbstractAnimationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  duration*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCurrentTime*: proc(self: pointer, currentTime: cint): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(self: pointer, newState: cint, oldState: cint): void {.cdecl, raises: [], gcsafe.}
  updateDirection*: proc(self: pointer, direction: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractAnimation_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractAnimation_virtualbase_metaObject".}
proc fcQAbstractAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAnimation_virtualbase_metacast".}
proc fcQAbstractAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAnimation_virtualbase_metacall".}
proc fcQAbstractAnimation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractAnimation_virtualbase_event".}
proc fcQAbstractAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void {.importc: "QAbstractAnimation_virtualbase_updateState".}
proc fcQAbstractAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void {.importc: "QAbstractAnimation_virtualbase_updateDirection".}
proc fcQAbstractAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractAnimation_virtualbase_eventFilter".}
proc fcQAbstractAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractAnimation_virtualbase_timerEvent".}
proc fcQAbstractAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractAnimation_virtualbase_childEvent".}
proc fcQAbstractAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractAnimation_virtualbase_customEvent".}
proc fcQAbstractAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractAnimation_virtualbase_connectNotify".}
proc fcQAbstractAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractAnimation_virtualbase_disconnectNotify".}
proc fcQAbstractAnimation_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractAnimation_protectedbase_sender".}
proc fcQAbstractAnimation_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractAnimation_protectedbase_senderSignalIndex".}
proc fcQAbstractAnimation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractAnimation_protectedbase_receivers".}
proc fcQAbstractAnimation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractAnimation_protectedbase_isSignalConnected".}
proc fcQAbstractAnimation_new(vtbl, vdata: pointer): ptr cQAbstractAnimation {.importc: "QAbstractAnimation_new".}
proc fcQAbstractAnimation_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractAnimation {.importc: "QAbstractAnimation_new2".}
proc fcQAbstractAnimation_staticMetaObject(): pointer {.importc: "QAbstractAnimation_staticMetaObject".}
proc fcQAnimationDriver_metaObject(self: pointer): pointer {.importc: "QAnimationDriver_metaObject".}
proc fcQAnimationDriver_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationDriver_metacast".}
proc fcQAnimationDriver_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationDriver_metacall".}
proc fcQAnimationDriver_tr(s: cstring): struct_miqt_string {.importc: "QAnimationDriver_tr".}
proc fcQAnimationDriver_advance(self: pointer): void {.importc: "QAnimationDriver_advance".}
proc fcQAnimationDriver_install(self: pointer): void {.importc: "QAnimationDriver_install".}
proc fcQAnimationDriver_uninstall(self: pointer): void {.importc: "QAnimationDriver_uninstall".}
proc fcQAnimationDriver_isRunning(self: pointer): bool {.importc: "QAnimationDriver_isRunning".}
proc fcQAnimationDriver_elapsed(self: pointer): clonglong {.importc: "QAnimationDriver_elapsed".}
proc fcQAnimationDriver_started(self: pointer): void {.importc: "QAnimationDriver_started".}
proc fcQAnimationDriver_connect_started(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAnimationDriver_connect_started".}
proc fcQAnimationDriver_stopped(self: pointer): void {.importc: "QAnimationDriver_stopped".}
proc fcQAnimationDriver_connect_stopped(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAnimationDriver_connect_stopped".}
proc fcQAnimationDriver_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationDriver_tr2".}
proc fcQAnimationDriver_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationDriver_tr3".}
proc fcQAnimationDriver_vtbl(self: pointer): pointer {.importc: "QAnimationDriver_vtbl".}
proc fcQAnimationDriver_vdata(self: pointer): pointer {.importc: "QAnimationDriver_vdata".}
type cQAnimationDriverVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  advance*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  elapsed*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  start*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stop*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAnimationDriver_virtualbase_metaObject(self: pointer): pointer {.importc: "QAnimationDriver_virtualbase_metaObject".}
proc fcQAnimationDriver_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationDriver_virtualbase_metacast".}
proc fcQAnimationDriver_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationDriver_virtualbase_metacall".}
proc fcQAnimationDriver_virtualbase_advance(self: pointer): void {.importc: "QAnimationDriver_virtualbase_advance".}
proc fcQAnimationDriver_virtualbase_elapsed(self: pointer): clonglong {.importc: "QAnimationDriver_virtualbase_elapsed".}
proc fcQAnimationDriver_virtualbase_start(self: pointer): void {.importc: "QAnimationDriver_virtualbase_start".}
proc fcQAnimationDriver_virtualbase_stop(self: pointer): void {.importc: "QAnimationDriver_virtualbase_stop".}
proc fcQAnimationDriver_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAnimationDriver_virtualbase_event".}
proc fcQAnimationDriver_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAnimationDriver_virtualbase_eventFilter".}
proc fcQAnimationDriver_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAnimationDriver_virtualbase_timerEvent".}
proc fcQAnimationDriver_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAnimationDriver_virtualbase_childEvent".}
proc fcQAnimationDriver_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAnimationDriver_virtualbase_customEvent".}
proc fcQAnimationDriver_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAnimationDriver_virtualbase_connectNotify".}
proc fcQAnimationDriver_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAnimationDriver_virtualbase_disconnectNotify".}
proc fcQAnimationDriver_protectedbase_advanceAnimation(self: pointer): void {.importc: "QAnimationDriver_protectedbase_advanceAnimation".}
proc fcQAnimationDriver_protectedbase_sender(self: pointer): pointer {.importc: "QAnimationDriver_protectedbase_sender".}
proc fcQAnimationDriver_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAnimationDriver_protectedbase_senderSignalIndex".}
proc fcQAnimationDriver_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAnimationDriver_protectedbase_receivers".}
proc fcQAnimationDriver_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAnimationDriver_protectedbase_isSignalConnected".}
proc fcQAnimationDriver_new(vtbl, vdata: pointer): ptr cQAnimationDriver {.importc: "QAnimationDriver_new".}
proc fcQAnimationDriver_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAnimationDriver {.importc: "QAnimationDriver_new2".}
proc fcQAnimationDriver_staticMetaObject(): pointer {.importc: "QAnimationDriver_staticMetaObject".}

proc metaObject*(self: gen_qabstractanimation_types.QAbstractAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAnimation_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cstring): pointer =
  fcQAbstractAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring): string =
  let v_ms = fcQAbstractAnimation_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  cint(fcQAbstractAnimation_state(self.h))

proc group*(self: gen_qabstractanimation_types.QAbstractAnimation): gen_qanimationgroup_types.QAnimationGroup =
  gen_qanimationgroup_types.QAnimationGroup(h: fcQAbstractAnimation_group(self.h), owned: false)

proc direction*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  cint(fcQAbstractAnimation_direction(self.h))

proc setDirection*(self: gen_qabstractanimation_types.QAbstractAnimation, direction: cint): void =
  fcQAbstractAnimation_setDirection(self.h, cint(direction))

proc currentTime*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_currentTime(self.h)

proc currentLoopTime*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_currentLoopTime(self.h)

proc loopCount*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_loopCount(self.h)

proc setLoopCount*(self: gen_qabstractanimation_types.QAbstractAnimation, loopCount: cint): void =
  fcQAbstractAnimation_setLoopCount(self.h, loopCount)

proc currentLoop*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_currentLoop(self.h)

proc duration*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_duration(self.h)

proc totalDuration*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_totalDuration(self.h)

proc finished*(self: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractAnimation_finished(self.h)

type QAbstractAnimationfinishedSlot* = proc()
proc cQAbstractAnimation_slot_callback_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractAnimationfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractAnimation_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractAnimationfinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationfinishedSlot) =
  var tmp = new QAbstractAnimationfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_finished(self.h, cast[int](addr tmp[]), cQAbstractAnimation_slot_callback_finished, cQAbstractAnimation_slot_callback_finished_release)

proc stateChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, newState: cint, oldState: cint): void =
  fcQAbstractAnimation_stateChanged(self.h, cint(newState), cint(oldState))

type QAbstractAnimationstateChangedSlot* = proc(newState: cint, oldState: cint)
proc cQAbstractAnimation_slot_callback_stateChanged(slot: int, newState: cint, oldState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractAnimationstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)

  nimfunc[](slotval1, slotval2)

proc cQAbstractAnimation_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractAnimationstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationstateChangedSlot) =
  var tmp = new QAbstractAnimationstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_stateChanged(self.h, cast[int](addr tmp[]), cQAbstractAnimation_slot_callback_stateChanged, cQAbstractAnimation_slot_callback_stateChanged_release)

proc currentLoopChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, currentLoop: cint): void =
  fcQAbstractAnimation_currentLoopChanged(self.h, currentLoop)

type QAbstractAnimationcurrentLoopChangedSlot* = proc(currentLoop: cint)
proc cQAbstractAnimation_slot_callback_currentLoopChanged(slot: int, currentLoop: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractAnimationcurrentLoopChangedSlot](cast[pointer](slot))
  let slotval1 = currentLoop

  nimfunc[](slotval1)

proc cQAbstractAnimation_slot_callback_currentLoopChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractAnimationcurrentLoopChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentLoopChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationcurrentLoopChangedSlot) =
  var tmp = new QAbstractAnimationcurrentLoopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_currentLoopChanged(self.h, cast[int](addr tmp[]), cQAbstractAnimation_slot_callback_currentLoopChanged, cQAbstractAnimation_slot_callback_currentLoopChanged_release)

proc directionChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cint): void =
  fcQAbstractAnimation_directionChanged(self.h, cint(param1))

type QAbstractAnimationdirectionChangedSlot* = proc(param1: cint)
proc cQAbstractAnimation_slot_callback_directionChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractAnimationdirectionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc cQAbstractAnimation_slot_callback_directionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractAnimationdirectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectionChanged*(self: gen_qabstractanimation_types.QAbstractAnimation, slot: QAbstractAnimationdirectionChangedSlot) =
  var tmp = new QAbstractAnimationdirectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_connect_directionChanged(self.h, cast[int](addr tmp[]), cQAbstractAnimation_slot_callback_directionChanged, cQAbstractAnimation_slot_callback_directionChanged_release)

proc start*(self: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractAnimation_start(self.h)

proc pause*(self: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractAnimation_pause(self.h)

proc resume*(self: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractAnimation_resume(self.h)

proc setPaused*(self: gen_qabstractanimation_types.QAbstractAnimation, paused: bool): void =
  fcQAbstractAnimation_setPaused(self.h, paused)

proc stop*(self: gen_qabstractanimation_types.QAbstractAnimation): void =
  fcQAbstractAnimation_stop(self.h)

proc setCurrentTime*(self: gen_qabstractanimation_types.QAbstractAnimation, msecs: cint): void =
  fcQAbstractAnimation_setCurrentTime(self.h, msecs)

proc tr*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractanimation_types.QAbstractAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qabstractanimation_types.QAbstractAnimation, policy: cint): void =
  fcQAbstractAnimation_start1(self.h, cint(policy))

type QAbstractAnimationmetaObjectProc* = proc(self: QAbstractAnimation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractAnimationmetacastProc* = proc(self: QAbstractAnimation, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractAnimationmetacallProc* = proc(self: QAbstractAnimation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractAnimationdurationProc* = proc(self: QAbstractAnimation): cint {.raises: [], gcsafe.}
type QAbstractAnimationeventProc* = proc(self: QAbstractAnimation, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractAnimationupdateCurrentTimeProc* = proc(self: QAbstractAnimation, currentTime: cint): void {.raises: [], gcsafe.}
type QAbstractAnimationupdateStateProc* = proc(self: QAbstractAnimation, newState: cint, oldState: cint): void {.raises: [], gcsafe.}
type QAbstractAnimationupdateDirectionProc* = proc(self: QAbstractAnimation, direction: cint): void {.raises: [], gcsafe.}
type QAbstractAnimationeventFilterProc* = proc(self: QAbstractAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractAnimationtimerEventProc* = proc(self: QAbstractAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractAnimationchildEventProc* = proc(self: QAbstractAnimation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractAnimationcustomEventProc* = proc(self: QAbstractAnimation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractAnimationconnectNotifyProc* = proc(self: QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractAnimationdisconnectNotifyProc* = proc(self: QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractAnimationVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractAnimationVTable
  metaObject*: QAbstractAnimationmetaObjectProc
  metacast*: QAbstractAnimationmetacastProc
  metacall*: QAbstractAnimationmetacallProc
  duration*: QAbstractAnimationdurationProc
  event*: QAbstractAnimationeventProc
  updateCurrentTime*: QAbstractAnimationupdateCurrentTimeProc
  updateState*: QAbstractAnimationupdateStateProc
  updateDirection*: QAbstractAnimationupdateDirectionProc
  eventFilter*: QAbstractAnimationeventFilterProc
  timerEvent*: QAbstractAnimationtimerEventProc
  childEvent*: QAbstractAnimationchildEventProc
  customEvent*: QAbstractAnimationcustomEventProc
  connectNotify*: QAbstractAnimationconnectNotifyProc
  disconnectNotify*: QAbstractAnimationdisconnectNotifyProc
proc QAbstractAnimationmetaObject*(self: gen_qabstractanimation_types.QAbstractAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAnimation_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractAnimation_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractAnimationmetacast*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cstring): pointer =
  fcQAbstractAnimation_virtualbase_metacast(self.h, param1)

proc cQAbstractAnimation_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractAnimationmetacall*(self: gen_qabstractanimation_types.QAbstractAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractAnimation_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQAbstractAnimation_vtable_callback_duration(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  var virtualReturn = vtbl[].duration(self)
  virtualReturn

proc QAbstractAnimationevent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractAnimation_virtualbase_event(self.h, event.h)

proc cQAbstractAnimation_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc cQAbstractAnimation_vtable_callback_updateCurrentTime(self: pointer, currentTime: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = currentTime
  vtbl[].updateCurrentTime(self, slotval1)

proc QAbstractAnimationupdateState*(self: gen_qabstractanimation_types.QAbstractAnimation, newState: cint, oldState: cint): void =
  fcQAbstractAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

proc cQAbstractAnimation_vtable_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  vtbl[].updateState(self, slotval1, slotval2)

proc QAbstractAnimationupdateDirection*(self: gen_qabstractanimation_types.QAbstractAnimation, direction: cint): void =
  fcQAbstractAnimation_virtualbase_updateDirection(self.h, cint(direction))

proc cQAbstractAnimation_vtable_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = cint(direction)
  vtbl[].updateDirection(self, slotval1)

proc QAbstractAnimationeventFilter*(self: gen_qabstractanimation_types.QAbstractAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractAnimation_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractAnimationtimerEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractAnimation_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractAnimation_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractAnimationchildEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractAnimation_virtualbase_childEvent(self.h, event.h)

proc cQAbstractAnimation_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractAnimationcustomEvent*(self: gen_qabstractanimation_types.QAbstractAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractAnimation_virtualbase_customEvent(self.h, event.h)

proc cQAbstractAnimation_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractAnimationconnectNotify*(self: gen_qabstractanimation_types.QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractAnimation_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractAnimation_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractAnimationdisconnectNotify*(self: gen_qabstractanimation_types.QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractAnimation_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractAnimation_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
  let self = QAbstractAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractAnimation* {.inheritable.} = ref object of QAbstractAnimation
  vtbl*: cQAbstractAnimationVTable
method metaObject*(self: VirtualQAbstractAnimation): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractAnimationmetaObject(self[])
proc cQAbstractAnimation_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractAnimation, param1: cstring): pointer {.base.} =
  QAbstractAnimationmetacast(self[], param1)
proc cQAbstractAnimation_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractAnimation, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractAnimationmetacall(self[], param1, param2, param3)
proc cQAbstractAnimation_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method duration*(self: VirtualQAbstractAnimation): cint {.base.} =
  raiseAssert("missing implementation of QAbstractAnimation_virtualbase_duration")
proc cQAbstractAnimation_method_callback_duration(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  var virtualReturn = inst.duration()
  virtualReturn

method event*(self: VirtualQAbstractAnimation, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractAnimationevent(self[], event)
proc cQAbstractAnimation_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method updateCurrentTime*(self: VirtualQAbstractAnimation, currentTime: cint): void {.base.} =
  raiseAssert("missing implementation of QAbstractAnimation_virtualbase_updateCurrentTime")
proc cQAbstractAnimation_method_callback_updateCurrentTime(self: pointer, currentTime: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = currentTime
  inst.updateCurrentTime(slotval1)

method updateState*(self: VirtualQAbstractAnimation, newState: cint, oldState: cint): void {.base.} =
  QAbstractAnimationupdateState(self[], newState, oldState)
proc cQAbstractAnimation_method_callback_updateState(self: pointer, newState: cint, oldState: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = cint(newState)
  let slotval2 = cint(oldState)
  inst.updateState(slotval1, slotval2)

method updateDirection*(self: VirtualQAbstractAnimation, direction: cint): void {.base.} =
  QAbstractAnimationupdateDirection(self[], direction)
proc cQAbstractAnimation_method_callback_updateDirection(self: pointer, direction: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = cint(direction)
  inst.updateDirection(slotval1)

method eventFilter*(self: VirtualQAbstractAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractAnimationeventFilter(self[], watched, event)
proc cQAbstractAnimation_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractAnimationtimerEvent(self[], event)
proc cQAbstractAnimation_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractAnimation, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractAnimationchildEvent(self[], event)
proc cQAbstractAnimation_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractAnimation, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractAnimationcustomEvent(self[], event)
proc cQAbstractAnimation_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractAnimationconnectNotify(self[], signal)
proc cQAbstractAnimation_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractAnimationdisconnectNotify(self[], signal)
proc cQAbstractAnimation_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractAnimation](fcQAbstractAnimation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qabstractanimation_types.QAbstractAnimation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractAnimation_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractanimation_types.QAbstractAnimation): cint =
  fcQAbstractAnimation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractanimation_types.QAbstractAnimation, signal: cstring): cint =
  fcQAbstractAnimation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractanimation_types.QAbstractAnimation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractAnimation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractanimation_types.QAbstractAnimation,
    vtbl: ref QAbstractAnimationVTable = nil): gen_qabstractanimation_types.QAbstractAnimation =
  let vtbl = if vtbl == nil: new QAbstractAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractAnimation_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQAbstractAnimation_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQAbstractAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQAbstractAnimation_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQAbstractAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractAnimation_vtable_callback_disconnectNotify
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQAbstractAnimation_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractanimation_types.QAbstractAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractAnimationVTable = nil): gen_qabstractanimation_types.QAbstractAnimation =
  let vtbl = if vtbl == nil: new QAbstractAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractAnimationVTable](fcQAbstractAnimation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractAnimation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractAnimation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractAnimation_vtable_callback_metacall
  if not isNil(vtbl[].duration):
    vtbl[].vtbl.duration = cQAbstractAnimation_vtable_callback_duration
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractAnimation_vtable_callback_event
  if not isNil(vtbl[].updateCurrentTime):
    vtbl[].vtbl.updateCurrentTime = cQAbstractAnimation_vtable_callback_updateCurrentTime
  if not isNil(vtbl[].updateState):
    vtbl[].vtbl.updateState = cQAbstractAnimation_vtable_callback_updateState
  if not isNil(vtbl[].updateDirection):
    vtbl[].vtbl.updateDirection = cQAbstractAnimation_vtable_callback_updateDirection
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractAnimation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractAnimation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractAnimation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractAnimation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractAnimation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractAnimation_vtable_callback_disconnectNotify
  gen_qabstractanimation_types.QAbstractAnimation(h: fcQAbstractAnimation_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractAnimation_mvtbl = cQAbstractAnimationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractAnimation()[])](self.fcQAbstractAnimation_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractAnimation_method_callback_metaObject,
  metacast: cQAbstractAnimation_method_callback_metacast,
  metacall: cQAbstractAnimation_method_callback_metacall,
  duration: cQAbstractAnimation_method_callback_duration,
  event: cQAbstractAnimation_method_callback_event,
  updateCurrentTime: cQAbstractAnimation_method_callback_updateCurrentTime,
  updateState: cQAbstractAnimation_method_callback_updateState,
  updateDirection: cQAbstractAnimation_method_callback_updateDirection,
  eventFilter: cQAbstractAnimation_method_callback_eventFilter,
  timerEvent: cQAbstractAnimation_method_callback_timerEvent,
  childEvent: cQAbstractAnimation_method_callback_childEvent,
  customEvent: cQAbstractAnimation_method_callback_customEvent,
  connectNotify: cQAbstractAnimation_method_callback_connectNotify,
  disconnectNotify: cQAbstractAnimation_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractanimation_types.QAbstractAnimation,
    inst: VirtualQAbstractAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractAnimation_new(addr(cQAbstractAnimation_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractanimation_types.QAbstractAnimation,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractAnimation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractAnimation_new2(addr(cQAbstractAnimation_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractanimation_types.QAbstractAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAnimation_staticMetaObject())
proc metaObject*(self: gen_qabstractanimation_types.QAnimationDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationDriver_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cstring): pointer =
  fcQAnimationDriver_metacast(self.h, param1)

proc metacall*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cint, param2: cint, param3: pointer): cint =
  fcQAnimationDriver_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring): string =
  let v_ms = fcQAnimationDriver_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc advance*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_advance(self.h)

proc install*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_install(self.h)

proc uninstall*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_uninstall(self.h)

proc isRunning*(self: gen_qabstractanimation_types.QAnimationDriver): bool =
  fcQAnimationDriver_isRunning(self.h)

proc elapsed*(self: gen_qabstractanimation_types.QAnimationDriver): clonglong =
  fcQAnimationDriver_elapsed(self.h)

proc started*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_started(self.h)

type QAnimationDriverstartedSlot* = proc()
proc cQAnimationDriver_slot_callback_started(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAnimationDriverstartedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAnimationDriver_slot_callback_started_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAnimationDriverstartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstarted*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverstartedSlot) =
  var tmp = new QAnimationDriverstartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_connect_started(self.h, cast[int](addr tmp[]), cQAnimationDriver_slot_callback_started, cQAnimationDriver_slot_callback_started_release)

proc stopped*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_stopped(self.h)

type QAnimationDriverstoppedSlot* = proc()
proc cQAnimationDriver_slot_callback_stopped(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAnimationDriverstoppedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAnimationDriver_slot_callback_stopped_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAnimationDriverstoppedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstopped*(self: gen_qabstractanimation_types.QAnimationDriver, slot: QAnimationDriverstoppedSlot) =
  var tmp = new QAnimationDriverstoppedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_connect_stopped(self.h, cast[int](addr tmp[]), cQAnimationDriver_slot_callback_stopped, cQAnimationDriver_slot_callback_stopped_release)

proc tr*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring, c: cstring): string =
  let v_ms = fcQAnimationDriver_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractanimation_types.QAnimationDriver, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAnimationDriver_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAnimationDrivermetaObjectProc* = proc(self: QAnimationDriver): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAnimationDrivermetacastProc* = proc(self: QAnimationDriver, param1: cstring): pointer {.raises: [], gcsafe.}
type QAnimationDrivermetacallProc* = proc(self: QAnimationDriver, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAnimationDriveradvanceProc* = proc(self: QAnimationDriver): void {.raises: [], gcsafe.}
type QAnimationDriverelapsedProc* = proc(self: QAnimationDriver): clonglong {.raises: [], gcsafe.}
type QAnimationDriverstartProc* = proc(self: QAnimationDriver): void {.raises: [], gcsafe.}
type QAnimationDriverstopProc* = proc(self: QAnimationDriver): void {.raises: [], gcsafe.}
type QAnimationDrivereventProc* = proc(self: QAnimationDriver, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAnimationDrivereventFilterProc* = proc(self: QAnimationDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAnimationDrivertimerEventProc* = proc(self: QAnimationDriver, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAnimationDriverchildEventProc* = proc(self: QAnimationDriver, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAnimationDrivercustomEventProc* = proc(self: QAnimationDriver, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAnimationDriverconnectNotifyProc* = proc(self: QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAnimationDriverdisconnectNotifyProc* = proc(self: QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAnimationDriverVTable* {.inheritable, pure.} = object
  vtbl: cQAnimationDriverVTable
  metaObject*: QAnimationDrivermetaObjectProc
  metacast*: QAnimationDrivermetacastProc
  metacall*: QAnimationDrivermetacallProc
  advance*: QAnimationDriveradvanceProc
  elapsed*: QAnimationDriverelapsedProc
  start*: QAnimationDriverstartProc
  stop*: QAnimationDriverstopProc
  event*: QAnimationDrivereventProc
  eventFilter*: QAnimationDrivereventFilterProc
  timerEvent*: QAnimationDrivertimerEventProc
  childEvent*: QAnimationDriverchildEventProc
  customEvent*: QAnimationDrivercustomEventProc
  connectNotify*: QAnimationDriverconnectNotifyProc
  disconnectNotify*: QAnimationDriverdisconnectNotifyProc
proc QAnimationDrivermetaObject*(self: gen_qabstractanimation_types.QAnimationDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationDriver_virtualbase_metaObject(self.h), owned: false)

proc cQAnimationDriver_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAnimationDrivermetacast*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cstring): pointer =
  fcQAnimationDriver_virtualbase_metacast(self.h, param1)

proc cQAnimationDriver_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAnimationDrivermetacall*(self: gen_qabstractanimation_types.QAnimationDriver, param1: cint, param2: cint, param3: pointer): cint =
  fcQAnimationDriver_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAnimationDriver_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAnimationDriveradvance*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_virtualbase_advance(self.h)

proc cQAnimationDriver_vtable_callback_advance(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  vtbl[].advance(self)

proc QAnimationDriverelapsed*(self: gen_qabstractanimation_types.QAnimationDriver): clonglong =
  fcQAnimationDriver_virtualbase_elapsed(self.h)

proc cQAnimationDriver_vtable_callback_elapsed(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  var virtualReturn = vtbl[].elapsed(self)
  virtualReturn

proc QAnimationDriverstart*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_virtualbase_start(self.h)

proc cQAnimationDriver_vtable_callback_start(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  vtbl[].start(self)

proc QAnimationDriverstop*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_virtualbase_stop(self.h)

proc cQAnimationDriver_vtable_callback_stop(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  vtbl[].stop(self)

proc QAnimationDriverevent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QEvent): bool =
  fcQAnimationDriver_virtualbase_event(self.h, event.h)

proc cQAnimationDriver_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAnimationDrivereventFilter*(self: gen_qabstractanimation_types.QAnimationDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAnimationDriver_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAnimationDriver_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAnimationDrivertimerEvent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAnimationDriver_virtualbase_timerEvent(self.h, event.h)

proc cQAnimationDriver_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAnimationDriverchildEvent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAnimationDriver_virtualbase_childEvent(self.h, event.h)

proc cQAnimationDriver_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAnimationDrivercustomEvent*(self: gen_qabstractanimation_types.QAnimationDriver, event: gen_qcoreevent_types.QEvent): void =
  fcQAnimationDriver_virtualbase_customEvent(self.h, event.h)

proc cQAnimationDriver_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAnimationDriverconnectNotify*(self: gen_qabstractanimation_types.QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAnimationDriver_virtualbase_connectNotify(self.h, signal.h)

proc cQAnimationDriver_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAnimationDriverdisconnectNotify*(self: gen_qabstractanimation_types.QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAnimationDriver_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAnimationDriver_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
  let self = QAnimationDriver(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAnimationDriver* {.inheritable.} = ref object of QAnimationDriver
  vtbl*: cQAnimationDriverVTable
method metaObject*(self: VirtualQAnimationDriver): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAnimationDrivermetaObject(self[])
proc cQAnimationDriver_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAnimationDriver, param1: cstring): pointer {.base.} =
  QAnimationDrivermetacast(self[], param1)
proc cQAnimationDriver_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAnimationDriver, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAnimationDrivermetacall(self[], param1, param2, param3)
proc cQAnimationDriver_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method advance*(self: VirtualQAnimationDriver): void {.base.} =
  QAnimationDriveradvance(self[])
proc cQAnimationDriver_method_callback_advance(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  inst.advance()

method elapsed*(self: VirtualQAnimationDriver): clonglong {.base.} =
  QAnimationDriverelapsed(self[])
proc cQAnimationDriver_method_callback_elapsed(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  var virtualReturn = inst.elapsed()
  virtualReturn

method start*(self: VirtualQAnimationDriver): void {.base.} =
  QAnimationDriverstart(self[])
proc cQAnimationDriver_method_callback_start(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  inst.start()

method stop*(self: VirtualQAnimationDriver): void {.base.} =
  QAnimationDriverstop(self[])
proc cQAnimationDriver_method_callback_stop(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  inst.stop()

method event*(self: VirtualQAnimationDriver, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAnimationDriverevent(self[], event)
proc cQAnimationDriver_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAnimationDriver, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAnimationDrivereventFilter(self[], watched, event)
proc cQAnimationDriver_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAnimationDriver, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAnimationDrivertimerEvent(self[], event)
proc cQAnimationDriver_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAnimationDriver, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAnimationDriverchildEvent(self[], event)
proc cQAnimationDriver_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAnimationDriver, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAnimationDrivercustomEvent(self[], event)
proc cQAnimationDriver_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAnimationDriverconnectNotify(self[], signal)
proc cQAnimationDriver_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAnimationDriverdisconnectNotify(self[], signal)
proc cQAnimationDriver_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAnimationDriver](fcQAnimationDriver_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc advanceAnimation*(self: gen_qabstractanimation_types.QAnimationDriver): void =
  fcQAnimationDriver_protectedbase_advanceAnimation(self.h)

proc sender*(self: gen_qabstractanimation_types.QAnimationDriver): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAnimationDriver_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractanimation_types.QAnimationDriver): cint =
  fcQAnimationDriver_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractanimation_types.QAnimationDriver, signal: cstring): cint =
  fcQAnimationDriver_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractanimation_types.QAnimationDriver, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAnimationDriver_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractanimation_types.QAnimationDriver,
    vtbl: ref QAnimationDriverVTable = nil): gen_qabstractanimation_types.QAnimationDriver =
  let vtbl = if vtbl == nil: new QAnimationDriverVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAnimationDriver_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAnimationDriver_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAnimationDriver_vtable_callback_metacall
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQAnimationDriver_vtable_callback_advance
  if not isNil(vtbl[].elapsed):
    vtbl[].vtbl.elapsed = cQAnimationDriver_vtable_callback_elapsed
  if not isNil(vtbl[].start):
    vtbl[].vtbl.start = cQAnimationDriver_vtable_callback_start
  if not isNil(vtbl[].stop):
    vtbl[].vtbl.stop = cQAnimationDriver_vtable_callback_stop
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAnimationDriver_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAnimationDriver_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAnimationDriver_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAnimationDriver_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAnimationDriver_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAnimationDriver_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAnimationDriver_vtable_callback_disconnectNotify
  gen_qabstractanimation_types.QAnimationDriver(h: fcQAnimationDriver_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractanimation_types.QAnimationDriver,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAnimationDriverVTable = nil): gen_qabstractanimation_types.QAnimationDriver =
  let vtbl = if vtbl == nil: new QAnimationDriverVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAnimationDriverVTable](fcQAnimationDriver_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAnimationDriver_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAnimationDriver_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAnimationDriver_vtable_callback_metacall
  if not isNil(vtbl[].advance):
    vtbl[].vtbl.advance = cQAnimationDriver_vtable_callback_advance
  if not isNil(vtbl[].elapsed):
    vtbl[].vtbl.elapsed = cQAnimationDriver_vtable_callback_elapsed
  if not isNil(vtbl[].start):
    vtbl[].vtbl.start = cQAnimationDriver_vtable_callback_start
  if not isNil(vtbl[].stop):
    vtbl[].vtbl.stop = cQAnimationDriver_vtable_callback_stop
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAnimationDriver_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAnimationDriver_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAnimationDriver_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAnimationDriver_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAnimationDriver_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAnimationDriver_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAnimationDriver_vtable_callback_disconnectNotify
  gen_qabstractanimation_types.QAnimationDriver(h: fcQAnimationDriver_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAnimationDriver_mvtbl = cQAnimationDriverVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAnimationDriver()[])](self.fcQAnimationDriver_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAnimationDriver_method_callback_metaObject,
  metacast: cQAnimationDriver_method_callback_metacast,
  metacall: cQAnimationDriver_method_callback_metacall,
  advance: cQAnimationDriver_method_callback_advance,
  elapsed: cQAnimationDriver_method_callback_elapsed,
  start: cQAnimationDriver_method_callback_start,
  stop: cQAnimationDriver_method_callback_stop,
  event: cQAnimationDriver_method_callback_event,
  eventFilter: cQAnimationDriver_method_callback_eventFilter,
  timerEvent: cQAnimationDriver_method_callback_timerEvent,
  childEvent: cQAnimationDriver_method_callback_childEvent,
  customEvent: cQAnimationDriver_method_callback_customEvent,
  connectNotify: cQAnimationDriver_method_callback_connectNotify,
  disconnectNotify: cQAnimationDriver_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractanimation_types.QAnimationDriver,
    inst: VirtualQAnimationDriver) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAnimationDriver_new(addr(cQAnimationDriver_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractanimation_types.QAnimationDriver,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAnimationDriver) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAnimationDriver_new2(addr(cQAnimationDriver_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractanimation_types.QAnimationDriver): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAnimationDriver_staticMetaObject())
