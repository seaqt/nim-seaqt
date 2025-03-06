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

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qtcpsocket.cpp", cflags).}


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

proc fcQTcpSocket_metaObject(self: pointer, ): pointer {.importc: "QTcpSocket_metaObject".}
proc fcQTcpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_metacast".}
proc fcQTcpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_metacall".}
proc fcQTcpSocket_tr(s: cstring): struct_miqt_string {.importc: "QTcpSocket_tr".}
proc fcQTcpSocket_bindX(self: pointer, addrVal: cint): bool {.importc: "QTcpSocket_bind".}
proc fcQTcpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_tr2".}
proc fcQTcpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_tr3".}
proc fcQTcpSocket_bind2(self: pointer, addrVal: cint, port: cushort): bool {.importc: "QTcpSocket_bind2".}
proc fcQTcpSocket_bind3(self: pointer, addrVal: cint, port: cushort, mode: cint): bool {.importc: "QTcpSocket_bind3".}
type cQTcpSocketVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQTcpSocketVTable, self: ptr cQTcpSocket) {.cdecl, raises:[], gcsafe.}
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
proc fcQTcpSocket_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTcpSocket_virtualbase_metaObject".}
proc fcQTcpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_virtualbase_metacast".}
proc fcQTcpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_virtualbase_metacall".}
proc fcQTcpSocket_virtualbase_resume(self: pointer, ): void {.importc: "QTcpSocket_virtualbase_resume".}
proc fcQTcpSocket_virtualbase_bindX(self: pointer, address: pointer, port: cushort, mode: cint): bool {.importc: "QTcpSocket_virtualbase_bind".}
proc fcQTcpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.importc: "QTcpSocket_virtualbase_connectToHost".}
proc fcQTcpSocket_virtualbase_disconnectFromHost(self: pointer, ): void {.importc: "QTcpSocket_virtualbase_disconnectFromHost".}
proc fcQTcpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QTcpSocket_virtualbase_bytesAvailable".}
proc fcQTcpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QTcpSocket_virtualbase_bytesToWrite".}
proc fcQTcpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QTcpSocket_virtualbase_setReadBufferSize".}
proc fcQTcpSocket_virtualbase_socketDescriptor(self: pointer, ): uint {.importc: "QTcpSocket_virtualbase_socketDescriptor".}
proc fcQTcpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.importc: "QTcpSocket_virtualbase_setSocketDescriptor".}
proc fcQTcpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void {.importc: "QTcpSocket_virtualbase_setSocketOption".}
proc fcQTcpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer {.importc: "QTcpSocket_virtualbase_socketOption".}
proc fcQTcpSocket_virtualbase_close(self: pointer, ): void {.importc: "QTcpSocket_virtualbase_close".}
proc fcQTcpSocket_virtualbase_isSequential(self: pointer, ): bool {.importc: "QTcpSocket_virtualbase_isSequential".}
proc fcQTcpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForConnected".}
proc fcQTcpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForReadyRead".}
proc fcQTcpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForBytesWritten".}
proc fcQTcpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool {.importc: "QTcpSocket_virtualbase_waitForDisconnected".}
proc fcQTcpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_readData".}
proc fcQTcpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_readLineData".}
proc fcQTcpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_skipData".}
proc fcQTcpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QTcpSocket_virtualbase_writeData".}
proc fcQTcpSocket_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QTcpSocket_virtualbase_open".}
proc fcQTcpSocket_virtualbase_pos(self: pointer, ): clonglong {.importc: "QTcpSocket_virtualbase_pos".}
proc fcQTcpSocket_virtualbase_size(self: pointer, ): clonglong {.importc: "QTcpSocket_virtualbase_size".}
proc fcQTcpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QTcpSocket_virtualbase_seek".}
proc fcQTcpSocket_virtualbase_atEnd(self: pointer, ): bool {.importc: "QTcpSocket_virtualbase_atEnd".}
proc fcQTcpSocket_virtualbase_reset(self: pointer, ): bool {.importc: "QTcpSocket_virtualbase_reset".}
proc fcQTcpSocket_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QTcpSocket_virtualbase_canReadLine".}
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
proc fcQTcpSocket_protectedbase_sender(self: pointer, ): pointer {.importc: "QTcpSocket_protectedbase_sender".}
proc fcQTcpSocket_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTcpSocket_protectedbase_senderSignalIndex".}
proc fcQTcpSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTcpSocket_protectedbase_receivers".}
proc fcQTcpSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTcpSocket_protectedbase_isSignalConnected".}
proc fcQTcpSocket_new(vtbl: pointer, ): ptr cQTcpSocket {.importc: "QTcpSocket_new".}
proc fcQTcpSocket_new2(vtbl: pointer, parent: pointer): ptr cQTcpSocket {.importc: "QTcpSocket_new2".}
proc fcQTcpSocket_staticMetaObject(): pointer {.importc: "QTcpSocket_staticMetaObject".}

proc metaObject*(self: gen_qtcpsocket_types.QTcpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fcQTcpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring): string =
  let v_ms = fcQTcpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bindX*(self: gen_qtcpsocket_types.QTcpSocket, addrVal: cint): bool =
  fcQTcpSocket_bindX(self.h, cint(addrVal))

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQTcpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QTcpSocketconnectToHostProc* = proc(self: QTcpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void {.raises: [], gcsafe.}
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
proc QTcpSocketmetaObject*(self: gen_qtcpsocket_types.QTcpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQTcpSocket_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTcpSocketmetacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fcQTcpSocket_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTcpSocket_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTcpSocketmetacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTcpSocket_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpSocketresume*(self: gen_qtcpsocket_types.QTcpSocket, ): void =
  fcQTcpSocket_virtualbase_resume(self.h)

proc miqt_exec_callback_cQTcpSocket_resume(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  vtbl[].resume(self)

proc QTcpSocketbindX*(self: gen_qtcpsocket_types.QTcpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fcQTcpSocket_virtualbase_bindX(self.h, address.h, port, cint(mode))

proc miqt_exec_callback_cQTcpSocket_bindX(vtbl: pointer, self: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl[].bindX(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpSocketconnectToHost*(self: gen_qtcpsocket_types.QTcpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fcQTcpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

proc miqt_exec_callback_cQTcpSocket_connectToHost(vtbl: pointer, self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl[].connectToHost(self, slotval1, slotval2, slotval3, slotval4)

proc QTcpSocketdisconnectFromHost*(self: gen_qtcpsocket_types.QTcpSocket, ): void =
  fcQTcpSocket_virtualbase_disconnectFromHost(self.h)

proc miqt_exec_callback_cQTcpSocket_disconnectFromHost(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  vtbl[].disconnectFromHost(self)

proc QTcpSocketbytesAvailable*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fcQTcpSocket_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQTcpSocket_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QTcpSocketbytesToWrite*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fcQTcpSocket_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQTcpSocket_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QTcpSocketsetReadBufferSize*(self: gen_qtcpsocket_types.QTcpSocket, size: clonglong): void =
  fcQTcpSocket_virtualbase_setReadBufferSize(self.h, size)

proc miqt_exec_callback_cQTcpSocket_setReadBufferSize(vtbl: pointer, self: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = size
  vtbl[].setReadBufferSize(self, slotval1)

proc QTcpSocketsocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, ): uint =
  fcQTcpSocket_virtualbase_socketDescriptor(self.h)

proc miqt_exec_callback_cQTcpSocket_socketDescriptor(vtbl: pointer, self: pointer): uint {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].socketDescriptor(self)
  virtualReturn

proc QTcpSocketsetSocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fcQTcpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

proc miqt_exec_callback_cQTcpSocket_setSocketDescriptor(vtbl: pointer, self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl[].setSocketDescriptor(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTcpSocketsetSocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQTcpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

proc miqt_exec_callback_cQTcpSocket_setSocketOption(vtbl: pointer, self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setSocketOption(self, slotval1, slotval2)

proc QTcpSocketsocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTcpSocket_virtualbase_socketOption(self.h, cint(option)), owned: true)

proc miqt_exec_callback_cQTcpSocket_socketOption(vtbl: pointer, self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].socketOption(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTcpSocketclose*(self: gen_qtcpsocket_types.QTcpSocket, ): void =
  fcQTcpSocket_virtualbase_close(self.h)

proc miqt_exec_callback_cQTcpSocket_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  vtbl[].close(self)

proc QTcpSocketisSequential*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fcQTcpSocket_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQTcpSocket_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QTcpSocketwaitForConnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForConnected(self.h, msecs)

proc miqt_exec_callback_cQTcpSocket_waitForConnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForConnected(self, slotval1)
  virtualReturn

proc QTcpSocketwaitForReadyRead*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQTcpSocket_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QTcpSocketwaitForBytesWritten*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQTcpSocket_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QTcpSocketwaitForDisconnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fcQTcpSocket_virtualbase_waitForDisconnected(self.h, msecs)

proc miqt_exec_callback_cQTcpSocket_waitForDisconnected(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForDisconnected(self, slotval1)
  virtualReturn

proc QTcpSocketreadData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQTcpSocket_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQTcpSocket_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QTcpSocketreadLineData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQTcpSocket_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQTcpSocket_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QTcpSocketskipData*(self: gen_qtcpsocket_types.QTcpSocket, maxSize: clonglong): clonglong =
  fcQTcpSocket_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQTcpSocket_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QTcpSocketwriteData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, len: clonglong): clonglong =
  fcQTcpSocket_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQTcpSocket_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QTcpSocketopen*(self: gen_qtcpsocket_types.QTcpSocket, mode: cint): bool =
  fcQTcpSocket_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQTcpSocket_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QTcpSocketpos*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fcQTcpSocket_virtualbase_pos(self.h)

proc miqt_exec_callback_cQTcpSocket_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QTcpSocketsize*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fcQTcpSocket_virtualbase_size(self.h)

proc miqt_exec_callback_cQTcpSocket_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QTcpSocketseek*(self: gen_qtcpsocket_types.QTcpSocket, pos: clonglong): bool =
  fcQTcpSocket_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQTcpSocket_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QTcpSocketatEnd*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fcQTcpSocket_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQTcpSocket_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QTcpSocketreset*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fcQTcpSocket_virtualbase_reset(self.h)

proc miqt_exec_callback_cQTcpSocket_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QTcpSocketcanReadLine*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fcQTcpSocket_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQTcpSocket_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QTcpSocketevent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpSocket_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTcpSocket_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTcpSocketeventFilter*(self: gen_qtcpsocket_types.QTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTcpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTcpSocket_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTcpSockettimerEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTcpSocket_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTcpSocket_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTcpSocketchildEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTcpSocket_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTcpSocket_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTcpSocketcustomEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQTcpSocket_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTcpSocket_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTcpSocketconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpSocket_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTcpSocket_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTcpSocketdisconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTcpSocket_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTcpSocket_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTcpSocketVTable](vtbl)
  let self = QTcpSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTcpSocket* {.inheritable.} = ref object of QTcpSocket
  vtbl*: cQTcpSocketVTable
method metaObject*(self: VirtualQTcpSocket, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTcpSocketmetaObject(self[])
proc miqt_exec_method_cQTcpSocket_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTcpSocket, param1: cstring): pointer {.base.} =
  QTcpSocketmetacast(self[], param1)
proc miqt_exec_method_cQTcpSocket_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTcpSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTcpSocketmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQTcpSocket_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method resume*(self: VirtualQTcpSocket, ): void {.base.} =
  QTcpSocketresume(self[])
proc miqt_exec_method_cQTcpSocket_resume(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  vtbl.resume()

method bindX*(self: VirtualQTcpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool {.base.} =
  QTcpSocketbindX(self[], address, port, mode)
proc miqt_exec_method_cQTcpSocket_bindX(vtbl: pointer, inst: pointer, address: pointer, port: cushort, mode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address, owned: false)
  let slotval2 = port
  let slotval3 = cint(mode)
  var virtualReturn = vtbl.bindX(slotval1, slotval2, slotval3)
  virtualReturn

method connectToHost*(self: VirtualQTcpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void {.base.} =
  QTcpSocketconnectToHost(self[], hostName, port, mode, protocol)
proc miqt_exec_method_cQTcpSocket_connectToHost(vtbl: pointer, inst: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret
  let slotval2 = port
  let slotval3 = cint(mode)
  let slotval4 = cint(protocol)
  vtbl.connectToHost(slotval1, slotval2, slotval3, slotval4)

method disconnectFromHost*(self: VirtualQTcpSocket, ): void {.base.} =
  QTcpSocketdisconnectFromHost(self[])
proc miqt_exec_method_cQTcpSocket_disconnectFromHost(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  vtbl.disconnectFromHost()

method bytesAvailable*(self: VirtualQTcpSocket, ): clonglong {.base.} =
  QTcpSocketbytesAvailable(self[])
proc miqt_exec_method_cQTcpSocket_bytesAvailable(vtbl: pointer, inst: pointer): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQTcpSocket, ): clonglong {.base.} =
  QTcpSocketbytesToWrite(self[])
proc miqt_exec_method_cQTcpSocket_bytesToWrite(vtbl: pointer, inst: pointer): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.bytesToWrite()
  virtualReturn

method setReadBufferSize*(self: VirtualQTcpSocket, size: clonglong): void {.base.} =
  QTcpSocketsetReadBufferSize(self[], size)
proc miqt_exec_method_cQTcpSocket_setReadBufferSize(vtbl: pointer, inst: pointer, size: clonglong): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = size
  vtbl.setReadBufferSize(slotval1)

method socketDescriptor*(self: VirtualQTcpSocket, ): uint {.base.} =
  QTcpSocketsocketDescriptor(self[])
proc miqt_exec_method_cQTcpSocket_socketDescriptor(vtbl: pointer, inst: pointer): uint {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.socketDescriptor()
  virtualReturn

method setSocketDescriptor*(self: VirtualQTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool {.base.} =
  QTcpSocketsetSocketDescriptor(self[], socketDescriptor, state, openMode)
proc miqt_exec_method_cQTcpSocket_setSocketDescriptor(vtbl: pointer, inst: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = socketDescriptor
  let slotval2 = cint(state)
  let slotval3 = cint(openMode)
  var virtualReturn = vtbl.setSocketDescriptor(slotval1, slotval2, slotval3)
  virtualReturn

method setSocketOption*(self: VirtualQTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QTcpSocketsetSocketOption(self[], option, value)
proc miqt_exec_method_cQTcpSocket_setSocketOption(vtbl: pointer, inst: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl.setSocketOption(slotval1, slotval2)

method socketOption*(self: VirtualQTcpSocket, option: cint): gen_qvariant_types.QVariant {.base.} =
  QTcpSocketsocketOption(self[], option)
proc miqt_exec_method_cQTcpSocket_socketOption(vtbl: pointer, inst: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = cint(option)
  var virtualReturn = vtbl.socketOption(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method close*(self: VirtualQTcpSocket, ): void {.base.} =
  QTcpSocketclose(self[])
proc miqt_exec_method_cQTcpSocket_close(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  vtbl.close()

method isSequential*(self: VirtualQTcpSocket, ): bool {.base.} =
  QTcpSocketisSequential(self[])
proc miqt_exec_method_cQTcpSocket_isSequential(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.isSequential()
  virtualReturn

method waitForConnected*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForConnected(self[], msecs)
proc miqt_exec_method_cQTcpSocket_waitForConnected(vtbl: pointer, inst: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = msecs
  var virtualReturn = vtbl.waitForConnected(slotval1)
  virtualReturn

method waitForReadyRead*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForReadyRead(self[], msecs)
proc miqt_exec_method_cQTcpSocket_waitForReadyRead(vtbl: pointer, inst: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = msecs
  var virtualReturn = vtbl.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForBytesWritten(self[], msecs)
proc miqt_exec_method_cQTcpSocket_waitForBytesWritten(vtbl: pointer, inst: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = msecs
  var virtualReturn = vtbl.waitForBytesWritten(slotval1)
  virtualReturn

method waitForDisconnected*(self: VirtualQTcpSocket, msecs: cint): bool {.base.} =
  QTcpSocketwaitForDisconnected(self[], msecs)
proc miqt_exec_method_cQTcpSocket_waitForDisconnected(vtbl: pointer, inst: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = msecs
  var virtualReturn = vtbl.waitForDisconnected(slotval1)
  virtualReturn

method readData*(self: VirtualQTcpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTcpSocketreadData(self[], data, maxlen)
proc miqt_exec_method_cQTcpSocket_readData(vtbl: pointer, inst: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQTcpSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTcpSocketreadLineData(self[], data, maxlen)
proc miqt_exec_method_cQTcpSocket_readLineData(vtbl: pointer, inst: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl.readLineData(slotval1, slotval2)
  virtualReturn

method skipData*(self: VirtualQTcpSocket, maxSize: clonglong): clonglong {.base.} =
  QTcpSocketskipData(self[], maxSize)
proc miqt_exec_method_cQTcpSocket_skipData(vtbl: pointer, inst: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = maxSize
  var virtualReturn = vtbl.skipData(slotval1)
  virtualReturn

method writeData*(self: VirtualQTcpSocket, data: cstring, len: clonglong): clonglong {.base.} =
  QTcpSocketwriteData(self[], data, len)
proc miqt_exec_method_cQTcpSocket_writeData(vtbl: pointer, inst: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl.writeData(slotval1, slotval2)
  virtualReturn

method open*(self: VirtualQTcpSocket, mode: cint): bool {.base.} =
  QTcpSocketopen(self[], mode)
proc miqt_exec_method_cQTcpSocket_open(vtbl: pointer, inst: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = cint(mode)
  var virtualReturn = vtbl.open(slotval1)
  virtualReturn

method pos*(self: VirtualQTcpSocket, ): clonglong {.base.} =
  QTcpSocketpos(self[])
proc miqt_exec_method_cQTcpSocket_pos(vtbl: pointer, inst: pointer): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.pos()
  virtualReturn

method size*(self: VirtualQTcpSocket, ): clonglong {.base.} =
  QTcpSocketsize(self[])
proc miqt_exec_method_cQTcpSocket_size(vtbl: pointer, inst: pointer): clonglong {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.size()
  virtualReturn

method seek*(self: VirtualQTcpSocket, pos: clonglong): bool {.base.} =
  QTcpSocketseek(self[], pos)
proc miqt_exec_method_cQTcpSocket_seek(vtbl: pointer, inst: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = pos
  var virtualReturn = vtbl.seek(slotval1)
  virtualReturn

method atEnd*(self: VirtualQTcpSocket, ): bool {.base.} =
  QTcpSocketatEnd(self[])
proc miqt_exec_method_cQTcpSocket_atEnd(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.atEnd()
  virtualReturn

method reset*(self: VirtualQTcpSocket, ): bool {.base.} =
  QTcpSocketreset(self[])
proc miqt_exec_method_cQTcpSocket_reset(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.reset()
  virtualReturn

method canReadLine*(self: VirtualQTcpSocket, ): bool {.base.} =
  QTcpSocketcanReadLine(self[])
proc miqt_exec_method_cQTcpSocket_canReadLine(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  var virtualReturn = vtbl.canReadLine()
  virtualReturn

method event*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpSocketevent(self[], event)
proc miqt_exec_method_cQTcpSocket_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTcpSocketeventFilter(self[], watched, event)
proc miqt_exec_method_cQTcpSocket_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTcpSockettimerEvent(self[], event)
proc miqt_exec_method_cQTcpSocket_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTcpSocketchildEvent(self[], event)
proc miqt_exec_method_cQTcpSocket_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQTcpSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTcpSocketcustomEvent(self[], event)
proc miqt_exec_method_cQTcpSocket_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpSocketconnectNotify(self[], signal)
proc miqt_exec_method_cQTcpSocket_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTcpSocketdisconnectNotify(self[], signal)
proc miqt_exec_method_cQTcpSocket_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTcpSocket](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

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

proc setPeerName*(self: gen_qtcpsocket_types.QTcpSocket, name: string): void =
  fcQTcpSocket_protectedbase_setPeerName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setOpenMode*(self: gen_qtcpsocket_types.QTcpSocket, openMode: cint): void =
  fcQTcpSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qtcpsocket_types.QTcpSocket, errorString: string): void =
  fcQTcpSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qtcpsocket_types.QTcpSocket, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTcpSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtcpsocket_types.QTcpSocket, ): cint =
  fcQTcpSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtcpsocket_types.QTcpSocket, signal: cstring): cint =
  fcQTcpSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTcpSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    vtbl: ref QTcpSocketVTable = nil): gen_qtcpsocket_types.QTcpSocket =
  let vtbl = if vtbl == nil: new QTcpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpSocketVTable, _: ptr cQTcpSocket) {.cdecl.} =
    let vtbl = cast[ref QTcpSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTcpSocket_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTcpSocket_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTcpSocket_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQTcpSocket_resume
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQTcpSocket_bindX
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQTcpSocket_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQTcpSocket_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQTcpSocket_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQTcpSocket_bytesToWrite
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQTcpSocket_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQTcpSocket_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQTcpSocket_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQTcpSocket_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQTcpSocket_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = miqt_exec_callback_cQTcpSocket_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQTcpSocket_isSequential
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQTcpSocket_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQTcpSocket_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQTcpSocket_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQTcpSocket_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQTcpSocket_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQTcpSocket_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQTcpSocket_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQTcpSocket_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = miqt_exec_callback_cQTcpSocket_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQTcpSocket_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQTcpSocket_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQTcpSocket_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQTcpSocket_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTcpSocket_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQTcpSocket_canReadLine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTcpSocket_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTcpSocket_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTcpSocket_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTcpSocket_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTcpSocket_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTcpSocket_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTcpSocket_disconnectNotify
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpSocket_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTcpSocketVTable = nil): gen_qtcpsocket_types.QTcpSocket =
  let vtbl = if vtbl == nil: new QTcpSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpSocketVTable, _: ptr cQTcpSocket) {.cdecl.} =
    let vtbl = cast[ref QTcpSocketVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTcpSocket_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTcpSocket_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTcpSocket_metacall
  if not isNil(vtbl[].resume):
    vtbl[].vtbl.resume = miqt_exec_callback_cQTcpSocket_resume
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQTcpSocket_bindX
  if not isNil(vtbl[].connectToHost):
    vtbl[].vtbl.connectToHost = miqt_exec_callback_cQTcpSocket_connectToHost
  if not isNil(vtbl[].disconnectFromHost):
    vtbl[].vtbl.disconnectFromHost = miqt_exec_callback_cQTcpSocket_disconnectFromHost
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQTcpSocket_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQTcpSocket_bytesToWrite
  if not isNil(vtbl[].setReadBufferSize):
    vtbl[].vtbl.setReadBufferSize = miqt_exec_callback_cQTcpSocket_setReadBufferSize
  if not isNil(vtbl[].socketDescriptor):
    vtbl[].vtbl.socketDescriptor = miqt_exec_callback_cQTcpSocket_socketDescriptor
  if not isNil(vtbl[].setSocketDescriptor):
    vtbl[].vtbl.setSocketDescriptor = miqt_exec_callback_cQTcpSocket_setSocketDescriptor
  if not isNil(vtbl[].setSocketOption):
    vtbl[].vtbl.setSocketOption = miqt_exec_callback_cQTcpSocket_setSocketOption
  if not isNil(vtbl[].socketOption):
    vtbl[].vtbl.socketOption = miqt_exec_callback_cQTcpSocket_socketOption
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = miqt_exec_callback_cQTcpSocket_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQTcpSocket_isSequential
  if not isNil(vtbl[].waitForConnected):
    vtbl[].vtbl.waitForConnected = miqt_exec_callback_cQTcpSocket_waitForConnected
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQTcpSocket_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQTcpSocket_waitForBytesWritten
  if not isNil(vtbl[].waitForDisconnected):
    vtbl[].vtbl.waitForDisconnected = miqt_exec_callback_cQTcpSocket_waitForDisconnected
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQTcpSocket_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQTcpSocket_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQTcpSocket_skipData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQTcpSocket_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = miqt_exec_callback_cQTcpSocket_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQTcpSocket_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQTcpSocket_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQTcpSocket_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQTcpSocket_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTcpSocket_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQTcpSocket_canReadLine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTcpSocket_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTcpSocket_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTcpSocket_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTcpSocket_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTcpSocket_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTcpSocket_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTcpSocket_disconnectNotify
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpSocket_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    vtbl: VirtualQTcpSocket) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpSocketVTable, _: ptr cQTcpSocket) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTcpSocket()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTcpSocket_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTcpSocket_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTcpSocket_metacall
  vtbl[].vtbl.resume = miqt_exec_method_cQTcpSocket_resume
  vtbl[].vtbl.bindX = miqt_exec_method_cQTcpSocket_bindX
  vtbl[].vtbl.connectToHost = miqt_exec_method_cQTcpSocket_connectToHost
  vtbl[].vtbl.disconnectFromHost = miqt_exec_method_cQTcpSocket_disconnectFromHost
  vtbl[].vtbl.bytesAvailable = miqt_exec_method_cQTcpSocket_bytesAvailable
  vtbl[].vtbl.bytesToWrite = miqt_exec_method_cQTcpSocket_bytesToWrite
  vtbl[].vtbl.setReadBufferSize = miqt_exec_method_cQTcpSocket_setReadBufferSize
  vtbl[].vtbl.socketDescriptor = miqt_exec_method_cQTcpSocket_socketDescriptor
  vtbl[].vtbl.setSocketDescriptor = miqt_exec_method_cQTcpSocket_setSocketDescriptor
  vtbl[].vtbl.setSocketOption = miqt_exec_method_cQTcpSocket_setSocketOption
  vtbl[].vtbl.socketOption = miqt_exec_method_cQTcpSocket_socketOption
  vtbl[].vtbl.close = miqt_exec_method_cQTcpSocket_close
  vtbl[].vtbl.isSequential = miqt_exec_method_cQTcpSocket_isSequential
  vtbl[].vtbl.waitForConnected = miqt_exec_method_cQTcpSocket_waitForConnected
  vtbl[].vtbl.waitForReadyRead = miqt_exec_method_cQTcpSocket_waitForReadyRead
  vtbl[].vtbl.waitForBytesWritten = miqt_exec_method_cQTcpSocket_waitForBytesWritten
  vtbl[].vtbl.waitForDisconnected = miqt_exec_method_cQTcpSocket_waitForDisconnected
  vtbl[].vtbl.readData = miqt_exec_method_cQTcpSocket_readData
  vtbl[].vtbl.readLineData = miqt_exec_method_cQTcpSocket_readLineData
  vtbl[].vtbl.skipData = miqt_exec_method_cQTcpSocket_skipData
  vtbl[].vtbl.writeData = miqt_exec_method_cQTcpSocket_writeData
  vtbl[].vtbl.open = miqt_exec_method_cQTcpSocket_open
  vtbl[].vtbl.pos = miqt_exec_method_cQTcpSocket_pos
  vtbl[].vtbl.size = miqt_exec_method_cQTcpSocket_size
  vtbl[].vtbl.seek = miqt_exec_method_cQTcpSocket_seek
  vtbl[].vtbl.atEnd = miqt_exec_method_cQTcpSocket_atEnd
  vtbl[].vtbl.reset = miqt_exec_method_cQTcpSocket_reset
  vtbl[].vtbl.canReadLine = miqt_exec_method_cQTcpSocket_canReadLine
  vtbl[].vtbl.event = miqt_exec_method_cQTcpSocket_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTcpSocket_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTcpSocket_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTcpSocket_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTcpSocket_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTcpSocket_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTcpSocket_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTcpSocket_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qtcpsocket_types.QTcpSocket,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQTcpSocket) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTcpSocketVTable, _: ptr cQTcpSocket) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTcpSocket()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTcpSocket, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTcpSocket_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTcpSocket_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTcpSocket_metacall
  vtbl[].vtbl.resume = miqt_exec_method_cQTcpSocket_resume
  vtbl[].vtbl.bindX = miqt_exec_method_cQTcpSocket_bindX
  vtbl[].vtbl.connectToHost = miqt_exec_method_cQTcpSocket_connectToHost
  vtbl[].vtbl.disconnectFromHost = miqt_exec_method_cQTcpSocket_disconnectFromHost
  vtbl[].vtbl.bytesAvailable = miqt_exec_method_cQTcpSocket_bytesAvailable
  vtbl[].vtbl.bytesToWrite = miqt_exec_method_cQTcpSocket_bytesToWrite
  vtbl[].vtbl.setReadBufferSize = miqt_exec_method_cQTcpSocket_setReadBufferSize
  vtbl[].vtbl.socketDescriptor = miqt_exec_method_cQTcpSocket_socketDescriptor
  vtbl[].vtbl.setSocketDescriptor = miqt_exec_method_cQTcpSocket_setSocketDescriptor
  vtbl[].vtbl.setSocketOption = miqt_exec_method_cQTcpSocket_setSocketOption
  vtbl[].vtbl.socketOption = miqt_exec_method_cQTcpSocket_socketOption
  vtbl[].vtbl.close = miqt_exec_method_cQTcpSocket_close
  vtbl[].vtbl.isSequential = miqt_exec_method_cQTcpSocket_isSequential
  vtbl[].vtbl.waitForConnected = miqt_exec_method_cQTcpSocket_waitForConnected
  vtbl[].vtbl.waitForReadyRead = miqt_exec_method_cQTcpSocket_waitForReadyRead
  vtbl[].vtbl.waitForBytesWritten = miqt_exec_method_cQTcpSocket_waitForBytesWritten
  vtbl[].vtbl.waitForDisconnected = miqt_exec_method_cQTcpSocket_waitForDisconnected
  vtbl[].vtbl.readData = miqt_exec_method_cQTcpSocket_readData
  vtbl[].vtbl.readLineData = miqt_exec_method_cQTcpSocket_readLineData
  vtbl[].vtbl.skipData = miqt_exec_method_cQTcpSocket_skipData
  vtbl[].vtbl.writeData = miqt_exec_method_cQTcpSocket_writeData
  vtbl[].vtbl.open = miqt_exec_method_cQTcpSocket_open
  vtbl[].vtbl.pos = miqt_exec_method_cQTcpSocket_pos
  vtbl[].vtbl.size = miqt_exec_method_cQTcpSocket_size
  vtbl[].vtbl.seek = miqt_exec_method_cQTcpSocket_seek
  vtbl[].vtbl.atEnd = miqt_exec_method_cQTcpSocket_atEnd
  vtbl[].vtbl.reset = miqt_exec_method_cQTcpSocket_reset
  vtbl[].vtbl.canReadLine = miqt_exec_method_cQTcpSocket_canReadLine
  vtbl[].vtbl.event = miqt_exec_method_cQTcpSocket_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTcpSocket_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTcpSocket_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTcpSocket_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTcpSocket_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTcpSocket_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTcpSocket_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTcpSocket_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtcpsocket_types.QTcpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_staticMetaObject())
