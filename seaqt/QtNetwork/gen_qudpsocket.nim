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


{.compile("gen_qudpsocket.cpp", QtNetworkCFlags).}


import ./gen_qudpsocket_types
export gen_qudpsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qabstractsocket,
  ./gen_qhostaddress_types,
  ./gen_qnetworkdatagram_types,
  ./gen_qnetworkinterface_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qabstractsocket,
  gen_qhostaddress_types,
  gen_qnetworkdatagram_types,
  gen_qnetworkinterface_types

type cQUdpSocket*{.exportc: "QUdpSocket", incompleteStruct.} = object

proc fcQUdpSocket_metaObject(self: pointer): pointer {.importc: "QUdpSocket_metaObject".}
proc fcQUdpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QUdpSocket_metacast".}
proc fcQUdpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUdpSocket_metacall".}
proc fcQUdpSocket_tr(s: cstring): struct_miqt_string {.importc: "QUdpSocket_tr".}
proc fcQUdpSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QUdpSocket_trUtf8".}
proc fcQUdpSocket_joinMulticastGroup(self: pointer, groupAddress: pointer): bool {.importc: "QUdpSocket_joinMulticastGroup".}
proc fcQUdpSocket_joinMulticastGroup2(self: pointer, groupAddress: pointer, iface: pointer): bool {.importc: "QUdpSocket_joinMulticastGroup2".}
proc fcQUdpSocket_leaveMulticastGroup(self: pointer, groupAddress: pointer): bool {.importc: "QUdpSocket_leaveMulticastGroup".}
proc fcQUdpSocket_leaveMulticastGroup2(self: pointer, groupAddress: pointer, iface: pointer): bool {.importc: "QUdpSocket_leaveMulticastGroup2".}
proc fcQUdpSocket_multicastInterface(self: pointer): pointer {.importc: "QUdpSocket_multicastInterface".}
proc fcQUdpSocket_setMulticastInterface(self: pointer, iface: pointer): void {.importc: "QUdpSocket_setMulticastInterface".}
proc fcQUdpSocket_hasPendingDatagrams(self: pointer): bool {.importc: "QUdpSocket_hasPendingDatagrams".}
proc fcQUdpSocket_pendingDatagramSize(self: pointer): clonglong {.importc: "QUdpSocket_pendingDatagramSize".}
proc fcQUdpSocket_receiveDatagram(self: pointer): pointer {.importc: "QUdpSocket_receiveDatagram".}
proc fcQUdpSocket_readDatagram(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_readDatagram".}
proc fcQUdpSocket_writeDatagram(self: pointer, datagram: pointer): clonglong {.importc: "QUdpSocket_writeDatagram".}
proc fcQUdpSocket_writeDatagram2(self: pointer, data: cstring, len: clonglong, host: pointer, port: cushort): clonglong {.importc: "QUdpSocket_writeDatagram2".}
proc fcQUdpSocket_writeDatagram3(self: pointer, datagram: struct_miqt_string, host: pointer, port: cushort): clonglong {.importc: "QUdpSocket_writeDatagram3".}
proc fcQUdpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUdpSocket_tr2".}
proc fcQUdpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUdpSocket_tr3".}
proc fcQUdpSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUdpSocket_trUtf82".}
proc fcQUdpSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUdpSocket_trUtf83".}
proc fcQUdpSocket_receiveDatagram1(self: pointer, maxSize: clonglong): pointer {.importc: "QUdpSocket_receiveDatagram1".}
proc fcQUdpSocket_readDatagram3(self: pointer, data: cstring, maxlen: clonglong, host: pointer): clonglong {.importc: "QUdpSocket_readDatagram3".}
proc fcQUdpSocket_readDatagram4(self: pointer, data: cstring, maxlen: clonglong, host: pointer, port: ptr cushort): clonglong {.importc: "QUdpSocket_readDatagram4".}
proc fcQUdpSocket_vtbl(self: pointer): pointer {.importc: "QUdpSocket_vtbl".}
proc fcQUdpSocket_vdata(self: pointer): pointer {.importc: "QUdpSocket_vdata".}
type cQUdpSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resume*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQUdpSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QUdpSocket_virtualbase_metaObject".}
proc fcQUdpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QUdpSocket_virtualbase_metacast".}
proc fcQUdpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUdpSocket_virtualbase_metacall".}
proc fcQUdpSocket_virtualbase_resume(self: pointer): void {.importc: "QUdpSocket_virtualbase_resume".}
proc fcQUdpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QUdpSocket_virtualbase_connectToHost".}
proc fcQUdpSocket_virtualbase_disconnectFromHost(self: pointer): void {.importc: "QUdpSocket_virtualbase_disconnectFromHost".}
proc fcQUdpSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QUdpSocket_virtualbase_bytesAvailable".}
proc fcQUdpSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QUdpSocket_virtualbase_bytesToWrite".}
proc fcQUdpSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QUdpSocket_virtualbase_canReadLine".}
proc fcQUdpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QUdpSocket_virtualbase_setReadBufferSize".}
proc fcQUdpSocket_virtualbase_socketDescriptor(self: pointer): uint {.importc: "QUdpSocket_virtualbase_socketDescriptor".}
proc fcQUdpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QUdpSocket_virtualbase_setSocketDescriptor".}
proc fcQUdpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QUdpSocket_virtualbase_setSocketOption".}
proc fcQUdpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QUdpSocket_virtualbase_socketOption".}
proc fcQUdpSocket_virtualbase_close(self: pointer): void {.importc: "QUdpSocket_virtualbase_close".}
proc fcQUdpSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QUdpSocket_virtualbase_isSequential".}
proc fcQUdpSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QUdpSocket_virtualbase_atEnd".}
proc fcQUdpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForConnected".}
proc fcQUdpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForReadyRead".}
proc fcQUdpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForBytesWritten".}
proc fcQUdpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForDisconnected".}
proc fcQUdpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_readData".}
proc fcQUdpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_readLineData".}
proc fcQUdpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_writeData".}
proc fcQUdpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QUdpSocket_virtualbase_open".}
proc fcQUdpSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QUdpSocket_virtualbase_pos".}
proc fcQUdpSocket_virtualbase_size(self: pointer): clonglong {.importc: "QUdpSocket_virtualbase_size".}
proc fcQUdpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QUdpSocket_virtualbase_seek".}
proc fcQUdpSocket_virtualbase_reset(self: pointer): bool {.importc: "QUdpSocket_virtualbase_reset".}
proc fcQUdpSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QUdpSocket_virtualbase_event".}
proc fcQUdpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QUdpSocket_virtualbase_eventFilter".}
proc fcQUdpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QUdpSocket_virtualbase_timerEvent".}
proc fcQUdpSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QUdpSocket_virtualbase_childEvent".}
proc fcQUdpSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QUdpSocket_virtualbase_customEvent".}
proc fcQUdpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QUdpSocket_virtualbase_connectNotify".}
proc fcQUdpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QUdpSocket_virtualbase_disconnectNotify".}
proc fcQUdpSocket_protectedbase_setSocketState(self: pointer, state: cint): void {.importc: "QUdpSocket_protectedbase_setSocketState".}
proc fcQUdpSocket_protectedbase_setSocketError(self: pointer, socketError: cint): void {.importc: "QUdpSocket_protectedbase_setSocketError".}
proc fcQUdpSocket_protectedbase_setLocalPort(self: pointer, port: cushort): void {.importc: "QUdpSocket_protectedbase_setLocalPort".}
proc fcQUdpSocket_protectedbase_setLocalAddress(self: pointer, address: pointer): void {.importc: "QUdpSocket_protectedbase_setLocalAddress".}
proc fcQUdpSocket_protectedbase_setPeerPort(self: pointer, port: cushort): void {.importc: "QUdpSocket_protectedbase_setPeerPort".}
proc fcQUdpSocket_protectedbase_setPeerAddress(self: pointer, address: pointer): void {.importc: "QUdpSocket_protectedbase_setPeerAddress".}
proc fcQUdpSocket_protectedbase_setPeerName(self: pointer, name: struct_miqt_string): void {.importc: "QUdpSocket_protectedbase_setPeerName".}
proc fcQUdpSocket_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QUdpSocket_protectedbase_setOpenMode".}
proc fcQUdpSocket_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QUdpSocket_protectedbase_setErrorString".}
proc fcQUdpSocket_protectedbase_sender(self: pointer): pointer {.importc: "QUdpSocket_protectedbase_sender".}
proc fcQUdpSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QUdpSocket_protectedbase_senderSignalIndex".}
proc fcQUdpSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QUdpSocket_protectedbase_receivers".}
proc fcQUdpSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QUdpSocket_protectedbase_isSignalConnected".}
proc fcQUdpSocket_new(vtbl, vdata: pointer): ptr cQUdpSocket {.importc: "QUdpSocket_new".}
proc fcQUdpSocket_new2(vtbl, vdata: pointer, parent: pointer): ptr cQUdpSocket {.importc: "QUdpSocket_new2".}
proc fcQUdpSocket_staticMetaObject(): pointer {.importc: "QUdpSocket_staticMetaObject".}

proc metaObject*(self: gen_qudpsocket_types.QUdpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qudpsocket_types.QUdpSocket, param1: cstring): pointer =
  fcQUdpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qudpsocket_types.QUdpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQUdpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring): string =
  let v_ms = fcQUdpSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring): string =
  let v_ms = fcQUdpSocket_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc joinMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress): bool =
  fcQUdpSocket_joinMulticastGroup(self.h, groupAddress.h)

proc joinMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress, iface: gen_qnetworkinterface_types.QNetworkInterface): bool =
  fcQUdpSocket_joinMulticastGroup2(self.h, groupAddress.h, iface.h)

proc leaveMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress): bool =
  fcQUdpSocket_leaveMulticastGroup(self.h, groupAddress.h)

proc leaveMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress, iface: gen_qnetworkinterface_types.QNetworkInterface): bool =
  fcQUdpSocket_leaveMulticastGroup2(self.h, groupAddress.h, iface.h)

proc multicastInterface*(self: gen_qudpsocket_types.QUdpSocket): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQUdpSocket_multicastInterface(self.h), owned: true)

proc setMulticastInterface*(self: gen_qudpsocket_types.QUdpSocket, iface: gen_qnetworkinterface_types.QNetworkInterface): void =
  fcQUdpSocket_setMulticastInterface(self.h, iface.h)

proc hasPendingDatagrams*(self: gen_qudpsocket_types.QUdpSocket): bool =
  fcQUdpSocket_hasPendingDatagrams(self.h)

proc pendingDatagramSize*(self: gen_qudpsocket_types.QUdpSocket): clonglong =
  fcQUdpSocket_pendingDatagramSize(self.h)

proc receiveDatagram*(self: gen_qudpsocket_types.QUdpSocket): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram(self.h), owned: true)

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQUdpSocket_readDatagram(self.h, data, maxlen)

proc writeDatagram*(self: gen_qudpsocket_types.QUdpSocket, datagram: gen_qnetworkdatagram_types.QNetworkDatagram): clonglong =
  fcQUdpSocket_writeDatagram(self.h, datagram.h)

proc writeDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, len: clonglong, host: gen_qhostaddress_types.QHostAddress, port: cushort): clonglong =
  fcQUdpSocket_writeDatagram2(self.h, data, len, host.h, port)

proc writeDatagram*(self: gen_qudpsocket_types.QUdpSocket, datagram: openArray[byte], host: gen_qhostaddress_types.QHostAddress, port: cushort): clonglong =
  fcQUdpSocket_writeDatagram3(self.h, struct_miqt_string(data: cast[cstring](if len(datagram) == 0: nil else: unsafeAddr datagram[0]), len: csize_t(len(datagram))), host.h, port)

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQUdpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUdpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQUdpSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUdpSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc receiveDatagram*(self: gen_qudpsocket_types.QUdpSocket, maxSize: clonglong): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram1(self.h, maxSize), owned: true)

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress_types.QHostAddress): clonglong =
  fcQUdpSocket_readDatagram3(self.h, data, maxlen, host.h)

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress_types.QHostAddress, port: ptr cushort): clonglong =
  fcQUdpSocket_readDatagram4(self.h, data, maxlen, host.h, port)

type QUdpSocketmetaObjectProc* = proc(self: QUdpSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QUdpSocketmetacastProc* = proc(self: QUdpSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QUdpSocketmetacallProc* = proc(self: QUdpSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QUdpSocketresumeProc* = proc(self: QUdpSocket): void {.raises: [], gcsafe.}
type QUdpSocketconnectToHostProc* = proc(self: QUdpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QUdpSocketdisconnectFromHostProc* = proc(self: QUdpSocket): void {.raises: [], gcsafe.}
type QUdpSocketbytesAvailableProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketbytesToWriteProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketcanReadLineProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketsetReadBufferSizeProc* = proc(self: QUdpSocket, size: clonglong): void {.raises: [], gcsafe.}
type QUdpSocketsocketDescriptorProc* = proc(self: QUdpSocket): uint {.raises: [], gcsafe.}
type QUdpSocketsetSocketDescriptorProc* = proc(self: QUdpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QUdpSocketsetSocketOptionProc* = proc(self: QUdpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QUdpSocketsocketOptionProc* = proc(self: QUdpSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QUdpSocketcloseProc* = proc(self: QUdpSocket): void {.raises: [], gcsafe.}
type QUdpSocketisSequentialProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketatEndProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForConnectedProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForReadyReadProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForBytesWrittenProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForDisconnectedProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketreadDataProc* = proc(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketreadLineDataProc* = proc(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketwriteDataProc* = proc(self: QUdpSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketopenProc* = proc(self: QUdpSocket, mode: cint): bool {.raises: [], gcsafe.}
type QUdpSocketposProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketsizeProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketseekProc* = proc(self: QUdpSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QUdpSocketresetProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketeventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUdpSocketeventFilterProc* = proc(self: QUdpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUdpSockettimerEventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QUdpSocketchildEventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QUdpSocketcustomEventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUdpSocketconnectNotifyProc* = proc(self: QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUdpSocketdisconnectNotifyProc* = proc(self: QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUdpSocketVTable* {.inheritable, pure.} = object
  vtbl: cQUdpSocketVTable
  metaObject*: QUdpSocketmetaObjectProc
  metacast*: QUdpSocketmetacastProc
  metacall*: QUdpSocketmetacallProc
  resume*: QUdpSocketresumeProc
  connectToHost*: QUdpSocketconnectToHostProc
  disconnectFromHost*: QUdpSocketdisconnectFromHostProc
  bytesAvailable*: QUdpSocketbytesAvailableProc
  bytesToWrite*: QUdpSocketbytesToWriteProc
  canReadLine*: QUdpSocketcanReadLineProc
  setReadBufferSize*: QUdpSocketsetReadBufferSizeProc
  socketDescriptor*: QUdpSocketsocketDescriptorProc
  setSocketDescriptor*: QUdpSocketsetSocketDescriptorProc
  setSocketOption*: QUdpSocketsetSocketOptionProc
  socketOption*: QUdpSocketsocketOptionProc
  close*: QUdpSocketcloseProc
  isSequential*: QUdpSocketisSequentialProc
  atEnd*: QUdpSocketatEndProc
  waitForConnected*: QUdpSocketwaitForConnectedProc
  waitForReadyRead*: QUdpSocketwaitForReadyReadProc
  waitForBytesWritten*: QUdpSocketwaitForBytesWrittenProc
  waitForDisconnected*: QUdpSocketwaitForDisconnectedProc
  readData*: QUdpSocketreadDataProc
  readLineData*: QUdpSocketreadLineDataProc
  writeData*: QUdpSocketwriteDataProc
  open*: QUdpSocketopenProc
  pos*: QUdpSocketposProc
  size*: QUdpSocketsizeProc
  seek*: QUdpSocketseekProc
  reset*: QUdpSocketresetProc
  event*: QUdpSocketeventProc
  eventFilter*: QUdpSocketeventFilterProc
  timerEvent*: QUdpSockettimerEventProc
  childEvent*: QUdpSocketchildEventProc
  customEvent*: QUdpSocketcustomEventProc
  connectNotify*: QUdpSocketconnectNotifyProc
  disconnectNotify*: QUdpSocketdisconnectNotifyProc
proc QUdpSocketmetaObject*(self: gen_qudpsocket_types.QUdpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_virtualbase_metaObject(self.h), owned: false)

proc cQUdpSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUdpSocketmetacast*(self: gen_qudpsocket_types.QUdpSocket, param1: cstring): pointer =
  fcQUdpSocket_virtualbase_metacast(self.h, param1)

proc cQUdpSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QUdpSocketmetacall*(self: gen_qudpsocket_types.QUdpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQUdpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQUdpSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUdpSocketresume*(self: gen_qudpsocket_types.QUdpSocket): void =
  fcQUdpSocket_virtualbase_resume(self.h)

proc cQUdpSocket_vtable_callback_resume(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  vtbl[].resume(self)

proc QUdpSocketconnectToHost*(self: gen_qudpsocket_types.QUdpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQUdpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc cQUdpSocket_vtable_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QUdpSocketdisconnectFromHost*(self: gen_qudpsocket_types.QUdpSocket): void =
  fcQUdpSocket_virtualbase_disconnectFromHost(self.h)

proc cQUdpSocket_vtable_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QUdpSocketbytesAvailable*(self: gen_qudpsocket_types.QUdpSocket): clonglong =
  fcQUdpSocket_virtualbase_bytesAvailable(self.h)

proc cQUdpSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QUdpSocketbytesToWrite*(self: gen_qudpsocket_types.QUdpSocket): clonglong =
  fcQUdpSocket_virtualbase_bytesToWrite(self.h)

proc cQUdpSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QUdpSocketcanReadLine*(self: gen_qudpsocket_types.QUdpSocket): bool =
  fcQUdpSocket_virtualbase_canReadLine(self.h)

proc cQUdpSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QUdpSocketsetReadBufferSize*(self: gen_qudpsocket_types.QUdpSocket, size: clonglong): void =
  fcQUdpSocket_virtualbase_setReadBufferSize(self.h, size)

proc cQUdpSocket_vtable_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QUdpSocketsocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket): uint =
  fcQUdpSocket_virtualbase_socketDescriptor(self.h)

proc cQUdpSocket_vtable_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QUdpSocketsetSocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQUdpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc cQUdpSocket_vtable_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUdpSocketsetSocketOption*(self: gen_qudpsocket_types.QUdpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQUdpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc cQUdpSocket_vtable_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QUdpSocketsocketOption*(self: gen_qudpsocket_types.QUdpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQUdpSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc cQUdpSocket_vtable_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUdpSocketclose*(self: gen_qudpsocket_types.QUdpSocket): void =
  fcQUdpSocket_virtualbase_close(self.h)

proc cQUdpSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  vtbl[].close(self)

proc QUdpSocketisSequential*(self: gen_qudpsocket_types.QUdpSocket): bool =
  fcQUdpSocket_virtualbase_isSequential(self.h)

proc cQUdpSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QUdpSocketatEnd*(self: gen_qudpsocket_types.QUdpSocket): bool =
  fcQUdpSocket_virtualbase_atEnd(self.h)

proc cQUdpSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QUdpSocketwaitForConnected*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForConnected(self.h, msecs)

proc cQUdpSocket_vtable_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QUdpSocketwaitForReadyRead*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc cQUdpSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QUdpSocketwaitForBytesWritten*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQUdpSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QUdpSocketwaitForDisconnected*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc cQUdpSocket_vtable_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QUdpSocketreadData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQUdpSocket_virtualbase_readData(self.h, data, maxlen)

proc cQUdpSocket_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QUdpSocketreadLineData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQUdpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc cQUdpSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QUdpSocketwriteData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, len: clonglong): clonglong =
  fcQUdpSocket_virtualbase_writeData(self.h, data, len)

proc cQUdpSocket_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QUdpSocketopen*(self: gen_qudpsocket_types.QUdpSocket, mode: cint): bool =
  fcQUdpSocket_virtualbase_open(self.h, cint(mode))

proc cQUdpSocket_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QUdpSocketpos*(self: gen_qudpsocket_types.QUdpSocket): clonglong =
  fcQUdpSocket_virtualbase_pos(self.h)

proc cQUdpSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QUdpSocketsize*(self: gen_qudpsocket_types.QUdpSocket): clonglong =
  fcQUdpSocket_virtualbase_size(self.h)

proc cQUdpSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QUdpSocketseek*(self: gen_qudpsocket_types.QUdpSocket, pos: clonglong): bool =
  fcQUdpSocket_virtualbase_seek(self.h, pos)

proc cQUdpSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QUdpSocketreset*(self: gen_qudpsocket_types.QUdpSocket): bool =
  fcQUdpSocket_virtualbase_reset(self.h)

proc cQUdpSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QUdpSocketevent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQUdpSocket_virtualbase_event(self.h, event.h)

proc cQUdpSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QUdpSocketeventFilter*(self: gen_qudpsocket_types.QUdpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQUdpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQUdpSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QUdpSockettimerEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQUdpSocket_virtualbase_timerEvent(self.h, event.h)

proc cQUdpSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QUdpSocketchildEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQUdpSocket_virtualbase_childEvent(self.h, event.h)

proc cQUdpSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QUdpSocketcustomEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQUdpSocket_virtualbase_customEvent(self.h, event.h)

proc cQUdpSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QUdpSocketconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUdpSocket_virtualbase_connectNotify(self.h, signal.h)

proc cQUdpSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QUdpSocketdisconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUdpSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc cQUdpSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](fcQUdpSocket_vdata(self))
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQUdpSocket* {.inheritable.} = ref object of QUdpSocket
  vtbl*: cQUdpSocketVTable
method metaObject*(self: VirtualQUdpSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QUdpSocketmetaObject(self[])
proc cQUdpSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQUdpSocket, param1: cstring): pointer {.base.} =
  QUdpSocketmetacast(self[], param1)
proc cQUdpSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQUdpSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QUdpSocketmetacall(self[], param1, param2, param3)
proc cQUdpSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method resume*(self: VirtualQUdpSocket): void {.base.} =
  QUdpSocketresume(self[])
proc cQUdpSocket_method_callback_resume(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  inst.resume()

method connectToHost*(self: VirtualQUdpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.base.} =
  QUdpSocketconnectToHost(self[], hostName, port, mode, protocol)
proc cQUdpSocket_method_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  inst.connectToHost(slotval1, slotval2, slotval3, slotval4)

method disconnectFromHost*(self: VirtualQUdpSocket): void {.base.} =
  QUdpSocketdisconnectFromHost(self[])
proc cQUdpSocket_method_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  inst.disconnectFromHost()

method bytesAvailable*(self: VirtualQUdpSocket): clonglong {.base.} =
  QUdpSocketbytesAvailable(self[])
proc cQUdpSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQUdpSocket): clonglong {.base.} =
  QUdpSocketbytesToWrite(self[])
proc cQUdpSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQUdpSocket): bool {.base.} =
  QUdpSocketcanReadLine(self[])
proc cQUdpSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method setReadBufferSize*(self: VirtualQUdpSocket, size: clonglong): void {.base.} =
  QUdpSocketsetReadBufferSize(self[], size)
proc cQUdpSocket_method_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = size
  inst.setReadBufferSize(slotval1)

method socketDescriptor*(self: VirtualQUdpSocket): uint {.base.} =
  QUdpSocketsocketDescriptor(self[])
proc cQUdpSocket_method_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.socketDescriptor()
  virtualReturn

method setSocketDescriptor*(self: VirtualQUdpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QUdpSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
proc cQUdpSocket_method_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = inst.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

method setSocketOption*(self: VirtualQUdpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QUdpSocketsetSocketOption(self[], option, value)
proc cQUdpSocket_method_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setSocketOption(slotval1, slotval2)

method socketOption*(self: VirtualQUdpSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QUdpSocketsocketOption(self[], option)
proc cQUdpSocket_method_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method close*(self: VirtualQUdpSocket): void {.base.} =
  QUdpSocketclose(self[])
proc cQUdpSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  inst.close()

method isSequential*(self: VirtualQUdpSocket): bool {.base.} =
  QUdpSocketisSequential(self[])
proc cQUdpSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method atEnd*(self: VirtualQUdpSocket): bool {.base.} =
  QUdpSocketatEnd(self[])
proc cQUdpSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method waitForConnected*(self: VirtualQUdpSocket, msecs: cint): bool {.base.} =
  QUdpSocketwaitForConnected(self[], msecs)
proc cQUdpSocket_method_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForConnected(slotval1)
  virtualReturn

method waitForReadyRead*(self: VirtualQUdpSocket, msecs: cint): bool {.base.} =
  QUdpSocketwaitForReadyRead(self[], msecs)
proc cQUdpSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQUdpSocket, msecs: cint): bool {.base.} =
  QUdpSocketwaitForBytesWritten(self[], msecs)
proc cQUdpSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method waitForDisconnected*(self: VirtualQUdpSocket, msecs: cint): bool {.base.} =
  QUdpSocketwaitForDisconnected(self[], msecs)
proc cQUdpSocket_method_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForDisconnected(slotval1)
  virtualReturn

method readData*(self: VirtualQUdpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QUdpSocketreadData(self[], data, maxlen)
proc cQUdpSocket_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQUdpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QUdpSocketreadLineData(self[], data, maxlen)
proc cQUdpSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method writeData*(self: VirtualQUdpSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QUdpSocketwriteData(self[], data, len)
proc cQUdpSocket_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method open*(self: VirtualQUdpSocket, mode: cint): bool {.base.} =
  QUdpSocketopen(self[], mode)
proc cQUdpSocket_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method pos*(self: VirtualQUdpSocket): clonglong {.base.} =
  QUdpSocketpos(self[])
proc cQUdpSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQUdpSocket): clonglong {.base.} =
  QUdpSocketsize(self[])
proc cQUdpSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method seek*(self: VirtualQUdpSocket, pos: clonglong): bool {.base.} =
  QUdpSocketseek(self[], pos)
proc cQUdpSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method reset*(self: VirtualQUdpSocket): bool {.base.} =
  QUdpSocketreset(self[])
proc cQUdpSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method event*(self: VirtualQUdpSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUdpSocketevent(self[], event)
proc cQUdpSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQUdpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUdpSocketeventFilter(self[], watched, event)
proc cQUdpSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQUdpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QUdpSockettimerEvent(self[], event)
proc cQUdpSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQUdpSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QUdpSocketchildEvent(self[], event)
proc cQUdpSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQUdpSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QUdpSocketcustomEvent(self[], event)
proc cQUdpSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUdpSocketconnectNotify(self[], signal)
proc cQUdpSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUdpSocketdisconnectNotify(self[], signal)
proc cQUdpSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUdpSocket](fcQUdpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setSocketState*(self: gen_qudpsocket_types.QUdpSocket, state: cint): void =
  fcQUdpSocket_protectedbase_setSocketState(self.h, cint(state))

proc setSocketError*(self: gen_qudpsocket_types.QUdpSocket, socketError: cint): void =
  fcQUdpSocket_protectedbase_setSocketError(self.h, cint(socketError))

proc setLocalPort*(self: gen_qudpsocket_types.QUdpSocket, port: cushort): void =
  fcQUdpSocket_protectedbase_setLocalPort(self.h, port)

proc setLocalAddress*(self: gen_qudpsocket_types.QUdpSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQUdpSocket_protectedbase_setLocalAddress(self.h, address.h)

proc setPeerPort*(self: gen_qudpsocket_types.QUdpSocket, port: cushort): void =
  fcQUdpSocket_protectedbase_setPeerPort(self.h, port)

proc setPeerAddress*(self: gen_qudpsocket_types.QUdpSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQUdpSocket_protectedbase_setPeerAddress(self.h, address.h)

proc setPeerName*(self: gen_qudpsocket_types.QUdpSocket, name: openArray[char]): void =
  fcQUdpSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qudpsocket_types.QUdpSocket, openMode: cint): void =
  fcQUdpSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qudpsocket_types.QUdpSocket, errorString: openArray[char]): void =
  fcQUdpSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qudpsocket_types.QUdpSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQUdpSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qudpsocket_types.QUdpSocket): cint =
  fcQUdpSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qudpsocket_types.QUdpSocket, signal: cstring): cint =
  fcQUdpSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQUdpSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qudpsocket_types.QUdpSocket,
    vtbl: ref QUdpSocketVTable = nil): gen_qudpsocket_types.QUdpSocket =
  let vtbl = if vtbl == nil: new QUdpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUdpSocketVTable](fcQUdpSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUdpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUdpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUdpSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQUdpSocket_vtable_callback_resume
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQUdpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQUdpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQUdpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQUdpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQUdpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQUdpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQUdpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQUdpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQUdpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQUdpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQUdpSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQUdpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQUdpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQUdpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQUdpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQUdpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQUdpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQUdpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQUdpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQUdpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQUdpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQUdpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQUdpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQUdpSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUdpSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUdpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUdpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUdpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUdpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUdpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUdpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUdpSocket_vtable_callback_disconnectNotify
  gen_qudpsocket_types.QUdpSocket(h: fcQUdpSocket_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qudpsocket_types.QUdpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QUdpSocketVTable = nil): gen_qudpsocket_types.QUdpSocket =
  let vtbl = if vtbl == nil: new QUdpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUdpSocketVTable](fcQUdpSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUdpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUdpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUdpSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQUdpSocket_vtable_callback_resume
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQUdpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQUdpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQUdpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQUdpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQUdpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQUdpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQUdpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQUdpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQUdpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQUdpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQUdpSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQUdpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQUdpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQUdpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQUdpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQUdpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQUdpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQUdpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQUdpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQUdpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQUdpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQUdpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQUdpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQUdpSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUdpSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUdpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUdpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUdpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUdpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUdpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUdpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUdpSocket_vtable_callback_disconnectNotify
  gen_qudpsocket_types.QUdpSocket(h: fcQUdpSocket_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQUdpSocket_mvtbl = cQUdpSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQUdpSocket()[])](self.fcQUdpSocket_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQUdpSocket_method_callback_metaObject,
  metacast: cQUdpSocket_method_callback_metacast,
  metacall: cQUdpSocket_method_callback_metacall,
  resume: cQUdpSocket_method_callback_resume,
  connectToHost: cQUdpSocket_method_callback_connectToHost,
  disconnectFromHost: cQUdpSocket_method_callback_disconnectFromHost,
  bytesAvailable: cQUdpSocket_method_callback_bytesAvailable,
  bytesToWrite: cQUdpSocket_method_callback_bytesToWrite,
  canReadLine: cQUdpSocket_method_callback_canReadLine,
  setReadBufferSize: cQUdpSocket_method_callback_setReadBufferSize,
  socketDescriptor: cQUdpSocket_method_callback_socketDescriptor,
  setSocketDescriptor: cQUdpSocket_method_callback_setSocketDescriptor,
  setSocketOption: cQUdpSocket_method_callback_setSocketOption,
  socketOption: cQUdpSocket_method_callback_socketOption,
  close: cQUdpSocket_method_callback_close,
  isSequential: cQUdpSocket_method_callback_isSequential,
  atEnd: cQUdpSocket_method_callback_atEnd,
  waitForConnected: cQUdpSocket_method_callback_waitForConnected,
  waitForReadyRead: cQUdpSocket_method_callback_waitForReadyRead,
  waitForBytesWritten: cQUdpSocket_method_callback_waitForBytesWritten,
  waitForDisconnected: cQUdpSocket_method_callback_waitForDisconnected,
  readData: cQUdpSocket_method_callback_readData,
  readLineData: cQUdpSocket_method_callback_readLineData,
  writeData: cQUdpSocket_method_callback_writeData,
  open: cQUdpSocket_method_callback_open,
  pos: cQUdpSocket_method_callback_pos,
  size: cQUdpSocket_method_callback_size,
  seek: cQUdpSocket_method_callback_seek,
  reset: cQUdpSocket_method_callback_reset,
  event: cQUdpSocket_method_callback_event,
  eventFilter: cQUdpSocket_method_callback_eventFilter,
  timerEvent: cQUdpSocket_method_callback_timerEvent,
  childEvent: cQUdpSocket_method_callback_childEvent,
  customEvent: cQUdpSocket_method_callback_customEvent,
  connectNotify: cQUdpSocket_method_callback_connectNotify,
  disconnectNotify: cQUdpSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qudpsocket_types.QUdpSocket,
    inst: VirtualQUdpSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUdpSocket_new(addr(cQUdpSocket_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qudpsocket_types.QUdpSocket,
    parent: gen_qobject_types.QObject,
    inst: VirtualQUdpSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUdpSocket_new2(addr(cQUdpSocket_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qudpsocket_types.QUdpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_staticMetaObject())
