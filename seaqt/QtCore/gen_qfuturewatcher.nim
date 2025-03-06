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
{.compile("gen_qfuturewatcher.cpp", cflags).}


import ./gen_qfuturewatcher_types
export gen_qfuturewatcher_types

import
  ./gen_qcoreevent_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQFutureWatcherBase*{.exportc: "QFutureWatcherBase", incompleteStruct.} = object

proc fcQFutureWatcherBase_metaObject(self: pointer, ): pointer {.importc: "QFutureWatcherBase_metaObject".}
proc fcQFutureWatcherBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFutureWatcherBase_metacast".}
proc fcQFutureWatcherBase_tr(s: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_tr".}
proc fcQFutureWatcherBase_trUtf8(s: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_trUtf8".}
proc fcQFutureWatcherBase_progressValue(self: pointer, ): cint {.importc: "QFutureWatcherBase_progressValue".}
proc fcQFutureWatcherBase_progressMinimum(self: pointer, ): cint {.importc: "QFutureWatcherBase_progressMinimum".}
proc fcQFutureWatcherBase_progressMaximum(self: pointer, ): cint {.importc: "QFutureWatcherBase_progressMaximum".}
proc fcQFutureWatcherBase_progressText(self: pointer, ): struct_miqt_string {.importc: "QFutureWatcherBase_progressText".}
proc fcQFutureWatcherBase_isStarted(self: pointer, ): bool {.importc: "QFutureWatcherBase_isStarted".}
proc fcQFutureWatcherBase_isFinished(self: pointer, ): bool {.importc: "QFutureWatcherBase_isFinished".}
proc fcQFutureWatcherBase_isRunning(self: pointer, ): bool {.importc: "QFutureWatcherBase_isRunning".}
proc fcQFutureWatcherBase_isCanceled(self: pointer, ): bool {.importc: "QFutureWatcherBase_isCanceled".}
proc fcQFutureWatcherBase_isPaused(self: pointer, ): bool {.importc: "QFutureWatcherBase_isPaused".}
proc fcQFutureWatcherBase_waitForFinished(self: pointer, ): void {.importc: "QFutureWatcherBase_waitForFinished".}
proc fcQFutureWatcherBase_setPendingResultsLimit(self: pointer, limit: cint): void {.importc: "QFutureWatcherBase_setPendingResultsLimit".}
proc fcQFutureWatcherBase_event(self: pointer, event: pointer): bool {.importc: "QFutureWatcherBase_event".}
proc fcQFutureWatcherBase_started(self: pointer, ): void {.importc: "QFutureWatcherBase_started".}
proc fcQFutureWatcherBase_connect_started(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_started".}
proc fcQFutureWatcherBase_finished(self: pointer, ): void {.importc: "QFutureWatcherBase_finished".}
proc fcQFutureWatcherBase_connect_finished(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_finished".}
proc fcQFutureWatcherBase_canceled(self: pointer, ): void {.importc: "QFutureWatcherBase_canceled".}
proc fcQFutureWatcherBase_connect_canceled(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_canceled".}
proc fcQFutureWatcherBase_paused(self: pointer, ): void {.importc: "QFutureWatcherBase_paused".}
proc fcQFutureWatcherBase_connect_paused(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_paused".}
proc fcQFutureWatcherBase_resumed(self: pointer, ): void {.importc: "QFutureWatcherBase_resumed".}
proc fcQFutureWatcherBase_connect_resumed(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_resumed".}
proc fcQFutureWatcherBase_resultReadyAt(self: pointer, resultIndex: cint): void {.importc: "QFutureWatcherBase_resultReadyAt".}
proc fcQFutureWatcherBase_connect_resultReadyAt(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_resultReadyAt".}
proc fcQFutureWatcherBase_resultsReadyAt(self: pointer, beginIndex: cint, endIndex: cint): void {.importc: "QFutureWatcherBase_resultsReadyAt".}
proc fcQFutureWatcherBase_connect_resultsReadyAt(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_resultsReadyAt".}
proc fcQFutureWatcherBase_progressRangeChanged(self: pointer, minimum: cint, maximum: cint): void {.importc: "QFutureWatcherBase_progressRangeChanged".}
proc fcQFutureWatcherBase_connect_progressRangeChanged(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_progressRangeChanged".}
proc fcQFutureWatcherBase_progressValueChanged(self: pointer, progressValue: cint): void {.importc: "QFutureWatcherBase_progressValueChanged".}
proc fcQFutureWatcherBase_connect_progressValueChanged(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_progressValueChanged".}
proc fcQFutureWatcherBase_progressTextChanged(self: pointer, progressText: struct_miqt_string): void {.importc: "QFutureWatcherBase_progressTextChanged".}
proc fcQFutureWatcherBase_connect_progressTextChanged(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_progressTextChanged".}
proc fcQFutureWatcherBase_cancel(self: pointer, ): void {.importc: "QFutureWatcherBase_cancel".}
proc fcQFutureWatcherBase_setPaused(self: pointer, paused: bool): void {.importc: "QFutureWatcherBase_setPaused".}
proc fcQFutureWatcherBase_pause(self: pointer, ): void {.importc: "QFutureWatcherBase_pause".}
proc fcQFutureWatcherBase_resume(self: pointer, ): void {.importc: "QFutureWatcherBase_resume".}
proc fcQFutureWatcherBase_togglePaused(self: pointer, ): void {.importc: "QFutureWatcherBase_togglePaused".}
proc fcQFutureWatcherBase_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_tr2".}
proc fcQFutureWatcherBase_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFutureWatcherBase_tr3".}
proc fcQFutureWatcherBase_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_trUtf82".}
proc fcQFutureWatcherBase_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFutureWatcherBase_trUtf83".}
proc fcQFutureWatcherBase_delete(self: pointer) {.importc: "QFutureWatcherBase_delete".}


func init*(T: type gen_qfuturewatcher_types.QFutureWatcherBase, h: ptr cQFutureWatcherBase): gen_qfuturewatcher_types.QFutureWatcherBase =
  T(h: h)
proc metaObject*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFutureWatcherBase_metaObject(self.h))

proc metacast*(self: gen_qfuturewatcher_types.QFutureWatcherBase, param1: cstring): pointer =
  fcQFutureWatcherBase_metacast(self.h, param1)

proc tr*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring): string =
  let v_ms = fcQFutureWatcherBase_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring): string =
  let v_ms = fcQFutureWatcherBase_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc progressValue*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): cint =
  fcQFutureWatcherBase_progressValue(self.h)

proc progressMinimum*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): cint =
  fcQFutureWatcherBase_progressMinimum(self.h)

proc progressMaximum*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): cint =
  fcQFutureWatcherBase_progressMaximum(self.h)

proc progressText*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): string =
  let v_ms = fcQFutureWatcherBase_progressText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isStarted*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): bool =
  fcQFutureWatcherBase_isStarted(self.h)

proc isFinished*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): bool =
  fcQFutureWatcherBase_isFinished(self.h)

proc isRunning*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): bool =
  fcQFutureWatcherBase_isRunning(self.h)

proc isCanceled*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): bool =
  fcQFutureWatcherBase_isCanceled(self.h)

proc isPaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): bool =
  fcQFutureWatcherBase_isPaused(self.h)

proc waitForFinished*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_waitForFinished(self.h)

proc setPendingResultsLimit*(self: gen_qfuturewatcher_types.QFutureWatcherBase, limit: cint): void =
  fcQFutureWatcherBase_setPendingResultsLimit(self.h, limit)

proc event*(self: gen_qfuturewatcher_types.QFutureWatcherBase, event: gen_qcoreevent_types.QEvent): bool =
  fcQFutureWatcherBase_event(self.h, event.h)

proc started*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_started(self.h)

type QFutureWatcherBasestartedSlot* = proc()
proc miqt_exec_callback_QFutureWatcherBase_started(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBasestartedSlot](cast[pointer](slot))
  nimfunc[]()

proc onstarted*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasestartedSlot) =
  var tmp = new QFutureWatcherBasestartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_started(self.h, cast[int](addr tmp[]))

proc finished*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_finished(self.h)

type QFutureWatcherBasefinishedSlot* = proc()
proc miqt_exec_callback_QFutureWatcherBase_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBasefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasefinishedSlot) =
  var tmp = new QFutureWatcherBasefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_finished(self.h, cast[int](addr tmp[]))

proc canceled*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_canceled(self.h)

type QFutureWatcherBasecanceledSlot* = proc()
proc miqt_exec_callback_QFutureWatcherBase_canceled(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBasecanceledSlot](cast[pointer](slot))
  nimfunc[]()

proc oncanceled*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasecanceledSlot) =
  var tmp = new QFutureWatcherBasecanceledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_canceled(self.h, cast[int](addr tmp[]))

proc paused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_paused(self.h)

type QFutureWatcherBasepausedSlot* = proc()
proc miqt_exec_callback_QFutureWatcherBase_paused(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBasepausedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBasepausedSlot) =
  var tmp = new QFutureWatcherBasepausedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_paused(self.h, cast[int](addr tmp[]))

proc resumed*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_resumed(self.h)

type QFutureWatcherBaseresumedSlot* = proc()
proc miqt_exec_callback_QFutureWatcherBase_resumed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBaseresumedSlot](cast[pointer](slot))
  nimfunc[]()

proc onresumed*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseresumedSlot) =
  var tmp = new QFutureWatcherBaseresumedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_resumed(self.h, cast[int](addr tmp[]))

proc resultReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, resultIndex: cint): void =
  fcQFutureWatcherBase_resultReadyAt(self.h, resultIndex)

type QFutureWatcherBaseresultReadyAtSlot* = proc(resultIndex: cint)
proc miqt_exec_callback_QFutureWatcherBase_resultReadyAt(slot: int, resultIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBaseresultReadyAtSlot](cast[pointer](slot))
  let slotval1 = resultIndex

  nimfunc[](slotval1)

proc onresultReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseresultReadyAtSlot) =
  var tmp = new QFutureWatcherBaseresultReadyAtSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_resultReadyAt(self.h, cast[int](addr tmp[]))

proc resultsReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, beginIndex: cint, endIndex: cint): void =
  fcQFutureWatcherBase_resultsReadyAt(self.h, beginIndex, endIndex)

type QFutureWatcherBaseresultsReadyAtSlot* = proc(beginIndex: cint, endIndex: cint)
proc miqt_exec_callback_QFutureWatcherBase_resultsReadyAt(slot: int, beginIndex: cint, endIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBaseresultsReadyAtSlot](cast[pointer](slot))
  let slotval1 = beginIndex

  let slotval2 = endIndex

  nimfunc[](slotval1, slotval2)

proc onresultsReadyAt*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseresultsReadyAtSlot) =
  var tmp = new QFutureWatcherBaseresultsReadyAtSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_resultsReadyAt(self.h, cast[int](addr tmp[]))

proc progressRangeChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, minimum: cint, maximum: cint): void =
  fcQFutureWatcherBase_progressRangeChanged(self.h, minimum, maximum)

type QFutureWatcherBaseprogressRangeChangedSlot* = proc(minimum: cint, maximum: cint)
proc miqt_exec_callback_QFutureWatcherBase_progressRangeChanged(slot: int, minimum: cint, maximum: cint) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBaseprogressRangeChangedSlot](cast[pointer](slot))
  let slotval1 = minimum

  let slotval2 = maximum

  nimfunc[](slotval1, slotval2)

proc onprogressRangeChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseprogressRangeChangedSlot) =
  var tmp = new QFutureWatcherBaseprogressRangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_progressRangeChanged(self.h, cast[int](addr tmp[]))

proc progressValueChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, progressValue: cint): void =
  fcQFutureWatcherBase_progressValueChanged(self.h, progressValue)

type QFutureWatcherBaseprogressValueChangedSlot* = proc(progressValue: cint)
proc miqt_exec_callback_QFutureWatcherBase_progressValueChanged(slot: int, progressValue: cint) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBaseprogressValueChangedSlot](cast[pointer](slot))
  let slotval1 = progressValue

  nimfunc[](slotval1)

proc onprogressValueChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseprogressValueChangedSlot) =
  var tmp = new QFutureWatcherBaseprogressValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_progressValueChanged(self.h, cast[int](addr tmp[]))

proc progressTextChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, progressText: string): void =
  fcQFutureWatcherBase_progressTextChanged(self.h, struct_miqt_string(data: progressText, len: csize_t(len(progressText))))

type QFutureWatcherBaseprogressTextChangedSlot* = proc(progressText: string)
proc miqt_exec_callback_QFutureWatcherBase_progressTextChanged(slot: int, progressText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QFutureWatcherBaseprogressTextChangedSlot](cast[pointer](slot))
  let vprogressText_ms = progressText
  let vprogressTextx_ret = string.fromBytes(toOpenArrayByte(vprogressText_ms.data, 0, int(vprogressText_ms.len)-1))
  c_free(vprogressText_ms.data)
  let slotval1 = vprogressTextx_ret

  nimfunc[](slotval1)

proc onprogressTextChanged*(self: gen_qfuturewatcher_types.QFutureWatcherBase, slot: QFutureWatcherBaseprogressTextChangedSlot) =
  var tmp = new QFutureWatcherBaseprogressTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFutureWatcherBase_connect_progressTextChanged(self.h, cast[int](addr tmp[]))

proc cancel*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_cancel(self.h)

proc setPaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, paused: bool): void =
  fcQFutureWatcherBase_setPaused(self.h, paused)

proc pause*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_pause(self.h)

proc resume*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_resume(self.h)

proc togglePaused*(self: gen_qfuturewatcher_types.QFutureWatcherBase, ): void =
  fcQFutureWatcherBase_togglePaused(self.h)

proc tr*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring, c: cstring): string =
  let v_ms = fcQFutureWatcherBase_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFutureWatcherBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring, c: cstring): string =
  let v_ms = fcQFutureWatcherBase_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfuturewatcher_types.QFutureWatcherBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFutureWatcherBase_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qfuturewatcher_types.QFutureWatcherBase) =
  fcQFutureWatcherBase_delete(self.h)
