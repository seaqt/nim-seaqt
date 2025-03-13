import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qsslsocket.cpp", cflags).}


type QSslSocketSslModeEnum* = distinct cint
template UnencryptedMode*(_: type QSslSocketSslModeEnum): untyped = 0
template SslClientMode*(_: type QSslSocketSslModeEnum): untyped = 1
template SslServerMode*(_: type QSslSocketSslModeEnum): untyped = 2


type QSslSocketPeerVerifyModeEnum* = distinct cint
template VerifyNone*(_: type QSslSocketPeerVerifyModeEnum): untyped = 0
template QueryPeer*(_: type QSslSocketPeerVerifyModeEnum): untyped = 1
template VerifyPeer*(_: type QSslSocketPeerVerifyModeEnum): untyped = 2
template AutoVerifyPeer*(_: type QSslSocketPeerVerifyModeEnum): untyped = 3


import ./gen_qsslsocket_types
export gen_qsslsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qhostaddress_types,
  ./gen_qocspresponse_types,
  ./gen_qsslcertificate_types,
  ./gen_qsslcipher_types,
  ./gen_qsslconfiguration_types,
  ./gen_qsslerror_types,
  ./gen_qsslkey_types,
  ./gen_qsslpresharedkeyauthenticator_types,
  ./gen_qtcpsocket
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qhostaddress_types,
  gen_qocspresponse_types,
  gen_qsslcertificate_types,
  gen_qsslcipher_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslkey_types,
  gen_qsslpresharedkeyauthenticator_types,
  gen_qtcpsocket

type cQSslSocket*{.exportc: "QSslSocket", incompleteStruct.} = object

proc fcQSslSocket_metaObject(self: pointer): pointer {.importc: "QSslSocket_metaObject".}
proc fcQSslSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslSocket_metacast".}
proc fcQSslSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSslSocket_metacall".}
proc fcQSslSocket_tr(s: cstring): struct_miqt_string {.importc: "QSslSocket_tr".}
proc fcQSslSocket_resume(self: pointer): void {.importc: "QSslSocket_resume".}
proc fcQSslSocket_connectToHostEncrypted(self: pointer, hostName: struct_miqt_string, port: cushort): void {.importc: "QSslSocket_connectToHostEncrypted".}
proc fcQSslSocket_connectToHostEncrypted2(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string): void {.importc: "QSslSocket_connectToHostEncrypted2".}
proc fcQSslSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QSslSocket_setSocketDescriptor".}
proc fcQSslSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHost".}
proc fcQSslSocket_disconnectFromHost(self: pointer): void {.importc: "QSslSocket_disconnectFromHost".}
proc fcQSslSocket_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QSslSocket_setSocketOption".}
proc fcQSslSocket_socketOption(self: pointer, option: cint): pointer {.importc: "QSslSocket_socketOption".}
proc fcQSslSocket_mode(self: pointer): cint {.importc: "QSslSocket_mode".}
proc fcQSslSocket_isEncrypted(self: pointer): bool {.importc: "QSslSocket_isEncrypted".}
proc fcQSslSocket_protocol(self: pointer): cint {.importc: "QSslSocket_protocol".}
proc fcQSslSocket_setProtocol(self: pointer, protocol: cint): void {.importc: "QSslSocket_setProtocol".}
proc fcQSslSocket_peerVerifyMode(self: pointer): cint {.importc: "QSslSocket_peerVerifyMode".}
proc fcQSslSocket_setPeerVerifyMode(self: pointer, mode: cint): void {.importc: "QSslSocket_setPeerVerifyMode".}
proc fcQSslSocket_peerVerifyDepth(self: pointer): cint {.importc: "QSslSocket_peerVerifyDepth".}
proc fcQSslSocket_setPeerVerifyDepth(self: pointer, depth: cint): void {.importc: "QSslSocket_setPeerVerifyDepth".}
proc fcQSslSocket_peerVerifyName(self: pointer): struct_miqt_string {.importc: "QSslSocket_peerVerifyName".}
proc fcQSslSocket_setPeerVerifyName(self: pointer, hostName: struct_miqt_string): void {.importc: "QSslSocket_setPeerVerifyName".}
proc fcQSslSocket_bytesAvailable(self: pointer): clonglong {.importc: "QSslSocket_bytesAvailable".}
proc fcQSslSocket_bytesToWrite(self: pointer): clonglong {.importc: "QSslSocket_bytesToWrite".}
proc fcQSslSocket_canReadLine(self: pointer): bool {.importc: "QSslSocket_canReadLine".}
proc fcQSslSocket_close(self: pointer): void {.importc: "QSslSocket_close".}
proc fcQSslSocket_atEnd(self: pointer): bool {.importc: "QSslSocket_atEnd".}
proc fcQSslSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QSslSocket_setReadBufferSize".}
proc fcQSslSocket_encryptedBytesAvailable(self: pointer): clonglong {.importc: "QSslSocket_encryptedBytesAvailable".}
proc fcQSslSocket_encryptedBytesToWrite(self: pointer): clonglong {.importc: "QSslSocket_encryptedBytesToWrite".}
proc fcQSslSocket_sslConfiguration(self: pointer): pointer {.importc: "QSslSocket_sslConfiguration".}
proc fcQSslSocket_setSslConfiguration(self: pointer, config: pointer): void {.importc: "QSslSocket_setSslConfiguration".}
proc fcQSslSocket_setLocalCertificateChain(self: pointer, localChain: struct_miqt_array): void {.importc: "QSslSocket_setLocalCertificateChain".}
proc fcQSslSocket_localCertificateChain(self: pointer): struct_miqt_array {.importc: "QSslSocket_localCertificateChain".}
proc fcQSslSocket_setLocalCertificate(self: pointer, certificate: pointer): void {.importc: "QSslSocket_setLocalCertificate".}
proc fcQSslSocket_setLocalCertificateWithFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSslSocket_setLocalCertificateWithFileName".}
proc fcQSslSocket_localCertificate(self: pointer): pointer {.importc: "QSslSocket_localCertificate".}
proc fcQSslSocket_peerCertificate(self: pointer): pointer {.importc: "QSslSocket_peerCertificate".}
proc fcQSslSocket_peerCertificateChain(self: pointer): struct_miqt_array {.importc: "QSslSocket_peerCertificateChain".}
proc fcQSslSocket_sessionCipher(self: pointer): pointer {.importc: "QSslSocket_sessionCipher".}
proc fcQSslSocket_sessionProtocol(self: pointer): cint {.importc: "QSslSocket_sessionProtocol".}
proc fcQSslSocket_ocspResponses(self: pointer): struct_miqt_array {.importc: "QSslSocket_ocspResponses".}
proc fcQSslSocket_setPrivateKey(self: pointer, key: pointer): void {.importc: "QSslSocket_setPrivateKey".}
proc fcQSslSocket_setPrivateKeyWithFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSslSocket_setPrivateKeyWithFileName".}
proc fcQSslSocket_privateKey(self: pointer): pointer {.importc: "QSslSocket_privateKey".}
proc fcQSslSocket_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForConnected".}
proc fcQSslSocket_waitForEncrypted(self: pointer): bool {.importc: "QSslSocket_waitForEncrypted".}
proc fcQSslSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForReadyRead".}
proc fcQSslSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForBytesWritten".}
proc fcQSslSocket_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForDisconnected".}
proc fcQSslSocket_sslHandshakeErrors(self: pointer): struct_miqt_array {.importc: "QSslSocket_sslHandshakeErrors".}
proc fcQSslSocket_supportsSsl(): bool {.importc: "QSslSocket_supportsSsl".}
proc fcQSslSocket_sslLibraryVersionNumber(): clong {.importc: "QSslSocket_sslLibraryVersionNumber".}
proc fcQSslSocket_sslLibraryVersionString(): struct_miqt_string {.importc: "QSslSocket_sslLibraryVersionString".}
proc fcQSslSocket_sslLibraryBuildVersionNumber(): clong {.importc: "QSslSocket_sslLibraryBuildVersionNumber".}
proc fcQSslSocket_sslLibraryBuildVersionString(): struct_miqt_string {.importc: "QSslSocket_sslLibraryBuildVersionString".}
proc fcQSslSocket_availableBackends(): struct_miqt_array {.importc: "QSslSocket_availableBackends".}
proc fcQSslSocket_activeBackend(): struct_miqt_string {.importc: "QSslSocket_activeBackend".}
proc fcQSslSocket_setActiveBackend(backendName: struct_miqt_string): bool {.importc: "QSslSocket_setActiveBackend".}
proc fcQSslSocket_supportedProtocols(): struct_miqt_array {.importc: "QSslSocket_supportedProtocols".}
proc fcQSslSocket_isProtocolSupported(protocol: cint): bool {.importc: "QSslSocket_isProtocolSupported".}
proc fcQSslSocket_implementedClasses(): struct_miqt_array {.importc: "QSslSocket_implementedClasses".}
proc fcQSslSocket_isClassImplemented(cl: cint): bool {.importc: "QSslSocket_isClassImplemented".}
proc fcQSslSocket_supportedFeatures(): struct_miqt_array {.importc: "QSslSocket_supportedFeatures".}
proc fcQSslSocket_isFeatureSupported(feat: cint): bool {.importc: "QSslSocket_isFeatureSupported".}
proc fcQSslSocket_ignoreSslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QSslSocket_ignoreSslErrors".}
proc fcQSslSocket_continueInterruptedHandshake(self: pointer): void {.importc: "QSslSocket_continueInterruptedHandshake".}
proc fcQSslSocket_startClientEncryption(self: pointer): void {.importc: "QSslSocket_startClientEncryption".}
proc fcQSslSocket_startServerEncryption(self: pointer): void {.importc: "QSslSocket_startServerEncryption".}
proc fcQSslSocket_ignoreSslErrors2(self: pointer): void {.importc: "QSslSocket_ignoreSslErrors2".}
proc fcQSslSocket_encrypted(self: pointer): void {.importc: "QSslSocket_encrypted".}
proc fcQSslSocket_connect_encrypted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_encrypted".}
proc fcQSslSocket_peerVerifyError(self: pointer, error: pointer): void {.importc: "QSslSocket_peerVerifyError".}
proc fcQSslSocket_connect_peerVerifyError(self: pointer, slot: int, callback: proc (slot: int, error: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_peerVerifyError".}
proc fcQSslSocket_sslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QSslSocket_sslErrors".}
proc fcQSslSocket_connect_sslErrors(self: pointer, slot: int, callback: proc (slot: int, errors: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_sslErrors".}
proc fcQSslSocket_modeChanged(self: pointer, newMode: cint): void {.importc: "QSslSocket_modeChanged".}
proc fcQSslSocket_connect_modeChanged(self: pointer, slot: int, callback: proc (slot: int, newMode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_modeChanged".}
proc fcQSslSocket_encryptedBytesWritten(self: pointer, totalBytes: clonglong): void {.importc: "QSslSocket_encryptedBytesWritten".}
proc fcQSslSocket_connect_encryptedBytesWritten(self: pointer, slot: int, callback: proc (slot: int, totalBytes: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_encryptedBytesWritten".}
proc fcQSslSocket_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QSslSocket_preSharedKeyAuthenticationRequired".}
proc fcQSslSocket_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_preSharedKeyAuthenticationRequired".}
proc fcQSslSocket_newSessionTicketReceived(self: pointer): void {.importc: "QSslSocket_newSessionTicketReceived".}
proc fcQSslSocket_connect_newSessionTicketReceived(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_newSessionTicketReceived".}
proc fcQSslSocket_alertSent(self: pointer, level: cint, typeVal: cint, description: struct_miqt_string): void {.importc: "QSslSocket_alertSent".}
proc fcQSslSocket_connect_alertSent(self: pointer, slot: int, callback: proc (slot: int, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_alertSent".}
proc fcQSslSocket_alertReceived(self: pointer, level: cint, typeVal: cint, description: struct_miqt_string): void {.importc: "QSslSocket_alertReceived".}
proc fcQSslSocket_connect_alertReceived(self: pointer, slot: int, callback: proc (slot: int, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_alertReceived".}
proc fcQSslSocket_handshakeInterruptedOnError(self: pointer, error: pointer): void {.importc: "QSslSocket_handshakeInterruptedOnError".}
proc fcQSslSocket_connect_handshakeInterruptedOnError(self: pointer, slot: int, callback: proc (slot: int, error: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslSocket_connect_handshakeInterruptedOnError".}
proc fcQSslSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslSocket_tr2".}
proc fcQSslSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslSocket_tr3".}
proc fcQSslSocket_connectToHostEncrypted3(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint): void {.importc: "QSslSocket_connectToHostEncrypted3".}
proc fcQSslSocket_connectToHostEncrypted4(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHostEncrypted4".}
proc fcQSslSocket_connectToHostEncrypted42(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string, mode: cint): void {.importc: "QSslSocket_connectToHostEncrypted42".}
proc fcQSslSocket_connectToHostEncrypted5(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string, mode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHostEncrypted5".}
proc fcQSslSocket_setLocalCertificate2(self: pointer, fileName: struct_miqt_string, format: cint): void {.importc: "QSslSocket_setLocalCertificate2".}
proc fcQSslSocket_setPrivateKey2(self: pointer, fileName: struct_miqt_string, algorithm: cint): void {.importc: "QSslSocket_setPrivateKey2".}
proc fcQSslSocket_setPrivateKey3(self: pointer, fileName: struct_miqt_string, algorithm: cint, format: cint): void {.importc: "QSslSocket_setPrivateKey3".}
proc fcQSslSocket_setPrivateKey4(self: pointer, fileName: struct_miqt_string, algorithm: cint, format: cint, passPhrase: struct_miqt_string): void {.importc: "QSslSocket_setPrivateKey4".}
proc fcQSslSocket_waitForEncrypted1(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForEncrypted1".}
proc fcQSslSocket_supportedProtocols1(backendName: struct_miqt_string): struct_miqt_array {.importc: "QSslSocket_supportedProtocols1".}
proc fcQSslSocket_isProtocolSupported2(protocol: cint, backendName: struct_miqt_string): bool {.importc: "QSslSocket_isProtocolSupported2".}
proc fcQSslSocket_implementedClasses1(backendName: struct_miqt_string): struct_miqt_array {.importc: "QSslSocket_implementedClasses1".}
proc fcQSslSocket_isClassImplemented2(cl: cint, backendName: struct_miqt_string): bool {.importc: "QSslSocket_isClassImplemented2".}
proc fcQSslSocket_supportedFeatures1(backendName: struct_miqt_string): struct_miqt_array {.importc: "QSslSocket_supportedFeatures1".}
proc fcQSslSocket_isFeatureSupported2(feat: cint, backendName: struct_miqt_string): bool {.importc: "QSslSocket_isFeatureSupported2".}
proc fcQSslSocket_vtbl(self: pointer): pointer {.importc: "QSslSocket_vtbl".}
proc fcQSslSocket_vdata(self: pointer): pointer {.importc: "QSslSocket_vdata".}
type cQSslSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resume*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  setSocketDescriptor*: proc(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
  disconnectFromHost*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  setSocketOption*: proc(self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  socketOption*: proc(self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setReadBufferSize*: proc(self: pointer, size: clonglong): void {.cdecl, raises: [], gcsafe.}
  waitForConnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForDisconnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  socketDescriptor*: proc(self: pointer): uint {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSslSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QSslSocket_virtualbase_metaObject".}
proc fcQSslSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslSocket_virtualbase_metacast".}
proc fcQSslSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSslSocket_virtualbase_metacall".}
proc fcQSslSocket_virtualbase_resume(self: pointer): void {.importc: "QSslSocket_virtualbase_resume".}
proc fcQSslSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QSslSocket_virtualbase_setSocketDescriptor".}
proc fcQSslSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.importc: "QSslSocket_virtualbase_connectToHost".}
proc fcQSslSocket_virtualbase_disconnectFromHost(self: pointer): void {.importc: "QSslSocket_virtualbase_disconnectFromHost".}
proc fcQSslSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QSslSocket_virtualbase_setSocketOption".}
proc fcQSslSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QSslSocket_virtualbase_socketOption".}
proc fcQSslSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QSslSocket_virtualbase_bytesAvailable".}
proc fcQSslSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QSslSocket_virtualbase_bytesToWrite".}
proc fcQSslSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QSslSocket_virtualbase_canReadLine".}
proc fcQSslSocket_virtualbase_close(self: pointer): void {.importc: "QSslSocket_virtualbase_close".}
proc fcQSslSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QSslSocket_virtualbase_atEnd".}
proc fcQSslSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QSslSocket_virtualbase_setReadBufferSize".}
proc fcQSslSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_virtualbase_waitForConnected".}
proc fcQSslSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSslSocket_virtualbase_waitForReadyRead".}
proc fcQSslSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSslSocket_virtualbase_waitForBytesWritten".}
proc fcQSslSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_virtualbase_waitForDisconnected".}
proc fcQSslSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSslSocket_virtualbase_readData".}
proc fcQSslSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QSslSocket_virtualbase_skipData".}
proc fcQSslSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QSslSocket_virtualbase_writeData".}
proc fcQSslSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QSslSocket_virtualbase_bind".}
proc fcQSslSocket_virtualbase_socketDescriptor(self: pointer): uint {.importc: "QSslSocket_virtualbase_socketDescriptor".}
proc fcQSslSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QSslSocket_virtualbase_isSequential".}
proc fcQSslSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSslSocket_virtualbase_readLineData".}
proc fcQSslSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QSslSocket_virtualbase_open".}
proc fcQSslSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QSslSocket_virtualbase_pos".}
proc fcQSslSocket_virtualbase_size(self: pointer): clonglong {.importc: "QSslSocket_virtualbase_size".}
proc fcQSslSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QSslSocket_virtualbase_seek".}
proc fcQSslSocket_virtualbase_reset(self: pointer): bool {.importc: "QSslSocket_virtualbase_reset".}
proc fcQSslSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSslSocket_virtualbase_event".}
proc fcQSslSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSslSocket_virtualbase_eventFilter".}
proc fcQSslSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSslSocket_virtualbase_timerEvent".}
proc fcQSslSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSslSocket_virtualbase_childEvent".}
proc fcQSslSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSslSocket_virtualbase_customEvent".}
proc fcQSslSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSslSocket_virtualbase_connectNotify".}
proc fcQSslSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSslSocket_virtualbase_disconnectNotify".}
proc fcQSslSocket_protectedbase_setSocketState(self: pointer, state: cint): void {.importc: "QSslSocket_protectedbase_setSocketState".}
proc fcQSslSocket_protectedbase_setSocketError(self: pointer, socketError: cint): void {.importc: "QSslSocket_protectedbase_setSocketError".}
proc fcQSslSocket_protectedbase_setLocalPort(self: pointer, port: cushort): void {.importc: "QSslSocket_protectedbase_setLocalPort".}
proc fcQSslSocket_protectedbase_setLocalAddress(self: pointer, address: pointer): void {.importc: "QSslSocket_protectedbase_setLocalAddress".}
proc fcQSslSocket_protectedbase_setPeerPort(self: pointer, port: cushort): void {.importc: "QSslSocket_protectedbase_setPeerPort".}
proc fcQSslSocket_protectedbase_setPeerAddress(self: pointer, address: pointer): void {.importc: "QSslSocket_protectedbase_setPeerAddress".}
proc fcQSslSocket_protectedbase_setPeerName(self: pointer, name: struct_miqt_string): void {.importc: "QSslSocket_protectedbase_setPeerName".}
proc fcQSslSocket_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QSslSocket_protectedbase_setOpenMode".}
proc fcQSslSocket_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QSslSocket_protectedbase_setErrorString".}
proc fcQSslSocket_protectedbase_sender(self: pointer): pointer {.importc: "QSslSocket_protectedbase_sender".}
proc fcQSslSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSslSocket_protectedbase_senderSignalIndex".}
proc fcQSslSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSslSocket_protectedbase_receivers".}
proc fcQSslSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSslSocket_protectedbase_isSignalConnected".}
proc fcQSslSocket_new(vtbl, vdata: pointer): ptr cQSslSocket {.importc: "QSslSocket_new".}
proc fcQSslSocket_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSslSocket {.importc: "QSslSocket_new2".}
proc fcQSslSocket_staticMetaObject(): pointer {.importc: "QSslSocket_staticMetaObject".}

proc metaObject*(self: gen_qsslsocket_types.QSslSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsslsocket_types.QSslSocket, param1: cstring): pointer =
  fcQSslSocket_metacast(self.h, param1)

proc metacall*(self: gen_qsslsocket_types.QSslSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSslSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsslsocket_types.QSslSocket, s: cstring): string =
  let v_ms = fcQSslSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc resume*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_resume(self.h)

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort): void =
  fcQSslSocket_connectToHostEncrypted(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port)

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, sslPeerName: openArray[char]): void =
  fcQSslSocket_connectToHostEncrypted2(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, struct_miqt_string(data: if len(sslPeerName) > 0: addr sslPeerName[0] else: nil, len: csize_t(len(sslPeerName))))

proc setSocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQSslSocket_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc connectToHost*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, openMode: cint, protocol: cint): void =
  fcQSslSocket_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(openMode), cint(protocol))

proc disconnectFromHost*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_disconnectFromHost(self.h)

proc setSocketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQSslSocket_setSocketOption(self.h, cint(option), value.h)

proc socketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSslSocket_socketOption(self.h, cint(option)), owned: true)

proc mode*(self: gen_qsslsocket_types.QSslSocket): cint =
  cint(fcQSslSocket_mode(self.h))

proc isEncrypted*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_isEncrypted(self.h)

proc protocol*(self: gen_qsslsocket_types.QSslSocket): cint =
  cint(fcQSslSocket_protocol(self.h))

proc setProtocol*(self: gen_qsslsocket_types.QSslSocket, protocol: cint): void =
  fcQSslSocket_setProtocol(self.h, cint(protocol))

proc peerVerifyMode*(self: gen_qsslsocket_types.QSslSocket): cint =
  cint(fcQSslSocket_peerVerifyMode(self.h))

proc setPeerVerifyMode*(self: gen_qsslsocket_types.QSslSocket, mode: cint): void =
  fcQSslSocket_setPeerVerifyMode(self.h, cint(mode))

proc peerVerifyDepth*(self: gen_qsslsocket_types.QSslSocket): cint =
  fcQSslSocket_peerVerifyDepth(self.h)

proc setPeerVerifyDepth*(self: gen_qsslsocket_types.QSslSocket, depth: cint): void =
  fcQSslSocket_setPeerVerifyDepth(self.h, depth)

proc peerVerifyName*(self: gen_qsslsocket_types.QSslSocket): string =
  let v_ms = fcQSslSocket_peerVerifyName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPeerVerifyName*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char]): void =
  fcQSslSocket_setPeerVerifyName(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))))

proc bytesAvailable*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_bytesToWrite(self.h)

proc canReadLine*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_canReadLine(self.h)

proc close*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_close(self.h)

proc atEnd*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_atEnd(self.h)

proc setReadBufferSize*(self: gen_qsslsocket_types.QSslSocket, size: clonglong): void =
  fcQSslSocket_setReadBufferSize(self.h, size)

proc encryptedBytesAvailable*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_encryptedBytesAvailable(self.h)

proc encryptedBytesToWrite*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_encryptedBytesToWrite(self.h)

proc sslConfiguration*(self: gen_qsslsocket_types.QSslSocket): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslSocket_sslConfiguration(self.h), owned: true)

proc setSslConfiguration*(self: gen_qsslsocket_types.QSslSocket, config: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslSocket_setSslConfiguration(self.h, config.h)

proc setLocalCertificateChain*(self: gen_qsslsocket_types.QSslSocket, localChain: openArray[gen_qsslcertificate_types.QSslCertificate]): void =
  var localChain_CArray = newSeq[pointer](len(localChain))
  for i in 0..<len(localChain):
    localChain_CArray[i] = localChain[i].h

  fcQSslSocket_setLocalCertificateChain(self.h, struct_miqt_array(len: csize_t(len(localChain)), data: if len(localChain) == 0: nil else: addr(localChain_CArray[0])))

proc localCertificateChain*(self: gen_qsslsocket_types.QSslSocket): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_localCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setLocalCertificate*(self: gen_qsslsocket_types.QSslSocket, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslSocket_setLocalCertificate(self.h, certificate.h)

proc setLocalCertificate*(self: gen_qsslsocket_types.QSslSocket, fileName: openArray[char]): void =
  fcQSslSocket_setLocalCertificateWithFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc localCertificate*(self: gen_qsslsocket_types.QSslSocket): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslSocket_localCertificate(self.h), owned: true)

proc peerCertificate*(self: gen_qsslsocket_types.QSslSocket): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslSocket_peerCertificate(self.h), owned: true)

proc peerCertificateChain*(self: gen_qsslsocket_types.QSslSocket): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_peerCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sessionCipher*(self: gen_qsslsocket_types.QSslSocket): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher(h: fcQSslSocket_sessionCipher(self.h), owned: true)

proc sessionProtocol*(self: gen_qsslsocket_types.QSslSocket): cint =
  cint(fcQSslSocket_sessionProtocol(self.h))

proc ocspResponses*(self: gen_qsslsocket_types.QSslSocket): seq[gen_qocspresponse_types.QOcspResponse] =
  var v_ma = fcQSslSocket_ocspResponses(self.h)
  var vx_ret = newSeq[gen_qocspresponse_types.QOcspResponse](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qocspresponse_types.QOcspResponse(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, key: gen_qsslkey_types.QSslKey): void =
  fcQSslSocket_setPrivateKey(self.h, key.h)

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: openArray[char]): void =
  fcQSslSocket_setPrivateKeyWithFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc privateKey*(self: gen_qsslsocket_types.QSslSocket): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslSocket_privateKey(self.h), owned: true)

proc waitForConnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForConnected(self.h, msecs)

proc waitForEncrypted*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_waitForEncrypted(self.h)

proc waitForReadyRead*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForBytesWritten(self.h, msecs)

proc waitForDisconnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForDisconnected(self.h, msecs)

proc sslHandshakeErrors*(self: gen_qsslsocket_types.QSslSocket): seq[gen_qsslerror_types.QSslError] =
  var v_ma = fcQSslSocket_sslHandshakeErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc supportsSsl*(_: type gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_supportsSsl()

proc sslLibraryVersionNumber*(_: type gen_qsslsocket_types.QSslSocket): clong =
  fcQSslSocket_sslLibraryVersionNumber()

proc sslLibraryVersionString*(_: type gen_qsslsocket_types.QSslSocket): string =
  let v_ms = fcQSslSocket_sslLibraryVersionString()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sslLibraryBuildVersionNumber*(_: type gen_qsslsocket_types.QSslSocket): clong =
  fcQSslSocket_sslLibraryBuildVersionNumber()

proc sslLibraryBuildVersionString*(_: type gen_qsslsocket_types.QSslSocket): string =
  let v_ms = fcQSslSocket_sslLibraryBuildVersionString()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc availableBackends*(_: type gen_qsslsocket_types.QSslSocket): seq[string] =
  var v_ma = fcQSslSocket_availableBackends()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc activeBackend*(_: type gen_qsslsocket_types.QSslSocket): string =
  let v_ms = fcQSslSocket_activeBackend()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setActiveBackend*(_: type gen_qsslsocket_types.QSslSocket, backendName: openArray[char]): bool =
  fcQSslSocket_setActiveBackend(struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))

proc supportedProtocols*(_: type gen_qsslsocket_types.QSslSocket): seq[cint] =
  var v_ma = fcQSslSocket_supportedProtocols()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isProtocolSupported*(_: type gen_qsslsocket_types.QSslSocket, protocol: cint): bool =
  fcQSslSocket_isProtocolSupported(cint(protocol))

proc implementedClasses*(_: type gen_qsslsocket_types.QSslSocket): seq[cint] =
  var v_ma = fcQSslSocket_implementedClasses()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isClassImplemented*(_: type gen_qsslsocket_types.QSslSocket, cl: cint): bool =
  fcQSslSocket_isClassImplemented(cint(cl))

proc supportedFeatures*(_: type gen_qsslsocket_types.QSslSocket): seq[cint] =
  var v_ma = fcQSslSocket_supportedFeatures()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isFeatureSupported*(_: type gen_qsslsocket_types.QSslSocket, feat: cint): bool =
  fcQSslSocket_isFeatureSupported(cint(feat))

proc ignoreSslErrors*(self: gen_qsslsocket_types.QSslSocket, errors: openArray[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslSocket_ignoreSslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc continueInterruptedHandshake*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_continueInterruptedHandshake(self.h)

proc startClientEncryption*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_startClientEncryption(self.h)

proc startServerEncryption*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_startServerEncryption(self.h)

proc ignoreSslErrors*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_ignoreSslErrors2(self.h)

proc encrypted*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_encrypted(self.h)

type QSslSocketencryptedSlot* = proc()
proc cQSslSocket_slot_callback_encrypted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketencryptedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQSslSocket_slot_callback_encrypted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketencryptedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onencrypted*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketencryptedSlot) =
  var tmp = new QSslSocketencryptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_encrypted(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_encrypted, cQSslSocket_slot_callback_encrypted_release)

proc peerVerifyError*(self: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslSocket_peerVerifyError(self.h, error.h)

type QSslSocketpeerVerifyErrorSlot* = proc(error: gen_qsslerror_types.QSslError)
proc cQSslSocket_slot_callback_peerVerifyError(slot: int, error: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketpeerVerifyErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslerror_types.QSslError(h: error, owned: false)

  nimfunc[](slotval1)

proc cQSslSocket_slot_callback_peerVerifyError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketpeerVerifyErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpeerVerifyError*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketpeerVerifyErrorSlot) =
  var tmp = new QSslSocketpeerVerifyErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_peerVerifyError(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_peerVerifyError, cQSslSocket_slot_callback_peerVerifyError_release)

proc sslErrors*(self: gen_qsslsocket_types.QSslSocket, errors: openArray[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslSocket_sslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QSslSocketsslErrorsSlot* = proc(errors: openArray[gen_qsslerror_types.QSslError])
proc cQSslSocket_slot_callback_sslErrors(slot: int, errors: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketsslErrorsSlot](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i], owned: true)
  c_free(verrors_ma.data)
  let slotval1 = verrorsx_ret

  nimfunc[](slotval1)

proc cQSslSocket_slot_callback_sslErrors_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketsslErrorsSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsslErrors*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsslErrorsSlot) =
  var tmp = new QSslSocketsslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_sslErrors(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_sslErrors, cQSslSocket_slot_callback_sslErrors_release)

proc modeChanged*(self: gen_qsslsocket_types.QSslSocket, newMode: cint): void =
  fcQSslSocket_modeChanged(self.h, cint(newMode))

type QSslSocketmodeChangedSlot* = proc(newMode: cint)
proc cQSslSocket_slot_callback_modeChanged(slot: int, newMode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketmodeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newMode)

  nimfunc[](slotval1)

proc cQSslSocket_slot_callback_modeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketmodeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmodeChanged*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketmodeChangedSlot) =
  var tmp = new QSslSocketmodeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_modeChanged(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_modeChanged, cQSslSocket_slot_callback_modeChanged_release)

proc encryptedBytesWritten*(self: gen_qsslsocket_types.QSslSocket, totalBytes: clonglong): void =
  fcQSslSocket_encryptedBytesWritten(self.h, totalBytes)

type QSslSocketencryptedBytesWrittenSlot* = proc(totalBytes: clonglong)
proc cQSslSocket_slot_callback_encryptedBytesWritten(slot: int, totalBytes: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketencryptedBytesWrittenSlot](cast[pointer](slot))
  let slotval1 = totalBytes

  nimfunc[](slotval1)

proc cQSslSocket_slot_callback_encryptedBytesWritten_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketencryptedBytesWrittenSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onencryptedBytesWritten*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketencryptedBytesWrittenSlot) =
  var tmp = new QSslSocketencryptedBytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_encryptedBytesWritten(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_encryptedBytesWritten, cQSslSocket_slot_callback_encryptedBytesWritten_release)

proc preSharedKeyAuthenticationRequired*(self: gen_qsslsocket_types.QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQSslSocket_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

type QSslSocketpreSharedKeyAuthenticationRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc cQSslSocket_slot_callback_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator, owned: false)

  nimfunc[](slotval1)

proc cQSslSocket_slot_callback_preSharedKeyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpreSharedKeyAuthenticationRequired*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QSslSocketpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_preSharedKeyAuthenticationRequired, cQSslSocket_slot_callback_preSharedKeyAuthenticationRequired_release)

proc newSessionTicketReceived*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_newSessionTicketReceived(self.h)

type QSslSocketnewSessionTicketReceivedSlot* = proc()
proc cQSslSocket_slot_callback_newSessionTicketReceived(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketnewSessionTicketReceivedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQSslSocket_slot_callback_newSessionTicketReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketnewSessionTicketReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnewSessionTicketReceived*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketnewSessionTicketReceivedSlot) =
  var tmp = new QSslSocketnewSessionTicketReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_newSessionTicketReceived(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_newSessionTicketReceived, cQSslSocket_slot_callback_newSessionTicketReceived_release)

proc alertSent*(self: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: openArray[char]): void =
  fcQSslSocket_alertSent(self.h, cint(level), cint(typeVal), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

type QSslSocketalertSentSlot* = proc(level: cint, typeVal: cint, description: openArray[char])
proc cQSslSocket_slot_callback_alertSent(slot: int, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketalertSentSlot](cast[pointer](slot))
  let slotval1 = cint(level)

  let slotval2 = cint(typeVal)

  let vdescription_ms = description
  let vdescriptionx_ret = string.fromBytes(vdescription_ms)
  c_free(vdescription_ms.data)
  let slotval3 = vdescriptionx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc cQSslSocket_slot_callback_alertSent_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketalertSentSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onalertSent*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketalertSentSlot) =
  var tmp = new QSslSocketalertSentSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_alertSent(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_alertSent, cQSslSocket_slot_callback_alertSent_release)

proc alertReceived*(self: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: openArray[char]): void =
  fcQSslSocket_alertReceived(self.h, cint(level), cint(typeVal), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

type QSslSocketalertReceivedSlot* = proc(level: cint, typeVal: cint, description: openArray[char])
proc cQSslSocket_slot_callback_alertReceived(slot: int, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSslSocketalertReceivedSlot](cast[pointer](slot))
  let slotval1 = cint(level)

  let slotval2 = cint(typeVal)

  let vdescription_ms = description
  let vdescriptionx_ret = string.fromBytes(vdescription_ms)
  c_free(vdescription_ms.data)
  let slotval3 = vdescriptionx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc cQSslSocket_slot_callback_alertReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSocketalertReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onalertReceived*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketalertReceivedSlot) =
  var tmp = new QSslSocketalertReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_alertReceived(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_alertReceived, cQSslSocket_slot_callback_alertReceived_release)

proc handshakeInterruptedOnError*(self: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslSocket_handshakeInterruptedOnError(self.h, error.h)

type QSslSockethandshakeInterruptedOnErrorSlot* = proc(error: gen_qsslerror_types.QSslError)
proc cQSslSocket_slot_callback_handshakeInterruptedOnError(slot: int, error: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslSockethandshakeInterruptedOnErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslerror_types.QSslError(h: error, owned: false)

  nimfunc[](slotval1)

proc cQSslSocket_slot_callback_handshakeInterruptedOnError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslSockethandshakeInterruptedOnErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhandshakeInterruptedOnError*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSockethandshakeInterruptedOnErrorSlot) =
  var tmp = new QSslSockethandshakeInterruptedOnErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_handshakeInterruptedOnError(self.h, cast[int](addr tmp[]), cQSslSocket_slot_callback_handshakeInterruptedOnError, cQSslSocket_slot_callback_handshakeInterruptedOnError_release)

proc tr*(_: type gen_qsslsocket_types.QSslSocket, s: cstring, c: cstring): string =
  let v_ms = fcQSslSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsslsocket_types.QSslSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSslSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, mode: cint): void =
  fcQSslSocket_connectToHostEncrypted3(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode))

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQSslSocket_connectToHostEncrypted4(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, sslPeerName: openArray[char], mode: cint): void =
  fcQSslSocket_connectToHostEncrypted42(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, struct_miqt_string(data: if len(sslPeerName) > 0: addr sslPeerName[0] else: nil, len: csize_t(len(sslPeerName))), cint(mode))

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, sslPeerName: openArray[char], mode: cint, protocol: cint): void =
  fcQSslSocket_connectToHostEncrypted5(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, struct_miqt_string(data: if len(sslPeerName) > 0: addr sslPeerName[0] else: nil, len: csize_t(len(sslPeerName))), cint(mode), cint(protocol))

proc setLocalCertificate*(self: gen_qsslsocket_types.QSslSocket, fileName: openArray[char], format: cint): void =
  fcQSslSocket_setLocalCertificate2(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), cint(format))

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: openArray[char], algorithm: cint): void =
  fcQSslSocket_setPrivateKey2(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), cint(algorithm))

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: openArray[char], algorithm: cint, format: cint): void =
  fcQSslSocket_setPrivateKey3(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), cint(algorithm), cint(format))

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: openArray[char], algorithm: cint, format: cint, passPhrase: openArray[byte]): void =
  fcQSslSocket_setPrivateKey4(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), cint(algorithm), cint(format), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))

proc waitForEncrypted*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForEncrypted1(self.h, msecs)

proc supportedProtocols*(_: type gen_qsslsocket_types.QSslSocket, backendName: openArray[char]): seq[cint] =
  var v_ma = fcQSslSocket_supportedProtocols1(struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isProtocolSupported*(_: type gen_qsslsocket_types.QSslSocket, protocol: cint, backendName: openArray[char]): bool =
  fcQSslSocket_isProtocolSupported2(cint(protocol), struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))

proc implementedClasses*(_: type gen_qsslsocket_types.QSslSocket, backendName: openArray[char]): seq[cint] =
  var v_ma = fcQSslSocket_implementedClasses1(struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isClassImplemented*(_: type gen_qsslsocket_types.QSslSocket, cl: cint, backendName: openArray[char]): bool =
  fcQSslSocket_isClassImplemented2(cint(cl), struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))

proc supportedFeatures*(_: type gen_qsslsocket_types.QSslSocket, backendName: openArray[char]): seq[cint] =
  var v_ma = fcQSslSocket_supportedFeatures1(struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isFeatureSupported*(_: type gen_qsslsocket_types.QSslSocket, feat: cint, backendName: openArray[char]): bool =
  fcQSslSocket_isFeatureSupported2(cint(feat), struct_miqt_string(data: if len(backendName) > 0: addr backendName[0] else: nil, len: csize_t(len(backendName))))

type QSslSocketmetaObjectProc* = proc(self: QSslSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSslSocketmetacastProc* = proc(self: QSslSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QSslSocketmetacallProc* = proc(self: QSslSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSslSocketresumeProc* = proc(self: QSslSocket): void {.raises: [], gcsafe.}
type QSslSocketsetSocketDescriptorProc* = proc(self: QSslSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QSslSocketconnectToHostProc* = proc(self: QSslSocket, hostName: openArray[char], port: cushort, openMode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QSslSocketdisconnectFromHostProc* = proc(self: QSslSocket): void {.raises: [], gcsafe.}
type QSslSocketsetSocketOptionProc* = proc(self: QSslSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QSslSocketsocketOptionProc* = proc(self: QSslSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSslSocketbytesAvailableProc* = proc(self: QSslSocket): clonglong {.raises: [], gcsafe.}
type QSslSocketbytesToWriteProc* = proc(self: QSslSocket): clonglong {.raises: [], gcsafe.}
type QSslSocketcanReadLineProc* = proc(self: QSslSocket): bool {.raises: [], gcsafe.}
type QSslSocketcloseProc* = proc(self: QSslSocket): void {.raises: [], gcsafe.}
type QSslSocketatEndProc* = proc(self: QSslSocket): bool {.raises: [], gcsafe.}
type QSslSocketsetReadBufferSizeProc* = proc(self: QSslSocket, size: clonglong): void {.raises: [], gcsafe.}
type QSslSocketwaitForConnectedProc* = proc(self: QSslSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSslSocketwaitForReadyReadProc* = proc(self: QSslSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSslSocketwaitForBytesWrittenProc* = proc(self: QSslSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSslSocketwaitForDisconnectedProc* = proc(self: QSslSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSslSocketreadDataProc* = proc(self: QSslSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QSslSocketskipDataProc* = proc(self: QSslSocket, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QSslSocketwriteDataProc* = proc(self: QSslSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QSslSocketbindXProc* = proc(self: QSslSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.raises: [], gcsafe.}
type QSslSocketsocketDescriptorProc* = proc(self: QSslSocket): uint {.raises: [], gcsafe.}
type QSslSocketisSequentialProc* = proc(self: QSslSocket): bool {.raises: [], gcsafe.}
type QSslSocketreadLineDataProc* = proc(self: QSslSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QSslSocketopenProc* = proc(self: QSslSocket, mode: cint): bool {.raises: [], gcsafe.}
type QSslSocketposProc* = proc(self: QSslSocket): clonglong {.raises: [], gcsafe.}
type QSslSocketsizeProc* = proc(self: QSslSocket): clonglong {.raises: [], gcsafe.}
type QSslSocketseekProc* = proc(self: QSslSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QSslSocketresetProc* = proc(self: QSslSocket): bool {.raises: [], gcsafe.}
type QSslSocketeventProc* = proc(self: QSslSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSslSocketeventFilterProc* = proc(self: QSslSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSslSockettimerEventProc* = proc(self: QSslSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSslSocketchildEventProc* = proc(self: QSslSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSslSocketcustomEventProc* = proc(self: QSslSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSslSocketconnectNotifyProc* = proc(self: QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSslSocketdisconnectNotifyProc* = proc(self: QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSslSocketVTable* {.inheritable, pure.} = object
  vtbl: cQSslSocketVTable
  metaObject*: QSslSocketmetaObjectProc
  metacast*: QSslSocketmetacastProc
  metacall*: QSslSocketmetacallProc
  resume*: QSslSocketresumeProc
  setSocketDescriptor*: QSslSocketsetSocketDescriptorProc
  connectToHost*: QSslSocketconnectToHostProc
  disconnectFromHost*: QSslSocketdisconnectFromHostProc
  setSocketOption*: QSslSocketsetSocketOptionProc
  socketOption*: QSslSocketsocketOptionProc
  bytesAvailable*: QSslSocketbytesAvailableProc
  bytesToWrite*: QSslSocketbytesToWriteProc
  canReadLine*: QSslSocketcanReadLineProc
  close*: QSslSocketcloseProc
  atEnd*: QSslSocketatEndProc
  setReadBufferSize*: QSslSocketsetReadBufferSizeProc
  waitForConnected*: QSslSocketwaitForConnectedProc
  waitForReadyRead*: QSslSocketwaitForReadyReadProc
  waitForBytesWritten*: QSslSocketwaitForBytesWrittenProc
  waitForDisconnected*: QSslSocketwaitForDisconnectedProc
  readData*: QSslSocketreadDataProc
  skipData*: QSslSocketskipDataProc
  writeData*: QSslSocketwriteDataProc
  bindX*: QSslSocketbindXProc
  socketDescriptor*: QSslSocketsocketDescriptorProc
  isSequential*: QSslSocketisSequentialProc
  readLineData*: QSslSocketreadLineDataProc
  open*: QSslSocketopenProc
  pos*: QSslSocketposProc
  size*: QSslSocketsizeProc
  seek*: QSslSocketseekProc
  reset*: QSslSocketresetProc
  event*: QSslSocketeventProc
  eventFilter*: QSslSocketeventFilterProc
  timerEvent*: QSslSockettimerEventProc
  childEvent*: QSslSocketchildEventProc
  customEvent*: QSslSocketcustomEventProc
  connectNotify*: QSslSocketconnectNotifyProc
  disconnectNotify*: QSslSocketdisconnectNotifyProc
proc QSslSocketmetaObject*(self: gen_qsslsocket_types.QSslSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslSocket_virtualbase_metaObject(self.h), owned: false)

proc cQSslSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSslSocketmetacast*(self: gen_qsslsocket_types.QSslSocket, param1: cstring): pointer =
  fcQSslSocket_virtualbase_metacast(self.h, param1)

proc cQSslSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSslSocketmetacall*(self: gen_qsslsocket_types.QSslSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSslSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSslSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSslSocketresume*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_virtualbase_resume(self.h)

proc cQSslSocket_vtable_callback_resume(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  vtbl[].resume(self)

proc QSslSocketsetSocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQSslSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc cQSslSocket_vtable_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSslSocketconnectToHost*(self: gen_qsslsocket_types.QSslSocket, hostName: openArray[char], port: cushort, openMode: cint, protocol: cint): void =
  fcQSslSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(openMode), cint(protocol))

proc cQSslSocket_vtable_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(openMode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QSslSocketdisconnectFromHost*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_virtualbase_disconnectFromHost(self.h)

proc cQSslSocket_vtable_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QSslSocketsetSocketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQSslSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc cQSslSocket_vtable_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QSslSocketsocketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSslSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc cQSslSocket_vtable_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSslSocketbytesAvailable*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_virtualbase_bytesAvailable(self.h)

proc cQSslSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QSslSocketbytesToWrite*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_virtualbase_bytesToWrite(self.h)

proc cQSslSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QSslSocketcanReadLine*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_virtualbase_canReadLine(self.h)

proc cQSslSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QSslSocketclose*(self: gen_qsslsocket_types.QSslSocket): void =
  fcQSslSocket_virtualbase_close(self.h)

proc cQSslSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  vtbl[].close(self)

proc QSslSocketatEnd*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_virtualbase_atEnd(self.h)

proc cQSslSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QSslSocketsetReadBufferSize*(self: gen_qsslsocket_types.QSslSocket, size: clonglong): void =
  fcQSslSocket_virtualbase_setReadBufferSize(self.h, size)

proc cQSslSocket_vtable_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QSslSocketwaitForConnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_virtualbase_waitForConnected(self.h, msecs)

proc cQSslSocket_vtable_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QSslSocketwaitForReadyRead*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc cQSslSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QSslSocketwaitForBytesWritten*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQSslSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QSslSocketwaitForDisconnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc cQSslSocket_vtable_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QSslSocketreadData*(self: gen_qsslsocket_types.QSslSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQSslSocket_virtualbase_readData(self.h, data, maxlen)

proc cQSslSocket_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QSslSocketskipData*(self: gen_qsslsocket_types.QSslSocket, maxSize: clonglong): clonglong =
  fcQSslSocket_virtualbase_skipData(self.h, maxSize)

proc cQSslSocket_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QSslSocketwriteData*(self: gen_qsslsocket_types.QSslSocket, data: cstring, len: clonglong): clonglong =
  fcQSslSocket_virtualbase_writeData(self.h, data, len)

proc cQSslSocket_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QSslSocketbindX*(self: gen_qsslsocket_types.QSslSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQSslSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc cQSslSocket_vtable_callback_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSslSocketsocketDescriptor*(self: gen_qsslsocket_types.QSslSocket): uint =
  fcQSslSocket_virtualbase_socketDescriptor(self.h)

proc cQSslSocket_vtable_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QSslSocketisSequential*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_virtualbase_isSequential(self.h)

proc cQSslSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QSslSocketreadLineData*(self: gen_qsslsocket_types.QSslSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQSslSocket_virtualbase_readLineData(self.h, data, maxlen)

proc cQSslSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QSslSocketopen*(self: gen_qsslsocket_types.QSslSocket, mode: cint): bool =
  fcQSslSocket_virtualbase_open(self.h, cint(mode))

proc cQSslSocket_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QSslSocketpos*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_virtualbase_pos(self.h)

proc cQSslSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QSslSocketsize*(self: gen_qsslsocket_types.QSslSocket): clonglong =
  fcQSslSocket_virtualbase_size(self.h)

proc cQSslSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QSslSocketseek*(self: gen_qsslsocket_types.QSslSocket, pos: clonglong): bool =
  fcQSslSocket_virtualbase_seek(self.h, pos)

proc cQSslSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QSslSocketreset*(self: gen_qsslsocket_types.QSslSocket): bool =
  fcQSslSocket_virtualbase_reset(self.h)

proc cQSslSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QSslSocketevent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQSslSocket_virtualbase_event(self.h, event.h)

proc cQSslSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSslSocketeventFilter*(self: gen_qsslsocket_types.QSslSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSslSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSslSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSslSockettimerEvent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSslSocket_virtualbase_timerEvent(self.h, event.h)

proc cQSslSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSslSocketchildEvent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSslSocket_virtualbase_childEvent(self.h, event.h)

proc cQSslSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSslSocketcustomEvent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQSslSocket_virtualbase_customEvent(self.h, event.h)

proc cQSslSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSslSocketconnectNotify*(self: gen_qsslsocket_types.QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSslSocket_virtualbase_connectNotify(self.h, signal.h)

proc cQSslSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSslSocketdisconnectNotify*(self: gen_qsslsocket_types.QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSslSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSslSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslSocketVTable](fcQSslSocket_vdata(self))
  let self = QSslSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSslSocket* {.inheritable.} = ref object of QSslSocket
  vtbl*: cQSslSocketVTable
method metaObject*(self: VirtualQSslSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSslSocketmetaObject(self[])
proc cQSslSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSslSocket, param1: cstring): pointer {.base.} =
  QSslSocketmetacast(self[], param1)
proc cQSslSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSslSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSslSocketmetacall(self[], param1, param2, param3)
proc cQSslSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method resume*(self: VirtualQSslSocket): void {.base.} =
  QSslSocketresume(self[])
proc cQSslSocket_method_callback_resume(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  inst.resume()

method setSocketDescriptor*(self: VirtualQSslSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QSslSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
proc cQSslSocket_method_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = inst.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

method connectToHost*(self: VirtualQSslSocket, hostName: openArray[char], port: cushort, openMode: cint, protocol: cint): void {.base.} =
  QSslSocketconnectToHost(self[], hostName, port, openMode, protocol)
proc cQSslSocket_method_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(openMode)
  let slotval4 = cint(protocol)
  inst.connectToHost(slotval1, slotval2, slotval3, slotval4)

method disconnectFromHost*(self: VirtualQSslSocket): void {.base.} =
  QSslSocketdisconnectFromHost(self[])
proc cQSslSocket_method_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  inst.disconnectFromHost()

method setSocketOption*(self: VirtualQSslSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QSslSocketsetSocketOption(self[], option, value)
proc cQSslSocket_method_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setSocketOption(slotval1, slotval2)

method socketOption*(self: VirtualQSslSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QSslSocketsocketOption(self[], option)
proc cQSslSocket_method_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method bytesAvailable*(self: VirtualQSslSocket): clonglong {.base.} =
  QSslSocketbytesAvailable(self[])
proc cQSslSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQSslSocket): clonglong {.base.} =
  QSslSocketbytesToWrite(self[])
proc cQSslSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQSslSocket): bool {.base.} =
  QSslSocketcanReadLine(self[])
proc cQSslSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method close*(self: VirtualQSslSocket): void {.base.} =
  QSslSocketclose(self[])
proc cQSslSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  inst.close()

method atEnd*(self: VirtualQSslSocket): bool {.base.} =
  QSslSocketatEnd(self[])
proc cQSslSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method setReadBufferSize*(self: VirtualQSslSocket, size: clonglong): void {.base.} =
  QSslSocketsetReadBufferSize(self[], size)
proc cQSslSocket_method_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = size
  inst.setReadBufferSize(slotval1)

method waitForConnected*(self: VirtualQSslSocket, msecs: cint): bool {.base.} =
  QSslSocketwaitForConnected(self[], msecs)
proc cQSslSocket_method_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForConnected(slotval1)
  virtualReturn

method waitForReadyRead*(self: VirtualQSslSocket, msecs: cint): bool {.base.} =
  QSslSocketwaitForReadyRead(self[], msecs)
proc cQSslSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQSslSocket, msecs: cint): bool {.base.} =
  QSslSocketwaitForBytesWritten(self[], msecs)
proc cQSslSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method waitForDisconnected*(self: VirtualQSslSocket, msecs: cint): bool {.base.} =
  QSslSocketwaitForDisconnected(self[], msecs)
proc cQSslSocket_method_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForDisconnected(slotval1)
  virtualReturn

method readData*(self: VirtualQSslSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QSslSocketreadData(self[], data, maxlen)
proc cQSslSocket_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method skipData*(self: VirtualQSslSocket, maxSize: clonglong): clonglong {.base.} =
  QSslSocketskipData(self[], maxSize)
proc cQSslSocket_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

method writeData*(self: VirtualQSslSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QSslSocketwriteData(self[], data, len)
proc cQSslSocket_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method bindX*(self: VirtualQSslSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.base.} =
  QSslSocketbindX(self[], address, port, mode)
proc cQSslSocket_method_callback_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = inst.bindX(slotval1, slotval2, slotval3)
  virtualReturn

method socketDescriptor*(self: VirtualQSslSocket): uint {.base.} =
  QSslSocketsocketDescriptor(self[])
proc cQSslSocket_method_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.socketDescriptor()
  virtualReturn

method isSequential*(self: VirtualQSslSocket): bool {.base.} =
  QSslSocketisSequential(self[])
proc cQSslSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method readLineData*(self: VirtualQSslSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QSslSocketreadLineData(self[], data, maxlen)
proc cQSslSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method open*(self: VirtualQSslSocket, mode: cint): bool {.base.} =
  QSslSocketopen(self[], mode)
proc cQSslSocket_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method pos*(self: VirtualQSslSocket): clonglong {.base.} =
  QSslSocketpos(self[])
proc cQSslSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQSslSocket): clonglong {.base.} =
  QSslSocketsize(self[])
proc cQSslSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method seek*(self: VirtualQSslSocket, pos: clonglong): bool {.base.} =
  QSslSocketseek(self[], pos)
proc cQSslSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method reset*(self: VirtualQSslSocket): bool {.base.} =
  QSslSocketreset(self[])
proc cQSslSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method event*(self: VirtualQSslSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSslSocketevent(self[], event)
proc cQSslSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSslSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSslSocketeventFilter(self[], watched, event)
proc cQSslSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSslSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSslSockettimerEvent(self[], event)
proc cQSslSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSslSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSslSocketchildEvent(self[], event)
proc cQSslSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSslSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSslSocketcustomEvent(self[], event)
proc cQSslSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSslSocketconnectNotify(self[], signal)
proc cQSslSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSslSocketdisconnectNotify(self[], signal)
proc cQSslSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslSocket](fcQSslSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setSocketState*(self: gen_qsslsocket_types.QSslSocket, state: cint): void =
  fcQSslSocket_protectedbase_setSocketState(self.h, cint(state))

proc setSocketError*(self: gen_qsslsocket_types.QSslSocket, socketError: cint): void =
  fcQSslSocket_protectedbase_setSocketError(self.h, cint(socketError))

proc setLocalPort*(self: gen_qsslsocket_types.QSslSocket, port: cushort): void =
  fcQSslSocket_protectedbase_setLocalPort(self.h, port)

proc setLocalAddress*(self: gen_qsslsocket_types.QSslSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQSslSocket_protectedbase_setLocalAddress(self.h, address.h)

proc setPeerPort*(self: gen_qsslsocket_types.QSslSocket, port: cushort): void =
  fcQSslSocket_protectedbase_setPeerPort(self.h, port)

proc setPeerAddress*(self: gen_qsslsocket_types.QSslSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQSslSocket_protectedbase_setPeerAddress(self.h, address.h)

proc setPeerName*(self: gen_qsslsocket_types.QSslSocket, name: openArray[char]): void =
  fcQSslSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qsslsocket_types.QSslSocket, openMode: cint): void =
  fcQSslSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qsslsocket_types.QSslSocket, errorString: openArray[char]): void =
  fcQSslSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qsslsocket_types.QSslSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSslSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsslsocket_types.QSslSocket): cint =
  fcQSslSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsslsocket_types.QSslSocket, signal: cstring): cint =
  fcQSslSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsslsocket_types.QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSslSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsslsocket_types.QSslSocket,
    vtbl: ref QSslSocketVTable = nil): gen_qsslsocket_types.QSslSocket =
  let vtbl = if vtbl == nil: new QSslSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSslSocketVTable](fcQSslSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSslSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSslSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSslSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQSslSocket_vtable_callback_resume
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQSslSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQSslSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQSslSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQSslSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQSslSocket_vtable_callback_socketOption
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSslSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSslSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSslSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQSslSocket_vtable_callback_close
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSslSocket_vtable_callback_atEnd
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQSslSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQSslSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSslSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSslSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQSslSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSslSocket_vtable_callback_readData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQSslSocket_vtable_callback_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSslSocket_vtable_callback_writeData
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQSslSocket_vtable_callback_bindX
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQSslSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSslSocket_vtable_callback_isSequential
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSslSocket_vtable_callback_readLineData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSslSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSslSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSslSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSslSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSslSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSslSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSslSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSslSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSslSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSslSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSslSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSslSocket_vtable_callback_disconnectNotify
  gen_qsslsocket_types.QSslSocket(h: fcQSslSocket_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsslsocket_types.QSslSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSslSocketVTable = nil): gen_qsslsocket_types.QSslSocket =
  let vtbl = if vtbl == nil: new QSslSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSslSocketVTable](fcQSslSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSslSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSslSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSslSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQSslSocket_vtable_callback_resume
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQSslSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQSslSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQSslSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQSslSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQSslSocket_vtable_callback_socketOption
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSslSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSslSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSslSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQSslSocket_vtable_callback_close
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSslSocket_vtable_callback_atEnd
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQSslSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQSslSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSslSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSslSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQSslSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSslSocket_vtable_callback_readData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQSslSocket_vtable_callback_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSslSocket_vtable_callback_writeData
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQSslSocket_vtable_callback_bindX
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQSslSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSslSocket_vtable_callback_isSequential
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSslSocket_vtable_callback_readLineData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSslSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSslSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSslSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSslSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSslSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSslSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSslSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSslSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSslSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSslSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSslSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSslSocket_vtable_callback_disconnectNotify
  gen_qsslsocket_types.QSslSocket(h: fcQSslSocket_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSslSocket_mvtbl = cQSslSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSslSocket()[])](self.fcQSslSocket_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSslSocket_method_callback_metaObject,
  metacast: cQSslSocket_method_callback_metacast,
  metacall: cQSslSocket_method_callback_metacall,
  resume: cQSslSocket_method_callback_resume,
  setSocketDescriptor: cQSslSocket_method_callback_setSocketDescriptor,
  connectToHost: cQSslSocket_method_callback_connectToHost,
  disconnectFromHost: cQSslSocket_method_callback_disconnectFromHost,
  setSocketOption: cQSslSocket_method_callback_setSocketOption,
  socketOption: cQSslSocket_method_callback_socketOption,
  bytesAvailable: cQSslSocket_method_callback_bytesAvailable,
  bytesToWrite: cQSslSocket_method_callback_bytesToWrite,
  canReadLine: cQSslSocket_method_callback_canReadLine,
  close: cQSslSocket_method_callback_close,
  atEnd: cQSslSocket_method_callback_atEnd,
  setReadBufferSize: cQSslSocket_method_callback_setReadBufferSize,
  waitForConnected: cQSslSocket_method_callback_waitForConnected,
  waitForReadyRead: cQSslSocket_method_callback_waitForReadyRead,
  waitForBytesWritten: cQSslSocket_method_callback_waitForBytesWritten,
  waitForDisconnected: cQSslSocket_method_callback_waitForDisconnected,
  readData: cQSslSocket_method_callback_readData,
  skipData: cQSslSocket_method_callback_skipData,
  writeData: cQSslSocket_method_callback_writeData,
  bindX: cQSslSocket_method_callback_bindX,
  socketDescriptor: cQSslSocket_method_callback_socketDescriptor,
  isSequential: cQSslSocket_method_callback_isSequential,
  readLineData: cQSslSocket_method_callback_readLineData,
  open: cQSslSocket_method_callback_open,
  pos: cQSslSocket_method_callback_pos,
  size: cQSslSocket_method_callback_size,
  seek: cQSslSocket_method_callback_seek,
  reset: cQSslSocket_method_callback_reset,
  event: cQSslSocket_method_callback_event,
  eventFilter: cQSslSocket_method_callback_eventFilter,
  timerEvent: cQSslSocket_method_callback_timerEvent,
  childEvent: cQSslSocket_method_callback_childEvent,
  customEvent: cQSslSocket_method_callback_customEvent,
  connectNotify: cQSslSocket_method_callback_connectNotify,
  disconnectNotify: cQSslSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsslsocket_types.QSslSocket,
    inst: VirtualQSslSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSslSocket_new(addr(cQSslSocket_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsslsocket_types.QSslSocket,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSslSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSslSocket_new2(addr(cQSslSocket_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsslsocket_types.QSslSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslSocket_staticMetaObject())
