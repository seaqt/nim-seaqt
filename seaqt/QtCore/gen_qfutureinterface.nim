import ./Qt6Core_libs

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


type QFutureInterfaceBaseStateEnum* = distinct cint
template NoState*(_: type QFutureInterfaceBaseStateEnum): untyped = 0
template Running*(_: type QFutureInterfaceBaseStateEnum): untyped = 1
template Started*(_: type QFutureInterfaceBaseStateEnum): untyped = 2
template Finished*(_: type QFutureInterfaceBaseStateEnum): untyped = 4
template Canceled*(_: type QFutureInterfaceBaseStateEnum): untyped = 8
template Suspending*(_: type QFutureInterfaceBaseStateEnum): untyped = 16
template Suspended*(_: type QFutureInterfaceBaseStateEnum): untyped = 32
template Throttled*(_: type QFutureInterfaceBaseStateEnum): untyped = 64
template Pending*(_: type QFutureInterfaceBaseStateEnum): untyped = 128


type QFutureInterfaceBaseCancelModeEnum* = distinct cint
template CancelOnly*(_: type QFutureInterfaceBaseCancelModeEnum): untyped = 0
template CancelAndFinish*(_: type QFutureInterfaceBaseCancelModeEnum): untyped = 1


import ./gen_qfutureinterface_types
export gen_qfutureinterface_types

import
  ./gen_qmutex_types,
  ./gen_qrunnable_types,
  ./gen_qthreadpool_types
export
  gen_qmutex_types,
  gen_qrunnable_types,
  gen_qthreadpool_types

type cQFutureInterfaceBase*{.exportc: "QFutureInterfaceBase", incompleteStruct.} = object

proc fcQFutureInterfaceBase_operatorAssign(self: pointer, other: pointer): void {.importc: "QFutureInterfaceBase_operatorAssign".}
proc fcQFutureInterfaceBase_reportStarted(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportStarted".}
proc fcQFutureInterfaceBase_reportFinished(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportFinished".}
proc fcQFutureInterfaceBase_reportCanceled(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportCanceled".}
proc fcQFutureInterfaceBase_reportResultsReady(self: pointer, beginIndex: cint, endIndex: cint): void {.importc: "QFutureInterfaceBase_reportResultsReady".}
proc fcQFutureInterfaceBase_setRunnable(self: pointer, runnable: pointer): void {.importc: "QFutureInterfaceBase_setRunnable".}
proc fcQFutureInterfaceBase_setThreadPool(self: pointer, pool: pointer): void {.importc: "QFutureInterfaceBase_setThreadPool".}
proc fcQFutureInterfaceBase_threadPool(self: pointer, ): pointer {.importc: "QFutureInterfaceBase_threadPool".}
proc fcQFutureInterfaceBase_setFilterMode(self: pointer, enable: bool): void {.importc: "QFutureInterfaceBase_setFilterMode".}
proc fcQFutureInterfaceBase_setProgressRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QFutureInterfaceBase_setProgressRange".}
proc fcQFutureInterfaceBase_progressMinimum(self: pointer, ): cint {.importc: "QFutureInterfaceBase_progressMinimum".}
proc fcQFutureInterfaceBase_progressMaximum(self: pointer, ): cint {.importc: "QFutureInterfaceBase_progressMaximum".}
proc fcQFutureInterfaceBase_isProgressUpdateNeeded(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isProgressUpdateNeeded".}
proc fcQFutureInterfaceBase_setProgressValue(self: pointer, progressValue: cint): void {.importc: "QFutureInterfaceBase_setProgressValue".}
proc fcQFutureInterfaceBase_progressValue(self: pointer, ): cint {.importc: "QFutureInterfaceBase_progressValue".}
proc fcQFutureInterfaceBase_setProgressValueAndText(self: pointer, progressValue: cint, progressText: struct_miqt_string): void {.importc: "QFutureInterfaceBase_setProgressValueAndText".}
proc fcQFutureInterfaceBase_progressText(self: pointer, ): struct_miqt_string {.importc: "QFutureInterfaceBase_progressText".}
proc fcQFutureInterfaceBase_setExpectedResultCount(self: pointer, resultCount: cint): void {.importc: "QFutureInterfaceBase_setExpectedResultCount".}
proc fcQFutureInterfaceBase_expectedResultCount(self: pointer, ): cint {.importc: "QFutureInterfaceBase_expectedResultCount".}
proc fcQFutureInterfaceBase_resultCount(self: pointer, ): cint {.importc: "QFutureInterfaceBase_resultCount".}
proc fcQFutureInterfaceBase_queryState(self: pointer, state: cint): bool {.importc: "QFutureInterfaceBase_queryState".}
proc fcQFutureInterfaceBase_isRunning(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isRunning".}
proc fcQFutureInterfaceBase_isStarted(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isStarted".}
proc fcQFutureInterfaceBase_isCanceled(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isCanceled".}
proc fcQFutureInterfaceBase_isFinished(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isFinished".}
proc fcQFutureInterfaceBase_isPaused(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isPaused".}
proc fcQFutureInterfaceBase_setPaused(self: pointer, paused: bool): void {.importc: "QFutureInterfaceBase_setPaused".}
proc fcQFutureInterfaceBase_togglePaused(self: pointer, ): void {.importc: "QFutureInterfaceBase_togglePaused".}
proc fcQFutureInterfaceBase_isSuspending(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isSuspending".}
proc fcQFutureInterfaceBase_isSuspended(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isSuspended".}
proc fcQFutureInterfaceBase_isThrottled(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isThrottled".}
proc fcQFutureInterfaceBase_isResultReadyAt(self: pointer, index: cint): bool {.importc: "QFutureInterfaceBase_isResultReadyAt".}
proc fcQFutureInterfaceBase_isValid(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isValid".}
proc fcQFutureInterfaceBase_loadState(self: pointer, ): cint {.importc: "QFutureInterfaceBase_loadState".}
proc fcQFutureInterfaceBase_cancel(self: pointer, ): void {.importc: "QFutureInterfaceBase_cancel".}
proc fcQFutureInterfaceBase_cancelAndFinish(self: pointer, ): void {.importc: "QFutureInterfaceBase_cancelAndFinish".}
proc fcQFutureInterfaceBase_setSuspended(self: pointer, suspend: bool): void {.importc: "QFutureInterfaceBase_setSuspended".}
proc fcQFutureInterfaceBase_toggleSuspended(self: pointer, ): void {.importc: "QFutureInterfaceBase_toggleSuspended".}
proc fcQFutureInterfaceBase_reportSuspended(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportSuspended".}
proc fcQFutureInterfaceBase_setThrottled(self: pointer, enable: bool): void {.importc: "QFutureInterfaceBase_setThrottled".}
proc fcQFutureInterfaceBase_waitForFinished(self: pointer, ): void {.importc: "QFutureInterfaceBase_waitForFinished".}
proc fcQFutureInterfaceBase_waitForNextResult(self: pointer, ): bool {.importc: "QFutureInterfaceBase_waitForNextResult".}
proc fcQFutureInterfaceBase_waitForResult(self: pointer, resultIndex: cint): void {.importc: "QFutureInterfaceBase_waitForResult".}
proc fcQFutureInterfaceBase_waitForResume(self: pointer, ): void {.importc: "QFutureInterfaceBase_waitForResume".}
proc fcQFutureInterfaceBase_suspendIfRequested(self: pointer, ): void {.importc: "QFutureInterfaceBase_suspendIfRequested".}
proc fcQFutureInterfaceBase_mutex(self: pointer, ): pointer {.importc: "QFutureInterfaceBase_mutex".}
proc fcQFutureInterfaceBase_hasException(self: pointer, ): bool {.importc: "QFutureInterfaceBase_hasException".}
proc fcQFutureInterfaceBase_operatorEqual(self: pointer, other: pointer): bool {.importc: "QFutureInterfaceBase_operatorEqual".}
proc fcQFutureInterfaceBase_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QFutureInterfaceBase_operatorNotEqual".}
proc fcQFutureInterfaceBase_swap(self: pointer, other: pointer): void {.importc: "QFutureInterfaceBase_swap".}
proc fcQFutureInterfaceBase_isChainCanceled(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isChainCanceled".}
proc fcQFutureInterfaceBase_protectedbase_refT(self: pointer, ): bool {.importc: "QFutureInterfaceBase_protectedbase_refT".}
proc fcQFutureInterfaceBase_protectedbase_derefT(self: pointer, ): bool {.importc: "QFutureInterfaceBase_protectedbase_derefT".}
proc fcQFutureInterfaceBase_protectedbase_reset(self: pointer, ): void {.importc: "QFutureInterfaceBase_protectedbase_reset".}
proc fcQFutureInterfaceBase_protectedbase_rethrowPossibleException(self: pointer, ): void {.importc: "QFutureInterfaceBase_protectedbase_rethrowPossibleException".}
proc fcQFutureInterfaceBase_protectedbase_cleanContinuation(self: pointer, ): void {.importc: "QFutureInterfaceBase_protectedbase_cleanContinuation".}
proc fcQFutureInterfaceBase_protectedbase_runContinuation(self: pointer, ): void {.importc: "QFutureInterfaceBase_protectedbase_runContinuation".}
proc fcQFutureInterfaceBase_protectedbase_setLaunchAsync(self: pointer, value: bool): void {.importc: "QFutureInterfaceBase_protectedbase_setLaunchAsync".}
proc fcQFutureInterfaceBase_protectedbase_launchAsync(self: pointer, ): bool {.importc: "QFutureInterfaceBase_protectedbase_launchAsync".}
proc fcQFutureInterfaceBase_protectedbase_isRunningOrPending(self: pointer, ): bool {.importc: "QFutureInterfaceBase_protectedbase_isRunningOrPending".}
proc fcQFutureInterfaceBase_protectedbase_cancelWithMode(self: pointer, mode: cint): void {.importc: "QFutureInterfaceBase_protectedbase_cancelWithMode".}
proc fcQFutureInterfaceBase_new(): ptr cQFutureInterfaceBase {.importc: "QFutureInterfaceBase_new".}
proc fcQFutureInterfaceBase_new2(other: pointer): ptr cQFutureInterfaceBase {.importc: "QFutureInterfaceBase_new2".}
proc fcQFutureInterfaceBase_new3(initialState: cint): ptr cQFutureInterfaceBase {.importc: "QFutureInterfaceBase_new3".}

proc operatorAssign*(self: gen_qfutureinterface_types.QFutureInterfaceBase, other: gen_qfutureinterface_types.QFutureInterfaceBase): void =
  fcQFutureInterfaceBase_operatorAssign(self.h, other.h)

proc reportStarted*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_reportStarted(self.h)

proc reportFinished*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_reportFinished(self.h)

proc reportCanceled*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_reportCanceled(self.h)

proc reportResultsReady*(self: gen_qfutureinterface_types.QFutureInterfaceBase, beginIndex: cint, endIndex: cint): void =
  fcQFutureInterfaceBase_reportResultsReady(self.h, beginIndex, endIndex)

proc setRunnable*(self: gen_qfutureinterface_types.QFutureInterfaceBase, runnable: gen_qrunnable_types.QRunnable): void =
  fcQFutureInterfaceBase_setRunnable(self.h, runnable.h)

proc setThreadPool*(self: gen_qfutureinterface_types.QFutureInterfaceBase, pool: gen_qthreadpool_types.QThreadPool): void =
  fcQFutureInterfaceBase_setThreadPool(self.h, pool.h)

proc threadPool*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): gen_qthreadpool_types.QThreadPool =
  gen_qthreadpool_types.QThreadPool(h: fcQFutureInterfaceBase_threadPool(self.h), owned: false)

proc setFilterMode*(self: gen_qfutureinterface_types.QFutureInterfaceBase, enable: bool): void =
  fcQFutureInterfaceBase_setFilterMode(self.h, enable)

proc setProgressRange*(self: gen_qfutureinterface_types.QFutureInterfaceBase, minimum: cint, maximum: cint): void =
  fcQFutureInterfaceBase_setProgressRange(self.h, minimum, maximum)

proc progressMinimum*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): cint =
  fcQFutureInterfaceBase_progressMinimum(self.h)

proc progressMaximum*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): cint =
  fcQFutureInterfaceBase_progressMaximum(self.h)

proc isProgressUpdateNeeded*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isProgressUpdateNeeded(self.h)

proc setProgressValue*(self: gen_qfutureinterface_types.QFutureInterfaceBase, progressValue: cint): void =
  fcQFutureInterfaceBase_setProgressValue(self.h, progressValue)

proc progressValue*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): cint =
  fcQFutureInterfaceBase_progressValue(self.h)

proc setProgressValueAndText*(self: gen_qfutureinterface_types.QFutureInterfaceBase, progressValue: cint, progressText: string): void =
  fcQFutureInterfaceBase_setProgressValueAndText(self.h, progressValue, struct_miqt_string(data: progressText, len: csize_t(len(progressText))))

proc progressText*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): string =
  let v_ms = fcQFutureInterfaceBase_progressText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExpectedResultCount*(self: gen_qfutureinterface_types.QFutureInterfaceBase, resultCount: cint): void =
  fcQFutureInterfaceBase_setExpectedResultCount(self.h, resultCount)

proc expectedResultCount*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): cint =
  fcQFutureInterfaceBase_expectedResultCount(self.h)

proc resultCount*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): cint =
  fcQFutureInterfaceBase_resultCount(self.h)

proc queryState*(self: gen_qfutureinterface_types.QFutureInterfaceBase, state: cint): bool =
  fcQFutureInterfaceBase_queryState(self.h, cint(state))

proc isRunning*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isRunning(self.h)

proc isStarted*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isStarted(self.h)

proc isCanceled*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isCanceled(self.h)

proc isFinished*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isFinished(self.h)

proc isPaused*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isPaused(self.h)

proc setPaused*(self: gen_qfutureinterface_types.QFutureInterfaceBase, paused: bool): void =
  fcQFutureInterfaceBase_setPaused(self.h, paused)

proc togglePaused*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_togglePaused(self.h)

proc isSuspending*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isSuspending(self.h)

proc isSuspended*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isSuspended(self.h)

proc isThrottled*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isThrottled(self.h)

proc isResultReadyAt*(self: gen_qfutureinterface_types.QFutureInterfaceBase, index: cint): bool =
  fcQFutureInterfaceBase_isResultReadyAt(self.h, index)

proc isValid*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isValid(self.h)

proc loadState*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): cint =
  fcQFutureInterfaceBase_loadState(self.h)

proc cancel*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_cancel(self.h)

proc cancelAndFinish*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_cancelAndFinish(self.h)

proc setSuspended*(self: gen_qfutureinterface_types.QFutureInterfaceBase, suspend: bool): void =
  fcQFutureInterfaceBase_setSuspended(self.h, suspend)

proc toggleSuspended*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_toggleSuspended(self.h)

proc reportSuspended*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_reportSuspended(self.h)

proc setThrottled*(self: gen_qfutureinterface_types.QFutureInterfaceBase, enable: bool): void =
  fcQFutureInterfaceBase_setThrottled(self.h, enable)

proc waitForFinished*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_waitForFinished(self.h)

proc waitForNextResult*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_waitForNextResult(self.h)

proc waitForResult*(self: gen_qfutureinterface_types.QFutureInterfaceBase, resultIndex: cint): void =
  fcQFutureInterfaceBase_waitForResult(self.h, resultIndex)

proc waitForResume*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_waitForResume(self.h)

proc suspendIfRequested*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_suspendIfRequested(self.h)

proc mutex*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): gen_qmutex_types.QMutex =
  gen_qmutex_types.QMutex(h: fcQFutureInterfaceBase_mutex(self.h), owned: false)

proc hasException*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_hasException(self.h)

proc operatorEqual*(self: gen_qfutureinterface_types.QFutureInterfaceBase, other: gen_qfutureinterface_types.QFutureInterfaceBase): bool =
  fcQFutureInterfaceBase_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qfutureinterface_types.QFutureInterfaceBase, other: gen_qfutureinterface_types.QFutureInterfaceBase): bool =
  fcQFutureInterfaceBase_operatorNotEqual(self.h, other.h)

proc swap*(self: gen_qfutureinterface_types.QFutureInterfaceBase, other: gen_qfutureinterface_types.QFutureInterfaceBase): void =
  fcQFutureInterfaceBase_swap(self.h, other.h)

proc isChainCanceled*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_isChainCanceled(self.h)

proc refT*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_protectedbase_refT(self.h)

proc derefT*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_protectedbase_derefT(self.h)

proc reset*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_protectedbase_reset(self.h)

proc rethrowPossibleException*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_protectedbase_rethrowPossibleException(self.h)

proc cleanContinuation*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_protectedbase_cleanContinuation(self.h)

proc runContinuation*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): void =
  fcQFutureInterfaceBase_protectedbase_runContinuation(self.h)

proc setLaunchAsync*(self: gen_qfutureinterface_types.QFutureInterfaceBase, value: bool): void =
  fcQFutureInterfaceBase_protectedbase_setLaunchAsync(self.h, value)

proc launchAsync*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_protectedbase_launchAsync(self.h)

proc isRunningOrPending*(self: gen_qfutureinterface_types.QFutureInterfaceBase, ): bool =
  fcQFutureInterfaceBase_protectedbase_isRunningOrPending(self.h)

proc cancel*(self: gen_qfutureinterface_types.QFutureInterfaceBase, mode: cint): void =
  fcQFutureInterfaceBase_protectedbase_cancelWithMode(self.h, cint(mode))

proc create*(T: type gen_qfutureinterface_types.QFutureInterfaceBase): gen_qfutureinterface_types.QFutureInterfaceBase =
  gen_qfutureinterface_types.QFutureInterfaceBase(h: fcQFutureInterfaceBase_new(), owned: true)

proc create*(T: type gen_qfutureinterface_types.QFutureInterfaceBase,
    other: gen_qfutureinterface_types.QFutureInterfaceBase): gen_qfutureinterface_types.QFutureInterfaceBase =
  gen_qfutureinterface_types.QFutureInterfaceBase(h: fcQFutureInterfaceBase_new2(other.h), owned: true)

proc create*(T: type gen_qfutureinterface_types.QFutureInterfaceBase,
    initialState: cint): gen_qfutureinterface_types.QFutureInterfaceBase =
  gen_qfutureinterface_types.QFutureInterfaceBase(h: fcQFutureInterfaceBase_new3(cint(initialState)), owned: true)

