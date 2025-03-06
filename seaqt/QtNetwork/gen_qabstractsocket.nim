import ./Qt6Network_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

proc fcQAbstractSocket_metaObject(self: pointer, ): pointer {.importc: "QAbstractSocket_metaObject".}
proc fcQAbstractSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSocket_metacast".}
proc fcQAbstractSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSocket_metacall".}
proc fcQAbstractSocket_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr".}
proc fcQAbstractSocket_resume(self: pointer, ): void {.importc: "QAbstractSocket_resume".}
proc fcQAbstractSocket_pauseMode(self: pointer, ): cint {.importc: "QAbstractSocket_pauseMode".}
proc fcQAbstractSocket_setPauseMode(self: pointer, pauseMode: cint): void {.importc: "QAbstractSocket_setPauseMode".}
proc fcQAbstractSocket_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind".}
proc fcQAbstractSocket_bind2(self: pointer, ): bool {.importc: "QAbstractSocket_bind2".}
proc fcQAbstractSocket_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QAbstractSocket_connectToHost".}
proc fcQAbstractSocket_connectToHost2(self: pointer, address: pointer, port: cushort): void {.importc: "QAbstractSocket_connectToHost2".}
proc fcQAbstractSocket_disconnectFromHost(self: pointer, ): void {.importc: "QAbstractSocket_disconnectFromHost".}
proc fcQAbstractSocket_isValid(self: pointer, ): bool {.importc: "QAbstractSocket_isValid".}
proc fcQAbstractSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QAbstractSocket_bytesAvailable".}
proc fcQAbstractSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QAbstractSocket_bytesToWrite".}
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
proc fcQAbstractSocket_connect_hostFound(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_hostFound".}
proc fcQAbstractSocket_connected(self: pointer, ): void {.importc: "QAbstractSocket_connected".}
proc fcQAbstractSocket_connect_connected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_connected".}
proc fcQAbstractSocket_disconnected(self: pointer, ): void {.importc: "QAbstractSocket_disconnected".}
proc fcQAbstractSocket_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_disconnected".}
proc fcQAbstractSocket_stateChanged(self: pointer, param1: cint): void {.importc: "QAbstractSocket_stateChanged".}
proc fcQAbstractSocket_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_stateChanged".}
proc fcQAbstractSocket_errorOccurred(self: pointer, param1: cint): void {.importc: "QAbstractSocket_errorOccurred".}
proc fcQAbstractSocket_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_errorOccurred".}
proc fcQAbstractSocket_proxyAuthenticationRequired(self: pointer, proxy: pointer, authenticator: pointer): void {.importc: "QAbstractSocket_proxyAuthenticationRequired".}
proc fcQAbstractSocket_connect_proxyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, proxy: pointer, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSocket_connect_proxyAuthenticationRequired".}
proc fcQAbstractSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSocket_tr2".}
proc fcQAbstractSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSocket_tr3".}
proc fcQAbstractSocket_bind1(self: pointer, port: cushort): bool {.importc: "QAbstractSocket_bind1".}
proc fcQAbstractSocket_bind22(self: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_bind22".}
proc fcQAbstractSocket_connectToHost3(self: pointer, address: pointer, port: cushort, mode: cint): void {.importc: "QAbstractSocket_connectToHost3".}
type cQAbstractSocketVTable = object
  destructor*: proc(vtbl: ptr cQAbstractSocketVTable, self: ptr cQAbstractSocket) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resume*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  bindX*: proc(vtbl, self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(vtbl, self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
  disconnectFromHost*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  setReadBufferSize*: proc(vtbl, self: pointer, size: clonglong): void {.cdecl, raises: [], gcsafe.}
  socketDescriptor*: proc(vtbl, self: pointer, ): uint {.cdecl, raises: [], gcsafe.}
  setSocketDescriptor*: proc(vtbl, self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  setSocketOption*: proc(vtbl, self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  socketOption*: proc(vtbl, self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  waitForConnected*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForDisconnected*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(vtbl, self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(vtbl, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractSocket_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractSocket_virtualbase_metaObject".}
proc fcQAbstractSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSocket_virtualbase_metacast".}
proc fcQAbstractSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSocket_virtualbase_metacall".}
proc fcQAbstractSocket_virtualbase_resume(self: pointer, ): void {.importc: "QAbstractSocket_virtualbase_resume".}
proc fcQAbstractSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QAbstractSocket_virtualbase_bind".}
proc fcQAbstractSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QAbstractSocket_virtualbase_connectToHost".}
proc fcQAbstractSocket_virtualbase_disconnectFromHost(self: pointer, ): void {.importc: "QAbstractSocket_virtualbase_disconnectFromHost".}
proc fcQAbstractSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QAbstractSocket_virtualbase_bytesAvailable".}
proc fcQAbstractSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QAbstractSocket_virtualbase_bytesToWrite".}
proc fcQAbstractSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QAbstractSocket_virtualbase_setReadBufferSize".}
proc fcQAbstractSocket_virtualbase_socketDescriptor(self: pointer, ): uint {.importc: "QAbstractSocket_virtualbase_socketDescriptor".}
proc fcQAbstractSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QAbstractSocket_virtualbase_setSocketDescriptor".}
proc fcQAbstractSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QAbstractSocket_virtualbase_setSocketOption".}
proc fcQAbstractSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QAbstractSocket_virtualbase_socketOption".}
proc fcQAbstractSocket_virtualbase_close(self: pointer, ): void {.importc: "QAbstractSocket_virtualbase_close".}
proc fcQAbstractSocket_virtualbase_isSequential(self: pointer, ): bool {.importc: "QAbstractSocket_virtualbase_isSequential".}
proc fcQAbstractSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForConnected".}
proc fcQAbstractSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForReadyRead".}
proc fcQAbstractSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForBytesWritten".}
proc fcQAbstractSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QAbstractSocket_virtualbase_waitForDisconnected".}
proc fcQAbstractSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_readData".}
proc fcQAbstractSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_readLineData".}
proc fcQAbstractSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_skipData".}
proc fcQAbstractSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QAbstractSocket_virtualbase_writeData".}
proc fcQAbstractSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QAbstractSocket_virtualbase_open".}
proc fcQAbstractSocket_virtualbase_pos(self: pointer, ): clonglong {.importc: "QAbstractSocket_virtualbase_pos".}
proc fcQAbstractSocket_virtualbase_size(self: pointer, ): clonglong {.importc: "QAbstractSocket_virtualbase_size".}
proc fcQAbstractSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QAbstractSocket_virtualbase_seek".}
proc fcQAbstractSocket_virtualbase_atEnd(self: pointer, ): bool {.importc: "QAbstractSocket_virtualbase_atEnd".}
proc fcQAbstractSocket_virtualbase_reset(self: pointer, ): bool {.importc: "QAbstractSocket_virtualbase_reset".}
proc fcQAbstractSocket_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QAbstractSocket_virtualbase_canReadLine".}
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
proc fcQAbstractSocket_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractSocket_protectedbase_sender".}
proc fcQAbstractSocket_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractSocket_protectedbase_senderSignalIndex".}
proc fcQAbstractSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractSocket_protectedbase_receivers".}
proc fcQAbstractSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractSocket_protectedbase_isSignalConnected".}
proc fcQAbstractSocket_new(vtbl: pointer, socketType: cint, parent: pointer): ptr cQAbstractSocket {.importc: "QAbstractSocket_new".}
proc fcQAbstractSocket_staticMetaObject(): pointer {.importc: "QAbstractSocket_staticMetaObject".}
proc fcQAbstractSocket_delete(self: pointer) {.importc: "QAbstractSocket_delete".}

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

proc resume*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_resume(self.h)

proc pauseMode*(self: gen_qabstractsocket_types.QAbstractSocket, ): cint =
  cint(fcQAbstractSocket_pauseMode(self.h))

proc setPauseMode*(self: gen_qabstractsocket_types.QAbstractSocket, pauseMode: cint): void =
  fcQAbstractSocket_setPauseMode(self.h, cint(pauseMode))

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQAbstractSocket_bindX(self.h, address.h, port, cint(mode))

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_bind2(self.h)

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQAbstractSocket_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort): void =
  fcQAbstractSocket_connectToHost2(self.h, address.h, port)

proc disconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_disconnectFromHost(self.h)

proc isValid*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_isValid(self.h)

proc bytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_bytesToWrite(self.h)

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
proc miqt_exec_callback_cQAbstractSocket_hostFound(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSockethostFoundSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractSocket_hostFound_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSockethostFoundSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhostFound*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSockethostFoundSlot) =
  var tmp = new QAbstractSockethostFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_hostFound(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSocket_hostFound, miqt_exec_callback_cQAbstractSocket_hostFound_release)

proc connected*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_connected(self.h)

type QAbstractSocketconnectedSlot* = proc()
proc miqt_exec_callback_cQAbstractSocket_connected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractSocket_connected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketconnectedSlot) =
  var tmp = new QAbstractSocketconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_connected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSocket_connected, miqt_exec_callback_cQAbstractSocket_connected_release)

proc disconnected*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_disconnected(self.h)

type QAbstractSocketdisconnectedSlot* = proc()
proc miqt_exec_callback_cQAbstractSocket_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketdisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractSocket_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketdisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketdisconnectedSlot) =
  var tmp = new QAbstractSocketdisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_disconnected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSocket_disconnected, miqt_exec_callback_cQAbstractSocket_disconnected_release)

proc stateChanged*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_stateChanged(self.h, cint(param1))

type QAbstractSocketstateChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQAbstractSocket_stateChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractSocket_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketstateChangedSlot) =
  var tmp = new QAbstractSocketstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSocket_stateChanged, miqt_exec_callback_cQAbstractSocket_stateChanged_release)

proc errorOccurred*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint): void =
  fcQAbstractSocket_errorOccurred(self.h, cint(param1))

type QAbstractSocketerrorOccurredSlot* = proc(param1: cint)
proc miqt_exec_callback_cQAbstractSocket_errorOccurred(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractSocket_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketerrorOccurredSlot) =
  var tmp = new QAbstractSocketerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSocket_errorOccurred, miqt_exec_callback_cQAbstractSocket_errorOccurred_release)

proc proxyAuthenticationRequired*(self: gen_qabstractsocket_types.QAbstractSocket, proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQAbstractSocket_proxyAuthenticationRequired(self.h, proxy.h, authenticator.h)

type QAbstractSocketproxyAuthenticationRequiredSlot* = proc(proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator)
proc miqt_exec_callback_cQAbstractSocket_proxyAuthenticationRequired(slot: int, proxy: pointer, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxy(h: proxy)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQAbstractSocket_proxyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSocketproxyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onproxyAuthenticationRequired*(self: gen_qabstractsocket_types.QAbstractSocket, slot: QAbstractSocketproxyAuthenticationRequiredSlot) =
  var tmp = new QAbstractSocketproxyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSocket_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSocket_proxyAuthenticationRequired, miqt_exec_callback_cQAbstractSocket_proxyAuthenticationRequired_release)

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

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, port: cushort): bool =
  fcQAbstractSocket_bind1(self.h, port)

proc bindX*(self: gen_qabstractsocket_types.QAbstractSocket, port: cushort, mode: cint): bool =
  fcQAbstractSocket_bind22(self.h, port, cint(mode))

proc connectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): void =
  fcQAbstractSocket_connectToHost3(self.h, address.h, port, cint(mode))

type QAbstractSocketmetaObjectProc* = proc(self: QAbstractSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractSocketmetacastProc* = proc(self: QAbstractSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractSocketmetacallProc* = proc(self: QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractSocketresumeProc* = proc(self: QAbstractSocket): void {.raises: [], gcsafe.}
type QAbstractSocketbindXProc* = proc(self: QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketconnectToHostProc* = proc(self: QAbstractSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QAbstractSocketdisconnectFromHostProc* = proc(self: QAbstractSocket): void {.raises: [], gcsafe.}
type QAbstractSocketbytesAvailableProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketbytesToWriteProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketsetReadBufferSizeProc* = proc(self: QAbstractSocket, size: clonglong): void {.raises: [], gcsafe.}
type QAbstractSocketsocketDescriptorProc* = proc(self: QAbstractSocket): uint {.raises: [], gcsafe.}
type QAbstractSocketsetSocketDescriptorProc* = proc(self: QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketsetSocketOptionProc* = proc(self: QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QAbstractSocketsocketOptionProc* = proc(self: QAbstractSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractSocketcloseProc* = proc(self: QAbstractSocket): void {.raises: [], gcsafe.}
type QAbstractSocketisSequentialProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForConnectedProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForReadyReadProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForBytesWrittenProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketwaitForDisconnectedProc* = proc(self: QAbstractSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketreadDataProc* = proc(self: QAbstractSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketreadLineDataProc* = proc(self: QAbstractSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketskipDataProc* = proc(self: QAbstractSocket, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketwriteDataProc* = proc(self: QAbstractSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QAbstractSocketopenProc* = proc(self: QAbstractSocket, mode: cint): bool {.raises: [], gcsafe.}
type QAbstractSocketposProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketsizeProc* = proc(self: QAbstractSocket): clonglong {.raises: [], gcsafe.}
type QAbstractSocketseekProc* = proc(self: QAbstractSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QAbstractSocketatEndProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketresetProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketcanReadLineProc* = proc(self: QAbstractSocket): bool {.raises: [], gcsafe.}
type QAbstractSocketeventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSocketeventFilterProc* = proc(self: QAbstractSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSockettimerEventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractSocketchildEventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractSocketcustomEventProc* = proc(self: QAbstractSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSocketconnectNotifyProc* = proc(self: QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSocketdisconnectNotifyProc* = proc(self: QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSocketVTable* = object
  vtbl: cQAbstractSocketVTable
  metaObject*: QAbstractSocketmetaObjectProc
  metacast*: QAbstractSocketmetacastProc
  metacall*: QAbstractSocketmetacallProc
  resume*: QAbstractSocketresumeProc
  bindX*: QAbstractSocketbindXProc
  connectToHost*: QAbstractSocketconnectToHostProc
  disconnectFromHost*: QAbstractSocketdisconnectFromHostProc
  bytesAvailable*: QAbstractSocketbytesAvailableProc
  bytesToWrite*: QAbstractSocketbytesToWriteProc
  setReadBufferSize*: QAbstractSocketsetReadBufferSizeProc
  socketDescriptor*: QAbstractSocketsocketDescriptorProc
  setSocketDescriptor*: QAbstractSocketsetSocketDescriptorProc
  setSocketOption*: QAbstractSocketsetSocketOptionProc
  socketOption*: QAbstractSocketsocketOptionProc
  close*: QAbstractSocketcloseProc
  isSequential*: QAbstractSocketisSequentialProc
  waitForConnected*: QAbstractSocketwaitForConnectedProc
  waitForReadyRead*: QAbstractSocketwaitForReadyReadProc
  waitForBytesWritten*: QAbstractSocketwaitForBytesWrittenProc
  waitForDisconnected*: QAbstractSocketwaitForDisconnectedProc
  readData*: QAbstractSocketreadDataProc
  readLineData*: QAbstractSocketreadLineDataProc
  skipData*: QAbstractSocketskipDataProc
  writeData*: QAbstractSocketwriteDataProc
  open*: QAbstractSocketopenProc
  pos*: QAbstractSocketposProc
  size*: QAbstractSocketsizeProc
  seek*: QAbstractSocketseekProc
  atEnd*: QAbstractSocketatEndProc
  reset*: QAbstractSocketresetProc
  canReadLine*: QAbstractSocketcanReadLineProc
  event*: QAbstractSocketeventProc
  eventFilter*: QAbstractSocketeventFilterProc
  timerEvent*: QAbstractSockettimerEventProc
  childEvent*: QAbstractSocketchildEventProc
  customEvent*: QAbstractSocketcustomEventProc
  connectNotify*: QAbstractSocketconnectNotifyProc
  disconnectNotify*: QAbstractSocketdisconnectNotifyProc
proc QAbstractSocketmetaObject*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractSocket_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractSocketmetacast*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cstring): pointer =
  fcQAbstractSocket_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractSocket_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractSocketmetacall*(self: gen_qabstractsocket_types.QAbstractSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractSocket_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSocketresume*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_virtualbase_resume(self.h)

proc miqt_exec_callback_cQAbstractSocket_resume(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  vtbl[].resume(self)

proc QAbstractSocketbindX*(self: gen_qabstractsocket_types.QAbstractSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQAbstractSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc miqt_exec_callback_cQAbstractSocket_bindX(vtbl: pointer, self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSocketconnectToHost*(self: gen_qabstractsocket_types.QAbstractSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQAbstractSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc miqt_exec_callback_cQAbstractSocket_connectToHost(vtbl: pointer, self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QAbstractSocketdisconnectFromHost*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_virtualbase_disconnectFromHost(self.h)

proc miqt_exec_callback_cQAbstractSocket_disconnectFromHost(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QAbstractSocketbytesAvailable*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQAbstractSocket_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QAbstractSocketbytesToWrite*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQAbstractSocket_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QAbstractSocketsetReadBufferSize*(self: gen_qabstractsocket_types.QAbstractSocket, size: clonglong): void =
  fcQAbstractSocket_virtualbase_setReadBufferSize(self.h, size)

proc miqt_exec_callback_cQAbstractSocket_setReadBufferSize(vtbl: pointer, self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QAbstractSocketsocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, ): uint =
  fcQAbstractSocket_virtualbase_socketDescriptor(self.h)

proc miqt_exec_callback_cQAbstractSocket_socketDescriptor(vtbl: pointer, self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QAbstractSocketsetSocketDescriptor*(self: gen_qabstractsocket_types.QAbstractSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQAbstractSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc miqt_exec_callback_cQAbstractSocket_setSocketDescriptor(vtbl: pointer, self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSocketsetSocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQAbstractSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc miqt_exec_callback_cQAbstractSocket_setSocketOption(vtbl: pointer, self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QAbstractSocketsocketOption*(self: gen_qabstractsocket_types.QAbstractSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSocket_virtualbase_socketOption(self.h, cint(option)))

proc miqt_exec_callback_cQAbstractSocket_socketOption(vtbl: pointer, self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.h

proc QAbstractSocketclose*(self: gen_qabstractsocket_types.QAbstractSocket, ): void =
  fcQAbstractSocket_virtualbase_close(self.h)

proc miqt_exec_callback_cQAbstractSocket_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  vtbl[].close(self)

proc QAbstractSocketisSequential*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQAbstractSocket_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QAbstractSocketwaitForConnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForConnected(self.h, msecs)

proc miqt_exec_callback_cQAbstractSocket_waitForConnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QAbstractSocketwaitForReadyRead*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQAbstractSocket_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QAbstractSocketwaitForBytesWritten*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQAbstractSocket_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QAbstractSocketwaitForDisconnected*(self: gen_qabstractsocket_types.QAbstractSocket, msecs: cint): bool =
  fcQAbstractSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc miqt_exec_callback_cQAbstractSocket_waitForDisconnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QAbstractSocketreadData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQAbstractSocket_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSocketreadLineData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQAbstractSocket_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSocketskipData*(self: gen_qabstractsocket_types.QAbstractSocket, maxSize: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQAbstractSocket_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QAbstractSocketwriteData*(self: gen_qabstractsocket_types.QAbstractSocket, data: cstring, len: clonglong): clonglong =
  fcQAbstractSocket_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQAbstractSocket_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSocketopen*(self: gen_qabstractsocket_types.QAbstractSocket, mode: cint): bool =
  fcQAbstractSocket_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQAbstractSocket_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QAbstractSocketpos*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_virtualbase_pos(self.h)

proc miqt_exec_callback_cQAbstractSocket_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QAbstractSocketsize*(self: gen_qabstractsocket_types.QAbstractSocket, ): clonglong =
  fcQAbstractSocket_virtualbase_size(self.h)

proc miqt_exec_callback_cQAbstractSocket_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QAbstractSocketseek*(self: gen_qabstractsocket_types.QAbstractSocket, pos: clonglong): bool =
  fcQAbstractSocket_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQAbstractSocket_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QAbstractSocketatEnd*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQAbstractSocket_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QAbstractSocketreset*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_virtualbase_reset(self.h)

proc miqt_exec_callback_cQAbstractSocket_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QAbstractSocketcanReadLine*(self: gen_qabstractsocket_types.QAbstractSocket, ): bool =
  fcQAbstractSocket_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQAbstractSocket_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QAbstractSocketevent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSocket_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractSocket_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractSocketeventFilter*(self: gen_qabstractsocket_types.QAbstractSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractSocket_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSockettimerEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractSocket_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSocket_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractSocketchildEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractSocket_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSocket_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractSocketcustomEvent*(self: gen_qabstractsocket_types.QAbstractSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSocket_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSocket_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractSocketconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSocket_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractSocket_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractSocketdisconnectNotify*(self: gen_qabstractsocket_types.QAbstractSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractSocket_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSocketVTable](vtbl)
  let self = QAbstractSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

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

proc setPeerName*(self: gen_qabstractsocket_types.QAbstractSocket, name: string): void =
  fcQAbstractSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qabstractsocket_types.QAbstractSocket, openMode: cint): void =
  fcQAbstractSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qabstractsocket_types.QAbstractSocket, errorString: string): void =
  fcQAbstractSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qabstractsocket_types.QAbstractSocket, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractSocket_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractsocket_types.QAbstractSocket, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractSocketVTable, _: ptr cQAbstractSocket) {.cdecl.} =
    let vtbl = cast[ref QAbstractSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractSocket_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractSocket_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractSocket_metacall
  if not isNil(vtbl.resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQAbstractSocket_resume
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQAbstractSocket_bindX
  if not isNil(vtbl.connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQAbstractSocket_connectToHost
  if not isNil(vtbl.disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQAbstractSocket_disconnectFromHost
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQAbstractSocket_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQAbstractSocket_bytesToWrite
  if not isNil(vtbl.setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQAbstractSocket_setReadBufferSize
  if not isNil(vtbl.socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQAbstractSocket_socketDescriptor
  if not isNil(vtbl.setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQAbstractSocket_setSocketDescriptor
  if not isNil(vtbl.setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQAbstractSocket_setSocketOption
  if not isNil(vtbl.socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQAbstractSocket_socketOption
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQAbstractSocket_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQAbstractSocket_isSequential
  if not isNil(vtbl.waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQAbstractSocket_waitForConnected
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQAbstractSocket_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQAbstractSocket_waitForBytesWritten
  if not isNil(vtbl.waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQAbstractSocket_waitForDisconnected
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQAbstractSocket_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQAbstractSocket_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQAbstractSocket_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQAbstractSocket_writeData
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQAbstractSocket_open
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQAbstractSocket_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQAbstractSocket_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQAbstractSocket_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQAbstractSocket_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQAbstractSocket_reset
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQAbstractSocket_canReadLine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractSocket_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractSocket_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractSocket_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractSocket_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractSocket_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractSocket_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractSocket_disconnectNotify
  gen_qabstractsocket_types.QAbstractSocket(h: fcQAbstractSocket_new(addr(vtbl[]), cint(socketType), parent.h))

proc staticMetaObject*(_: type gen_qabstractsocket_types.QAbstractSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSocket_staticMetaObject())
proc delete*(self: gen_qabstractsocket_types.QAbstractSocket) =
  fcQAbstractSocket_delete(self.h)
