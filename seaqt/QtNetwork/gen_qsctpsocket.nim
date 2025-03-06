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
{.compile("gen_qsctpsocket.cpp", cflags).}


import ./gen_qsctpsocket_types
export gen_qsctpsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qhostaddress_types,
  ./gen_qnetworkdatagram_types,
  ./gen_qtcpsocket
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qhostaddress_types,
  gen_qnetworkdatagram_types,
  gen_qtcpsocket

type cQSctpSocket*{.exportc: "QSctpSocket", incompleteStruct.} = object

proc fcQSctpSocket_metaObject(self: pointer, ): pointer {.importc: "QSctpSocket_metaObject".}
proc fcQSctpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpSocket_metacast".}
proc fcQSctpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpSocket_metacall".}
proc fcQSctpSocket_tr(s: cstring): struct_miqt_string {.importc: "QSctpSocket_tr".}
proc fcQSctpSocket_close(self: pointer, ): void {.importc: "QSctpSocket_close".}
proc fcQSctpSocket_disconnectFromHost(self: pointer, ): void {.importc: "QSctpSocket_disconnectFromHost".}
proc fcQSctpSocket_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpSocket_setMaximumChannelCount".}
proc fcQSctpSocket_maximumChannelCount(self: pointer, ): cint {.importc: "QSctpSocket_maximumChannelCount".}
proc fcQSctpSocket_isInDatagramMode(self: pointer, ): bool {.importc: "QSctpSocket_isInDatagramMode".}
proc fcQSctpSocket_readDatagram(self: pointer, ): pointer {.importc: "QSctpSocket_readDatagram".}
proc fcQSctpSocket_writeDatagram(self: pointer, datagram: pointer): bool {.importc: "QSctpSocket_writeDatagram".}
proc fcQSctpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpSocket_tr2".}
proc fcQSctpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpSocket_tr3".}
type cQSctpSocketVTable = object
  destructor*: proc(vtbl: ptr cQSctpSocketVTable, self: ptr cQSctpSocket) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  disconnectFromHost*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  resume*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  bindX*: proc(vtbl, self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(vtbl, self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  setReadBufferSize*: proc(vtbl, self: pointer, size: clonglong): void {.cdecl, raises: [], gcsafe.}
  socketDescriptor*: proc(vtbl, self: pointer, ): uint {.cdecl, raises: [], gcsafe.}
  setSocketDescriptor*: proc(vtbl, self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  setSocketOption*: proc(vtbl, self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  socketOption*: proc(vtbl, self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  waitForConnected*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForDisconnected*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQSctpSocket_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSctpSocket_virtualbase_metaObject".}
proc fcQSctpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpSocket_virtualbase_metacast".}
proc fcQSctpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpSocket_virtualbase_metacall".}
proc fcQSctpSocket_virtualbase_close(self: pointer, ): void {.importc: "QSctpSocket_virtualbase_close".}
proc fcQSctpSocket_virtualbase_disconnectFromHost(self: pointer, ): void {.importc: "QSctpSocket_virtualbase_disconnectFromHost".}
proc fcQSctpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_readData".}
proc fcQSctpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_readLineData".}
proc fcQSctpSocket_virtualbase_resume(self: pointer, ): void {.importc: "QSctpSocket_virtualbase_resume".}
proc fcQSctpSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QSctpSocket_virtualbase_bind".}
proc fcQSctpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QSctpSocket_virtualbase_connectToHost".}
proc fcQSctpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QSctpSocket_virtualbase_bytesAvailable".}
proc fcQSctpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QSctpSocket_virtualbase_bytesToWrite".}
proc fcQSctpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QSctpSocket_virtualbase_setReadBufferSize".}
proc fcQSctpSocket_virtualbase_socketDescriptor(self: pointer, ): uint {.importc: "QSctpSocket_virtualbase_socketDescriptor".}
proc fcQSctpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QSctpSocket_virtualbase_setSocketDescriptor".}
proc fcQSctpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QSctpSocket_virtualbase_setSocketOption".}
proc fcQSctpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QSctpSocket_virtualbase_socketOption".}
proc fcQSctpSocket_virtualbase_isSequential(self: pointer, ): bool {.importc: "QSctpSocket_virtualbase_isSequential".}
proc fcQSctpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForConnected".}
proc fcQSctpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForReadyRead".}
proc fcQSctpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForBytesWritten".}
proc fcQSctpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForDisconnected".}
proc fcQSctpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_skipData".}
proc fcQSctpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_writeData".}
proc fcQSctpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QSctpSocket_virtualbase_open".}
proc fcQSctpSocket_virtualbase_pos(self: pointer, ): clonglong {.importc: "QSctpSocket_virtualbase_pos".}
proc fcQSctpSocket_virtualbase_size(self: pointer, ): clonglong {.importc: "QSctpSocket_virtualbase_size".}
proc fcQSctpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QSctpSocket_virtualbase_seek".}
proc fcQSctpSocket_virtualbase_atEnd(self: pointer, ): bool {.importc: "QSctpSocket_virtualbase_atEnd".}
proc fcQSctpSocket_virtualbase_reset(self: pointer, ): bool {.importc: "QSctpSocket_virtualbase_reset".}
proc fcQSctpSocket_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QSctpSocket_virtualbase_canReadLine".}
proc fcQSctpSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSctpSocket_virtualbase_event".}
proc fcQSctpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSctpSocket_virtualbase_eventFilter".}
proc fcQSctpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSctpSocket_virtualbase_timerEvent".}
proc fcQSctpSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSctpSocket_virtualbase_childEvent".}
proc fcQSctpSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSctpSocket_virtualbase_customEvent".}
proc fcQSctpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSctpSocket_virtualbase_connectNotify".}
proc fcQSctpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSctpSocket_virtualbase_disconnectNotify".}
proc fcQSctpSocket_protectedbase_setSocketState(self: pointer, state: cint): void {.importc: "QSctpSocket_protectedbase_setSocketState".}
proc fcQSctpSocket_protectedbase_setSocketError(self: pointer, socketError: cint): void {.importc: "QSctpSocket_protectedbase_setSocketError".}
proc fcQSctpSocket_protectedbase_setLocalPort(self: pointer, port: cushort): void {.importc: "QSctpSocket_protectedbase_setLocalPort".}
proc fcQSctpSocket_protectedbase_setLocalAddress(self: pointer, address: pointer): void {.importc: "QSctpSocket_protectedbase_setLocalAddress".}
proc fcQSctpSocket_protectedbase_setPeerPort(self: pointer, port: cushort): void {.importc: "QSctpSocket_protectedbase_setPeerPort".}
proc fcQSctpSocket_protectedbase_setPeerAddress(self: pointer, address: pointer): void {.importc: "QSctpSocket_protectedbase_setPeerAddress".}
proc fcQSctpSocket_protectedbase_setPeerName(self: pointer, name: struct_miqt_string): void {.importc: "QSctpSocket_protectedbase_setPeerName".}
proc fcQSctpSocket_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QSctpSocket_protectedbase_setOpenMode".}
proc fcQSctpSocket_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QSctpSocket_protectedbase_setErrorString".}
proc fcQSctpSocket_protectedbase_sender(self: pointer, ): pointer {.importc: "QSctpSocket_protectedbase_sender".}
proc fcQSctpSocket_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSctpSocket_protectedbase_senderSignalIndex".}
proc fcQSctpSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSctpSocket_protectedbase_receivers".}
proc fcQSctpSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSctpSocket_protectedbase_isSignalConnected".}
proc fcQSctpSocket_new(vtbl: pointer, ): ptr cQSctpSocket {.importc: "QSctpSocket_new".}
proc fcQSctpSocket_new2(vtbl: pointer, parent: pointer): ptr cQSctpSocket {.importc: "QSctpSocket_new2".}
proc fcQSctpSocket_staticMetaObject(): pointer {.importc: "QSctpSocket_staticMetaObject".}
proc fcQSctpSocket_delete(self: pointer) {.importc: "QSctpSocket_delete".}

proc metaObject*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_metaObject(self.h))

proc metacast*(self: gen_qsctpsocket_types.QSctpSocket, param1: cstring): pointer =
  fcQSctpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qsctpsocket_types.QSctpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring): string =
  let v_ms = fcQSctpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc close*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_close(self.h)

proc disconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_disconnectFromHost(self.h)

proc setMaximumChannelCount*(self: gen_qsctpsocket_types.QSctpSocket, count: cint): void =
  fcQSctpSocket_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: gen_qsctpsocket_types.QSctpSocket, ): cint =
  fcQSctpSocket_maximumChannelCount(self.h)

proc isInDatagramMode*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fcQSctpSocket_isInDatagramMode(self.h)

proc readDatagram*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQSctpSocket_readDatagram(self.h))

proc writeDatagram*(self: gen_qsctpsocket_types.QSctpSocket, datagram: gen_qnetworkdatagram_types.QNetworkDatagram): bool =
  fcQSctpSocket_writeDatagram(self.h, datagram.h)

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQSctpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSctpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSctpSocketmetaObjectProc* = proc(self: QSctpSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSctpSocketmetacastProc* = proc(self: QSctpSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QSctpSocketmetacallProc* = proc(self: QSctpSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSctpSocketcloseProc* = proc(self: QSctpSocket): void {.raises: [], gcsafe.}
type QSctpSocketdisconnectFromHostProc* = proc(self: QSctpSocket): void {.raises: [], gcsafe.}
type QSctpSocketreadDataProc* = proc(self: QSctpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QSctpSocketreadLineDataProc* = proc(self: QSctpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QSctpSocketresumeProc* = proc(self: QSctpSocket): void {.raises: [], gcsafe.}
type QSctpSocketbindXProc* = proc(self: QSctpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.raises: [], gcsafe.}
type QSctpSocketconnectToHostProc* = proc(self: QSctpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QSctpSocketbytesAvailableProc* = proc(self: QSctpSocket): clonglong {.raises: [], gcsafe.}
type QSctpSocketbytesToWriteProc* = proc(self: QSctpSocket): clonglong {.raises: [], gcsafe.}
type QSctpSocketsetReadBufferSizeProc* = proc(self: QSctpSocket, size: clonglong): void {.raises: [], gcsafe.}
type QSctpSocketsocketDescriptorProc* = proc(self: QSctpSocket): uint {.raises: [], gcsafe.}
type QSctpSocketsetSocketDescriptorProc* = proc(self: QSctpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QSctpSocketsetSocketOptionProc* = proc(self: QSctpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QSctpSocketsocketOptionProc* = proc(self: QSctpSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSctpSocketisSequentialProc* = proc(self: QSctpSocket): bool {.raises: [], gcsafe.}
type QSctpSocketwaitForConnectedProc* = proc(self: QSctpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSctpSocketwaitForReadyReadProc* = proc(self: QSctpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSctpSocketwaitForBytesWrittenProc* = proc(self: QSctpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSctpSocketwaitForDisconnectedProc* = proc(self: QSctpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QSctpSocketskipDataProc* = proc(self: QSctpSocket, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QSctpSocketwriteDataProc* = proc(self: QSctpSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QSctpSocketopenProc* = proc(self: QSctpSocket, mode: cint): bool {.raises: [], gcsafe.}
type QSctpSocketposProc* = proc(self: QSctpSocket): clonglong {.raises: [], gcsafe.}
type QSctpSocketsizeProc* = proc(self: QSctpSocket): clonglong {.raises: [], gcsafe.}
type QSctpSocketseekProc* = proc(self: QSctpSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QSctpSocketatEndProc* = proc(self: QSctpSocket): bool {.raises: [], gcsafe.}
type QSctpSocketresetProc* = proc(self: QSctpSocket): bool {.raises: [], gcsafe.}
type QSctpSocketcanReadLineProc* = proc(self: QSctpSocket): bool {.raises: [], gcsafe.}
type QSctpSocketeventProc* = proc(self: QSctpSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSctpSocketeventFilterProc* = proc(self: QSctpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSctpSockettimerEventProc* = proc(self: QSctpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSctpSocketchildEventProc* = proc(self: QSctpSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSctpSocketcustomEventProc* = proc(self: QSctpSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSctpSocketconnectNotifyProc* = proc(self: QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSctpSocketdisconnectNotifyProc* = proc(self: QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSctpSocketVTable* = object
  vtbl: cQSctpSocketVTable
  metaObject*: QSctpSocketmetaObjectProc
  metacast*: QSctpSocketmetacastProc
  metacall*: QSctpSocketmetacallProc
  close*: QSctpSocketcloseProc
  disconnectFromHost*: QSctpSocketdisconnectFromHostProc
  readData*: QSctpSocketreadDataProc
  readLineData*: QSctpSocketreadLineDataProc
  resume*: QSctpSocketresumeProc
  bindX*: QSctpSocketbindXProc
  connectToHost*: QSctpSocketconnectToHostProc
  bytesAvailable*: QSctpSocketbytesAvailableProc
  bytesToWrite*: QSctpSocketbytesToWriteProc
  setReadBufferSize*: QSctpSocketsetReadBufferSizeProc
  socketDescriptor*: QSctpSocketsocketDescriptorProc
  setSocketDescriptor*: QSctpSocketsetSocketDescriptorProc
  setSocketOption*: QSctpSocketsetSocketOptionProc
  socketOption*: QSctpSocketsocketOptionProc
  isSequential*: QSctpSocketisSequentialProc
  waitForConnected*: QSctpSocketwaitForConnectedProc
  waitForReadyRead*: QSctpSocketwaitForReadyReadProc
  waitForBytesWritten*: QSctpSocketwaitForBytesWrittenProc
  waitForDisconnected*: QSctpSocketwaitForDisconnectedProc
  skipData*: QSctpSocketskipDataProc
  writeData*: QSctpSocketwriteDataProc
  open*: QSctpSocketopenProc
  pos*: QSctpSocketposProc
  size*: QSctpSocketsizeProc
  seek*: QSctpSocketseekProc
  atEnd*: QSctpSocketatEndProc
  reset*: QSctpSocketresetProc
  canReadLine*: QSctpSocketcanReadLineProc
  event*: QSctpSocketeventProc
  eventFilter*: QSctpSocketeventFilterProc
  timerEvent*: QSctpSockettimerEventProc
  childEvent*: QSctpSocketchildEventProc
  customEvent*: QSctpSocketcustomEventProc
  connectNotify*: QSctpSocketconnectNotifyProc
  disconnectNotify*: QSctpSocketdisconnectNotifyProc
proc QSctpSocketmetaObject*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSctpSocket_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSctpSocketmetacast*(self: gen_qsctpsocket_types.QSctpSocket, param1: cstring): pointer =
  fcQSctpSocket_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSctpSocket_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSctpSocketmetacall*(self: gen_qsctpsocket_types.QSctpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSctpSocket_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpSocketclose*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_virtualbase_close(self.h)

proc miqt_exec_callback_cQSctpSocket_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  vtbl[].close(self)

proc QSctpSocketdisconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_virtualbase_disconnectFromHost(self.h)

proc miqt_exec_callback_cQSctpSocket_disconnectFromHost(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QSctpSocketreadData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQSctpSocket_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQSctpSocket_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QSctpSocketreadLineData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQSctpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQSctpSocket_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QSctpSocketresume*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_virtualbase_resume(self.h)

proc miqt_exec_callback_cQSctpSocket_resume(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  vtbl[].resume(self)

proc QSctpSocketbindX*(self: gen_qsctpsocket_types.QSctpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQSctpSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc miqt_exec_callback_cQSctpSocket_bindX(vtbl: pointer, self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpSocketconnectToHost*(self: gen_qsctpsocket_types.QSctpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQSctpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc miqt_exec_callback_cQSctpSocket_connectToHost(vtbl: pointer, self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QSctpSocketbytesAvailable*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fcQSctpSocket_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQSctpSocket_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QSctpSocketbytesToWrite*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fcQSctpSocket_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQSctpSocket_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QSctpSocketsetReadBufferSize*(self: gen_qsctpsocket_types.QSctpSocket, size: clonglong): void =
  fcQSctpSocket_virtualbase_setReadBufferSize(self.h, size)

proc miqt_exec_callback_cQSctpSocket_setReadBufferSize(vtbl: pointer, self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QSctpSocketsocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, ): uint =
  fcQSctpSocket_virtualbase_socketDescriptor(self.h)

proc miqt_exec_callback_cQSctpSocket_socketDescriptor(vtbl: pointer, self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QSctpSocketsetSocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQSctpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc miqt_exec_callback_cQSctpSocket_setSocketDescriptor(vtbl: pointer, self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpSocketsetSocketOption*(self: gen_qsctpsocket_types.QSctpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQSctpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc miqt_exec_callback_cQSctpSocket_setSocketOption(vtbl: pointer, self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QSctpSocketsocketOption*(self: gen_qsctpsocket_types.QSctpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSctpSocket_virtualbase_socketOption(self.h, cint(option)))

proc miqt_exec_callback_cQSctpSocket_socketOption(vtbl: pointer, self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.h

proc QSctpSocketisSequential*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fcQSctpSocket_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQSctpSocket_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QSctpSocketwaitForConnected*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForConnected(self.h, msecs)

proc miqt_exec_callback_cQSctpSocket_waitForConnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QSctpSocketwaitForReadyRead*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQSctpSocket_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QSctpSocketwaitForBytesWritten*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQSctpSocket_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QSctpSocketwaitForDisconnected*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc miqt_exec_callback_cQSctpSocket_waitForDisconnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QSctpSocketskipData*(self: gen_qsctpsocket_types.QSctpSocket, maxSize: clonglong): clonglong =
  fcQSctpSocket_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQSctpSocket_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QSctpSocketwriteData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, len: clonglong): clonglong =
  fcQSctpSocket_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQSctpSocket_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QSctpSocketopen*(self: gen_qsctpsocket_types.QSctpSocket, mode: cint): bool =
  fcQSctpSocket_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQSctpSocket_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QSctpSocketpos*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fcQSctpSocket_virtualbase_pos(self.h)

proc miqt_exec_callback_cQSctpSocket_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QSctpSocketsize*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fcQSctpSocket_virtualbase_size(self.h)

proc miqt_exec_callback_cQSctpSocket_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QSctpSocketseek*(self: gen_qsctpsocket_types.QSctpSocket, pos: clonglong): bool =
  fcQSctpSocket_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQSctpSocket_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QSctpSocketatEnd*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fcQSctpSocket_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQSctpSocket_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QSctpSocketreset*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fcQSctpSocket_virtualbase_reset(self.h)

proc miqt_exec_callback_cQSctpSocket_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QSctpSocketcanReadLine*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fcQSctpSocket_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQSctpSocket_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QSctpSocketevent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQSctpSocket_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSctpSocket_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSctpSocketeventFilter*(self: gen_qsctpsocket_types.QSctpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSctpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSctpSocket_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSctpSockettimerEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSctpSocket_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSctpSocket_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSctpSocketchildEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSctpSocket_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSctpSocket_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSctpSocketcustomEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQSctpSocket_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSctpSocket_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSctpSocketconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSctpSocket_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSctpSocket_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSctpSocketdisconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSctpSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSctpSocket_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](vtbl)
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setSocketState*(self: gen_qsctpsocket_types.QSctpSocket, state: cint): void =
  fcQSctpSocket_protectedbase_setSocketState(self.h, cint(state))

proc setSocketError*(self: gen_qsctpsocket_types.QSctpSocket, socketError: cint): void =
  fcQSctpSocket_protectedbase_setSocketError(self.h, cint(socketError))

proc setLocalPort*(self: gen_qsctpsocket_types.QSctpSocket, port: cushort): void =
  fcQSctpSocket_protectedbase_setLocalPort(self.h, port)

proc setLocalAddress*(self: gen_qsctpsocket_types.QSctpSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQSctpSocket_protectedbase_setLocalAddress(self.h, address.h)

proc setPeerPort*(self: gen_qsctpsocket_types.QSctpSocket, port: cushort): void =
  fcQSctpSocket_protectedbase_setPeerPort(self.h, port)

proc setPeerAddress*(self: gen_qsctpsocket_types.QSctpSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQSctpSocket_protectedbase_setPeerAddress(self.h, address.h)

proc setPeerName*(self: gen_qsctpsocket_types.QSctpSocket, name: string): void =
  fcQSctpSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qsctpsocket_types.QSctpSocket, openMode: cint): void =
  fcQSctpSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qsctpsocket_types.QSctpSocket, errorString: string): void =
  fcQSctpSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSctpSocket_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsctpsocket_types.QSctpSocket, ): cint =
  fcQSctpSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsctpsocket_types.QSctpSocket, signal: cstring): cint =
  fcQSctpSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSctpSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsctpsocket_types.QSctpSocket,
    vtbl: ref QSctpSocketVTable = nil): gen_qsctpsocket_types.QSctpSocket =
  let vtbl = if vtbl == nil: new QSctpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSctpSocketVTable, _: ptr cQSctpSocket) {.cdecl.} =
    let vtbl = cast[ref QSctpSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSctpSocket_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSctpSocket_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSctpSocket_metacall
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQSctpSocket_close
  if not isNil(vtbl.disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQSctpSocket_disconnectFromHost
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQSctpSocket_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQSctpSocket_readLineData
  if not isNil(vtbl.resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQSctpSocket_resume
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQSctpSocket_bindX
  if not isNil(vtbl.connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQSctpSocket_connectToHost
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQSctpSocket_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQSctpSocket_bytesToWrite
  if not isNil(vtbl.setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQSctpSocket_setReadBufferSize
  if not isNil(vtbl.socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQSctpSocket_socketDescriptor
  if not isNil(vtbl.setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQSctpSocket_setSocketDescriptor
  if not isNil(vtbl.setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQSctpSocket_setSocketOption
  if not isNil(vtbl.socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQSctpSocket_socketOption
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQSctpSocket_isSequential
  if not isNil(vtbl.waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQSctpSocket_waitForConnected
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQSctpSocket_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQSctpSocket_waitForBytesWritten
  if not isNil(vtbl.waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQSctpSocket_waitForDisconnected
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQSctpSocket_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQSctpSocket_writeData
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQSctpSocket_open
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQSctpSocket_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQSctpSocket_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQSctpSocket_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQSctpSocket_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQSctpSocket_reset
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQSctpSocket_canReadLine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSctpSocket_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSctpSocket_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSctpSocket_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSctpSocket_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSctpSocket_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSctpSocket_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSctpSocket_disconnectNotify
  gen_qsctpsocket_types.QSctpSocket(h: fcQSctpSocket_new(addr(vtbl[]), ))

proc create*(T: type gen_qsctpsocket_types.QSctpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSctpSocketVTable = nil): gen_qsctpsocket_types.QSctpSocket =
  let vtbl = if vtbl == nil: new QSctpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSctpSocketVTable, _: ptr cQSctpSocket) {.cdecl.} =
    let vtbl = cast[ref QSctpSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSctpSocket_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSctpSocket_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSctpSocket_metacall
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQSctpSocket_close
  if not isNil(vtbl.disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQSctpSocket_disconnectFromHost
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQSctpSocket_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQSctpSocket_readLineData
  if not isNil(vtbl.resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQSctpSocket_resume
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQSctpSocket_bindX
  if not isNil(vtbl.connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQSctpSocket_connectToHost
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQSctpSocket_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQSctpSocket_bytesToWrite
  if not isNil(vtbl.setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQSctpSocket_setReadBufferSize
  if not isNil(vtbl.socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQSctpSocket_socketDescriptor
  if not isNil(vtbl.setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQSctpSocket_setSocketDescriptor
  if not isNil(vtbl.setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQSctpSocket_setSocketOption
  if not isNil(vtbl.socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQSctpSocket_socketOption
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQSctpSocket_isSequential
  if not isNil(vtbl.waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQSctpSocket_waitForConnected
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQSctpSocket_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQSctpSocket_waitForBytesWritten
  if not isNil(vtbl.waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQSctpSocket_waitForDisconnected
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQSctpSocket_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQSctpSocket_writeData
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQSctpSocket_open
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQSctpSocket_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQSctpSocket_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQSctpSocket_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQSctpSocket_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQSctpSocket_reset
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQSctpSocket_canReadLine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSctpSocket_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSctpSocket_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSctpSocket_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSctpSocket_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSctpSocket_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSctpSocket_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSctpSocket_disconnectNotify
  gen_qsctpsocket_types.QSctpSocket(h: fcQSctpSocket_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsctpsocket_types.QSctpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_staticMetaObject())
proc delete*(self: gen_qsctpsocket_types.QSctpSocket) =
  fcQSctpSocket_delete(self.h)
