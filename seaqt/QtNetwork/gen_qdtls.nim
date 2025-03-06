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
{.compile("gen_qdtls.cpp", cflags).}


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

proc fcQDtlsClientVerifier_metaObject(self: pointer, ): pointer {.importc: "QDtlsClientVerifier_metaObject".}
proc fcQDtlsClientVerifier_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtlsClientVerifier_metacast".}
proc fcQDtlsClientVerifier_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtlsClientVerifier_metacall".}
proc fcQDtlsClientVerifier_tr(s: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr".}
proc fcQDtlsClientVerifier_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtlsClientVerifier_setCookieGeneratorParameters".}
proc fcQDtlsClientVerifier_cookieGeneratorParameters(self: pointer, ): pointer {.importc: "QDtlsClientVerifier_cookieGeneratorParameters".}
proc fcQDtlsClientVerifier_verifyClient(self: pointer, socket: pointer, dgram: struct_miqt_string, address: pointer, port: cushort): bool {.importc: "QDtlsClientVerifier_verifyClient".}
proc fcQDtlsClientVerifier_verifiedHello(self: pointer, ): struct_miqt_string {.importc: "QDtlsClientVerifier_verifiedHello".}
proc fcQDtlsClientVerifier_dtlsError(self: pointer, ): cint {.importc: "QDtlsClientVerifier_dtlsError".}
proc fcQDtlsClientVerifier_dtlsErrorString(self: pointer, ): struct_miqt_string {.importc: "QDtlsClientVerifier_dtlsErrorString".}
proc fcQDtlsClientVerifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtlsClientVerifier_tr2".}
proc fcQDtlsClientVerifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtlsClientVerifier_tr3".}
type cQDtlsClientVerifierVTable = object
  destructor*: proc(vtbl: ptr cQDtlsClientVerifierVTable, self: ptr cQDtlsClientVerifier) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDtlsClientVerifier_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDtlsClientVerifier_virtualbase_metaObject".}
proc fcQDtlsClientVerifier_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtlsClientVerifier_virtualbase_metacast".}
proc fcQDtlsClientVerifier_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtlsClientVerifier_virtualbase_metacall".}
proc fcQDtlsClientVerifier_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDtlsClientVerifier_virtualbase_event".}
proc fcQDtlsClientVerifier_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDtlsClientVerifier_virtualbase_eventFilter".}
proc fcQDtlsClientVerifier_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_timerEvent".}
proc fcQDtlsClientVerifier_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_childEvent".}
proc fcQDtlsClientVerifier_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_customEvent".}
proc fcQDtlsClientVerifier_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_connectNotify".}
proc fcQDtlsClientVerifier_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDtlsClientVerifier_virtualbase_disconnectNotify".}
proc fcQDtlsClientVerifier_new(vtbl: pointer, ): ptr cQDtlsClientVerifier {.importc: "QDtlsClientVerifier_new".}
proc fcQDtlsClientVerifier_new2(vtbl: pointer, parent: pointer): ptr cQDtlsClientVerifier {.importc: "QDtlsClientVerifier_new2".}
proc fcQDtlsClientVerifier_staticMetaObject(): pointer {.importc: "QDtlsClientVerifier_staticMetaObject".}
proc fcQDtlsClientVerifier_delete(self: pointer) {.importc: "QDtlsClientVerifier_delete".}
proc fcQDtls_metaObject(self: pointer, ): pointer {.importc: "QDtls_metaObject".}
proc fcQDtls_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtls_metacast".}
proc fcQDtls_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtls_metacall".}
proc fcQDtls_tr(s: cstring): struct_miqt_string {.importc: "QDtls_tr".}
proc fcQDtls_setPeer(self: pointer, address: pointer, port: cushort): bool {.importc: "QDtls_setPeer".}
proc fcQDtls_setPeerVerificationName(self: pointer, name: struct_miqt_string): bool {.importc: "QDtls_setPeerVerificationName".}
proc fcQDtls_peerAddress(self: pointer, ): pointer {.importc: "QDtls_peerAddress".}
proc fcQDtls_peerPort(self: pointer, ): cushort {.importc: "QDtls_peerPort".}
proc fcQDtls_peerVerificationName(self: pointer, ): struct_miqt_string {.importc: "QDtls_peerVerificationName".}
proc fcQDtls_sslMode(self: pointer, ): cint {.importc: "QDtls_sslMode".}
proc fcQDtls_setMtuHint(self: pointer, mtuHint: cushort): void {.importc: "QDtls_setMtuHint".}
proc fcQDtls_mtuHint(self: pointer, ): cushort {.importc: "QDtls_mtuHint".}
proc fcQDtls_setCookieGeneratorParameters(self: pointer, params: pointer): bool {.importc: "QDtls_setCookieGeneratorParameters".}
proc fcQDtls_cookieGeneratorParameters(self: pointer, ): pointer {.importc: "QDtls_cookieGeneratorParameters".}
proc fcQDtls_setDtlsConfiguration(self: pointer, configuration: pointer): bool {.importc: "QDtls_setDtlsConfiguration".}
proc fcQDtls_dtlsConfiguration(self: pointer, ): pointer {.importc: "QDtls_dtlsConfiguration".}
proc fcQDtls_handshakeState(self: pointer, ): cint {.importc: "QDtls_handshakeState".}
proc fcQDtls_doHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_doHandshake".}
proc fcQDtls_handleTimeout(self: pointer, socket: pointer): bool {.importc: "QDtls_handleTimeout".}
proc fcQDtls_resumeHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_resumeHandshake".}
proc fcQDtls_abortHandshake(self: pointer, socket: pointer): bool {.importc: "QDtls_abortHandshake".}
proc fcQDtls_shutdown(self: pointer, socket: pointer): bool {.importc: "QDtls_shutdown".}
proc fcQDtls_isConnectionEncrypted(self: pointer, ): bool {.importc: "QDtls_isConnectionEncrypted".}
proc fcQDtls_sessionCipher(self: pointer, ): pointer {.importc: "QDtls_sessionCipher".}
proc fcQDtls_sessionProtocol(self: pointer, ): cint {.importc: "QDtls_sessionProtocol".}
proc fcQDtls_writeDatagramEncrypted(self: pointer, socket: pointer, dgram: struct_miqt_string): clonglong {.importc: "QDtls_writeDatagramEncrypted".}
proc fcQDtls_decryptDatagram(self: pointer, socket: pointer, dgram: struct_miqt_string): struct_miqt_string {.importc: "QDtls_decryptDatagram".}
proc fcQDtls_dtlsError(self: pointer, ): cint {.importc: "QDtls_dtlsError".}
proc fcQDtls_dtlsErrorString(self: pointer, ): struct_miqt_string {.importc: "QDtls_dtlsErrorString".}
proc fcQDtls_peerVerificationErrors(self: pointer, ): struct_miqt_array {.importc: "QDtls_peerVerificationErrors".}
proc fcQDtls_ignoreVerificationErrors(self: pointer, errorsToIgnore: struct_miqt_array): void {.importc: "QDtls_ignoreVerificationErrors".}
proc fcQDtls_pskRequired(self: pointer, authenticator: pointer): void {.importc: "QDtls_pskRequired".}
proc fcQDtls_connect_pskRequired(self: pointer, slot: int, callback: proc (slot: int, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDtls_connect_pskRequired".}
proc fcQDtls_handshakeTimeout(self: pointer, ): void {.importc: "QDtls_handshakeTimeout".}
proc fcQDtls_connect_handshakeTimeout(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDtls_connect_handshakeTimeout".}
proc fcQDtls_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDtls_tr2".}
proc fcQDtls_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDtls_tr3".}
proc fcQDtls_setPeer3(self: pointer, address: pointer, port: cushort, verificationName: struct_miqt_string): bool {.importc: "QDtls_setPeer3".}
proc fcQDtls_doHandshake2(self: pointer, socket: pointer, dgram: struct_miqt_string): bool {.importc: "QDtls_doHandshake2".}
type cQDtlsVTable = object
  destructor*: proc(vtbl: ptr cQDtlsVTable, self: ptr cQDtls) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDtls_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDtls_virtualbase_metaObject".}
proc fcQDtls_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDtls_virtualbase_metacast".}
proc fcQDtls_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDtls_virtualbase_metacall".}
proc fcQDtls_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDtls_virtualbase_event".}
proc fcQDtls_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDtls_virtualbase_eventFilter".}
proc fcQDtls_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDtls_virtualbase_timerEvent".}
proc fcQDtls_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDtls_virtualbase_childEvent".}
proc fcQDtls_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDtls_virtualbase_customEvent".}
proc fcQDtls_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDtls_virtualbase_connectNotify".}
proc fcQDtls_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDtls_virtualbase_disconnectNotify".}
proc fcQDtls_new(vtbl: pointer, mode: cint): ptr cQDtls {.importc: "QDtls_new".}
proc fcQDtls_new2(vtbl: pointer, mode: cint, parent: pointer): ptr cQDtls {.importc: "QDtls_new2".}
proc fcQDtls_staticMetaObject(): pointer {.importc: "QDtls_staticMetaObject".}
proc fcQDtls_delete(self: pointer) {.importc: "QDtls_delete".}
proc fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDtlsClientVerifier__GeneratorParameters_operatorAssign".}
proc fcQDtlsClientVerifierGeneratorParameters_new(): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new".}
proc fcQDtlsClientVerifierGeneratorParameters_new2(a: cint, s: struct_miqt_string): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new2".}
proc fcQDtlsClientVerifierGeneratorParameters_new3(param1: pointer): ptr cQDtlsClientVerifierGeneratorParameters {.importc: "QDtlsClientVerifier__GeneratorParameters_new3".}
proc fcQDtlsClientVerifierGeneratorParameters_delete(self: pointer) {.importc: "QDtlsClientVerifier__GeneratorParameters_delete".}

proc metaObject*(self: gen_qdtls_types.QDtlsClientVerifier, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtlsClientVerifier_metaObject(self.h))

proc metacast*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cstring): pointer =
  fcQDtlsClientVerifier_metacast(self.h, param1)

proc metacall*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtlsClientVerifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring): string =
  let v_ms = fcQDtlsClientVerifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCookieGeneratorParameters*(self: gen_qdtls_types.QDtlsClientVerifier, params: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): bool =
  fcQDtlsClientVerifier_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: gen_qdtls_types.QDtlsClientVerifier, ): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifier_cookieGeneratorParameters(self.h))

proc verifyClient*(self: gen_qdtls_types.QDtlsClientVerifier, socket: gen_qudpsocket_types.QUdpSocket, dgram: seq[byte], address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQDtlsClientVerifier_verifyClient(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))), address.h, port)

proc verifiedHello*(self: gen_qdtls_types.QDtlsClientVerifier, ): seq[byte] =
  var v_bytearray = fcQDtlsClientVerifier_verifiedHello(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: gen_qdtls_types.QDtlsClientVerifier, ): cint =
  cint(fcQDtlsClientVerifier_dtlsError(self.h))

proc dtlsErrorString*(self: gen_qdtls_types.QDtlsClientVerifier, ): string =
  let v_ms = fcQDtlsClientVerifier_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring): string =
  let v_ms = fcQDtlsClientVerifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdtls_types.QDtlsClientVerifier, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDtlsClientVerifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QDtlsClientVerifierVTable* = object
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
proc QDtlsClientVerifiermetaObject*(self: gen_qdtls_types.QDtlsClientVerifier, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtlsClientVerifier_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDtlsClientVerifier_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDtlsClientVerifiermetacast*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cstring): pointer =
  fcQDtlsClientVerifier_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDtlsClientVerifier_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDtlsClientVerifiermetacall*(self: gen_qdtls_types.QDtlsClientVerifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtlsClientVerifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDtlsClientVerifier_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDtlsClientVerifierevent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtlsClientVerifier_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDtlsClientVerifier_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDtlsClientVerifiereventFilter*(self: gen_qdtls_types.QDtlsClientVerifier, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtlsClientVerifier_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDtlsClientVerifier_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDtlsClientVerifiertimerEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDtlsClientVerifier_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDtlsClientVerifier_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDtlsClientVerifierchildEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDtlsClientVerifier_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDtlsClientVerifier_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDtlsClientVerifiercustomEvent*(self: gen_qdtls_types.QDtlsClientVerifier, event: gen_qcoreevent_types.QEvent): void =
  fcQDtlsClientVerifier_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDtlsClientVerifier_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDtlsClientVerifierconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtlsClientVerifier_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDtlsClientVerifier_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDtlsClientVerifierdisconnectNotify*(self: gen_qdtls_types.QDtlsClientVerifier, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtlsClientVerifier_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDtlsClientVerifier_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsClientVerifierVTable](vtbl)
  let self = QDtlsClientVerifier(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifier,
    vtbl: ref QDtlsClientVerifierVTable = nil): gen_qdtls_types.QDtlsClientVerifier =
  let vtbl = if vtbl == nil: new QDtlsClientVerifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDtlsClientVerifierVTable, _: ptr cQDtlsClientVerifier) {.cdecl.} =
    let vtbl = cast[ref QDtlsClientVerifierVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDtlsClientVerifier_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDtlsClientVerifier_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDtlsClientVerifier_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDtlsClientVerifier_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDtlsClientVerifier_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDtlsClientVerifier_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDtlsClientVerifier_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDtlsClientVerifier_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDtlsClientVerifier_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDtlsClientVerifier_disconnectNotify
  gen_qdtls_types.QDtlsClientVerifier(h: fcQDtlsClientVerifier_new(addr(vtbl[]), ))

proc create*(T: type gen_qdtls_types.QDtlsClientVerifier,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDtlsClientVerifierVTable = nil): gen_qdtls_types.QDtlsClientVerifier =
  let vtbl = if vtbl == nil: new QDtlsClientVerifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDtlsClientVerifierVTable, _: ptr cQDtlsClientVerifier) {.cdecl.} =
    let vtbl = cast[ref QDtlsClientVerifierVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDtlsClientVerifier_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDtlsClientVerifier_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDtlsClientVerifier_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDtlsClientVerifier_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDtlsClientVerifier_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDtlsClientVerifier_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDtlsClientVerifier_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDtlsClientVerifier_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDtlsClientVerifier_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDtlsClientVerifier_disconnectNotify
  gen_qdtls_types.QDtlsClientVerifier(h: fcQDtlsClientVerifier_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qdtls_types.QDtlsClientVerifier): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtlsClientVerifier_staticMetaObject())
proc delete*(self: gen_qdtls_types.QDtlsClientVerifier) =
  fcQDtlsClientVerifier_delete(self.h)
proc metaObject*(self: gen_qdtls_types.QDtls, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtls_metaObject(self.h))

proc metacast*(self: gen_qdtls_types.QDtls, param1: cstring): pointer =
  fcQDtls_metacast(self.h, param1)

proc metacall*(self: gen_qdtls_types.QDtls, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtls_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring): string =
  let v_ms = fcQDtls_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeer*(self: gen_qdtls_types.QDtls, address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQDtls_setPeer(self.h, address.h, port)

proc setPeerVerificationName*(self: gen_qdtls_types.QDtls, name: string): bool =
  fcQDtls_setPeerVerificationName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc peerAddress*(self: gen_qdtls_types.QDtls, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQDtls_peerAddress(self.h))

proc peerPort*(self: gen_qdtls_types.QDtls, ): cushort =
  fcQDtls_peerPort(self.h)

proc peerVerificationName*(self: gen_qdtls_types.QDtls, ): string =
  let v_ms = fcQDtls_peerVerificationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sslMode*(self: gen_qdtls_types.QDtls, ): cint =
  cint(fcQDtls_sslMode(self.h))

proc setMtuHint*(self: gen_qdtls_types.QDtls, mtuHint: cushort): void =
  fcQDtls_setMtuHint(self.h, mtuHint)

proc mtuHint*(self: gen_qdtls_types.QDtls, ): cushort =
  fcQDtls_mtuHint(self.h)

proc setCookieGeneratorParameters*(self: gen_qdtls_types.QDtls, params: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): bool =
  fcQDtls_setCookieGeneratorParameters(self.h, params.h)

proc cookieGeneratorParameters*(self: gen_qdtls_types.QDtls, ): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtls_cookieGeneratorParameters(self.h))

proc setDtlsConfiguration*(self: gen_qdtls_types.QDtls, configuration: gen_qsslconfiguration_types.QSslConfiguration): bool =
  fcQDtls_setDtlsConfiguration(self.h, configuration.h)

proc dtlsConfiguration*(self: gen_qdtls_types.QDtls, ): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQDtls_dtlsConfiguration(self.h))

proc handshakeState*(self: gen_qdtls_types.QDtls, ): cint =
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

proc isConnectionEncrypted*(self: gen_qdtls_types.QDtls, ): bool =
  fcQDtls_isConnectionEncrypted(self.h)

proc sessionCipher*(self: gen_qdtls_types.QDtls, ): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher(h: fcQDtls_sessionCipher(self.h))

proc sessionProtocol*(self: gen_qdtls_types.QDtls, ): cint =
  cint(fcQDtls_sessionProtocol(self.h))

proc writeDatagramEncrypted*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket, dgram: seq[byte]): clonglong =
  fcQDtls_writeDatagramEncrypted(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))

proc decryptDatagram*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket, dgram: seq[byte]): seq[byte] =
  var v_bytearray = fcQDtls_decryptDatagram(self.h, socket.h, struct_miqt_string(data: cast[cstring](if len(dgram) == 0: nil else: unsafeAddr dgram[0]), len: csize_t(len(dgram))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc dtlsError*(self: gen_qdtls_types.QDtls, ): cint =
  cint(fcQDtls_dtlsError(self.h))

proc dtlsErrorString*(self: gen_qdtls_types.QDtls, ): string =
  let v_ms = fcQDtls_dtlsErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc peerVerificationErrors*(self: gen_qdtls_types.QDtls, ): seq[gen_qsslerror_types.QSslError] =
  var v_ma = fcQDtls_peerVerificationErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i])
  vx_ret

proc ignoreVerificationErrors*(self: gen_qdtls_types.QDtls, errorsToIgnore: seq[gen_qsslerror_types.QSslError]): void =
  var errorsToIgnore_CArray = newSeq[pointer](len(errorsToIgnore))
  for i in 0..<len(errorsToIgnore):
    errorsToIgnore_CArray[i] = errorsToIgnore[i].h

  fcQDtls_ignoreVerificationErrors(self.h, struct_miqt_array(len: csize_t(len(errorsToIgnore)), data: if len(errorsToIgnore) == 0: nil else: addr(errorsToIgnore_CArray[0])))

proc pskRequired*(self: gen_qdtls_types.QDtls, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQDtls_pskRequired(self.h, authenticator.h)

type QDtlspskRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc miqt_exec_callback_cQDtls_pskRequired(slot: int, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDtlspskRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDtls_pskRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDtlspskRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpskRequired*(self: gen_qdtls_types.QDtls, slot: QDtlspskRequiredSlot) =
  var tmp = new QDtlspskRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_connect_pskRequired(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDtls_pskRequired, miqt_exec_callback_cQDtls_pskRequired_release)

proc handshakeTimeout*(self: gen_qdtls_types.QDtls, ): void =
  fcQDtls_handshakeTimeout(self.h)

type QDtlshandshakeTimeoutSlot* = proc()
proc miqt_exec_callback_cQDtls_handshakeTimeout(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDtlshandshakeTimeoutSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQDtls_handshakeTimeout_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDtlshandshakeTimeoutSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhandshakeTimeout*(self: gen_qdtls_types.QDtls, slot: QDtlshandshakeTimeoutSlot) =
  var tmp = new QDtlshandshakeTimeoutSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDtls_connect_handshakeTimeout(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDtls_handshakeTimeout, miqt_exec_callback_cQDtls_handshakeTimeout_release)

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring): string =
  let v_ms = fcQDtls_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdtls_types.QDtls, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDtls_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeer*(self: gen_qdtls_types.QDtls, address: gen_qhostaddress_types.QHostAddress, port: cushort, verificationName: string): bool =
  fcQDtls_setPeer3(self.h, address.h, port, struct_miqt_string(data: verificationName, len: csize_t(len(verificationName))))

proc doHandshake*(self: gen_qdtls_types.QDtls, socket: gen_qudpsocket_types.QUdpSocket, dgram: seq[byte]): bool =
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
type QDtlsVTable* = object
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
proc QDtlsmetaObject*(self: gen_qdtls_types.QDtls, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtls_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDtls_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDtlsmetacast*(self: gen_qdtls_types.QDtls, param1: cstring): pointer =
  fcQDtls_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDtls_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDtlsmetacall*(self: gen_qdtls_types.QDtls, param1: cint, param2: cint, param3: pointer): cint =
  fcQDtls_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDtls_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDtlsevent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtls_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDtls_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDtlseventFilter*(self: gen_qdtls_types.QDtls, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDtls_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDtls_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDtlstimerEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDtls_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDtls_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDtlschildEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDtls_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDtls_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDtlscustomEvent*(self: gen_qdtls_types.QDtls, event: gen_qcoreevent_types.QEvent): void =
  fcQDtls_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDtls_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDtlsconnectNotify*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtls_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDtls_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDtlsdisconnectNotify*(self: gen_qdtls_types.QDtls, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDtls_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDtls_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDtlsVTable](vtbl)
  let self = QDtls(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qdtls_types.QDtls,
    mode: cint,
    vtbl: ref QDtlsVTable = nil): gen_qdtls_types.QDtls =
  let vtbl = if vtbl == nil: new QDtlsVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDtlsVTable, _: ptr cQDtls) {.cdecl.} =
    let vtbl = cast[ref QDtlsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDtls_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDtls_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDtls_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDtls_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDtls_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDtls_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDtls_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDtls_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDtls_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDtls_disconnectNotify
  gen_qdtls_types.QDtls(h: fcQDtls_new(addr(vtbl[]), cint(mode)))

proc create*(T: type gen_qdtls_types.QDtls,
    mode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QDtlsVTable = nil): gen_qdtls_types.QDtls =
  let vtbl = if vtbl == nil: new QDtlsVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDtlsVTable, _: ptr cQDtls) {.cdecl.} =
    let vtbl = cast[ref QDtlsVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDtls_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDtls_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDtls_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDtls_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDtls_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDtls_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDtls_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDtls_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDtls_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDtls_disconnectNotify
  gen_qdtls_types.QDtls(h: fcQDtls_new2(addr(vtbl[]), cint(mode), parent.h))

proc staticMetaObject*(_: type gen_qdtls_types.QDtls): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDtls_staticMetaObject())
proc delete*(self: gen_qdtls_types.QDtls) =
  fcQDtls_delete(self.h)
proc operatorAssign*(self: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters, param1: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): void =
  fcQDtlsClientVerifierGeneratorParameters_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifierGeneratorParameters_new())

proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters,
    a: cint, s: seq[byte]): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifierGeneratorParameters_new2(cint(a), struct_miqt_string(data: cast[cstring](if len(s) == 0: nil else: unsafeAddr s[0]), len: csize_t(len(s)))))

proc create*(T: type gen_qdtls_types.QDtlsClientVerifierGeneratorParameters,
    param1: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters): gen_qdtls_types.QDtlsClientVerifierGeneratorParameters =
  gen_qdtls_types.QDtlsClientVerifierGeneratorParameters(h: fcQDtlsClientVerifierGeneratorParameters_new3(param1.h))

proc delete*(self: gen_qdtls_types.QDtlsClientVerifierGeneratorParameters) =
  fcQDtlsClientVerifierGeneratorParameters_delete(self.h)
