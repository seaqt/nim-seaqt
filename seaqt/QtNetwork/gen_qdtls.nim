import ./qtnetwork_pkg

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


type QDtlsErrorEnum* = distinct uint8
template NoError*(_: type QDtlsErrorEnum): untyped = 0
template InvalidInputParameters*(_: type QDtlsErrorEnum): untyped = 1
template InvalidOperation*(_: type QDtlsErrorEnum): untyped = 2
template UnderlyingSocketError*(_: type QDtlsErrorEnum): untyped = 3
template RemoteClosedConnectionError*(_: type QDtlsErrorEnum): untyped = 4
template PeerVerificationError*(_: type QDtlsErrorEnum): untyped = 5
template TlsInitializationError*(_: type QDtlsErrorEnum): untyped = 6
template TlsFatalError*(_: type QDtlsErrorEnum): untyped = 7
template TlsNonFatalError*(_: type QDtlsErrorEnum): untyped = 8


type QDtlsHandshakeStateEnum* = distinct cint
template HandshakeNotStarted*(_: type QDtlsHandshakeStateEnum): untyped = 0
template HandshakeInProgress*(_: type QDtlsHandshakeStateEnum): untyped = 1
template PeerVerificationFailed*(_: type QDtlsHandshakeStateEnum): untyped = 2
template HandshakeComplete*(_: type QDtlsHandshakeStateEnum): untyped = 3


import ./gen_qdtls_types
export gen_qdtls_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qhostaddress_types,
  ./gen_qsslcipher_types,
  ./gen_qsslconfiguration_types,
  ./gen_qsslerror_types,
  ./gen_qsslpresharedkeyauthenticator_types,
  ./gen_qudpsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qhostaddress_types,
  gen_qsslcipher_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types,
  gen_qudpsocket_types

type cQDtlsClientVerifier*{.exportc: "QDtlsClientVerifier", incompleteStruct.} = object
type cQDtls*{.exportc: "QDtls", incompleteStruct.} = object
type cQDtlsClientVerifierGeneratorParameters*{.exportc: "QDtlsClientVerifier__GeneratorParameters", incompleteStruct.} = object

proc fcQDtlsClientVerifier_metaObject(self: pointer): pointer {.importc: "QDtlsClientVerifier_metaObject".}
proc fcQDtlsClientVerifier_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtlsClientVerifier_metacast".}
proc fcQDtlsClientVerifier_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtlsClientVerifier_metacall".}
proc fcQDtlsClientVerifier_tr(s: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr".}
proc fcQDtlsClientVerifier_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtlsClientVerifier_setCookieGeneratorParameters".}
proc fcQDtlsClientVerifier_cookieGeneratorParameters(self: pointer): pointer {.importc: "QDtlsClientVerifier_cookieGeneratorParameters".}
proc fcQDtlsClientVerifier_verifyClient(self: pointer, socket: pointer, dgram: struct_miqt_string, address: pointer, port: cushort): bool {.importc: "QDtlsClientVerifier_verifyClient".}
proc fcQDtlsClientVerifier_verifiedHello(self: pointer): struct_miqt_string {.importc: "QDtlsClientVerifier_verifiedHello".}
proc fcQDtlsClientVerifier_dtlsError(self: pointer): cint {.importc: "QDtlsClientVerifier_dtlsError".}
proc fcQDtlsClientVerifier_dtlsErrorString(self: pointer): struct_miqt_string {.importc: "QDtlsClientVerifier_dtlsErrorString".}
proc fcQDtlsClientVerifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr2".}
proc fcQDtlsClientVerifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtlsClientVerifier_tr3".}
proc fcQDtlsClientVerifier_vtbl(self: pointer): pointer {.importc: "QDtlsClientVerifier_vtbl".}
proc fcQDtlsClientVerifier_vdata(self: pointer): pointer {.importc: "QDtlsClientVerifier_vdata".}

type cQDtlsClientVerifierVTable {.pure.} = object
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
proc fcQDtlsClientVerifier_virtualbase_metaObject(self: pointer): pointer {.importc: "QDtlsClientVerifier_virtualbase_metaObject".}
proc fcQDtlsClientVerifier_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtlsClientVerifier_virtualbase_metacast".}
proc fcQDtlsClientVerifier_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtlsClientVerifier_virtualbase_metacall".}
proc fcQDtlsClientVerifier_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDtlsClientVerifier_virtualbase_event".}
proc fcQDtlsClientVerifier_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDtlsClientVerifier_virtualbase_eventFilter".}
proc fcQDtlsClientVerifier_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_timerEvent".}
proc fcQDtlsClientVerifier_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_childEvent".}
proc fcQDtlsClientVerifier_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_customEvent".}
proc fcQDtlsClientVerifier_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_connectNotify".}
proc fcQDtlsClientVerifier_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_disconnectNotify".}
proc fcQDtlsClientVerifier_protectedbase_sender(self: pointer): pointer {.importc: "QDtlsClientVerifier_protectedbase_sender".}
proc fcQDtlsClientVerifier_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDtlsClientVerifier_protectedbase_senderSignalIndex".}
proc fcQDtlsClientVerifier_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDtlsClientVerifier_protectedbase_receivers".}
proc fcQDtlsClientVerifier_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDtlsClientVerifier_protectedbase_isSignalConnected".}
proc fcQDtlsClientVerifier_new(vtbl, vdata: pointer): ptr cQDtlsClientVerifier {.importc: "QDtlsClientVerifier_new".}
proc fcQDtlsClientVerifier_new2(vtbl, vdata: pointer, parent: pointer): ptr cQDtlsClientVerifier {.importc: "QDtlsClientVerifier_new2".}
proc fcQDtlsClientVerifier_staticMetaObject(): pointer {.importc: "QDtlsClientVerifier_staticMetaObject".}
proc fcQDtls_metaObject(self: pointer): pointer {.importc: "QDtls_metaObject".}
proc fcQDtls_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtls_metacast".}
proc fcQDtls_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtls_metacall".}
proc fcQDtls_tr(s: cstring): struct_miqt_string {.importc: "QDtls_tr".}
proc fcQDtls_setPeer(self: pointer, address: pointer, port: cushort): bool {.importc: "QDtls_setPeer".}
proc fcQDtls_setPeerVerificationName(self: pointer, name: struct_miqt_string): bool {.importc: "QDtls_setPeerVerificationName".}
proc fcQDtls_peerAddress(self: pointer): pointer {.importc: "QDtls_peerAddress".}
proc fcQDtls_peerPort(self: pointer): cushort {.importc: "QDtls_peerPort".}
proc fcQDtls_peerVerificationName(self: pointer): struct_miqt_string {.importc: "QDtls_peerVerificationName".}
proc fcQDtls_sslMode(self: pointer): cint {.importc: "QDtls_sslMode".}
proc fcQDtls_setMtuHint(self: pointer, mtuHint: cushort): void {.importc: "QDtls_setMtuHint".}
proc fcQDtls_mtuHint(self: pointer): cushort {.importc: "QDtls_mtuHint".}
proc fcQDtls_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtls_setCookieGeneratorParameters".}
proc fcQDtls_cookieGeneratorParameters(self: pointer): pointer {.importc: "QDtls_cookieGeneratorParameters".}
proc fcQDtls_setDtlsConfiguration(self: pointer, configuration: pointer): bool {.importc: "QDtls_setDtlsConfiguration".}
proc fcQDtls_dtlsConfiguration(self: pointer): pointer {.importc: "QDtls_dtlsConfiguration".}
proc fcQDtls_handshakeState(self: pointer): cint {.importc: "QDtls_handshakeState".}
proc fcQDtls_doHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_doHandshake".}
proc fcQDtls_handleTimeout(self: pointer, socket: pointer): bool {.importc: "QDtls_handleTimeout".}
proc fcQDtls_resumeHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_resumeHandshake".}
proc fcQDtls_abortHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_abortHandshake".}
proc fcQDtls_shutdown(self: pointer, socket: pointer): bool {.importc: "QDtls_shutdown".}
proc fcQDtls_isConnectionEncrypted(self: pointer): bool {.importc: "QDtls_isConnectionEncrypted".}
proc fcQDtls_sessionCipher(self: pointer): pointer {.importc: "QDtls_sessionCipher".}
proc fcQDtls_sessionProtocol(self: pointer): cint {.importc: "QDtls_sessionProtocol".}
proc fcQDtls_writeDatagramEncrypted(self: pointer, socket: pointer, dgram: struct_miqt_string): clonglong {.importc: "QDtls_writeDatagramEncrypted".}
proc fcQDtls_decryptDatagram(self: pointer, socket: pointer, dgram: struct_miqt_string): struct_miqt_string {.importc: "QDtls_decryptDatagram".}
proc fcQDtls_dtlsError(self: pointer): cint {.importc: "QDtls_dtlsError".}
proc fcQDtls_dtlsErrorString(self: pointer): struct_miqt_string {.importc: "QDtls_dtlsErrorString".}
proc fcQDtls_peerVerificationErrors(self: pointer): struct_miqt_array {.importc: "QDtls_peerVerificationErrors".}
proc fcQDtls_ignoreVerificationErrors(self: pointer, errorsToIgnore: struct_miqt_array): void {.importc: "QDtls_ignoreVerificationErrors".}
proc fcQDtls_pskRequired(self: pointer, authenticator: pointer): void {.importc: "QDtls_pskRequired".}
proc fcQDtls_connect_pskRequired(self: pointer, slot: int, callback: proc (slot: int, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDtls_connect_pskRequired".}
proc fcQDtls_handshakeTimeout(self: pointer): void {.importc: "QDtls_handshakeTimeout".}
proc fcQDtls_connect_handshakeTimeout(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDtls_connect_handshakeTimeout".}
proc fcQDtls_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtls_tr2".}
proc fcQDtls_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtls_tr3".}
proc fcQDtls_setPeer3(self: pointer, address: pointer, port: cushort, verificationName: struct_miqt_string): bool {.importc: "QDtls_setPeer3".}
proc fcQDtls_doHandshake2(self: pointer, socket: pointer, dgram: struct_miqt_string): bool {.importc: "QDtls_doHandshake2".}
proc fcQDtls_vtbl(self: pointer): pointer {.importc: "QDtls_vtbl".}
proc fcQDtls_vdata(self: pointer): pointer {.importc: "QDtls_vdata".}

type cQDtlsVTable {.pure.} = object
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
proc fcQDtls_virtualbase_metaObject(self: pointer): pointer {.importc: "QDtls_virtualbase_metaObject".}
proc fcQDtls_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtls_virtualbase_metacast".}
proc fcQDtls_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtls_virtualbase_metacall".}
proc fcQDtls_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDtls_virtualbase_event".}
proc fcQDtls_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDtls_virtualbase_eventFilter".}
proc fcQDtls_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDtls_virtualbase_timerEvent".}
proc fcQDtls_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDtls_virtualbase_childEvent".}
proc fcQDtls_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDtls_virtualbase_customEvent".}
proc fcQDtls_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDtls_virtualbase_connectNotify".}
proc fcQDtls_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDtls_virtualbase_disconnectNotify".}
proc fcQDtls_protectedbase_sender(self: pointer): pointer {.importc: "QDtls_protectedbase_sender".}
proc fcQDtls_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDtls_protectedbase_senderSignalIndex".}
proc fcQDtls_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDtls_protectedbase_receivers".}
proc fcQDtls_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDtls_protectedbase_isSignalConnected".}
proc fcQDtls_new(vtbl, vdata: pointer, mode: cint): ptr cQDtls {.importc: "QDtls_new".}
proc fcQDtls_new2(vtbl, vdata: pointer, mode: cint, parent: pointer): ptr cQDtls {.importc: "QDtls_new2".}
proc fcQDtls_staticMetaObject(): pointer {.importc: "QDtls_staticMetaObject".}
proc fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDtlsClientVerifier__GeneratorParameters_operatorAssign".}
proc fcQDtlsClientVerifierGeneratorParameters_new(): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new".}
proc fcQDtlsClientVerifierGeneratorParameters_new2(a: cint, s: struct_miqt_string): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new2".}
proc fcQDtlsClientVerifierGeneratorParameters_new3(param1: pointer): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new3".}

proc metaObject*(self: gen_qdtls_types.QDtlsClientVerifier): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtlsClientVerifier_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cstring): pointer =
  fcQDtlsClientVerifier_metacast(self.h, param1)

proc metacall*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtlsClientVerifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring): string =
  let v_ms = fcQDtlsClientVerifier_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCookieGeneratorParameters*(self: gen_qdtls_types.QDtlsClientVerifier, params: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): bool =
  fcQDtlsClientVerifier_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: gen_qdtls_types.QDtlsClientVerifier): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifier_cookieGeneratorParameters(self.h), owned: true)

proc verifyClient*(self: gen_qdtls_types.QDtlsClientVerifier, socket: gen_qudpsocket_types.QUdpSocket, dgram: openArray[byte], address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQDtlsClientVerifier_verifyClient(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))), address.h, port)

proc verifiedHello*(self: gen_qdtls_types.QDtlsClientVerifier): seq[byte] =
  var v_bytearray = fcQDtlsClientVerifier_verifiedHello(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: gen_qdtls_types.QDtlsClientVerifier): cint =
  cint(fcQDtlsClientVerifier_dtlsError(self.h))

proc dtlsErrorString*(self: gen_qdtls_types.QDtlsClientVerifier): string =
  let v_ms = fcQDtlsClientVerifier_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring): string =
  let v_ms = fcQDtlsClientVerifier_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDtlsClientVerifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDtlsClientVerifiermetaObjectProc* = proc(self: QDtlsClientVerifier): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDtlsClientVerifiermetacastProc* = proc(self: QDtlsClientVerifier, param1: cstring): pointer {.raises: [], gcsafe.}
type QDtlsClientVerifiermetacallProc* = proc(self: QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDtlsClientVerifiereventProc* = proc(self: QDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDtlsClientVerifiereventFilterProc* = proc(self: QDtlsClientVerifier, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDtlsClientVerifiertimerEventProc* = proc(self: QDtlsClientVerifier, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDtlsClientVerifierchildEventProc* = proc(self: QDtlsClientVerifier, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDtlsClientVerifiercustomEventProc* = proc(self: QDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDtlsClientVerifierconnectNotifyProc* = proc(self: QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDtlsClientVerifierdisconnectNotifyProc* = proc(self: QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDtlsClientVerifierVTable* {.inheritable, pure.} = object
  vtbl: cQDtlsClientVerifierVTable
  metaObject*: QDtlsClientVerifiermetaObjectProc
  metacast*: QDtlsClientVerifiermetacastProc
  metacall*: QDtlsClientVerifiermetacallProc
  event*: QDtlsClientVerifiereventProc
  eventFilter*: QDtlsClientVerifiereventFilterProc
  timerEvent*: QDtlsClientVerifiertimerEventProc
  childEvent*: QDtlsClientVerifierchildEventProc
  customEvent*: QDtlsClientVerifiercustomEventProc
  connectNotify*: QDtlsClientVerifierconnectNotifyProc
  disconnectNotify*: QDtlsClientVerifierdisconnectNotifyProc

proc QDtlsClientVerifiermetaObject*(self: gen_qdtls_types.QDtlsClientVerifier): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtlsClientVerifier_virtualbase_metaObject(self.h), owned: false)

proc QDtlsClientVerifiermetacast*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cstring): pointer =
  fcQDtlsClientVerifier_virtualbase_metacast(self.h, param1)

proc QDtlsClientVerifiermetacall*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtlsClientVerifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDtlsClientVerifierevent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtlsClientVerifier_virtualbase_event(self.h, event.h)

proc QDtlsClientVerifiereventFilter*(self: gen_qdtls_types.QDtlsClientVerifier, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtlsClientVerifier_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDtlsClientVerifiertimerEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDtlsClientVerifier_virtualbase_timerEvent(self.h, event.h)

proc QDtlsClientVerifierchildEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDtlsClientVerifier_virtualbase_childEvent(self.h, event.h)

proc QDtlsClientVerifiercustomEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): void =
  fcQDtlsClientVerifier_virtualbase_customEvent(self.h, event.h)

proc QDtlsClientVerifierconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtlsClientVerifier_virtualbase_connectNotify(self.h, signal.h)

proc QDtlsClientVerifierdisconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtlsClientVerifier_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDtlsClientVerifier_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDtlsClientVerifier_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDtlsClientVerifier_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDtlsClientVerifier_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDtlsClientVerifier_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDtlsClientVerifier_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDtlsClientVerifier_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDtlsClientVerifier_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDtlsClientVerifier_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDtlsClientVerifier_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDtlsClientVerifier* {.inheritable.} = ref object of QDtlsClientVerifier
  vtbl*: cQDtlsClientVerifierVTable

method metaObject*(self: VirtualQDtlsClientVerifier): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDtlsClientVerifiermetaObject(self[])
method metacast*(self: VirtualQDtlsClientVerifier, param1: cstring): pointer {.base.} =
  QDtlsClientVerifiermetacast(self[], param1)
method metacall*(self: VirtualQDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDtlsClientVerifiermetacall(self[], param1, param2, param3)
method event*(self: VirtualQDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDtlsClientVerifierevent(self[], event)
method eventFilter*(self: VirtualQDtlsClientVerifier, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDtlsClientVerifiereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDtlsClientVerifier, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDtlsClientVerifiertimerEvent(self[], event)
method childEvent*(self: VirtualQDtlsClientVerifier, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDtlsClientVerifierchildEvent(self[], event)
method customEvent*(self: VirtualQDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDtlsClientVerifiercustomEvent(self[], event)
method connectNotify*(self: VirtualQDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDtlsClientVerifierconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDtlsClientVerifierdisconnectNotify(self[], signal)

proc fcQDtlsClientVerifier_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDtlsClientVerifier_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDtlsClientVerifier_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDtlsClientVerifier_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDtlsClientVerifier_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDtlsClientVerifier_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDtlsClientVerifier_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDtlsClientVerifier_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDtlsClientVerifier_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDtlsClientVerifier_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtlsClientVerifier](fcQDtlsClientVerifier_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qdtls_types.QDtlsClientVerifier): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDtlsClientVerifier_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdtls_types.QDtlsClientVerifier): cint =
  fcQDtlsClientVerifier_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdtls_types.QDtlsClientVerifier, signal: cstring): cint =
  fcQDtlsClientVerifier_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDtlsClientVerifier_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifier,
    vtbl: ref QDtlsClientVerifierVTable = nil): gen_qdtls_types.QDtlsClientVerifier =
  let vtbl = if vtbl == nil: new QDtlsClientVerifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDtlsClientVerifier_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDtlsClientVerifier_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDtlsClientVerifier_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDtlsClientVerifier_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDtlsClientVerifier_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDtlsClientVerifier_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDtlsClientVerifier_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDtlsClientVerifier_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDtlsClientVerifier_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDtlsClientVerifier_vtable_callback_disconnectNotify
  gen_qdtls_types.QDtlsClientVerifier(h: fcQDtlsClientVerifier_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifier,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDtlsClientVerifierVTable = nil): gen_qdtls_types.QDtlsClientVerifier =
  let vtbl = if vtbl == nil: new QDtlsClientVerifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDtlsClientVerifierVTable](fcQDtlsClientVerifier_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDtlsClientVerifier_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDtlsClientVerifier_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDtlsClientVerifier_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDtlsClientVerifier_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDtlsClientVerifier_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDtlsClientVerifier_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDtlsClientVerifier_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDtlsClientVerifier_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDtlsClientVerifier_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDtlsClientVerifier_vtable_callback_disconnectNotify
  gen_qdtls_types.QDtlsClientVerifier(h: fcQDtlsClientVerifier_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQDtlsClientVerifier_mvtbl = cQDtlsClientVerifierVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDtlsClientVerifier()[])](self.fcQDtlsClientVerifier_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDtlsClientVerifier_method_callback_metaObject,
  metacast: fcQDtlsClientVerifier_method_callback_metacast,
  metacall: fcQDtlsClientVerifier_method_callback_metacall,
  event: fcQDtlsClientVerifier_method_callback_event,
  eventFilter: fcQDtlsClientVerifier_method_callback_eventFilter,
  timerEvent: fcQDtlsClientVerifier_method_callback_timerEvent,
  childEvent: fcQDtlsClientVerifier_method_callback_childEvent,
  customEvent: fcQDtlsClientVerifier_method_callback_customEvent,
  connectNotify: fcQDtlsClientVerifier_method_callback_connectNotify,
  disconnectNotify: fcQDtlsClientVerifier_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdtls_types.QDtlsClientVerifier,
    inst: VirtualQDtlsClientVerifier) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDtlsClientVerifier_new(addr(cQDtlsClientVerifier_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdtls_types.QDtlsClientVerifier,
    parent: gen_qobject_types.QObject,
    inst: VirtualQDtlsClientVerifier) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDtlsClientVerifier_new2(addr(cQDtlsClientVerifier_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdtls_types.QDtlsClientVerifier): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtlsClientVerifier_staticMetaObject())
proc metaObject*(self: gen_qdtls_types.QDtls): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtls_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdtls_types.QDtls, param1: cstring): pointer =
  fcQDtls_metacast(self.h, param1)

proc metacall*(self: gen_qdtls_types.QDtls, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtls_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring): string =
  let v_ms = fcQDtls_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPeer*(self: gen_qdtls_types.QDtls, address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQDtls_setPeer(self.h, address.h, port)

proc setPeerVerificationName*(self: gen_qdtls_types.QDtls, name: openArray[char]): bool =
  fcQDtls_setPeerVerificationName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc peerAddress*(self: gen_qdtls_types.QDtls): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQDtls_peerAddress(self.h), owned: true)

proc peerPort*(self: gen_qdtls_types.QDtls): cushort =
  fcQDtls_peerPort(self.h)

proc peerVerificationName*(self: gen_qdtls_types.QDtls): string =
  let v_ms = fcQDtls_peerVerificationName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sslMode*(self: gen_qdtls_types.QDtls): cint =
  cint(fcQDtls_sslMode(self.h))

proc setMtuHint*(self: gen_qdtls_types.QDtls, mtuHint: cushort): void =
  fcQDtls_setMtuHint(self.h, mtuHint)

proc mtuHint*(self: gen_qdtls_types.QDtls): cushort =
  fcQDtls_mtuHint(self.h)

proc setCookieGeneratorParameters*(self: gen_qdtls_types.QDtls, params: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): bool =
  fcQDtls_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: gen_qdtls_types.QDtls): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtls_cookieGeneratorParameters(self.h), owned: true)

proc setDtlsConfiguration*(self: gen_qdtls_types.QDtls, configuration: gen_qsslconfiguration_types.QSslConfiguration): bool =
  fcQDtls_setDtlsConfiguration(self.h, configuration.h)

proc dtlsConfiguration*(self: gen_qdtls_types.QDtls): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQDtls_dtlsConfiguration(self.h), owned: true)

proc handshakeState*(self: gen_qdtls_types.QDtls): cint =
  cint(fcQDtls_handshakeState(self.h))

proc doHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket): bool =
  fcQDtls_doHandshake(self.h, socket.h)

proc handleTimeout*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket): bool =
  fcQDtls_handleTimeout(self.h, socket.h)

proc resumeHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket): bool =
  fcQDtls_resumeHandshake(self.h, socket.h)

proc abortHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket): bool =
  fcQDtls_abortHandshake(self.h, socket.h)

proc shutdown*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket): bool =
  fcQDtls_shutdown(self.h, socket.h)

proc isConnectionEncrypted*(self: gen_qdtls_types.QDtls): bool =
  fcQDtls_isConnectionEncrypted(self.h)

proc sessionCipher*(self: gen_qdtls_types.QDtls): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher(h: fcQDtls_sessionCipher(self.h), owned: true)

proc sessionProtocol*(self: gen_qdtls_types.QDtls): cint =
  cint(fcQDtls_sessionProtocol(self.h))

proc writeDatagramEncrypted*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket, dgram: openArray[byte]): clonglong =
  fcQDtls_writeDatagramEncrypted(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

proc decryptDatagram*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket, dgram: openArray[byte]): seq[byte] =
  var v_bytearray = fcQDtls_decryptDatagram(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: gen_qdtls_types.QDtls): cint =
  cint(fcQDtls_dtlsError(self.h))

proc dtlsErrorString*(self: gen_qdtls_types.QDtls): string =
  let v_ms = fcQDtls_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc peerVerificationErrors*(self: gen_qdtls_types.QDtls): seq[gen_qsslerror_types.QSslError] =
  var v_ma = fcQDtls_peerVerificationErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc ignoreVerificationErrors*(self: gen_qdtls_types.QDtls, errorsToIgnore: openArray[gen_qsslerror_types.QSslError]): void =
  var errorsToIgnore_CArray = newSeq[pointer](len(errorsToIgnore))
  for i in 0..<len(errorsToIgnore):
    errorsToIgnore_CArray[i] = errorsToIgnore[i].h

  fcQDtls_ignoreVerificationErrors(self.h, struct_miqt_array(len: csize_t(len(errorsToIgnore)), data: if len(errorsToIgnore) == 0: nil else: addr(errorsToIgnore_CArray[0])))

proc pskRequired*(self: gen_qdtls_types.QDtls, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQDtls_pskRequired(self.h, authenticator.h)

type QDtlspskRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc fcQDtls_slot_callback_pskRequired(slot: int, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDtlspskRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator, owned: false)

  nimfunc[](slotval1)

proc fcQDtls_slot_callback_pskRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDtlspskRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPskRequired*(self: gen_qdtls_types.QDtls, slot: QDtlspskRequiredSlot) =
  var tmp = new QDtlspskRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_connect_pskRequired(self.h, cast[int](addr tmp[]), fcQDtls_slot_callback_pskRequired, fcQDtls_slot_callback_pskRequired_release)

proc handshakeTimeout*(self: gen_qdtls_types.QDtls): void =
  fcQDtls_handshakeTimeout(self.h)

type QDtlshandshakeTimeoutSlot* = proc()
proc fcQDtls_slot_callback_handshakeTimeout(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDtlshandshakeTimeoutSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDtls_slot_callback_handshakeTimeout_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDtlshandshakeTimeoutSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHandshakeTimeout*(self: gen_qdtls_types.QDtls, slot: QDtlshandshakeTimeoutSlot) =
  var tmp = new QDtlshandshakeTimeoutSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_connect_handshakeTimeout(self.h, cast[int](addr tmp[]), fcQDtls_slot_callback_handshakeTimeout, fcQDtls_slot_callback_handshakeTimeout_release)

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring): string =
  let v_ms = fcQDtls_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDtls_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPeer*(self: gen_qdtls_types.QDtls, address: gen_qhostaddress_types.QHostAddress, port: cushort, verificationName: openArray[char]): bool =
  fcQDtls_setPeer3(self.h, address.h, port, struct_miqt_string(data: if len(verificationName) > 0: addr verificationName[0] else: nil, len: csize_t(len(verificationName))))

proc doHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket, dgram: openArray[byte]): bool =
  fcQDtls_doHandshake2(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

type QDtlsmetaObjectProc* = proc(self: QDtls): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDtlsmetacastProc* = proc(self: QDtls, param1: cstring): pointer {.raises: [], gcsafe.}
type QDtlsmetacallProc* = proc(self: QDtls, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDtlseventProc* = proc(self: QDtls, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDtlseventFilterProc* = proc(self: QDtls, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDtlstimerEventProc* = proc(self: QDtls, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDtlschildEventProc* = proc(self: QDtls, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDtlscustomEventProc* = proc(self: QDtls, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDtlsconnectNotifyProc* = proc(self: QDtls, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDtlsdisconnectNotifyProc* = proc(self: QDtls, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDtlsVTable* {.inheritable, pure.} = object
  vtbl: cQDtlsVTable
  metaObject*: QDtlsmetaObjectProc
  metacast*: QDtlsmetacastProc
  metacall*: QDtlsmetacallProc
  event*: QDtlseventProc
  eventFilter*: QDtlseventFilterProc
  timerEvent*: QDtlstimerEventProc
  childEvent*: QDtlschildEventProc
  customEvent*: QDtlscustomEventProc
  connectNotify*: QDtlsconnectNotifyProc
  disconnectNotify*: QDtlsdisconnectNotifyProc

proc QDtlsmetaObject*(self: gen_qdtls_types.QDtls): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtls_virtualbase_metaObject(self.h), owned: false)

proc QDtlsmetacast*(self: gen_qdtls_types.QDtls, param1: cstring): pointer =
  fcQDtls_virtualbase_metacast(self.h, param1)

proc QDtlsmetacall*(self: gen_qdtls_types.QDtls, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtls_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDtlsevent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtls_virtualbase_event(self.h, event.h)

proc QDtlseventFilter*(self: gen_qdtls_types.QDtls, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtls_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDtlstimerEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDtls_virtualbase_timerEvent(self.h, event.h)

proc QDtlschildEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDtls_virtualbase_childEvent(self.h, event.h)

proc QDtlscustomEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QEvent): void =
  fcQDtls_virtualbase_customEvent(self.h, event.h)

proc QDtlsconnectNotify*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtls_virtualbase_connectNotify(self.h, signal.h)

proc QDtlsdisconnectNotify*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtls_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDtls_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDtls_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDtls_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDtls_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDtls_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDtls_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDtls_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDtls_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDtls_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDtls_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](fcQDtls_vdata(self))
  let self = QDtls(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDtls* {.inheritable.} = ref object of QDtls
  vtbl*: cQDtlsVTable

method metaObject*(self: VirtualQDtls): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDtlsmetaObject(self[])
method metacast*(self: VirtualQDtls, param1: cstring): pointer {.base.} =
  QDtlsmetacast(self[], param1)
method metacall*(self: VirtualQDtls, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDtlsmetacall(self[], param1, param2, param3)
method event*(self: VirtualQDtls, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDtlsevent(self[], event)
method eventFilter*(self: VirtualQDtls, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDtlseventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDtls, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDtlstimerEvent(self[], event)
method childEvent*(self: VirtualQDtls, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDtlschildEvent(self[], event)
method customEvent*(self: VirtualQDtls, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDtlscustomEvent(self[], event)
method connectNotify*(self: VirtualQDtls, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDtlsconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDtls, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDtlsdisconnectNotify(self[], signal)

proc fcQDtls_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDtls_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDtls_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDtls_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDtls_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDtls_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDtls_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDtls_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDtls_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDtls_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDtls](fcQDtls_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qdtls_types.QDtls): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDtls_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdtls_types.QDtls): cint =
  fcQDtls_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdtls_types.QDtls, signal: cstring): cint =
  fcQDtls_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDtls_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdtls_types.QDtls,
    mode: cint,
    vtbl: ref QDtlsVTable = nil): gen_qdtls_types.QDtls =
  let vtbl = if vtbl == nil: new QDtlsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDtlsVTable](fcQDtls_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDtls_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDtls_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDtls_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDtls_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDtls_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDtls_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDtls_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDtls_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDtls_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDtls_vtable_callback_disconnectNotify
  gen_qdtls_types.QDtls(h: fcQDtls_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(mode)), owned: true)

proc create*(T: type gen_qdtls_types.QDtls,
    mode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QDtlsVTable = nil): gen_qdtls_types.QDtls =
  let vtbl = if vtbl == nil: new QDtlsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDtlsVTable](fcQDtls_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDtls_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDtls_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDtls_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDtls_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDtls_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDtls_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDtls_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDtls_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDtls_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDtls_vtable_callback_disconnectNotify
  gen_qdtls_types.QDtls(h: fcQDtls_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(mode), parent.h), owned: true)

const cQDtls_mvtbl = cQDtlsVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDtls()[])](self.fcQDtls_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDtls_method_callback_metaObject,
  metacast: fcQDtls_method_callback_metacast,
  metacall: fcQDtls_method_callback_metacall,
  event: fcQDtls_method_callback_event,
  eventFilter: fcQDtls_method_callback_eventFilter,
  timerEvent: fcQDtls_method_callback_timerEvent,
  childEvent: fcQDtls_method_callback_childEvent,
  customEvent: fcQDtls_method_callback_customEvent,
  connectNotify: fcQDtls_method_callback_connectNotify,
  disconnectNotify: fcQDtls_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdtls_types.QDtls,
    mode: cint,
    inst: VirtualQDtls) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDtls_new(addr(cQDtls_mvtbl), addr(inst[]), cint(mode))
  inst[].owned = true

proc create*(T: type gen_qdtls_types.QDtls,
    mode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQDtls) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDtls_new2(addr(cQDtls_mvtbl), addr(inst[]), cint(mode), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdtls_types.QDtls): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtls_staticMetaObject())
proc operatorAssign*(self: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, param1: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): void =
  fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifierGeneratorParameters_new(), owned: true)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters,
    a: cint, s: openArray[byte]): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifierGeneratorParameters_new2(cint(a), struct_miqt_string(data: cast[cstring](if len(s) == 0: nil else: unsafeAddr s[0]), len: csize_t(len(s)))), owned: true)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters,
    param1: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifierGeneratorParameters_new3(param1.h), owned: true)

