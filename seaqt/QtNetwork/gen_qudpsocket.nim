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

proc fcQUdpSocket_new(): ptr cQUdpSocket {.importc: "QUdpSocket_new".}
proc fcQUdpSocket_new2(parent: pointer): ptr cQUdpSocket {.importc: "QUdpSocket_new2".}
proc fcQUdpSocket_metaObject(self: pointer, ): pointer {.importc: "QUdpSocket_metaObject".}
proc fcQUdpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QUdpSocket_metacast".}
proc fcQUdpSocket_tr(s: cstring): struct_miqt_string {.importc: "QUdpSocket_tr".}
proc fcQUdpSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QUdpSocket_trUtf8".}
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
proc fcQUdpSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUdpSocket_trUtf82".}
proc fcQUdpSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUdpSocket_trUtf83".}
proc fcQUdpSocket_receiveDatagram1(self: pointer, maxSize: clonglong): pointer {.importc: "QUdpSocket_receiveDatagram1".}
proc fcQUdpSocket_readDatagram3(self: pointer, data: cstring, maxlen: clonglong, host: pointer): clonglong {.importc: "QUdpSocket_readDatagram3".}
proc fcQUdpSocket_readDatagram4(self: pointer, data: cstring, maxlen: clonglong, host: pointer, port: ptr cushort): clonglong {.importc: "QUdpSocket_readDatagram4".}
proc fQUdpSocket_virtualbase_resume(self: pointer, ): void{.importc: "QUdpSocket_virtualbase_resume".}
proc fcQUdpSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_resume".}
proc fQUdpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QUdpSocket_virtualbase_connectToHost".}
proc fcQUdpSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_connectToHost".}
proc fQUdpSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QUdpSocket_virtualbase_disconnectFromHost".}
proc fcQUdpSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_disconnectFromHost".}
proc fQUdpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_bytesAvailable".}
proc fcQUdpSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_bytesAvailable".}
proc fQUdpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_bytesToWrite".}
proc fcQUdpSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_bytesToWrite".}
proc fQUdpSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_canReadLine".}
proc fcQUdpSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_canReadLine".}
proc fQUdpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QUdpSocket_virtualbase_setReadBufferSize".}
proc fcQUdpSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_setReadBufferSize".}
proc fQUdpSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QUdpSocket_virtualbase_socketDescriptor".}
proc fcQUdpSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_socketDescriptor".}
proc fQUdpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QUdpSocket_virtualbase_setSocketDescriptor".}
proc fcQUdpSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_setSocketDescriptor".}
proc fQUdpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QUdpSocket_virtualbase_setSocketOption".}
proc fcQUdpSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_setSocketOption".}
proc fQUdpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QUdpSocket_virtualbase_socketOption".}
proc fcQUdpSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_socketOption".}
proc fQUdpSocket_virtualbase_close(self: pointer, ): void{.importc: "QUdpSocket_virtualbase_close".}
proc fcQUdpSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_close".}
proc fQUdpSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_isSequential".}
proc fcQUdpSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_isSequential".}
proc fQUdpSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_atEnd".}
proc fcQUdpSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_atEnd".}
proc fQUdpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForConnected".}
proc fcQUdpSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForConnected".}
proc fQUdpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForReadyRead".}
proc fcQUdpSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForReadyRead".}
proc fQUdpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForBytesWritten".}
proc fcQUdpSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForBytesWritten".}
proc fQUdpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QUdpSocket_virtualbase_waitForDisconnected".}
proc fcQUdpSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_waitForDisconnected".}
proc fQUdpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QUdpSocket_virtualbase_readData".}
proc fcQUdpSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_readData".}
proc fQUdpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QUdpSocket_virtualbase_readLineData".}
proc fcQUdpSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_readLineData".}
proc fQUdpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QUdpSocket_virtualbase_writeData".}
proc fcQUdpSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_writeData".}
proc fQUdpSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QUdpSocket_virtualbase_open".}
proc fcQUdpSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_open".}
proc fQUdpSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_pos".}
proc fcQUdpSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_pos".}
proc fQUdpSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QUdpSocket_virtualbase_size".}
proc fcQUdpSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_size".}
proc fQUdpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QUdpSocket_virtualbase_seek".}
proc fcQUdpSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_seek".}
proc fQUdpSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QUdpSocket_virtualbase_reset".}
proc fcQUdpSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_reset".}
proc fQUdpSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QUdpSocket_virtualbase_event".}
proc fcQUdpSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_event".}
proc fQUdpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QUdpSocket_virtualbase_eventFilter".}
proc fcQUdpSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_eventFilter".}
proc fQUdpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QUdpSocket_virtualbase_timerEvent".}
proc fcQUdpSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_timerEvent".}
proc fQUdpSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUdpSocket_virtualbase_childEvent".}
proc fcQUdpSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_childEvent".}
proc fQUdpSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUdpSocket_virtualbase_customEvent".}
proc fcQUdpSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_customEvent".}
proc fQUdpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUdpSocket_virtualbase_connectNotify".}
proc fcQUdpSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_connectNotify".}
proc fQUdpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUdpSocket_virtualbase_disconnectNotify".}
proc fcQUdpSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUdpSocket_override_virtual_disconnectNotify".}
proc fcQUdpSocket_delete(self: pointer) {.importc: "QUdpSocket_delete".}


func init*(T: type gen_qudpsocket_types.QUdpSocket, h: ptr cQUdpSocket): gen_qudpsocket_types.QUdpSocket =
  T(h: h)
proc create*(T: type gen_qudpsocket_types.QUdpSocket, ): gen_qudpsocket_types.QUdpSocket =
  gen_qudpsocket_types.QUdpSocket.init(fcQUdpSocket_new())

proc create*(T: type gen_qudpsocket_types.QUdpSocket, parent: gen_qobject_types.QObject): gen_qudpsocket_types.QUdpSocket =
  gen_qudpsocket_types.QUdpSocket.init(fcQUdpSocket_new2(parent.h))

proc metaObject*(self: gen_qudpsocket_types.QUdpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUdpSocket_metaObject(self.h))

proc metacast*(self: gen_qudpsocket_types.QUdpSocket, param1: cstring): pointer =
  fcQUdpSocket_metacast(self.h, param1)

proc tr*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring): string =
  let v_ms = fcQUdpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring): string =
  let v_ms = fcQUdpSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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

proc trUtf8*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQUdpSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qudpsocket_types.QUdpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUdpSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc receiveDatagram*(self: gen_qudpsocket_types.QUdpSocket, maxSize: clonglong): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQUdpSocket_receiveDatagram1(self.h, maxSize))

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress_types.QHostAddress): clonglong =
  fcQUdpSocket_readDatagram3(self.h, data, maxlen, host.h)

proc readDatagram*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong, host: gen_qhostaddress_types.QHostAddress, port: ptr cushort): clonglong =
  fcQUdpSocket_readDatagram4(self.h, data, maxlen, host.h, port)

proc QUdpSocketresume*(self: gen_qudpsocket_types.QUdpSocket, ): void =
  fQUdpSocket_virtualbase_resume(self.h)

type QUdpSocketresumeProc* = proc(): void
proc onresume*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketresumeProc) =
  # TODO check subclass
  var tmp = new QUdpSocketresumeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_resume(self: ptr cQUdpSocket, slot: int): void {.exportc: "miqt_exec_callback_QUdpSocket_resume ".} =
  var nimfunc = cast[ptr QUdpSocketresumeProc](cast[pointer](slot))

  nimfunc[]()
proc QUdpSocketconnectToHost*(self: gen_qudpsocket_types.QUdpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fQUdpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QUdpSocketconnectToHostProc* = proc(hostName: string, port: cushort, mode: cint, protocol: cint): void
proc onconnectToHost*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketconnectToHostProc) =
  # TODO check subclass
  var tmp = new QUdpSocketconnectToHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_connectToHost(self: ptr cQUdpSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QUdpSocket_connectToHost ".} =
  var nimfunc = cast[ptr QUdpSocketconnectToHostProc](cast[pointer](slot))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = cint(mode)

  let slotval4 = cint(protocol)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QUdpSocketdisconnectFromHost*(self: gen_qudpsocket_types.QUdpSocket, ): void =
  fQUdpSocket_virtualbase_disconnectFromHost(self.h)

type QUdpSocketdisconnectFromHostProc* = proc(): void
proc ondisconnectFromHost*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketdisconnectFromHostProc) =
  # TODO check subclass
  var tmp = new QUdpSocketdisconnectFromHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_disconnectFromHost(self: ptr cQUdpSocket, slot: int): void {.exportc: "miqt_exec_callback_QUdpSocket_disconnectFromHost ".} =
  var nimfunc = cast[ptr QUdpSocketdisconnectFromHostProc](cast[pointer](slot))

  nimfunc[]()
proc QUdpSocketbytesAvailable*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fQUdpSocket_virtualbase_bytesAvailable(self.h)

type QUdpSocketbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QUdpSocketbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_bytesAvailable(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_bytesAvailable ".} =
  var nimfunc = cast[ptr QUdpSocketbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketbytesToWrite*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fQUdpSocket_virtualbase_bytesToWrite(self.h)

type QUdpSocketbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QUdpSocketbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_bytesToWrite(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_bytesToWrite ".} =
  var nimfunc = cast[ptr QUdpSocketbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketcanReadLine*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fQUdpSocket_virtualbase_canReadLine(self.h)

type QUdpSocketcanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketcanReadLineProc) =
  # TODO check subclass
  var tmp = new QUdpSocketcanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_canReadLine(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_canReadLine ".} =
  var nimfunc = cast[ptr QUdpSocketcanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketsetReadBufferSize*(self: gen_qudpsocket_types.QUdpSocket, size: clonglong): void =
  fQUdpSocket_virtualbase_setReadBufferSize(self.h, size)

type QUdpSocketsetReadBufferSizeProc* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketsetReadBufferSizeProc) =
  # TODO check subclass
  var tmp = new QUdpSocketsetReadBufferSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_setReadBufferSize(self: ptr cQUdpSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QUdpSocket_setReadBufferSize ".} =
  var nimfunc = cast[ptr QUdpSocketsetReadBufferSizeProc](cast[pointer](slot))
  let slotval1 = size


  nimfunc[](slotval1)
proc QUdpSocketsocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, ): uint =
  fQUdpSocket_virtualbase_socketDescriptor(self.h)

type QUdpSocketsocketDescriptorProc* = proc(): uint
proc onsocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketsocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QUdpSocketsocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_socketDescriptor(self: ptr cQUdpSocket, slot: int): uint {.exportc: "miqt_exec_callback_QUdpSocket_socketDescriptor ".} =
  var nimfunc = cast[ptr QUdpSocketsocketDescriptorProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketsetSocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fQUdpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QUdpSocketsetSocketDescriptorProc* = proc(socketDescriptor: uint, state: cint, openMode: cint): bool
proc onsetSocketDescriptor*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketsetSocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QUdpSocketsetSocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_setSocketDescriptor(self: ptr cQUdpSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_setSocketDescriptor ".} =
  var nimfunc = cast[ptr QUdpSocketsetSocketDescriptorProc](cast[pointer](slot))
  let slotval1 = socketDescriptor

  let slotval2 = cint(state)

  let slotval3 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QUdpSocketsetSocketOption*(self: gen_qudpsocket_types.QUdpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fQUdpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QUdpSocketsetSocketOptionProc* = proc(option: cint, value: gen_qvariant_types.QVariant): void
proc onsetSocketOption*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketsetSocketOptionProc) =
  # TODO check subclass
  var tmp = new QUdpSocketsetSocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_setSocketOption(self: ptr cQUdpSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_setSocketOption ".} =
  var nimfunc = cast[ptr QUdpSocketsetSocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QUdpSocketsocketOption*(self: gen_qudpsocket_types.QUdpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQUdpSocket_virtualbase_socketOption(self.h, cint(option)))

type QUdpSocketsocketOptionProc* = proc(option: cint): gen_qvariant_types.QVariant
proc onsocketOption*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketsocketOptionProc) =
  # TODO check subclass
  var tmp = new QUdpSocketsocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_socketOption(self: ptr cQUdpSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QUdpSocket_socketOption ".} =
  var nimfunc = cast[ptr QUdpSocketsocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QUdpSocketclose*(self: gen_qudpsocket_types.QUdpSocket, ): void =
  fQUdpSocket_virtualbase_close(self.h)

type QUdpSocketcloseProc* = proc(): void
proc onclose*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketcloseProc) =
  # TODO check subclass
  var tmp = new QUdpSocketcloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_close(self: ptr cQUdpSocket, slot: int): void {.exportc: "miqt_exec_callback_QUdpSocket_close ".} =
  var nimfunc = cast[ptr QUdpSocketcloseProc](cast[pointer](slot))

  nimfunc[]()
proc QUdpSocketisSequential*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fQUdpSocket_virtualbase_isSequential(self.h)

type QUdpSocketisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketisSequentialProc) =
  # TODO check subclass
  var tmp = new QUdpSocketisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_isSequential(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_isSequential ".} =
  var nimfunc = cast[ptr QUdpSocketisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketatEnd*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fQUdpSocket_virtualbase_atEnd(self.h)

type QUdpSocketatEndProc* = proc(): bool
proc onatEnd*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketatEndProc) =
  # TODO check subclass
  var tmp = new QUdpSocketatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_atEnd(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_atEnd ".} =
  var nimfunc = cast[ptr QUdpSocketatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketwaitForConnected*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fQUdpSocket_virtualbase_waitForConnected(self.h, msecs)

type QUdpSocketwaitForConnectedProc* = proc(msecs: cint): bool
proc onwaitForConnected*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketwaitForConnectedProc) =
  # TODO check subclass
  var tmp = new QUdpSocketwaitForConnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForConnected(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForConnected ".} =
  var nimfunc = cast[ptr QUdpSocketwaitForConnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketwaitForReadyRead*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fQUdpSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QUdpSocketwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QUdpSocketwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForReadyRead(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForReadyRead ".} =
  var nimfunc = cast[ptr QUdpSocketwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketwaitForBytesWritten*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fQUdpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QUdpSocketwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QUdpSocketwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForBytesWritten(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QUdpSocketwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketwaitForDisconnected*(self: gen_qudpsocket_types.QUdpSocket, msecs: cint): bool =
  fQUdpSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QUdpSocketwaitForDisconnectedProc* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketwaitForDisconnectedProc) =
  # TODO check subclass
  var tmp = new QUdpSocketwaitForDisconnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_waitForDisconnected(self: ptr cQUdpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_waitForDisconnected ".} =
  var nimfunc = cast[ptr QUdpSocketwaitForDisconnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketreadData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fQUdpSocket_virtualbase_readData(self.h, data, maxlen)

type QUdpSocketreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketreadDataProc) =
  # TODO check subclass
  var tmp = new QUdpSocketreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_readData(self: ptr cQUdpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_readData ".} =
  var nimfunc = cast[ptr QUdpSocketreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUdpSocketreadLineData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, maxlen: clonglong): clonglong =
  fQUdpSocket_virtualbase_readLineData(self.h, data, maxlen)

type QUdpSocketreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketreadLineDataProc) =
  # TODO check subclass
  var tmp = new QUdpSocketreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_readLineData(self: ptr cQUdpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_readLineData ".} =
  var nimfunc = cast[ptr QUdpSocketreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUdpSocketwriteData*(self: gen_qudpsocket_types.QUdpSocket, data: cstring, len: clonglong): clonglong =
  fQUdpSocket_virtualbase_writeData(self.h, data, len)

type QUdpSocketwriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketwriteDataProc) =
  # TODO check subclass
  var tmp = new QUdpSocketwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_writeData(self: ptr cQUdpSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_writeData ".} =
  var nimfunc = cast[ptr QUdpSocketwriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUdpSocketopen*(self: gen_qudpsocket_types.QUdpSocket, mode: cint): bool =
  fQUdpSocket_virtualbase_open(self.h, cint(mode))

type QUdpSocketopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketopenProc) =
  # TODO check subclass
  var tmp = new QUdpSocketopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_open(self: ptr cQUdpSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QUdpSocket_open ".} =
  var nimfunc = cast[ptr QUdpSocketopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketpos*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fQUdpSocket_virtualbase_pos(self.h)

type QUdpSocketposProc* = proc(): clonglong
proc onpos*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketposProc) =
  # TODO check subclass
  var tmp = new QUdpSocketposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_pos(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_pos ".} =
  var nimfunc = cast[ptr QUdpSocketposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketsize*(self: gen_qudpsocket_types.QUdpSocket, ): clonglong =
  fQUdpSocket_virtualbase_size(self.h)

type QUdpSocketsizeProc* = proc(): clonglong
proc onsize*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketsizeProc) =
  # TODO check subclass
  var tmp = new QUdpSocketsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_size(self: ptr cQUdpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QUdpSocket_size ".} =
  var nimfunc = cast[ptr QUdpSocketsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketseek*(self: gen_qudpsocket_types.QUdpSocket, pos: clonglong): bool =
  fQUdpSocket_virtualbase_seek(self.h, pos)

type QUdpSocketseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketseekProc) =
  # TODO check subclass
  var tmp = new QUdpSocketseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_seek(self: ptr cQUdpSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QUdpSocket_seek ".} =
  var nimfunc = cast[ptr QUdpSocketseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketreset*(self: gen_qudpsocket_types.QUdpSocket, ): bool =
  fQUdpSocket_virtualbase_reset(self.h)

type QUdpSocketresetProc* = proc(): bool
proc onreset*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketresetProc) =
  # TODO check subclass
  var tmp = new QUdpSocketresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_reset(self: ptr cQUdpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QUdpSocket_reset ".} =
  var nimfunc = cast[ptr QUdpSocketresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUdpSocketevent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fQUdpSocket_virtualbase_event(self.h, event.h)

type QUdpSocketeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketeventProc) =
  # TODO check subclass
  var tmp = new QUdpSocketeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_event(self: ptr cQUdpSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUdpSocket_event ".} =
  var nimfunc = cast[ptr QUdpSocketeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUdpSocketeventFilter*(self: gen_qudpsocket_types.QUdpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQUdpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QUdpSocketeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketeventFilterProc) =
  # TODO check subclass
  var tmp = new QUdpSocketeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_eventFilter(self: ptr cQUdpSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUdpSocket_eventFilter ".} =
  var nimfunc = cast[ptr QUdpSocketeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUdpSockettimerEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fQUdpSocket_virtualbase_timerEvent(self.h, event.h)

type QUdpSockettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSockettimerEventProc) =
  # TODO check subclass
  var tmp = new QUdpSockettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_timerEvent(self: ptr cQUdpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_timerEvent ".} =
  var nimfunc = cast[ptr QUdpSockettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QUdpSocketchildEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fQUdpSocket_virtualbase_childEvent(self.h, event.h)

type QUdpSocketchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketchildEventProc) =
  # TODO check subclass
  var tmp = new QUdpSocketchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_childEvent(self: ptr cQUdpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_childEvent ".} =
  var nimfunc = cast[ptr QUdpSocketchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QUdpSocketcustomEvent*(self: gen_qudpsocket_types.QUdpSocket, event: gen_qcoreevent_types.QEvent): void =
  fQUdpSocket_virtualbase_customEvent(self.h, event.h)

type QUdpSocketcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketcustomEventProc) =
  # TODO check subclass
  var tmp = new QUdpSocketcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_customEvent(self: ptr cQUdpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_customEvent ".} =
  var nimfunc = cast[ptr QUdpSocketcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QUdpSocketconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUdpSocket_virtualbase_connectNotify(self.h, signal.h)

type QUdpSocketconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUdpSocketconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_connectNotify(self: ptr cQUdpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_connectNotify ".} =
  var nimfunc = cast[ptr QUdpSocketconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QUdpSocketdisconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUdpSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QUdpSocketdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qudpsocket_types.QUdpSocket, slot: QUdpSocketdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUdpSocketdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUdpSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUdpSocket_disconnectNotify(self: ptr cQUdpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUdpSocket_disconnectNotify ".} =
  var nimfunc = cast[ptr QUdpSocketdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qudpsocket_types.QUdpSocket) =
  fcQUdpSocket_delete(self.h)
