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
{.compile("gen_qabstractsocket.cpp", cflags).}


type QAbstractSocketSocketTypeEnum* = distinct cint
template TcpSocket*(_: type QAbstractSocketSocketTypeEnum): untyped = 0
template UdpSocket*(_: type QAbstractSocketSocketTypeEnum): untyped = 1
template SctpSocket*(_: type QAbstractSocketSocketTypeEnum): untyped = 2
template UnknownSocketType*(_: type QAbstractSocketSocketTypeEnum): untyped = -1


type QAbstractSocketNetworkLayerProtocolEnum* = distinct cint
template IPv4Protocol*(_: type QAbstractSocketNetworkLayerProtocolEnum): untyped = 0
template IPv6Protocol*(_: type QAbstractSocketNetworkLayerProtocolEnum): untyped = 1
template AnyIPProtocol*(_: type QAbstractSocketNetworkLayerProtocolEnum): untyped = 2
template UnknownNetworkLayerProtocol*(_: type QAbstractSocketNetworkLayerProtocolEnum): untyped = -1


type QAbstractSocketSocketErrorEnum* = distinct cint
template ConnectionRefusedError*(_: type QAbstractSocketSocketErrorEnum): untyped = 0
template RemoteHostClosedError*(_: type QAbstractSocketSocketErrorEnum): untyped = 1
template HostNotFoundError*(_: type QAbstractSocketSocketErrorEnum): untyped = 2
template SocketAccessError*(_: type QAbstractSocketSocketErrorEnum): untyped = 3
template SocketResourceError*(_: type QAbstractSocketSocketErrorEnum): untyped = 4
template SocketTimeoutError*(_: type QAbstractSocketSocketErrorEnum): untyped = 5
template DatagramTooLargeError*(_: type QAbstractSocketSocketErrorEnum): untyped = 6
template NetworkError*(_: type QAbstractSocketSocketErrorEnum): untyped = 7
template AddressInUseError*(_: type QAbstractSocketSocketErrorEnum): untyped = 8
template SocketAddressNotAvailableError*(_: type QAbstractSocketSocketErrorEnum): untyped = 9
template UnsupportedSocketOperationError*(_: type QAbstractSocketSocketErrorEnum): untyped = 10
template UnfinishedSocketOperationError*(_: type QAbstractSocketSocketErrorEnum): untyped = 11
template ProxyAuthenticationRequiredError*(_: type QAbstractSocketSocketErrorEnum): untyped = 12
template SslHandshakeFailedError*(_: type QAbstractSocketSocketErrorEnum): untyped = 13
template ProxyConnectionRefusedError*(_: type QAbstractSocketSocketErrorEnum): untyped = 14
template ProxyConnectionClosedError*(_: type QAbstractSocketSocketErrorEnum): untyped = 15
template ProxyConnectionTimeoutError*(_: type QAbstractSocketSocketErrorEnum): untyped = 16
template ProxyNotFoundError*(_: type QAbstractSocketSocketErrorEnum): untyped = 17
template ProxyProtocolError*(_: type QAbstractSocketSocketErrorEnum): untyped = 18
template OperationError*(_: type QAbstractSocketSocketErrorEnum): untyped = 19
template SslInternalError*(_: type QAbstractSocketSocketErrorEnum): untyped = 20
template SslInvalidUserDataError*(_: type QAbstractSocketSocketErrorEnum): untyped = 21
template TemporaryError*(_: type QAbstractSocketSocketErrorEnum): untyped = 22
template UnknownSocketError*(_: type QAbstractSocketSocketErrorEnum): untyped = -1


type QAbstractSocketSocketStateEnum* = distinct cint
template UnconnectedState*(_: type QAbstractSocketSocketStateEnum): untyped = 0
template HostLookupState*(_: type QAbstractSocketSocketStateEnum): untyped = 1
template ConnectingState*(_: type QAbstractSocketSocketStateEnum): untyped = 2
template ConnectedState*(_: type QAbstractSocketSocketStateEnum): untyped = 3
template BoundState*(_: type QAbstractSocketSocketStateEnum): untyped = 4
template ListeningState*(_: type QAbstractSocketSocketStateEnum): untyped = 5
template ClosingState*(_: type QAbstractSocketSocketStateEnum): untyped = 6


type QAbstractSocketSocketOptionEnum* = distinct cint
template LowDelayOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 0
template KeepAliveOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 1
template MulticastTtlOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 2
template MulticastLoopbackOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 3
template TypeOfServiceOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 4
template SendBufferSizeSocketOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 5
template ReceiveBufferSizeSocketOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 6
template PathMtuSocketOption*(_: type QAbstractSocketSocketOptionEnum): untyped = 7


type QAbstractSocketBindFlagEnum* = distinct cint
template DefaultForPlatform*(_: type QAbstractSocketBindFlagEnum): untyped = 0
template ShareAddress*(_: type QAbstractSocketBindFlagEnum): untyped = 1
template DontShareAddress*(_: type QAbstractSocketBindFlagEnum): untyped = 2
template ReuseAddressHint*(_: type QAbstractSocketBindFlagEnum): untyped = 4


type QAbstractSocketPauseModeEnum* = distinct cint
template PauseNever*(_: type QAbstractSocketPauseModeEnum): untyped = 0
template PauseOnSslErrors*(_: type QAbstractSocketPauseModeEnum): untyped = 1


import ./gen_qabstractsocket_types
export gen_qabstractsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qauthenticator_types,
  ./gen_qhostaddress_types,
  ./gen_qnetworkproxy_types
export
  gen_qcoreevent_types,
  gen_qiodevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qauthenticator_types,
  gen_qhostaddress_types,
  gen_qnetworkproxy_types

type cQAbstractSocket*{.exportc: "QAbstractSocket", incompleteStruct.} = object

proc fcQAbstractSocket_new(socketType: cint, parent: pointer): ptr cQAbstractSocket {.importc: "QAbstractSocket_new".}
proc fcQAbstractSocket_metaObject(self: pointer, ): pointer {.importc: "QAbstractSocket_metaObject".}
proc fcQAbstractSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSocket_metacast".}
proc fcQAbstractSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSocket_metacall".}
proc fcQAbstractSocket_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr".}
proc fcQAbstractSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractSocket_trUtf8".}
proc fcQAbstractSocket_resume(self: pointer, ): void {.importc: "QAbstractSocket_resume".}
proc fcQAbstractSocket_pauseMode(self: pointer, ): cint {.importc: "QAbstractSocket_pauseMode".}
proc fcQAbstractSocket_setPauseMode(self: pointer, pauseMode: cint): void {.importc: "QAbstractSocket_setPauseMode".}
proc fcQAbstractSocket_bindX(self: pointer, address: pointer): bool {.importc: "QAbstractSocket_bind".}
proc fcQAbstractSocket_bind2(self: pointer, ): bool {.importc: "QAbstractSocket_bind2".}
proc fcQAbstractSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QAbstractSocket_connectToHost".}
proc fcQAbstractSocket_connectToHost2(self: pointer, address: pointer, port: cushort, mode: cint): void {.importc: "QAbstractSocket_connectToHost2".}
proc fcQAbstractSocket_disconnectFromHost(self: pointer, ): void {.importc: "QAbstractSocket_disconnectFromHost".}
proc fcQAbstractSocket_isValid(self: pointer, ): bool {.importc: "QAbstractSocket_isValid".}
proc fcQAbstractSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QAbstractSocket_bytesAvailable".}
proc fcQAbstractSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QAbstractSocket_bytesToWrite".}
proc fcQAbstractSocket_canReadLine(self: pointer, ): bool {.importc: "QAbstractSocket_canReadLine".}
proc fcQAbstractSocket_localPort(self: pointer, ): cushort {.importc: "QAbstractSocket_localPort".}
proc fcQAbstractSocket_localAddress(self: pointer, ): pointer {.importc: "QAbstractSocket_localAddress".}
proc fcQAbstractSocket_peerPort(self: pointer, ): cushort {.importc: "QAbstractSocket_peerPort".}
proc fcQAbstractSocket_peerAddress(self: pointer, ): pointer {.importc: "QAbstractSocket_peerAddress".}
proc fcQAbstractSocket_peerName(self: pointer, ): struct_miqt_string {.importc: "QAbstractSocket_peerName".}
proc fcQAbstractSocket_readBufferSize(self: pointer, ): clonglong {.importc: "QAbstractSocket_readBufferSize".}
proc fcQAbstractSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QAbstractSocket_setReadBufferSize".}
proc fcQAbstractSocket_abort(self: pointer, ): void {.importc: "QAbstractSocket_abort".}
proc fcQAbstractSocket_socketDescriptor(self: pointer, ): uint {.importc: "QAbstractSocket_socketDescriptor".}
proc fcQAbstractSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QAbstractSocket_setSocketDescriptor".}
proc fcQAbstractSocket_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QAbstractSocket_setSocketOption".}
proc fcQAbstractSocket_socketOption(self: pointer, option: cint): pointer {.importc: "QAbstractSocket_socketOption".}
proc fcQAbstractSocket_socketType(self: pointer, ): cint {.importc: "QAbstractSocket_socketType".}
proc fcQAbstractSocket_state(self: pointer, ): cint {.importc: "QAbstractSocket_state".}
proc fcQAbstractSocket_error(self: pointer, ): cint {.importc: "QAbstractSocket_error".}
proc fcQAbstractSocket_close(self: pointer, ): void {.importc: "QAbstractSocket_close".}
proc fcQAbstractSocket_isSequential(self: pointer, ): bool {.importc: "QAbstractSocket_isSequential".}
proc fcQAbstractSocket_atEnd(self: pointer, ): bool {.importc: "QAbstractSocket_atEnd".}
proc fcQAbstractSocket_flush(self: pointer, ): bool {.importc: "QAbstractSocket_flush".}
proc fcQAbstractSocket_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForConnected".}
proc fcQAbstractSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForReadyRead".}
proc fcQAbstractSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForBytesWritten".}
proc fcQAbstractSocket_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForDisconnected".}
proc fcQAbstractSocket_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QAbstractSocket_setProxy".}
proc fcQAbstractSocket_proxy(self: pointer, ): pointer {.importc: "QAbstractSocket_proxy".}
proc fcQAbstractSocket_protocolTag(self: pointer, ): struct_miqt_string {.importc: "QAbstractSocket_protocolTag".}
proc fcQAbstractSocket_setProtocolTag(self: pointer, tag: struct_miqt_string): void {.importc: "QAbstractSocket_setProtocolTag".}
proc fcQAbstractSocket_hostFound(self: pointer, ): void {.importc: "QAbstractSocket_hostFound".}
proc fcQAbstractSocket_connect_hostFound(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_hostFound".}
proc fcQAbstractSocket_connected(self: pointer, ): void {.importc: "QAbstractSocket_connected".}
proc fcQAbstractSocket_connect_connected(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_connected".}
proc fcQAbstractSocket_disconnected(self: pointer, ): void {.importc: "QAbstractSocket_disconnected".}
proc fcQAbstractSocket_connect_disconnected(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_disconnected".}
proc fcQAbstractSocket_stateChanged(self: pointer, param1: cint): void {.importc: "QAbstractSocket_stateChanged".}
proc fcQAbstractSocket_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_stateChanged".}
proc fcQAbstractSocket_errorWithQAbstractSocketSocketError(self: pointer, param1: cint): void {.importc: "QAbstractSocket_errorWithQAbstractSocketSocketError".}
proc fcQAbstractSocket_connect_errorWithQAbstractSocketSocketError(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_errorWithQAbstractSocketSocketError".}
proc fcQAbstractSocket_errorOccurred(self: pointer, param1: cint): void {.importc: "QAbstractSocket_errorOccurred".}
proc fcQAbstractSocket_connect_errorOccurred(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_errorOccurred".}
proc fcQAbstractSocket_proxyAuthenticationRequired(self: pointer, proxy: pointer, authenticator: pointer): void {.importc: "QAbstractSocket_proxyAuthenticationRequired".}
proc fcQAbstractSocket_connect_proxyAuthenticationRequired(self: pointer, slot: int) {.importc: "QAbstractSocket_connect_proxyAuthenticationRequired".}
proc fcQAbstractSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr2".}
proc fcQAbstractSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSocket_tr3".}
proc fcQAbstractSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSocket_trUtf82".}
proc fcQAbstractSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSocket_trUtf83".}
proc fcQAbstractSocket_bind22(self: pointer, address: pointer, port: cushort): bool {.importc: "QAbstractSocket_bind22".}
proc fcQAbstractSocket_bind3(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind3".}
proc fcQAbstractSocket_bind1(self: pointer, port: cushort): bool {.importc: "QAbstractSocket_bind1".}
proc fcQAbstractSocket_bind23(self: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind23".}
proc fQAbstractSocket_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractSocket_virtualbase_metaObject".}
proc fcQAbstractSocket_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_metaObject".}
proc fQAbstractSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractSocket_virtualbase_metacast".}
proc fcQAbstractSocket_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_metacast".}
proc fQAbstractSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractSocket_virtualbase_metacall".}
proc fcQAbstractSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_metacall".}
proc fQAbstractSocket_virtualbase_resume(self: pointer, ): void{.importc: "QAbstractSocket_virtualbase_resume".}
proc fcQAbstractSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_resume".}
proc fQAbstractSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QAbstractSocket_virtualbase_connectToHost".}
proc fcQAbstractSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_connectToHost".}
proc fQAbstractSocket_virtualbase_connectToHost2(self: pointer, address: pointer, port: cushort, mode: cint): void{.importc: "QAbstractSocket_virtualbase_connectToHost2".}
proc fcQAbstractSocket_override_virtual_connectToHost2(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_connectToHost2".}
proc fQAbstractSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QAbstractSocket_virtualbase_disconnectFromHost".}
proc fcQAbstractSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_disconnectFromHost".}
proc fQAbstractSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_bytesAvailable".}
proc fcQAbstractSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_bytesAvailable".}
proc fQAbstractSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_bytesToWrite".}
proc fcQAbstractSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_bytesToWrite".}
proc fQAbstractSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_canReadLine".}
proc fcQAbstractSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_canReadLine".}
proc fQAbstractSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QAbstractSocket_virtualbase_setReadBufferSize".}
proc fcQAbstractSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_setReadBufferSize".}
proc fQAbstractSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QAbstractSocket_virtualbase_socketDescriptor".}
proc fcQAbstractSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_socketDescriptor".}
proc fQAbstractSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QAbstractSocket_virtualbase_setSocketDescriptor".}
proc fcQAbstractSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_setSocketDescriptor".}
proc fQAbstractSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QAbstractSocket_virtualbase_setSocketOption".}
proc fcQAbstractSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_setSocketOption".}
proc fQAbstractSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QAbstractSocket_virtualbase_socketOption".}
proc fcQAbstractSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_socketOption".}
proc fQAbstractSocket_virtualbase_close(self: pointer, ): void{.importc: "QAbstractSocket_virtualbase_close".}
proc fcQAbstractSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_close".}
proc fQAbstractSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_isSequential".}
proc fcQAbstractSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_isSequential".}
proc fQAbstractSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_atEnd".}
proc fcQAbstractSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_atEnd".}
proc fQAbstractSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForConnected".}
proc fcQAbstractSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForConnected".}
proc fQAbstractSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForReadyRead".}
proc fcQAbstractSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForReadyRead".}
proc fQAbstractSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForBytesWritten".}
proc fcQAbstractSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForBytesWritten".}
proc fQAbstractSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QAbstractSocket_virtualbase_waitForDisconnected".}
proc fcQAbstractSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_waitForDisconnected".}
proc fQAbstractSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_readData".}
proc fcQAbstractSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_readData".}
proc fQAbstractSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_readLineData".}
proc fcQAbstractSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_readLineData".}
proc fQAbstractSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QAbstractSocket_virtualbase_writeData".}
proc fcQAbstractSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_writeData".}
proc fQAbstractSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QAbstractSocket_virtualbase_open".}
proc fcQAbstractSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_open".}
proc fQAbstractSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_pos".}
proc fcQAbstractSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_pos".}
proc fQAbstractSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QAbstractSocket_virtualbase_size".}
proc fcQAbstractSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_size".}
proc fQAbstractSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QAbstractSocket_virtualbase_seek".}
proc fcQAbstractSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_seek".}
proc fQAbstractSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QAbstractSocket_virtualbase_reset".}
proc fcQAbstractSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_reset".}
proc fQAbstractSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractSocket_virtualbase_event".}
proc fcQAbstractSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_event".}
proc fQAbstractSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractSocket_virtualbase_eventFilter".}
proc fcQAbstractSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_eventFilter".}
proc fQAbstractSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractSocket_virtualbase_timerEvent".}
proc fcQAbstractSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_timerEvent".}
proc fQAbstractSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractSocket_virtualbase_childEvent".}
proc fcQAbstractSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_childEvent".}
proc fQAbstractSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractSocket_virtualbase_customEvent".}
proc fcQAbstractSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_customEvent".}
proc fQAbstractSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSocket_virtualbase_connectNotify".}
proc fcQAbstractSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_connectNotify".}
proc fQAbstractSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSocket_virtualbase_disconnectNotify".}
proc fcQAbstractSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractSocket_override_virtual_disconnectNotify".}
proc fcQAbstractSocket_staticMetaObject(): pointer {.importc: "QAbstractSocket_staticMetaObject".}
proc fcQAbstractSocket_delete(self: pointer) {.importc: "QAbstractSocket_delete".}


func init*(T: type gen_qabstractsocket_types.QAbstractSocket, h: ptr cQAbstractSocket): gen_qabstractsocket_types.QAbstractSocket =
  T(h: h)
proc create*(T: type gen_qabstractsocket_types.QAbstractSocket, socketType: cint, parent: gen_qobject_types.QObject): gen_qabstractsocket_types.QAbstractSocket =
  gen_qabstractsocket_types.QAbstractSocket.init(fcQAbstractSocket_new(cint(socketType), parent.h))

proc metaObject*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_metaObject(self.h))

proc metacast*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cstring): pointer =
  fcQAbstractSocket_metacast(self.h, param1)

proc metacall*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring): string =
  let v_ms = fcQAbstractSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring): string =
  let v_ms = fcQAbstractSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resume*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_resume(self.h)

proc pauseMode*(self: gen_qabstractsocket_types.QAbstractSocket, ): cint =
  cint(fcQAbstractSocket_pauseMode(self.h))

proc setPauseMode*(self: gen_qabstractsocket_types.QAbstractSocket, pauseMode: cint): void =
  fcQAbstractSocket_setPauseMode(self.h, cint(pauseMode))

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQAbstractSocket_bindX(self.h, address.h)

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_bind2(self.h)

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQAbstractSocket_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void =
  fcQAbstractSocket_connectToHost2(self.h, address.h, port, cint(mode))

proc disconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_disconnectFromHost(self.h)

proc isValid*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_isValid(self.h)

proc bytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_bytesToWrite(self.h)

proc canReadLine*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_canReadLine(self.h)

proc localPort*(self: gen_qabstractsocket_types.QAbstractSocket, ): cushort =
  fcQAbstractSocket_localPort(self.h)

proc localAddress*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQAbstractSocket_localAddress(self.h))

proc peerPort*(self: gen_qabstractsocket_types.QAbstractSocket, ): cushort =
  fcQAbstractSocket_peerPort(self.h)

proc peerAddress*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQAbstractSocket_peerAddress(self.h))

proc peerName*(self: gen_qabstractsocket_types.QAbstractSocket, ): string =
  let v_ms = fcQAbstractSocket_peerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, size: clonglong): void =
  fcQAbstractSocket_setReadBufferSize(self.h, size)

proc abort*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_abort(self.h)

proc socketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, ): uint =
  fcQAbstractSocket_socketDescriptor(self.h)

proc setSocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQAbstractSocket_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc setSocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQAbstractSocket_setSocketOption(self.h, cint(option), value.h)

proc socketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSocket_socketOption(self.h, cint(option)))

proc socketType*(self: gen_qabstractsocket_types.QAbstractSocket, ): cint =
  cint(fcQAbstractSocket_socketType(self.h))

proc state*(self: gen_qabstractsocket_types.QAbstractSocket, ): cint =
  cint(fcQAbstractSocket_state(self.h))

proc error*(self: gen_qabstractsocket_types.QAbstractSocket, ): cint =
  cint(fcQAbstractSocket_error(self.h))

proc close*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_close(self.h)

proc isSequential*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_isSequential(self.h)

proc atEnd*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_atEnd(self.h)

proc flush*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_flush(self.h)

proc waitForConnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_waitForConnected(self.h, msecs)

proc waitForReadyRead*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_waitForBytesWritten(self.h, msecs)

proc waitForDisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_waitForDisconnected(self.h, msecs)

proc setProxy*(self: gen_qabstractsocket_types.QAbstractSocket, networkProxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQAbstractSocket_setProxy(self.h, networkProxy.h)

proc proxy*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQAbstractSocket_proxy(self.h))

proc protocolTag*(self: gen_qabstractsocket_types.QAbstractSocket, ): string =
  let v_ms = fcQAbstractSocket_protocolTag(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setProtocolTag*(self: gen_qabstractsocket_types.QAbstractSocket, tag: string): void =
  fcQAbstractSocket_setProtocolTag(self.h, struct_miqt_string(data: tag, len: csize_t(len(tag))))

proc hostFound*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_hostFound(self.h)

type QAbstractSockethostFoundSlot* = proc()
proc miqt_exec_callback_QAbstractSocket_hostFound(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSockethostFoundSlot](cast[pointer](slot))
  nimfunc[]()

proc onhostFound*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSockethostFoundSlot) =
  var tmp = new QAbstractSockethostFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_hostFound(self.h, cast[int](addr tmp[]))

proc connected*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_connected(self.h)

type QAbstractSocketconnectedSlot* = proc()
proc miqt_exec_callback_QAbstractSocket_connected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSocketconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc onconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketconnectedSlot) =
  var tmp = new QAbstractSocketconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_connected(self.h, cast[int](addr tmp[]))

proc disconnected*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_disconnected(self.h)

type QAbstractSocketdisconnectedSlot* = proc()
proc miqt_exec_callback_QAbstractSocket_disconnected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSocketdisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketdisconnectedSlot) =
  var tmp = new QAbstractSocketdisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_disconnected(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_stateChanged(self.h, cint(param1))

type QAbstractSocketstateChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QAbstractSocket_stateChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSocketstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketstateChangedSlot) =
  var tmp = new QAbstractSocketstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_errorWithQAbstractSocketSocketError(self.h, cint(param1))

type QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot* = proc(param1: cint)
proc miqt_exec_callback_QAbstractSocket_errorWithQAbstractSocketSocketError(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onerror*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot) =
  var tmp = new QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_errorWithQAbstractSocketSocketError(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_errorOccurred(self.h, cint(param1))

type QAbstractSocketerrorOccurredSlot* = proc(param1: cint)
proc miqt_exec_callback_QAbstractSocket_errorOccurred(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSocketerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onerrorOccurred*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketerrorOccurredSlot) =
  var tmp = new QAbstractSocketerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]))

proc proxyAuthenticationRequired*(self: gen_qabstractsocket_types.QAbstractSocket, proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQAbstractSocket_proxyAuthenticationRequired(self.h, proxy.h, authenticator.h)

type QAbstractSocketproxyAuthenticationRequiredSlot* = proc(proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator)
proc miqt_exec_callback_QAbstractSocket_proxyAuthenticationRequired(slot: int, proxy: pointer, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxy(h: proxy)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc onproxyAuthenticationRequired*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketproxyAuthenticationRequiredSlot) =
  var tmp = new QAbstractSocketproxyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQAbstractSocket_bind22(self.h, address.h, port)

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQAbstractSocket_bind3(self.h, address.h, port, cint(mode))

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, port: cushort): bool =
  fcQAbstractSocket_bind1(self.h, port)

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, port: cushort, mode: cint): bool =
  fcQAbstractSocket_bind23(self.h, port, cint(mode))

proc QAbstractSocketmetaObject*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractSocket_virtualbase_metaObject(self.h))

type QAbstractSocketmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_metaObject(self: ptr cQAbstractSocket, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSocket_metaObject ".} =
  var nimfunc = cast[ptr QAbstractSocketmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSocketmetacast*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cstring): pointer =
  fQAbstractSocket_virtualbase_metacast(self.h, param1)

type QAbstractSocketmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_metacast(self: ptr cQAbstractSocket, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractSocket_metacast ".} =
  var nimfunc = cast[ptr QAbstractSocketmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketmetacall*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractSocketmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_metacall(self: ptr cQAbstractSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractSocket_metacall ".} =
  var nimfunc = cast[ptr QAbstractSocketmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractSocketresume*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fQAbstractSocket_virtualbase_resume(self.h)

type QAbstractSocketresumeProc* = proc(): void
proc onresume*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketresumeProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketresumeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_resume(self: ptr cQAbstractSocket, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSocket_resume ".} =
  var nimfunc = cast[ptr QAbstractSocketresumeProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractSocketconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fQAbstractSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QAbstractSocketconnectToHostProc* = proc(hostName: string, port: cushort, mode: cint, protocol: cint): void
proc onconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketconnectToHostProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketconnectToHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_connectToHost(self: ptr cQAbstractSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QAbstractSocket_connectToHost ".} =
  var nimfunc = cast[ptr QAbstractSocketconnectToHostProc](cast[pointer](slot))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = cint(mode)

  let slotval4 = cint(protocol)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QAbstractSocketconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void =
  fQAbstractSocket_virtualbase_connectToHost2(self.h, address.h, port, cint(mode))

type QAbstractSocketconnectToHost2Proc* = proc(address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void
proc onconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketconnectToHost2Proc) =
  # TODO check subclass
  var tmp = new QAbstractSocketconnectToHost2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_connectToHost2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_connectToHost2(self: ptr cQAbstractSocket, slot: int, address: pointer, port: cushort, mode: cint): void {.exportc: "miqt_exec_callback_QAbstractSocket_connectToHost2 ".} =
  var nimfunc = cast[ptr QAbstractSocketconnectToHost2Proc](cast[pointer](slot))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address)

  let slotval2 = port

  let slotval3 = cint(mode)


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractSocketdisconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fQAbstractSocket_virtualbase_disconnectFromHost(self.h)

type QAbstractSocketdisconnectFromHostProc* = proc(): void
proc ondisconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketdisconnectFromHostProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketdisconnectFromHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_disconnectFromHost(self: ptr cQAbstractSocket, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSocket_disconnectFromHost ".} =
  var nimfunc = cast[ptr QAbstractSocketdisconnectFromHostProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractSocketbytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fQAbstractSocket_virtualbase_bytesAvailable(self.h)

type QAbstractSocketbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_bytesAvailable(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_bytesAvailable ".} =
  var nimfunc = cast[ptr QAbstractSocketbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketbytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fQAbstractSocket_virtualbase_bytesToWrite(self.h)

type QAbstractSocketbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_bytesToWrite(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_bytesToWrite ".} =
  var nimfunc = cast[ptr QAbstractSocketbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketcanReadLine*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fQAbstractSocket_virtualbase_canReadLine(self.h)

type QAbstractSocketcanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketcanReadLineProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketcanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_canReadLine(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_canReadLine ".} =
  var nimfunc = cast[ptr QAbstractSocketcanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketsetReadBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, size: clonglong): void =
  fQAbstractSocket_virtualbase_setReadBufferSize(self.h, size)

type QAbstractSocketsetReadBufferSizeProc* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketsetReadBufferSizeProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketsetReadBufferSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_setReadBufferSize(self: ptr cQAbstractSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QAbstractSocket_setReadBufferSize ".} =
  var nimfunc = cast[ptr QAbstractSocketsetReadBufferSizeProc](cast[pointer](slot))
  let slotval1 = size


  nimfunc[](slotval1)
proc QAbstractSocketsocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, ): uint =
  fQAbstractSocket_virtualbase_socketDescriptor(self.h)

type QAbstractSocketsocketDescriptorProc* = proc(): uint
proc onsocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketsocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketsocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_socketDescriptor(self: ptr cQAbstractSocket, slot: int): uint {.exportc: "miqt_exec_callback_QAbstractSocket_socketDescriptor ".} =
  var nimfunc = cast[ptr QAbstractSocketsocketDescriptorProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketsetSocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fQAbstractSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QAbstractSocketsetSocketDescriptorProc* = proc(socketDescriptor: uint, state: cint, openMode: cint): bool
proc onsetSocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketsetSocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketsetSocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_setSocketDescriptor(self: ptr cQAbstractSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_setSocketDescriptor ".} =
  var nimfunc = cast[ptr QAbstractSocketsetSocketDescriptorProc](cast[pointer](slot))
  let slotval1 = socketDescriptor

  let slotval2 = cint(state)

  let slotval3 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractSocketsetSocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fQAbstractSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QAbstractSocketsetSocketOptionProc* = proc(option: cint, value: gen_qvariant_types.QVariant): void
proc onsetSocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketsetSocketOptionProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketsetSocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_setSocketOption(self: ptr cQAbstractSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_setSocketOption ".} =
  var nimfunc = cast[ptr QAbstractSocketsetSocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QAbstractSocketsocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractSocket_virtualbase_socketOption(self.h, cint(option)))

type QAbstractSocketsocketOptionProc* = proc(option: cint): gen_qvariant_types.QVariant
proc onsocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketsocketOptionProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketsocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_socketOption(self: ptr cQAbstractSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QAbstractSocket_socketOption ".} =
  var nimfunc = cast[ptr QAbstractSocketsocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractSocketclose*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fQAbstractSocket_virtualbase_close(self.h)

type QAbstractSocketcloseProc* = proc(): void
proc onclose*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketcloseProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketcloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_close(self: ptr cQAbstractSocket, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSocket_close ".} =
  var nimfunc = cast[ptr QAbstractSocketcloseProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractSocketisSequential*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fQAbstractSocket_virtualbase_isSequential(self.h)

type QAbstractSocketisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketisSequentialProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_isSequential(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_isSequential ".} =
  var nimfunc = cast[ptr QAbstractSocketisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketatEnd*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fQAbstractSocket_virtualbase_atEnd(self.h)

type QAbstractSocketatEndProc* = proc(): bool
proc onatEnd*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketatEndProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_atEnd(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_atEnd ".} =
  var nimfunc = cast[ptr QAbstractSocketatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketwaitForConnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fQAbstractSocket_virtualbase_waitForConnected(self.h, msecs)

type QAbstractSocketwaitForConnectedProc* = proc(msecs: cint): bool
proc onwaitForConnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketwaitForConnectedProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketwaitForConnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForConnected(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForConnected ".} =
  var nimfunc = cast[ptr QAbstractSocketwaitForConnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketwaitForReadyRead*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fQAbstractSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QAbstractSocketwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForReadyRead(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForReadyRead ".} =
  var nimfunc = cast[ptr QAbstractSocketwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketwaitForBytesWritten*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fQAbstractSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QAbstractSocketwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForBytesWritten(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QAbstractSocketwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketwaitForDisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fQAbstractSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QAbstractSocketwaitForDisconnectedProc* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketwaitForDisconnectedProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketwaitForDisconnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_waitForDisconnected(self: ptr cQAbstractSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_waitForDisconnected ".} =
  var nimfunc = cast[ptr QAbstractSocketwaitForDisconnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketreadData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =
  fQAbstractSocket_virtualbase_readData(self.h, data, maxlen)

type QAbstractSocketreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketreadDataProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_readData(self: ptr cQAbstractSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_readData ".} =
  var nimfunc = cast[ptr QAbstractSocketreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractSocketreadLineData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =
  fQAbstractSocket_virtualbase_readLineData(self.h, data, maxlen)

type QAbstractSocketreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketreadLineDataProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_readLineData(self: ptr cQAbstractSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_readLineData ".} =
  var nimfunc = cast[ptr QAbstractSocketreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractSocketwriteData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, len: clonglong): clonglong =
  fQAbstractSocket_virtualbase_writeData(self.h, data, len)

type QAbstractSocketwriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketwriteDataProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_writeData(self: ptr cQAbstractSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_writeData ".} =
  var nimfunc = cast[ptr QAbstractSocketwriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractSocketopen*(self: gen_qabstractsocket_types.QAbstractSocket, mode: cint): bool =
  fQAbstractSocket_virtualbase_open(self.h, cint(mode))

type QAbstractSocketopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketopenProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_open(self: ptr cQAbstractSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QAbstractSocket_open ".} =
  var nimfunc = cast[ptr QAbstractSocketopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketpos*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fQAbstractSocket_virtualbase_pos(self.h)

type QAbstractSocketposProc* = proc(): clonglong
proc onpos*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketposProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_pos(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_pos ".} =
  var nimfunc = cast[ptr QAbstractSocketposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketsize*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fQAbstractSocket_virtualbase_size(self.h)

type QAbstractSocketsizeProc* = proc(): clonglong
proc onsize*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketsizeProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_size(self: ptr cQAbstractSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QAbstractSocket_size ".} =
  var nimfunc = cast[ptr QAbstractSocketsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketseek*(self: gen_qabstractsocket_types.QAbstractSocket, pos: clonglong): bool =
  fQAbstractSocket_virtualbase_seek(self.h, pos)

type QAbstractSocketseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketseekProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_seek(self: ptr cQAbstractSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QAbstractSocket_seek ".} =
  var nimfunc = cast[ptr QAbstractSocketseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketreset*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fQAbstractSocket_virtualbase_reset(self.h)

type QAbstractSocketresetProc* = proc(): bool
proc onreset*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketresetProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_reset(self: ptr cQAbstractSocket, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSocket_reset ".} =
  var nimfunc = cast[ptr QAbstractSocketresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSocketevent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractSocket_virtualbase_event(self.h, event.h)

type QAbstractSocketeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketeventProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_event(self: ptr cQAbstractSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSocket_event ".} =
  var nimfunc = cast[ptr QAbstractSocketeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSocketeventFilter*(self: gen_qabstractsocket_types.QAbstractSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractSocketeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_eventFilter(self: ptr cQAbstractSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSocket_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractSocketeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractSockettimerEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractSocket_virtualbase_timerEvent(self.h, event.h)

type QAbstractSockettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSockettimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSockettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_timerEvent(self: ptr cQAbstractSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractSockettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSocketchildEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractSocket_virtualbase_childEvent(self.h, event.h)

type QAbstractSocketchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_childEvent(self: ptr cQAbstractSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_childEvent ".} =
  var nimfunc = cast[ptr QAbstractSocketchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSocketcustomEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractSocket_virtualbase_customEvent(self.h, event.h)

type QAbstractSocketcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_customEvent(self: ptr cQAbstractSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_customEvent ".} =
  var nimfunc = cast[ptr QAbstractSocketcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSocketconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractSocket_virtualbase_connectNotify(self.h, signal.h)

type QAbstractSocketconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_connectNotify(self: ptr cQAbstractSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractSocketconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractSocketdisconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractSocketdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractSocketdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSocket_disconnectNotify(self: ptr cQAbstractSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSocket_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractSocketdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractsocket_types.QAbstractSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_staticMetaObject())
proc delete*(self: gen_qabstractsocket_types.QAbstractSocket) =
  fcQAbstractSocket_delete(self.h)
