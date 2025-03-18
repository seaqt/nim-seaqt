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


{.compile("gen_qfuturewatcher.cpp", QtCoreCFlags).}


import ./gen_qfuturewatcher_types
export gen_qfuturewatcher_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQFutureWatcherBase*{.exportc: "QFutureWatcherBase", incompleteStruct.} = object

proc fcQFutureWatcherBase_metaObject(self: pointer): pointer {.importc: "QFutureWatcherBase_metaObject".}
proc fcQFutureWatcherBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFutureWatcherBase_metacast".}
proc fcQFutureWatcherBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFutureWatcherBase_metacall".}
proc fcQFutureWatcherBase_tr(s: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_tr".}
proc fcQFutureWatcherBase_progressValue(self: pointer): cint {.importc: "QFutureWatcherBase_progressValue".}
proc fcQFutureWatcherBase_progressMinimum(self: pointer): cint {.importc: "QFutureWatcherBase_progressMinimum".}
proc fcQFutureWatcherBase_progressMaximum(self: pointer): cint {.importc: "QFutureWatcherBase_progressMaximum".}
proc fcQFutureWatcherBase_progressText(self: pointer): struct_miqt_string {.importc: "QFutureWatcherBase_progressText".}
proc fcQFutureWatcherBase_isStarted(self: pointer): bool {.importc: "QFutureWatcherBase_isStarted".}
proc fcQFutureWatcherBase_isFinished(self: pointer): bool {.importc: "QFutureWatcherBase_isFinished".}
proc fcQFutureWatcherBase_isRunning(self: pointer): bool {.importc: "QFutureWatcherBase_isRunning".}
proc fcQFutureWatcherBase_isCanceled(self: pointer): bool {.importc: "QFutureWatcherBase_isCanceled".}
proc fcQFutureWatcherBase_isPaused(self: pointer): bool {.importc: "QFutureWatcherBase_isPaused".}
proc fcQFutureWatcherBase_isSuspending(self: pointer): bool {.importc: "QFutureWatcherBase_isSuspending".}
proc fcQFutureWatcherBase_isSuspended(self: pointer): bool {.importc: "QFutureWatcherBase_isSuspended".}
proc fcQFutureWatcherBase_waitForFinished(self: pointer): void {.importc: "QFutureWatcherBase_waitForFinished".}
proc fcQFutureWatcherBase_setPendingResultsLimit(self: pointer, limit: cint): void {.importc: "QFutureWatcherBase_setPendingResultsLimit".}
proc fcQFutureWatcherBase_event(self: pointer, event: pointer): bool {.importc: "QFutureWatcherBase_event".}
proc fcQFutureWatcherBase_started(self: pointer): void {.importc: "QFutureWatcherBase_started".}
proc fcQFutureWatcherBase_connect_started(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_started".}
proc fcQFutureWatcherBase_finished(self: pointer): void {.importc: "QFutureWatcherBase_finished".}
proc fcQFutureWatcherBase_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_finished".}
proc fcQFutureWatcherBase_canceled(self: pointer): void {.importc: "QFutureWatcherBase_canceled".}
proc fcQFutureWatcherBase_connect_canceled(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_canceled".}
proc fcQFutureWatcherBase_paused(self: pointer): void {.importc: "QFutureWatcherBase_paused".}
proc fcQFutureWatcherBase_connect_paused(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_paused".}
proc fcQFutureWatcherBase_suspending(self: pointer): void {.importc: "QFutureWatcherBase_suspending".}
proc fcQFutureWatcherBase_connect_suspending(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_suspending".}
proc fcQFutureWatcherBase_suspended(self: pointer): void {.importc: "QFutureWatcherBase_suspended".}
proc fcQFutureWatcherBase_connect_suspended(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_suspended".}
proc fcQFutureWatcherBase_resumed(self: pointer): void {.importc: "QFutureWatcherBase_resumed".}
proc fcQFutureWatcherBase_connect_resumed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_resumed".}
proc fcQFutureWatcherBase_resultReadyAt(self: pointer, resultIndex: cint): void {.importc: "QFutureWatcherBase_resultReadyAt".}
proc fcQFutureWatcherBase_connect_resultReadyAt(self: pointer, slot: int, callback: proc (slot: int, resultIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_resultReadyAt".}
proc fcQFutureWatcherBase_resultsReadyAt(self: pointer, beginIndex: cint, endIndex: cint): void {.importc: "QFutureWatcherBase_resultsReadyAt".}
proc fcQFutureWatcherBase_connect_resultsReadyAt(self: pointer, slot: int, callback: proc (slot: int, beginIndex: cint, endIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_resultsReadyAt".}
proc fcQFutureWatcherBase_progressRangeChanged(self: pointer, minimum: cint, maximum: cint): void {.importc: "QFutureWatcherBase_progressRangeChanged".}
proc fcQFutureWatcherBase_connect_progressRangeChanged(self: pointer, slot: int, callback: proc (slot: int, minimum: cint, maximum: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_progressRangeChanged".}
proc fcQFutureWatcherBase_progressValueChanged(self: pointer, progressValue: cint): void {.importc: "QFutureWatcherBase_progressValueChanged".}
proc fcQFutureWatcherBase_connect_progressValueChanged(self: pointer, slot: int, callback: proc (slot: int, progressValue: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_progressValueChanged".}
proc fcQFutureWatcherBase_progressTextChanged(self: pointer, progressText: struct_miqt_string): void {.importc: "QFutureWatcherBase_progressTextChanged".}
proc fcQFutureWatcherBase_connect_progressTextChanged(self: pointer, slot: int, callback: proc (slot: int, progressText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFutureWatcherBase_connect_progressTextChanged".}
proc fcQFutureWatcherBase_cancel(self: pointer): void {.importc: "QFutureWatcherBase_cancel".}
proc fcQFutureWatcherBase_setSuspended(self: pointer, suspend: bool): void {.importc: "QFutureWatcherBase_setSuspended".}
proc fcQFutureWatcherBase_suspend(self: pointer): void {.importc: "QFutureWatcherBase_suspend".}
proc fcQFutureWatcherBase_resume(self: pointer): void {.importc: "QFutureWatcherBase_resume".}
proc fcQFutureWatcherBase_toggleSuspended(self: pointer): void {.importc: "QFutureWatcherBase_toggleSuspended".}
proc fcQFutureWatcherBase_setPaused(self: pointer, paused: bool): void {.importc: "QFutureWatcherBase_setPaused".}
proc fcQFutureWatcherBase_pause(self: pointer): void {.importc: "QFutureWatcherBase_pause".}
proc fcQFutureWatcherBase_togglePaused(self: pointer): void {.importc: "QFutureWatcherBase_togglePaused".}
proc fcQFutureWatcherBase_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_tr2".}
proc fcQFutureWatcherBase_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFutureWatcherBase_tr3".}
proc fcQFutureWatcherBase_protectedbase_connectOutputInterface(self: pointer): void {.importc: "QFutureWatcherBase_protectedbase_connectOutputInterface".}
proc fcQFutureWatcherBase_protectedbase_disconnectOutputInterface(self: pointer): void {.importc: "QFutureWatcherBase_protectedbase_disconnectOutputInterface".}
proc fcQFutureWatcherBase_protectedbase_disconnectOutputInterface1(self: pointer, pendingAssignment: bool): void {.importc: "QFutureWatcherBase_protectedbase_disconnectOutputInterface1".}
proc fcQFutureWatcherBase_protectedbase_sender(self: pointer): pointer {.importc: "QFutureWatcherBase_protectedbase_sender".}
proc fcQFutureWatcherBase_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFutureWatcherBase_protectedbase_senderSignalIndex".}
proc fcQFutureWatcherBase_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFutureWatcherBase_protectedbase_receivers".}
proc fcQFutureWatcherBase_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFutureWatcherBase_protectedbase_isSignalConnected".}
proc fcQFutureWatcherBase_staticMetaObject(): pointer {.importc: "QFutureWatcherBase_staticMetaObject".}

proc metaObject*(self: gen_qfuturewatcher_types.QFutureWatcherBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFutureWatcherBase_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfuturewatcher_types.QFutureWatcherBase, param1: cstring): pointer =
  fcQFutureWatcherBase_metacast(self.h, param1)

proc metacall*(self: gen_qfuturewatcher_types.QFutureWatcherBase, param1: cint, param2: cint, param3: pointer): cint =
  fcQFutureWatcherBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring): string =
  let v_ms = fcQFutureWatcherBase_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc progressValue*(self: gen_qfuturewatcher_types.QFutureWatcherBase): cint =
  fcQFutureWatcherBase_progressValue(self.h)

proc progressMinimum*(self: gen_qfuturewatcher_types.QFutureWatcherBase): cint =
  fcQFutureWatcherBase_progressMinimum(self.h)

proc progressMaximum*(self: gen_qfuturewatcher_types.QFutureWatcherBase): cint =
  fcQFutureWatcherBase_progressMaximum(self.h)

proc progressText*(self: gen_qfuturewatcher_types.QFutureWatcherBase): string =
  let v_ms = fcQFutureWatcherBase_progressText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isStarted*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isStarted(self.h)

proc isFinished*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isFinished(self.h)

proc isRunning*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isRunning(self.h)

proc isCanceled*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isCanceled(self.h)

proc isPaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isPaused(self.h)

proc isSuspending*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isSuspending(self.h)

proc isSuspended*(self: gen_qfuturewatcher_types.QFutureWatcherBase): bool =
  fcQFutureWatcherBase_isSuspended(self.h)

proc waitForFinished*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_waitForFinished(self.h)

proc setPendingResultsLimit*(self: gen_qfuturewatcher_types.QFutureWatcherBase, limit: cint): void =
  fcQFutureWatcherBase_setPendingResultsLimit(self.h, limit)

proc event*(self: gen_qfuturewatcher_types.QFutureWatcherBase, event: gen_qcoreevent_types.QEvent): bool =
  fcQFutureWatcherBase_event(self.h, event.h)

proc started*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_started(self.h)

type QFutureWatcherBasestartedSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_started(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBasestartedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_started_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBasestartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStarted*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasestartedSlot) =
  var tmp = new QFutureWatcherBasestartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_started(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_started, fcQFutureWatcherBase_slot_callback_started_release)

proc finished*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_finished(self.h)

type QFutureWatcherBasefinishedSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBasefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBasefinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFinished*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasefinishedSlot) =
  var tmp = new QFutureWatcherBasefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_finished(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_finished, fcQFutureWatcherBase_slot_callback_finished_release)

proc canceled*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_canceled(self.h)

type QFutureWatcherBasecanceledSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_canceled(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBasecanceledSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_canceled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBasecanceledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCanceled*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasecanceledSlot) =
  var tmp = new QFutureWatcherBasecanceledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_canceled(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_canceled, fcQFutureWatcherBase_slot_callback_canceled_release)

proc paused*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_paused(self.h)

type QFutureWatcherBasepausedSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_paused(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBasepausedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_paused_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBasepausedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasepausedSlot) =
  var tmp = new QFutureWatcherBasepausedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_paused(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_paused, fcQFutureWatcherBase_slot_callback_paused_release)

proc suspending*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_suspending(self.h)

type QFutureWatcherBasesuspendingSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_suspending(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBasesuspendingSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_suspending_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBasesuspendingSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSuspending*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasesuspendingSlot) =
  var tmp = new QFutureWatcherBasesuspendingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_suspending(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_suspending, fcQFutureWatcherBase_slot_callback_suspending_release)

proc suspended*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_suspended(self.h)

type QFutureWatcherBasesuspendedSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_suspended(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBasesuspendedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_suspended_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBasesuspendedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSuspended*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasesuspendedSlot) =
  var tmp = new QFutureWatcherBasesuspendedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_suspended(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_suspended, fcQFutureWatcherBase_slot_callback_suspended_release)

proc resumed*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_resumed(self.h)

type QFutureWatcherBaseresumedSlot* = proc()
proc fcQFutureWatcherBase_slot_callback_resumed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBaseresumedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQFutureWatcherBase_slot_callback_resumed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBaseresumedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResumed*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseresumedSlot) =
  var tmp = new QFutureWatcherBaseresumedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_resumed(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_resumed, fcQFutureWatcherBase_slot_callback_resumed_release)

proc resultReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, resultIndex: cint): void =
  fcQFutureWatcherBase_resultReadyAt(self.h, resultIndex)

type QFutureWatcherBaseresultReadyAtSlot* = proc(resultIndex: cint)
proc fcQFutureWatcherBase_slot_callback_resultReadyAt(slot: int, resultIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBaseresultReadyAtSlot](cast[pointer](slot))
  let slotval1 = resultIndex

  nimfunc[](slotval1)

proc fcQFutureWatcherBase_slot_callback_resultReadyAt_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBaseresultReadyAtSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResultReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseresultReadyAtSlot) =
  var tmp = new QFutureWatcherBaseresultReadyAtSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_resultReadyAt(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_resultReadyAt, fcQFutureWatcherBase_slot_callback_resultReadyAt_release)

proc resultsReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, beginIndex: cint, endIndex: cint): void =
  fcQFutureWatcherBase_resultsReadyAt(self.h, beginIndex, endIndex)

type QFutureWatcherBaseresultsReadyAtSlot* = proc(beginIndex: cint, endIndex: cint)
proc fcQFutureWatcherBase_slot_callback_resultsReadyAt(slot: int, beginIndex: cint, endIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBaseresultsReadyAtSlot](cast[pointer](slot))
  let slotval1 = beginIndex

  let slotval2 = endIndex

  nimfunc[](slotval1, slotval2)

proc fcQFutureWatcherBase_slot_callback_resultsReadyAt_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBaseresultsReadyAtSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResultsReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseresultsReadyAtSlot) =
  var tmp = new QFutureWatcherBaseresultsReadyAtSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_resultsReadyAt(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_resultsReadyAt, fcQFutureWatcherBase_slot_callback_resultsReadyAt_release)

proc progressRangeChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, minimum: cint, maximum: cint): void =
  fcQFutureWatcherBase_progressRangeChanged(self.h, minimum, maximum)

type QFutureWatcherBaseprogressRangeChangedSlot* = proc(minimum: cint, maximum: cint)
proc fcQFutureWatcherBase_slot_callback_progressRangeChanged(slot: int, minimum: cint, maximum: cint) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBaseprogressRangeChangedSlot](cast[pointer](slot))
  let slotval1 = minimum

  let slotval2 = maximum

  nimfunc[](slotval1, slotval2)

proc fcQFutureWatcherBase_slot_callback_progressRangeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBaseprogressRangeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onProgressRangeChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseprogressRangeChangedSlot) =
  var tmp = new QFutureWatcherBaseprogressRangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_progressRangeChanged(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_progressRangeChanged, fcQFutureWatcherBase_slot_callback_progressRangeChanged_release)

proc progressValueChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, progressValue: cint): void =
  fcQFutureWatcherBase_progressValueChanged(self.h, progressValue)

type QFutureWatcherBaseprogressValueChangedSlot* = proc(progressValue: cint)
proc fcQFutureWatcherBase_slot_callback_progressValueChanged(slot: int, progressValue: cint) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBaseprogressValueChangedSlot](cast[pointer](slot))
  let slotval1 = progressValue

  nimfunc[](slotval1)

proc fcQFutureWatcherBase_slot_callback_progressValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBaseprogressValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onProgressValueChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseprogressValueChangedSlot) =
  var tmp = new QFutureWatcherBaseprogressValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_progressValueChanged(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_progressValueChanged, fcQFutureWatcherBase_slot_callback_progressValueChanged_release)

proc progressTextChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, progressText: openArray[char]): void =
  fcQFutureWatcherBase_progressTextChanged(self.h, struct_miqt_string(data: if len(progressText) > 0: addr progressText[0] else: nil, len: csize_t(len(progressText))))

type QFutureWatcherBaseprogressTextChangedSlot* = proc(progressText: openArray[char])
proc fcQFutureWatcherBase_slot_callback_progressTextChanged(slot: int, progressText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QFutureWatcherBaseprogressTextChangedSlot](cast[pointer](slot))
  let vprogressText_ms = progressText
  let vprogressTextx_ret = string.fromBytes(vprogressText_ms)
  c_free(vprogressText_ms.data)
  let slotval1 = vprogressTextx_ret

  nimfunc[](slotval1)

proc fcQFutureWatcherBase_slot_callback_progressTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFutureWatcherBaseprogressTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onProgressTextChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseprogressTextChangedSlot) =
  var tmp = new QFutureWatcherBaseprogressTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_progressTextChanged(self.h, cast[int](addr tmp[]), fcQFutureWatcherBase_slot_callback_progressTextChanged, fcQFutureWatcherBase_slot_callback_progressTextChanged_release)

proc cancel*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_cancel(self.h)

proc setSuspended*(self: gen_qfuturewatcher_types.QFutureWatcherBase, suspend: bool): void =
  fcQFutureWatcherBase_setSuspended(self.h, suspend)

proc suspend*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_suspend(self.h)

proc resume*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_resume(self.h)

proc toggleSuspended*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_toggleSuspended(self.h)

proc setPaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, paused: bool): void =
  fcQFutureWatcherBase_setPaused(self.h, paused)

proc pause*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_pause(self.h)

proc togglePaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_togglePaused(self.h)

proc tr*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring, c: cstring): string =
  let v_ms = fcQFutureWatcherBase_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFutureWatcherBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectOutputInterface*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_protectedbase_connectOutputInterface(self.h)

proc disconnectOutputInterface*(self: gen_qfuturewatcher_types.QFutureWatcherBase): void =
  fcQFutureWatcherBase_protectedbase_disconnectOutputInterface(self.h)

proc disconnectOutputInterface*(self: gen_qfuturewatcher_types.QFutureWatcherBase, pendingAssignment: bool): void =
  fcQFutureWatcherBase_protectedbase_disconnectOutputInterface1(self.h, pendingAssignment)

proc sender*(self: gen_qfuturewatcher_types.QFutureWatcherBase): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFutureWatcherBase_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfuturewatcher_types.QFutureWatcherBase): cint =
  fcQFutureWatcherBase_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfuturewatcher_types.QFutureWatcherBase, signal: cstring): cint =
  fcQFutureWatcherBase_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfuturewatcher_types.QFutureWatcherBase, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFutureWatcherBase_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qfuturewatcher_types.QFutureWatcherBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFutureWatcherBase_staticMetaObject())
