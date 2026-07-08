import ./qtwebsockets_pkg

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qwebsocket.cpp", QtWebSocketsCFlags).}


import ./gen_qwebsocket_types
export gen_qwebsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qauthenticator_types,
  ../QtNetwork/gen_qhostaddress_types,
  ../QtNetwork/gen_qnetworkproxy_types,
  ../QtNetwork/gen_qnetworkrequest_types,
  ../QtNetwork/gen_qsslconfiguration_types,
  ../QtNetwork/gen_qsslerror_types,
  ../QtNetwork/gen_qsslpresharedkeyauthenticator_types,
  ./gen_qmaskgenerator_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qauthenticator_types,
  gen_qhostaddress_types,
  gen_qnetworkproxy_types,
  gen_qnetworkrequest_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types,
  gen_qmaskgenerator_types

type cQWebSocket*{.exportc: "QWebSocket", incompleteStruct.} = object

proc fcQWebSocket_metaObject(self: pointer): pointer {.importc: "QWebSocket_metaObject".}
proc fcQWebSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebSocket_metacast".}
proc fcQWebSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebSocket_metacall".}
proc fcQWebSocket_tr(s: cstring): struct_seaqt_string {.importc: "QWebSocket_tr".}
proc fcQWebSocket_trUtf8(s: cstring): struct_seaqt_string {.importc: "QWebSocket_trUtf8".}
proc fcQWebSocket_abort(self: pointer): void {.importc: "QWebSocket_abort".}
proc fcQWebSocket_error(self: pointer): cint {.importc: "QWebSocket_error".}
proc fcQWebSocket_errorString(self: pointer): struct_seaqt_string {.importc: "QWebSocket_errorString".}
proc fcQWebSocket_flush(self: pointer): bool {.importc: "QWebSocket_flush".}
proc fcQWebSocket_isValid(self: pointer): bool {.importc: "QWebSocket_isValid".}
proc fcQWebSocket_localAddress(self: pointer): pointer {.importc: "QWebSocket_localAddress".}
proc fcQWebSocket_localPort(self: pointer): cushort {.importc: "QWebSocket_localPort".}
proc fcQWebSocket_pauseMode(self: pointer): cint {.importc: "QWebSocket_pauseMode".}
proc fcQWebSocket_peerAddress(self: pointer): pointer {.importc: "QWebSocket_peerAddress".}
proc fcQWebSocket_peerName(self: pointer): struct_seaqt_string {.importc: "QWebSocket_peerName".}
proc fcQWebSocket_peerPort(self: pointer): cushort {.importc: "QWebSocket_peerPort".}
proc fcQWebSocket_proxy(self: pointer): pointer {.importc: "QWebSocket_proxy".}
proc fcQWebSocket_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QWebSocket_setProxy".}
proc fcQWebSocket_setMaskGenerator(self: pointer, maskGenerator: pointer): void {.importc: "QWebSocket_setMaskGenerator".}
proc fcQWebSocket_maskGenerator(self: pointer): pointer {.importc: "QWebSocket_maskGenerator".}
proc fcQWebSocket_readBufferSize(self: pointer): clonglong {.importc: "QWebSocket_readBufferSize".}
proc fcQWebSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QWebSocket_setReadBufferSize".}
proc fcQWebSocket_resume(self: pointer): void {.importc: "QWebSocket_resume".}
proc fcQWebSocket_setPauseMode(self: pointer, pauseMode: cint): void {.importc: "QWebSocket_setPauseMode".}
proc fcQWebSocket_state(self: pointer): cint {.importc: "QWebSocket_state".}
proc fcQWebSocket_version(self: pointer): cint {.importc: "QWebSocket_version".}
proc fcQWebSocket_resourceName(self: pointer): struct_seaqt_string {.importc: "QWebSocket_resourceName".}
proc fcQWebSocket_requestUrl(self: pointer): pointer {.importc: "QWebSocket_requestUrl".}
proc fcQWebSocket_request(self: pointer): pointer {.importc: "QWebSocket_request".}
proc fcQWebSocket_origin(self: pointer): struct_seaqt_string {.importc: "QWebSocket_origin".}
proc fcQWebSocket_closeCode(self: pointer): cint {.importc: "QWebSocket_closeCode".}
proc fcQWebSocket_closeReason(self: pointer): struct_seaqt_string {.importc: "QWebSocket_closeReason".}
proc fcQWebSocket_sendTextMessage(self: pointer, message: struct_seaqt_string): clonglong {.importc: "QWebSocket_sendTextMessage".}
proc fcQWebSocket_sendBinaryMessage(self: pointer, data: struct_seaqt_string): clonglong {.importc: "QWebSocket_sendBinaryMessage".}
proc fcQWebSocket_ignoreSslErrors(self: pointer, errors: struct_seaqt_array): void {.importc: "QWebSocket_ignoreSslErrors".}
proc fcQWebSocket_setSslConfiguration(self: pointer, sslConfiguration: pointer): void {.importc: "QWebSocket_setSslConfiguration".}
proc fcQWebSocket_sslConfiguration(self: pointer): pointer {.importc: "QWebSocket_sslConfiguration".}
proc fcQWebSocket_bytesToWrite(self: pointer): clonglong {.importc: "QWebSocket_bytesToWrite".}
proc fcQWebSocket_setMaxAllowedIncomingFrameSize(self: pointer, maxAllowedIncomingFrameSize: culonglong): void {.importc: "QWebSocket_setMaxAllowedIncomingFrameSize".}
proc fcQWebSocket_maxAllowedIncomingFrameSize(self: pointer): culonglong {.importc: "QWebSocket_maxAllowedIncomingFrameSize".}
proc fcQWebSocket_setMaxAllowedIncomingMessageSize(self: pointer, maxAllowedIncomingMessageSize: culonglong): void {.importc: "QWebSocket_setMaxAllowedIncomingMessageSize".}
proc fcQWebSocket_maxAllowedIncomingMessageSize(self: pointer): culonglong {.importc: "QWebSocket_maxAllowedIncomingMessageSize".}
proc fcQWebSocket_maxIncomingMessageSize(): culonglong {.importc: "QWebSocket_maxIncomingMessageSize".}
proc fcQWebSocket_maxIncomingFrameSize(): culonglong {.importc: "QWebSocket_maxIncomingFrameSize".}
proc fcQWebSocket_setOutgoingFrameSize(self: pointer, outgoingFrameSize: culonglong): void {.importc: "QWebSocket_setOutgoingFrameSize".}
proc fcQWebSocket_outgoingFrameSize(self: pointer): culonglong {.importc: "QWebSocket_outgoingFrameSize".}
proc fcQWebSocket_maxOutgoingFrameSize(): culonglong {.importc: "QWebSocket_maxOutgoingFrameSize".}
proc fcQWebSocket_close(self: pointer): void {.importc: "QWebSocket_close".}
proc fcQWebSocket_open(self: pointer, url: pointer): void {.importc: "QWebSocket_open".}
proc fcQWebSocket_openWithRequest(self: pointer, request: pointer): void {.importc: "QWebSocket_openWithRequest".}
proc fcQWebSocket_ping(self: pointer): void {.importc: "QWebSocket_ping".}
proc fcQWebSocket_ignoreSslErrors2(self: pointer): void {.importc: "QWebSocket_ignoreSslErrors2".}
proc fcQWebSocket_aboutToClose(self: pointer): void {.importc: "QWebSocket_aboutToClose".}
proc fcQWebSocket_connect_aboutToClose(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_aboutToClose".}
proc fcQWebSocket_connected(self: pointer): void {.importc: "QWebSocket_connected".}
proc fcQWebSocket_connect_connected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_connected".}
proc fcQWebSocket_disconnected(self: pointer): void {.importc: "QWebSocket_disconnected".}
proc fcQWebSocket_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_disconnected".}
proc fcQWebSocket_stateChanged(self: pointer, state: cint): void {.importc: "QWebSocket_stateChanged".}
proc fcQWebSocket_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_stateChanged".}
proc fcQWebSocket_proxyAuthenticationRequired(self: pointer, proxy: pointer, pAuthenticator: pointer): void {.importc: "QWebSocket_proxyAuthenticationRequired".}
proc fcQWebSocket_connect_proxyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, proxy: pointer, pAuthenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_proxyAuthenticationRequired".}
proc fcQWebSocket_readChannelFinished(self: pointer): void {.importc: "QWebSocket_readChannelFinished".}
proc fcQWebSocket_connect_readChannelFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_readChannelFinished".}
proc fcQWebSocket_textFrameReceived(self: pointer, frame: struct_seaqt_string, isLastFrame: bool): void {.importc: "QWebSocket_textFrameReceived".}
proc fcQWebSocket_connect_textFrameReceived(self: pointer, slot: int, callback: proc (slot: int, frame: struct_seaqt_string, isLastFrame: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_textFrameReceived".}
proc fcQWebSocket_binaryFrameReceived(self: pointer, frame: struct_seaqt_string, isLastFrame: bool): void {.importc: "QWebSocket_binaryFrameReceived".}
proc fcQWebSocket_connect_binaryFrameReceived(self: pointer, slot: int, callback: proc (slot: int, frame: struct_seaqt_string, isLastFrame: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_binaryFrameReceived".}
proc fcQWebSocket_textMessageReceived(self: pointer, message: struct_seaqt_string): void {.importc: "QWebSocket_textMessageReceived".}
proc fcQWebSocket_connect_textMessageReceived(self: pointer, slot: int, callback: proc (slot: int, message: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_textMessageReceived".}
proc fcQWebSocket_binaryMessageReceived(self: pointer, message: struct_seaqt_string): void {.importc: "QWebSocket_binaryMessageReceived".}
proc fcQWebSocket_connect_binaryMessageReceived(self: pointer, slot: int, callback: proc (slot: int, message: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_binaryMessageReceived".}
proc fcQWebSocket_errorWithError(self: pointer, error: cint): void {.importc: "QWebSocket_errorWithError".}
proc fcQWebSocket_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_errorWithError".}
proc fcQWebSocket_pong(self: pointer, elapsedTime: culonglong, payload: struct_seaqt_string): void {.importc: "QWebSocket_pong".}
proc fcQWebSocket_connect_pong(self: pointer, slot: int, callback: proc (slot: int, elapsedTime: culonglong, payload: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_pong".}
proc fcQWebSocket_bytesWritten(self: pointer, bytes: clonglong): void {.importc: "QWebSocket_bytesWritten".}
proc fcQWebSocket_connect_bytesWritten(self: pointer, slot: int, callback: proc (slot: int, bytes: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_bytesWritten".}
proc fcQWebSocket_sslErrors(self: pointer, errors: struct_seaqt_array): void {.importc: "QWebSocket_sslErrors".}
proc fcQWebSocket_connect_sslErrors(self: pointer, slot: int, callback: proc (slot: int, errors: struct_seaqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_sslErrors".}
proc fcQWebSocket_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QWebSocket_preSharedKeyAuthenticationRequired".}
proc fcQWebSocket_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocket_connect_preSharedKeyAuthenticationRequired".}
proc fcQWebSocket_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebSocket_tr2".}
proc fcQWebSocket_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebSocket_tr3".}
proc fcQWebSocket_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebSocket_trUtf82".}
proc fcQWebSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebSocket_trUtf83".}
proc fcQWebSocket_closeWithCloseCode(self: pointer, closeCode: cint): void {.importc: "QWebSocket_closeWithCloseCode".}
proc fcQWebSocket_close2(self: pointer, closeCode: cint, reason: struct_seaqt_string): void {.importc: "QWebSocket_close2".}
proc fcQWebSocket_pingWithPayload(self: pointer, payload: struct_seaqt_string): void {.importc: "QWebSocket_pingWithPayload".}
proc fcQWebSocket_vdata(self: pointer): ptr pointer {.importc: "QWebSocket_vdata".}
proc fvdata_cQWebSocket(self: pointer): pointer {.importc: "vdata_QWebSocket".}

type cQWebSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebSocket_virtualbase_metaObject".}
proc fcQWebSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebSocket_virtualbase_metacast".}
proc fcQWebSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebSocket_virtualbase_metacall".}
proc fcQWebSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebSocket_virtualbase_event".}
proc fcQWebSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebSocket_virtualbase_eventFilter".}
proc fcQWebSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebSocket_virtualbase_timerEvent".}
proc fcQWebSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebSocket_virtualbase_childEvent".}
proc fcQWebSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebSocket_virtualbase_customEvent".}
proc fcQWebSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebSocket_virtualbase_connectNotify".}
proc fcQWebSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebSocket_virtualbase_disconnectNotify".}
proc fcQWebSocket_protectedbase_sender(self: pointer): pointer {.importc: "QWebSocket_protectedbase_sender".}
proc fcQWebSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebSocket_protectedbase_senderSignalIndex".}
proc fcQWebSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebSocket_protectedbase_receivers".}
proc fcQWebSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebSocket_protectedbase_isSignalConnected".}
proc fcQWebSocket_new(vtbl: pointer, vdata: csize_t): ptr cQWebSocket {.importc: "QWebSocket_new".}
proc fcQWebSocket_new2(vtbl: pointer, vdata: csize_t, origin: struct_seaqt_string): ptr cQWebSocket {.importc: "QWebSocket_new2".}
proc fcQWebSocket_new3(vtbl: pointer, vdata: csize_t, origin: struct_seaqt_string, version: cint): ptr cQWebSocket {.importc: "QWebSocket_new3".}
proc fcQWebSocket_new4(vtbl: pointer, vdata: csize_t, origin: struct_seaqt_string, version: cint, parent: pointer): ptr cQWebSocket {.importc: "QWebSocket_new4".}
proc fcQWebSocket_staticMetaObject(): pointer {.importc: "QWebSocket_staticMetaObject".}
proc fcQWebSocket_delete(self: pointer) {.importc: "QWebSocket_delete".}

proc metaObject*(self: gen_qwebsocket_types.QWebSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSocket_metaObject(self.h))

proc metacast*(self: gen_qwebsocket_types.QWebSocket, param1: cstring): pointer =
  fcQWebSocket_metacast(self.h, param1)

proc metacall*(self: gen_qwebsocket_types.QWebSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebsocket_types.QWebSocket, s: cstring): string =
  let v_ms = fcQWebSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebsocket_types.QWebSocket, s: cstring): string =
  let v_ms = fcQWebSocket_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc abort*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_abort(self.h)

proc error*(self: gen_qwebsocket_types.QWebSocket): cint =
  cint(fcQWebSocket_error(self.h))

proc errorString*(self: gen_qwebsocket_types.QWebSocket): string =
  let v_ms = fcQWebSocket_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc flush*(self: gen_qwebsocket_types.QWebSocket): bool =
  fcQWebSocket_flush(self.h)

proc isValid*(self: gen_qwebsocket_types.QWebSocket): bool =
  fcQWebSocket_isValid(self.h)

proc localAddress*(self: gen_qwebsocket_types.QWebSocket): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQWebSocket_localAddress(self.h))

proc localPort*(self: gen_qwebsocket_types.QWebSocket): cushort =
  fcQWebSocket_localPort(self.h)

proc pauseMode*(self: gen_qwebsocket_types.QWebSocket): cint =
  cint(fcQWebSocket_pauseMode(self.h))

proc peerAddress*(self: gen_qwebsocket_types.QWebSocket): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQWebSocket_peerAddress(self.h))

proc peerName*(self: gen_qwebsocket_types.QWebSocket): string =
  let v_ms = fcQWebSocket_peerName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc peerPort*(self: gen_qwebsocket_types.QWebSocket): cushort =
  fcQWebSocket_peerPort(self.h)

proc proxy*(self: gen_qwebsocket_types.QWebSocket): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQWebSocket_proxy(self.h))

proc setProxy*(self: gen_qwebsocket_types.QWebSocket, networkProxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQWebSocket_setProxy(self.h, networkProxy.h)

proc setMaskGenerator*(self: gen_qwebsocket_types.QWebSocket, maskGenerator: gen_qmaskgenerator_types.QMaskGenerator): void =
  fcQWebSocket_setMaskGenerator(self.h, maskGenerator.h)

proc maskGenerator*(self: gen_qwebsocket_types.QWebSocket): gen_qmaskgenerator_types.QMaskGenerator =
  gen_qmaskgenerator_types.QMaskGenerator(h: fcQWebSocket_maskGenerator(self.h))

proc readBufferSize*(self: gen_qwebsocket_types.QWebSocket): clonglong =
  fcQWebSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: gen_qwebsocket_types.QWebSocket, size: clonglong): void =
  fcQWebSocket_setReadBufferSize(self.h, size)

proc resume*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_resume(self.h)

proc setPauseMode*(self: gen_qwebsocket_types.QWebSocket, pauseMode: cint): void =
  fcQWebSocket_setPauseMode(self.h, cint(pauseMode))

proc state*(self: gen_qwebsocket_types.QWebSocket): cint =
  cint(fcQWebSocket_state(self.h))

proc version*(self: gen_qwebsocket_types.QWebSocket): cint =
  cint(fcQWebSocket_version(self.h))

proc resourceName*(self: gen_qwebsocket_types.QWebSocket): string =
  let v_ms = fcQWebSocket_resourceName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc requestUrl*(self: gen_qwebsocket_types.QWebSocket): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebSocket_requestUrl(self.h))

proc request*(self: gen_qwebsocket_types.QWebSocket): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQWebSocket_request(self.h))

proc origin*(self: gen_qwebsocket_types.QWebSocket): string =
  let v_ms = fcQWebSocket_origin(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc closeCode*(self: gen_qwebsocket_types.QWebSocket): cint =
  cint(fcQWebSocket_closeCode(self.h))

proc closeReason*(self: gen_qwebsocket_types.QWebSocket): string =
  let v_ms = fcQWebSocket_closeReason(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sendTextMessage*(self: gen_qwebsocket_types.QWebSocket, message: openArray[char]): clonglong =
  fcQWebSocket_sendTextMessage(self.h, struct_seaqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))))

proc sendBinaryMessage*(self: gen_qwebsocket_types.QWebSocket, data: openArray[byte]): clonglong =
  fcQWebSocket_sendBinaryMessage(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc ignoreSslErrors*(self: gen_qwebsocket_types.QWebSocket, errors: openArray[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQWebSocket_ignoreSslErrors(self.h, struct_seaqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc setSslConfiguration*(self: gen_qwebsocket_types.QWebSocket, sslConfiguration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQWebSocket_setSslConfiguration(self.h, sslConfiguration.h)

proc sslConfiguration*(self: gen_qwebsocket_types.QWebSocket): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQWebSocket_sslConfiguration(self.h))

proc bytesToWrite*(self: gen_qwebsocket_types.QWebSocket): clonglong =
  fcQWebSocket_bytesToWrite(self.h)

proc setMaxAllowedIncomingFrameSize*(self: gen_qwebsocket_types.QWebSocket, maxAllowedIncomingFrameSize: culonglong): void =
  fcQWebSocket_setMaxAllowedIncomingFrameSize(self.h, maxAllowedIncomingFrameSize)

proc maxAllowedIncomingFrameSize*(self: gen_qwebsocket_types.QWebSocket): culonglong =
  fcQWebSocket_maxAllowedIncomingFrameSize(self.h)

proc setMaxAllowedIncomingMessageSize*(self: gen_qwebsocket_types.QWebSocket, maxAllowedIncomingMessageSize: culonglong): void =
  fcQWebSocket_setMaxAllowedIncomingMessageSize(self.h, maxAllowedIncomingMessageSize)

proc maxAllowedIncomingMessageSize*(self: gen_qwebsocket_types.QWebSocket): culonglong =
  fcQWebSocket_maxAllowedIncomingMessageSize(self.h)

proc maxIncomingMessageSize*(_: type gen_qwebsocket_types.QWebSocket): culonglong =
  fcQWebSocket_maxIncomingMessageSize()

proc maxIncomingFrameSize*(_: type gen_qwebsocket_types.QWebSocket): culonglong =
  fcQWebSocket_maxIncomingFrameSize()

proc setOutgoingFrameSize*(self: gen_qwebsocket_types.QWebSocket, outgoingFrameSize: culonglong): void =
  fcQWebSocket_setOutgoingFrameSize(self.h, outgoingFrameSize)

proc outgoingFrameSize*(self: gen_qwebsocket_types.QWebSocket): culonglong =
  fcQWebSocket_outgoingFrameSize(self.h)

proc maxOutgoingFrameSize*(_: type gen_qwebsocket_types.QWebSocket): culonglong =
  fcQWebSocket_maxOutgoingFrameSize()

proc close*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_close(self.h)

proc open*(self: gen_qwebsocket_types.QWebSocket, url: gen_qurl_types.QUrl): void =
  fcQWebSocket_open(self.h, url.h)

proc open*(self: gen_qwebsocket_types.QWebSocket, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQWebSocket_openWithRequest(self.h, request.h)

proc ping*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_ping(self.h)

proc ignoreSslErrors*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_ignoreSslErrors2(self.h)

proc aboutToClose*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_aboutToClose(self.h)

type QWebSocketaboutToCloseSlot* = proc()
proc fcQWebSocket_slot_callback_aboutToClose(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketaboutToCloseSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWebSocket_slot_callback_aboutToClose_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketaboutToCloseSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAboutToClose*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketaboutToCloseSlot) =
  var tmp = new QWebSocketaboutToCloseSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_aboutToClose(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_aboutToClose, fcQWebSocket_slot_callback_aboutToClose_release)

proc connected*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_connected(self.h)

type QWebSocketconnectedSlot* = proc()
proc fcQWebSocket_slot_callback_connected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWebSocket_slot_callback_connected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onConnected*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketconnectedSlot) =
  var tmp = new QWebSocketconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_connected(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_connected, fcQWebSocket_slot_callback_connected_release)

proc disconnected*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_disconnected(self.h)

type QWebSocketdisconnectedSlot* = proc()
proc fcQWebSocket_slot_callback_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketdisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWebSocket_slot_callback_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketdisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDisconnected*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketdisconnectedSlot) =
  var tmp = new QWebSocketdisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_disconnected(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_disconnected, fcQWebSocket_slot_callback_disconnected_release)

proc stateChanged*(self: gen_qwebsocket_types.QWebSocket, state: cint): void =
  fcQWebSocket_stateChanged(self.h, cint(state))

type QWebSocketstateChangedSlot* = proc(state: cint)
proc fcQWebSocket_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketstateChangedSlot) =
  var tmp = new QWebSocketstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_stateChanged, fcQWebSocket_slot_callback_stateChanged_release)

proc proxyAuthenticationRequired*(self: gen_qwebsocket_types.QWebSocket, proxy: gen_qnetworkproxy_types.QNetworkProxy, pAuthenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQWebSocket_proxyAuthenticationRequired(self.h, proxy.h, pAuthenticator.h)

type QWebSocketproxyAuthenticationRequiredSlot* = proc(proxy: gen_qnetworkproxy_types.QNetworkProxy, pAuthenticator: gen_qauthenticator_types.QAuthenticator)
proc fcQWebSocket_slot_callback_proxyAuthenticationRequired(slot: int, proxy: pointer, pAuthenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxy(h: proxy)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: pAuthenticator)

  nimfunc[](slotval1, slotval2)

proc fcQWebSocket_slot_callback_proxyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onProxyAuthenticationRequired*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketproxyAuthenticationRequiredSlot) =
  var tmp = new QWebSocketproxyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_proxyAuthenticationRequired, fcQWebSocket_slot_callback_proxyAuthenticationRequired_release)

proc readChannelFinished*(self: gen_qwebsocket_types.QWebSocket): void =
  fcQWebSocket_readChannelFinished(self.h)

type QWebSocketreadChannelFinishedSlot* = proc()
proc fcQWebSocket_slot_callback_readChannelFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketreadChannelFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWebSocket_slot_callback_readChannelFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketreadChannelFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReadChannelFinished*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketreadChannelFinishedSlot) =
  var tmp = new QWebSocketreadChannelFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_readChannelFinished(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_readChannelFinished, fcQWebSocket_slot_callback_readChannelFinished_release)

proc textFrameReceived*(self: gen_qwebsocket_types.QWebSocket, frame: openArray[char], isLastFrame: bool): void =
  fcQWebSocket_textFrameReceived(self.h, struct_seaqt_string(data: if len(frame) > 0: addr frame[0] else: nil, len: csize_t(len(frame))), isLastFrame)

type QWebSockettextFrameReceivedSlot* = proc(frame: openArray[char], isLastFrame: bool)
proc fcQWebSocket_slot_callback_textFrameReceived(slot: int, frame: struct_seaqt_string, isLastFrame: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebSockettextFrameReceivedSlot](cast[pointer](slot))
  let vframe_ms = frame
  let vframex_ret = string.fromBytes(vframe_ms)
  c_free(vframe_ms.data)
  let slotval1 = vframex_ret

  let slotval2 = isLastFrame

  nimfunc[](slotval1, slotval2)

proc fcQWebSocket_slot_callback_textFrameReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSockettextFrameReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextFrameReceived*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSockettextFrameReceivedSlot) =
  var tmp = new QWebSockettextFrameReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_textFrameReceived(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_textFrameReceived, fcQWebSocket_slot_callback_textFrameReceived_release)

proc binaryFrameReceived*(self: gen_qwebsocket_types.QWebSocket, frame: openArray[byte], isLastFrame: bool): void =
  fcQWebSocket_binaryFrameReceived(self.h, struct_seaqt_string(data: if len(frame) > 0: addr frame[0] else: nil, len: csize_t(len(frame))), isLastFrame)

type QWebSocketbinaryFrameReceivedSlot* = proc(frame: openArray[byte], isLastFrame: bool)
proc fcQWebSocket_slot_callback_binaryFrameReceived(slot: int, frame: struct_seaqt_string, isLastFrame: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketbinaryFrameReceivedSlot](cast[pointer](slot))
  var vframe_bytearray = frame
  var vframex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vframe_bytearray.data), 0, int(vframe_bytearray.len)-1))
  c_free(vframe_bytearray.data)
  let slotval1 = vframex_ret

  let slotval2 = isLastFrame

  nimfunc[](slotval1, slotval2)

proc fcQWebSocket_slot_callback_binaryFrameReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketbinaryFrameReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBinaryFrameReceived*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketbinaryFrameReceivedSlot) =
  var tmp = new QWebSocketbinaryFrameReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_binaryFrameReceived(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_binaryFrameReceived, fcQWebSocket_slot_callback_binaryFrameReceived_release)

proc textMessageReceived*(self: gen_qwebsocket_types.QWebSocket, message: openArray[char]): void =
  fcQWebSocket_textMessageReceived(self.h, struct_seaqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))))

type QWebSockettextMessageReceivedSlot* = proc(message: openArray[char])
proc fcQWebSocket_slot_callback_textMessageReceived(slot: int, message: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebSockettextMessageReceivedSlot](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(vmessage_ms)
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_textMessageReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSockettextMessageReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextMessageReceived*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSockettextMessageReceivedSlot) =
  var tmp = new QWebSockettextMessageReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_textMessageReceived(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_textMessageReceived, fcQWebSocket_slot_callback_textMessageReceived_release)

proc binaryMessageReceived*(self: gen_qwebsocket_types.QWebSocket, message: openArray[byte]): void =
  fcQWebSocket_binaryMessageReceived(self.h, struct_seaqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))))

type QWebSocketbinaryMessageReceivedSlot* = proc(message: openArray[byte])
proc fcQWebSocket_slot_callback_binaryMessageReceived(slot: int, message: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketbinaryMessageReceivedSlot](cast[pointer](slot))
  var vmessage_bytearray = message
  var vmessagex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vmessage_bytearray.data), 0, int(vmessage_bytearray.len)-1))
  c_free(vmessage_bytearray.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_binaryMessageReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketbinaryMessageReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBinaryMessageReceived*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketbinaryMessageReceivedSlot) =
  var tmp = new QWebSocketbinaryMessageReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_binaryMessageReceived(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_binaryMessageReceived, fcQWebSocket_slot_callback_binaryMessageReceived_release)

proc error*(self: gen_qwebsocket_types.QWebSocket, error: cint): void =
  fcQWebSocket_errorWithError(self.h, cint(error))

type QWebSocketerrorWithErrorSlot* = proc(error: cint)
proc fcQWebSocket_slot_callback_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketerrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketerrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketerrorWithErrorSlot) =
  var tmp = new QWebSocketerrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_errorWithError(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_errorWithError, fcQWebSocket_slot_callback_errorWithError_release)

proc pong*(self: gen_qwebsocket_types.QWebSocket, elapsedTime: culonglong, payload: openArray[byte]): void =
  fcQWebSocket_pong(self.h, elapsedTime, struct_seaqt_string(data: if len(payload) > 0: addr payload[0] else: nil, len: csize_t(len(payload))))

type QWebSocketpongSlot* = proc(elapsedTime: culonglong, payload: openArray[byte])
proc fcQWebSocket_slot_callback_pong(slot: int, elapsedTime: culonglong, payload: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketpongSlot](cast[pointer](slot))
  let slotval1 = elapsedTime

  var vpayload_bytearray = payload
  var vpayloadx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vpayload_bytearray.data), 0, int(vpayload_bytearray.len)-1))
  c_free(vpayload_bytearray.data)
  let slotval2 = vpayloadx_ret

  nimfunc[](slotval1, slotval2)

proc fcQWebSocket_slot_callback_pong_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketpongSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPong*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketpongSlot) =
  var tmp = new QWebSocketpongSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_pong(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_pong, fcQWebSocket_slot_callback_pong_release)

proc bytesWritten*(self: gen_qwebsocket_types.QWebSocket, bytes: clonglong): void =
  fcQWebSocket_bytesWritten(self.h, bytes)

type QWebSocketbytesWrittenSlot* = proc(bytes: clonglong)
proc fcQWebSocket_slot_callback_bytesWritten(slot: int, bytes: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketbytesWrittenSlot](cast[pointer](slot))
  let slotval1 = bytes

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_bytesWritten_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketbytesWrittenSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBytesWritten*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketbytesWrittenSlot) =
  var tmp = new QWebSocketbytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_bytesWritten(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_bytesWritten, fcQWebSocket_slot_callback_bytesWritten_release)

proc sslErrors*(self: gen_qwebsocket_types.QWebSocket, errors: openArray[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQWebSocket_sslErrors(self.h, struct_seaqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QWebSocketsslErrorsSlot* = proc(errors: openArray[gen_qsslerror_types.QSslError])
proc fcQWebSocket_slot_callback_sslErrors(slot: int, errors: struct_seaqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketsslErrorsSlot](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i])
  c_free(verrors_ma.data)
  let slotval1 = verrorsx_ret

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_sslErrors_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketsslErrorsSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSslErrors*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketsslErrorsSlot) =
  var tmp = new QWebSocketsslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_sslErrors(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_sslErrors, fcQWebSocket_slot_callback_sslErrors_release)

proc preSharedKeyAuthenticationRequired*(self: gen_qwebsocket_types.QWebSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQWebSocket_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

type QWebSocketpreSharedKeyAuthenticationRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc fcQWebSocket_slot_callback_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1)

proc fcQWebSocket_slot_callback_preSharedKeyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPreSharedKeyAuthenticationRequired*(self: gen_qwebsocket_types.QWebSocket, slot: QWebSocketpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QWebSocketpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocket_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]), fcQWebSocket_slot_callback_preSharedKeyAuthenticationRequired, fcQWebSocket_slot_callback_preSharedKeyAuthenticationRequired_release)

proc tr*(_: type gen_qwebsocket_types.QWebSocket, s: cstring, c: cstring): string =
  let v_ms = fcQWebSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebsocket_types.QWebSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebsocket_types.QWebSocket, s: cstring, c: cstring): string =
  let v_ms = fcQWebSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebsocket_types.QWebSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc close*(self: gen_qwebsocket_types.QWebSocket, closeCode: cint): void =
  fcQWebSocket_closeWithCloseCode(self.h, cint(closeCode))

proc close*(self: gen_qwebsocket_types.QWebSocket, closeCode: cint, reason: openArray[char]): void =
  fcQWebSocket_close2(self.h, cint(closeCode), struct_seaqt_string(data: if len(reason) > 0: addr reason[0] else: nil, len: csize_t(len(reason))))

proc ping*(self: gen_qwebsocket_types.QWebSocket, payload: openArray[byte]): void =
  fcQWebSocket_pingWithPayload(self.h, struct_seaqt_string(data: if len(payload) > 0: addr payload[0] else: nil, len: csize_t(len(payload))))

type QWebSocketmetaObjectProc* = proc(self: QWebSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebSocketmetacastProc* = proc(self: QWebSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebSocketmetacallProc* = proc(self: QWebSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebSocketeventProc* = proc(self: QWebSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebSocketeventFilterProc* = proc(self: QWebSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebSockettimerEventProc* = proc(self: QWebSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebSocketchildEventProc* = proc(self: QWebSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebSocketcustomEventProc* = proc(self: QWebSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebSocketconnectNotifyProc* = proc(self: QWebSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebSocketdisconnectNotifyProc* = proc(self: QWebSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebSocketVTable* = object
  vtbl: cQWebSocketVTable
  metaObject*: QWebSocketmetaObjectProc
  metacast*: QWebSocketmetacastProc
  metacall*: QWebSocketmetacallProc
  event*: QWebSocketeventProc
  eventFilter*: QWebSocketeventFilterProc
  timerEvent*: QWebSockettimerEventProc
  childEvent*: QWebSocketchildEventProc
  customEvent*: QWebSocketcustomEventProc
  connectNotify*: QWebSocketconnectNotifyProc
  disconnectNotify*: QWebSocketdisconnectNotifyProc

proc QWebSocketmetaObject*(self: gen_qwebsocket_types.QWebSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSocket_virtualbase_metaObject(self.h))

proc QWebSocketmetacast*(self: gen_qwebsocket_types.QWebSocket, param1: cstring): pointer =
  fcQWebSocket_virtualbase_metacast(self.h, param1)

proc QWebSocketmetacall*(self: gen_qwebsocket_types.QWebSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QWebSocketevent*(self: gen_qwebsocket_types.QWebSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebSocket_virtualbase_event(self.h, event.h)

proc QWebSocketeventFilter*(self: gen_qwebsocket_types.QWebSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QWebSockettimerEvent*(self: gen_qwebsocket_types.QWebSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebSocket_virtualbase_timerEvent(self.h, event.h)

proc QWebSocketchildEvent*(self: gen_qwebsocket_types.QWebSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebSocket_virtualbase_childEvent(self.h, event.h)

proc QWebSocketcustomEvent*(self: gen_qwebsocket_types.QWebSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQWebSocket_virtualbase_customEvent(self.h, event.h)

proc QWebSocketconnectNotify*(self: gen_qwebsocket_types.QWebSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebSocket_virtualbase_connectNotify(self.h, signal.h)

proc QWebSocketdisconnectNotify*(self: gen_qwebsocket_types.QWebSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebSocket_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQWebSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQWebSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQWebSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQWebSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQWebSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQWebSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQWebSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQWebSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQWebSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketVTable](fcQWebSocket_vdata(self)[])
  let self = QWebSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebSocket* {.inheritable.} = ref object of QWebSocket
  vtbl*: cQWebSocketVTable

method metaObject*(self: VirtualQWebSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebSocketmetaObject(self[])
method metacast*(self: VirtualQWebSocket, param1: cstring): pointer {.base.} =
  QWebSocketmetacast(self[], param1)
method metacall*(self: VirtualQWebSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebSocketmetacall(self[], param1, param2, param3)
method event*(self: VirtualQWebSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebSocketevent(self[], event)
method eventFilter*(self: VirtualQWebSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebSocketeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQWebSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebSockettimerEvent(self[], event)
method childEvent*(self: VirtualQWebSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebSocketchildEvent(self[], event)
method customEvent*(self: VirtualQWebSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebSocketcustomEvent(self[], event)
method connectNotify*(self: VirtualQWebSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebSocketconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQWebSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebSocketdisconnectNotify(self[], signal)

proc fcQWebSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQWebSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQWebSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQWebSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQWebSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQWebSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQWebSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQWebSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQWebSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocket](fcQWebSocket_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qwebsocket_types.QWebSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebSocket_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebsocket_types.QWebSocket): cint =
  fcQWebSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebsocket_types.QWebSocket, signal: cstring): cint =
  fcQWebSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebsocket_types.QWebSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebsocket_types.QWebSocket,
    vtbl: ref QWebSocketVTable = nil): gen_qwebsocket_types.QWebSocket =
  let vtbl = if vtbl == nil: new QWebSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebSocketVTable](fcQWebSocket_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebSocket_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebSocket_vtable_callback_disconnectNotify
  let tmp = gen_qwebsocket_types.QWebSocket(h: fcQWebSocket_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQWebSocket_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qwebsocket_types.QWebSocket,
    origin: openArray[char],
    vtbl: ref QWebSocketVTable = nil): gen_qwebsocket_types.QWebSocket =
  let vtbl = if vtbl == nil: new QWebSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebSocketVTable](fcQWebSocket_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebSocket_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebSocket_vtable_callback_disconnectNotify
  let tmp = gen_qwebsocket_types.QWebSocket(h: fcQWebSocket_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin)))))
  fcQWebSocket_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qwebsocket_types.QWebSocket,
    origin: openArray[char], version: cint,
    vtbl: ref QWebSocketVTable = nil): gen_qwebsocket_types.QWebSocket =
  let vtbl = if vtbl == nil: new QWebSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebSocketVTable](fcQWebSocket_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebSocket_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebSocket_vtable_callback_disconnectNotify
  let tmp = gen_qwebsocket_types.QWebSocket(h: fcQWebSocket_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin))), cint(version)))
  fcQWebSocket_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qwebsocket_types.QWebSocket,
    origin: openArray[char], version: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QWebSocketVTable = nil): gen_qwebsocket_types.QWebSocket =
  let vtbl = if vtbl == nil: new QWebSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebSocketVTable](fcQWebSocket_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebSocket_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebSocket_vtable_callback_disconnectNotify
  let tmp = gen_qwebsocket_types.QWebSocket(h: fcQWebSocket_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin))), cint(version), parent.h))
  fcQWebSocket_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQWebSocket_mvtbl = cQWebSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebSocket()[])](self.fcQWebSocket_vdata()[])
    inst[].h = nil,

  metaObject: fcQWebSocket_method_callback_metaObject,
  metacast: fcQWebSocket_method_callback_metacast,
  metacall: fcQWebSocket_method_callback_metacall,
  event: fcQWebSocket_method_callback_event,
  eventFilter: fcQWebSocket_method_callback_eventFilter,
  timerEvent: fcQWebSocket_method_callback_timerEvent,
  childEvent: fcQWebSocket_method_callback_childEvent,
  customEvent: fcQWebSocket_method_callback_customEvent,
  connectNotify: fcQWebSocket_method_callback_connectNotify,
  disconnectNotify: fcQWebSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebsocket_types.QWebSocket,
    inst: VirtualQWebSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebSocket_new(addr(cQWebSocket_mvtbl), csize_t(sizeof(pointer)))
  fcQWebSocket_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qwebsocket_types.QWebSocket,
    origin: openArray[char],
    inst: VirtualQWebSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebSocket_new2(addr(cQWebSocket_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin))))
  fcQWebSocket_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qwebsocket_types.QWebSocket,
    origin: openArray[char], version: cint,
    inst: VirtualQWebSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebSocket_new3(addr(cQWebSocket_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin))), cint(version))
  fcQWebSocket_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qwebsocket_types.QWebSocket,
    origin: openArray[char], version: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQWebSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebSocket_new4(addr(cQWebSocket_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin))), cint(version), parent.h)
  fcQWebSocket_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebsocket_types.QWebSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSocket_staticMetaObject())
proc delete*(self: gen_qwebsocket_types.QWebSocket) =
  fcQWebSocket_delete(self.h)
