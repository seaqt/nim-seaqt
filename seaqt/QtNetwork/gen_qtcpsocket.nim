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
proc fcQTcpSocket_bindX(self: pointer, addrVal: cint): bool {.importc: "QTcpSocket_bind".}
proc fcQTcpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_tr2".}
proc fcQTcpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_tr3".}
proc fcQTcpSocket_bind2(self: pointer, addrVal: cint, port: cushort): bool {.importc: "QTcpSocket_bind2".}
proc fcQTcpSocket_bind3(self: pointer, addrVal: cint, port: cushort, mode: cint): bool {.importc: "QTcpSocket_bind3".}
proc fcQTcpSocket_vtbl(self: pointer): pointer {.importc: "QTcpSocket_vtbl".}
proc fcQTcpSocket_vdata(self: pointer): pointer {.importc: "QTcpSocket_vdata".}
type cQTcpSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resume*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  connectToHost*: proc(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl, raises: [], gcsafe.}
  disconnectFromHost*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  setReadBufferSize*: proc(self: pointer, size: clonglong): void {.cdecl, raises: [], gcsafe.}
  socketDescriptor*: proc(self: pointer): uint {.cdecl, raises: [], gcsafe.}
  setSocketDescriptor*: proc(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  setSocketOption*: proc(self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  socketOption*: proc(self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForConnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForDisconnected*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
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
proc fcQTcpSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QTcpSocket_virtualbase_metaObject".}
proc fcQTcpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_virtualbase_metacast".}
proc fcQTcpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_virtualbase_metacall".}
proc fcQTcpSocket_virtualbase_resume(self: pointer): void {.importc: "QTcpSocket_virtualbase_resume".}
proc fcQTcpSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QTcpSocket_virtualbase_bind".}
proc fcQTcpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QTcpSocket_virtualbase_connectToHost".}
proc fcQTcpSocket_virtualbase_disconnectFromHost(self: pointer): void {.importc: "QTcpSocket_virtualbase_disconnectFromHost".}
proc fcQTcpSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_bytesAvailable".}
proc fcQTcpSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_bytesToWrite".}
proc fcQTcpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QTcpSocket_virtualbase_setReadBufferSize".}
proc fcQTcpSocket_virtualbase_socketDescriptor(self: pointer): uint {.importc: "QTcpSocket_virtualbase_socketDescriptor".}
proc fcQTcpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QTcpSocket_virtualbase_setSocketDescriptor".}
proc fcQTcpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QTcpSocket_virtualbase_setSocketOption".}
proc fcQTcpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QTcpSocket_virtualbase_socketOption".}
proc fcQTcpSocket_virtualbase_close(self: pointer): void {.importc: "QTcpSocket_virtualbase_close".}
proc fcQTcpSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QTcpSocket_virtualbase_isSequential".}
proc fcQTcpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForConnected".}
proc fcQTcpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForReadyRead".}
proc fcQTcpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForBytesWritten".}
proc fcQTcpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForDisconnected".}
proc fcQTcpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_readData".}
proc fcQTcpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_readLineData".}
proc fcQTcpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_skipData".}
proc fcQTcpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_writeData".}
proc fcQTcpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QTcpSocket_virtualbase_open".}
proc fcQTcpSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_pos".}
proc fcQTcpSocket_virtualbase_size(self: pointer): clonglong {.importc: "QTcpSocket_virtualbase_size".}
proc fcQTcpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QTcpSocket_virtualbase_seek".}
proc fcQTcpSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QTcpSocket_virtualbase_atEnd".}
proc fcQTcpSocket_virtualbase_reset(self: pointer): bool {.importc: "QTcpSocket_virtualbase_reset".}
proc fcQTcpSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QTcpSocket_virtualbase_canReadLine".}
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

proc bindX*(self: gen_qtcpsocket_types.QTcpSocket, addrVal: cint): bool =
  fcQTcpSocket_bindX(self.h, cint(addrVal))

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

proc bindX*(self: gen_qtcpsocket_types.QTcpSocket, addrVal: cint, port: cushort): bool =
  fcQTcpSocket_bind2(self.h, cint(addrVal), port)

proc bindX*(self: gen_qtcpsocket_types.QTcpSocket, addrVal: cint, port: cushort, mode: cint): bool =
  fcQTcpSocket_bind3(self.h, cint(addrVal), port, cint(mode))

type QTcpSocketmetaObjectProc* = proc(self: QTcpSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTcpSocketmetacastProc* = proc(self: QTcpSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QTcpSocketmetacallProc* = proc(self: QTcpSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTcpSocketresumeProc* = proc(self: QTcpSocket): void {.raises: [], gcsafe.}
type QTcpSocketbindXProc* = proc(self: QTcpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.raises: [], gcsafe.}
type QTcpSocketconnectToHostProc* = proc(self: QTcpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
type QTcpSocketdisconnectFromHostProc* = proc(self: QTcpSocket): void {.raises: [], gcsafe.}
type QTcpSocketbytesAvailableProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketbytesToWriteProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketsetReadBufferSizeProc* = proc(self: QTcpSocket, size: clonglong): void {.raises: [], gcsafe.}
type QTcpSocketsocketDescriptorProc* = proc(self: QTcpSocket): uint {.raises: [], gcsafe.}
type QTcpSocketsetSocketDescriptorProc* = proc(self: QTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.raises: [], gcsafe.}
type QTcpSocketsetSocketOptionProc* = proc(self: QTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QTcpSocketsocketOptionProc* = proc(self: QTcpSocket, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTcpSocketcloseProc* = proc(self: QTcpSocket): void {.raises: [], gcsafe.}
type QTcpSocketisSequentialProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForConnectedProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForReadyReadProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForBytesWrittenProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketwaitForDisconnectedProc* = proc(self: QTcpSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QTcpSocketreadDataProc* = proc(self: QTcpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketreadLineDataProc* = proc(self: QTcpSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketskipDataProc* = proc(self: QTcpSocket, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketwriteDataProc* = proc(self: QTcpSocket, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QTcpSocketopenProc* = proc(self: QTcpSocket, mode: cint): bool {.raises: [], gcsafe.}
type QTcpSocketposProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketsizeProc* = proc(self: QTcpSocket): clonglong {.raises: [], gcsafe.}
type QTcpSocketseekProc* = proc(self: QTcpSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QTcpSocketatEndProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketresetProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
type QTcpSocketcanReadLineProc* = proc(self: QTcpSocket): bool {.raises: [], gcsafe.}
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
  bindX*: QTcpSocketbindXProc
  connectToHost*: QTcpSocketconnectToHostProc
  disconnectFromHost*: QTcpSocketdisconnectFromHostProc
  bytesAvailable*: QTcpSocketbytesAvailableProc
  bytesToWrite*: QTcpSocketbytesToWriteProc
  setReadBufferSize*: QTcpSocketsetReadBufferSizeProc
  socketDescriptor*: QTcpSocketsocketDescriptorProc
  setSocketDescriptor*: QTcpSocketsetSocketDescriptorProc
  setSocketOption*: QTcpSocketsetSocketOptionProc
  socketOption*: QTcpSocketsocketOptionProc
  close*: QTcpSocketcloseProc
  isSequential*: QTcpSocketisSequentialProc
  waitForConnected*: QTcpSocketwaitForConnectedProc
  waitForReadyRead*: QTcpSocketwaitForReadyReadProc
  waitForBytesWritten*: QTcpSocketwaitForBytesWrittenProc
  waitForDisconnected*: QTcpSocketwaitForDisconnectedProc
  readData*: QTcpSocketreadDataProc
  readLineData*: QTcpSocketreadLineDataProc
  skipData*: QTcpSocketskipDataProc
  writeData*: QTcpSocketwriteDataProc
  open*: QTcpSocketopenProc
  pos*: QTcpSocketposProc
  size*: QTcpSocketsizeProc
  seek*: QTcpSocketseekProc
  atEnd*: QTcpSocketatEndProc
  reset*: QTcpSocketresetProc
  canReadLine*: QTcpSocketcanReadLineProc
  event*: QTcpSocketeventProc
  eventFilter*: QTcpSocketeventFilterProc
  timerEvent*: QTcpSockettimerEventProc
  childEvent*: QTcpSocketchildEventProc
  customEvent*: QTcpSocketcustomEventProc
  connectNotify*: QTcpSocketconnectNotifyProc
  disconnectNotify*: QTcpSocketdisconnectNotifyProc
proc QTcpSocketmetaObject*(self: gen_qtcpsocket_types.QTcpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_virtualbase_metaObject(self.h), owned: false)

proc cQTcpSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTcpSocketmetacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fcQTcpSocket_virtualbase_metacast(self.h, param1)

proc cQTcpSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTcpSocketmetacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTcpSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpSocketresume*(self: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpSocket_virtualbase_resume(self.h)

proc cQTcpSocket_vtable_callback_resume(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  vtbl[].resume(self)

proc QTcpSocketbindX*(self: gen_qtcpsocket_types.QTcpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQTcpSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc cQTcpSocket_vtable_callback_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpSocketconnectToHost*(self: gen_qtcpsocket_types.QTcpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void =
  fcQTcpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc cQTcpSocket_vtable_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
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

proc QTcpSocketdisconnectFromHost*(self: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpSocket_virtualbase_disconnectFromHost(self.h)

proc cQTcpSocket_vtable_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QTcpSocketbytesAvailable*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_bytesAvailable(self.h)

proc cQTcpSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QTcpSocketbytesToWrite*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_bytesToWrite(self.h)

proc cQTcpSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QTcpSocketsetReadBufferSize*(self: gen_qtcpsocket_types.QTcpSocket, size: clonglong): void =
  fcQTcpSocket_virtualbase_setReadBufferSize(self.h, size)

proc cQTcpSocket_vtable_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QTcpSocketsocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket): uint =
  fcQTcpSocket_virtualbase_socketDescriptor(self.h)

proc cQTcpSocket_vtable_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QTcpSocketsetSocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQTcpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc cQTcpSocket_vtable_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpSocketsetSocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQTcpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc cQTcpSocket_vtable_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QTcpSocketsocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTcpSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc cQTcpSocket_vtable_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTcpSocketclose*(self: gen_qtcpsocket_types.QTcpSocket): void =
  fcQTcpSocket_virtualbase_close(self.h)

proc cQTcpSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  vtbl[].close(self)

proc QTcpSocketisSequential*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_isSequential(self.h)

proc cQTcpSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QTcpSocketwaitForConnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForConnected(self.h, msecs)

proc cQTcpSocket_vtable_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QTcpSocketwaitForReadyRead*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc cQTcpSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QTcpSocketwaitForBytesWritten*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQTcpSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QTcpSocketwaitForDisconnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc cQTcpSocket_vtable_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QTcpSocketreadData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQTcpSocket_virtualbase_readData(self.h, data, maxlen)

proc cQTcpSocket_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QTcpSocketreadLineData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQTcpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc cQTcpSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QTcpSocketskipData*(self: gen_qtcpsocket_types.QTcpSocket, maxSize: clonglong): clonglong =
  fcQTcpSocket_virtualbase_skipData(self.h, maxSize)

proc cQTcpSocket_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QTcpSocketwriteData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, len: clonglong): clonglong =
  fcQTcpSocket_virtualbase_writeData(self.h, data, len)

proc cQTcpSocket_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QTcpSocketopen*(self: gen_qtcpsocket_types.QTcpSocket, mode: cint): bool =
  fcQTcpSocket_virtualbase_open(self.h, cint(mode))

proc cQTcpSocket_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QTcpSocketpos*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_pos(self.h)

proc cQTcpSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QTcpSocketsize*(self: gen_qtcpsocket_types.QTcpSocket): clonglong =
  fcQTcpSocket_virtualbase_size(self.h)

proc cQTcpSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QTcpSocketseek*(self: gen_qtcpsocket_types.QTcpSocket, pos: clonglong): bool =
  fcQTcpSocket_virtualbase_seek(self.h, pos)

proc cQTcpSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QTcpSocketatEnd*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_atEnd(self.h)

proc cQTcpSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QTcpSocketreset*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_reset(self.h)

proc cQTcpSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QTcpSocketcanReadLine*(self: gen_qtcpsocket_types.QTcpSocket): bool =
  fcQTcpSocket_virtualbase_canReadLine(self.h)

proc cQTcpSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QTcpSocketevent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpSocket_virtualbase_event(self.h, event.h)

proc cQTcpSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTcpSocketeventFilter*(self: gen_qtcpsocket_types.QTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQTcpSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTcpSockettimerEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTcpSocket_virtualbase_timerEvent(self.h, event.h)

proc cQTcpSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTcpSocketchildEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTcpSocket_virtualbase_childEvent(self.h, event.h)

proc cQTcpSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTcpSocketcustomEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQTcpSocket_virtualbase_customEvent(self.h, event.h)

proc cQTcpSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTcpSocketconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpSocket_virtualbase_connectNotify(self.h, signal.h)

proc cQTcpSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTcpSocketdisconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTcpSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](fcQTcpSocket_vdata(self))
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTcpSocket* {.inheritable.} = ref object of QTcpSocket
  vtbl*: cQTcpSocketVTable
method metaObject*(self: VirtualQTcpSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTcpSocketmetaObject(self[])
proc cQTcpSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTcpSocket, param1: cstring): pointer {.base.} =
  QTcpSocketmetacast(self[], param1)
proc cQTcpSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTcpSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTcpSocketmetacall(self[], param1, param2, param3)
proc cQTcpSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method resume*(self: VirtualQTcpSocket): void {.base.} =
  QTcpSocketresume(self[])
proc cQTcpSocket_method_callback_resume(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  inst.resume()

method bindX*(self: VirtualQTcpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.base.} =
  QTcpSocketbindX(self[], address, port, mode)
proc cQTcpSocket_method_callback_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = inst.bindX(slotval1, slotval2, slotval3)
  virtualReturn

method connectToHost*(self: VirtualQTcpSocket, hostName: openArray[char], port: cushort, mode: cint, protocol: cint): void {.base.} =
  QTcpSocketconnectToHost(self[], hostName, port, mode, protocol)
proc cQTcpSocket_method_callback_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(vhostName_ms)
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  inst.connectToHost(slotval1, slotval2, slotval3, slotval4)

method disconnectFromHost*(self: VirtualQTcpSocket): void {.base.} =
  QTcpSocketdisconnectFromHost(self[])
proc cQTcpSocket_method_callback_disconnectFromHost(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  inst.disconnectFromHost()

method bytesAvailable*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketbytesAvailable(self[])
proc cQTcpSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketbytesToWrite(self[])
proc cQTcpSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method setReadBufferSize*(self: VirtualQTcpSocket, size: clonglong): void {.base.} =
  QTcpSocketsetReadBufferSize(self[], size)
proc cQTcpSocket_method_callback_setReadBufferSize(self: pointer, size: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = size
  inst.setReadBufferSize(slotval1)

method socketDescriptor*(self: VirtualQTcpSocket): uint {.base.} =
  QTcpSocketsocketDescriptor(self[])
proc cQTcpSocket_method_callback_socketDescriptor(self: pointer): uint {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.socketDescriptor()
  virtualReturn

method setSocketDescriptor*(self: VirtualQTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QTcpSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
proc cQTcpSocket_method_callback_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = inst.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

method setSocketOption*(self: VirtualQTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QTcpSocketsetSocketOption(self[], option, value)
proc cQTcpSocket_method_callback_setSocketOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setSocketOption(slotval1, slotval2)

method socketOption*(self: VirtualQTcpSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QTcpSocketsocketOption(self[], option)
proc cQTcpSocket_method_callback_socketOption(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method close*(self: VirtualQTcpSocket): void {.base.} =
  QTcpSocketclose(self[])
proc cQTcpSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  inst.close()

method isSequential*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketisSequential(self[])
proc cQTcpSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method waitForConnected*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForConnected(self[], msecs)
proc cQTcpSocket_method_callback_waitForConnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForConnected(slotval1)
  virtualReturn

method waitForReadyRead*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForReadyRead(self[], msecs)
proc cQTcpSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForBytesWritten(self[], msecs)
proc cQTcpSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method waitForDisconnected*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForDisconnected(self[], msecs)
proc cQTcpSocket_method_callback_waitForDisconnected(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForDisconnected(slotval1)
  virtualReturn

method readData*(self: VirtualQTcpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTcpSocketreadData(self[], data, maxlen)
proc cQTcpSocket_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQTcpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTcpSocketreadLineData(self[], data, maxlen)
proc cQTcpSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method skipData*(self: VirtualQTcpSocket, maxSize: clonglong): clonglong {.base.} =
  QTcpSocketskipData(self[], maxSize)
proc cQTcpSocket_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

method writeData*(self: VirtualQTcpSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QTcpSocketwriteData(self[], data, len)
proc cQTcpSocket_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method open*(self: VirtualQTcpSocket, mode: cint): bool {.base.} =
  QTcpSocketopen(self[], mode)
proc cQTcpSocket_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method pos*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketpos(self[])
proc cQTcpSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQTcpSocket): clonglong {.base.} =
  QTcpSocketsize(self[])
proc cQTcpSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method seek*(self: VirtualQTcpSocket, pos: clonglong): bool {.base.} =
  QTcpSocketseek(self[], pos)
proc cQTcpSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method atEnd*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketatEnd(self[])
proc cQTcpSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method reset*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketreset(self[])
proc cQTcpSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method canReadLine*(self: VirtualQTcpSocket): bool {.base.} =
  QTcpSocketcanReadLine(self[])
proc cQTcpSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method event*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpSocketevent(self[], event)
proc cQTcpSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpSocketeventFilter(self[], watched, event)
proc cQTcpSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTcpSockettimerEvent(self[], event)
proc cQTcpSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTcpSocketchildEvent(self[], event)
proc cQTcpSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTcpSocketcustomEvent(self[], event)
proc cQTcpSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpSocketconnectNotify(self[], signal)
proc cQTcpSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTcpSocket](fcQTcpSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpSocketdisconnectNotify(self[], signal)
proc cQTcpSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
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
    vtbl[].vtbl.metaObject = cQTcpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTcpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTcpSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQTcpSocket_vtable_callback_resume
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQTcpSocket_vtable_callback_bindX
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQTcpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQTcpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQTcpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQTcpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQTcpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQTcpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQTcpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQTcpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQTcpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQTcpSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQTcpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQTcpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQTcpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQTcpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQTcpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQTcpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQTcpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQTcpSocket_vtable_callback_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQTcpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQTcpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQTcpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQTcpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQTcpSocket_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQTcpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTcpSocket_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQTcpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTcpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTcpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTcpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTcpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTcpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTcpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTcpSocket_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = cQTcpSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTcpSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTcpSocket_vtable_callback_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = cQTcpSocket_vtable_callback_resume
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = cQTcpSocket_vtable_callback_bindX
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = cQTcpSocket_vtable_callback_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = cQTcpSocket_vtable_callback_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQTcpSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQTcpSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = cQTcpSocket_vtable_callback_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = cQTcpSocket_vtable_callback_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = cQTcpSocket_vtable_callback_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = cQTcpSocket_vtable_callback_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = cQTcpSocket_vtable_callback_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQTcpSocket_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQTcpSocket_vtable_callback_isSequential
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = cQTcpSocket_vtable_callback_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQTcpSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQTcpSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = cQTcpSocket_vtable_callback_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQTcpSocket_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQTcpSocket_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQTcpSocket_vtable_callback_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQTcpSocket_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQTcpSocket_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQTcpSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQTcpSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQTcpSocket_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQTcpSocket_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTcpSocket_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQTcpSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTcpSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTcpSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTcpSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTcpSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTcpSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTcpSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTcpSocket_vtable_callback_disconnectNotify
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpSocket_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTcpSocket_mvtbl = cQTcpSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTcpSocket()[])](self.fcQTcpSocket_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTcpSocket_method_callback_metaObject,
  metacast: cQTcpSocket_method_callback_metacast,
  metacall: cQTcpSocket_method_callback_metacall,
  resume: cQTcpSocket_method_callback_resume,
  bindX: cQTcpSocket_method_callback_bindX,
  connectToHost: cQTcpSocket_method_callback_connectToHost,
  disconnectFromHost: cQTcpSocket_method_callback_disconnectFromHost,
  bytesAvailable: cQTcpSocket_method_callback_bytesAvailable,
  bytesToWrite: cQTcpSocket_method_callback_bytesToWrite,
  setReadBufferSize: cQTcpSocket_method_callback_setReadBufferSize,
  socketDescriptor: cQTcpSocket_method_callback_socketDescriptor,
  setSocketDescriptor: cQTcpSocket_method_callback_setSocketDescriptor,
  setSocketOption: cQTcpSocket_method_callback_setSocketOption,
  socketOption: cQTcpSocket_method_callback_socketOption,
  close: cQTcpSocket_method_callback_close,
  isSequential: cQTcpSocket_method_callback_isSequential,
  waitForConnected: cQTcpSocket_method_callback_waitForConnected,
  waitForReadyRead: cQTcpSocket_method_callback_waitForReadyRead,
  waitForBytesWritten: cQTcpSocket_method_callback_waitForBytesWritten,
  waitForDisconnected: cQTcpSocket_method_callback_waitForDisconnected,
  readData: cQTcpSocket_method_callback_readData,
  readLineData: cQTcpSocket_method_callback_readLineData,
  skipData: cQTcpSocket_method_callback_skipData,
  writeData: cQTcpSocket_method_callback_writeData,
  open: cQTcpSocket_method_callback_open,
  pos: cQTcpSocket_method_callback_pos,
  size: cQTcpSocket_method_callback_size,
  seek: cQTcpSocket_method_callback_seek,
  atEnd: cQTcpSocket_method_callback_atEnd,
  reset: cQTcpSocket_method_callback_reset,
  canReadLine: cQTcpSocket_method_callback_canReadLine,
  event: cQTcpSocket_method_callback_event,
  eventFilter: cQTcpSocket_method_callback_eventFilter,
  timerEvent: cQTcpSocket_method_callback_timerEvent,
  childEvent: cQTcpSocket_method_callback_childEvent,
  customEvent: cQTcpSocket_method_callback_customEvent,
  connectNotify: cQTcpSocket_method_callback_connectNotify,
  disconnectNotify: cQTcpSocket_method_callback_disconnectNotify,
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
