import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore")  & " -fPIC"
{.compile("gen_qwebenginedownloadrequest.cpp", cflags).}


type QWebEngineDownloadRequestDownloadStateEnum* = distinct cint
template DownloadRequested*(_: type QWebEngineDownloadRequestDownloadStateEnum): untyped = 0
template DownloadInProgress*(_: type QWebEngineDownloadRequestDownloadStateEnum): untyped = 1
template DownloadCompleted*(_: type QWebEngineDownloadRequestDownloadStateEnum): untyped = 2
template DownloadCancelled*(_: type QWebEngineDownloadRequestDownloadStateEnum): untyped = 3
template DownloadInterrupted*(_: type QWebEngineDownloadRequestDownloadStateEnum): untyped = 4


type QWebEngineDownloadRequestSavePageFormatEnum* = distinct cint
template UnknownSaveFormat*(_: type QWebEngineDownloadRequestSavePageFormatEnum): untyped = -1
template SingleHtmlSaveFormat*(_: type QWebEngineDownloadRequestSavePageFormatEnum): untyped = 0
template CompleteHtmlSaveFormat*(_: type QWebEngineDownloadRequestSavePageFormatEnum): untyped = 1
template MimeHtmlSaveFormat*(_: type QWebEngineDownloadRequestSavePageFormatEnum): untyped = 2


type QWebEngineDownloadRequestDownloadInterruptReasonEnum* = distinct cint
template NoReason*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 0
template FileFailed*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 1
template FileAccessDenied*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 2
template FileNoSpace*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 3
template FileNameTooLong*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 5
template FileTooLarge*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 6
template FileVirusInfected*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 7
template FileTransientError*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 10
template FileBlocked*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 11
template FileSecurityCheckFailed*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 12
template FileTooShort*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 13
template FileHashMismatch*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 14
template NetworkFailed*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 20
template NetworkTimeout*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 21
template NetworkDisconnected*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 22
template NetworkServerDown*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 23
template NetworkInvalidRequest*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 24
template ServerFailed*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 30
template ServerBadContent*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 33
template ServerUnauthorized*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 34
template ServerCertProblem*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 35
template ServerForbidden*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 36
template ServerUnreachable*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 37
template UserCanceled*(_: type QWebEngineDownloadRequestDownloadInterruptReasonEnum): untyped = 40


import ./gen_qwebenginedownloadrequest_types
export gen_qwebenginedownloadrequest_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qwebenginepage_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qwebenginepage_types

type cQWebEngineDownloadRequest*{.exportc: "QWebEngineDownloadRequest", incompleteStruct.} = object

proc fcQWebEngineDownloadRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineDownloadRequest_metaObject".}
proc fcQWebEngineDownloadRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineDownloadRequest_metacast".}
proc fcQWebEngineDownloadRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineDownloadRequest_metacall".}
proc fcQWebEngineDownloadRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineDownloadRequest_tr".}
proc fcQWebEngineDownloadRequest_id(self: pointer, ): cuint {.importc: "QWebEngineDownloadRequest_id".}
proc fcQWebEngineDownloadRequest_state(self: pointer, ): cint {.importc: "QWebEngineDownloadRequest_state".}
proc fcQWebEngineDownloadRequest_totalBytes(self: pointer, ): clonglong {.importc: "QWebEngineDownloadRequest_totalBytes".}
proc fcQWebEngineDownloadRequest_receivedBytes(self: pointer, ): clonglong {.importc: "QWebEngineDownloadRequest_receivedBytes".}
proc fcQWebEngineDownloadRequest_url(self: pointer, ): pointer {.importc: "QWebEngineDownloadRequest_url".}
proc fcQWebEngineDownloadRequest_mimeType(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_mimeType".}
proc fcQWebEngineDownloadRequest_isFinished(self: pointer, ): bool {.importc: "QWebEngineDownloadRequest_isFinished".}
proc fcQWebEngineDownloadRequest_isPaused(self: pointer, ): bool {.importc: "QWebEngineDownloadRequest_isPaused".}
proc fcQWebEngineDownloadRequest_savePageFormat(self: pointer, ): cint {.importc: "QWebEngineDownloadRequest_savePageFormat".}
proc fcQWebEngineDownloadRequest_setSavePageFormat(self: pointer, format: cint): void {.importc: "QWebEngineDownloadRequest_setSavePageFormat".}
proc fcQWebEngineDownloadRequest_interruptReason(self: pointer, ): cint {.importc: "QWebEngineDownloadRequest_interruptReason".}
proc fcQWebEngineDownloadRequest_interruptReasonString(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_interruptReasonString".}
proc fcQWebEngineDownloadRequest_isSavePageDownload(self: pointer, ): bool {.importc: "QWebEngineDownloadRequest_isSavePageDownload".}
proc fcQWebEngineDownloadRequest_suggestedFileName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_suggestedFileName".}
proc fcQWebEngineDownloadRequest_downloadDirectory(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_downloadDirectory".}
proc fcQWebEngineDownloadRequest_setDownloadDirectory(self: pointer, directory: struct_miqt_string): void {.importc: "QWebEngineDownloadRequest_setDownloadDirectory".}
proc fcQWebEngineDownloadRequest_downloadFileName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineDownloadRequest_downloadFileName".}
proc fcQWebEngineDownloadRequest_setDownloadFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QWebEngineDownloadRequest_setDownloadFileName".}
proc fcQWebEngineDownloadRequest_page(self: pointer, ): pointer {.importc: "QWebEngineDownloadRequest_page".}
proc fcQWebEngineDownloadRequest_accept(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_accept".}
proc fcQWebEngineDownloadRequest_cancel(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_cancel".}
proc fcQWebEngineDownloadRequest_pause(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_pause".}
proc fcQWebEngineDownloadRequest_resume(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_resume".}
proc fcQWebEngineDownloadRequest_stateChanged(self: pointer, state: cint): void {.importc: "QWebEngineDownloadRequest_stateChanged".}
proc fcQWebEngineDownloadRequest_connect_stateChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_stateChanged".}
proc fcQWebEngineDownloadRequest_savePageFormatChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_savePageFormatChanged".}
proc fcQWebEngineDownloadRequest_connect_savePageFormatChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_savePageFormatChanged".}
proc fcQWebEngineDownloadRequest_receivedBytesChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_receivedBytesChanged".}
proc fcQWebEngineDownloadRequest_connect_receivedBytesChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_receivedBytesChanged".}
proc fcQWebEngineDownloadRequest_totalBytesChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_totalBytesChanged".}
proc fcQWebEngineDownloadRequest_connect_totalBytesChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_totalBytesChanged".}
proc fcQWebEngineDownloadRequest_interruptReasonChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_interruptReasonChanged".}
proc fcQWebEngineDownloadRequest_connect_interruptReasonChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_interruptReasonChanged".}
proc fcQWebEngineDownloadRequest_isFinishedChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_isFinishedChanged".}
proc fcQWebEngineDownloadRequest_connect_isFinishedChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_isFinishedChanged".}
proc fcQWebEngineDownloadRequest_isPausedChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_isPausedChanged".}
proc fcQWebEngineDownloadRequest_connect_isPausedChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_isPausedChanged".}
proc fcQWebEngineDownloadRequest_downloadDirectoryChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_downloadDirectoryChanged".}
proc fcQWebEngineDownloadRequest_connect_downloadDirectoryChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_downloadDirectoryChanged".}
proc fcQWebEngineDownloadRequest_downloadFileNameChanged(self: pointer, ): void {.importc: "QWebEngineDownloadRequest_downloadFileNameChanged".}
proc fcQWebEngineDownloadRequest_connect_downloadFileNameChanged(self: pointer, slot: int) {.importc: "QWebEngineDownloadRequest_connect_downloadFileNameChanged".}
proc fcQWebEngineDownloadRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineDownloadRequest_tr2".}
proc fcQWebEngineDownloadRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineDownloadRequest_tr3".}
proc fcQWebEngineDownloadRequest_staticMetaObject(): pointer {.importc: "QWebEngineDownloadRequest_staticMetaObject".}
proc fcQWebEngineDownloadRequest_delete(self: pointer) {.importc: "QWebEngineDownloadRequest_delete".}

proc metaObject*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineDownloadRequest_metaObject(self.h))

proc metacast*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, param1: cstring): pointer =
  fcQWebEngineDownloadRequest_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineDownloadRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, s: cstring): string =
  let v_ms = fcQWebEngineDownloadRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc id*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): cuint =
  fcQWebEngineDownloadRequest_id(self.h)

proc state*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): cint =
  cint(fcQWebEngineDownloadRequest_state(self.h))

proc totalBytes*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): clonglong =
  fcQWebEngineDownloadRequest_totalBytes(self.h)

proc receivedBytes*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): clonglong =
  fcQWebEngineDownloadRequest_receivedBytes(self.h)

proc url*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineDownloadRequest_url(self.h))

proc mimeType*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): string =
  let v_ms = fcQWebEngineDownloadRequest_mimeType(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): bool =
  fcQWebEngineDownloadRequest_isFinished(self.h)

proc isPaused*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): bool =
  fcQWebEngineDownloadRequest_isPaused(self.h)

proc savePageFormat*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): cint =
  cint(fcQWebEngineDownloadRequest_savePageFormat(self.h))

proc setSavePageFormat*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, format: cint): void =
  fcQWebEngineDownloadRequest_setSavePageFormat(self.h, cint(format))

proc interruptReason*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): cint =
  cint(fcQWebEngineDownloadRequest_interruptReason(self.h))

proc interruptReasonString*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): string =
  let v_ms = fcQWebEngineDownloadRequest_interruptReasonString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSavePageDownload*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): bool =
  fcQWebEngineDownloadRequest_isSavePageDownload(self.h)

proc suggestedFileName*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): string =
  let v_ms = fcQWebEngineDownloadRequest_suggestedFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc downloadDirectory*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): string =
  let v_ms = fcQWebEngineDownloadRequest_downloadDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadDirectory*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, directory: string): void =
  fcQWebEngineDownloadRequest_setDownloadDirectory(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc downloadFileName*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): string =
  let v_ms = fcQWebEngineDownloadRequest_downloadFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadFileName*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, fileName: string): void =
  fcQWebEngineDownloadRequest_setDownloadFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc page*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): gen_qwebenginepage_types.QWebEnginePage =
  gen_qwebenginepage_types.QWebEnginePage(h: fcQWebEngineDownloadRequest_page(self.h))

proc accept*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_accept(self.h)

proc cancel*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_cancel(self.h)

proc pause*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_pause(self.h)

proc resume*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_resume(self.h)

proc stateChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, state: cint): void =
  fcQWebEngineDownloadRequest_stateChanged(self.h, cint(state))

type QWebEngineDownloadRequeststateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQWebEngineDownloadRequest_stateChanged(slot: int, state: cint) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_stateChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequeststateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequeststateChangedSlot) =
  var tmp = new QWebEngineDownloadRequeststateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc savePageFormatChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_savePageFormatChanged(self.h)

type QWebEngineDownloadRequestsavePageFormatChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_savePageFormatChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_savePageFormatChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestsavePageFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsavePageFormatChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestsavePageFormatChangedSlot) =
  var tmp = new QWebEngineDownloadRequestsavePageFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_savePageFormatChanged(self.h, cast[int](addr tmp[]))

proc receivedBytesChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_receivedBytesChanged(self.h)

type QWebEngineDownloadRequestreceivedBytesChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_receivedBytesChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_receivedBytesChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestreceivedBytesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onreceivedBytesChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestreceivedBytesChangedSlot) =
  var tmp = new QWebEngineDownloadRequestreceivedBytesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_receivedBytesChanged(self.h, cast[int](addr tmp[]))

proc totalBytesChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_totalBytesChanged(self.h)

type QWebEngineDownloadRequesttotalBytesChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_totalBytesChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_totalBytesChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequesttotalBytesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontotalBytesChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequesttotalBytesChangedSlot) =
  var tmp = new QWebEngineDownloadRequesttotalBytesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_totalBytesChanged(self.h, cast[int](addr tmp[]))

proc interruptReasonChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_interruptReasonChanged(self.h)

type QWebEngineDownloadRequestinterruptReasonChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_interruptReasonChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_interruptReasonChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestinterruptReasonChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oninterruptReasonChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestinterruptReasonChangedSlot) =
  var tmp = new QWebEngineDownloadRequestinterruptReasonChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_interruptReasonChanged(self.h, cast[int](addr tmp[]))

proc isFinishedChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_isFinishedChanged(self.h)

type QWebEngineDownloadRequestisFinishedChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_isFinishedChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_isFinishedChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestisFinishedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onisFinishedChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestisFinishedChangedSlot) =
  var tmp = new QWebEngineDownloadRequestisFinishedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_isFinishedChanged(self.h, cast[int](addr tmp[]))

proc isPausedChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_isPausedChanged(self.h)

type QWebEngineDownloadRequestisPausedChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_isPausedChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_isPausedChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestisPausedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onisPausedChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestisPausedChangedSlot) =
  var tmp = new QWebEngineDownloadRequestisPausedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_isPausedChanged(self.h, cast[int](addr tmp[]))

proc downloadDirectoryChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_downloadDirectoryChanged(self.h)

type QWebEngineDownloadRequestdownloadDirectoryChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_downloadDirectoryChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_downloadDirectoryChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestdownloadDirectoryChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondownloadDirectoryChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestdownloadDirectoryChangedSlot) =
  var tmp = new QWebEngineDownloadRequestdownloadDirectoryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_downloadDirectoryChanged(self.h, cast[int](addr tmp[]))

proc downloadFileNameChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, ): void =
  fcQWebEngineDownloadRequest_downloadFileNameChanged(self.h)

type QWebEngineDownloadRequestdownloadFileNameChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineDownloadRequest_downloadFileNameChanged(slot: int) {.exportc: "miqt_exec_callback_QWebEngineDownloadRequest_downloadFileNameChanged".} =
  let nimfunc = cast[ptr QWebEngineDownloadRequestdownloadFileNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondownloadFileNameChanged*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, slot: QWebEngineDownloadRequestdownloadFileNameChangedSlot) =
  var tmp = new QWebEngineDownloadRequestdownloadFileNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineDownloadRequest_connect_downloadFileNameChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineDownloadRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineDownloadRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineDownloadRequest_staticMetaObject())
proc delete*(self: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest) =
  fcQWebEngineDownloadRequest_delete(self.h)
