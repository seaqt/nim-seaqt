import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qnetworkreply.cpp", cflags).}


type QNetworkReplyNetworkErrorEnum* = distinct cint
template NoError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 0
template ConnectionRefusedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 1
template RemoteHostClosedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 2
template HostNotFoundError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 3
template TimeoutError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 4
template OperationCanceledError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 5
template SslHandshakeFailedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 6
template TemporaryNetworkFailureError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 7
template NetworkSessionFailedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 8
template BackgroundRequestNotAllowedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 9
template TooManyRedirectsError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 10
template InsecureRedirectError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 11
template UnknownNetworkError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 99
template ProxyConnectionRefusedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 101
template ProxyConnectionClosedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 102
template ProxyNotFoundError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 103
template ProxyTimeoutError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 104
template ProxyAuthenticationRequiredError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 105
template UnknownProxyError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 199
template ContentAccessDenied*(_: type QNetworkReplyNetworkErrorEnum): untyped = 201
template ContentOperationNotPermittedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 202
template ContentNotFoundError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 203
template AuthenticationRequiredError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 204
template ContentReSendError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 205
template ContentConflictError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 206
template ContentGoneError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 207
template UnknownContentError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 299
template ProtocolUnknownError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 301
template ProtocolInvalidOperationError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 302
template ProtocolFailure*(_: type QNetworkReplyNetworkErrorEnum): untyped = 399
template InternalServerError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 401
template OperationNotImplementedError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 402
template ServiceUnavailableError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 403
template UnknownServerError*(_: type QNetworkReplyNetworkErrorEnum): untyped = 499


import ./gen_qnetworkreply_types
export gen_qnetworkreply_types

import
  ../QtCore/gen_qiodevice,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qnetworkaccessmanager_types,
  ./gen_qnetworkrequest_types,
  ./gen_qsslconfiguration_types,
  ./gen_qsslerror_types,
  ./gen_qsslpresharedkeyauthenticator_types
export
  gen_qiodevice,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qnetworkaccessmanager_types,
  gen_qnetworkrequest_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types

type cQNetworkReply*{.exportc: "QNetworkReply", incompleteStruct.} = object

proc fcQNetworkReply_metaObject(self: pointer, ): pointer {.importc: "QNetworkReply_metaObject".}
proc fcQNetworkReply_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkReply_metacast".}
proc fcQNetworkReply_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkReply_metacall".}
proc fcQNetworkReply_tr(s: cstring): struct_miqt_string {.importc: "QNetworkReply_tr".}
proc fcQNetworkReply_close(self: pointer, ): void {.importc: "QNetworkReply_close".}
proc fcQNetworkReply_isSequential(self: pointer, ): bool {.importc: "QNetworkReply_isSequential".}
proc fcQNetworkReply_readBufferSize(self: pointer, ): clonglong {.importc: "QNetworkReply_readBufferSize".}
proc fcQNetworkReply_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QNetworkReply_setReadBufferSize".}
proc fcQNetworkReply_manager(self: pointer, ): pointer {.importc: "QNetworkReply_manager".}
proc fcQNetworkReply_operation(self: pointer, ): cint {.importc: "QNetworkReply_operation".}
proc fcQNetworkReply_request(self: pointer, ): pointer {.importc: "QNetworkReply_request".}
proc fcQNetworkReply_error(self: pointer, ): cint {.importc: "QNetworkReply_error".}
proc fcQNetworkReply_isFinished(self: pointer, ): bool {.importc: "QNetworkReply_isFinished".}
proc fcQNetworkReply_isRunning(self: pointer, ): bool {.importc: "QNetworkReply_isRunning".}
proc fcQNetworkReply_url(self: pointer, ): pointer {.importc: "QNetworkReply_url".}
proc fcQNetworkReply_header(self: pointer, header: cint): pointer {.importc: "QNetworkReply_header".}
proc fcQNetworkReply_hasRawHeader(self: pointer, headerName: struct_miqt_string): bool {.importc: "QNetworkReply_hasRawHeader".}
proc fcQNetworkReply_rawHeaderList(self: pointer, ): struct_miqt_array {.importc: "QNetworkReply_rawHeaderList".}
proc fcQNetworkReply_rawHeader(self: pointer, headerName: struct_miqt_string): struct_miqt_string {.importc: "QNetworkReply_rawHeader".}
proc fcQNetworkReply_rawHeaderPairs(self: pointer, ): struct_miqt_array {.importc: "QNetworkReply_rawHeaderPairs".}
proc fcQNetworkReply_attribute(self: pointer, code: cint): pointer {.importc: "QNetworkReply_attribute".}
proc fcQNetworkReply_sslConfiguration(self: pointer, ): pointer {.importc: "QNetworkReply_sslConfiguration".}
proc fcQNetworkReply_setSslConfiguration(self: pointer, configuration: pointer): void {.importc: "QNetworkReply_setSslConfiguration".}
proc fcQNetworkReply_ignoreSslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QNetworkReply_ignoreSslErrors".}
proc fcQNetworkReply_abort(self: pointer, ): void {.importc: "QNetworkReply_abort".}
proc fcQNetworkReply_ignoreSslErrors2(self: pointer, ): void {.importc: "QNetworkReply_ignoreSslErrors2".}
proc fcQNetworkReply_socketStartedConnecting(self: pointer, ): void {.importc: "QNetworkReply_socketStartedConnecting".}
proc fcQNetworkReply_connect_socketStartedConnecting(self: pointer, slot: int) {.importc: "QNetworkReply_connect_socketStartedConnecting".}
proc fcQNetworkReply_requestSent(self: pointer, ): void {.importc: "QNetworkReply_requestSent".}
proc fcQNetworkReply_connect_requestSent(self: pointer, slot: int) {.importc: "QNetworkReply_connect_requestSent".}
proc fcQNetworkReply_metaDataChanged(self: pointer, ): void {.importc: "QNetworkReply_metaDataChanged".}
proc fcQNetworkReply_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QNetworkReply_connect_metaDataChanged".}
proc fcQNetworkReply_finished(self: pointer, ): void {.importc: "QNetworkReply_finished".}
proc fcQNetworkReply_connect_finished(self: pointer, slot: int) {.importc: "QNetworkReply_connect_finished".}
proc fcQNetworkReply_errorOccurred(self: pointer, param1: cint): void {.importc: "QNetworkReply_errorOccurred".}
proc fcQNetworkReply_connect_errorOccurred(self: pointer, slot: int) {.importc: "QNetworkReply_connect_errorOccurred".}
proc fcQNetworkReply_encrypted(self: pointer, ): void {.importc: "QNetworkReply_encrypted".}
proc fcQNetworkReply_connect_encrypted(self: pointer, slot: int) {.importc: "QNetworkReply_connect_encrypted".}
proc fcQNetworkReply_sslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QNetworkReply_sslErrors".}
proc fcQNetworkReply_connect_sslErrors(self: pointer, slot: int) {.importc: "QNetworkReply_connect_sslErrors".}
proc fcQNetworkReply_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QNetworkReply_preSharedKeyAuthenticationRequired".}
proc fcQNetworkReply_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int) {.importc: "QNetworkReply_connect_preSharedKeyAuthenticationRequired".}
proc fcQNetworkReply_redirected(self: pointer, url: pointer): void {.importc: "QNetworkReply_redirected".}
proc fcQNetworkReply_connect_redirected(self: pointer, slot: int) {.importc: "QNetworkReply_connect_redirected".}
proc fcQNetworkReply_redirectAllowed(self: pointer, ): void {.importc: "QNetworkReply_redirectAllowed".}
proc fcQNetworkReply_connect_redirectAllowed(self: pointer, slot: int) {.importc: "QNetworkReply_connect_redirectAllowed".}
proc fcQNetworkReply_uploadProgress(self: pointer, bytesSent: clonglong, bytesTotal: clonglong): void {.importc: "QNetworkReply_uploadProgress".}
proc fcQNetworkReply_connect_uploadProgress(self: pointer, slot: int) {.importc: "QNetworkReply_connect_uploadProgress".}
proc fcQNetworkReply_downloadProgress(self: pointer, bytesReceived: clonglong, bytesTotal: clonglong): void {.importc: "QNetworkReply_downloadProgress".}
proc fcQNetworkReply_connect_downloadProgress(self: pointer, slot: int) {.importc: "QNetworkReply_connect_downloadProgress".}
proc fcQNetworkReply_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkReply_tr2".}
proc fcQNetworkReply_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkReply_tr3".}
proc fcQNetworkReply_staticMetaObject(): pointer {.importc: "QNetworkReply_staticMetaObject".}
proc fcQNetworkReply_delete(self: pointer) {.importc: "QNetworkReply_delete".}


func init*(T: type gen_qnetworkreply_types.QNetworkReply, h: ptr cQNetworkReply): gen_qnetworkreply_types.QNetworkReply =
  T(h: h)
proc metaObject*(self: gen_qnetworkreply_types.QNetworkReply, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkReply_metaObject(self.h))

proc metacast*(self: gen_qnetworkreply_types.QNetworkReply, param1: cstring): pointer =
  fcQNetworkReply_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkreply_types.QNetworkReply, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkReply_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkreply_types.QNetworkReply, s: cstring): string =
  let v_ms = fcQNetworkReply_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc close*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_close(self.h)

proc isSequential*(self: gen_qnetworkreply_types.QNetworkReply, ): bool =
  fcQNetworkReply_isSequential(self.h)

proc readBufferSize*(self: gen_qnetworkreply_types.QNetworkReply, ): clonglong =
  fcQNetworkReply_readBufferSize(self.h)

proc setReadBufferSize*(self: gen_qnetworkreply_types.QNetworkReply, size: clonglong): void =
  fcQNetworkReply_setReadBufferSize(self.h, size)

proc manager*(self: gen_qnetworkreply_types.QNetworkReply, ): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager(h: fcQNetworkReply_manager(self.h))

proc operation*(self: gen_qnetworkreply_types.QNetworkReply, ): cint =
  cint(fcQNetworkReply_operation(self.h))

proc request*(self: gen_qnetworkreply_types.QNetworkReply, ): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkReply_request(self.h))

proc error*(self: gen_qnetworkreply_types.QNetworkReply, ): cint =
  cint(fcQNetworkReply_error(self.h))

proc isFinished*(self: gen_qnetworkreply_types.QNetworkReply, ): bool =
  fcQNetworkReply_isFinished(self.h)

proc isRunning*(self: gen_qnetworkreply_types.QNetworkReply, ): bool =
  fcQNetworkReply_isRunning(self.h)

proc url*(self: gen_qnetworkreply_types.QNetworkReply, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQNetworkReply_url(self.h))

proc header*(self: gen_qnetworkreply_types.QNetworkReply, header: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkReply_header(self.h, cint(header)))

proc hasRawHeader*(self: gen_qnetworkreply_types.QNetworkReply, headerName: seq[byte]): bool =
  fcQNetworkReply_hasRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc rawHeaderList*(self: gen_qnetworkreply_types.QNetworkReply, ): seq[seq[byte]] =
  var v_ma = fcQNetworkReply_rawHeaderList(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc rawHeader*(self: gen_qnetworkreply_types.QNetworkReply, headerName: seq[byte]): seq[byte] =
  var v_bytearray = fcQNetworkReply_rawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc rawHeaderPairs*(self: gen_qnetworkreply_types.QNetworkReply, ): seq[tuple[first: seq[byte], second: seq[byte]]] =
  var v_ma = fcQNetworkReply_rawHeaderPairs(self.h)
  var vx_ret = newSeq[tuple[first: seq[byte], second: seq[byte]]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.values)
    var vx_lv_first_bytearray = vx_lv_First_CArray[0]
    var vx_lv_firstx_ret = @(toOpenArrayByte(vx_lv_first_bytearray.data, 0, int(vx_lv_first_bytearray.len)-1))
    c_free(vx_lv_first_bytearray.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    var vx_lv_second_bytearray = vx_lv_Second_CArray[0]
    var vx_lv_secondx_ret = @(toOpenArrayByte(vx_lv_second_bytearray.data, 0, int(vx_lv_second_bytearray.len)-1))
    c_free(vx_lv_second_bytearray.data)
    var vx_lv_entry_Second = vx_lv_secondx_ret

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc attribute*(self: gen_qnetworkreply_types.QNetworkReply, code: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkReply_attribute(self.h, cint(code)))

proc sslConfiguration*(self: gen_qnetworkreply_types.QNetworkReply, ): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQNetworkReply_sslConfiguration(self.h))

proc setSslConfiguration*(self: gen_qnetworkreply_types.QNetworkReply, configuration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQNetworkReply_setSslConfiguration(self.h, configuration.h)

proc ignoreSslErrors*(self: gen_qnetworkreply_types.QNetworkReply, errors: seq[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQNetworkReply_ignoreSslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc abort*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_abort(self.h)

proc ignoreSslErrors*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_ignoreSslErrors2(self.h)

proc socketStartedConnecting*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_socketStartedConnecting(self.h)

type QNetworkReplysocketStartedConnectingSlot* = proc()
proc miqt_exec_callback_QNetworkReply_socketStartedConnecting(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplysocketStartedConnectingSlot](cast[pointer](slot))
  nimfunc[]()

proc onsocketStartedConnecting*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplysocketStartedConnectingSlot) =
  var tmp = new QNetworkReplysocketStartedConnectingSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_socketStartedConnecting(self.h, cast[int](addr tmp[]))

proc requestSent*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_requestSent(self.h)

type QNetworkReplyrequestSentSlot* = proc()
proc miqt_exec_callback_QNetworkReply_requestSent(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyrequestSentSlot](cast[pointer](slot))
  nimfunc[]()

proc onrequestSent*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyrequestSentSlot) =
  var tmp = new QNetworkReplyrequestSentSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_requestSent(self.h, cast[int](addr tmp[]))

proc metaDataChanged*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_metaDataChanged(self.h)

type QNetworkReplymetaDataChangedSlot* = proc()
proc miqt_exec_callback_QNetworkReply_metaDataChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplymetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmetaDataChanged*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplymetaDataChangedSlot) =
  var tmp = new QNetworkReplymetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_metaDataChanged(self.h, cast[int](addr tmp[]))

proc finished*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_finished(self.h)

type QNetworkReplyfinishedSlot* = proc()
proc miqt_exec_callback_QNetworkReply_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyfinishedSlot) =
  var tmp = new QNetworkReplyfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_finished(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qnetworkreply_types.QNetworkReply, param1: cint): void =
  fcQNetworkReply_errorOccurred(self.h, cint(param1))

type QNetworkReplyerrorOccurredSlot* = proc(param1: cint)
proc miqt_exec_callback_QNetworkReply_errorOccurred(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onerrorOccurred*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyerrorOccurredSlot) =
  var tmp = new QNetworkReplyerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_errorOccurred(self.h, cast[int](addr tmp[]))

proc encrypted*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_encrypted(self.h)

type QNetworkReplyencryptedSlot* = proc()
proc miqt_exec_callback_QNetworkReply_encrypted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyencryptedSlot](cast[pointer](slot))
  nimfunc[]()

proc onencrypted*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyencryptedSlot) =
  var tmp = new QNetworkReplyencryptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_encrypted(self.h, cast[int](addr tmp[]))

proc sslErrors*(self: gen_qnetworkreply_types.QNetworkReply, errors: seq[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQNetworkReply_sslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QNetworkReplysslErrorsSlot* = proc(errors: seq[gen_qsslerror_types.QSslError])
proc miqt_exec_callback_QNetworkReply_sslErrors(slot: int, errors: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplysslErrorsSlot](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i])
  let slotval1 = verrorsx_ret

  nimfunc[](slotval1)

proc onsslErrors*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplysslErrorsSlot) =
  var tmp = new QNetworkReplysslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_sslErrors(self.h, cast[int](addr tmp[]))

proc preSharedKeyAuthenticationRequired*(self: gen_qnetworkreply_types.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQNetworkReply_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

type QNetworkReplypreSharedKeyAuthenticationRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc miqt_exec_callback_QNetworkReply_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplypreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1)

proc onpreSharedKeyAuthenticationRequired*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplypreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QNetworkReplypreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc redirected*(self: gen_qnetworkreply_types.QNetworkReply, url: gen_qurl_types.QUrl): void =
  fcQNetworkReply_redirected(self.h, url.h)

type QNetworkReplyredirectedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_QNetworkReply_redirected(slot: int, url: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyredirectedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc onredirected*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyredirectedSlot) =
  var tmp = new QNetworkReplyredirectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_redirected(self.h, cast[int](addr tmp[]))

proc redirectAllowed*(self: gen_qnetworkreply_types.QNetworkReply, ): void =
  fcQNetworkReply_redirectAllowed(self.h)

type QNetworkReplyredirectAllowedSlot* = proc()
proc miqt_exec_callback_QNetworkReply_redirectAllowed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyredirectAllowedSlot](cast[pointer](slot))
  nimfunc[]()

proc onredirectAllowed*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyredirectAllowedSlot) =
  var tmp = new QNetworkReplyredirectAllowedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_redirectAllowed(self.h, cast[int](addr tmp[]))

proc uploadProgress*(self: gen_qnetworkreply_types.QNetworkReply, bytesSent: clonglong, bytesTotal: clonglong): void =
  fcQNetworkReply_uploadProgress(self.h, bytesSent, bytesTotal)

type QNetworkReplyuploadProgressSlot* = proc(bytesSent: clonglong, bytesTotal: clonglong)
proc miqt_exec_callback_QNetworkReply_uploadProgress(slot: int, bytesSent: clonglong, bytesTotal: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplyuploadProgressSlot](cast[pointer](slot))
  let slotval1 = bytesSent

  let slotval2 = bytesTotal

  nimfunc[](slotval1, slotval2)

proc onuploadProgress*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplyuploadProgressSlot) =
  var tmp = new QNetworkReplyuploadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_uploadProgress(self.h, cast[int](addr tmp[]))

proc downloadProgress*(self: gen_qnetworkreply_types.QNetworkReply, bytesReceived: clonglong, bytesTotal: clonglong): void =
  fcQNetworkReply_downloadProgress(self.h, bytesReceived, bytesTotal)

type QNetworkReplydownloadProgressSlot* = proc(bytesReceived: clonglong, bytesTotal: clonglong)
proc miqt_exec_callback_QNetworkReply_downloadProgress(slot: int, bytesReceived: clonglong, bytesTotal: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QNetworkReplydownloadProgressSlot](cast[pointer](slot))
  let slotval1 = bytesReceived

  let slotval2 = bytesTotal

  nimfunc[](slotval1, slotval2)

proc ondownloadProgress*(self: gen_qnetworkreply_types.QNetworkReply, slot: QNetworkReplydownloadProgressSlot) =
  var tmp = new QNetworkReplydownloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkReply_connect_downloadProgress(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qnetworkreply_types.QNetworkReply, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkReply_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkreply_types.QNetworkReply, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkReply_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qnetworkreply_types.QNetworkReply): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkReply_staticMetaObject())
proc delete*(self: gen_qnetworkreply_types.QNetworkReply) =
  fcQNetworkReply_delete(self.h)
