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
{.compile("gen_qudpsocket.cpp", cflags).}


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

proc fcQUdpSocket_metaObject(self: pointer, ): pointer {.importc: "QUdpSocket_metaObject".}
proc fcQUdpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QUdpSocket_metacast".}
proc fcQUdpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUdpSocket_metacall".}
proc fcQUdpSocket_tr(s: cstring): struct_miqt_string {.importc: "QUdpSocket_tr".}
proc fcQUdpSocket_bindX(self: pointer, addrVal: cint): bool {.importc: "QUdpSocket_bind".}
proc fcQUdpSocket_joinMulticastGroup(self: pointer, groupAddress: pointer): bool {.importc: "QUdpSocket_joinMulticastGroup".}
proc fcQUdpSocket_joinMulticastGroup2(self: pointer, groupAddress: pointer, iface: pointer): bool {.importc: "QUdpSocket_joinMulticastGroup2".}
proc fcQUdpSocket_leaveMulticastGroup(self: pointer, groupAddress: pointer): bool {.importc: "QUdpSocket_leaveMulticastGroup".}
proc fcQUdpSocket_leaveMulticastGroup2(self: pointer, groupAddress: pointer, iface: pointer): bool {.importc: "QUdpSocket_leaveMulticastGroup2".}
proc fcQUdpSocket_multicastInterface(self: pointer, ): pointer {.importc: "QUdpSocket_multicastInterface".}
proc fcQUdpSocket_setMulticastInterface(self: pointer, iface: pointer): void {.importc: "QUdpSocket_setMulticastInterface".}
proc fcQUdpSocket_hasPendingDatagrams(self: pointer, ): bool {.importc: "QUdpSocket_hasPendingDatagrams".}
proc fcQUdpSocket_pendingDatagramSize(self: pointer, ): clonglong {.importc: "QUdpSocket_pendingDatagramSize".}
proc fcQUdpSocket_receiveDatagram(self: pointer, ): pointer {.importc: "QUdpSocket_receiveDatagram".}
proc fcQUdpSocket_readDatagram(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_readDatagram".}
proc fcQUdpSocket_writeDatagram(self: pointer, datagram: pointer): clonglong {.importc: "QUdpSocket_writeDatagram".}
proc fcQUdpSocket_writeDatagram2(self: pointer, data: cstring, len: clonglong, host: pointer, port: cushort): clonglong {.importc: "QUdpSocket_writeDatagram2".}
proc fcQUdpSocket_writeDatagram3(self: pointer, datagram: struct_miqt_string, host: pointer, port: cushort): clonglong {.importc: "QUdpSocket_writeDatagram3".}
proc fcQUdpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUdpSocket_tr2".}
proc fcQUdpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUdpSocket_tr3".}
proc fcQUdpSocket_bind2(self: pointer, addrVal: cint, port: cushort): bool {.importc: "QUdpSocket_bind2".}
proc fcQUdpSocket_bind3(self: pointer, addrVal: cint, port: cushort, mode: cint): bool {.importc: "QUdpSocket_bind3".}
proc fcQUdpSocket_receiveDatagram1(self: pointer, maxSize: clonglong): pointer {.importc: "QUdpSocket_receiveDatagram1".}
proc fcQUdpSocket_readDatagram3(self: pointer, data: cstring, maxlen: clonglong, host: pointer): clonglong {.importc: "QUdpSocket_readDatagram3".}
proc fcQUdpSocket_readDatagram4(self: pointer, data: cstring, maxlen: clonglong, host: pointer, port: ptr cushort): clonglong {.importc: "QUdpSocket_readDatagram4".}
type cQUdpSocketVTable = object
  destructor*: proc(vtbl: ptr cQUdpSocketVTable, self: ptr cQUdpSocket) {.cdecl, raises:[], gcsafe.}
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
proc fcQUdpSocket_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QUdpSocket_virtualbase_metaObject".}
proc fcQUdpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QUdpSocket_virtualbase_metacast".}
proc fcQUdpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUdpSocket_virtualbase_metacall".}
proc fcQUdpSocket_virtualbase_resume(self: pointer, ): void {.importc: "QUdpSocket_virtualbase_resume".}
proc fcQUdpSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QUdpSocket_virtualbase_bind".}
proc fcQUdpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QUdpSocket_virtualbase_connectToHost".}
proc fcQUdpSocket_virtualbase_disconnectFromHost(self: pointer, ): void {.importc: "QUdpSocket_virtualbase_disconnectFromHost".}
proc fcQUdpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QUdpSocket_virtualbase_bytesAvailable".}
proc fcQUdpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QUdpSocket_virtualbase_bytesToWrite".}
proc fcQUdpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QUdpSocket_virtualbase_setReadBufferSize".}
proc fcQUdpSocket_virtualbase_socketDescriptor(self: pointer, ): uint {.importc: "QUdpSocket_virtualbase_socketDescriptor".}
proc fcQUdpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QUdpSocket_virtualbase_setSocketDescriptor".}
proc fcQUdpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QUdpSocket_virtualbase_setSocketOption".}
proc fcQUdpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QUdpSocket_virtualbase_socketOption".}
proc fcQUdpSocket_virtualbase_close(self: pointer, ): void {.importc: "QUdpSocket_virtualbase_close".}
proc fcQUdpSocket_virtualbase_isSequential(self: pointer, ): bool {.importc: "QUdpSocket_virtualbase_isSequential".}
proc fcQUdpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForConnected".}
proc fcQUdpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForReadyRead".}
proc fcQUdpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForBytesWritten".}
proc fcQUdpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QUdpSocket_virtualbase_waitForDisconnected".}
proc fcQUdpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_readData".}
proc fcQUdpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_readLineData".}
proc fcQUdpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_skipData".}
proc fcQUdpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QUdpSocket_virtualbase_writeData".}
proc fcQUdpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QUdpSocket_virtualbase_open".}
proc fcQUdpSocket_virtualbase_pos(self: pointer, ): clonglong {.importc: "QUdpSocket_virtualbase_pos".}
proc fcQUdpSocket_virtualbase_size(self: pointer, ): clonglong {.importc: "QUdpSocket_virtualbase_size".}
proc fcQUdpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QUdpSocket_virtualbase_seek".}
proc fcQUdpSocket_virtualbase_atEnd(self: pointer, ): bool {.importc: "QUdpSocket_virtualbase_atEnd".}
proc fcQUdpSocket_virtualbase_reset(self: pointer, ): bool {.importc: "QUdpSocket_virtualbase_reset".}
proc fcQUdpSocket_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QUdpSocket_virtualbase_canReadLine".}
proc fcQUdpSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QUdpSocket_virtualbase_event".}
proc fcQUdpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QUdpSocket_virtualbase_eventFilter".}
proc fcQUdpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QUdpSocket_virtualbase_timerEvent".}
proc fcQUdpSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QUdpSocket_virtualbase_childEvent".}
proc fcQUdpSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QUdpSocket_virtualbase_customEvent".}
proc fcQUdpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QUdpSocket_virtualbase_connectNotify".}
proc fcQUdpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QUdpSocket_virtualbase_disconnectNotify".}
proc fcQUdpSocket_new(vtbl: pointer, ): ptr cQUdpSocket {.importc: "QUdpSocket_new".}
proc fcQUdpSocket_new2(vtbl: pointer, parent: pointer): ptr cQUdpSocket {.importc: "QUdpSocket_new2".}
proc fcQUdpSocket_staticMetaObject(): pointer {.importc: "QUdpSocket_staticMetaObject".}
proc fcQUdpSocket_delete(self: pointer) {.importc: "QUdpSocket_delete".}

proc metaObject*(self: gen_qudpsocket_types.QUdpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_metaObject(self.h))

proc metacast*(self: gen_qudpsocket_types.QUdpSocket, param1: cstring): pointer =
  fcQUdpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qudpsocket_types.QUdpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQUdpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring): string =
  let v_ms = fcQUdpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bindX*(self: gen_qudpsocket_types.QUdpSocket, addrVal: cint): bool =
  fcQUdpSocket_bindX(self.h, cint(addrVal))

proc joinMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress): bool =
  fcQUdpSocket_joinMulticastGroup(self.h, groupAddress.h)

proc joinMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress, iface: gen_qnetworkinterface_types.QNetworkInterface): bool =
  fcQUdpSocket_joinMulticastGroup2(self.h, groupAddress.h, iface.h)

proc leaveMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress): bool =
  fcQUdpSocket_leaveMulticastGroup(self.h, groupAddress.h)

proc leaveMulticastGroup*(self: gen_qudpsocket_types.QUdpSocket, groupAddress: gen_qhostaddress_types.QHostAddress, iface: gen_qnetworkinterface_types.QNetworkInterface): bool =
  fcQUdpSocket_leaveMulticastGroup2(self.h, groupAddress.h, iface.h)

proc multicastInterface*(self: gen_qudpsocket_types.QUdpSocket, ): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQUdpSocket_multicastInterface(self.h))

proc setMulticastInterface*(self: gen_qudpsocket_types.QUdpSocket, iface: gen_qnetworkinterface_types.QNetworkInterface): void =
  fcQUdpSocket_setMulticastInterface(self.h, iface.h)

proc hasPendingDatagrams*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fcQUdpSocket_hasPendingDatagrams(self.h)

proc pendingDatagramSize*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fcQUdpSocket_pendingDatagramSize(self.h)

proc receiveDatagram*(self: gen_qudpsocket_types.QUdpSocket, ): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram(self.h))

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQUdpSocket_readDatagram(self.h, data, maxlen)

proc writeDatagram*(self: gen_qudpsocket_types.QUdpSocket, datagram: gen_qnetworkdatagram_types.QNetworkDatagram): clonglong =
  fcQUdpSocket_writeDatagram(self.h, datagram.h)

proc writeDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, len: clonglong, host: gen_qhostaddress_types.QHostAddress, port: cushort): clonglong =
  fcQUdpSocket_writeDatagram2(self.h, data, len, host.h, port)

proc writeDatagram*(self: gen_qudpsocket_types.QUdpSocket, datagram: seq[byte], host: gen_qhostaddress_types.QHostAddress, port: cushort): clonglong =
  fcQUdpSocket_writeDatagram3(self.h, struct_miqt_string(data: cast[cstring](if len(datagram) == 0: nil else: unsafeAddr datagram[0]), len: csize_t(len(datagram))), host.h, port)

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQUdpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUdpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bindX*(self: gen_qudpsocket_types.QUdpSocket, addrVal: cint, port: cushort): bool =
  fcQUdpSocket_bind2(self.h, cint(addrVal), port)

proc bindX*(self: gen_qudpsocket_types.QUdpSocket, addrVal: cint, port: cushort, mode: cint): bool =
  fcQUdpSocket_bind3(self.h, cint(addrVal), port, cint(mode))

proc receiveDatagram*(self: gen_qudpsocket_types.QUdpSocket, maxSize: clonglong): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram1(self.h, maxSize))

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress_types.QHostAddress): clonglong =
  fcQUdpSocket_readDatagram3(self.h, data, maxlen, host.h)

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress_types.QHostAddress, port: ptr cushort): clonglong =
  fcQUdpSocket_readDatagram4(self.h, data, maxlen, host.h, port)

type QUdpSocketmetaObjectProc* = proc(self: QUdpSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QUdpSocketmetacastProc* = proc(self: QUdpSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QUdpSocketmetacallProc* = proc(self: QUdpSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QUdpSocketresumeProc* = proc(self: QUdpSocket): void {.raises: [], gcsafe.}
type QUdpSocketbindXProc* = proc(self: QUdpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.raises: [], gcsafe.}
type QUdpSocketconnectToHostProc* = proc(self: QUdpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QUdpSocketdisconnectFromHostProc* = proc(self: QUdpSocket): void {.raises: [], gcsafe.}
type QUdpSocketbytesAvailableProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketbytesToWriteProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketsetReadBufferSizeProc* = proc(self: QUdpSocket, size: clonglong): void {.raises: [], gcsafe.}
type QUdpSocketsocketDescriptorProc* = proc(self: QUdpSocket): uint {.raises: [], gcsafe.}
type QUdpSocketsetSocketDescriptorProc* = proc(self: QUdpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QUdpSocketsetSocketOptionProc* = proc(self: QUdpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QUdpSocketsocketOptionProc* = proc(self: QUdpSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QUdpSocketcloseProc* = proc(self: QUdpSocket): void {.raises: [], gcsafe.}
type QUdpSocketisSequentialProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForConnectedProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForReadyReadProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForBytesWrittenProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketwaitForDisconnectedProc* = proc(self: QUdpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QUdpSocketreadDataProc* = proc(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketreadLineDataProc* = proc(self: QUdpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketskipDataProc* = proc(self: QUdpSocket, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketwriteDataProc* = proc(self: QUdpSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QUdpSocketopenProc* = proc(self: QUdpSocket, mode: cint): bool {.raises: [], gcsafe.}
type QUdpSocketposProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketsizeProc* = proc(self: QUdpSocket): clonglong {.raises: [], gcsafe.}
type QUdpSocketseekProc* = proc(self: QUdpSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QUdpSocketatEndProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketresetProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketcanReadLineProc* = proc(self: QUdpSocket): bool {.raises: [], gcsafe.}
type QUdpSocketeventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUdpSocketeventFilterProc* = proc(self: QUdpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUdpSockettimerEventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QUdpSocketchildEventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QUdpSocketcustomEventProc* = proc(self: QUdpSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUdpSocketconnectNotifyProc* = proc(self: QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUdpSocketdisconnectNotifyProc* = proc(self: QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUdpSocketVTable* = object
  vtbl: cQUdpSocketVTable
  metaObject*: QUdpSocketmetaObjectProc
  metacast*: QUdpSocketmetacastProc
  metacall*: QUdpSocketmetacallProc
  resume*: QUdpSocketresumeProc
  bindX*: QUdpSocketbindXProc
  connectToHost*: QUdpSocketconnectToHostProc
  disconnectFromHost*: QUdpSocketdisconnectFromHostProc
  bytesAvailable*: QUdpSocketbytesAvailableProc
  bytesToWrite*: QUdpSocketbytesToWriteProc
  setReadBufferSize*: QUdpSocketsetReadBufferSizeProc
  socketDescriptor*: QUdpSocketsocketDescriptorProc
  setSocketDescriptor*: QUdpSocketsetSocketDescriptorProc
  setSocketOption*: QUdpSocketsetSocketOptionProc
  socketOption*: QUdpSocketsocketOptionProc
  close*: QUdpSocketcloseProc
  isSequential*: QUdpSocketisSequentialProc
  waitForConnected*: QUdpSocketwaitForConnectedProc
  waitForReadyRead*: QUdpSocketwaitForReadyReadProc
  waitForBytesWritten*: QUdpSocketwaitForBytesWrittenProc
  waitForDisconnected*: QUdpSocketwaitForDisconnectedProc
  readData*: QUdpSocketreadDataProc
  readLineData*: QUdpSocketreadLineDataProc
  skipData*: QUdpSocketskipDataProc
  writeData*: QUdpSocketwriteDataProc
  open*: QUdpSocketopenProc
  pos*: QUdpSocketposProc
  size*: QUdpSocketsizeProc
  seek*: QUdpSocketseekProc
  atEnd*: QUdpSocketatEndProc
  reset*: QUdpSocketresetProc
  canReadLine*: QUdpSocketcanReadLineProc
  event*: QUdpSocketeventProc
  eventFilter*: QUdpSocketeventFilterProc
  timerEvent*: QUdpSockettimerEventProc
  childEvent*: QUdpSocketchildEventProc
  customEvent*: QUdpSocketcustomEventProc
  connectNotify*: QUdpSocketconnectNotifyProc
  disconnectNotify*: QUdpSocketdisconnectNotifyProc
proc QUdpSocketmetaObject*(self: gen_qudpsocket_types.QUdpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQUdpSocket_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QUdpSocketmetacast*(self: gen_qudpsocket_types.QUdpSocket, param1: cstring): pointer =
  fcQUdpSocket_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQUdpSocket_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QUdpSocketmetacall*(self: gen_qudpsocket_types.QUdpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQUdpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQUdpSocket_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUdpSocketresume*(self: gen_qudpsocket_types.QUdpSocket, ): void =
  fcQUdpSocket_virtualbase_resume(self.h)

proc miqt_exec_callback_cQUdpSocket_resume(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  vtbl[].resume(self)

proc QUdpSocketbindX*(self: gen_qudpsocket_types.QUdpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQUdpSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc miqt_exec_callback_cQUdpSocket_bindX(vtbl: pointer, self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUdpSocketconnectToHost*(self: gen_qudpsocket_types.QUdpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQUdpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc miqt_exec_callback_cQUdpSocket_connectToHost(vtbl: pointer, self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QUdpSocketdisconnectFromHost*(self: gen_qudpsocket_types.QUdpSocket, ): void =
  fcQUdpSocket_virtualbase_disconnectFromHost(self.h)

proc miqt_exec_callback_cQUdpSocket_disconnectFromHost(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QUdpSocketbytesAvailable*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fcQUdpSocket_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQUdpSocket_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QUdpSocketbytesToWrite*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fcQUdpSocket_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQUdpSocket_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QUdpSocketsetReadBufferSize*(self: gen_qudpsocket_types.QUdpSocket, size: clonglong): void =
  fcQUdpSocket_virtualbase_setReadBufferSize(self.h, size)

proc miqt_exec_callback_cQUdpSocket_setReadBufferSize(vtbl: pointer, self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QUdpSocketsocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, ): uint =
  fcQUdpSocket_virtualbase_socketDescriptor(self.h)

proc miqt_exec_callback_cQUdpSocket_socketDescriptor(vtbl: pointer, self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QUdpSocketsetSocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQUdpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc miqt_exec_callback_cQUdpSocket_setSocketDescriptor(vtbl: pointer, self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUdpSocketsetSocketOption*(self: gen_qudpsocket_types.QUdpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQUdpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc miqt_exec_callback_cQUdpSocket_setSocketOption(vtbl: pointer, self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QUdpSocketsocketOption*(self: gen_qudpsocket_types.QUdpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQUdpSocket_virtualbase_socketOption(self.h, cint(option)))

proc miqt_exec_callback_cQUdpSocket_socketOption(vtbl: pointer, self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.h

proc QUdpSocketclose*(self: gen_qudpsocket_types.QUdpSocket, ): void =
  fcQUdpSocket_virtualbase_close(self.h)

proc miqt_exec_callback_cQUdpSocket_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  vtbl[].close(self)

proc QUdpSocketisSequential*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fcQUdpSocket_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQUdpSocket_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QUdpSocketwaitForConnected*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForConnected(self.h, msecs)

proc miqt_exec_callback_cQUdpSocket_waitForConnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QUdpSocketwaitForReadyRead*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQUdpSocket_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QUdpSocketwaitForBytesWritten*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQUdpSocket_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QUdpSocketwaitForDisconnected*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fcQUdpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc miqt_exec_callback_cQUdpSocket_waitForDisconnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QUdpSocketreadData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQUdpSocket_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQUdpSocket_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QUdpSocketreadLineData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQUdpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQUdpSocket_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QUdpSocketskipData*(self: gen_qudpsocket_types.QUdpSocket, maxSize: clonglong): clonglong =
  fcQUdpSocket_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQUdpSocket_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QUdpSocketwriteData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, len: clonglong): clonglong =
  fcQUdpSocket_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQUdpSocket_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QUdpSocketopen*(self: gen_qudpsocket_types.QUdpSocket, mode: cint): bool =
  fcQUdpSocket_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQUdpSocket_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QUdpSocketpos*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fcQUdpSocket_virtualbase_pos(self.h)

proc miqt_exec_callback_cQUdpSocket_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QUdpSocketsize*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fcQUdpSocket_virtualbase_size(self.h)

proc miqt_exec_callback_cQUdpSocket_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QUdpSocketseek*(self: gen_qudpsocket_types.QUdpSocket, pos: clonglong): bool =
  fcQUdpSocket_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQUdpSocket_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QUdpSocketatEnd*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fcQUdpSocket_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQUdpSocket_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QUdpSocketreset*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fcQUdpSocket_virtualbase_reset(self.h)

proc miqt_exec_callback_cQUdpSocket_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QUdpSocketcanReadLine*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fcQUdpSocket_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQUdpSocket_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QUdpSocketevent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQUdpSocket_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQUdpSocket_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QUdpSocketeventFilter*(self: gen_qudpsocket_types.QUdpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQUdpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQUdpSocket_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QUdpSockettimerEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQUdpSocket_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQUdpSocket_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QUdpSocketchildEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQUdpSocket_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQUdpSocket_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QUdpSocketcustomEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQUdpSocket_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQUdpSocket_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QUdpSocketconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUdpSocket_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQUdpSocket_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QUdpSocketdisconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUdpSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQUdpSocket_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUdpSocketVTable](vtbl)
  let self = QUdpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qudpsocket_types.QUdpSocket,
    vtbl: ref QUdpSocketVTable = nil): gen_qudpsocket_types.QUdpSocket =
  let vtbl = if vtbl == nil: new QUdpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQUdpSocketVTable, _: ptr cQUdpSocket) {.cdecl.} =
    let vtbl = cast[ref QUdpSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQUdpSocket_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQUdpSocket_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQUdpSocket_metacall
  if not isNil(vtbl.resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQUdpSocket_resume
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQUdpSocket_bindX
  if not isNil(vtbl.connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQUdpSocket_connectToHost
  if not isNil(vtbl.disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQUdpSocket_disconnectFromHost
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQUdpSocket_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQUdpSocket_bytesToWrite
  if not isNil(vtbl.setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQUdpSocket_setReadBufferSize
  if not isNil(vtbl.socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQUdpSocket_socketDescriptor
  if not isNil(vtbl.setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQUdpSocket_setSocketDescriptor
  if not isNil(vtbl.setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQUdpSocket_setSocketOption
  if not isNil(vtbl.socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQUdpSocket_socketOption
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQUdpSocket_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQUdpSocket_isSequential
  if not isNil(vtbl.waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQUdpSocket_waitForConnected
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQUdpSocket_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQUdpSocket_waitForBytesWritten
  if not isNil(vtbl.waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQUdpSocket_waitForDisconnected
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQUdpSocket_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQUdpSocket_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQUdpSocket_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQUdpSocket_writeData
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQUdpSocket_open
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQUdpSocket_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQUdpSocket_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQUdpSocket_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQUdpSocket_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQUdpSocket_reset
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQUdpSocket_canReadLine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQUdpSocket_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQUdpSocket_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQUdpSocket_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQUdpSocket_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQUdpSocket_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQUdpSocket_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQUdpSocket_disconnectNotify
  gen_qudpsocket_types.QUdpSocket(h: fcQUdpSocket_new(addr(vtbl[]), ))

proc create*(T: type gen_qudpsocket_types.QUdpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QUdpSocketVTable = nil): gen_qudpsocket_types.QUdpSocket =
  let vtbl = if vtbl == nil: new QUdpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQUdpSocketVTable, _: ptr cQUdpSocket) {.cdecl.} =
    let vtbl = cast[ref QUdpSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQUdpSocket_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQUdpSocket_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQUdpSocket_metacall
  if not isNil(vtbl.resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQUdpSocket_resume
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQUdpSocket_bindX
  if not isNil(vtbl.connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQUdpSocket_connectToHost
  if not isNil(vtbl.disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQUdpSocket_disconnectFromHost
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQUdpSocket_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQUdpSocket_bytesToWrite
  if not isNil(vtbl.setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQUdpSocket_setReadBufferSize
  if not isNil(vtbl.socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQUdpSocket_socketDescriptor
  if not isNil(vtbl.setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQUdpSocket_setSocketDescriptor
  if not isNil(vtbl.setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQUdpSocket_setSocketOption
  if not isNil(vtbl.socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQUdpSocket_socketOption
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQUdpSocket_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQUdpSocket_isSequential
  if not isNil(vtbl.waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQUdpSocket_waitForConnected
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQUdpSocket_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQUdpSocket_waitForBytesWritten
  if not isNil(vtbl.waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQUdpSocket_waitForDisconnected
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQUdpSocket_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQUdpSocket_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQUdpSocket_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQUdpSocket_writeData
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQUdpSocket_open
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQUdpSocket_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQUdpSocket_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQUdpSocket_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQUdpSocket_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQUdpSocket_reset
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQUdpSocket_canReadLine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQUdpSocket_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQUdpSocket_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQUdpSocket_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQUdpSocket_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQUdpSocket_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQUdpSocket_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQUdpSocket_disconnectNotify
  gen_qudpsocket_types.QUdpSocket(h: fcQUdpSocket_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qudpsocket_types.QUdpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_staticMetaObject())
proc delete*(self: gen_qudpsocket_types.QUdpSocket) =
  fcQUdpSocket_delete(self.h)
