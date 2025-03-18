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


{.compile("gen_qlocalsocket.cpp", QtNetworkCFlags).}


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

proc fcQLocalSocket_metaObject(self: pointer): pointer {.importc: "QLocalSocket_metaObject".}
proc fcQLocalSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalSocket_metacast".}
proc fcQLocalSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalSocket_metacall".}
proc fcQLocalSocket_tr(s: cstring): struct_miqt_string {.importc: "QLocalSocket_tr".}
proc fcQLocalSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QLocalSocket_trUtf8".}
proc fcQLocalSocket_connectToServer(self: pointer): void {.importc: "QLocalSocket_connectToServer".}
proc fcQLocalSocket_connectToServerWithName(self: pointer, name: struct_miqt_string): void {.importc: "QLocalSocket_connectToServerWithName".}
proc fcQLocalSocket_disconnectFromServer(self: pointer): void {.importc: "QLocalSocket_disconnectFromServer".}
proc fcQLocalSocket_setServerName(self: pointer, name: struct_miqt_string): void {.importc: "QLocalSocket_setServerName".}
proc fcQLocalSocket_serverName(self: pointer): struct_miqt_string {.importc: "QLocalSocket_serverName".}
proc fcQLocalSocket_fullServerName(self: pointer): struct_miqt_string {.importc: "QLocalSocket_fullServerName".}
proc fcQLocalSocket_abort(self: pointer): void {.importc: "QLocalSocket_abort".}
proc fcQLocalSocket_isSequential(self: pointer): bool {.importc: "QLocalSocket_isSequential".}
proc fcQLocalSocket_bytesAvailable(self: pointer): clonglong {.importc: "QLocalSocket_bytesAvailable".}
proc fcQLocalSocket_bytesToWrite(self: pointer): clonglong {.importc: "QLocalSocket_bytesToWrite".}
proc fcQLocalSocket_canReadLine(self: pointer): bool {.importc: "QLocalSocket_canReadLine".}
proc fcQLocalSocket_open(self: pointer, openMode: cint): bool {.importc: "QLocalSocket_open".}
proc fcQLocalSocket_close(self: pointer): void {.importc: "QLocalSocket_close".}
proc fcQLocalSocket_error(self: pointer): cint {.importc: "QLocalSocket_error".}
proc fcQLocalSocket_flush(self: pointer): bool {.importc: "QLocalSocket_flush".}
proc fcQLocalSocket_isValid(self: pointer): bool {.importc: "QLocalSocket_isValid".}
proc fcQLocalSocket_readBufferSize(self: pointer): clonglong {.importc: "QLocalSocket_readBufferSize".}
proc fcQLocalSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QLocalSocket_setReadBufferSize".}
proc fcQLocalSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QLocalSocket_setSocketDescriptor".}
proc fcQLocalSocket_socketDescriptor(self: pointer): uint {.importc: "QLocalSocket_socketDescriptor".}
proc fcQLocalSocket_state(self: pointer): cint {.importc: "QLocalSocket_state".}
proc fcQLocalSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForBytesWritten".}
proc fcQLocalSocket_waitForConnected(self: pointer): bool {.importc: "QLocalSocket_waitForConnected".}
proc fcQLocalSocket_waitForDisconnected(self: pointer): bool {.importc: "QLocalSocket_waitForDisconnected".}
proc fcQLocalSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForReadyRead".}
proc fcQLocalSocket_connected(self: pointer): void {.importc: "QLocalSocket_connected".}
proc fcQLocalSocket_connect_connected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLocalSocket_connect_connected".}
proc fcQLocalSocket_disconnected(self: pointer): void {.importc: "QLocalSocket_disconnected".}
proc fcQLocalSocket_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLocalSocket_connect_disconnected".}
proc fcQLocalSocket_errorWithSocketError(self: pointer, socketError: cint): void {.importc: "QLocalSocket_errorWithSocketError".}
proc fcQLocalSocket_connect_errorWithSocketError(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLocalSocket_connect_errorWithSocketError".}
proc fcQLocalSocket_errorOccurred(self: pointer, socketError: cint): void {.importc: "QLocalSocket_errorOccurred".}
proc fcQLocalSocket_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLocalSocket_connect_errorOccurred".}
proc fcQLocalSocket_stateChanged(self: pointer, socketState: cint): void {.importc: "QLocalSocket_stateChanged".}
proc fcQLocalSocket_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, socketState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLocalSocket_connect_stateChanged".}
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
proc fcQLocalSocket_vtbl(self: pointer): pointer {.importc: "QLocalSocket_vtbl".}
proc fcQLocalSocket_vdata(self: pointer): pointer {.importc: "QLocalSocket_vdata".}

type cQLocalSocketVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLocalSocket_virtualbase_metaObject(self: pointer): pointer {.importc: "QLocalSocket_virtualbase_metaObject".}
proc fcQLocalSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalSocket_virtualbase_metacast".}
proc fcQLocalSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalSocket_virtualbase_metacall".}
proc fcQLocalSocket_virtualbase_isSequential(self: pointer): bool {.importc: "QLocalSocket_virtualbase_isSequential".}
proc fcQLocalSocket_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QLocalSocket_virtualbase_bytesAvailable".}
proc fcQLocalSocket_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QLocalSocket_virtualbase_bytesToWrite".}
proc fcQLocalSocket_virtualbase_canReadLine(self: pointer): bool {.importc: "QLocalSocket_virtualbase_canReadLine".}
proc fcQLocalSocket_virtualbase_open(self: pointer, openMode: cint): bool {.importc: "QLocalSocket_virtualbase_open".}
proc fcQLocalSocket_virtualbase_close(self: pointer): void {.importc: "QLocalSocket_virtualbase_close".}
proc fcQLocalSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_virtualbase_waitForBytesWritten".}
proc fcQLocalSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_virtualbase_waitForReadyRead".}
proc fcQLocalSocket_virtualbase_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.importc: "QLocalSocket_virtualbase_readData".}
proc fcQLocalSocket_virtualbase_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.importc: "QLocalSocket_virtualbase_writeData".}
proc fcQLocalSocket_virtualbase_pos(self: pointer): clonglong {.importc: "QLocalSocket_virtualbase_pos".}
proc fcQLocalSocket_virtualbase_size(self: pointer): clonglong {.importc: "QLocalSocket_virtualbase_size".}
proc fcQLocalSocket_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QLocalSocket_virtualbase_seek".}
proc fcQLocalSocket_virtualbase_atEnd(self: pointer): bool {.importc: "QLocalSocket_virtualbase_atEnd".}
proc fcQLocalSocket_virtualbase_reset(self: pointer): bool {.importc: "QLocalSocket_virtualbase_reset".}
proc fcQLocalSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QLocalSocket_virtualbase_readLineData".}
proc fcQLocalSocket_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QLocalSocket_virtualbase_event".}
proc fcQLocalSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLocalSocket_virtualbase_eventFilter".}
proc fcQLocalSocket_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLocalSocket_virtualbase_timerEvent".}
proc fcQLocalSocket_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLocalSocket_virtualbase_childEvent".}
proc fcQLocalSocket_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLocalSocket_virtualbase_customEvent".}
proc fcQLocalSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLocalSocket_virtualbase_connectNotify".}
proc fcQLocalSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLocalSocket_virtualbase_disconnectNotify".}
proc fcQLocalSocket_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QLocalSocket_protectedbase_setOpenMode".}
proc fcQLocalSocket_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QLocalSocket_protectedbase_setErrorString".}
proc fcQLocalSocket_protectedbase_sender(self: pointer): pointer {.importc: "QLocalSocket_protectedbase_sender".}
proc fcQLocalSocket_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLocalSocket_protectedbase_senderSignalIndex".}
proc fcQLocalSocket_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLocalSocket_protectedbase_receivers".}
proc fcQLocalSocket_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLocalSocket_protectedbase_isSignalConnected".}
proc fcQLocalSocket_new(vtbl, vdata: pointer): ptr cQLocalSocket {.importc: "QLocalSocket_new".}
proc fcQLocalSocket_new2(vtbl, vdata: pointer, parent: pointer): ptr cQLocalSocket {.importc: "QLocalSocket_new2".}
proc fcQLocalSocket_staticMetaObject(): pointer {.importc: "QLocalSocket_staticMetaObject".}

proc metaObject*(self: gen_qlocalsocket_types.QLocalSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalSocket_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring): pointer =
  fcQLocalSocket_metacast(self.h, param1)

proc metacall*(self: gen_qlocalsocket_types.QLocalSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQLocalSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring): string =
  let v_ms = fcQLocalSocket_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring): string =
  let v_ms = fcQLocalSocket_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_connectToServer(self.h)

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, name: openArray[char]): void =
  fcQLocalSocket_connectToServerWithName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc disconnectFromServer*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_disconnectFromServer(self.h)

proc setServerName*(self: gen_qlocalsocket_types.QLocalSocket, name: openArray[char]): void =
  fcQLocalSocket_setServerName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc serverName*(self: gen_qlocalsocket_types.QLocalSocket): string =
  let v_ms = fcQLocalSocket_serverName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fullServerName*(self: gen_qlocalsocket_types.QLocalSocket): string =
  let v_ms = fcQLocalSocket_fullServerName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc abort*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_abort(self.h)

proc isSequential*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_isSequential(self.h)

proc bytesAvailable*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_bytesToWrite(self.h)

proc canReadLine*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_canReadLine(self.h)

proc open*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): bool =
  fcQLocalSocket_open(self.h, cint(openMode))

proc close*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_close(self.h)

proc error*(self: gen_qlocalsocket_types.QLocalSocket): cint =
  cint(fcQLocalSocket_error(self.h))

proc flush*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_flush(self.h)

proc isValid*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_isValid(self.h)

proc readBufferSize*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: gen_qlocalsocket_types.QLocalSocket, size: clonglong): void =
  fcQLocalSocket_setReadBufferSize(self.h, size)

proc setSocketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, socketDescriptor: uint): bool =
  fcQLocalSocket_setSocketDescriptor(self.h, socketDescriptor)

proc socketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket): uint =
  fcQLocalSocket_socketDescriptor(self.h)

proc state*(self: gen_qlocalsocket_types.QLocalSocket): cint =
  cint(fcQLocalSocket_state(self.h))

proc waitForBytesWritten*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForBytesWritten(self.h, msecs)

proc waitForConnected*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_waitForConnected(self.h)

proc waitForDisconnected*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_waitForDisconnected(self.h)

proc waitForReadyRead*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForReadyRead(self.h, msecs)

proc connected*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_connected(self.h)

type QLocalSocketconnectedSlot* = proc()
proc fcQLocalSocket_slot_callback_connected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLocalSocketconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLocalSocket_slot_callback_connected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLocalSocketconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onConnected*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketconnectedSlot) =
  var tmp = new QLocalSocketconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_connected(self.h, cast[int](addr tmp[]), fcQLocalSocket_slot_callback_connected, fcQLocalSocket_slot_callback_connected_release)

proc disconnected*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_disconnected(self.h)

type QLocalSocketdisconnectedSlot* = proc()
proc fcQLocalSocket_slot_callback_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QLocalSocketdisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQLocalSocket_slot_callback_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLocalSocketdisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDisconnected*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketdisconnectedSlot) =
  var tmp = new QLocalSocketdisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_disconnected(self.h, cast[int](addr tmp[]), fcQLocalSocket_slot_callback_disconnected, fcQLocalSocket_slot_callback_disconnected_release)

proc error*(self: gen_qlocalsocket_types.QLocalSocket, socketError: cint): void =
  fcQLocalSocket_errorWithSocketError(self.h, cint(socketError))

type QLocalSocketerrorWithSocketErrorSlot* = proc(socketError: cint)
proc fcQLocalSocket_slot_callback_errorWithSocketError(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QLocalSocketerrorWithSocketErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc fcQLocalSocket_slot_callback_errorWithSocketError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLocalSocketerrorWithSocketErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketerrorWithSocketErrorSlot) =
  var tmp = new QLocalSocketerrorWithSocketErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_errorWithSocketError(self.h, cast[int](addr tmp[]), fcQLocalSocket_slot_callback_errorWithSocketError, fcQLocalSocket_slot_callback_errorWithSocketError_release)

proc errorOccurred*(self: gen_qlocalsocket_types.QLocalSocket, socketError: cint): void =
  fcQLocalSocket_errorOccurred(self.h, cint(socketError))

type QLocalSocketerrorOccurredSlot* = proc(socketError: cint)
proc fcQLocalSocket_slot_callback_errorOccurred(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QLocalSocketerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc fcQLocalSocket_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLocalSocketerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorOccurred*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketerrorOccurredSlot) =
  var tmp = new QLocalSocketerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]), fcQLocalSocket_slot_callback_errorOccurred, fcQLocalSocket_slot_callback_errorOccurred_release)

proc stateChanged*(self: gen_qlocalsocket_types.QLocalSocket, socketState: cint): void =
  fcQLocalSocket_stateChanged(self.h, cint(socketState))

type QLocalSocketstateChangedSlot* = proc(socketState: cint)
proc fcQLocalSocket_slot_callback_stateChanged(slot: int, socketState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QLocalSocketstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(socketState)

  nimfunc[](slotval1)

proc fcQLocalSocket_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLocalSocketstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qlocalsocket_types.QLocalSocket, slot: QLocalSocketstateChangedSlot) =
  var tmp = new QLocalSocketstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQLocalSocket_slot_callback_stateChanged, fcQLocalSocket_slot_callback_stateChanged_release)

proc tr*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring): string =
  let v_ms = fcQLocalSocket_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLocalSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring): string =
  let v_ms = fcQLocalSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlocalsocket_types.QLocalSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLocalSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): void =
  fcQLocalSocket_connectToServer1(self.h, cint(openMode))

proc connectToServer*(self: gen_qlocalsocket_types.QLocalSocket, name: openArray[char], openMode: cint): void =
  fcQLocalSocket_connectToServer2(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(openMode))

proc setSocketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, socketDescriptor: uint, socketState: cint): bool =
  fcQLocalSocket_setSocketDescriptor2(self.h, socketDescriptor, cint(socketState))

proc setSocketDescriptor*(self: gen_qlocalsocket_types.QLocalSocket, socketDescriptor: uint, socketState: cint, openMode: cint): bool =
  fcQLocalSocket_setSocketDescriptor3(self.h, socketDescriptor, cint(socketState), cint(openMode))

proc waitForConnected*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForConnected1(self.h, msecs)

proc waitForDisconnected*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_waitForDisconnected1(self.h, msecs)

type QLocalSocketmetaObjectProc* = proc(self: QLocalSocket): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLocalSocketmetacastProc* = proc(self: QLocalSocket, param1: cstring): pointer {.raises: [], gcsafe.}
type QLocalSocketmetacallProc* = proc(self: QLocalSocket, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLocalSocketisSequentialProc* = proc(self: QLocalSocket): bool {.raises: [], gcsafe.}
type QLocalSocketbytesAvailableProc* = proc(self: QLocalSocket): clonglong {.raises: [], gcsafe.}
type QLocalSocketbytesToWriteProc* = proc(self: QLocalSocket): clonglong {.raises: [], gcsafe.}
type QLocalSocketcanReadLineProc* = proc(self: QLocalSocket): bool {.raises: [], gcsafe.}
type QLocalSocketopenProc* = proc(self: QLocalSocket, openMode: cint): bool {.raises: [], gcsafe.}
type QLocalSocketcloseProc* = proc(self: QLocalSocket): void {.raises: [], gcsafe.}
type QLocalSocketwaitForBytesWrittenProc* = proc(self: QLocalSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QLocalSocketwaitForReadyReadProc* = proc(self: QLocalSocket, msecs: cint): bool {.raises: [], gcsafe.}
type QLocalSocketreadDataProc* = proc(self: QLocalSocket, param1: cstring, param2: clonglong): clonglong {.raises: [], gcsafe.}
type QLocalSocketwriteDataProc* = proc(self: QLocalSocket, param1: cstring, param2: clonglong): clonglong {.raises: [], gcsafe.}
type QLocalSocketposProc* = proc(self: QLocalSocket): clonglong {.raises: [], gcsafe.}
type QLocalSocketsizeProc* = proc(self: QLocalSocket): clonglong {.raises: [], gcsafe.}
type QLocalSocketseekProc* = proc(self: QLocalSocket, pos: clonglong): bool {.raises: [], gcsafe.}
type QLocalSocketatEndProc* = proc(self: QLocalSocket): bool {.raises: [], gcsafe.}
type QLocalSocketresetProc* = proc(self: QLocalSocket): bool {.raises: [], gcsafe.}
type QLocalSocketreadLineDataProc* = proc(self: QLocalSocket, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QLocalSocketeventProc* = proc(self: QLocalSocket, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLocalSocketeventFilterProc* = proc(self: QLocalSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLocalSockettimerEventProc* = proc(self: QLocalSocket, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLocalSocketchildEventProc* = proc(self: QLocalSocket, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLocalSocketcustomEventProc* = proc(self: QLocalSocket, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLocalSocketconnectNotifyProc* = proc(self: QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLocalSocketdisconnectNotifyProc* = proc(self: QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QLocalSocketVTable* {.inheritable, pure.} = object
  vtbl: cQLocalSocketVTable
  metaObject*: QLocalSocketmetaObjectProc
  metacast*: QLocalSocketmetacastProc
  metacall*: QLocalSocketmetacallProc
  isSequential*: QLocalSocketisSequentialProc
  bytesAvailable*: QLocalSocketbytesAvailableProc
  bytesToWrite*: QLocalSocketbytesToWriteProc
  canReadLine*: QLocalSocketcanReadLineProc
  open*: QLocalSocketopenProc
  close*: QLocalSocketcloseProc
  waitForBytesWritten*: QLocalSocketwaitForBytesWrittenProc
  waitForReadyRead*: QLocalSocketwaitForReadyReadProc
  readData*: QLocalSocketreadDataProc
  writeData*: QLocalSocketwriteDataProc
  pos*: QLocalSocketposProc
  size*: QLocalSocketsizeProc
  seek*: QLocalSocketseekProc
  atEnd*: QLocalSocketatEndProc
  reset*: QLocalSocketresetProc
  readLineData*: QLocalSocketreadLineDataProc
  event*: QLocalSocketeventProc
  eventFilter*: QLocalSocketeventFilterProc
  timerEvent*: QLocalSockettimerEventProc
  childEvent*: QLocalSocketchildEventProc
  customEvent*: QLocalSocketcustomEventProc
  connectNotify*: QLocalSocketconnectNotifyProc
  disconnectNotify*: QLocalSocketdisconnectNotifyProc

proc QLocalSocketmetaObject*(self: gen_qlocalsocket_types.QLocalSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalSocket_virtualbase_metaObject(self.h), owned: false)

proc QLocalSocketmetacast*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring): pointer =
  fcQLocalSocket_virtualbase_metacast(self.h, param1)

proc QLocalSocketmetacall*(self: gen_qlocalsocket_types.QLocalSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQLocalSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QLocalSocketisSequential*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_virtualbase_isSequential(self.h)

proc QLocalSocketbytesAvailable*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_virtualbase_bytesAvailable(self.h)

proc QLocalSocketbytesToWrite*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_virtualbase_bytesToWrite(self.h)

proc QLocalSocketcanReadLine*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_virtualbase_canReadLine(self.h)

proc QLocalSocketopen*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): bool =
  fcQLocalSocket_virtualbase_open(self.h, cint(openMode))

proc QLocalSocketclose*(self: gen_qlocalsocket_types.QLocalSocket): void =
  fcQLocalSocket_virtualbase_close(self.h)

proc QLocalSocketwaitForBytesWritten*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_virtualbase_waitForBytesWritten(self.h, msecs)

proc QLocalSocketwaitForReadyRead*(self: gen_qlocalsocket_types.QLocalSocket, msecs: cint): bool =
  fcQLocalSocket_virtualbase_waitForReadyRead(self.h, msecs)

proc QLocalSocketreadData*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring, param2: clonglong): clonglong =
  fcQLocalSocket_virtualbase_readData(self.h, param1, param2)

proc QLocalSocketwriteData*(self: gen_qlocalsocket_types.QLocalSocket, param1: cstring, param2: clonglong): clonglong =
  fcQLocalSocket_virtualbase_writeData(self.h, param1, param2)

proc QLocalSocketpos*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_virtualbase_pos(self.h)

proc QLocalSocketsize*(self: gen_qlocalsocket_types.QLocalSocket): clonglong =
  fcQLocalSocket_virtualbase_size(self.h)

proc QLocalSocketseek*(self: gen_qlocalsocket_types.QLocalSocket, pos: clonglong): bool =
  fcQLocalSocket_virtualbase_seek(self.h, pos)

proc QLocalSocketatEnd*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_virtualbase_atEnd(self.h)

proc QLocalSocketreset*(self: gen_qlocalsocket_types.QLocalSocket): bool =
  fcQLocalSocket_virtualbase_reset(self.h)

proc QLocalSocketreadLineData*(self: gen_qlocalsocket_types.QLocalSocket, data: cstring, maxlen: clonglong): clonglong =
  fcQLocalSocket_virtualbase_readLineData(self.h, data, maxlen)

proc QLocalSocketevent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QEvent): bool =
  fcQLocalSocket_virtualbase_event(self.h, event.h)

proc QLocalSocketeventFilter*(self: gen_qlocalsocket_types.QLocalSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLocalSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QLocalSockettimerEvent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLocalSocket_virtualbase_timerEvent(self.h, event.h)

proc QLocalSocketchildEvent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLocalSocket_virtualbase_childEvent(self.h, event.h)

proc QLocalSocketcustomEvent*(self: gen_qlocalsocket_types.QLocalSocket, event: gen_qcoreevent_types.QEvent): void =
  fcQLocalSocket_virtualbase_customEvent(self.h, event.h)

proc QLocalSocketconnectNotify*(self: gen_qlocalsocket_types.QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLocalSocket_virtualbase_connectNotify(self.h, signal.h)

proc QLocalSocketdisconnectNotify*(self: gen_qlocalsocket_types.QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLocalSocket_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQLocalSocket_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLocalSocket_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQLocalSocket_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLocalSocket_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = cint(openMode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc fcQLocalSocket_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  vtbl[].close(self)

proc fcQLocalSocket_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc fcQLocalSocket_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc fcQLocalSocket_vtable_callback_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_vtable_callback_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc fcQLocalSocket_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc fcQLocalSocket_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQLocalSocket_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQLocalSocket_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQLocalSocket_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQLocalSocket_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQLocalSocket_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLocalSocketVTable](fcQLocalSocket_vdata(self))
  let self = QLocalSocket(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLocalSocket* {.inheritable.} = ref object of QLocalSocket
  vtbl*: cQLocalSocketVTable

method metaObject*(self: VirtualQLocalSocket): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLocalSocketmetaObject(self[])
method metacast*(self: VirtualQLocalSocket, param1: cstring): pointer {.base.} =
  QLocalSocketmetacast(self[], param1)
method metacall*(self: VirtualQLocalSocket, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLocalSocketmetacall(self[], param1, param2, param3)
method isSequential*(self: VirtualQLocalSocket): bool {.base.} =
  QLocalSocketisSequential(self[])
method bytesAvailable*(self: VirtualQLocalSocket): clonglong {.base.} =
  QLocalSocketbytesAvailable(self[])
method bytesToWrite*(self: VirtualQLocalSocket): clonglong {.base.} =
  QLocalSocketbytesToWrite(self[])
method canReadLine*(self: VirtualQLocalSocket): bool {.base.} =
  QLocalSocketcanReadLine(self[])
method open*(self: VirtualQLocalSocket, openMode: cint): bool {.base.} =
  QLocalSocketopen(self[], openMode)
method close*(self: VirtualQLocalSocket): void {.base.} =
  QLocalSocketclose(self[])
method waitForBytesWritten*(self: VirtualQLocalSocket, msecs: cint): bool {.base.} =
  QLocalSocketwaitForBytesWritten(self[], msecs)
method waitForReadyRead*(self: VirtualQLocalSocket, msecs: cint): bool {.base.} =
  QLocalSocketwaitForReadyRead(self[], msecs)
method readData*(self: VirtualQLocalSocket, param1: cstring, param2: clonglong): clonglong {.base.} =
  QLocalSocketreadData(self[], param1, param2)
method writeData*(self: VirtualQLocalSocket, param1: cstring, param2: clonglong): clonglong {.base.} =
  QLocalSocketwriteData(self[], param1, param2)
method pos*(self: VirtualQLocalSocket): clonglong {.base.} =
  QLocalSocketpos(self[])
method size*(self: VirtualQLocalSocket): clonglong {.base.} =
  QLocalSocketsize(self[])
method seek*(self: VirtualQLocalSocket, pos: clonglong): bool {.base.} =
  QLocalSocketseek(self[], pos)
method atEnd*(self: VirtualQLocalSocket): bool {.base.} =
  QLocalSocketatEnd(self[])
method reset*(self: VirtualQLocalSocket): bool {.base.} =
  QLocalSocketreset(self[])
method readLineData*(self: VirtualQLocalSocket, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QLocalSocketreadLineData(self[], data, maxlen)
method event*(self: VirtualQLocalSocket, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLocalSocketevent(self[], event)
method eventFilter*(self: VirtualQLocalSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLocalSocketeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQLocalSocket, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLocalSockettimerEvent(self[], event)
method childEvent*(self: VirtualQLocalSocket, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLocalSocketchildEvent(self[], event)
method customEvent*(self: VirtualQLocalSocket, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLocalSocketcustomEvent(self[], event)
method connectNotify*(self: VirtualQLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLocalSocketconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLocalSocketdisconnectNotify(self[], signal)

proc fcQLocalSocket_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLocalSocket_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQLocalSocket_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLocalSocket_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

proc fcQLocalSocket_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQLocalSocket_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

proc fcQLocalSocket_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

proc fcQLocalSocket_method_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = cint(openMode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

proc fcQLocalSocket_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  inst.close()

proc fcQLocalSocket_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

proc fcQLocalSocket_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

proc fcQLocalSocket_method_callback_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_method_callback_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

proc fcQLocalSocket_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

proc fcQLocalSocket_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

proc fcQLocalSocket_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

proc fcQLocalSocket_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

proc fcQLocalSocket_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQLocalSocket_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQLocalSocket_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQLocalSocket_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQLocalSocket_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQLocalSocket_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQLocalSocket_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLocalSocket](fcQLocalSocket_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setOpenMode*(self: gen_qlocalsocket_types.QLocalSocket, openMode: cint): void =
  fcQLocalSocket_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qlocalsocket_types.QLocalSocket, errorString: openArray[char]): void =
  fcQLocalSocket_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qlocalsocket_types.QLocalSocket): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLocalSocket_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlocalsocket_types.QLocalSocket): cint =
  fcQLocalSocket_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlocalsocket_types.QLocalSocket, signal: cstring): cint =
  fcQLocalSocket_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlocalsocket_types.QLocalSocket, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLocalSocket_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlocalsocket_types.QLocalSocket,
    vtbl: ref QLocalSocketVTable = nil): gen_qlocalsocket_types.QLocalSocket =
  let vtbl = if vtbl == nil: new QLocalSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLocalSocketVTable](fcQLocalSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLocalSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLocalSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLocalSocket_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQLocalSocket_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQLocalSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQLocalSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQLocalSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQLocalSocket_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQLocalSocket_vtable_callback_close
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQLocalSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQLocalSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQLocalSocket_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQLocalSocket_vtable_callback_writeData
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQLocalSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQLocalSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQLocalSocket_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQLocalSocket_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQLocalSocket_vtable_callback_reset
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQLocalSocket_vtable_callback_readLineData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLocalSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLocalSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLocalSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLocalSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLocalSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLocalSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLocalSocket_vtable_callback_disconnectNotify
  gen_qlocalsocket_types.QLocalSocket(h: fcQLocalSocket_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlocalsocket_types.QLocalSocket,
    parent: gen_qobject_types.QObject,
    vtbl: ref QLocalSocketVTable = nil): gen_qlocalsocket_types.QLocalSocket =
  let vtbl = if vtbl == nil: new QLocalSocketVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLocalSocketVTable](fcQLocalSocket_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLocalSocket_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLocalSocket_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLocalSocket_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQLocalSocket_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQLocalSocket_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQLocalSocket_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQLocalSocket_vtable_callback_canReadLine
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQLocalSocket_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQLocalSocket_vtable_callback_close
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQLocalSocket_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQLocalSocket_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQLocalSocket_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQLocalSocket_vtable_callback_writeData
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQLocalSocket_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQLocalSocket_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQLocalSocket_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQLocalSocket_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQLocalSocket_vtable_callback_reset
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQLocalSocket_vtable_callback_readLineData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLocalSocket_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLocalSocket_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLocalSocket_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLocalSocket_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLocalSocket_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLocalSocket_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLocalSocket_vtable_callback_disconnectNotify
  gen_qlocalsocket_types.QLocalSocket(h: fcQLocalSocket_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQLocalSocket_mvtbl = cQLocalSocketVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLocalSocket()[])](self.fcQLocalSocket_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQLocalSocket_method_callback_metaObject,
  metacast: fcQLocalSocket_method_callback_metacast,
  metacall: fcQLocalSocket_method_callback_metacall,
  isSequential: fcQLocalSocket_method_callback_isSequential,
  bytesAvailable: fcQLocalSocket_method_callback_bytesAvailable,
  bytesToWrite: fcQLocalSocket_method_callback_bytesToWrite,
  canReadLine: fcQLocalSocket_method_callback_canReadLine,
  open: fcQLocalSocket_method_callback_open,
  close: fcQLocalSocket_method_callback_close,
  waitForBytesWritten: fcQLocalSocket_method_callback_waitForBytesWritten,
  waitForReadyRead: fcQLocalSocket_method_callback_waitForReadyRead,
  readData: fcQLocalSocket_method_callback_readData,
  writeData: fcQLocalSocket_method_callback_writeData,
  pos: fcQLocalSocket_method_callback_pos,
  size: fcQLocalSocket_method_callback_size,
  seek: fcQLocalSocket_method_callback_seek,
  atEnd: fcQLocalSocket_method_callback_atEnd,
  reset: fcQLocalSocket_method_callback_reset,
  readLineData: fcQLocalSocket_method_callback_readLineData,
  event: fcQLocalSocket_method_callback_event,
  eventFilter: fcQLocalSocket_method_callback_eventFilter,
  timerEvent: fcQLocalSocket_method_callback_timerEvent,
  childEvent: fcQLocalSocket_method_callback_childEvent,
  customEvent: fcQLocalSocket_method_callback_customEvent,
  connectNotify: fcQLocalSocket_method_callback_connectNotify,
  disconnectNotify: fcQLocalSocket_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlocalsocket_types.QLocalSocket,
    inst: VirtualQLocalSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLocalSocket_new(addr(cQLocalSocket_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlocalsocket_types.QLocalSocket,
    parent: gen_qobject_types.QObject,
    inst: VirtualQLocalSocket) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLocalSocket_new2(addr(cQLocalSocket_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlocalsocket_types.QLocalSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalSocket_staticMetaObject())
