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


{.compile("gen_qsctpsocket.cpp", QtNetworkCFlags).}


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

proc fcQSctpSocket_metaObject(self: pointer): pointer {.importc: "QSctpSocket_metaObject".}
proc fcQSctpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpSocket_metacast".}
proc fcQSctpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpSocket_metacall".}
proc fcQSctpSocket_tr(s: cstring): struct_miqt_string {.importc: "QSctpSocket_tr".}
proc fcQSctpSocket_close(self: pointer): void {.importc: "QSctpSocket_close".}
proc fcQSctpSocket_disconnectFromHost(self: pointer): void {.importc: "QSctpSocket_disconnectFromHost".}
proc fcQSctpSocket_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpSocket_setMaximumChannelCount".}
proc fcQSctpSocket_maximumChannelCount(self: pointer): cint {.importc: "QSctpSocket_maximumChannelCount".}
proc fcQSctpSocket_isInDatagramMode(self: pointer): bool {.importc: "QSctpSocket_isInDatagramMode".}
proc fcQSctpSocket_readDatagram(self: pointer): pointer {.importc: "QSctpSocket_readDatagram".}
proc fcQSctpSocket_writeDatagram(self: pointer, datagram: pointer): bool {.importc: "QSctpSocket_writeDatagram".}
proc fcQSctpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpSocket_tr2".}
proc fcQSctpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpSocket_tr3".}
proc fcQSctpSocket_vtbl(self: pointer): pointer {.importc: "QSctpSocket_vtbl".}
proc fcQSctpSocket_vdata(self: pointer): pointer {.importc: "QSctpSocket_vdata".}
type cQSctpSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectFromHost*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  resume*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  setReadBufferSize*: proc(self: pointer, size: clonglong): void {.cdecl, raises: [], gcsafe.}
  socketDescriptor*: proc(self: pointer): uint {.cdecl, raises: [], gcsafe.}
  setSocketDescriptor*: proc(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  setSocketOption*: proc(self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  socketOption*: proc(self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForConnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForDisconnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSctpSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QSctpSocket_virtualbase_metaObject".}
proc fcQSctpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpSocket_virtualbase_metacast".}
proc fcQSctpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpSocket_virtualbase_metacall".}
proc fcQSctpSocket_virtualbase_close(self: pointer): void {.importc: "QSctpSocket_virtualbase_close".}
proc fcQSctpSocket_virtualbase_disconnectFromHost(self: pointer): void {.importc: "QSctpSocket_virtualbase_disconnectFromHost".}
proc fcQSctpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_readData".}
proc fcQSctpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_readLineData".}
proc fcQSctpSocket_virtualbase_resume(self: pointer): void {.importc: "QSctpSocket_virtualbase_resume".}
proc fcQSctpSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QSctpSocket_virtualbase_bind".}
proc fcQSctpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QSctpSocket_virtualbase_connectToHost".}
proc fcQSctpSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QSctpSocket_virtualbase_bytesAvailable".}
proc fcQSctpSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QSctpSocket_virtualbase_bytesToWrite".}
proc fcQSctpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QSctpSocket_virtualbase_setReadBufferSize".}
proc fcQSctpSocket_virtualbase_socketDescriptor(self: pointer): uint {.importc: "QSctpSocket_virtualbase_socketDescriptor".}
proc fcQSctpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QSctpSocket_virtualbase_setSocketDescriptor".}
proc fcQSctpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QSctpSocket_virtualbase_setSocketOption".}
proc fcQSctpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QSctpSocket_virtualbase_socketOption".}
proc fcQSctpSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QSctpSocket_virtualbase_isSequential".}
proc fcQSctpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForConnected".}
proc fcQSctpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForReadyRead".}
proc fcQSctpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForBytesWritten".}
proc fcQSctpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QSctpSocket_virtualbase_waitForDisconnected".}
proc fcQSctpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_skipData".}
proc fcQSctpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QSctpSocket_virtualbase_writeData".}
proc fcQSctpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QSctpSocket_virtualbase_open".}
proc fcQSctpSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QSctpSocket_virtualbase_pos".}
proc fcQSctpSocket_virtualbase_size(self: pointer): clonglong {.importc: "QSctpSocket_virtualbase_size".}
proc fcQSctpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QSctpSocket_virtualbase_seek".}
proc fcQSctpSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QSctpSocket_virtualbase_atEnd".}
proc fcQSctpSocket_virtualbase_reset(self: pointer): bool {.importc: "QSctpSocket_virtualbase_reset".}
proc fcQSctpSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QSctpSocket_virtualbase_canReadLine".}
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
proc fcQSctpSocket_protectedbase_sender(self: pointer): pointer {.importc: "QSctpSocket_protectedbase_sender".}
proc fcQSctpSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSctpSocket_protectedbase_senderSignalIndex".}
proc fcQSctpSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSctpSocket_protectedbase_receivers".}
proc fcQSctpSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSctpSocket_protectedbase_isSignalConnected".}
proc fcQSctpSocket_new(vtbl, vdata: pointer): ptr cQSctpSocket {.importc: "QSctpSocket_new".}
proc fcQSctpSocket_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSctpSocket {.importc: "QSctpSocket_new2".}
proc fcQSctpSocket_staticMetaObject(): pointer {.importc: "QSctpSocket_staticMetaObject".}

proc metaObject*(self: gen_qsctpsocket_types.QSctpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsctpsocket_types.QSctpSocket, param1: cstring): pointer =
  fcQSctpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qsctpsocket_types.QSctpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring): string =
  let v_ms = fcQSctpSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc close*(self: gen_qsctpsocket_types.QSctpSocket): void =
  fcQSctpSocket_close(self.h)

proc disconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket): void =
  fcQSctpSocket_disconnectFromHost(self.h)

proc setMaximumChannelCount*(self: gen_qsctpsocket_types.QSctpSocket, count: cint): void =
  fcQSctpSocket_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: gen_qsctpsocket_types.QSctpSocket): cint =
  fcQSctpSocket_maximumChannelCount(self.h)

proc isInDatagramMode*(self: gen_qsctpsocket_types.QSctpSocket): bool =
  fcQSctpSocket_isInDatagramMode(self.h)

proc readDatagram*(self: gen_qsctpsocket_types.QSctpSocket): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQSctpSocket_readDatagram(self.h), owned: true)

proc writeDatagram*(self: gen_qsctpsocket_types.QSctpSocket, datagram: gen_qnetworkdatagram_types.QNetworkDatagram): bool =
  fcQSctpSocket_writeDatagram(self.h, datagram.h)

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQSctpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSctpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QSctpSocketconnectToHostProc* = proc(self: QSctpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
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
type QSctpSocketVTable* {.inheritable, pure.} = object
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
proc QSctpSocketmetaObject*(self: gen_qsctpsocket_types.QSctpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_virtualbase_metaObject(self.h), owned: false)

proc cQSctpSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSctpSocketmetacast*(self: gen_qsctpsocket_types.QSctpSocket, param1: cstring): pointer =
  fcQSctpSocket_virtualbase_metacast(self.h, param1)

proc cQSctpSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSctpSocketmetacall*(self: gen_qsctpsocket_types.QSctpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSctpSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpSocketclose*(self: gen_qsctpsocket_types.QSctpSocket): void =
  fcQSctpSocket_virtualbase_close(self.h)

proc cQSctpSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  vtbl[].close(self)

proc QSctpSocketdisconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket): void =
  fcQSctpSocket_virtualbase_disconnectFromHost(self.h)

proc cQSctpSocket_vtable_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QSctpSocketreadData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQSctpSocket_virtualbase_readData(self.h, data, maxlen)

proc cQSctpSocket_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QSctpSocketreadLineData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQSctpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc cQSctpSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QSctpSocketresume*(self: gen_qsctpsocket_types.QSctpSocket): void =
  fcQSctpSocket_virtualbase_resume(self.h)

proc cQSctpSocket_vtable_callback_resume(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  vtbl[].resume(self)

proc QSctpSocketbindX*(self: gen_qsctpsocket_types.QSctpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQSctpSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc cQSctpSocket_vtable_callback_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpSocketconnectToHost*(self: gen_qsctpsocket_types.QSctpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQSctpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc cQSctpSocket_vtable_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QSctpSocketbytesAvailable*(self: gen_qsctpsocket_types.QSctpSocket): clonglong =
  fcQSctpSocket_virtualbase_bytesAvailable(self.h)

proc cQSctpSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QSctpSocketbytesToWrite*(self: gen_qsctpsocket_types.QSctpSocket): clonglong =
  fcQSctpSocket_virtualbase_bytesToWrite(self.h)

proc cQSctpSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QSctpSocketsetReadBufferSize*(self: gen_qsctpsocket_types.QSctpSocket, size: clonglong): void =
  fcQSctpSocket_virtualbase_setReadBufferSize(self.h, size)

proc cQSctpSocket_vtable_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QSctpSocketsocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket): uint =
  fcQSctpSocket_virtualbase_socketDescriptor(self.h)

proc cQSctpSocket_vtable_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QSctpSocketsetSocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQSctpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc cQSctpSocket_vtable_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSctpSocketsetSocketOption*(self: gen_qsctpsocket_types.QSctpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQSctpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc cQSctpSocket_vtable_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QSctpSocketsocketOption*(self: gen_qsctpsocket_types.QSctpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSctpSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc cQSctpSocket_vtable_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSctpSocketisSequential*(self: gen_qsctpsocket_types.QSctpSocket): bool =
  fcQSctpSocket_virtualbase_isSequential(self.h)

proc cQSctpSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QSctpSocketwaitForConnected*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForConnected(self.h, msecs)

proc cQSctpSocket_vtable_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QSctpSocketwaitForReadyRead*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc cQSctpSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QSctpSocketwaitForBytesWritten*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQSctpSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QSctpSocketwaitForDisconnected*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fcQSctpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc cQSctpSocket_vtable_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QSctpSocketskipData*(self: gen_qsctpsocket_types.QSctpSocket, maxSize: clonglong): clonglong =
  fcQSctpSocket_virtualbase_skipData(self.h, maxSize)

proc cQSctpSocket_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QSctpSocketwriteData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, len: clonglong): clonglong =
  fcQSctpSocket_virtualbase_writeData(self.h, data, len)

proc cQSctpSocket_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QSctpSocketopen*(self: gen_qsctpsocket_types.QSctpSocket, mode: cint): bool =
  fcQSctpSocket_virtualbase_open(self.h, cint(mode))

proc cQSctpSocket_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QSctpSocketpos*(self: gen_qsctpsocket_types.QSctpSocket): clonglong =
  fcQSctpSocket_virtualbase_pos(self.h)

proc cQSctpSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QSctpSocketsize*(self: gen_qsctpsocket_types.QSctpSocket): clonglong =
  fcQSctpSocket_virtualbase_size(self.h)

proc cQSctpSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QSctpSocketseek*(self: gen_qsctpsocket_types.QSctpSocket, pos: clonglong): bool =
  fcQSctpSocket_virtualbase_seek(self.h, pos)

proc cQSctpSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QSctpSocketatEnd*(self: gen_qsctpsocket_types.QSctpSocket): bool =
  fcQSctpSocket_virtualbase_atEnd(self.h)

proc cQSctpSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QSctpSocketreset*(self: gen_qsctpsocket_types.QSctpSocket): bool =
  fcQSctpSocket_virtualbase_reset(self.h)

proc cQSctpSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QSctpSocketcanReadLine*(self: gen_qsctpsocket_types.QSctpSocket): bool =
  fcQSctpSocket_virtualbase_canReadLine(self.h)

proc cQSctpSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QSctpSocketevent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQSctpSocket_virtualbase_event(self.h, event.h)

proc cQSctpSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSctpSocketeventFilter*(self: gen_qsctpsocket_types.QSctpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSctpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSctpSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSctpSockettimerEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSctpSocket_virtualbase_timerEvent(self.h, event.h)

proc cQSctpSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSctpSocketchildEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSctpSocket_virtualbase_childEvent(self.h, event.h)

proc cQSctpSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSctpSocketcustomEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQSctpSocket_virtualbase_customEvent(self.h, event.h)

proc cQSctpSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSctpSocketconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSctpSocket_virtualbase_connectNotify(self.h, signal.h)

proc cQSctpSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSctpSocketdisconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSctpSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSctpSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSctpSocketVTable](fcQSctpSocket_vdata(self))
  let self = QSctpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSctpSocket* {.inheritable.} = ref object of QSctpSocket
  vtbl*: cQSctpSocketVTable
method metaObject*(self: VirtualQSctpSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSctpSocketmetaObject(self[])
proc cQSctpSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSctpSocket, param1: cstring): pointer {.base.} =
  QSctpSocketmetacast(self[], param1)
proc cQSctpSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSctpSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSctpSocketmetacall(self[], param1, param2, param3)
proc cQSctpSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method close*(self: VirtualQSctpSocket): void {.base.} =
  QSctpSocketclose(self[])
proc cQSctpSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  inst.close()

method disconnectFromHost*(self: VirtualQSctpSocket): void {.base.} =
  QSctpSocketdisconnectFromHost(self[])
proc cQSctpSocket_method_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  inst.disconnectFromHost()

method readData*(self: VirtualQSctpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QSctpSocketreadData(self[], data, maxlen)
proc cQSctpSocket_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQSctpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QSctpSocketreadLineData(self[], data, maxlen)
proc cQSctpSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method resume*(self: VirtualQSctpSocket): void {.base.} =
  QSctpSocketresume(self[])
proc cQSctpSocket_method_callback_resume(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  inst.resume()

method bindX*(self: VirtualQSctpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.base.} =
  QSctpSocketbindX(self[], address, port, mode)
proc cQSctpSocket_method_callback_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = inst.bindX(slotval1, slotval2, slotval3)
  virtualReturn

method connectToHost*(self: VirtualQSctpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.base.} =
  QSctpSocketconnectToHost(self[], hostName, port, mode, protocol)
proc cQSctpSocket_method_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  inst.connectToHost(slotval1, slotval2, slotval3, slotval4)

method bytesAvailable*(self: VirtualQSctpSocket): clonglong {.base.} =
  QSctpSocketbytesAvailable(self[])
proc cQSctpSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQSctpSocket): clonglong {.base.} =
  QSctpSocketbytesToWrite(self[])
proc cQSctpSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method setReadBufferSize*(self: VirtualQSctpSocket, size: clonglong): void {.base.} =
  QSctpSocketsetReadBufferSize(self[], size)
proc cQSctpSocket_method_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = size
  inst.setReadBufferSize(slotval1)

method socketDescriptor*(self: VirtualQSctpSocket): uint {.base.} =
  QSctpSocketsocketDescriptor(self[])
proc cQSctpSocket_method_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.socketDescriptor()
  virtualReturn

method setSocketDescriptor*(self: VirtualQSctpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QSctpSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
proc cQSctpSocket_method_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = inst.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

method setSocketOption*(self: VirtualQSctpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QSctpSocketsetSocketOption(self[], option, value)
proc cQSctpSocket_method_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setSocketOption(slotval1, slotval2)

method socketOption*(self: VirtualQSctpSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QSctpSocketsocketOption(self[], option)
proc cQSctpSocket_method_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method isSequential*(self: VirtualQSctpSocket): bool {.base.} =
  QSctpSocketisSequential(self[])
proc cQSctpSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method waitForConnected*(self: VirtualQSctpSocket, msecs: cint): bool {.base.} =
  QSctpSocketwaitForConnected(self[], msecs)
proc cQSctpSocket_method_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForConnected(slotval1)
  virtualReturn

method waitForReadyRead*(self: VirtualQSctpSocket, msecs: cint): bool {.base.} =
  QSctpSocketwaitForReadyRead(self[], msecs)
proc cQSctpSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQSctpSocket, msecs: cint): bool {.base.} =
  QSctpSocketwaitForBytesWritten(self[], msecs)
proc cQSctpSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method waitForDisconnected*(self: VirtualQSctpSocket, msecs: cint): bool {.base.} =
  QSctpSocketwaitForDisconnected(self[], msecs)
proc cQSctpSocket_method_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForDisconnected(slotval1)
  virtualReturn

method skipData*(self: VirtualQSctpSocket, maxSize: clonglong): clonglong {.base.} =
  QSctpSocketskipData(self[], maxSize)
proc cQSctpSocket_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

method writeData*(self: VirtualQSctpSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QSctpSocketwriteData(self[], data, len)
proc cQSctpSocket_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method open*(self: VirtualQSctpSocket, mode: cint): bool {.base.} =
  QSctpSocketopen(self[], mode)
proc cQSctpSocket_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method pos*(self: VirtualQSctpSocket): clonglong {.base.} =
  QSctpSocketpos(self[])
proc cQSctpSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQSctpSocket): clonglong {.base.} =
  QSctpSocketsize(self[])
proc cQSctpSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method seek*(self: VirtualQSctpSocket, pos: clonglong): bool {.base.} =
  QSctpSocketseek(self[], pos)
proc cQSctpSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method atEnd*(self: VirtualQSctpSocket): bool {.base.} =
  QSctpSocketatEnd(self[])
proc cQSctpSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method reset*(self: VirtualQSctpSocket): bool {.base.} =
  QSctpSocketreset(self[])
proc cQSctpSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method canReadLine*(self: VirtualQSctpSocket): bool {.base.} =
  QSctpSocketcanReadLine(self[])
proc cQSctpSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method event*(self: VirtualQSctpSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSctpSocketevent(self[], event)
proc cQSctpSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSctpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSctpSocketeventFilter(self[], watched, event)
proc cQSctpSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSctpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSctpSockettimerEvent(self[], event)
proc cQSctpSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSctpSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSctpSocketchildEvent(self[], event)
proc cQSctpSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSctpSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSctpSocketcustomEvent(self[], event)
proc cQSctpSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSctpSocketconnectNotify(self[], signal)
proc cQSctpSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSctpSocketdisconnectNotify(self[], signal)
proc cQSctpSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSctpSocket](fcQSctpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

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

proc setPeerName*(self: gen_qsctpsocket_types.QSctpSocket, name: openArray[char]): void =
  fcQSctpSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qsctpsocket_types.QSctpSocket, openMode: cint): void =
  fcQSctpSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qsctpsocket_types.QSctpSocket, errorString: openArray[char]): void =
  fcQSctpSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qsctpsocket_types.QSctpSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSctpSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsctpsocket_types.QSctpSocket): cint =
  fcQSctpSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsctpsocket_types.QSctpSocket, signal: cstring): cint =
  fcQSctpSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSctpSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsctpsocket_types.QSctpSocket,
    vtbl: ref QSctpSocketVTable = nil): gen_qsctpsocket_types.QSctpSocket =
  let vtbl = if vtbl == nil: new QSctpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSctpSocketVTable](fcQSctpSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSctpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSctpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSctpSocket_vtable_callback_metacall
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQSctpSocket_vtable_callback_close
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQSctpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSctpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSctpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQSctpSocket_vtable_callback_resume
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQSctpSocket_vtable_callback_bindX
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQSctpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSctpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSctpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQSctpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQSctpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQSctpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQSctpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQSctpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSctpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQSctpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSctpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSctpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQSctpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQSctpSocket_vtable_callback_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSctpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSctpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSctpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSctpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSctpSocket_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSctpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSctpSocket_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSctpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSctpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSctpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSctpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSctpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSctpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSctpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSctpSocket_vtable_callback_disconnectNotify
  gen_qsctpsocket_types.QSctpSocket(h: fcQSctpSocket_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsctpsocket_types.QSctpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSctpSocketVTable = nil): gen_qsctpsocket_types.QSctpSocket =
  let vtbl = if vtbl == nil: new QSctpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSctpSocketVTable](fcQSctpSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSctpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSctpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSctpSocket_vtable_callback_metacall
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQSctpSocket_vtable_callback_close
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQSctpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSctpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSctpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQSctpSocket_vtable_callback_resume
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQSctpSocket_vtable_callback_bindX
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQSctpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSctpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSctpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQSctpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQSctpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQSctpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQSctpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQSctpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSctpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQSctpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSctpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSctpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQSctpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQSctpSocket_vtable_callback_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSctpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSctpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSctpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSctpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSctpSocket_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSctpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSctpSocket_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSctpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSctpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSctpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSctpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSctpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSctpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSctpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSctpSocket_vtable_callback_disconnectNotify
  gen_qsctpsocket_types.QSctpSocket(h: fcQSctpSocket_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSctpSocket_mvtbl = cQSctpSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSctpSocket()[])](self.fcQSctpSocket_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSctpSocket_method_callback_metaObject,
  metacast: cQSctpSocket_method_callback_metacast,
  metacall: cQSctpSocket_method_callback_metacall,
  close: cQSctpSocket_method_callback_close,
  disconnectFromHost: cQSctpSocket_method_callback_disconnectFromHost,
  readData: cQSctpSocket_method_callback_readData,
  readLineData: cQSctpSocket_method_callback_readLineData,
  resume: cQSctpSocket_method_callback_resume,
  bindX: cQSctpSocket_method_callback_bindX,
  connectToHost: cQSctpSocket_method_callback_connectToHost,
  bytesAvailable: cQSctpSocket_method_callback_bytesAvailable,
  bytesToWrite: cQSctpSocket_method_callback_bytesToWrite,
  setReadBufferSize: cQSctpSocket_method_callback_setReadBufferSize,
  socketDescriptor: cQSctpSocket_method_callback_socketDescriptor,
  setSocketDescriptor: cQSctpSocket_method_callback_setSocketDescriptor,
  setSocketOption: cQSctpSocket_method_callback_setSocketOption,
  socketOption: cQSctpSocket_method_callback_socketOption,
  isSequential: cQSctpSocket_method_callback_isSequential,
  waitForConnected: cQSctpSocket_method_callback_waitForConnected,
  waitForReadyRead: cQSctpSocket_method_callback_waitForReadyRead,
  waitForBytesWritten: cQSctpSocket_method_callback_waitForBytesWritten,
  waitForDisconnected: cQSctpSocket_method_callback_waitForDisconnected,
  skipData: cQSctpSocket_method_callback_skipData,
  writeData: cQSctpSocket_method_callback_writeData,
  open: cQSctpSocket_method_callback_open,
  pos: cQSctpSocket_method_callback_pos,
  size: cQSctpSocket_method_callback_size,
  seek: cQSctpSocket_method_callback_seek,
  atEnd: cQSctpSocket_method_callback_atEnd,
  reset: cQSctpSocket_method_callback_reset,
  canReadLine: cQSctpSocket_method_callback_canReadLine,
  event: cQSctpSocket_method_callback_event,
  eventFilter: cQSctpSocket_method_callback_eventFilter,
  timerEvent: cQSctpSocket_method_callback_timerEvent,
  childEvent: cQSctpSocket_method_callback_childEvent,
  customEvent: cQSctpSocket_method_callback_customEvent,
  connectNotify: cQSctpSocket_method_callback_connectNotify,
  disconnectNotify: cQSctpSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsctpsocket_types.QSctpSocket,
    inst: VirtualQSctpSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSctpSocket_new(addr(cQSctpSocket_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsctpsocket_types.QSctpSocket,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSctpSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSctpSocket_new2(addr(cQSctpSocket_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsctpsocket_types.QSctpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_staticMetaObject())
