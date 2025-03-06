import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
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
  gen_qocspresponse_types,
  gen_qsslcertificate_types,
  gen_qsslcipher_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslkey_types,
  gen_qsslpresharedkeyauthenticator_types,
  gen_qtcpsocket

type cQSslSocket*{.exportc: "QSslSocket", incompleteStruct.} = object

proc fcQSslSocket_new(): ptr cQSslSocket {.importc: "QSslSocket_new".}
proc fcQSslSocket_new2(parent: pointer): ptr cQSslSocket {.importc: "QSslSocket_new2".}
proc fcQSslSocket_metaObject(self: pointer, ): pointer {.importc: "QSslSocket_metaObject".}
proc fcQSslSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslSocket_metacast".}
proc fcQSslSocket_tr(s: cstring): struct_miqt_string {.importc: "QSslSocket_tr".}
proc fcQSslSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QSslSocket_trUtf8".}
proc fcQSslSocket_resume(self: pointer, ): void {.importc: "QSslSocket_resume".}
proc fcQSslSocket_connectToHostEncrypted(self: pointer, hostName: struct_miqt_string, port: cushort): void {.importc: "QSslSocket_connectToHostEncrypted".}
proc fcQSslSocket_connectToHostEncrypted2(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string): void {.importc: "QSslSocket_connectToHostEncrypted2".}
proc fcQSslSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QSslSocket_setSocketDescriptor".}
proc fcQSslSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHost".}
proc fcQSslSocket_disconnectFromHost(self: pointer, ): void {.importc: "QSslSocket_disconnectFromHost".}
proc fcQSslSocket_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QSslSocket_setSocketOption".}
proc fcQSslSocket_socketOption(self: pointer, option: cint): pointer {.importc: "QSslSocket_socketOption".}
proc fcQSslSocket_mode(self: pointer, ): cint {.importc: "QSslSocket_mode".}
proc fcQSslSocket_isEncrypted(self: pointer, ): bool {.importc: "QSslSocket_isEncrypted".}
proc fcQSslSocket_protocol(self: pointer, ): cint {.importc: "QSslSocket_protocol".}
proc fcQSslSocket_setProtocol(self: pointer, protocol: cint): void {.importc: "QSslSocket_setProtocol".}
proc fcQSslSocket_peerVerifyMode(self: pointer, ): cint {.importc: "QSslSocket_peerVerifyMode".}
proc fcQSslSocket_setPeerVerifyMode(self: pointer, mode: cint): void {.importc: "QSslSocket_setPeerVerifyMode".}
proc fcQSslSocket_peerVerifyDepth(self: pointer, ): cint {.importc: "QSslSocket_peerVerifyDepth".}
proc fcQSslSocket_setPeerVerifyDepth(self: pointer, depth: cint): void {.importc: "QSslSocket_setPeerVerifyDepth".}
proc fcQSslSocket_peerVerifyName(self: pointer, ): struct_miqt_string {.importc: "QSslSocket_peerVerifyName".}
proc fcQSslSocket_setPeerVerifyName(self: pointer, hostName: struct_miqt_string): void {.importc: "QSslSocket_setPeerVerifyName".}
proc fcQSslSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QSslSocket_bytesAvailable".}
proc fcQSslSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QSslSocket_bytesToWrite".}
proc fcQSslSocket_canReadLine(self: pointer, ): bool {.importc: "QSslSocket_canReadLine".}
proc fcQSslSocket_close(self: pointer, ): void {.importc: "QSslSocket_close".}
proc fcQSslSocket_atEnd(self: pointer, ): bool {.importc: "QSslSocket_atEnd".}
proc fcQSslSocket_flush(self: pointer, ): bool {.importc: "QSslSocket_flush".}
proc fcQSslSocket_abort(self: pointer, ): void {.importc: "QSslSocket_abort".}
proc fcQSslSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QSslSocket_setReadBufferSize".}
proc fcQSslSocket_encryptedBytesAvailable(self: pointer, ): clonglong {.importc: "QSslSocket_encryptedBytesAvailable".}
proc fcQSslSocket_encryptedBytesToWrite(self: pointer, ): clonglong {.importc: "QSslSocket_encryptedBytesToWrite".}
proc fcQSslSocket_sslConfiguration(self: pointer, ): pointer {.importc: "QSslSocket_sslConfiguration".}
proc fcQSslSocket_setSslConfiguration(self: pointer, config: pointer): void {.importc: "QSslSocket_setSslConfiguration".}
proc fcQSslSocket_setLocalCertificateChain(self: pointer, localChain: struct_miqt_array): void {.importc: "QSslSocket_setLocalCertificateChain".}
proc fcQSslSocket_localCertificateChain(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_localCertificateChain".}
proc fcQSslSocket_setLocalCertificate(self: pointer, certificate: pointer): void {.importc: "QSslSocket_setLocalCertificate".}
proc fcQSslSocket_setLocalCertificateWithFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSslSocket_setLocalCertificateWithFileName".}
proc fcQSslSocket_localCertificate(self: pointer, ): pointer {.importc: "QSslSocket_localCertificate".}
proc fcQSslSocket_peerCertificate(self: pointer, ): pointer {.importc: "QSslSocket_peerCertificate".}
proc fcQSslSocket_peerCertificateChain(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_peerCertificateChain".}
proc fcQSslSocket_sessionCipher(self: pointer, ): pointer {.importc: "QSslSocket_sessionCipher".}
proc fcQSslSocket_sessionProtocol(self: pointer, ): cint {.importc: "QSslSocket_sessionProtocol".}
proc fcQSslSocket_ocspResponses(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_ocspResponses".}
proc fcQSslSocket_setPrivateKey(self: pointer, key: pointer): void {.importc: "QSslSocket_setPrivateKey".}
proc fcQSslSocket_setPrivateKeyWithFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSslSocket_setPrivateKeyWithFileName".}
proc fcQSslSocket_privateKey(self: pointer, ): pointer {.importc: "QSslSocket_privateKey".}
proc fcQSslSocket_ciphers(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_ciphers".}
proc fcQSslSocket_setCiphers(self: pointer, ciphers: struct_miqt_array): void {.importc: "QSslSocket_setCiphers".}
proc fcQSslSocket_setCiphersWithCiphers(self: pointer, ciphers: struct_miqt_string): void {.importc: "QSslSocket_setCiphersWithCiphers".}
proc fcQSslSocket_setDefaultCiphers(ciphers: struct_miqt_array): void {.importc: "QSslSocket_setDefaultCiphers".}
proc fcQSslSocket_defaultCiphers(): struct_miqt_array {.importc: "QSslSocket_defaultCiphers".}
proc fcQSslSocket_supportedCiphers(): struct_miqt_array {.importc: "QSslSocket_supportedCiphers".}
proc fcQSslSocket_addCaCertificates(self: pointer, path: struct_miqt_string): bool {.importc: "QSslSocket_addCaCertificates".}
proc fcQSslSocket_addCaCertificate(self: pointer, certificate: pointer): void {.importc: "QSslSocket_addCaCertificate".}
proc fcQSslSocket_addCaCertificatesWithCertificates(self: pointer, certificates: struct_miqt_array): void {.importc: "QSslSocket_addCaCertificatesWithCertificates".}
proc fcQSslSocket_setCaCertificates(self: pointer, certificates: struct_miqt_array): void {.importc: "QSslSocket_setCaCertificates".}
proc fcQSslSocket_caCertificates(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_caCertificates".}
proc fcQSslSocket_addDefaultCaCertificates(path: struct_miqt_string): bool {.importc: "QSslSocket_addDefaultCaCertificates".}
proc fcQSslSocket_addDefaultCaCertificate(certificate: pointer): void {.importc: "QSslSocket_addDefaultCaCertificate".}
proc fcQSslSocket_addDefaultCaCertificatesWithCertificates(certificates: struct_miqt_array): void {.importc: "QSslSocket_addDefaultCaCertificatesWithCertificates".}
proc fcQSslSocket_setDefaultCaCertificates(certificates: struct_miqt_array): void {.importc: "QSslSocket_setDefaultCaCertificates".}
proc fcQSslSocket_defaultCaCertificates(): struct_miqt_array {.importc: "QSslSocket_defaultCaCertificates".}
proc fcQSslSocket_systemCaCertificates(): struct_miqt_array {.importc: "QSslSocket_systemCaCertificates".}
proc fcQSslSocket_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForConnected".}
proc fcQSslSocket_waitForEncrypted(self: pointer, ): bool {.importc: "QSslSocket_waitForEncrypted".}
proc fcQSslSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForReadyRead".}
proc fcQSslSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForBytesWritten".}
proc fcQSslSocket_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForDisconnected".}
proc fcQSslSocket_sslErrors(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_sslErrors".}
proc fcQSslSocket_sslHandshakeErrors(self: pointer, ): struct_miqt_array {.importc: "QSslSocket_sslHandshakeErrors".}
proc fcQSslSocket_supportsSsl(): bool {.importc: "QSslSocket_supportsSsl".}
proc fcQSslSocket_sslLibraryVersionNumber(): clong {.importc: "QSslSocket_sslLibraryVersionNumber".}
proc fcQSslSocket_sslLibraryVersionString(): struct_miqt_string {.importc: "QSslSocket_sslLibraryVersionString".}
proc fcQSslSocket_sslLibraryBuildVersionNumber(): clong {.importc: "QSslSocket_sslLibraryBuildVersionNumber".}
proc fcQSslSocket_sslLibraryBuildVersionString(): struct_miqt_string {.importc: "QSslSocket_sslLibraryBuildVersionString".}
proc fcQSslSocket_ignoreSslErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QSslSocket_ignoreSslErrors".}
proc fcQSslSocket_startClientEncryption(self: pointer, ): void {.importc: "QSslSocket_startClientEncryption".}
proc fcQSslSocket_startServerEncryption(self: pointer, ): void {.importc: "QSslSocket_startServerEncryption".}
proc fcQSslSocket_ignoreSslErrors2(self: pointer, ): void {.importc: "QSslSocket_ignoreSslErrors2".}
proc fcQSslSocket_encrypted(self: pointer, ): void {.importc: "QSslSocket_encrypted".}
proc fcQSslSocket_connect_encrypted(self: pointer, slot: int) {.importc: "QSslSocket_connect_encrypted".}
proc fcQSslSocket_peerVerifyError(self: pointer, error: pointer): void {.importc: "QSslSocket_peerVerifyError".}
proc fcQSslSocket_connect_peerVerifyError(self: pointer, slot: int) {.importc: "QSslSocket_connect_peerVerifyError".}
proc fcQSslSocket_sslErrorsWithErrors(self: pointer, errors: struct_miqt_array): void {.importc: "QSslSocket_sslErrorsWithErrors".}
proc fcQSslSocket_connect_sslErrorsWithErrors(self: pointer, slot: int) {.importc: "QSslSocket_connect_sslErrorsWithErrors".}
proc fcQSslSocket_modeChanged(self: pointer, newMode: cint): void {.importc: "QSslSocket_modeChanged".}
proc fcQSslSocket_connect_modeChanged(self: pointer, slot: int) {.importc: "QSslSocket_connect_modeChanged".}
proc fcQSslSocket_encryptedBytesWritten(self: pointer, totalBytes: clonglong): void {.importc: "QSslSocket_encryptedBytesWritten".}
proc fcQSslSocket_connect_encryptedBytesWritten(self: pointer, slot: int) {.importc: "QSslSocket_connect_encryptedBytesWritten".}
proc fcQSslSocket_preSharedKeyAuthenticationRequired(self: pointer, authenticator: pointer): void {.importc: "QSslSocket_preSharedKeyAuthenticationRequired".}
proc fcQSslSocket_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int) {.importc: "QSslSocket_connect_preSharedKeyAuthenticationRequired".}
proc fcQSslSocket_newSessionTicketReceived(self: pointer, ): void {.importc: "QSslSocket_newSessionTicketReceived".}
proc fcQSslSocket_connect_newSessionTicketReceived(self: pointer, slot: int) {.importc: "QSslSocket_connect_newSessionTicketReceived".}
proc fcQSslSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslSocket_tr2".}
proc fcQSslSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslSocket_tr3".}
proc fcQSslSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslSocket_trUtf82".}
proc fcQSslSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslSocket_trUtf83".}
proc fcQSslSocket_connectToHostEncrypted3(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint): void {.importc: "QSslSocket_connectToHostEncrypted3".}
proc fcQSslSocket_connectToHostEncrypted4(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHostEncrypted4".}
proc fcQSslSocket_connectToHostEncrypted42(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string, mode: cint): void {.importc: "QSslSocket_connectToHostEncrypted42".}
proc fcQSslSocket_connectToHostEncrypted5(self: pointer, hostName: struct_miqt_string, port: cushort, sslPeerName: struct_miqt_string, mode: cint, protocol: cint): void {.importc: "QSslSocket_connectToHostEncrypted5".}
proc fcQSslSocket_setLocalCertificate2(self: pointer, fileName: struct_miqt_string, format: cint): void {.importc: "QSslSocket_setLocalCertificate2".}
proc fcQSslSocket_setPrivateKey2(self: pointer, fileName: struct_miqt_string, algorithm: cint): void {.importc: "QSslSocket_setPrivateKey2".}
proc fcQSslSocket_setPrivateKey3(self: pointer, fileName: struct_miqt_string, algorithm: cint, format: cint): void {.importc: "QSslSocket_setPrivateKey3".}
proc fcQSslSocket_setPrivateKey4(self: pointer, fileName: struct_miqt_string, algorithm: cint, format: cint, passPhrase: struct_miqt_string): void {.importc: "QSslSocket_setPrivateKey4".}
proc fcQSslSocket_addCaCertificates2(self: pointer, path: struct_miqt_string, format: cint): bool {.importc: "QSslSocket_addCaCertificates2".}
proc fcQSslSocket_addCaCertificates3(self: pointer, path: struct_miqt_string, format: cint, syntax: cint): bool {.importc: "QSslSocket_addCaCertificates3".}
proc fcQSslSocket_addDefaultCaCertificates2(path: struct_miqt_string, format: cint): bool {.importc: "QSslSocket_addDefaultCaCertificates2".}
proc fcQSslSocket_addDefaultCaCertificates3(path: struct_miqt_string, format: cint, syntax: cint): bool {.importc: "QSslSocket_addDefaultCaCertificates3".}
proc fcQSslSocket_waitForEncrypted1(self: pointer, msecs: cint): bool {.importc: "QSslSocket_waitForEncrypted1".}
proc fQSslSocket_virtualbase_resume(self: pointer, ): void{.importc: "QSslSocket_virtualbase_resume".}
proc fcQSslSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_resume".}
proc fQSslSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QSslSocket_virtualbase_setSocketDescriptor".}
proc fcQSslSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_setSocketDescriptor".}
proc fQSslSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void{.importc: "QSslSocket_virtualbase_connectToHost".}
proc fcQSslSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_connectToHost".}
proc fQSslSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QSslSocket_virtualbase_disconnectFromHost".}
proc fcQSslSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_disconnectFromHost".}
proc fQSslSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QSslSocket_virtualbase_setSocketOption".}
proc fcQSslSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_setSocketOption".}
proc fQSslSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QSslSocket_virtualbase_socketOption".}
proc fcQSslSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_socketOption".}
proc fQSslSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_bytesAvailable".}
proc fcQSslSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_bytesAvailable".}
proc fQSslSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_bytesToWrite".}
proc fcQSslSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_bytesToWrite".}
proc fQSslSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_canReadLine".}
proc fcQSslSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_canReadLine".}
proc fQSslSocket_virtualbase_close(self: pointer, ): void{.importc: "QSslSocket_virtualbase_close".}
proc fcQSslSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_close".}
proc fQSslSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_atEnd".}
proc fcQSslSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_atEnd".}
proc fQSslSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QSslSocket_virtualbase_setReadBufferSize".}
proc fcQSslSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_setReadBufferSize".}
proc fQSslSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForConnected".}
proc fcQSslSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForConnected".}
proc fQSslSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForReadyRead".}
proc fcQSslSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForReadyRead".}
proc fQSslSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForBytesWritten".}
proc fcQSslSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForBytesWritten".}
proc fQSslSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QSslSocket_virtualbase_waitForDisconnected".}
proc fcQSslSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_waitForDisconnected".}
proc fQSslSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSslSocket_virtualbase_readData".}
proc fcQSslSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_readData".}
proc fQSslSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QSslSocket_virtualbase_writeData".}
proc fcQSslSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_writeData".}
proc fQSslSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QSslSocket_virtualbase_socketDescriptor".}
proc fcQSslSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_socketDescriptor".}
proc fQSslSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_isSequential".}
proc fcQSslSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_isSequential".}
proc fQSslSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSslSocket_virtualbase_readLineData".}
proc fcQSslSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_readLineData".}
proc fQSslSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QSslSocket_virtualbase_open".}
proc fcQSslSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_open".}
proc fQSslSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_pos".}
proc fcQSslSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_pos".}
proc fQSslSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QSslSocket_virtualbase_size".}
proc fcQSslSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_size".}
proc fQSslSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QSslSocket_virtualbase_seek".}
proc fcQSslSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_seek".}
proc fQSslSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QSslSocket_virtualbase_reset".}
proc fcQSslSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_reset".}
proc fQSslSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSslSocket_virtualbase_event".}
proc fcQSslSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_event".}
proc fQSslSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSslSocket_virtualbase_eventFilter".}
proc fcQSslSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_eventFilter".}
proc fQSslSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSslSocket_virtualbase_timerEvent".}
proc fcQSslSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_timerEvent".}
proc fQSslSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSslSocket_virtualbase_childEvent".}
proc fcQSslSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_childEvent".}
proc fQSslSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSslSocket_virtualbase_customEvent".}
proc fcQSslSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_customEvent".}
proc fQSslSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSslSocket_virtualbase_connectNotify".}
proc fcQSslSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_connectNotify".}
proc fQSslSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSslSocket_virtualbase_disconnectNotify".}
proc fcQSslSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSslSocket_override_virtual_disconnectNotify".}
proc fcQSslSocket_delete(self: pointer) {.importc: "QSslSocket_delete".}


func init*(T: type gen_qsslsocket_types.QSslSocket, h: ptr cQSslSocket): gen_qsslsocket_types.QSslSocket =
  T(h: h)
proc create*(T: type gen_qsslsocket_types.QSslSocket, ): gen_qsslsocket_types.QSslSocket =
  gen_qsslsocket_types.QSslSocket.init(fcQSslSocket_new())

proc create*(T: type gen_qsslsocket_types.QSslSocket, parent: gen_qobject_types.QObject): gen_qsslsocket_types.QSslSocket =
  gen_qsslsocket_types.QSslSocket.init(fcQSslSocket_new2(parent.h))

proc metaObject*(self: gen_qsslsocket_types.QSslSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslSocket_metaObject(self.h))

proc metacast*(self: gen_qsslsocket_types.QSslSocket, param1: cstring): pointer =
  fcQSslSocket_metacast(self.h, param1)

proc tr*(_: type gen_qsslsocket_types.QSslSocket, s: cstring): string =
  let v_ms = fcQSslSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsslsocket_types.QSslSocket, s: cstring): string =
  let v_ms = fcQSslSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resume*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_resume(self.h)

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort): void =
  fcQSslSocket_connectToHostEncrypted(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port)

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, sslPeerName: string): void =
  fcQSslSocket_connectToHostEncrypted2(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: sslPeerName, len: csize_t(len(sslPeerName))))

proc setSocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQSslSocket_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc connectToHost*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, openMode: cint, protocol: cint): void =
  fcQSslSocket_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(openMode), cint(protocol))

proc disconnectFromHost*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_disconnectFromHost(self.h)

proc setSocketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQSslSocket_setSocketOption(self.h, cint(option), value.h)

proc socketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSslSocket_socketOption(self.h, cint(option)))

proc mode*(self: gen_qsslsocket_types.QSslSocket, ): cint =
  cint(fcQSslSocket_mode(self.h))

proc isEncrypted*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fcQSslSocket_isEncrypted(self.h)

proc protocol*(self: gen_qsslsocket_types.QSslSocket, ): cint =
  cint(fcQSslSocket_protocol(self.h))

proc setProtocol*(self: gen_qsslsocket_types.QSslSocket, protocol: cint): void =
  fcQSslSocket_setProtocol(self.h, cint(protocol))

proc peerVerifyMode*(self: gen_qsslsocket_types.QSslSocket, ): cint =
  cint(fcQSslSocket_peerVerifyMode(self.h))

proc setPeerVerifyMode*(self: gen_qsslsocket_types.QSslSocket, mode: cint): void =
  fcQSslSocket_setPeerVerifyMode(self.h, cint(mode))

proc peerVerifyDepth*(self: gen_qsslsocket_types.QSslSocket, ): cint =
  fcQSslSocket_peerVerifyDepth(self.h)

proc setPeerVerifyDepth*(self: gen_qsslsocket_types.QSslSocket, depth: cint): void =
  fcQSslSocket_setPeerVerifyDepth(self.h, depth)

proc peerVerifyName*(self: gen_qsslsocket_types.QSslSocket, ): string =
  let v_ms = fcQSslSocket_peerVerifyName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeerVerifyName*(self: gen_qsslsocket_types.QSslSocket, hostName: string): void =
  fcQSslSocket_setPeerVerifyName(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc bytesAvailable*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fcQSslSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fcQSslSocket_bytesToWrite(self.h)

proc canReadLine*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fcQSslSocket_canReadLine(self.h)

proc close*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_close(self.h)

proc atEnd*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fcQSslSocket_atEnd(self.h)

proc flush*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fcQSslSocket_flush(self.h)

proc abort*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_abort(self.h)

proc setReadBufferSize*(self: gen_qsslsocket_types.QSslSocket, size: clonglong): void =
  fcQSslSocket_setReadBufferSize(self.h, size)

proc encryptedBytesAvailable*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fcQSslSocket_encryptedBytesAvailable(self.h)

proc encryptedBytesToWrite*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fcQSslSocket_encryptedBytesToWrite(self.h)

proc sslConfiguration*(self: gen_qsslsocket_types.QSslSocket, ): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslSocket_sslConfiguration(self.h))

proc setSslConfiguration*(self: gen_qsslsocket_types.QSslSocket, config: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslSocket_setSslConfiguration(self.h, config.h)

proc setLocalCertificateChain*(self: gen_qsslsocket_types.QSslSocket, localChain: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var localChain_CArray = newSeq[pointer](len(localChain))
  for i in 0..<len(localChain):
    localChain_CArray[i] = localChain[i].h

  fcQSslSocket_setLocalCertificateChain(self.h, struct_miqt_array(len: csize_t(len(localChain)), data: if len(localChain) == 0: nil else: addr(localChain_CArray[0])))

proc localCertificateChain*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_localCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc setLocalCertificate*(self: gen_qsslsocket_types.QSslSocket, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslSocket_setLocalCertificate(self.h, certificate.h)

proc setLocalCertificate*(self: gen_qsslsocket_types.QSslSocket, fileName: string): void =
  fcQSslSocket_setLocalCertificateWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc localCertificate*(self: gen_qsslsocket_types.QSslSocket, ): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslSocket_localCertificate(self.h))

proc peerCertificate*(self: gen_qsslsocket_types.QSslSocket, ): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslSocket_peerCertificate(self.h))

proc peerCertificateChain*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_peerCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc sessionCipher*(self: gen_qsslsocket_types.QSslSocket, ): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher(h: fcQSslSocket_sessionCipher(self.h))

proc sessionProtocol*(self: gen_qsslsocket_types.QSslSocket, ): cint =
  cint(fcQSslSocket_sessionProtocol(self.h))

proc ocspResponses*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qocspresponse_types.QOcspResponse] =
  var v_ma = fcQSslSocket_ocspResponses(self.h)
  var vx_ret = newSeq[gen_qocspresponse_types.QOcspResponse](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qocspresponse_types.QOcspResponse(h: v_outCast[i])
  vx_ret

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, key: gen_qsslkey_types.QSslKey): void =
  fcQSslSocket_setPrivateKey(self.h, key.h)

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: string): void =
  fcQSslSocket_setPrivateKeyWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc privateKey*(self: gen_qsslsocket_types.QSslSocket, ): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslSocket_privateKey(self.h))

proc ciphers*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcipher_types.QSslCipher] =
  var v_ma = fcQSslSocket_ciphers(self.h)
  var vx_ret = newSeq[gen_qsslcipher_types.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher_types.QSslCipher(h: v_outCast[i])
  vx_ret

proc setCiphers*(self: gen_qsslsocket_types.QSslSocket, ciphers: seq[gen_qsslcipher_types.QSslCipher]): void =
  var ciphers_CArray = newSeq[pointer](len(ciphers))
  for i in 0..<len(ciphers):
    ciphers_CArray[i] = ciphers[i].h

  fcQSslSocket_setCiphers(self.h, struct_miqt_array(len: csize_t(len(ciphers)), data: if len(ciphers) == 0: nil else: addr(ciphers_CArray[0])))

proc setCiphers*(self: gen_qsslsocket_types.QSslSocket, ciphers: string): void =
  fcQSslSocket_setCiphersWithCiphers(self.h, struct_miqt_string(data: ciphers, len: csize_t(len(ciphers))))

proc setDefaultCiphers*(_: type gen_qsslsocket_types.QSslSocket, ciphers: seq[gen_qsslcipher_types.QSslCipher]): void =
  var ciphers_CArray = newSeq[pointer](len(ciphers))
  for i in 0..<len(ciphers):
    ciphers_CArray[i] = ciphers[i].h

  fcQSslSocket_setDefaultCiphers(struct_miqt_array(len: csize_t(len(ciphers)), data: if len(ciphers) == 0: nil else: addr(ciphers_CArray[0])))

proc defaultCiphers*(_: type gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcipher_types.QSslCipher] =
  var v_ma = fcQSslSocket_defaultCiphers()
  var vx_ret = newSeq[gen_qsslcipher_types.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher_types.QSslCipher(h: v_outCast[i])
  vx_ret

proc supportedCiphers*(_: type gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcipher_types.QSslCipher] =
  var v_ma = fcQSslSocket_supportedCiphers()
  var vx_ret = newSeq[gen_qsslcipher_types.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher_types.QSslCipher(h: v_outCast[i])
  vx_ret

proc addCaCertificates*(self: gen_qsslsocket_types.QSslSocket, path: string): bool =
  fcQSslSocket_addCaCertificates(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc addCaCertificate*(self: gen_qsslsocket_types.QSslSocket, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslSocket_addCaCertificate(self.h, certificate.h)

proc addCaCertificates*(self: gen_qsslsocket_types.QSslSocket, certificates: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_addCaCertificatesWithCertificates(self.h, struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc setCaCertificates*(self: gen_qsslsocket_types.QSslSocket, certificates: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_setCaCertificates(self.h, struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc caCertificates*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_caCertificates(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc addDefaultCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, path: string): bool =
  fcQSslSocket_addDefaultCaCertificates(struct_miqt_string(data: path, len: csize_t(len(path))))

proc addDefaultCaCertificate*(_: type gen_qsslsocket_types.QSslSocket, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslSocket_addDefaultCaCertificate(certificate.h)

proc addDefaultCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, certificates: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_addDefaultCaCertificatesWithCertificates(struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc setDefaultCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, certificates: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslSocket_setDefaultCaCertificates(struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc defaultCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_defaultCaCertificates()
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc systemCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslSocket_systemCaCertificates()
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc waitForConnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForConnected(self.h, msecs)

proc waitForEncrypted*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fcQSslSocket_waitForEncrypted(self.h)

proc waitForReadyRead*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForBytesWritten(self.h, msecs)

proc waitForDisconnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForDisconnected(self.h, msecs)

proc sslErrors*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslerror_types.QSslError] =
  var v_ma = fcQSslSocket_sslErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i])
  vx_ret

proc sslHandshakeErrors*(self: gen_qsslsocket_types.QSslSocket, ): seq[gen_qsslerror_types.QSslError] =
  var v_ma = fcQSslSocket_sslHandshakeErrors(self.h)
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i])
  vx_ret

proc supportsSsl*(_: type gen_qsslsocket_types.QSslSocket, ): bool =
  fcQSslSocket_supportsSsl()

proc sslLibraryVersionNumber*(_: type gen_qsslsocket_types.QSslSocket, ): clong =
  fcQSslSocket_sslLibraryVersionNumber()

proc sslLibraryVersionString*(_: type gen_qsslsocket_types.QSslSocket, ): string =
  let v_ms = fcQSslSocket_sslLibraryVersionString()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sslLibraryBuildVersionNumber*(_: type gen_qsslsocket_types.QSslSocket, ): clong =
  fcQSslSocket_sslLibraryBuildVersionNumber()

proc sslLibraryBuildVersionString*(_: type gen_qsslsocket_types.QSslSocket, ): string =
  let v_ms = fcQSslSocket_sslLibraryBuildVersionString()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ignoreSslErrors*(self: gen_qsslsocket_types.QSslSocket, errors: seq[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslSocket_ignoreSslErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc startClientEncryption*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_startClientEncryption(self.h)

proc startServerEncryption*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_startServerEncryption(self.h)

proc ignoreSslErrors*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_ignoreSslErrors2(self.h)

proc encrypted*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_encrypted(self.h)

type QSslSocketencryptedSlot* = proc()
proc miqt_exec_callback_QSslSocket_encrypted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketencryptedSlot](cast[pointer](slot))
  nimfunc[]()

proc onencrypted*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketencryptedSlot) =
  var tmp = new QSslSocketencryptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_encrypted(self.h, cast[int](addr tmp[]))

proc peerVerifyError*(self: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslSocket_peerVerifyError(self.h, error.h)

type QSslSocketpeerVerifyErrorSlot* = proc(error: gen_qsslerror_types.QSslError)
proc miqt_exec_callback_QSslSocket_peerVerifyError(slot: int, error: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketpeerVerifyErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslerror_types.QSslError(h: error)

  nimfunc[](slotval1)

proc onpeerVerifyError*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketpeerVerifyErrorSlot) =
  var tmp = new QSslSocketpeerVerifyErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_peerVerifyError(self.h, cast[int](addr tmp[]))

proc sslErrors*(self: gen_qsslsocket_types.QSslSocket, errors: seq[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslSocket_sslErrorsWithErrors(self.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QSslSocketsslErrorsWithErrorsSlot* = proc(errors: seq[gen_qsslerror_types.QSslError])
proc miqt_exec_callback_QSslSocket_sslErrorsWithErrors(slot: int, errors: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketsslErrorsWithErrorsSlot](cast[pointer](slot))
  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i])
  let slotval1 = verrorsx_ret

  nimfunc[](slotval1)

proc onsslErrors*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsslErrorsWithErrorsSlot) =
  var tmp = new QSslSocketsslErrorsWithErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_sslErrorsWithErrors(self.h, cast[int](addr tmp[]))

proc modeChanged*(self: gen_qsslsocket_types.QSslSocket, newMode: cint): void =
  fcQSslSocket_modeChanged(self.h, cint(newMode))

type QSslSocketmodeChangedSlot* = proc(newMode: cint)
proc miqt_exec_callback_QSslSocket_modeChanged(slot: int, newMode: cint) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketmodeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newMode)

  nimfunc[](slotval1)

proc onmodeChanged*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketmodeChangedSlot) =
  var tmp = new QSslSocketmodeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_modeChanged(self.h, cast[int](addr tmp[]))

proc encryptedBytesWritten*(self: gen_qsslsocket_types.QSslSocket, totalBytes: clonglong): void =
  fcQSslSocket_encryptedBytesWritten(self.h, totalBytes)

type QSslSocketencryptedBytesWrittenSlot* = proc(totalBytes: clonglong)
proc miqt_exec_callback_QSslSocket_encryptedBytesWritten(slot: int, totalBytes: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketencryptedBytesWrittenSlot](cast[pointer](slot))
  let slotval1 = totalBytes

  nimfunc[](slotval1)

proc onencryptedBytesWritten*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketencryptedBytesWrittenSlot) =
  var tmp = new QSslSocketencryptedBytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_encryptedBytesWritten(self.h, cast[int](addr tmp[]))

proc preSharedKeyAuthenticationRequired*(self: gen_qsslsocket_types.QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQSslSocket_preSharedKeyAuthenticationRequired(self.h, authenticator.h)

type QSslSocketpreSharedKeyAuthenticationRequiredSlot* = proc(authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc miqt_exec_callback_QSslSocket_preSharedKeyAuthenticationRequired(slot: int, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1)

proc onpreSharedKeyAuthenticationRequired*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QSslSocketpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc newSessionTicketReceived*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fcQSslSocket_newSessionTicketReceived(self.h)

type QSslSocketnewSessionTicketReceivedSlot* = proc()
proc miqt_exec_callback_QSslSocket_newSessionTicketReceived(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QSslSocketnewSessionTicketReceivedSlot](cast[pointer](slot))
  nimfunc[]()

proc onnewSessionTicketReceived*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketnewSessionTicketReceivedSlot) =
  var tmp = new QSslSocketnewSessionTicketReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_connect_newSessionTicketReceived(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsslsocket_types.QSslSocket, s: cstring, c: cstring): string =
  let v_ms = fcQSslSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsslsocket_types.QSslSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSslSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsslsocket_types.QSslSocket, s: cstring, c: cstring): string =
  let v_ms = fcQSslSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsslsocket_types.QSslSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSslSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, mode: cint): void =
  fcQSslSocket_connectToHostEncrypted3(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode))

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQSslSocket_connectToHostEncrypted4(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, sslPeerName: string, mode: cint): void =
  fcQSslSocket_connectToHostEncrypted42(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: sslPeerName, len: csize_t(len(sslPeerName))), cint(mode))

proc connectToHostEncrypted*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, sslPeerName: string, mode: cint, protocol: cint): void =
  fcQSslSocket_connectToHostEncrypted5(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: sslPeerName, len: csize_t(len(sslPeerName))), cint(mode), cint(protocol))

proc setLocalCertificate*(self: gen_qsslsocket_types.QSslSocket, fileName: string, format: cint): void =
  fcQSslSocket_setLocalCertificate2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format))

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: string, algorithm: cint): void =
  fcQSslSocket_setPrivateKey2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(algorithm))

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: string, algorithm: cint, format: cint): void =
  fcQSslSocket_setPrivateKey3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(algorithm), cint(format))

proc setPrivateKey*(self: gen_qsslsocket_types.QSslSocket, fileName: string, algorithm: cint, format: cint, passPhrase: seq[byte]): void =
  fcQSslSocket_setPrivateKey4(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(algorithm), cint(format), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))

proc addCaCertificates*(self: gen_qsslsocket_types.QSslSocket, path: string, format: cint): bool =
  fcQSslSocket_addCaCertificates2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(format))

proc addCaCertificates*(self: gen_qsslsocket_types.QSslSocket, path: string, format: cint, syntax: cint): bool =
  fcQSslSocket_addCaCertificates3(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))

proc addDefaultCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, path: string, format: cint): bool =
  fcQSslSocket_addDefaultCaCertificates2(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format))

proc addDefaultCaCertificates*(_: type gen_qsslsocket_types.QSslSocket, path: string, format: cint, syntax: cint): bool =
  fcQSslSocket_addDefaultCaCertificates3(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))

proc waitForEncrypted*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fcQSslSocket_waitForEncrypted1(self.h, msecs)

proc QSslSocketresume*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fQSslSocket_virtualbase_resume(self.h)

type QSslSocketresumeProc* = proc(): void
proc onresume*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketresumeProc) =
  # TODO check subclass
  var tmp = new QSslSocketresumeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_resume(self: ptr cQSslSocket, slot: int): void {.exportc: "miqt_exec_callback_QSslSocket_resume ".} =
  var nimfunc = cast[ptr QSslSocketresumeProc](cast[pointer](slot))

  nimfunc[]()
proc QSslSocketsetSocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fQSslSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QSslSocketsetSocketDescriptorProc* = proc(socketDescriptor: uint, state: cint, openMode: cint): bool
proc onsetSocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsetSocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QSslSocketsetSocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_setSocketDescriptor(self: ptr cQSslSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_setSocketDescriptor ".} =
  var nimfunc = cast[ptr QSslSocketsetSocketDescriptorProc](cast[pointer](slot))
  let slotval1 = socketDescriptor

  let slotval2 = cint(state)

  let slotval3 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSslSocketconnectToHost*(self: gen_qsslsocket_types.QSslSocket, hostName: string, port: cushort, openMode: cint, protocol: cint): void =
  fQSslSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(openMode), cint(protocol))

type QSslSocketconnectToHostProc* = proc(hostName: string, port: cushort, openMode: cint, protocol: cint): void
proc onconnectToHost*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketconnectToHostProc) =
  # TODO check subclass
  var tmp = new QSslSocketconnectToHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_connectToHost(self: ptr cQSslSocket, slot: int, hostName: struct_miqt_string, port: cushort, openMode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QSslSocket_connectToHost ".} =
  var nimfunc = cast[ptr QSslSocketconnectToHostProc](cast[pointer](slot))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = cint(openMode)

  let slotval4 = cint(protocol)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QSslSocketdisconnectFromHost*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fQSslSocket_virtualbase_disconnectFromHost(self.h)

type QSslSocketdisconnectFromHostProc* = proc(): void
proc ondisconnectFromHost*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketdisconnectFromHostProc) =
  # TODO check subclass
  var tmp = new QSslSocketdisconnectFromHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_disconnectFromHost(self: ptr cQSslSocket, slot: int): void {.exportc: "miqt_exec_callback_QSslSocket_disconnectFromHost ".} =
  var nimfunc = cast[ptr QSslSocketdisconnectFromHostProc](cast[pointer](slot))

  nimfunc[]()
proc QSslSocketsetSocketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fQSslSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QSslSocketsetSocketOptionProc* = proc(option: cint, value: gen_qvariant_types.QVariant): void
proc onsetSocketOption*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsetSocketOptionProc) =
  # TODO check subclass
  var tmp = new QSslSocketsetSocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_setSocketOption(self: ptr cQSslSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_setSocketOption ".} =
  var nimfunc = cast[ptr QSslSocketsetSocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QSslSocketsocketOption*(self: gen_qsslsocket_types.QSslSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSslSocket_virtualbase_socketOption(self.h, cint(option)))

type QSslSocketsocketOptionProc* = proc(option: cint): gen_qvariant_types.QVariant
proc onsocketOption*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsocketOptionProc) =
  # TODO check subclass
  var tmp = new QSslSocketsocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_socketOption(self: ptr cQSslSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QSslSocket_socketOption ".} =
  var nimfunc = cast[ptr QSslSocketsocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSslSocketbytesAvailable*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fQSslSocket_virtualbase_bytesAvailable(self.h)

type QSslSocketbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QSslSocketbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_bytesAvailable(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_bytesAvailable ".} =
  var nimfunc = cast[ptr QSslSocketbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketbytesToWrite*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fQSslSocket_virtualbase_bytesToWrite(self.h)

type QSslSocketbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QSslSocketbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_bytesToWrite(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_bytesToWrite ".} =
  var nimfunc = cast[ptr QSslSocketbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketcanReadLine*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fQSslSocket_virtualbase_canReadLine(self.h)

type QSslSocketcanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketcanReadLineProc) =
  # TODO check subclass
  var tmp = new QSslSocketcanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_canReadLine(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_canReadLine ".} =
  var nimfunc = cast[ptr QSslSocketcanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketclose*(self: gen_qsslsocket_types.QSslSocket, ): void =
  fQSslSocket_virtualbase_close(self.h)

type QSslSocketcloseProc* = proc(): void
proc onclose*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketcloseProc) =
  # TODO check subclass
  var tmp = new QSslSocketcloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_close(self: ptr cQSslSocket, slot: int): void {.exportc: "miqt_exec_callback_QSslSocket_close ".} =
  var nimfunc = cast[ptr QSslSocketcloseProc](cast[pointer](slot))

  nimfunc[]()
proc QSslSocketatEnd*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fQSslSocket_virtualbase_atEnd(self.h)

type QSslSocketatEndProc* = proc(): bool
proc onatEnd*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketatEndProc) =
  # TODO check subclass
  var tmp = new QSslSocketatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_atEnd(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_atEnd ".} =
  var nimfunc = cast[ptr QSslSocketatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketsetReadBufferSize*(self: gen_qsslsocket_types.QSslSocket, size: clonglong): void =
  fQSslSocket_virtualbase_setReadBufferSize(self.h, size)

type QSslSocketsetReadBufferSizeProc* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsetReadBufferSizeProc) =
  # TODO check subclass
  var tmp = new QSslSocketsetReadBufferSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_setReadBufferSize(self: ptr cQSslSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QSslSocket_setReadBufferSize ".} =
  var nimfunc = cast[ptr QSslSocketsetReadBufferSizeProc](cast[pointer](slot))
  let slotval1 = size


  nimfunc[](slotval1)
proc QSslSocketwaitForConnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fQSslSocket_virtualbase_waitForConnected(self.h, msecs)

type QSslSocketwaitForConnectedProc* = proc(msecs: cint): bool
proc onwaitForConnected*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketwaitForConnectedProc) =
  # TODO check subclass
  var tmp = new QSslSocketwaitForConnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForConnected(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForConnected ".} =
  var nimfunc = cast[ptr QSslSocketwaitForConnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketwaitForReadyRead*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fQSslSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QSslSocketwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QSslSocketwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForReadyRead(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForReadyRead ".} =
  var nimfunc = cast[ptr QSslSocketwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketwaitForBytesWritten*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fQSslSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QSslSocketwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QSslSocketwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForBytesWritten(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QSslSocketwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketwaitForDisconnected*(self: gen_qsslsocket_types.QSslSocket, msecs: cint): bool =
  fQSslSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QSslSocketwaitForDisconnectedProc* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketwaitForDisconnectedProc) =
  # TODO check subclass
  var tmp = new QSslSocketwaitForDisconnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_waitForDisconnected(self: ptr cQSslSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_waitForDisconnected ".} =
  var nimfunc = cast[ptr QSslSocketwaitForDisconnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketreadData*(self: gen_qsslsocket_types.QSslSocket, data: cstring, maxlen: clonglong): clonglong =
  fQSslSocket_virtualbase_readData(self.h, data, maxlen)

type QSslSocketreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketreadDataProc) =
  # TODO check subclass
  var tmp = new QSslSocketreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_readData(self: ptr cQSslSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSslSocket_readData ".} =
  var nimfunc = cast[ptr QSslSocketreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSslSocketwriteData*(self: gen_qsslsocket_types.QSslSocket, data: cstring, len: clonglong): clonglong =
  fQSslSocket_virtualbase_writeData(self.h, data, len)

type QSslSocketwriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketwriteDataProc) =
  # TODO check subclass
  var tmp = new QSslSocketwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_writeData(self: ptr cQSslSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QSslSocket_writeData ".} =
  var nimfunc = cast[ptr QSslSocketwriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSslSocketsocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, ): uint =
  fQSslSocket_virtualbase_socketDescriptor(self.h)

type QSslSocketsocketDescriptorProc* = proc(): uint
proc onsocketDescriptor*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QSslSocketsocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_socketDescriptor(self: ptr cQSslSocket, slot: int): uint {.exportc: "miqt_exec_callback_QSslSocket_socketDescriptor ".} =
  var nimfunc = cast[ptr QSslSocketsocketDescriptorProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketisSequential*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fQSslSocket_virtualbase_isSequential(self.h)

type QSslSocketisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketisSequentialProc) =
  # TODO check subclass
  var tmp = new QSslSocketisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_isSequential(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_isSequential ".} =
  var nimfunc = cast[ptr QSslSocketisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketreadLineData*(self: gen_qsslsocket_types.QSslSocket, data: cstring, maxlen: clonglong): clonglong =
  fQSslSocket_virtualbase_readLineData(self.h, data, maxlen)

type QSslSocketreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketreadLineDataProc) =
  # TODO check subclass
  var tmp = new QSslSocketreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_readLineData(self: ptr cQSslSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSslSocket_readLineData ".} =
  var nimfunc = cast[ptr QSslSocketreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSslSocketopen*(self: gen_qsslsocket_types.QSslSocket, mode: cint): bool =
  fQSslSocket_virtualbase_open(self.h, cint(mode))

type QSslSocketopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketopenProc) =
  # TODO check subclass
  var tmp = new QSslSocketopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_open(self: ptr cQSslSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QSslSocket_open ".} =
  var nimfunc = cast[ptr QSslSocketopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketpos*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fQSslSocket_virtualbase_pos(self.h)

type QSslSocketposProc* = proc(): clonglong
proc onpos*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketposProc) =
  # TODO check subclass
  var tmp = new QSslSocketposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_pos(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_pos ".} =
  var nimfunc = cast[ptr QSslSocketposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketsize*(self: gen_qsslsocket_types.QSslSocket, ): clonglong =
  fQSslSocket_virtualbase_size(self.h)

type QSslSocketsizeProc* = proc(): clonglong
proc onsize*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketsizeProc) =
  # TODO check subclass
  var tmp = new QSslSocketsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_size(self: ptr cQSslSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSslSocket_size ".} =
  var nimfunc = cast[ptr QSslSocketsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketseek*(self: gen_qsslsocket_types.QSslSocket, pos: clonglong): bool =
  fQSslSocket_virtualbase_seek(self.h, pos)

type QSslSocketseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketseekProc) =
  # TODO check subclass
  var tmp = new QSslSocketseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_seek(self: ptr cQSslSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QSslSocket_seek ".} =
  var nimfunc = cast[ptr QSslSocketseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketreset*(self: gen_qsslsocket_types.QSslSocket, ): bool =
  fQSslSocket_virtualbase_reset(self.h)

type QSslSocketresetProc* = proc(): bool
proc onreset*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketresetProc) =
  # TODO check subclass
  var tmp = new QSslSocketresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_reset(self: ptr cQSslSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSslSocket_reset ".} =
  var nimfunc = cast[ptr QSslSocketresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslSocketevent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QEvent): bool =
  fQSslSocket_virtualbase_event(self.h, event.h)

type QSslSocketeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketeventProc) =
  # TODO check subclass
  var tmp = new QSslSocketeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_event(self: ptr cQSslSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSslSocket_event ".} =
  var nimfunc = cast[ptr QSslSocketeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslSocketeventFilter*(self: gen_qsslsocket_types.QSslSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSslSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSslSocketeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketeventFilterProc) =
  # TODO check subclass
  var tmp = new QSslSocketeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_eventFilter(self: ptr cQSslSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSslSocket_eventFilter ".} =
  var nimfunc = cast[ptr QSslSocketeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSslSockettimerEvent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSslSocket_virtualbase_timerEvent(self.h, event.h)

type QSslSockettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSockettimerEventProc) =
  # TODO check subclass
  var tmp = new QSslSockettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_timerEvent(self: ptr cQSslSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_timerEvent ".} =
  var nimfunc = cast[ptr QSslSockettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSslSocketchildEvent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fQSslSocket_virtualbase_childEvent(self.h, event.h)

type QSslSocketchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketchildEventProc) =
  # TODO check subclass
  var tmp = new QSslSocketchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_childEvent(self: ptr cQSslSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_childEvent ".} =
  var nimfunc = cast[ptr QSslSocketchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSslSocketcustomEvent*(self: gen_qsslsocket_types.QSslSocket, event: gen_qcoreevent_types.QEvent): void =
  fQSslSocket_virtualbase_customEvent(self.h, event.h)

type QSslSocketcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketcustomEventProc) =
  # TODO check subclass
  var tmp = new QSslSocketcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_customEvent(self: ptr cQSslSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_customEvent ".} =
  var nimfunc = cast[ptr QSslSocketcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSslSocketconnectNotify*(self: gen_qsslsocket_types.QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSslSocket_virtualbase_connectNotify(self.h, signal.h)

type QSslSocketconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSslSocketconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_connectNotify(self: ptr cQSslSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_connectNotify ".} =
  var nimfunc = cast[ptr QSslSocketconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSslSocketdisconnectNotify*(self: gen_qsslsocket_types.QSslSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSslSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QSslSocketdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsslsocket_types.QSslSocket, slot: QSslSocketdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSslSocketdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslSocket_disconnectNotify(self: ptr cQSslSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSslSocket_disconnectNotify ".} =
  var nimfunc = cast[ptr QSslSocketdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qsslsocket_types.QSslSocket) =
  fcQSslSocket_delete(self.h)
