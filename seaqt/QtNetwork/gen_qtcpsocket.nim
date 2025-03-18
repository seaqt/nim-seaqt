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


{.compile("gen_qtcpsocket.cpp", QtNetworkCFlags).}


import ./gen_qtcpsocket_types
export gen_qtcpsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qabstractsocket,
  ./gen_qhostaddress_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qabstractsocket,
  gen_qhostaddress_types

type cQTcpSocket*{.exportc: "QTcpSocket", incompleteStruct.} = object

proc fcQTcpSocket_metaObject(self: pointer): pointer {.importc: "QTcpSocket_metaObject".}
proc fcQTcpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_metacast".}
proc fcQTcpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_metacall".}
proc fcQTcpSocket_tr(s: cstring): struct_miqt_string {.importc: "QTcpSocket_tr".}
proc fcQTcpSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QTcpSocket_trUtf8".}
proc fcQTcpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_tr2".}
proc fcQTcpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_tr3".}
proc fcQTcpSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_trUtf82".}
proc fcQTcpSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_trUtf83".}
proc fcQTcpSocket_vtbl(self: pointer): pointer {.importc: "QTcpSocket_vtbl".}
proc fcQTcpSocket_vdata(self: pointer): pointer {.importc: "QTcpSocket_vdata".}

type cQTcpSocketVTable {.pure.} = object
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
proc fcQTcpSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QTcpSocket_virtualbase_metaObject".}
proc fcQTcpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_virtualbase_metacast".}
proc fcQTcpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_virtualbase_metacall".}
proc fcQTcpSocket_virtualbase_resume(self: pointer): void {.importc: "QTcpSocket_virtualbase_resume".}
proc fcQTcpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QTcpSocket_virtualbase_connectToHost".}
proc fcQTcpSocket_virtualbase_disconnectFromHost(self: pointer): void {.importc: "QTcpSocket_virtualbase_disconnectFromHost".}
proc fcQTcpSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_bytesAvailable".}
proc fcQTcpSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_bytesToWrite".}
proc fcQTcpSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QTcpSocket_virtualbase_canReadLine".}
proc fcQTcpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QTcpSocket_virtualbase_setReadBufferSize".}
proc fcQTcpSocket_virtualbase_socketDescriptor(self: pointer): uint {.importc: "QTcpSocket_virtualbase_socketDescriptor".}
proc fcQTcpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QTcpSocket_virtualbase_setSocketDescriptor".}
proc fcQTcpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QTcpSocket_virtualbase_setSocketOption".}
proc fcQTcpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QTcpSocket_virtualbase_socketOption".}
proc fcQTcpSocket_virtualbase_close(self: pointer): void {.importc: "QTcpSocket_virtualbase_close".}
proc fcQTcpSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QTcpSocket_virtualbase_isSequential".}
proc fcQTcpSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QTcpSocket_virtualbase_atEnd".}
proc fcQTcpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForConnected".}
proc fcQTcpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForReadyRead".}
proc fcQTcpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForBytesWritten".}
proc fcQTcpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForDisconnected".}
proc fcQTcpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_readData".}
proc fcQTcpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_readLineData".}
proc fcQTcpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_writeData".}
proc fcQTcpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QTcpSocket_virtualbase_open".}
proc fcQTcpSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_pos".}
proc fcQTcpSocket_virtualbase_size(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_size".}
proc fcQTcpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QTcpSocket_virtualbase_seek".}
proc fcQTcpSocket_virtualbase_reset(self: pointer): bool {.importc: "QTcpSocket_virtualbase_reset".}
proc fcQTcpSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTcpSocket_virtualbase_event".}
proc fcQTcpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTcpSocket_virtualbase_eventFilter".}
proc fcQTcpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTcpSocket_virtualbase_timerEvent".}
proc fcQTcpSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTcpSocket_virtualbase_childEvent".}
proc fcQTcpSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTcpSocket_virtualbase_customEvent".}
proc fcQTcpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTcpSocket_virtualbase_connectNotify".}
proc fcQTcpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTcpSocket_virtualbase_disconnectNotify".}
proc fcQTcpSocket_protectedbase_setSocketState(self: pointer, state: cint): void {.importc: "QTcpSocket_protectedbase_setSocketState".}
proc fcQTcpSocket_protectedbase_setSocketError(self: pointer, socketError: cint): void {.importc: "QTcpSocket_protectedbase_setSocketError".}
proc fcQTcpSocket_protectedbase_setLocalPort(self: pointer, port: cushort): void {.importc: "QTcpSocket_protectedbase_setLocalPort".}
proc fcQTcpSocket_protectedbase_setLocalAddress(self: pointer, address: pointer): void {.importc: "QTcpSocket_protectedbase_setLocalAddress".}
proc fcQTcpSocket_protectedbase_setPeerPort(self: pointer, port: cushort): void {.importc: "QTcpSocket_protectedbase_setPeerPort".}
proc fcQTcpSocket_protectedbase_setPeerAddress(self: pointer, address: pointer): void {.importc: "QTcpSocket_protectedbase_setPeerAddress".}
proc fcQTcpSocket_protectedbase_setPeerName(self: pointer, name: struct_miqt_string): void {.importc: "QTcpSocket_protectedbase_setPeerName".}
proc fcQTcpSocket_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QTcpSocket_protectedbase_setOpenMode".}
proc fcQTcpSocket_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QTcpSocket_protectedbase_setErrorString".}
proc fcQTcpSocket_protectedbase_sender(self: pointer): pointer {.importc: "QTcpSocket_protectedbase_sender".}
proc fcQTcpSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTcpSocket_protectedbase_senderSignalIndex".}
proc fcQTcpSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTcpSocket_protectedbase_receivers".}
proc fcQTcpSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTcpSocket_protectedbase_isSignalConnected".}
proc fcQTcpSocket_new(vtbl, vdata: pointer): ptr cQTcpSocket {.importc: "QTcpSocket_new".}
proc fcQTcpSocket_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTcpSocket {.importc: "QTcpSocket_new2".}
proc fcQTcpSocket_staticMetaObject(): pointer {.importc: "QTcpSocket_staticMetaObject".}

proc metaObject*(self: gen_qtcpsocket_types.QTcpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fcQTcpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring): string =
  let v_ms = fcQTcpSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring): string =
  let v_ms = fcQTcpSocket_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQTcpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQTcpSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTcpSocketmetaObjectProc* = proc(self: QTcpSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTcpSocketmetacastProc* = proc(self: QTcpSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QTcpSocketmetacallProc* = proc(self: QTcpSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTcpSocketresumeProc* = proc(self: QTcpSocket): void {.raises: [], gcsafe.}
type QTcpSocketconnectToHostProc* = proc(self: QTcpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QTcpSocketdisconnectFromHostProc* = proc(self: QTcpSocket): void {.raises: [], gcsafe.}
type QTcpSocketbytesAvailableProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketbytesToWriteProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketcanReadLineProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketsetReadBufferSizeProc* = proc(self: QTcpSocket, size: clonglong): void {.raises: [], gcsafe.}
type QTcpSocketsocketDescriptorProc* = proc(self: QTcpSocket): uint {.raises: [], gcsafe.}
type QTcpSocketsetSocketDescriptorProc* = proc(self: QTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QTcpSocketsetSocketOptionProc* = proc(self: QTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QTcpSocketsocketOptionProc* = proc(self: QTcpSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTcpSocketcloseProc* = proc(self: QTcpSocket): void {.raises: [], gcsafe.}
type QTcpSocketisSequentialProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketatEndProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForConnectedProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForReadyReadProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForBytesWrittenProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForDisconnectedProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketreadDataProc* = proc(self: QTcpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketreadLineDataProc* = proc(self: QTcpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketwriteDataProc* = proc(self: QTcpSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketopenProc* = proc(self: QTcpSocket, mode: cint): bool {.raises: [], gcsafe.}
type QTcpSocketposProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketsizeProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketseekProc* = proc(self: QTcpSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QTcpSocketresetProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketeventProc* = proc(self: QTcpSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTcpSocketeventFilterProc* = proc(self: QTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTcpSockettimerEventProc* = proc(self: QTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTcpSocketchildEventProc* = proc(self: QTcpSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTcpSocketcustomEventProc* = proc(self: QTcpSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTcpSocketconnectNotifyProc* = proc(self: QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTcpSocketdisconnectNotifyProc* = proc(self: QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTcpSocketVTable* {.inheritable, pure.} = object
  vtbl: cQTcpSocketVTable
  metaObject*: QTcpSocketmetaObjectProc
  metacast*: QTcpSocketmetacastProc
  metacall*: QTcpSocketmetacallProc
  resume*: QTcpSocketresumeProc
  connectToHost*: QTcpSocketconnectToHostProc
  disconnectFromHost*: QTcpSocketdisconnectFromHostProc
  bytesAvailable*: QTcpSocketbytesAvailableProc
  bytesToWrite*: QTcpSocketbytesToWriteProc
  canReadLine*: QTcpSocketcanReadLineProc
  setReadBufferSize*: QTcpSocketsetReadBufferSizeProc
  socketDescriptor*: QTcpSocketsocketDescriptorProc
  setSocketDescriptor*: QTcpSocketsetSocketDescriptorProc
  setSocketOption*: QTcpSocketsetSocketOptionProc
  socketOption*: QTcpSocketsocketOptionProc
  close*: QTcpSocketcloseProc
  isSequential*: QTcpSocketisSequentialProc
  atEnd*: QTcpSocketatEndProc
  waitForConnected*: QTcpSocketwaitForConnectedProc
  waitForReadyRead*: QTcpSocketwaitForReadyReadProc
  waitForBytesWritten*: QTcpSocketwaitForBytesWrittenProc
  waitForDisconnected*: QTcpSocketwaitForDisconnectedProc
  readData*: QTcpSocketreadDataProc
  readLineData*: QTcpSocketreadLineDataProc
  writeData*: QTcpSocketwriteDataProc
  open*: QTcpSocketopenProc
  pos*: QTcpSocketposProc
  size*: QTcpSocketsizeProc
  seek*: QTcpSocketseekProc
  reset*: QTcpSocketresetProc
  event*: QTcpSocketeventProc
  eventFilter*: QTcpSocketeventFilterProc
  timerEvent*: QTcpSockettimerEventProc
  childEvent*: QTcpSocketchildEventProc
  customEvent*: QTcpSocketcustomEventProc
  connectNotify*: QTcpSocketconnectNotifyProc
  disconnectNotify*: QTcpSocketdisconnectNotifyProc

proc QTcpSocketmetaObject*(self: gen_qtcpsocket_types.QTcpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_virtualbase_metaObject(self.h), owned: false)

proc QTcpSocketmetacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fcQTcpSocket_virtualbase_metacast(self.h, param1)

proc QTcpSocketmetacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTcpSocketresume*(self: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpSocket_virtualbase_resume(self.h)

proc QTcpSocketconnectToHost*(self: gen_qtcpsocket_types.QTcpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQTcpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc QTcpSocketdisconnectFromHost*(self: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpSocket_virtualbase_disconnectFromHost(self.h)

proc QTcpSocketbytesAvailable*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_bytesAvailable(self.h)

proc QTcpSocketbytesToWrite*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_bytesToWrite(self.h)

proc QTcpSocketcanReadLine*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_canReadLine(self.h)

proc QTcpSocketsetReadBufferSize*(self: gen_qtcpsocket_types.QTcpSocket, size: clonglong): void =
  fcQTcpSocket_virtualbase_setReadBufferSize(self.h, size)

proc QTcpSocketsocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket): uint =
  fcQTcpSocket_virtualbase_socketDescriptor(self.h)

proc QTcpSocketsetSocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQTcpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc QTcpSocketsetSocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQTcpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc QTcpSocketsocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTcpSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc QTcpSocketclose*(self: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpSocket_virtualbase_close(self.h)

proc QTcpSocketisSequential*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_isSequential(self.h)

proc QTcpSocketatEnd*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_atEnd(self.h)

proc QTcpSocketwaitForConnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForConnected(self.h, msecs)

proc QTcpSocketwaitForReadyRead*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc QTcpSocketwaitForBytesWritten*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc QTcpSocketwaitForDisconnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc QTcpSocketreadData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQTcpSocket_virtualbase_readData(self.h, data, maxlen)

proc QTcpSocketreadLineData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQTcpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc QTcpSocketwriteData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, len: clonglong): clonglong =
  fcQTcpSocket_virtualbase_writeData(self.h, data, len)

proc QTcpSocketopen*(self: gen_qtcpsocket_types.QTcpSocket, mode: cint): bool =
  fcQTcpSocket_virtualbase_open(self.h, cint(mode))

proc QTcpSocketpos*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_pos(self.h)

proc QTcpSocketsize*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_size(self.h)

proc QTcpSocketseek*(self: gen_qtcpsocket_types.QTcpSocket, pos: clonglong): bool =
  fcQTcpSocket_virtualbase_seek(self.h, pos)

proc QTcpSocketreset*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_reset(self.h)

proc QTcpSocketevent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpSocket_virtualbase_event(self.h, event.h)

proc QTcpSocketeventFilter*(self: gen_qtcpsocket_types.QTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTcpSockettimerEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTcpSocket_virtualbase_timerEvent(self.h, event.h)

proc QTcpSocketchildEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTcpSocket_virtualbase_childEvent(self.h, event.h)

proc QTcpSocketcustomEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQTcpSocket_virtualbase_customEvent(self.h, event.h)

proc QTcpSocketconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpSocket_virtualbase_connectNotify(self.h, signal.h)

proc QTcpSocketdisconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpSocket_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTcpSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTcpSocket_vtable_callback_resume(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  vtbl[].resume(self)

proc fcQTcpSocket_vtable_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc fcQTcpSocket_vtable_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc fcQTcpSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc fcQTcpSocket_vtable_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTcpSocket_vtable_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc fcQTcpSocket_vtable_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  vtbl[].close(self)

proc fcQTcpSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc fcQTcpSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTcpSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTcpSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTcpSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTcpSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTcpSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTcpSocket* {.inheritable.} = ref object of QTcpSocket
  vtbl*: cQTcpSocketVTable

method metaObject*(self: VirtualQTcpSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTcpSocketmetaObject(self[])
method metacast*(self: VirtualQTcpSocket, param1: cstring): pointer {.base.} =
  QTcpSocketmetacast(self[], param1)
method metacall*(self: VirtualQTcpSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTcpSocketmetacall(self[], param1, param2, param3)
method resume*(self: VirtualQTcpSocket): void {.base.} =
  QTcpSocketresume(self[])
method connectToHost*(self: VirtualQTcpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.base.} =
  QTcpSocketconnectToHost(self[], hostName, port, mode, protocol)
method disconnectFromHost*(self: VirtualQTcpSocket): void {.base.} =
  QTcpSocketdisconnectFromHost(self[])
method bytesAvailable*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketbytesAvailable(self[])
method bytesToWrite*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketbytesToWrite(self[])
method canReadLine*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketcanReadLine(self[])
method setReadBufferSize*(self: VirtualQTcpSocket, size: clonglong): void {.base.} =
  QTcpSocketsetReadBufferSize(self[], size)
method socketDescriptor*(self: VirtualQTcpSocket): uint {.base.} =
  QTcpSocketsocketDescriptor(self[])
method setSocketDescriptor*(self: VirtualQTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QTcpSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
method setSocketOption*(self: VirtualQTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QTcpSocketsetSocketOption(self[], option, value)
method socketOption*(self: VirtualQTcpSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QTcpSocketsocketOption(self[], option)
method close*(self: VirtualQTcpSocket): void {.base.} =
  QTcpSocketclose(self[])
method isSequential*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketisSequential(self[])
method atEnd*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketatEnd(self[])
method waitForConnected*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForConnected(self[], msecs)
method waitForReadyRead*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForReadyRead(self[], msecs)
method waitForBytesWritten*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForBytesWritten(self[], msecs)
method waitForDisconnected*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForDisconnected(self[], msecs)
method readData*(self: VirtualQTcpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTcpSocketreadData(self[], data, maxlen)
method readLineData*(self: VirtualQTcpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTcpSocketreadLineData(self[], data, maxlen)
method writeData*(self: VirtualQTcpSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QTcpSocketwriteData(self[], data, len)
method open*(self: VirtualQTcpSocket, mode: cint): bool {.base.} =
  QTcpSocketopen(self[], mode)
method pos*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketpos(self[])
method size*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketsize(self[])
method seek*(self: VirtualQTcpSocket, pos: clonglong): bool {.base.} =
  QTcpSocketseek(self[], pos)
method reset*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketreset(self[])
method event*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpSocketevent(self[], event)
method eventFilter*(self: VirtualQTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpSocketeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTcpSockettimerEvent(self[], event)
method childEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTcpSocketchildEvent(self[], event)
method customEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTcpSocketcustomEvent(self[], event)
method connectNotify*(self: VirtualQTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpSocketconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpSocketdisconnectNotify(self[], signal)

proc fcQTcpSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTcpSocket_method_callback_resume(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  inst.resume()

proc fcQTcpSocket_method_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  inst.connectToHost(slotval1, slotval2, slotval3, slotval4)

proc fcQTcpSocket_method_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  inst.disconnectFromHost()

proc fcQTcpSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQTcpSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

proc fcQTcpSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

proc fcQTcpSocket_method_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = size
  inst.setReadBufferSize(slotval1)

proc fcQTcpSocket_method_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.socketDescriptor()
  virtualReturn

proc fcQTcpSocket_method_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = inst.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTcpSocket_method_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setSocketOption(slotval1, slotval2)

proc fcQTcpSocket_method_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTcpSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  inst.close()

proc fcQTcpSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

proc fcQTcpSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

proc fcQTcpSocket_method_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForConnected(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForDisconnected(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

proc fcQTcpSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

proc fcQTcpSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

proc fcQTcpSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTcpSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTcpSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTcpSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTcpSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTcpSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTcpSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setSocketState*(self: gen_qtcpsocket_types.QTcpSocket, state: cint): void =
  fcQTcpSocket_protectedbase_setSocketState(self.h, cint(state))

proc setSocketError*(self: gen_qtcpsocket_types.QTcpSocket, socketError: cint): void =
  fcQTcpSocket_protectedbase_setSocketError(self.h, cint(socketError))

proc setLocalPort*(self: gen_qtcpsocket_types.QTcpSocket, port: cushort): void =
  fcQTcpSocket_protectedbase_setLocalPort(self.h, port)

proc setLocalAddress*(self: gen_qtcpsocket_types.QTcpSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQTcpSocket_protectedbase_setLocalAddress(self.h, address.h)

proc setPeerPort*(self: gen_qtcpsocket_types.QTcpSocket, port: cushort): void =
  fcQTcpSocket_protectedbase_setPeerPort(self.h, port)

proc setPeerAddress*(self: gen_qtcpsocket_types.QTcpSocket, address: gen_qhostaddress_types.QHostAddress): void =
  fcQTcpSocket_protectedbase_setPeerAddress(self.h, address.h)

proc setPeerName*(self: gen_qtcpsocket_types.QTcpSocket, name: openArray[char]): void =
  fcQTcpSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qtcpsocket_types.QTcpSocket, openMode: cint): void =
  fcQTcpSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qtcpsocket_types.QTcpSocket, errorString: openArray[char]): void =
  fcQTcpSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qtcpsocket_types.QTcpSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTcpSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtcpsocket_types.QTcpSocket): cint =
  fcQTcpSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtcpsocket_types.QTcpSocket, signal: cstring): cint =
  fcQTcpSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTcpSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    vtbl: ref QTcpSocketVTable = nil): gen_qtcpsocket_types.QTcpSocket =
  let vtbl = if vtbl == nil: new QTcpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTcpSocketVTable](fcQTcpSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTcpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTcpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTcpSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = fcQTcpSocket_vtable_callback_resume
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = fcQTcpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = fcQTcpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQTcpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQTcpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQTcpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = fcQTcpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = fcQTcpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = fcQTcpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = fcQTcpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = fcQTcpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQTcpSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQTcpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQTcpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = fcQTcpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQTcpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQTcpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = fcQTcpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQTcpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQTcpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQTcpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQTcpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQTcpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQTcpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQTcpSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQTcpSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTcpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTcpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTcpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTcpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTcpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTcpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTcpSocket_vtable_callback_disconnectNotify
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpSocket_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTcpSocketVTable = nil): gen_qtcpsocket_types.QTcpSocket =
  let vtbl = if vtbl == nil: new QTcpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTcpSocketVTable](fcQTcpSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTcpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTcpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTcpSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = fcQTcpSocket_vtable_callback_resume
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = fcQTcpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = fcQTcpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQTcpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQTcpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQTcpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = fcQTcpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = fcQTcpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = fcQTcpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = fcQTcpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = fcQTcpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQTcpSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQTcpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQTcpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = fcQTcpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQTcpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQTcpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = fcQTcpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQTcpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQTcpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQTcpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQTcpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQTcpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQTcpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQTcpSocket_vtable_callback_seek
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQTcpSocket_vtable_callback_reset
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTcpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTcpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTcpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTcpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTcpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTcpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTcpSocket_vtable_callback_disconnectNotify
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpSocket_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTcpSocket_mvtbl = cQTcpSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTcpSocket()[])](self.fcQTcpSocket_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTcpSocket_method_callback_metaObject,
  metacast: fcQTcpSocket_method_callback_metacast,
  metacall: fcQTcpSocket_method_callback_metacall,
  resume: fcQTcpSocket_method_callback_resume,
  connectToHost: fcQTcpSocket_method_callback_connectToHost,
  disconnectFromHost: fcQTcpSocket_method_callback_disconnectFromHost,
  bytesAvailable: fcQTcpSocket_method_callback_bytesAvailable,
  bytesToWrite: fcQTcpSocket_method_callback_bytesToWrite,
  canReadLine: fcQTcpSocket_method_callback_canReadLine,
  setReadBufferSize: fcQTcpSocket_method_callback_setReadBufferSize,
  socketDescriptor: fcQTcpSocket_method_callback_socketDescriptor,
  setSocketDescriptor: fcQTcpSocket_method_callback_setSocketDescriptor,
  setSocketOption: fcQTcpSocket_method_callback_setSocketOption,
  socketOption: fcQTcpSocket_method_callback_socketOption,
  close: fcQTcpSocket_method_callback_close,
  isSequential: fcQTcpSocket_method_callback_isSequential,
  atEnd: fcQTcpSocket_method_callback_atEnd,
  waitForConnected: fcQTcpSocket_method_callback_waitForConnected,
  waitForReadyRead: fcQTcpSocket_method_callback_waitForReadyRead,
  waitForBytesWritten: fcQTcpSocket_method_callback_waitForBytesWritten,
  waitForDisconnected: fcQTcpSocket_method_callback_waitForDisconnected,
  readData: fcQTcpSocket_method_callback_readData,
  readLineData: fcQTcpSocket_method_callback_readLineData,
  writeData: fcQTcpSocket_method_callback_writeData,
  open: fcQTcpSocket_method_callback_open,
  pos: fcQTcpSocket_method_callback_pos,
  size: fcQTcpSocket_method_callback_size,
  seek: fcQTcpSocket_method_callback_seek,
  reset: fcQTcpSocket_method_callback_reset,
  event: fcQTcpSocket_method_callback_event,
  eventFilter: fcQTcpSocket_method_callback_eventFilter,
  timerEvent: fcQTcpSocket_method_callback_timerEvent,
  childEvent: fcQTcpSocket_method_callback_childEvent,
  customEvent: fcQTcpSocket_method_callback_customEvent,
  connectNotify: fcQTcpSocket_method_callback_connectNotify,
  disconnectNotify: fcQTcpSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    inst: VirtualQTcpSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTcpSocket_new(addr(cQTcpSocket_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTcpSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTcpSocket_new2(addr(cQTcpSocket_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtcpsocket_types.QTcpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_staticMetaObject())
