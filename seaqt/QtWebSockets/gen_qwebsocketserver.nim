import ./qtwebsockets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


{.compile("gen_qwebsocketserver.cpp", QtWebSocketsCFlags).}


type QWebSocketServerSslModeEnum* = distinct cint
template SecureMode*(_: type QWebSocketServerSslModeEnum): untyped = 0
template NonSecureMode*(_: type QWebSocketServerSslModeEnum): untyped = 1


import ./gen_qwebsocketserver_types
export gen_qwebsocketserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qhostaddress_types,
  ../QtNetwork/gen_qnetworkproxy_types,
  ../QtNetwork/gen_qsslconfiguration_types,
  ../QtNetwork/gen_qsslerror_types,
  ../QtNetwork/gen_qsslpresharedkeyauthenticator_types,
  ../QtNetwork/gen_qtcpsocket_types,
  ./gen_qwebsocket_types,
  ./gen_qwebsocketcorsauthenticator_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qhostaddress_types,
  gen_qnetworkproxy_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types,
  gen_qtcpsocket_types,
  gen_qwebsocket_types,
  gen_qwebsocketcorsauthenticator_types

type cQWebSocketServer*{.exportc: "QWebSocketServer", incompleteStruct.} = object

proc fcQWebSocketServer_metaObject(self: pointer): pointer {.importc: "QWebSocketServer_metaObject".}
proc fcQWebSocketServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebSocketServer_metacast".}
proc fcQWebSocketServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebSocketServer_metacall".}
proc fcQWebSocketServer_tr(s: cstring): struct_seaqt_string {.importc: "QWebSocketServer_tr".}
proc fcQWebSocketServer_trUtf8(s: cstring): struct_seaqt_string {.importc: "QWebSocketServer_trUtf8".}
proc fcQWebSocketServer_listen(self: pointer): bool {.importc: "QWebSocketServer_listen".}
proc fcQWebSocketServer_close(self: pointer): void {.importc: "QWebSocketServer_close".}
proc fcQWebSocketServer_isListening(self: pointer): bool {.importc: "QWebSocketServer_isListening".}
proc fcQWebSocketServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QWebSocketServer_setMaxPendingConnections".}
proc fcQWebSocketServer_maxPendingConnections(self: pointer): cint {.importc: "QWebSocketServer_maxPendingConnections".}
proc fcQWebSocketServer_setHandshakeTimeoutWithMsec(self: pointer, msec: cint): void {.importc: "QWebSocketServer_setHandshakeTimeoutWithMsec".}
proc fcQWebSocketServer_handshakeTimeoutMS(self: pointer): cint {.importc: "QWebSocketServer_handshakeTimeoutMS".}
proc fcQWebSocketServer_serverPort(self: pointer): cushort {.importc: "QWebSocketServer_serverPort".}
proc fcQWebSocketServer_serverAddress(self: pointer): pointer {.importc: "QWebSocketServer_serverAddress".}
proc fcQWebSocketServer_serverUrl(self: pointer): pointer {.importc: "QWebSocketServer_serverUrl".}
proc fcQWebSocketServer_secureMode(self: pointer): cint {.importc: "QWebSocketServer_secureMode".}
proc fcQWebSocketServer_setSocketDescriptor(self: pointer, socketDescriptor: cint): bool {.importc: "QWebSocketServer_setSocketDescriptor".}
proc fcQWebSocketServer_socketDescriptor(self: pointer): cint {.importc: "QWebSocketServer_socketDescriptor".}
proc fcQWebSocketServer_setNativeDescriptor(self: pointer, descriptor: uint): bool {.importc: "QWebSocketServer_setNativeDescriptor".}
proc fcQWebSocketServer_nativeDescriptor(self: pointer): uint {.importc: "QWebSocketServer_nativeDescriptor".}
proc fcQWebSocketServer_hasPendingConnections(self: pointer): bool {.importc: "QWebSocketServer_hasPendingConnections".}
proc fcQWebSocketServer_nextPendingConnection(self: pointer): pointer {.importc: "QWebSocketServer_nextPendingConnection".}
proc fcQWebSocketServer_error(self: pointer): cint {.importc: "QWebSocketServer_error".}
proc fcQWebSocketServer_errorString(self: pointer): struct_seaqt_string {.importc: "QWebSocketServer_errorString".}
proc fcQWebSocketServer_pauseAccepting(self: pointer): void {.importc: "QWebSocketServer_pauseAccepting".}
proc fcQWebSocketServer_resumeAccepting(self: pointer): void {.importc: "QWebSocketServer_resumeAccepting".}
proc fcQWebSocketServer_setServerName(self: pointer, serverName: struct_seaqt_string): void {.importc: "QWebSocketServer_setServerName".}
proc fcQWebSocketServer_serverName(self: pointer): struct_seaqt_string {.importc: "QWebSocketServer_serverName".}
proc fcQWebSocketServer_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QWebSocketServer_setProxy".}
proc fcQWebSocketServer_proxy(self: pointer): pointer {.importc: "QWebSocketServer_proxy".}
proc fcQWebSocketServer_setSslConfiguration(self: pointer, sslConfiguration: pointer): void {.importc: "QWebSocketServer_setSslConfiguration".}
proc fcQWebSocketServer_sslConfiguration(self: pointer): pointer {.importc: "QWebSocketServer_sslConfiguration".}
proc fcQWebSocketServer_supportedVersions(self: pointer): struct_seaqt_array {.importc: "QWebSocketServer_supportedVersions".}
proc fcQWebSocketServer_handleConnection(self: pointer, socket: pointer): void {.importc: "QWebSocketServer_handleConnection".}
proc fcQWebSocketServer_acceptError(self: pointer, socketError: cint): void {.importc: "QWebSocketServer_acceptError".}
proc fcQWebSocketServer_connect_acceptError(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_acceptError".}
proc fcQWebSocketServer_serverError(self: pointer, closeCode: cint): void {.importc: "QWebSocketServer_serverError".}
proc fcQWebSocketServer_connect_serverError(self: pointer, slot: int, callback: proc (slot: int, closeCode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_serverError".}
proc fcQWebSocketServer_originAuthenticationRequired(self: pointer, pAuthenticator: pointer): void {.importc: "QWebSocketServer_originAuthenticationRequired".}
proc fcQWebSocketServer_connect_originAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, pAuthenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_originAuthenticationRequired".}
proc fcQWebSocketServer_newConnection(self: pointer): void {.importc: "QWebSocketServer_newConnection".}
proc fcQWebSocketServer_connect_newConnection(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_newConnection".}
proc fcQWebSocketServer_peerVerifyError(self: pointer, error: pointer): void {.importc: "QWebSocketServer_peerVerifyError".}
proc fcQWebSocketServer_connect_peerVerifyError(self: pointer, slot: int, callback: proc (slot: int, error: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_peerVerifyError".}
proc fcQWebSocketServer_sslErrors(self: pointer, errors: struct_seaqt_array): void {.importc: "QWebSocketServer_sslErrors".}
proc fcQWebSocketServer_connect_sslErrors(self: pointer, slot: int, callback: proc (slot: int, errors: struct_seaqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_sslErrors".}
proc fcQWebSocketServer_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QWebSocketServer_preSharedKeyAuthenticationRequired".}
proc fcQWebSocketServer_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_preSharedKeyAuthenticationRequired".}
proc fcQWebSocketServer_closed(self: pointer): void {.importc: "QWebSocketServer_closed".}
proc fcQWebSocketServer_connect_closed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebSocketServer_connect_closed".}
proc fcQWebSocketServer_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebSocketServer_tr2".}
proc fcQWebSocketServer_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebSocketServer_tr3".}
proc fcQWebSocketServer_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebSocketServer_trUtf82".}
proc fcQWebSocketServer_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebSocketServer_trUtf83".}
proc fcQWebSocketServer_listenWithAddress(self: pointer, address: pointer): bool {.importc: "QWebSocketServer_listenWithAddress".}
proc fcQWebSocketServer_listen2(self: pointer, address: pointer, port: cushort): bool {.importc: "QWebSocketServer_listen2".}
proc fcQWebSocketServer_vdata(self: pointer): ptr pointer {.importc: "QWebSocketServer_vdata".}
proc fvdata_cQWebSocketServer(self: pointer): pointer {.importc: "vdata_QWebSocketServer".}

type cQWebSocketServerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  nextPendingConnection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebSocketServer_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebSocketServer_virtualbase_metaObject".}
proc fcQWebSocketServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebSocketServer_virtualbase_metacast".}
proc fcQWebSocketServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebSocketServer_virtualbase_metacall".}
proc fcQWebSocketServer_virtualbase_nextPendingConnection(self: pointer): pointer {.importc: "QWebSocketServer_virtualbase_nextPendingConnection".}
proc fcQWebSocketServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebSocketServer_virtualbase_event".}
proc fcQWebSocketServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebSocketServer_virtualbase_eventFilter".}
proc fcQWebSocketServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebSocketServer_virtualbase_timerEvent".}
proc fcQWebSocketServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebSocketServer_virtualbase_childEvent".}
proc fcQWebSocketServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebSocketServer_virtualbase_customEvent".}
proc fcQWebSocketServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebSocketServer_virtualbase_connectNotify".}
proc fcQWebSocketServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebSocketServer_virtualbase_disconnectNotify".}
proc fcQWebSocketServer_protectedbase_sender(self: pointer): pointer {.importc: "QWebSocketServer_protectedbase_sender".}
proc fcQWebSocketServer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebSocketServer_protectedbase_senderSignalIndex".}
proc fcQWebSocketServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebSocketServer_protectedbase_receivers".}
proc fcQWebSocketServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebSocketServer_protectedbase_isSignalConnected".}
proc fcQWebSocketServer_new(vtbl: pointer, vdata: csize_t, serverName: struct_seaqt_string, secureMode: cint): ptr cQWebSocketServer {.importc: "QWebSocketServer_new".}
proc fcQWebSocketServer_new2(vtbl: pointer, vdata: csize_t, serverName: struct_seaqt_string, secureMode: cint, parent: pointer): ptr cQWebSocketServer {.importc: "QWebSocketServer_new2".}
proc fcQWebSocketServer_staticMetaObject(): pointer {.importc: "QWebSocketServer_staticMetaObject".}
proc fcQWebSocketServer_delete(self: pointer) {.importc: "QWebSocketServer_delete".}

proc metaObject*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSocketServer_metaObject(self.h))

proc metacast*(self: gen_qwebsocketserver_types.QWebSocketServer, param1: cstring): pointer =
  fcQWebSocketServer_metacast(self.h, param1)

proc metacall*(self: gen_qwebsocketserver_types.QWebSocketServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebSocketServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebsocketserver_types.QWebSocketServer, s: cstring): string =
  let v_ms = fcQWebSocketServer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebsocketserver_types.QWebSocketServer, s: cstring): string =
  let v_ms = fcQWebSocketServer_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qwebsocketserver_types.QWebSocketServer): bool =
  fcQWebSocketServer_listen(self.h)

proc close*(self: gen_qwebsocketserver_types.QWebSocketServer): void =
  fcQWebSocketServer_close(self.h)

proc isListening*(self: gen_qwebsocketserver_types.QWebSocketServer): bool =
  fcQWebSocketServer_isListening(self.h)

proc setMaxPendingConnections*(self: gen_qwebsocketserver_types.QWebSocketServer, numConnections: cint): void =
  fcQWebSocketServer_setMaxPendingConnections(self.h, numConnections)

proc maxPendingConnections*(self: gen_qwebsocketserver_types.QWebSocketServer): cint =
  fcQWebSocketServer_maxPendingConnections(self.h)

proc setHandshakeTimeout*(self: gen_qwebsocketserver_types.QWebSocketServer, msec: cint): void =
  fcQWebSocketServer_setHandshakeTimeoutWithMsec(self.h, msec)

proc handshakeTimeoutMS*(self: gen_qwebsocketserver_types.QWebSocketServer): cint =
  fcQWebSocketServer_handshakeTimeoutMS(self.h)

proc serverPort*(self: gen_qwebsocketserver_types.QWebSocketServer): cushort =
  fcQWebSocketServer_serverPort(self.h)

proc serverAddress*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQWebSocketServer_serverAddress(self.h))

proc serverUrl*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebSocketServer_serverUrl(self.h))

proc secureMode*(self: gen_qwebsocketserver_types.QWebSocketServer): cint =
  cint(fcQWebSocketServer_secureMode(self.h))

proc setSocketDescriptor*(self: gen_qwebsocketserver_types.QWebSocketServer, socketDescriptor: cint): bool =
  fcQWebSocketServer_setSocketDescriptor(self.h, socketDescriptor)

proc socketDescriptor*(self: gen_qwebsocketserver_types.QWebSocketServer): cint =
  fcQWebSocketServer_socketDescriptor(self.h)

proc setNativeDescriptor*(self: gen_qwebsocketserver_types.QWebSocketServer, descriptor: uint): bool =
  fcQWebSocketServer_setNativeDescriptor(self.h, descriptor)

proc nativeDescriptor*(self: gen_qwebsocketserver_types.QWebSocketServer): uint =
  fcQWebSocketServer_nativeDescriptor(self.h)

proc hasPendingConnections*(self: gen_qwebsocketserver_types.QWebSocketServer): bool =
  fcQWebSocketServer_hasPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qwebsocket_types.QWebSocket =
  gen_qwebsocket_types.QWebSocket(h: fcQWebSocketServer_nextPendingConnection(self.h))

proc error*(self: gen_qwebsocketserver_types.QWebSocketServer): cint =
  cint(fcQWebSocketServer_error(self.h))

proc errorString*(self: gen_qwebsocketserver_types.QWebSocketServer): string =
  let v_ms = fcQWebSocketServer_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pauseAccepting*(self: gen_qwebsocketserver_types.QWebSocketServer): void =
  fcQWebSocketServer_pauseAccepting(self.h)

proc resumeAccepting*(self: gen_qwebsocketserver_types.QWebSocketServer): void =
  fcQWebSocketServer_resumeAccepting(self.h)

proc setServerName*(self: gen_qwebsocketserver_types.QWebSocketServer, serverName: openArray[char]): void =
  fcQWebSocketServer_setServerName(self.h, struct_seaqt_string(data: if len(serverName) > 0: addr serverName[0] else: nil, len: csize_t(len(serverName))))

proc serverName*(self: gen_qwebsocketserver_types.QWebSocketServer): string =
  let v_ms = fcQWebSocketServer_serverName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setProxy*(self: gen_qwebsocketserver_types.QWebSocketServer, networkProxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQWebSocketServer_setProxy(self.h, networkProxy.h)

proc proxy*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQWebSocketServer_proxy(self.h))

proc setSslConfiguration*(self: gen_qwebsocketserver_types.QWebSocketServer, sslConfiguration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQWebSocketServer_setSslConfiguration(self.h, sslConfiguration.h)

proc sslConfiguration*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQWebSocketServer_sslConfiguration(self.h))

proc supportedVersions*(self: gen_qwebsocketserver_types.QWebSocketServer): seq[cint] =
  var v_ma = fcQWebSocketServer_supportedVersions(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc handleConnection*(self: gen_qwebsocketserver_types.QWebSocketServer, socket: gen_qtcpsocket_types.QTcpSocket): void =
  fcQWebSocketServer_handleConnection(self.h, socket.h)

proc acceptError*(self: gen_qwebsocketserver_types.QWebSocketServer, socketError: cint): void =
  fcQWebSocketServer_acceptError(self.h, cint(socketError))

type QWebSocketServeracceptErrorSlot* = proc(socketError: cint)
proc fcQWebSocketServer_slot_callback_acceptError(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServeracceptErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc fcQWebSocketServer_slot_callback_acceptError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServeracceptErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAcceptError*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServeracceptErrorSlot) =
  var tmp = new QWebSocketServeracceptErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_acceptError(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_acceptError, fcQWebSocketServer_slot_callback_acceptError_release)

proc serverError*(self: gen_qwebsocketserver_types.QWebSocketServer, closeCode: cint): void =
  fcQWebSocketServer_serverError(self.h, cint(closeCode))

type QWebSocketServerserverErrorSlot* = proc(closeCode: cint)
proc fcQWebSocketServer_slot_callback_serverError(slot: int, closeCode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServerserverErrorSlot](cast[pointer](slot))
  let slotval1 = cint(closeCode)

  nimfunc[](slotval1)

proc fcQWebSocketServer_slot_callback_serverError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServerserverErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onServerError*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServerserverErrorSlot) =
  var tmp = new QWebSocketServerserverErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_serverError(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_serverError, fcQWebSocketServer_slot_callback_serverError_release)

proc originAuthenticationRequired*(self: gen_qwebsocketserver_types.QWebSocketServer, pAuthenticator: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator): void =
  fcQWebSocketServer_originAuthenticationRequired(self.h, pAuthenticator.h)

type QWebSocketServeroriginAuthenticationRequiredSlot* = proc(pAuthenticator: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator)
proc fcQWebSocketServer_slot_callback_originAuthenticationRequired(slot: int, pAuthenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServeroriginAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator(h: pAuthenticator)

  nimfunc[](slotval1)

proc fcQWebSocketServer_slot_callback_originAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServeroriginAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onOriginAuthenticationRequired*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServeroriginAuthenticationRequiredSlot) =
  var tmp = new QWebSocketServeroriginAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_originAuthenticationRequired(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_originAuthenticationRequired, fcQWebSocketServer_slot_callback_originAuthenticationRequired_release)

proc newConnection*(self: gen_qwebsocketserver_types.QWebSocketServer): void =
  fcQWebSocketServer_newConnection(self.h)

type QWebSocketServernewConnectionSlot* = proc()
proc fcQWebSocketServer_slot_callback_newConnection(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWebSocketServer_slot_callback_newConnection_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServernewConnectionSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNewConnection*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServernewConnectionSlot) =
  var tmp = new QWebSocketServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_newConnection(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_newConnection, fcQWebSocketServer_slot_callback_newConnection_release)

proc peerVerifyError*(self: gen_qwebsocketserver_types.QWebSocketServer, error: gen_qsslerror_types.QSslError): void =
  fcQWebSocketServer_peerVerifyError(self.h, error.h)

type QWebSocketServerpeerVerifyErrorSlot* = proc(error: gen_qsslerror_types.QSslError)
proc fcQWebSocketServer_slot_callback_peerVerifyError(slot: int, error: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServerpeerVerifyErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslerror_types.QSslError(h: error)

  nimfunc[](slotval1)

proc fcQWebSocketServer_slot_callback_peerVerifyError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServerpeerVerifyErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPeerVerifyError*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServerpeerVerifyErrorSlot) =
  var tmp = new QWebSocketServerpeerVerifyErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_peerVerifyError(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_peerVerifyError, fcQWebSocketServer_slot_callback_peerVerifyError_release)

proc sslErrors*(self: gen_qwebsocketserver_types.QWebSocketServer, errors: openArray[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQWebSocketServer_sslErrors(self.h, struct_seaqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QWebSocketServersslErrorsSlot* = proc(errors: openArray[gen_qsslerror_types.QSslError])
proc fcQWebSocketServer_slot_callback_sslErrors(slot: int, errors: struct_seaqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServersslErrorsSlot](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i])
  c_free(verrors_ma.data)
  let slotval1 = verrorsx_ret

  nimfunc[](slotval1)

proc fcQWebSocketServer_slot_callback_sslErrors_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServersslErrorsSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSslErrors*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServersslErrorsSlot) =
  var tmp = new QWebSocketServersslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_sslErrors(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_sslErrors, fcQWebSocketServer_slot_callback_sslErrors_release)

proc preSharedKeyAuthenticationRequired*(self: gen_qwebsocketserver_types.QWebSocketServer, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQWebSocketServer_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

type QWebSocketServerpreSharedKeyAuthenticationRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc fcQWebSocketServer_slot_callback_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServerpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1)

proc fcQWebSocketServer_slot_callback_preSharedKeyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServerpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPreSharedKeyAuthenticationRequired*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServerpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QWebSocketServerpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_preSharedKeyAuthenticationRequired, fcQWebSocketServer_slot_callback_preSharedKeyAuthenticationRequired_release)

proc closed*(self: gen_qwebsocketserver_types.QWebSocketServer): void =
  fcQWebSocketServer_closed(self.h)

type QWebSocketServerclosedSlot* = proc()
proc fcQWebSocketServer_slot_callback_closed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebSocketServerclosedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWebSocketServer_slot_callback_closed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebSocketServerclosedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onClosed*(self: gen_qwebsocketserver_types.QWebSocketServer, slot: QWebSocketServerclosedSlot) =
  var tmp = new QWebSocketServerclosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSocketServer_connect_closed(self.h, cast[int](addr tmp[]), fcQWebSocketServer_slot_callback_closed, fcQWebSocketServer_slot_callback_closed_release)

proc tr*(_: type gen_qwebsocketserver_types.QWebSocketServer, s: cstring, c: cstring): string =
  let v_ms = fcQWebSocketServer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebsocketserver_types.QWebSocketServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSocketServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebsocketserver_types.QWebSocketServer, s: cstring, c: cstring): string =
  let v_ms = fcQWebSocketServer_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebsocketserver_types.QWebSocketServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSocketServer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qwebsocketserver_types.QWebSocketServer, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQWebSocketServer_listenWithAddress(self.h, address.h)

proc listen*(self: gen_qwebsocketserver_types.QWebSocketServer, address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQWebSocketServer_listen2(self.h, address.h, port)

type QWebSocketServermetaObjectProc* = proc(self: QWebSocketServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebSocketServermetacastProc* = proc(self: QWebSocketServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebSocketServermetacallProc* = proc(self: QWebSocketServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebSocketServernextPendingConnectionProc* = proc(self: QWebSocketServer): gen_qwebsocket_types.QWebSocket {.raises: [], gcsafe.}
type QWebSocketServereventProc* = proc(self: QWebSocketServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebSocketServereventFilterProc* = proc(self: QWebSocketServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebSocketServertimerEventProc* = proc(self: QWebSocketServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebSocketServerchildEventProc* = proc(self: QWebSocketServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebSocketServercustomEventProc* = proc(self: QWebSocketServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebSocketServerconnectNotifyProc* = proc(self: QWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebSocketServerdisconnectNotifyProc* = proc(self: QWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebSocketServerVTable* = object
  vtbl: cQWebSocketServerVTable
  metaObject*: QWebSocketServermetaObjectProc
  metacast*: QWebSocketServermetacastProc
  metacall*: QWebSocketServermetacallProc
  nextPendingConnection*: QWebSocketServernextPendingConnectionProc
  event*: QWebSocketServereventProc
  eventFilter*: QWebSocketServereventFilterProc
  timerEvent*: QWebSocketServertimerEventProc
  childEvent*: QWebSocketServerchildEventProc
  customEvent*: QWebSocketServercustomEventProc
  connectNotify*: QWebSocketServerconnectNotifyProc
  disconnectNotify*: QWebSocketServerdisconnectNotifyProc

proc QWebSocketServermetaObject*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSocketServer_virtualbase_metaObject(self.h))

proc QWebSocketServermetacast*(self: gen_qwebsocketserver_types.QWebSocketServer, param1: cstring): pointer =
  fcQWebSocketServer_virtualbase_metacast(self.h, param1)

proc QWebSocketServermetacall*(self: gen_qwebsocketserver_types.QWebSocketServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebSocketServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QWebSocketServernextPendingConnection*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qwebsocket_types.QWebSocket =
  gen_qwebsocket_types.QWebSocket(h: fcQWebSocketServer_virtualbase_nextPendingConnection(self.h))

proc QWebSocketServerevent*(self: gen_qwebsocketserver_types.QWebSocketServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebSocketServer_virtualbase_event(self.h, event.h)

proc QWebSocketServereventFilter*(self: gen_qwebsocketserver_types.QWebSocketServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebSocketServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QWebSocketServertimerEvent*(self: gen_qwebsocketserver_types.QWebSocketServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebSocketServer_virtualbase_timerEvent(self.h, event.h)

proc QWebSocketServerchildEvent*(self: gen_qwebsocketserver_types.QWebSocketServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebSocketServer_virtualbase_childEvent(self.h, event.h)

proc QWebSocketServercustomEvent*(self: gen_qwebsocketserver_types.QWebSocketServer, event: gen_qcoreevent_types.QEvent): void =
  fcQWebSocketServer_virtualbase_customEvent(self.h, event.h)

proc QWebSocketServerconnectNotify*(self: gen_qwebsocketserver_types.QWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebSocketServer_virtualbase_connectNotify(self.h, signal.h)

proc QWebSocketServerdisconnectNotify*(self: gen_qwebsocketserver_types.QWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebSocketServer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQWebSocketServer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQWebSocketServer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQWebSocketServer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebSocketServer_vtable_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  var virtualReturn = vtbl[].nextPendingConnection(self)
  virtualReturn.h

proc fcQWebSocketServer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQWebSocketServer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQWebSocketServer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQWebSocketServer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQWebSocketServer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQWebSocketServer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQWebSocketServer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
  let self = QWebSocketServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebSocketServer* {.inheritable.} = ref object of QWebSocketServer
  vtbl*: cQWebSocketServerVTable

method metaObject*(self: VirtualQWebSocketServer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebSocketServermetaObject(self[])
method metacast*(self: VirtualQWebSocketServer, param1: cstring): pointer {.base.} =
  QWebSocketServermetacast(self[], param1)
method metacall*(self: VirtualQWebSocketServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebSocketServermetacall(self[], param1, param2, param3)
method nextPendingConnection*(self: VirtualQWebSocketServer): gen_qwebsocket_types.QWebSocket {.base.} =
  QWebSocketServernextPendingConnection(self[])
method event*(self: VirtualQWebSocketServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebSocketServerevent(self[], event)
method eventFilter*(self: VirtualQWebSocketServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebSocketServereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQWebSocketServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebSocketServertimerEvent(self[], event)
method childEvent*(self: VirtualQWebSocketServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebSocketServerchildEvent(self[], event)
method customEvent*(self: VirtualQWebSocketServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebSocketServercustomEvent(self[], event)
method connectNotify*(self: VirtualQWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebSocketServerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebSocketServerdisconnectNotify(self[], signal)

proc fcQWebSocketServer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQWebSocketServer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQWebSocketServer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWebSocketServer_method_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  var virtualReturn = inst.nextPendingConnection()
  virtualReturn.h

proc fcQWebSocketServer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQWebSocketServer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQWebSocketServer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQWebSocketServer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQWebSocketServer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQWebSocketServer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQWebSocketServer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebSocketServer](fcQWebSocketServer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qwebsocketserver_types.QWebSocketServer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebSocketServer_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebsocketserver_types.QWebSocketServer): cint =
  fcQWebSocketServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebsocketserver_types.QWebSocketServer, signal: cstring): cint =
  fcQWebSocketServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebsocketserver_types.QWebSocketServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebSocketServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebsocketserver_types.QWebSocketServer,
    serverName: openArray[char], secureMode: cint,
    vtbl: ref QWebSocketServerVTable = nil): gen_qwebsocketserver_types.QWebSocketServer =
  let vtbl = if vtbl == nil: new QWebSocketServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebSocketServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebSocketServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebSocketServer_vtable_callback_metacall
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = fcQWebSocketServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebSocketServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebSocketServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebSocketServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebSocketServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebSocketServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebSocketServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebSocketServer_vtable_callback_disconnectNotify
  let tmp = gen_qwebsocketserver_types.QWebSocketServer(h: fcQWebSocketServer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(serverName) > 0: addr serverName[0] else: nil, len: csize_t(len(serverName))), cint(secureMode)))
  fcQWebSocketServer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qwebsocketserver_types.QWebSocketServer,
    serverName: openArray[char], secureMode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QWebSocketServerVTable = nil): gen_qwebsocketserver_types.QWebSocketServer =
  let vtbl = if vtbl == nil: new QWebSocketServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebSocketServerVTable](fcQWebSocketServer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWebSocketServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWebSocketServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWebSocketServer_vtable_callback_metacall
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = fcQWebSocketServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWebSocketServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWebSocketServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWebSocketServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWebSocketServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWebSocketServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWebSocketServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWebSocketServer_vtable_callback_disconnectNotify
  let tmp = gen_qwebsocketserver_types.QWebSocketServer(h: fcQWebSocketServer_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(serverName) > 0: addr serverName[0] else: nil, len: csize_t(len(serverName))), cint(secureMode), parent.h))
  fcQWebSocketServer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQWebSocketServer_mvtbl = cQWebSocketServerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebSocketServer()[])](self.fcQWebSocketServer_vdata()[])
    inst[].h = nil,

  metaObject: fcQWebSocketServer_method_callback_metaObject,
  metacast: fcQWebSocketServer_method_callback_metacast,
  metacall: fcQWebSocketServer_method_callback_metacall,
  nextPendingConnection: fcQWebSocketServer_method_callback_nextPendingConnection,
  event: fcQWebSocketServer_method_callback_event,
  eventFilter: fcQWebSocketServer_method_callback_eventFilter,
  timerEvent: fcQWebSocketServer_method_callback_timerEvent,
  childEvent: fcQWebSocketServer_method_callback_childEvent,
  customEvent: fcQWebSocketServer_method_callback_customEvent,
  connectNotify: fcQWebSocketServer_method_callback_connectNotify,
  disconnectNotify: fcQWebSocketServer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebsocketserver_types.QWebSocketServer,
    serverName: openArray[char], secureMode: cint,
    inst: VirtualQWebSocketServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebSocketServer_new(addr(cQWebSocketServer_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(serverName) > 0: addr serverName[0] else: nil, len: csize_t(len(serverName))), cint(secureMode))
  fcQWebSocketServer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qwebsocketserver_types.QWebSocketServer,
    serverName: openArray[char], secureMode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQWebSocketServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebSocketServer_new2(addr(cQWebSocketServer_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(serverName) > 0: addr serverName[0] else: nil, len: csize_t(len(serverName))), cint(secureMode), parent.h)
  fcQWebSocketServer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebsocketserver_types.QWebSocketServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSocketServer_staticMetaObject())
proc delete*(self: gen_qwebsocketserver_types.QWebSocketServer) =
  fcQWebSocketServer_delete(self.h)
