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
{.compile("gen_qlocalsocket.cpp", cflags).}


type QLocalSocketLocalSocketErrorEnum* = distinct cint
template ConnectionRefusedError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 0
template PeerClosedError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 1
template ServerNotFoundError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 2
template SocketAccessError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 3
template SocketResourceError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 4
template SocketTimeoutError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 5
template DatagramTooLargeError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 6
template ConnectionError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 7
template UnsupportedSocketOperationError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 10
template UnknownSocketError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = -1
template OperationError*(_: type QLocalSocketLocalSocketErrorEnum): untyped = 19


type QLocalSocketLocalSocketStateEnum* = distinct cint
template UnconnectedState*(_: type QLocalSocketLocalSocketStateEnum): untyped = 0
template ConnectingState*(_: type QLocalSocketLocalSocketStateEnum): untyped = 2
template ConnectedState*(_: type QLocalSocketLocalSocketStateEnum): untyped = 3
template ClosingState*(_: type QLocalSocketLocalSocketStateEnum): untyped = 6


import ./gen_qlocalsocket_types
export gen_qlocalsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qiodevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQLocalSocket*{.exportc: "QLocalSocket", incompleteStruct.} = object

proc fcQLocalSocket_new(): ptr cQLocalSocket {.importc: "QLocalSocket_new".}
proc fcQLocalSocket_new2(parent: pointer): ptr cQLocalSocket {.importc: "QLocalSocket_new2".}
proc fcQLocalSocket_metaObject(self: pointer, ): pointer {.importc: "QLocalSocket_metaObject".}
proc fcQLocalSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalSocket_metacast".}
proc fcQLocalSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalSocket_metacall".}
proc fcQLocalSocket_tr(s: cstring): struct_miqt_string {.importc: "QLocalSocket_tr".}
proc fcQLocalSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QLocalSocket_trUtf8".}
proc fcQLocalSocket_connectToServer(self: pointer, ): void {.importc: "QLocalSocket_connectToServer".}
proc fcQLocalSocket_connectToServerWithName(self: pointer, name: struct_miqt_string): void {.importc: "QLocalSocket_connectToServerWithName".}
proc fcQLocalSocket_disconnectFromServer(self: pointer, ): void {.importc: "QLocalSocket_disconnectFromServer".}
proc fcQLocalSocket_setServerName(self: pointer, name: struct_miqt_string): void {.importc: "QLocalSocket_setServerName".}
proc fcQLocalSocket_serverName(self: pointer, ): struct_miqt_string {.importc: "QLocalSocket_serverName".}
proc fcQLocalSocket_fullServerName(self: pointer, ): struct_miqt_string {.importc: "QLocalSocket_fullServerName".}
proc fcQLocalSocket_abort(self: pointer, ): void {.importc: "QLocalSocket_abort".}
proc fcQLocalSocket_isSequential(self: pointer, ): bool {.importc: "QLocalSocket_isSequential".}
proc fcQLocalSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QLocalSocket_bytesAvailable".}
proc fcQLocalSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QLocalSocket_bytesToWrite".}
proc fcQLocalSocket_canReadLine(self: pointer, ): bool {.importc: "QLocalSocket_canReadLine".}
proc fcQLocalSocket_open(self: pointer, openMode: cint): bool {.importc: "QLocalSocket_open".}
proc fcQLocalSocket_close(self: pointer, ): void {.importc: "QLocalSocket_close".}
proc fcQLocalSocket_error(self: pointer, ): cint {.importc: "QLocalSocket_error".}
proc fcQLocalSocket_flush(self: pointer, ): bool {.importc: "QLocalSocket_flush".}
proc fcQLocalSocket_isValid(self: pointer, ): bool {.importc: "QLocalSocket_isValid".}
proc fcQLocalSocket_readBufferSize(self: pointer, ): clonglong {.importc: "QLocalSocket_readBufferSize".}
proc fcQLocalSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QLocalSocket_setReadBufferSize".}
proc fcQLocalSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QLocalSocket_setSocketDescriptor".}
proc fcQLocalSocket_socketDescriptor(self: pointer, ): uint {.importc: "QLocalSocket_socketDescriptor".}
proc fcQLocalSocket_state(self: pointer, ): cint {.importc: "QLocalSocket_state".}
proc fcQLocalSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForBytesWritten".}
proc fcQLocalSocket_waitForConnected(self: pointer, ): bool {.importc: "QLocalSocket_waitForConnected".}
proc fcQLocalSocket_waitForDisconnected(self: pointer, ): bool {.importc: "QLocalSocket_waitForDisconnected".}
proc fcQLocalSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForReadyRead".}
proc fcQLocalSocket_connected(self: pointer, ): void {.importc: "QLocalSocket_connected".}
proc fcQLocalSocket_connect_connected(self: pointer, slot: int) {.importc: "QLocalSocket_connect_connected".}
proc fcQLocalSocket_disconnected(self: pointer, ): void {.importc: "QLocalSocket_disconnected".}
proc fcQLocalSocket_connect_disconnected(self: pointer, slot: int) {.importc: "QLocalSocket_connect_disconnected".}
proc fcQLocalSocket_errorWithSocketError(self: pointer, socketError: cint): void {.importc: "QLocalSocket_errorWithSocketError".}
proc fcQLocalSocket_connect_errorWithSocketError(self: pointer, slot: int) {.importc: "QLocalSocket_connect_errorWithSocketError".}
proc fcQLocalSocket_errorOccurred(self: pointer, socketError: cint): void {.importc: "QLocalSocket_errorOccurred".}
proc fcQLocalSocket_connect_errorOccurred(self: pointer, slot: int) {.importc: "QLocalSocket_connect_errorOccurred".}
proc fcQLocalSocket_stateChanged(self: pointer, socketState: cint): void {.importc: "QLocalSocket_stateChanged".}
proc fcQLocalSocket_connect_stateChanged(self: pointer, slot: int) {.importc: "QLocalSocket_connect_stateChanged".}
proc fcQLocalSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLocalSocket_tr2".}
proc fcQLocalSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLocalSocket_tr3".}
proc fcQLocalSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLocalSocket_trUtf82".}
proc fcQLocalSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLocalSocket_trUtf83".}
proc fcQLocalSocket_connectToServer1(self: pointer, openMode: cint): void {.importc: "QLocalSocket_connectToServer1".}
proc fcQLocalSocket_connectToServer2(self: pointer, name: struct_miqt_string, openMode: cint): void {.importc: "QLocalSocket_connectToServer2".}
proc fcQLocalSocket_setSocketDescriptor2(self: pointer, socketDescriptor: uint, socketState: cint): bool {.importc: "QLocalSocket_setSocketDescriptor2".}
proc fcQLocalSocket_setSocketDescriptor3(self: pointer, socketDescriptor: uint, socketState: cint, openMode: cint): bool {.importc: "QLocalSocket_setSocketDescriptor3".}
proc fcQLocalSocket_waitForConnected1(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForConnected1".}
proc fcQLocalSocket_waitForDisconnected1(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForDisconnected1".}
proc fQLocalSocket_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QLocalSocket_virtualbase_metaObject".}
proc fcQLocalSocket_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_metaObject".}
proc fQLocalSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QLocalSocket_virtualbase_metacast".}
proc fcQLocalSocket_override_virtual_metacast(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_metacast".}
proc fQLocalSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLocalSocket_virtualbase_metacall".}
proc fcQLocalSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_metacall".}
proc fQLocalSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_isSequential".}
proc fcQLocalSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_isSequential".}
proc fQLocalSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_bytesAvailable".}
proc fcQLocalSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_bytesAvailable".}
proc fQLocalSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_bytesToWrite".}
proc fcQLocalSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_bytesToWrite".}
proc fQLocalSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_canReadLine".}
proc fcQLocalSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_canReadLine".}
proc fQLocalSocket_virtualbase_open(self: pointer, openMode: cint): bool{.importc: "QLocalSocket_virtualbase_open".}
proc fcQLocalSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_open".}
proc fQLocalSocket_virtualbase_close(self: pointer, ): void{.importc: "QLocalSocket_virtualbase_close".}
proc fcQLocalSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_close".}
proc fQLocalSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QLocalSocket_virtualbase_waitForBytesWritten".}
proc fcQLocalSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_waitForBytesWritten".}
proc fQLocalSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QLocalSocket_virtualbase_waitForReadyRead".}
proc fcQLocalSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_waitForReadyRead".}
proc fQLocalSocket_virtualbase_readData(self: pointer, param1: cstring, param2: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_readData".}
proc fcQLocalSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_readData".}
proc fQLocalSocket_virtualbase_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_writeData".}
proc fcQLocalSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_writeData".}
proc fQLocalSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_pos".}
proc fcQLocalSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_pos".}
proc fQLocalSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_size".}
proc fcQLocalSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_size".}
proc fQLocalSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QLocalSocket_virtualbase_seek".}
proc fcQLocalSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_seek".}
proc fQLocalSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_atEnd".}
proc fcQLocalSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_atEnd".}
proc fQLocalSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_reset".}
proc fcQLocalSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_reset".}
proc fQLocalSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_readLineData".}
proc fcQLocalSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_readLineData".}
proc fQLocalSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLocalSocket_virtualbase_event".}
proc fcQLocalSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_event".}
proc fQLocalSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLocalSocket_virtualbase_eventFilter".}
proc fcQLocalSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_eventFilter".}
proc fQLocalSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLocalSocket_virtualbase_timerEvent".}
proc fcQLocalSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_timerEvent".}
proc fQLocalSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLocalSocket_virtualbase_childEvent".}
proc fcQLocalSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_childEvent".}
proc fQLocalSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLocalSocket_virtualbase_customEvent".}
proc fcQLocalSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_customEvent".}
proc fQLocalSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLocalSocket_virtualbase_connectNotify".}
proc fcQLocalSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_connectNotify".}
proc fQLocalSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLocalSocket_virtualbase_disconnectNotify".}
proc fcQLocalSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_disconnectNotify".}
proc fcQLocalSocket_staticMetaObject(): pointer {.importc: "QLocalSocket_staticMetaObject".}
proc fcQLocalSocket_delete(self: pointer) {.importc: "QLocalSocket_delete".}


func init*(T: type gen_qlocalsocket_types.QLocalSocket, h: ptr cQLocalSocket): gen_qlocalsocket_types.QLocalSocket =
  T(h: h)
proc create*(T: type gen_qlocalsocket_types.QLocalSocket, ): gen_qlocalsocket_types.QLocalSocket =
  gen_qlocalsocket_types.QLocalSocket.init(fcQLocalSocket_new())

proc create*(T: type gen_qlocalsocket_types.QLocalSocket, parent: gen_qobject_types.QObject): gen_qlocalsocket_types.QLocalSocket =
  gen_qlocalsocket_types.QLocalSocket.init(fcQLocalSocket_new2(parent.h))

proc metaObject*(self: gen_qlocalsocket_types.QLocalSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalSocket_metaObject(self.h))

proc metacast*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring): pointer =
  fcQLocalSocket_metacast(self.h, param1)

proc metacall*(self: gen_qlocalsocket_types.QLocalSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQLocalSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring): string =
  let v_ms = fcQLocalSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring): string =
  let v_ms = fcQLocalSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fcQLocalSocket_connectToServer(self.h)

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, name: string): void =
  fcQLocalSocket_connectToServerWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc disconnectFromServer*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fcQLocalSocket_disconnectFromServer(self.h)

proc setServerName*(self: gen_qlocalsocket_types.QLocalSocket, name: string): void =
  fcQLocalSocket_setServerName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc serverName*(self: gen_qlocalsocket_types.QLocalSocket, ): string =
  let v_ms = fcQLocalSocket_serverName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fullServerName*(self: gen_qlocalsocket_types.QLocalSocket, ): string =
  let v_ms = fcQLocalSocket_fullServerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc abort*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fcQLocalSocket_abort(self.h)

proc isSequential*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fcQLocalSocket_isSequential(self.h)

proc bytesAvailable*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fcQLocalSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fcQLocalSocket_bytesToWrite(self.h)

proc canReadLine*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fcQLocalSocket_canReadLine(self.h)

proc open*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): bool =
  fcQLocalSocket_open(self.h, cint(openMode))

proc close*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fcQLocalSocket_close(self.h)

proc error*(self: gen_qlocalsocket_types.QLocalSocket, ): cint =
  cint(fcQLocalSocket_error(self.h))

proc flush*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fcQLocalSocket_flush(self.h)

proc isValid*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fcQLocalSocket_isValid(self.h)

proc readBufferSize*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fcQLocalSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: gen_qlocalsocket_types.QLocalSocket, size: clonglong): void =
  fcQLocalSocket_setReadBufferSize(self.h, size)

proc setSocketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, socketDescriptor: uint): bool =
  fcQLocalSocket_setSocketDescriptor(self.h, socketDescriptor)

proc socketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, ): uint =
  fcQLocalSocket_socketDescriptor(self.h)

proc state*(self: gen_qlocalsocket_types.QLocalSocket, ): cint =
  cint(fcQLocalSocket_state(self.h))

proc waitForBytesWritten*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForBytesWritten(self.h, msecs)

proc waitForConnected*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fcQLocalSocket_waitForConnected(self.h)

proc waitForDisconnected*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fcQLocalSocket_waitForDisconnected(self.h)

proc waitForReadyRead*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForReadyRead(self.h, msecs)

proc connected*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fcQLocalSocket_connected(self.h)

type QLocalSocketconnectedSlot* = proc()
proc miqt_exec_callback_QLocalSocket_connected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLocalSocketconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc onconnected*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketconnectedSlot) =
  var tmp = new QLocalSocketconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_connected(self.h, cast[int](addr tmp[]))

proc disconnected*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fcQLocalSocket_disconnected(self.h)

type QLocalSocketdisconnectedSlot* = proc()
proc miqt_exec_callback_QLocalSocket_disconnected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLocalSocketdisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondisconnected*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketdisconnectedSlot) =
  var tmp = new QLocalSocketdisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_disconnected(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qlocalsocket_types.QLocalSocket, socketError: cint): void =
  fcQLocalSocket_errorWithSocketError(self.h, cint(socketError))

type QLocalSocketerrorWithSocketErrorSlot* = proc(socketError: cint)
proc miqt_exec_callback_QLocalSocket_errorWithSocketError(slot: int, socketError: cint) {.exportc.} =
  let nimfunc = cast[ptr QLocalSocketerrorWithSocketErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc onerror*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketerrorWithSocketErrorSlot) =
  var tmp = new QLocalSocketerrorWithSocketErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_errorWithSocketError(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qlocalsocket_types.QLocalSocket, socketError: cint): void =
  fcQLocalSocket_errorOccurred(self.h, cint(socketError))

type QLocalSocketerrorOccurredSlot* = proc(socketError: cint)
proc miqt_exec_callback_QLocalSocket_errorOccurred(slot: int, socketError: cint) {.exportc.} =
  let nimfunc = cast[ptr QLocalSocketerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc onerrorOccurred*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketerrorOccurredSlot) =
  var tmp = new QLocalSocketerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qlocalsocket_types.QLocalSocket, socketState: cint): void =
  fcQLocalSocket_stateChanged(self.h, cint(socketState))

type QLocalSocketstateChangedSlot* = proc(socketState: cint)
proc miqt_exec_callback_QLocalSocket_stateChanged(slot: int, socketState: cint) {.exportc.} =
  let nimfunc = cast[ptr QLocalSocketstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(socketState)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketstateChangedSlot) =
  var tmp = new QLocalSocketstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring): string =
  let v_ms = fcQLocalSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLocalSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring): string =
  let v_ms = fcQLocalSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLocalSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): void =
  fcQLocalSocket_connectToServer1(self.h, cint(openMode))

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, name: string, openMode: cint): void =
  fcQLocalSocket_connectToServer2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), cint(openMode))

proc setSocketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, socketDescriptor: uint, socketState: cint): bool =
  fcQLocalSocket_setSocketDescriptor2(self.h, socketDescriptor, cint(socketState))

proc setSocketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, socketDescriptor: uint, socketState: cint, openMode: cint): bool =
  fcQLocalSocket_setSocketDescriptor3(self.h, socketDescriptor, cint(socketState), cint(openMode))

proc waitForConnected*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForConnected1(self.h, msecs)

proc waitForDisconnected*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForDisconnected1(self.h, msecs)

proc QLocalSocketmetaObject*(self: gen_qlocalsocket_types.QLocalSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQLocalSocket_virtualbase_metaObject(self.h))

type QLocalSocketmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketmetaObjectProc) =
  # TODO check subclass
  var tmp = new QLocalSocketmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_metaObject(self: ptr cQLocalSocket, slot: int): pointer {.exportc: "miqt_exec_callback_QLocalSocket_metaObject ".} =
  var nimfunc = cast[ptr QLocalSocketmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLocalSocketmetacast*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring): pointer =
  fQLocalSocket_virtualbase_metacast(self.h, param1)

type QLocalSocketmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketmetacastProc) =
  # TODO check subclass
  var tmp = new QLocalSocketmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_metacast(self: ptr cQLocalSocket, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QLocalSocket_metacast ".} =
  var nimfunc = cast[ptr QLocalSocketmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalSocketmetacall*(self: gen_qlocalsocket_types.QLocalSocket, param1: cint, param2: cint, param3: pointer): cint =
  fQLocalSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLocalSocketmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketmetacallProc) =
  # TODO check subclass
  var tmp = new QLocalSocketmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_metacall(self: ptr cQLocalSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLocalSocket_metacall ".} =
  var nimfunc = cast[ptr QLocalSocketmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QLocalSocketisSequential*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fQLocalSocket_virtualbase_isSequential(self.h)

type QLocalSocketisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketisSequentialProc) =
  # TODO check subclass
  var tmp = new QLocalSocketisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_isSequential(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_isSequential ".} =
  var nimfunc = cast[ptr QLocalSocketisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketbytesAvailable*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fQLocalSocket_virtualbase_bytesAvailable(self.h)

type QLocalSocketbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QLocalSocketbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_bytesAvailable(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_bytesAvailable ".} =
  var nimfunc = cast[ptr QLocalSocketbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketbytesToWrite*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fQLocalSocket_virtualbase_bytesToWrite(self.h)

type QLocalSocketbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QLocalSocketbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_bytesToWrite(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_bytesToWrite ".} =
  var nimfunc = cast[ptr QLocalSocketbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketcanReadLine*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fQLocalSocket_virtualbase_canReadLine(self.h)

type QLocalSocketcanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketcanReadLineProc) =
  # TODO check subclass
  var tmp = new QLocalSocketcanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_canReadLine(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_canReadLine ".} =
  var nimfunc = cast[ptr QLocalSocketcanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketopen*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): bool =
  fQLocalSocket_virtualbase_open(self.h, cint(openMode))

type QLocalSocketopenProc* = proc(openMode: cint): bool
proc onopen*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketopenProc) =
  # TODO check subclass
  var tmp = new QLocalSocketopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_open(self: ptr cQLocalSocket, slot: int, openMode: cint): bool {.exportc: "miqt_exec_callback_QLocalSocket_open ".} =
  var nimfunc = cast[ptr QLocalSocketopenProc](cast[pointer](slot))
  let slotval1 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalSocketclose*(self: gen_qlocalsocket_types.QLocalSocket, ): void =
  fQLocalSocket_virtualbase_close(self.h)

type QLocalSocketcloseProc* = proc(): void
proc onclose*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketcloseProc) =
  # TODO check subclass
  var tmp = new QLocalSocketcloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_close(self: ptr cQLocalSocket, slot: int): void {.exportc: "miqt_exec_callback_QLocalSocket_close ".} =
  var nimfunc = cast[ptr QLocalSocketcloseProc](cast[pointer](slot))

  nimfunc[]()
proc QLocalSocketwaitForBytesWritten*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fQLocalSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QLocalSocketwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QLocalSocketwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_waitForBytesWritten(self: ptr cQLocalSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QLocalSocket_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QLocalSocketwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalSocketwaitForReadyRead*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fQLocalSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QLocalSocketwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QLocalSocketwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_waitForReadyRead(self: ptr cQLocalSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QLocalSocket_waitForReadyRead ".} =
  var nimfunc = cast[ptr QLocalSocketwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalSocketreadData*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring, param2: clonglong): clonglong =
  fQLocalSocket_virtualbase_readData(self.h, param1, param2)

type QLocalSocketreadDataProc* = proc(param1: cstring, param2: clonglong): clonglong
proc onreadData*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketreadDataProc) =
  # TODO check subclass
  var tmp = new QLocalSocketreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_readData(self: ptr cQLocalSocket, slot: int, param1: cstring, param2: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_readData ".} =
  var nimfunc = cast[ptr QLocalSocketreadDataProc](cast[pointer](slot))
  let slotval1 = (param1)

  let slotval2 = param2


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLocalSocketwriteData*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring, param2: clonglong): clonglong =
  fQLocalSocket_virtualbase_writeData(self.h, param1, param2)

type QLocalSocketwriteDataProc* = proc(param1: cstring, param2: clonglong): clonglong
proc onwriteData*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketwriteDataProc) =
  # TODO check subclass
  var tmp = new QLocalSocketwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_writeData(self: ptr cQLocalSocket, slot: int, param1: cstring, param2: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_writeData ".} =
  var nimfunc = cast[ptr QLocalSocketwriteDataProc](cast[pointer](slot))
  let slotval1 = (param1)

  let slotval2 = param2


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLocalSocketpos*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fQLocalSocket_virtualbase_pos(self.h)

type QLocalSocketposProc* = proc(): clonglong
proc onpos*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketposProc) =
  # TODO check subclass
  var tmp = new QLocalSocketposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_pos(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_pos ".} =
  var nimfunc = cast[ptr QLocalSocketposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketsize*(self: gen_qlocalsocket_types.QLocalSocket, ): clonglong =
  fQLocalSocket_virtualbase_size(self.h)

type QLocalSocketsizeProc* = proc(): clonglong
proc onsize*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketsizeProc) =
  # TODO check subclass
  var tmp = new QLocalSocketsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_size(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_size ".} =
  var nimfunc = cast[ptr QLocalSocketsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketseek*(self: gen_qlocalsocket_types.QLocalSocket, pos: clonglong): bool =
  fQLocalSocket_virtualbase_seek(self.h, pos)

type QLocalSocketseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketseekProc) =
  # TODO check subclass
  var tmp = new QLocalSocketseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_seek(self: ptr cQLocalSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QLocalSocket_seek ".} =
  var nimfunc = cast[ptr QLocalSocketseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalSocketatEnd*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fQLocalSocket_virtualbase_atEnd(self.h)

type QLocalSocketatEndProc* = proc(): bool
proc onatEnd*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketatEndProc) =
  # TODO check subclass
  var tmp = new QLocalSocketatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_atEnd(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_atEnd ".} =
  var nimfunc = cast[ptr QLocalSocketatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketreset*(self: gen_qlocalsocket_types.QLocalSocket, ): bool =
  fQLocalSocket_virtualbase_reset(self.h)

type QLocalSocketresetProc* = proc(): bool
proc onreset*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketresetProc) =
  # TODO check subclass
  var tmp = new QLocalSocketresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_reset(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_reset ".} =
  var nimfunc = cast[ptr QLocalSocketresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalSocketreadLineData*(self: gen_qlocalsocket_types.QLocalSocket, data: cstring, maxlen: clonglong): clonglong =
  fQLocalSocket_virtualbase_readLineData(self.h, data, maxlen)

type QLocalSocketreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketreadLineDataProc) =
  # TODO check subclass
  var tmp = new QLocalSocketreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_readLineData(self: ptr cQLocalSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_readLineData ".} =
  var nimfunc = cast[ptr QLocalSocketreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLocalSocketevent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QEvent): bool =
  fQLocalSocket_virtualbase_event(self.h, event.h)

type QLocalSocketeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketeventProc) =
  # TODO check subclass
  var tmp = new QLocalSocketeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_event(self: ptr cQLocalSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalSocket_event ".} =
  var nimfunc = cast[ptr QLocalSocketeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalSocketeventFilter*(self: gen_qlocalsocket_types.QLocalSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLocalSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLocalSocketeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketeventFilterProc) =
  # TODO check subclass
  var tmp = new QLocalSocketeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_eventFilter(self: ptr cQLocalSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalSocket_eventFilter ".} =
  var nimfunc = cast[ptr QLocalSocketeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLocalSockettimerEvent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fQLocalSocket_virtualbase_timerEvent(self.h, event.h)

type QLocalSockettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSockettimerEventProc) =
  # TODO check subclass
  var tmp = new QLocalSockettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_timerEvent(self: ptr cQLocalSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_timerEvent ".} =
  var nimfunc = cast[ptr QLocalSockettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QLocalSocketchildEvent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fQLocalSocket_virtualbase_childEvent(self.h, event.h)

type QLocalSocketchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketchildEventProc) =
  # TODO check subclass
  var tmp = new QLocalSocketchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_childEvent(self: ptr cQLocalSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_childEvent ".} =
  var nimfunc = cast[ptr QLocalSocketchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QLocalSocketcustomEvent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QEvent): void =
  fQLocalSocket_virtualbase_customEvent(self.h, event.h)

type QLocalSocketcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketcustomEventProc) =
  # TODO check subclass
  var tmp = new QLocalSocketcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_customEvent(self: ptr cQLocalSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_customEvent ".} =
  var nimfunc = cast[ptr QLocalSocketcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLocalSocketconnectNotify*(self: gen_qlocalsocket_types.QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLocalSocket_virtualbase_connectNotify(self.h, signal.h)

type QLocalSocketconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLocalSocketconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_connectNotify(self: ptr cQLocalSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_connectNotify ".} =
  var nimfunc = cast[ptr QLocalSocketconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLocalSocketdisconnectNotify*(self: gen_qlocalsocket_types.QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLocalSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QLocalSocketdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLocalSocketdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_disconnectNotify(self: ptr cQLocalSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_disconnectNotify ".} =
  var nimfunc = cast[ptr QLocalSocketdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qlocalsocket_types.QLocalSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalSocket_staticMetaObject())
proc delete*(self: gen_qlocalsocket_types.QLocalSocket) =
  fcQLocalSocket_delete(self.h)
