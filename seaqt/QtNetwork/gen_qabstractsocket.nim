import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
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

proc fcQAbstractSocket_metaObject(self: pointer): pointer {.importc: "QAbstractSocket_metaObject".}
proc fcQAbstractSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSocket_metacast".}
proc fcQAbstractSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSocket_metacall".}
proc fcQAbstractSocket_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr".}
proc fcQAbstractSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractSocket_trUtf8".}
proc fcQAbstractSocket_resume(self: pointer): void {.importc: "QAbstractSocket_resume".}
proc fcQAbstractSocket_pauseMode(self: pointer): cint {.importc: "QAbstractSocket_pauseMode".}
proc fcQAbstractSocket_setPauseMode(self: pointer, pauseMode: cint): void {.importc: "QAbstractSocket_setPauseMode".}
proc fcQAbstractSocket_bindX(self: pointer, address: pointer): bool {.importc: "QAbstractSocket_bind".}
proc fcQAbstractSocket_bind2(self: pointer): bool {.importc: "QAbstractSocket_bind2".}
proc fcQAbstractSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QAbstractSocket_connectToHost".}
proc fcQAbstractSocket_connectToHost2(self: pointer, address: pointer, port: cushort, mode: cint): void {.importc: "QAbstractSocket_connectToHost2".}
proc fcQAbstractSocket_disconnectFromHost(self: pointer): void {.importc: "QAbstractSocket_disconnectFromHost".}
proc fcQAbstractSocket_isValid(self: pointer): bool {.importc: "QAbstractSocket_isValid".}
proc fcQAbstractSocket_bytesAvailable(self: pointer): clonglong {.importc: "QAbstractSocket_bytesAvailable".}
proc fcQAbstractSocket_bytesToWrite(self: pointer): clonglong {.importc: "QAbstractSocket_bytesToWrite".}
proc fcQAbstractSocket_canReadLine(self: pointer): bool {.importc: "QAbstractSocket_canReadLine".}
proc fcQAbstractSocket_localPort(self: pointer): cushort {.importc: "QAbstractSocket_localPort".}
proc fcQAbstractSocket_localAddress(self: pointer): pointer {.importc: "QAbstractSocket_localAddress".}
proc fcQAbstractSocket_peerPort(self: pointer): cushort {.importc: "QAbstractSocket_peerPort".}
proc fcQAbstractSocket_peerAddress(self: pointer): pointer {.importc: "QAbstractSocket_peerAddress".}
proc fcQAbstractSocket_peerName(self: pointer): struct_miqt_string {.importc: "QAbstractSocket_peerName".}
proc fcQAbstractSocket_readBufferSize(self: pointer): clonglong {.importc: "QAbstractSocket_readBufferSize".}
proc fcQAbstractSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QAbstractSocket_setReadBufferSize".}
proc fcQAbstractSocket_abort(self: pointer): void {.importc: "QAbstractSocket_abort".}
proc fcQAbstractSocket_socketDescriptor(self: pointer): uint {.importc: "QAbstractSocket_socketDescriptor".}
proc fcQAbstractSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QAbstractSocket_setSocketDescriptor".}
proc fcQAbstractSocket_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QAbstractSocket_setSocketOption".}
proc fcQAbstractSocket_socketOption(self: pointer, option: cint): pointer {.importc: "QAbstractSocket_socketOption".}
proc fcQAbstractSocket_socketType(self: pointer): cint {.importc: "QAbstractSocket_socketType".}
proc fcQAbstractSocket_state(self: pointer): cint {.importc: "QAbstractSocket_state".}
proc fcQAbstractSocket_error(self: pointer): cint {.importc: "QAbstractSocket_error".}
proc fcQAbstractSocket_close(self: pointer): void {.importc: "QAbstractSocket_close".}
proc fcQAbstractSocket_isSequential(self: pointer): bool {.importc: "QAbstractSocket_isSequential".}
proc fcQAbstractSocket_atEnd(self: pointer): bool {.importc: "QAbstractSocket_atEnd".}
proc fcQAbstractSocket_flush(self: pointer): bool {.importc: "QAbstractSocket_flush".}
proc fcQAbstractSocket_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForConnected".}
proc fcQAbstractSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForReadyRead".}
proc fcQAbstractSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForBytesWritten".}
proc fcQAbstractSocket_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_waitForDisconnected".}
proc fcQAbstractSocket_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QAbstractSocket_setProxy".}
proc fcQAbstractSocket_proxy(self: pointer): pointer {.importc: "QAbstractSocket_proxy".}
proc fcQAbstractSocket_protocolTag(self: pointer): struct_miqt_string {.importc: "QAbstractSocket_protocolTag".}
proc fcQAbstractSocket_setProtocolTag(self: pointer, tag: struct_miqt_string): void {.importc: "QAbstractSocket_setProtocolTag".}
proc fcQAbstractSocket_hostFound(self: pointer): void {.importc: "QAbstractSocket_hostFound".}
proc fcQAbstractSocket_connect_hostFound(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_hostFound".}
proc fcQAbstractSocket_connected(self: pointer): void {.importc: "QAbstractSocket_connected".}
proc fcQAbstractSocket_connect_connected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_connected".}
proc fcQAbstractSocket_disconnected(self: pointer): void {.importc: "QAbstractSocket_disconnected".}
proc fcQAbstractSocket_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_disconnected".}
proc fcQAbstractSocket_stateChanged(self: pointer, param1: cint): void {.importc: "QAbstractSocket_stateChanged".}
proc fcQAbstractSocket_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_stateChanged".}
proc fcQAbstractSocket_errorWithQAbstractSocketSocketError(self: pointer, param1: cint): void {.importc: "QAbstractSocket_errorWithQAbstractSocketSocketError".}
proc fcQAbstractSocket_connect_errorWithQAbstractSocketSocketError(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_errorWithQAbstractSocketSocketError".}
proc fcQAbstractSocket_errorOccurred(self: pointer, param1: cint): void {.importc: "QAbstractSocket_errorOccurred".}
proc fcQAbstractSocket_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_errorOccurred".}
proc fcQAbstractSocket_proxyAuthenticationRequired(self: pointer, proxy: pointer, authenticator: pointer): void {.importc: "QAbstractSocket_proxyAuthenticationRequired".}
proc fcQAbstractSocket_connect_proxyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, proxy: pointer, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_proxyAuthenticationRequired".}
proc fcQAbstractSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr2".}
proc fcQAbstractSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSocket_tr3".}
proc fcQAbstractSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSocket_trUtf82".}
proc fcQAbstractSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSocket_trUtf83".}
proc fcQAbstractSocket_bind22(self: pointer, address: pointer, port: cushort): bool {.importc: "QAbstractSocket_bind22".}
proc fcQAbstractSocket_bind3(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind3".}
proc fcQAbstractSocket_bind1(self: pointer, port: cushort): bool {.importc: "QAbstractSocket_bind1".}
proc fcQAbstractSocket_bind23(self: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind23".}
proc fcQAbstractSocket_vtbl(self: pointer): pointer {.importc: "QAbstractSocket_vtbl".}
proc fcQAbstractSocket_vdata(self: pointer): pointer {.importc: "QAbstractSocket_vdata".}
type cQAbstractSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resume*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
  connectToHost2*: proc(self: pointer, address: pointer, port: cushort, mode: cint): void {.cdecl, raises: [], gcsafe.}
  disconnectFromHost*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setReadBufferSize*: proc(self: pointer, size: clonglong): void {.cdecl, raises: [], gcsafe.}
  socketDescriptor*: proc(self: pointer): uint {.cdecl, raises: [], gcsafe.}
  setSocketDescriptor*: proc(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  setSocketOption*: proc(self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  socketOption*: proc(self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForConnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForDisconnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
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
proc fcQAbstractSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractSocket_virtualbase_metaObject".}
proc fcQAbstractSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSocket_virtualbase_metacast".}
proc fcQAbstractSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSocket_virtualbase_metacall".}
proc fcQAbstractSocket_virtualbase_resume(self: pointer): void {.importc: "QAbstractSocket_virtualbase_resume".}
proc fcQAbstractSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QAbstractSocket_virtualbase_connectToHost".}
proc fcQAbstractSocket_virtualbase_connectToHost2(self: pointer, address: pointer, port: cushort, mode: cint): void {.importc: "QAbstractSocket_virtualbase_connectToHost2".}
proc fcQAbstractSocket_virtualbase_disconnectFromHost(self: pointer): void {.importc: "QAbstractSocket_virtualbase_disconnectFromHost".}
proc fcQAbstractSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QAbstractSocket_virtualbase_bytesAvailable".}
proc fcQAbstractSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QAbstractSocket_virtualbase_bytesToWrite".}
proc fcQAbstractSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QAbstractSocket_virtualbase_canReadLine".}
proc fcQAbstractSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QAbstractSocket_virtualbase_setReadBufferSize".}
proc fcQAbstractSocket_virtualbase_socketDescriptor(self: pointer): uint {.importc: "QAbstractSocket_virtualbase_socketDescriptor".}
proc fcQAbstractSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QAbstractSocket_virtualbase_setSocketDescriptor".}
proc fcQAbstractSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QAbstractSocket_virtualbase_setSocketOption".}
proc fcQAbstractSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QAbstractSocket_virtualbase_socketOption".}
proc fcQAbstractSocket_virtualbase_close(self: pointer): void {.importc: "QAbstractSocket_virtualbase_close".}
proc fcQAbstractSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QAbstractSocket_virtualbase_isSequential".}
proc fcQAbstractSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QAbstractSocket_virtualbase_atEnd".}
proc fcQAbstractSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForConnected".}
proc fcQAbstractSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForReadyRead".}
proc fcQAbstractSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForBytesWritten".}
proc fcQAbstractSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForDisconnected".}
proc fcQAbstractSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_readData".}
proc fcQAbstractSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_readLineData".}
proc fcQAbstractSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_writeData".}
proc fcQAbstractSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QAbstractSocket_virtualbase_open".}
proc fcQAbstractSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QAbstractSocket_virtualbase_pos".}
proc fcQAbstractSocket_virtualbase_size(self: pointer): clonglong {.importc: "QAbstractSocket_virtualbase_size".}
proc fcQAbstractSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QAbstractSocket_virtualbase_seek".}
proc fcQAbstractSocket_virtualbase_reset(self: pointer): bool {.importc: "QAbstractSocket_virtualbase_reset".}
proc fcQAbstractSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractSocket_virtualbase_event".}
proc fcQAbstractSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractSocket_virtualbase_eventFilter".}
proc fcQAbstractSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractSocket_virtualbase_timerEvent".}
proc fcQAbstractSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractSocket_virtualbase_childEvent".}
proc fcQAbstractSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractSocket_virtualbase_customEvent".}
proc fcQAbstractSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSocket_virtualbase_connectNotify".}
proc fcQAbstractSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSocket_virtualbase_disconnectNotify".}
proc fcQAbstractSocket_protectedbase_setSocketState(self: pointer, state: cint): void {.importc: "QAbstractSocket_protectedbase_setSocketState".}
proc fcQAbstractSocket_protectedbase_setSocketError(self: pointer, socketError: cint): void {.importc: "QAbstractSocket_protectedbase_setSocketError".}
proc fcQAbstractSocket_protectedbase_setLocalPort(self: pointer, port: cushort): void {.importc: "QAbstractSocket_protectedbase_setLocalPort".}
proc fcQAbstractSocket_protectedbase_setLocalAddress(self: pointer, address: pointer): void {.importc: "QAbstractSocket_protectedbase_setLocalAddress".}
proc fcQAbstractSocket_protectedbase_setPeerPort(self: pointer, port: cushort): void {.importc: "QAbstractSocket_protectedbase_setPeerPort".}
proc fcQAbstractSocket_protectedbase_setPeerAddress(self: pointer, address: pointer): void {.importc: "QAbstractSocket_protectedbase_setPeerAddress".}
proc fcQAbstractSocket_protectedbase_setPeerName(self: pointer, name: struct_miqt_string): void {.importc: "QAbstractSocket_protectedbase_setPeerName".}
proc fcQAbstractSocket_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QAbstractSocket_protectedbase_setOpenMode".}
proc fcQAbstractSocket_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QAbstractSocket_protectedbase_setErrorString".}
proc fcQAbstractSocket_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractSocket_protectedbase_sender".}
proc fcQAbstractSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractSocket_protectedbase_senderSignalIndex".}
proc fcQAbstractSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractSocket_protectedbase_receivers".}
proc fcQAbstractSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractSocket_protectedbase_isSignalConnected".}
proc fcQAbstractSocket_new(vtbl, vdata: pointer, socketType: cint, parent: pointer): ptr cQAbstractSocket {.importc: "QAbstractSocket_new".}
proc fcQAbstractSocket_staticMetaObject(): pointer {.importc: "QAbstractSocket_staticMetaObject".}

proc metaObject*(self: gen_qabstractsocket_types.QAbstractSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cstring): pointer =
  fcQAbstractSocket_metacast(self.h, param1)

proc metacall*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring): string =
  let v_ms = fcQAbstractSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring): string =
  let v_ms = fcQAbstractSocket_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc resume*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_resume(self.h)

proc pauseMode*(self: gen_qabstractsocket_types.QAbstractSocket): cint =
  cint(fcQAbstractSocket_pauseMode(self.h))

proc setPauseMode*(self: gen_qabstractsocket_types.QAbstractSocket, pauseMode: cint): void =
  fcQAbstractSocket_setPauseMode(self.h, cint(pauseMode))

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQAbstractSocket_bindX(self.h, address.h)

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_bind2(self.h)

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQAbstractSocket_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void =
  fcQAbstractSocket_connectToHost2(self.h, address.h, port, cint(mode))

proc disconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_disconnectFromHost(self.h)

proc isValid*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_isValid(self.h)

proc bytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_bytesToWrite(self.h)

proc canReadLine*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_canReadLine(self.h)

proc localPort*(self: gen_qabstractsocket_types.QAbstractSocket): cushort =
  fcQAbstractSocket_localPort(self.h)

proc localAddress*(self: gen_qabstractsocket_types.QAbstractSocket): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQAbstractSocket_localAddress(self.h), owned: true)

proc peerPort*(self: gen_qabstractsocket_types.QAbstractSocket): cushort =
  fcQAbstractSocket_peerPort(self.h)

proc peerAddress*(self: gen_qabstractsocket_types.QAbstractSocket): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQAbstractSocket_peerAddress(self.h), owned: true)

proc peerName*(self: gen_qabstractsocket_types.QAbstractSocket): string =
  let v_ms = fcQAbstractSocket_peerName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc readBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, size: clonglong): void =
  fcQAbstractSocket_setReadBufferSize(self.h, size)

proc abort*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_abort(self.h)

proc socketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket): uint =
  fcQAbstractSocket_socketDescriptor(self.h)

proc setSocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQAbstractSocket_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc setSocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQAbstractSocket_setSocketOption(self.h, cint(option), value.h)

proc socketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSocket_socketOption(self.h, cint(option)), owned: true)

proc socketType*(self: gen_qabstractsocket_types.QAbstractSocket): cint =
  cint(fcQAbstractSocket_socketType(self.h))

proc state*(self: gen_qabstractsocket_types.QAbstractSocket): cint =
  cint(fcQAbstractSocket_state(self.h))

proc error*(self: gen_qabstractsocket_types.QAbstractSocket): cint =
  cint(fcQAbstractSocket_error(self.h))

proc close*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_close(self.h)

proc isSequential*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_isSequential(self.h)

proc atEnd*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_atEnd(self.h)

proc flush*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
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

proc proxy*(self: gen_qabstractsocket_types.QAbstractSocket): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQAbstractSocket_proxy(self.h), owned: true)

proc protocolTag*(self: gen_qabstractsocket_types.QAbstractSocket): string =
  let v_ms = fcQAbstractSocket_protocolTag(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setProtocolTag*(self: gen_qabstractsocket_types.QAbstractSocket, tag: openArray[char]): void =
  fcQAbstractSocket_setProtocolTag(self.h, struct_miqt_string(data: if len(tag) > 0: addr tag[0] else: nil, len: csize_t(len(tag))))

proc hostFound*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_hostFound(self.h)

type QAbstractSockethostFoundSlot* = proc()
proc cQAbstractSocket_slot_callback_hostFound(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSockethostFoundSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractSocket_slot_callback_hostFound_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSockethostFoundSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhostFound*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSockethostFoundSlot) =
  var tmp = new QAbstractSockethostFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_hostFound(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_hostFound, cQAbstractSocket_slot_callback_hostFound_release)

proc connected*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_connected(self.h)

type QAbstractSocketconnectedSlot* = proc()
proc cQAbstractSocket_slot_callback_connected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractSocket_slot_callback_connected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketconnectedSlot) =
  var tmp = new QAbstractSocketconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_connected(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_connected, cQAbstractSocket_slot_callback_connected_release)

proc disconnected*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_disconnected(self.h)

type QAbstractSocketdisconnectedSlot* = proc()
proc cQAbstractSocket_slot_callback_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketdisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractSocket_slot_callback_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketdisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketdisconnectedSlot) =
  var tmp = new QAbstractSocketdisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_disconnected(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_disconnected, cQAbstractSocket_slot_callback_disconnected_release)

proc stateChanged*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_stateChanged(self.h, cint(param1))

type QAbstractSocketstateChangedSlot* = proc(param1: cint)
proc cQAbstractSocket_slot_callback_stateChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc cQAbstractSocket_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketstateChangedSlot) =
  var tmp = new QAbstractSocketstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_stateChanged(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_stateChanged, cQAbstractSocket_slot_callback_stateChanged_release)

proc error*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_errorWithQAbstractSocketSocketError(self.h, cint(param1))

type QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot* = proc(param1: cint)
proc cQAbstractSocket_slot_callback_errorWithQAbstractSocketSocketError(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc cQAbstractSocket_slot_callback_errorWithQAbstractSocketSocketError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot) =
  var tmp = new QAbstractSocketerrorWithQAbstractSocketSocketErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_errorWithQAbstractSocketSocketError(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_errorWithQAbstractSocketSocketError, cQAbstractSocket_slot_callback_errorWithQAbstractSocketSocketError_release)

proc errorOccurred*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_errorOccurred(self.h, cint(param1))

type QAbstractSocketerrorOccurredSlot* = proc(param1: cint)
proc cQAbstractSocket_slot_callback_errorOccurred(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc cQAbstractSocket_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketerrorOccurredSlot) =
  var tmp = new QAbstractSocketerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_errorOccurred, cQAbstractSocket_slot_callback_errorOccurred_release)

proc proxyAuthenticationRequired*(self: gen_qabstractsocket_types.QAbstractSocket, proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQAbstractSocket_proxyAuthenticationRequired(self.h, proxy.h, authenticator.h)

type QAbstractSocketproxyAuthenticationRequiredSlot* = proc(proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator)
proc cQAbstractSocket_slot_callback_proxyAuthenticationRequired(slot: int, proxy: pointer, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxy(h: proxy, owned: false)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQAbstractSocket_slot_callback_proxyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onproxyAuthenticationRequired*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketproxyAuthenticationRequiredSlot) =
  var tmp = new QAbstractSocketproxyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]), cQAbstractSocket_slot_callback_proxyAuthenticationRequired, cQAbstractSocket_slot_callback_proxyAuthenticationRequired_release)

proc tr*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractsocket_types.QAbstractSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QAbstractSocketmetaObjectProc* = proc(self: QAbstractSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractSocketmetacastProc* = proc(self: QAbstractSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractSocketmetacallProc* = proc(self: QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractSocketresumeProc* = proc(self: QAbstractSocket): void {.raises: [], gcsafe.}
type QAbstractSocketconnectToHostProc* = proc(self: QAbstractSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QAbstractSocketconnectToHost2Proc* = proc(self: QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void {.raises: [], gcsafe.}
type QAbstractSocketdisconnectFromHostProc* = proc(self: QAbstractSocket): void {.raises: [], gcsafe.}
type QAbstractSocketbytesAvailableProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketbytesToWriteProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketcanReadLineProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketsetReadBufferSizeProc* = proc(self: QAbstractSocket, size: clonglong): void {.raises: [], gcsafe.}
type QAbstractSocketsocketDescriptorProc* = proc(self: QAbstractSocket): uint {.raises: [], gcsafe.}
type QAbstractSocketsetSocketDescriptorProc* = proc(self: QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketsetSocketOptionProc* = proc(self: QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QAbstractSocketsocketOptionProc* = proc(self: QAbstractSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractSocketcloseProc* = proc(self: QAbstractSocket): void {.raises: [], gcsafe.}
type QAbstractSocketisSequentialProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketatEndProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForConnectedProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForReadyReadProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForBytesWrittenProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForDisconnectedProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketreadDataProc* = proc(self: QAbstractSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketreadLineDataProc* = proc(self: QAbstractSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketwriteDataProc* = proc(self: QAbstractSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketopenProc* = proc(self: QAbstractSocket, mode: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketposProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketsizeProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketseekProc* = proc(self: QAbstractSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QAbstractSocketresetProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketeventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSocketeventFilterProc* = proc(self: QAbstractSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSockettimerEventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractSocketchildEventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractSocketcustomEventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSocketconnectNotifyProc* = proc(self: QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSocketdisconnectNotifyProc* = proc(self: QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSocketVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractSocketVTable
  metaObject*: QAbstractSocketmetaObjectProc
  metacast*: QAbstractSocketmetacastProc
  metacall*: QAbstractSocketmetacallProc
  resume*: QAbstractSocketresumeProc
  connectToHost*: QAbstractSocketconnectToHostProc
  connectToHost2*: QAbstractSocketconnectToHost2Proc
  disconnectFromHost*: QAbstractSocketdisconnectFromHostProc
  bytesAvailable*: QAbstractSocketbytesAvailableProc
  bytesToWrite*: QAbstractSocketbytesToWriteProc
  canReadLine*: QAbstractSocketcanReadLineProc
  setReadBufferSize*: QAbstractSocketsetReadBufferSizeProc
  socketDescriptor*: QAbstractSocketsocketDescriptorProc
  setSocketDescriptor*: QAbstractSocketsetSocketDescriptorProc
  setSocketOption*: QAbstractSocketsetSocketOptionProc
  socketOption*: QAbstractSocketsocketOptionProc
  close*: QAbstractSocketcloseProc
  isSequential*: QAbstractSocketisSequentialProc
  atEnd*: QAbstractSocketatEndProc
  waitForConnected*: QAbstractSocketwaitForConnectedProc
  waitForReadyRead*: QAbstractSocketwaitForReadyReadProc
  waitForBytesWritten*: QAbstractSocketwaitForBytesWrittenProc
  waitForDisconnected*: QAbstractSocketwaitForDisconnectedProc
  readData*: QAbstractSocketreadDataProc
  readLineData*: QAbstractSocketreadLineDataProc
  writeData*: QAbstractSocketwriteDataProc
  open*: QAbstractSocketopenProc
  pos*: QAbstractSocketposProc
  size*: QAbstractSocketsizeProc
  seek*: QAbstractSocketseekProc
  reset*: QAbstractSocketresetProc
  event*: QAbstractSocketeventProc
  eventFilter*: QAbstractSocketeventFilterProc
  timerEvent*: QAbstractSockettimerEventProc
  childEvent*: QAbstractSocketchildEventProc
  customEvent*: QAbstractSocketcustomEventProc
  connectNotify*: QAbstractSocketconnectNotifyProc
  disconnectNotify*: QAbstractSocketdisconnectNotifyProc
proc QAbstractSocketmetaObject*(self: gen_qabstractsocket_types.QAbstractSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSocketmetacast*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cstring): pointer =
  fcQAbstractSocket_virtualbase_metacast(self.h, param1)

proc cQAbstractSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractSocketmetacall*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSocketresume*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_virtualbase_resume(self.h)

proc cQAbstractSocket_vtable_callback_resume(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  vtbl[].resume(self)

proc QAbstractSocketconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQAbstractSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc cQAbstractSocket_vtable_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QAbstractSocketconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void =
  fcQAbstractSocket_virtualbase_connectToHost2(self.h, address.h, port, cint(mode))

proc cQAbstractSocket_vtable_callback_connectToHost2(self: pointer, address: pointer, port: cushort, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  vtbl[].connectToHost2(self, slotval1, slotval2, slotval3)

proc QAbstractSocketdisconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_virtualbase_disconnectFromHost(self.h)

proc cQAbstractSocket_vtable_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QAbstractSocketbytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_virtualbase_bytesAvailable(self.h)

proc cQAbstractSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QAbstractSocketbytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_virtualbase_bytesToWrite(self.h)

proc cQAbstractSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QAbstractSocketcanReadLine*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_virtualbase_canReadLine(self.h)

proc cQAbstractSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QAbstractSocketsetReadBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, size: clonglong): void =
  fcQAbstractSocket_virtualbase_setReadBufferSize(self.h, size)

proc cQAbstractSocket_vtable_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QAbstractSocketsocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket): uint =
  fcQAbstractSocket_virtualbase_socketDescriptor(self.h)

proc cQAbstractSocket_vtable_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QAbstractSocketsetSocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQAbstractSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc cQAbstractSocket_vtable_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSocketsetSocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQAbstractSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc cQAbstractSocket_vtable_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QAbstractSocketsocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc cQAbstractSocket_vtable_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractSocketclose*(self: gen_qabstractsocket_types.QAbstractSocket): void =
  fcQAbstractSocket_virtualbase_close(self.h)

proc cQAbstractSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  vtbl[].close(self)

proc QAbstractSocketisSequential*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_virtualbase_isSequential(self.h)

proc cQAbstractSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QAbstractSocketatEnd*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_virtualbase_atEnd(self.h)

proc cQAbstractSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QAbstractSocketwaitForConnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForConnected(self.h, msecs)

proc cQAbstractSocket_vtable_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QAbstractSocketwaitForReadyRead*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc cQAbstractSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QAbstractSocketwaitForBytesWritten*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQAbstractSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QAbstractSocketwaitForDisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc cQAbstractSocket_vtable_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QAbstractSocketreadData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_readData(self.h, data, maxlen)

proc cQAbstractSocket_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSocketreadLineData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_readLineData(self.h, data, maxlen)

proc cQAbstractSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSocketwriteData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, len: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_writeData(self.h, data, len)

proc cQAbstractSocket_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSocketopen*(self: gen_qabstractsocket_types.QAbstractSocket, mode: cint): bool =
  fcQAbstractSocket_virtualbase_open(self.h, cint(mode))

proc cQAbstractSocket_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QAbstractSocketpos*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_virtualbase_pos(self.h)

proc cQAbstractSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QAbstractSocketsize*(self: gen_qabstractsocket_types.QAbstractSocket): clonglong =
  fcQAbstractSocket_virtualbase_size(self.h)

proc cQAbstractSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QAbstractSocketseek*(self: gen_qabstractsocket_types.QAbstractSocket, pos: clonglong): bool =
  fcQAbstractSocket_virtualbase_seek(self.h, pos)

proc cQAbstractSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QAbstractSocketreset*(self: gen_qabstractsocket_types.QAbstractSocket): bool =
  fcQAbstractSocket_virtualbase_reset(self.h)

proc cQAbstractSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QAbstractSocketevent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSocket_virtualbase_event(self.h, event.h)

proc cQAbstractSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractSocketeventFilter*(self: gen_qabstractsocket_types.QAbstractSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSockettimerEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractSocket_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractSocketchildEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractSocket_virtualbase_childEvent(self.h, event.h)

proc cQAbstractSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractSocketcustomEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSocket_virtualbase_customEvent(self.h, event.h)

proc cQAbstractSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractSocketconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSocket_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractSocketdisconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractSocket* {.inheritable.} = ref object of QAbstractSocket
  vtbl*: cQAbstractSocketVTable
method metaObject*(self: VirtualQAbstractSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractSocketmetaObject(self[])
proc cQAbstractSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractSocket, param1: cstring): pointer {.base.} =
  QAbstractSocketmetacast(self[], param1)
proc cQAbstractSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractSocketmetacall(self[], param1, param2, param3)
proc cQAbstractSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method resume*(self: VirtualQAbstractSocket): void {.base.} =
  QAbstractSocketresume(self[])
proc cQAbstractSocket_method_callback_resume(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  inst.resume()

method connectToHost*(self: VirtualQAbstractSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.base.} =
  QAbstractSocketconnectToHost(self[], hostName, port, mode, protocol)
proc cQAbstractSocket_method_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  inst.connectToHost(slotval1, slotval2, slotval3, slotval4)

method connectToHost*(self: VirtualQAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void {.base.} =
  QAbstractSocketconnectToHost(self[], address, port, mode)
proc cQAbstractSocket_method_callback_connectToHost2(self: pointer, address: pointer, port: cushort, mode: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  inst.connectToHost(slotval1, slotval2, slotval3)

method disconnectFromHost*(self: VirtualQAbstractSocket): void {.base.} =
  QAbstractSocketdisconnectFromHost(self[])
proc cQAbstractSocket_method_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  inst.disconnectFromHost()

method bytesAvailable*(self: VirtualQAbstractSocket): clonglong {.base.} =
  QAbstractSocketbytesAvailable(self[])
proc cQAbstractSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQAbstractSocket): clonglong {.base.} =
  QAbstractSocketbytesToWrite(self[])
proc cQAbstractSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQAbstractSocket): bool {.base.} =
  QAbstractSocketcanReadLine(self[])
proc cQAbstractSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method setReadBufferSize*(self: VirtualQAbstractSocket, size: clonglong): void {.base.} =
  QAbstractSocketsetReadBufferSize(self[], size)
proc cQAbstractSocket_method_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = size
  inst.setReadBufferSize(slotval1)

method socketDescriptor*(self: VirtualQAbstractSocket): uint {.base.} =
  QAbstractSocketsocketDescriptor(self[])
proc cQAbstractSocket_method_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.socketDescriptor()
  virtualReturn

method setSocketDescriptor*(self: VirtualQAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QAbstractSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
proc cQAbstractSocket_method_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = inst.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

method setSocketOption*(self: VirtualQAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QAbstractSocketsetSocketOption(self[], option, value)
proc cQAbstractSocket_method_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setSocketOption(slotval1, slotval2)

method socketOption*(self: VirtualQAbstractSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractSocketsocketOption(self[], option)
proc cQAbstractSocket_method_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method close*(self: VirtualQAbstractSocket): void {.base.} =
  QAbstractSocketclose(self[])
proc cQAbstractSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  inst.close()

method isSequential*(self: VirtualQAbstractSocket): bool {.base.} =
  QAbstractSocketisSequential(self[])
proc cQAbstractSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method atEnd*(self: VirtualQAbstractSocket): bool {.base.} =
  QAbstractSocketatEnd(self[])
proc cQAbstractSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method waitForConnected*(self: VirtualQAbstractSocket, msecs: cint): bool {.base.} =
  QAbstractSocketwaitForConnected(self[], msecs)
proc cQAbstractSocket_method_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForConnected(slotval1)
  virtualReturn

method waitForReadyRead*(self: VirtualQAbstractSocket, msecs: cint): bool {.base.} =
  QAbstractSocketwaitForReadyRead(self[], msecs)
proc cQAbstractSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQAbstractSocket, msecs: cint): bool {.base.} =
  QAbstractSocketwaitForBytesWritten(self[], msecs)
proc cQAbstractSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method waitForDisconnected*(self: VirtualQAbstractSocket, msecs: cint): bool {.base.} =
  QAbstractSocketwaitForDisconnected(self[], msecs)
proc cQAbstractSocket_method_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForDisconnected(slotval1)
  virtualReturn

method readData*(self: VirtualQAbstractSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QAbstractSocketreadData(self[], data, maxlen)
proc cQAbstractSocket_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQAbstractSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QAbstractSocketreadLineData(self[], data, maxlen)
proc cQAbstractSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method writeData*(self: VirtualQAbstractSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QAbstractSocketwriteData(self[], data, len)
proc cQAbstractSocket_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method open*(self: VirtualQAbstractSocket, mode: cint): bool {.base.} =
  QAbstractSocketopen(self[], mode)
proc cQAbstractSocket_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method pos*(self: VirtualQAbstractSocket): clonglong {.base.} =
  QAbstractSocketpos(self[])
proc cQAbstractSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQAbstractSocket): clonglong {.base.} =
  QAbstractSocketsize(self[])
proc cQAbstractSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method seek*(self: VirtualQAbstractSocket, pos: clonglong): bool {.base.} =
  QAbstractSocketseek(self[], pos)
proc cQAbstractSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method reset*(self: VirtualQAbstractSocket): bool {.base.} =
  QAbstractSocketreset(self[])
proc cQAbstractSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method event*(self: VirtualQAbstractSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSocketevent(self[], event)
proc cQAbstractSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSocketeventFilter(self[], watched, event)
proc cQAbstractSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractSockettimerEvent(self[], event)
proc cQAbstractSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractSocketchildEvent(self[], event)
proc cQAbstractSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSocketcustomEvent(self[], event)
proc cQAbstractSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSocketconnectNotify(self[], signal)
proc cQAbstractSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSocketdisconnectNotify(self[], signal)
proc cQAbstractSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSocket](fcQAbstractSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setSocketState*(self: gen_qabstractsocket_types.QAbstractSocket, state: cint): void =
  fcQAbstractSocket_protectedbase_setSocketState(self.h, cint(state))

proc setSocketError*(self: gen_qabstractsocket_types.QAbstractSocket, socketError: cint): void =
  fcQAbstractSocket_protectedbase_setSocketError(self.h, cint(socketError))

proc setLocalPort*(self: gen_qabstractsocket_types.QAbstractSocket, port: cushort): void =
  fcQAbstractSocket_protectedbase_setLocalPort(self.h, port)

proc setLocalAddress*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQAbstractSocket_protectedbase_setLocalAddress(self.h, address.h)

proc setPeerPort*(self: gen_qabstractsocket_types.QAbstractSocket, port: cushort): void =
  fcQAbstractSocket_protectedbase_setPeerPort(self.h, port)

proc setPeerAddress*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQAbstractSocket_protectedbase_setPeerAddress(self.h, address.h)

proc setPeerName*(self: gen_qabstractsocket_types.QAbstractSocket, name: openArray[char]): void =
  fcQAbstractSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qabstractsocket_types.QAbstractSocket, openMode: cint): void =
  fcQAbstractSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qabstractsocket_types.QAbstractSocket, errorString: openArray[char]): void =
  fcQAbstractSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qabstractsocket_types.QAbstractSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractsocket_types.QAbstractSocket): cint =
  fcQAbstractSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractsocket_types.QAbstractSocket, signal: cstring): cint =
  fcQAbstractSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractsocket_types.QAbstractSocket,
    socketType: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractSocketVTable = nil): gen_qabstractsocket_types.QAbstractSocket =
  let vtbl = if vtbl == nil: new QAbstractSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractSocketVTable](fcQAbstractSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQAbstractSocket_vtable_callback_resume
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQAbstractSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].connectToHost2):
    vtbl[].vtbl.connectToHost2 = cQAbstractSocket_vtable_callback_connectToHost2
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQAbstractSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQAbstractSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQAbstractSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQAbstractSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQAbstractSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQAbstractSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQAbstractSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQAbstractSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQAbstractSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQAbstractSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQAbstractSocket_vtable_callback_isSequential
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQAbstractSocket_vtable_callback_atEnd
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQAbstractSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQAbstractSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQAbstractSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQAbstractSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQAbstractSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQAbstractSocket_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQAbstractSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQAbstractSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQAbstractSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQAbstractSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQAbstractSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQAbstractSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractSocket_vtable_callback_disconnectNotify
  gen_qabstractsocket_types.QAbstractSocket(h: fcQAbstractSocket_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(socketType), parent.h), owned: true)

const cQAbstractSocket_mvtbl = cQAbstractSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractSocket()[])](self.fcQAbstractSocket_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractSocket_method_callback_metaObject,
  metacast: cQAbstractSocket_method_callback_metacast,
  metacall: cQAbstractSocket_method_callback_metacall,
  resume: cQAbstractSocket_method_callback_resume,
  connectToHost: cQAbstractSocket_method_callback_connectToHost,
  connectToHost2: cQAbstractSocket_method_callback_connectToHost2,
  disconnectFromHost: cQAbstractSocket_method_callback_disconnectFromHost,
  bytesAvailable: cQAbstractSocket_method_callback_bytesAvailable,
  bytesToWrite: cQAbstractSocket_method_callback_bytesToWrite,
  canReadLine: cQAbstractSocket_method_callback_canReadLine,
  setReadBufferSize: cQAbstractSocket_method_callback_setReadBufferSize,
  socketDescriptor: cQAbstractSocket_method_callback_socketDescriptor,
  setSocketDescriptor: cQAbstractSocket_method_callback_setSocketDescriptor,
  setSocketOption: cQAbstractSocket_method_callback_setSocketOption,
  socketOption: cQAbstractSocket_method_callback_socketOption,
  close: cQAbstractSocket_method_callback_close,
  isSequential: cQAbstractSocket_method_callback_isSequential,
  atEnd: cQAbstractSocket_method_callback_atEnd,
  waitForConnected: cQAbstractSocket_method_callback_waitForConnected,
  waitForReadyRead: cQAbstractSocket_method_callback_waitForReadyRead,
  waitForBytesWritten: cQAbstractSocket_method_callback_waitForBytesWritten,
  waitForDisconnected: cQAbstractSocket_method_callback_waitForDisconnected,
  readData: cQAbstractSocket_method_callback_readData,
  readLineData: cQAbstractSocket_method_callback_readLineData,
  writeData: cQAbstractSocket_method_callback_writeData,
  open: cQAbstractSocket_method_callback_open,
  pos: cQAbstractSocket_method_callback_pos,
  size: cQAbstractSocket_method_callback_size,
  seek: cQAbstractSocket_method_callback_seek,
  reset: cQAbstractSocket_method_callback_reset,
  event: cQAbstractSocket_method_callback_event,
  eventFilter: cQAbstractSocket_method_callback_eventFilter,
  timerEvent: cQAbstractSocket_method_callback_timerEvent,
  childEvent: cQAbstractSocket_method_callback_childEvent,
  customEvent: cQAbstractSocket_method_callback_customEvent,
  connectNotify: cQAbstractSocket_method_callback_connectNotify,
  disconnectNotify: cQAbstractSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractsocket_types.QAbstractSocket,
    socketType: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractSocket_new(addr(cQAbstractSocket_mvtbl), addr(inst[]), cint(socketType), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractsocket_types.QAbstractSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_staticMetaObject())
