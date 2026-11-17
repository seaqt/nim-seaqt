import ./qtremoteobjects_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qconnection_qnx_qiodevices.cpp", QtRemoteObjectsCFlags).}


import ./gen_qconnection_qnx_qiodevices_types
export gen_qconnection_qnx_qiodevices_types

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

type cQQnxNativeIo*{.exportc: "QQnxNativeIo", incompleteStruct.} = object
type cQIOQnxSource*{.exportc: "QIOQnxSource", incompleteStruct.} = object

proc fcQQnxNativeIo_metaObject(self: pointer): pointer {.importc: "QQnxNativeIo_metaObject".}
proc fcQQnxNativeIo_metacast(self: pointer, param1: cstring): pointer {.importc: "QQnxNativeIo_metacast".}
proc fcQQnxNativeIo_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQnxNativeIo_metacall".}
proc fcQQnxNativeIo_trS(s: cstring): struct_seaqt_string {.importc: "QQnxNativeIo_tr_s".}
proc fcQQnxNativeIo_connectToServer(self: pointer): bool {.importc: "QQnxNativeIo_connectToServer".}
proc fcQQnxNativeIo_connectToServerName(self: pointer, name: struct_seaqt_string): bool {.importc: "QQnxNativeIo_connectToServer_name".}
proc fcQQnxNativeIo_disconnectFromServer(self: pointer): void {.importc: "QQnxNativeIo_disconnectFromServer".}
proc fcQQnxNativeIo_setServerName(self: pointer, name: struct_seaqt_string): void {.importc: "QQnxNativeIo_setServerName".}
proc fcQQnxNativeIo_serverName(self: pointer): struct_seaqt_string {.importc: "QQnxNativeIo_serverName".}
proc fcQQnxNativeIo_abort(self: pointer): void {.importc: "QQnxNativeIo_abort".}
proc fcQQnxNativeIo_isSequential(self: pointer): bool {.importc: "QQnxNativeIo_isSequential".}
proc fcQQnxNativeIo_bytesAvailable(self: pointer): clonglong {.importc: "QQnxNativeIo_bytesAvailable".}
proc fcQQnxNativeIo_bytesToWrite(self: pointer): clonglong {.importc: "QQnxNativeIo_bytesToWrite".}
proc fcQQnxNativeIo_open(self: pointer, openMode: cint): bool {.importc: "QQnxNativeIo_open".}
proc fcQQnxNativeIo_close(self: pointer): void {.importc: "QQnxNativeIo_close".}
proc fcQQnxNativeIo_error(self: pointer): cint {.importc: "QQnxNativeIo_error".}
proc fcQQnxNativeIo_flush(self: pointer): bool {.importc: "QQnxNativeIo_flush".}
proc fcQQnxNativeIo_isValid(self: pointer): bool {.importc: "QQnxNativeIo_isValid".}
proc fcQQnxNativeIo_state(self: pointer): cint {.importc: "QQnxNativeIo_state".}
proc fcQQnxNativeIo_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QQnxNativeIo_waitForBytesWritten".}
proc fcQQnxNativeIo_waitForConnected(self: pointer): bool {.importc: "QQnxNativeIo_waitForConnected".}
proc fcQQnxNativeIo_waitForDisconnected(self: pointer): bool {.importc: "QQnxNativeIo_waitForDisconnected".}
proc fcQQnxNativeIo_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QQnxNativeIo_waitForReadyRead".}
proc fcQQnxNativeIo_connected(self: pointer): void {.importc: "QQnxNativeIo_connected".}
proc fcQQnxNativeIo_connect_connected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQnxNativeIo_connect_connected".}
proc fcQQnxNativeIo_disconnected(self: pointer): void {.importc: "QQnxNativeIo_disconnected".}
proc fcQQnxNativeIo_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQnxNativeIo_connect_disconnected".}
proc fcQQnxNativeIo_errorSocketError(self: pointer, socketError: cint): void {.importc: "QQnxNativeIo_error_socketError".}
proc fcQQnxNativeIo_connect_errorSocketError(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQnxNativeIo_connect_error_socketError".}
proc fcQQnxNativeIo_stateChanged(self: pointer, socketState: cint): void {.importc: "QQnxNativeIo_stateChanged".}
proc fcQQnxNativeIo_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, socketState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQnxNativeIo_connect_stateChanged".}
proc fcQQnxNativeIo_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QQnxNativeIo_tr_s_c".}
proc fcQQnxNativeIo_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QQnxNativeIo_tr_s_c_n".}
proc fcQQnxNativeIo_connectToServerOpenMode(self: pointer, openMode: cint): bool {.importc: "QQnxNativeIo_connectToServer_openMode".}
proc fcQQnxNativeIo_connectToServerNameOpenMode(self: pointer, name: struct_seaqt_string, openMode: cint): bool {.importc: "QQnxNativeIo_connectToServer_name_openMode".}
proc fcQQnxNativeIo_waitForConnectedMsecs(self: pointer, msecs: cint): bool {.importc: "QQnxNativeIo_waitForConnected_msecs".}
proc fcQQnxNativeIo_waitForDisconnectedMsecs(self: pointer, msecs: cint): bool {.importc: "QQnxNativeIo_waitForDisconnected_msecs".}
proc fcQQnxNativeIo_vdata(self: pointer): ptr pointer {.importc: "QQnxNativeIo_vdata".}
proc fvdata_cQQnxNativeIo(self: pointer): pointer {.importc: "vdata_QQnxNativeIo".}

type cQQnxNativeIoVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
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
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQnxNativeIo_virtualbase_metaObject(self: pointer): pointer {.importc: "QQnxNativeIo_virtualbase_metaObject".}
proc fcQQnxNativeIo_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQnxNativeIo_virtualbase_metacast".}
proc fcQQnxNativeIo_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQnxNativeIo_virtualbase_metacall".}
proc fcQQnxNativeIo_virtualbase_isSequential(self: pointer): bool {.importc: "QQnxNativeIo_virtualbase_isSequential".}
proc fcQQnxNativeIo_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QQnxNativeIo_virtualbase_bytesAvailable".}
proc fcQQnxNativeIo_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QQnxNativeIo_virtualbase_bytesToWrite".}
proc fcQQnxNativeIo_virtualbase_open(self: pointer, openMode: cint): bool {.importc: "QQnxNativeIo_virtualbase_open".}
proc fcQQnxNativeIo_virtualbase_close(self: pointer): void {.importc: "QQnxNativeIo_virtualbase_close".}
proc fcQQnxNativeIo_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QQnxNativeIo_virtualbase_waitForBytesWritten".}
proc fcQQnxNativeIo_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QQnxNativeIo_virtualbase_waitForReadyRead".}
proc fcQQnxNativeIo_virtualbase_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.importc: "QQnxNativeIo_virtualbase_readData".}
proc fcQQnxNativeIo_virtualbase_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.importc: "QQnxNativeIo_virtualbase_writeData".}
proc fcQQnxNativeIo_virtualbase_pos(self: pointer): clonglong {.importc: "QQnxNativeIo_virtualbase_pos".}
proc fcQQnxNativeIo_virtualbase_size(self: pointer): clonglong {.importc: "QQnxNativeIo_virtualbase_size".}
proc fcQQnxNativeIo_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QQnxNativeIo_virtualbase_seek".}
proc fcQQnxNativeIo_virtualbase_atEnd(self: pointer): bool {.importc: "QQnxNativeIo_virtualbase_atEnd".}
proc fcQQnxNativeIo_virtualbase_reset(self: pointer): bool {.importc: "QQnxNativeIo_virtualbase_reset".}
proc fcQQnxNativeIo_virtualbase_canReadLine(self: pointer): bool {.importc: "QQnxNativeIo_virtualbase_canReadLine".}
proc fcQQnxNativeIo_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QQnxNativeIo_virtualbase_readLineData".}
proc fcQQnxNativeIo_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QQnxNativeIo_virtualbase_skipData".}
proc fcQQnxNativeIo_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQnxNativeIo_virtualbase_event".}
proc fcQQnxNativeIo_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQnxNativeIo_virtualbase_eventFilter".}
proc fcQQnxNativeIo_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQnxNativeIo_virtualbase_timerEvent".}
proc fcQQnxNativeIo_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQnxNativeIo_virtualbase_childEvent".}
proc fcQQnxNativeIo_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQnxNativeIo_virtualbase_customEvent".}
proc fcQQnxNativeIo_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQnxNativeIo_virtualbase_connectNotify".}
proc fcQQnxNativeIo_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQnxNativeIo_virtualbase_disconnectNotify".}
proc fcQQnxNativeIo_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QQnxNativeIo_protectedbase_setOpenMode".}
proc fcQQnxNativeIo_protectedbase_setErrorString(self: pointer, errorString: struct_seaqt_string): void {.importc: "QQnxNativeIo_protectedbase_setErrorString".}
proc fcQQnxNativeIo_protectedbase_sender(self: pointer): pointer {.importc: "QQnxNativeIo_protectedbase_sender".}
proc fcQQnxNativeIo_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQnxNativeIo_protectedbase_senderSignalIndex".}
proc fcQQnxNativeIo_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQnxNativeIo_protectedbase_receivers".}
proc fcQQnxNativeIo_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQnxNativeIo_protectedbase_isSignalConnected".}
proc fcQQnxNativeIo_new(vtbl: pointer, vdata: csize_t): ptr cQQnxNativeIo {.importc: "QQnxNativeIo_new".}
proc fcQQnxNativeIo_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQQnxNativeIo {.importc: "QQnxNativeIo_new_parent".}
proc fcQQnxNativeIo_staticMetaObject(): pointer {.importc: "QQnxNativeIo_staticMetaObject".}
proc fcQIOQnxSource_metaObject(self: pointer): pointer {.importc: "QIOQnxSource_metaObject".}
proc fcQIOQnxSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QIOQnxSource_metacast".}
proc fcQIOQnxSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIOQnxSource_metacall".}
proc fcQIOQnxSource_trS(s: cstring): struct_seaqt_string {.importc: "QIOQnxSource_tr_s".}
proc fcQIOQnxSource_isSequential(self: pointer): bool {.importc: "QIOQnxSource_isSequential".}
proc fcQIOQnxSource_bytesAvailable(self: pointer): clonglong {.importc: "QIOQnxSource_bytesAvailable".}
proc fcQIOQnxSource_bytesToWrite(self: pointer): clonglong {.importc: "QIOQnxSource_bytesToWrite".}
proc fcQIOQnxSource_close(self: pointer): void {.importc: "QIOQnxSource_close".}
proc fcQIOQnxSource_error(self: pointer): cint {.importc: "QIOQnxSource_error".}
proc fcQIOQnxSource_isValid(self: pointer): bool {.importc: "QIOQnxSource_isValid".}
proc fcQIOQnxSource_state(self: pointer): cint {.importc: "QIOQnxSource_state".}
proc fcQIOQnxSource_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QIOQnxSource_waitForBytesWritten".}
proc fcQIOQnxSource_waitForConnected(self: pointer): bool {.importc: "QIOQnxSource_waitForConnected".}
proc fcQIOQnxSource_waitForDisconnected(self: pointer): bool {.importc: "QIOQnxSource_waitForDisconnected".}
proc fcQIOQnxSource_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QIOQnxSource_waitForReadyRead".}
proc fcQIOQnxSource_disconnected(self: pointer): void {.importc: "QIOQnxSource_disconnected".}
proc fcQIOQnxSource_connect_disconnected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIOQnxSource_connect_disconnected".}
proc fcQIOQnxSource_errorSocketError(self: pointer, socketError: cint): void {.importc: "QIOQnxSource_error_socketError".}
proc fcQIOQnxSource_connect_errorSocketError(self: pointer, slot: int, callback: proc (slot: int, socketError: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIOQnxSource_connect_error_socketError".}
proc fcQIOQnxSource_stateChanged(self: pointer, socketState: cint): void {.importc: "QIOQnxSource_stateChanged".}
proc fcQIOQnxSource_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, socketState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIOQnxSource_connect_stateChanged".}
proc fcQIOQnxSource_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QIOQnxSource_tr_s_c".}
proc fcQIOQnxSource_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QIOQnxSource_tr_s_c_n".}
proc fcQIOQnxSource_waitForConnectedMsecs(self: pointer, msecs: cint): bool {.importc: "QIOQnxSource_waitForConnected_msecs".}
proc fcQIOQnxSource_waitForDisconnectedMsecs(self: pointer, msecs: cint): bool {.importc: "QIOQnxSource_waitForDisconnected_msecs".}
proc fcQIOQnxSource_vdata(self: pointer): ptr pointer {.importc: "QIOQnxSource_vdata".}
proc fvdata_cQIOQnxSource(self: pointer): pointer {.importc: "vdata_QIOQnxSource".}

type cQIOQnxSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIOQnxSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QIOQnxSource_virtualbase_metaObject".}
proc fcQIOQnxSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIOQnxSource_virtualbase_metacast".}
proc fcQIOQnxSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIOQnxSource_virtualbase_metacall".}
proc fcQIOQnxSource_virtualbase_isSequential(self: pointer): bool {.importc: "QIOQnxSource_virtualbase_isSequential".}
proc fcQIOQnxSource_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QIOQnxSource_virtualbase_bytesAvailable".}
proc fcQIOQnxSource_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QIOQnxSource_virtualbase_bytesToWrite".}
proc fcQIOQnxSource_virtualbase_close(self: pointer): void {.importc: "QIOQnxSource_virtualbase_close".}
proc fcQIOQnxSource_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QIOQnxSource_virtualbase_waitForBytesWritten".}
proc fcQIOQnxSource_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QIOQnxSource_virtualbase_waitForReadyRead".}
proc fcQIOQnxSource_virtualbase_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.importc: "QIOQnxSource_virtualbase_readData".}
proc fcQIOQnxSource_virtualbase_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.importc: "QIOQnxSource_virtualbase_writeData".}
proc fcQIOQnxSource_virtualbase_open(self: pointer, openMode: cint): bool {.importc: "QIOQnxSource_virtualbase_open".}
proc fcQIOQnxSource_virtualbase_pos(self: pointer): clonglong {.importc: "QIOQnxSource_virtualbase_pos".}
proc fcQIOQnxSource_virtualbase_size(self: pointer): clonglong {.importc: "QIOQnxSource_virtualbase_size".}
proc fcQIOQnxSource_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QIOQnxSource_virtualbase_seek".}
proc fcQIOQnxSource_virtualbase_atEnd(self: pointer): bool {.importc: "QIOQnxSource_virtualbase_atEnd".}
proc fcQIOQnxSource_virtualbase_reset(self: pointer): bool {.importc: "QIOQnxSource_virtualbase_reset".}
proc fcQIOQnxSource_virtualbase_canReadLine(self: pointer): bool {.importc: "QIOQnxSource_virtualbase_canReadLine".}
proc fcQIOQnxSource_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIOQnxSource_virtualbase_readLineData".}
proc fcQIOQnxSource_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QIOQnxSource_virtualbase_skipData".}
proc fcQIOQnxSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIOQnxSource_virtualbase_event".}
proc fcQIOQnxSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIOQnxSource_virtualbase_eventFilter".}
proc fcQIOQnxSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIOQnxSource_virtualbase_timerEvent".}
proc fcQIOQnxSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIOQnxSource_virtualbase_childEvent".}
proc fcQIOQnxSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIOQnxSource_virtualbase_customEvent".}
proc fcQIOQnxSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIOQnxSource_virtualbase_connectNotify".}
proc fcQIOQnxSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIOQnxSource_virtualbase_disconnectNotify".}
proc fcQIOQnxSource_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QIOQnxSource_protectedbase_setOpenMode".}
proc fcQIOQnxSource_protectedbase_setErrorString(self: pointer, errorString: struct_seaqt_string): void {.importc: "QIOQnxSource_protectedbase_setErrorString".}
proc fcQIOQnxSource_protectedbase_sender(self: pointer): pointer {.importc: "QIOQnxSource_protectedbase_sender".}
proc fcQIOQnxSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QIOQnxSource_protectedbase_senderSignalIndex".}
proc fcQIOQnxSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIOQnxSource_protectedbase_receivers".}
proc fcQIOQnxSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIOQnxSource_protectedbase_isSignalConnected".}
proc fcQIOQnxSource_new(vtbl: pointer, vdata: csize_t, rcvid: cint): ptr cQIOQnxSource {.importc: "QIOQnxSource_new_rcvid".}
proc fcQIOQnxSource_new2(vtbl: pointer, vdata: csize_t, rcvid: cint, parent: pointer): ptr cQIOQnxSource {.importc: "QIOQnxSource_new_rcvid_parent".}
proc fcQIOQnxSource_staticMetaObject(): pointer {.importc: "QIOQnxSource_staticMetaObject".}

proc metaObject*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQnxNativeIo_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, param1: cstring): pointer =
  fcQQnxNativeIo_metacast(self.h, param1)

proc metacall*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, param1: cint, param2: cint, param3: pointer): cint =
  fcQQnxNativeIo_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, s: cstring): string =
  let v_ms = fcQQnxNativeIo_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_connectToServer(self.h)

proc connectToServer*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, name: openArray[char]): bool =
  fcQQnxNativeIo_connectToServerName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc disconnectFromServer*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): void =
  fcQQnxNativeIo_disconnectFromServer(self.h)

proc setServerName*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, name: openArray[char]): void =
  fcQQnxNativeIo_setServerName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc serverName*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): string =
  let v_ms = fcQQnxNativeIo_serverName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc abort*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): void =
  fcQQnxNativeIo_abort(self.h)

proc isSequential*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_isSequential(self.h)

proc bytesAvailable*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): clonglong =
  fcQQnxNativeIo_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): clonglong =
  fcQQnxNativeIo_bytesToWrite(self.h)

proc open*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, openMode: cint): bool =
  fcQQnxNativeIo_open(self.h, cint(openMode))

proc close*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): void =
  fcQQnxNativeIo_close(self.h)

proc error*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): cint =
  cint(fcQQnxNativeIo_error(self.h))

proc flush*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_flush(self.h)

proc isValid*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_isValid(self.h)

proc state*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): cint =
  cint(fcQQnxNativeIo_state(self.h))

proc waitForBytesWritten*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, msecs: cint): bool =
  fcQQnxNativeIo_waitForBytesWritten(self.h, msecs)

proc waitForConnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_waitForConnected(self.h)

proc waitForDisconnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_waitForDisconnected(self.h)

proc waitForReadyRead*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, msecs: cint): bool =
  fcQQnxNativeIo_waitForReadyRead(self.h, msecs)

proc connected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): void =
  fcQQnxNativeIo_connected(self.h)

type QQnxNativeIoconnectedSlot* = proc()
proc fcQQnxNativeIo_slot_callback_connected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQnxNativeIoconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQnxNativeIo_slot_callback_connected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQnxNativeIoconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onConnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, slot: QQnxNativeIoconnectedSlot) =
  var tmp = new QQnxNativeIoconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQnxNativeIo_connect_connected(self.h, cast[int](addr tmp[]), fcQQnxNativeIo_slot_callback_connected, fcQQnxNativeIo_slot_callback_connected_release)

proc disconnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): void =
  fcQQnxNativeIo_disconnected(self.h)

type QQnxNativeIodisconnectedSlot* = proc()
proc fcQQnxNativeIo_slot_callback_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQnxNativeIodisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQnxNativeIo_slot_callback_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQnxNativeIodisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDisconnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, slot: QQnxNativeIodisconnectedSlot) =
  var tmp = new QQnxNativeIodisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQnxNativeIo_connect_disconnected(self.h, cast[int](addr tmp[]), fcQQnxNativeIo_slot_callback_disconnected, fcQQnxNativeIo_slot_callback_disconnected_release)

proc error*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, socketError: cint): void =
  fcQQnxNativeIo_errorSocketError(self.h, cint(socketError))

type QQnxNativeIoerrorSocketErrorSlot* = proc(socketError: cint)
proc fcQQnxNativeIo_slot_callback_errorSocketError(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQnxNativeIoerrorSocketErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc fcQQnxNativeIo_slot_callback_errorSocketError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQnxNativeIoerrorSocketErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, slot: QQnxNativeIoerrorSocketErrorSlot) =
  var tmp = new QQnxNativeIoerrorSocketErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQnxNativeIo_connect_errorSocketError(self.h, cast[int](addr tmp[]), fcQQnxNativeIo_slot_callback_errorSocketError, fcQQnxNativeIo_slot_callback_errorSocketError_release)

proc stateChanged*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, socketState: cint): void =
  fcQQnxNativeIo_stateChanged(self.h, cint(socketState))

type QQnxNativeIostateChangedSlot* = proc(socketState: cint)
proc fcQQnxNativeIo_slot_callback_stateChanged(slot: int, socketState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQnxNativeIostateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(socketState)

  nimfunc[](slotval1)

proc fcQQnxNativeIo_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQnxNativeIostateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, slot: QQnxNativeIostateChangedSlot) =
  var tmp = new QQnxNativeIostateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQnxNativeIo_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQQnxNativeIo_slot_callback_stateChanged, fcQQnxNativeIo_slot_callback_stateChanged_release)

proc tr*(_: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, s: cstring, c: cstring): string =
  let v_ms = fcQQnxNativeIo_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQnxNativeIo_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, openMode: cint): bool =
  fcQQnxNativeIo_connectToServerOpenMode(self.h, cint(openMode))

proc connectToServer*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, name: openArray[char], openMode: cint): bool =
  fcQQnxNativeIo_connectToServerNameOpenMode(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(openMode))

proc waitForConnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, msecs: cint): bool =
  fcQQnxNativeIo_waitForConnectedMsecs(self.h, msecs)

proc waitForDisconnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, msecs: cint): bool =
  fcQQnxNativeIo_waitForDisconnectedMsecs(self.h, msecs)

type QQnxNativeIometaObjectProc* = proc(self: QQnxNativeIo): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQnxNativeIometacastProc* = proc(self: QQnxNativeIo, param1: cstring): pointer {.raises: [], gcsafe.}
type QQnxNativeIometacallProc* = proc(self: QQnxNativeIo, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQnxNativeIoisSequentialProc* = proc(self: QQnxNativeIo): bool {.raises: [], gcsafe.}
type QQnxNativeIobytesAvailableProc* = proc(self: QQnxNativeIo): clonglong {.raises: [], gcsafe.}
type QQnxNativeIobytesToWriteProc* = proc(self: QQnxNativeIo): clonglong {.raises: [], gcsafe.}
type QQnxNativeIoopenProc* = proc(self: QQnxNativeIo, openMode: cint): bool {.raises: [], gcsafe.}
type QQnxNativeIocloseProc* = proc(self: QQnxNativeIo): void {.raises: [], gcsafe.}
type QQnxNativeIowaitForBytesWrittenProc* = proc(self: QQnxNativeIo, msecs: cint): bool {.raises: [], gcsafe.}
type QQnxNativeIowaitForReadyReadProc* = proc(self: QQnxNativeIo, msecs: cint): bool {.raises: [], gcsafe.}
type QQnxNativeIoreadDataProc* = proc(self: QQnxNativeIo, param1: cstring, param2: clonglong): clonglong {.raises: [], gcsafe.}
type QQnxNativeIowriteDataProc* = proc(self: QQnxNativeIo, param1: cstring, param2: clonglong): clonglong {.raises: [], gcsafe.}
type QQnxNativeIoposProc* = proc(self: QQnxNativeIo): clonglong {.raises: [], gcsafe.}
type QQnxNativeIosizeProc* = proc(self: QQnxNativeIo): clonglong {.raises: [], gcsafe.}
type QQnxNativeIoseekProc* = proc(self: QQnxNativeIo, pos: clonglong): bool {.raises: [], gcsafe.}
type QQnxNativeIoatEndProc* = proc(self: QQnxNativeIo): bool {.raises: [], gcsafe.}
type QQnxNativeIoresetProc* = proc(self: QQnxNativeIo): bool {.raises: [], gcsafe.}
type QQnxNativeIocanReadLineProc* = proc(self: QQnxNativeIo): bool {.raises: [], gcsafe.}
type QQnxNativeIoreadLineDataProc* = proc(self: QQnxNativeIo, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QQnxNativeIoskipDataProc* = proc(self: QQnxNativeIo, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QQnxNativeIoeventProc* = proc(self: QQnxNativeIo, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQnxNativeIoeventFilterProc* = proc(self: QQnxNativeIo, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQnxNativeIotimerEventProc* = proc(self: QQnxNativeIo, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQnxNativeIochildEventProc* = proc(self: QQnxNativeIo, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQnxNativeIocustomEventProc* = proc(self: QQnxNativeIo, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQnxNativeIoconnectNotifyProc* = proc(self: QQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQnxNativeIodisconnectNotifyProc* = proc(self: QQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQnxNativeIoVTable* {.inheritable, pure.} = object
  vtbl: cQQnxNativeIoVTable
  metaObject*: QQnxNativeIometaObjectProc
  metacast*: QQnxNativeIometacastProc
  metacall*: QQnxNativeIometacallProc
  isSequential*: QQnxNativeIoisSequentialProc
  bytesAvailable*: QQnxNativeIobytesAvailableProc
  bytesToWrite*: QQnxNativeIobytesToWriteProc
  open*: QQnxNativeIoopenProc
  close*: QQnxNativeIocloseProc
  waitForBytesWritten*: QQnxNativeIowaitForBytesWrittenProc
  waitForReadyRead*: QQnxNativeIowaitForReadyReadProc
  readData*: QQnxNativeIoreadDataProc
  writeData*: QQnxNativeIowriteDataProc
  pos*: QQnxNativeIoposProc
  size*: QQnxNativeIosizeProc
  seek*: QQnxNativeIoseekProc
  atEnd*: QQnxNativeIoatEndProc
  reset*: QQnxNativeIoresetProc
  canReadLine*: QQnxNativeIocanReadLineProc
  readLineData*: QQnxNativeIoreadLineDataProc
  skipData*: QQnxNativeIoskipDataProc
  event*: QQnxNativeIoeventProc
  eventFilter*: QQnxNativeIoeventFilterProc
  timerEvent*: QQnxNativeIotimerEventProc
  childEvent*: QQnxNativeIochildEventProc
  customEvent*: QQnxNativeIocustomEventProc
  connectNotify*: QQnxNativeIoconnectNotifyProc
  disconnectNotify*: QQnxNativeIodisconnectNotifyProc

proc QQnxNativeIometaObject*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQnxNativeIo_virtualbase_metaObject(self.h), owned: false)

proc QQnxNativeIometacast*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, param1: cstring): pointer =
  fcQQnxNativeIo_virtualbase_metacast(self.h, param1)

proc QQnxNativeIometacall*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, param1: cint, param2: cint, param3: pointer): cint =
  fcQQnxNativeIo_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQnxNativeIoisSequential*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_virtualbase_isSequential(self.h)

proc QQnxNativeIobytesAvailable*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): clonglong =
  fcQQnxNativeIo_virtualbase_bytesAvailable(self.h)

proc QQnxNativeIobytesToWrite*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): clonglong =
  fcQQnxNativeIo_virtualbase_bytesToWrite(self.h)

proc QQnxNativeIoopen*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, openMode: cint): bool =
  fcQQnxNativeIo_virtualbase_open(self.h, cint(openMode))

proc QQnxNativeIoclose*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): void =
  fcQQnxNativeIo_virtualbase_close(self.h)

proc QQnxNativeIowaitForBytesWritten*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, msecs: cint): bool =
  fcQQnxNativeIo_virtualbase_waitForBytesWritten(self.h, msecs)

proc QQnxNativeIowaitForReadyRead*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, msecs: cint): bool =
  fcQQnxNativeIo_virtualbase_waitForReadyRead(self.h, msecs)

proc QQnxNativeIoreadData*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, param1: cstring, param2: clonglong): clonglong =
  fcQQnxNativeIo_virtualbase_readData(self.h, param1, param2)

proc QQnxNativeIowriteData*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, param1: cstring, param2: clonglong): clonglong =
  fcQQnxNativeIo_virtualbase_writeData(self.h, param1, param2)

proc QQnxNativeIopos*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): clonglong =
  fcQQnxNativeIo_virtualbase_pos(self.h)

proc QQnxNativeIosize*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): clonglong =
  fcQQnxNativeIo_virtualbase_size(self.h)

proc QQnxNativeIoseek*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, pos: clonglong): bool =
  fcQQnxNativeIo_virtualbase_seek(self.h, pos)

proc QQnxNativeIoatEnd*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_virtualbase_atEnd(self.h)

proc QQnxNativeIoreset*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_virtualbase_reset(self.h)

proc QQnxNativeIocanReadLine*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): bool =
  fcQQnxNativeIo_virtualbase_canReadLine(self.h)

proc QQnxNativeIoreadLineData*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, data: cstring, maxlen: clonglong): clonglong =
  fcQQnxNativeIo_virtualbase_readLineData(self.h, data, maxlen)

proc QQnxNativeIoskipData*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, maxSize: clonglong): clonglong =
  fcQQnxNativeIo_virtualbase_skipData(self.h, maxSize)

proc QQnxNativeIoevent*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, event: gen_qcoreevent_types.QEvent): bool =
  fcQQnxNativeIo_virtualbase_event(self.h, event.h)

proc QQnxNativeIoeventFilter*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQnxNativeIo_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQnxNativeIotimerEvent*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQnxNativeIo_virtualbase_timerEvent(self.h, event.h)

proc QQnxNativeIochildEvent*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQnxNativeIo_virtualbase_childEvent(self.h, event.h)

proc QQnxNativeIocustomEvent*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, event: gen_qcoreevent_types.QEvent): void =
  fcQQnxNativeIo_virtualbase_customEvent(self.h, event.h)

proc QQnxNativeIoconnectNotify*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQnxNativeIo_virtualbase_connectNotify(self.h, signal.h)

proc QQnxNativeIodisconnectNotify*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQnxNativeIo_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQnxNativeIo_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQnxNativeIo_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = cint(openMode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  vtbl[].close(self)

proc fcQQnxNativeIo_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQnxNativeIo_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQnxNativeIo_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQnxNativeIo_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQnxNativeIo_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
  let self = QQnxNativeIo(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQnxNativeIo* {.inheritable.} = ref object of QQnxNativeIo
  vtbl*: cQQnxNativeIoVTable

method metaObject*(self: VirtualQQnxNativeIo): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQnxNativeIometaObject(self[])
method metacast*(self: VirtualQQnxNativeIo, param1: cstring): pointer {.base.} =
  QQnxNativeIometacast(self[], param1)
method metacall*(self: VirtualQQnxNativeIo, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQnxNativeIometacall(self[], param1, param2, param3)
method isSequential*(self: VirtualQQnxNativeIo): bool {.base.} =
  QQnxNativeIoisSequential(self[])
method bytesAvailable*(self: VirtualQQnxNativeIo): clonglong {.base.} =
  QQnxNativeIobytesAvailable(self[])
method bytesToWrite*(self: VirtualQQnxNativeIo): clonglong {.base.} =
  QQnxNativeIobytesToWrite(self[])
method open*(self: VirtualQQnxNativeIo, openMode: cint): bool {.base.} =
  QQnxNativeIoopen(self[], openMode)
method close*(self: VirtualQQnxNativeIo): void {.base.} =
  QQnxNativeIoclose(self[])
method waitForBytesWritten*(self: VirtualQQnxNativeIo, msecs: cint): bool {.base.} =
  QQnxNativeIowaitForBytesWritten(self[], msecs)
method waitForReadyRead*(self: VirtualQQnxNativeIo, msecs: cint): bool {.base.} =
  QQnxNativeIowaitForReadyRead(self[], msecs)
method readData*(self: VirtualQQnxNativeIo, param1: cstring, param2: clonglong): clonglong {.base.} =
  QQnxNativeIoreadData(self[], param1, param2)
method writeData*(self: VirtualQQnxNativeIo, param1: cstring, param2: clonglong): clonglong {.base.} =
  QQnxNativeIowriteData(self[], param1, param2)
method pos*(self: VirtualQQnxNativeIo): clonglong {.base.} =
  QQnxNativeIopos(self[])
method size*(self: VirtualQQnxNativeIo): clonglong {.base.} =
  QQnxNativeIosize(self[])
method seek*(self: VirtualQQnxNativeIo, pos: clonglong): bool {.base.} =
  QQnxNativeIoseek(self[], pos)
method atEnd*(self: VirtualQQnxNativeIo): bool {.base.} =
  QQnxNativeIoatEnd(self[])
method reset*(self: VirtualQQnxNativeIo): bool {.base.} =
  QQnxNativeIoreset(self[])
method canReadLine*(self: VirtualQQnxNativeIo): bool {.base.} =
  QQnxNativeIocanReadLine(self[])
method readLineData*(self: VirtualQQnxNativeIo, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QQnxNativeIoreadLineData(self[], data, maxlen)
method skipData*(self: VirtualQQnxNativeIo, maxSize: clonglong): clonglong {.base.} =
  QQnxNativeIoskipData(self[], maxSize)
method event*(self: VirtualQQnxNativeIo, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQnxNativeIoevent(self[], event)
method eventFilter*(self: VirtualQQnxNativeIo, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQnxNativeIoeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQnxNativeIo, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQnxNativeIotimerEvent(self[], event)
method childEvent*(self: VirtualQQnxNativeIo, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQnxNativeIochildEvent(self[], event)
method customEvent*(self: VirtualQQnxNativeIo, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQnxNativeIocustomEvent(self[], event)
method connectNotify*(self: VirtualQQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQnxNativeIoconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQnxNativeIodisconnectNotify(self[], signal)

proc fcQQnxNativeIo_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQnxNativeIo_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQnxNativeIo_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.isSequential()
  virtualReturn

proc fcQQnxNativeIo_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQQnxNativeIo_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

proc fcQQnxNativeIo_method_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = cint(openMode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  inst.close()

proc fcQQnxNativeIo_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_method_callback_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.pos()
  virtualReturn

proc fcQQnxNativeIo_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.size()
  virtualReturn

proc fcQQnxNativeIo_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.atEnd()
  virtualReturn

proc fcQQnxNativeIo_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.reset()
  virtualReturn

proc fcQQnxNativeIo_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  var virtualReturn = inst.canReadLine()
  virtualReturn

proc fcQQnxNativeIo_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQnxNativeIo_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQnxNativeIo_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQnxNativeIo_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQnxNativeIo_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQnxNativeIo_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQnxNativeIo_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQnxNativeIo](fcQQnxNativeIo_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setOpenMode*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, openMode: cint): void =
  fcQQnxNativeIo_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, errorString: openArray[char]): void =
  fcQQnxNativeIo_protectedbase_setErrorString(self.h, struct_seaqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQnxNativeIo_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): cint =
  fcQQnxNativeIo_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, signal: cstring): cint =
  fcQQnxNativeIo_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnection_qnx_qiodevices_types.QQnxNativeIo, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQnxNativeIo_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo,
    vtbl: ref QQnxNativeIoVTable = nil): gen_qconnection_qnx_qiodevices_types.QQnxNativeIo =
  let vtbl = if vtbl == nil: new QQnxNativeIoVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQnxNativeIo_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQnxNativeIo_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQnxNativeIo_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQQnxNativeIo_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQQnxNativeIo_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQQnxNativeIo_vtable_callback_bytesToWrite
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQQnxNativeIo_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQQnxNativeIo_vtable_callback_close
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQQnxNativeIo_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQQnxNativeIo_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQQnxNativeIo_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQQnxNativeIo_vtable_callback_writeData
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQQnxNativeIo_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQnxNativeIo_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQQnxNativeIo_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQQnxNativeIo_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQQnxNativeIo_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQQnxNativeIo_vtable_callback_canReadLine
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQQnxNativeIo_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQQnxNativeIo_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQnxNativeIo_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQnxNativeIo_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQnxNativeIo_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQnxNativeIo_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQnxNativeIo_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQnxNativeIo_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQnxNativeIo_vtable_callback_disconnectNotify
  let tmp = gen_qconnection_qnx_qiodevices_types.QQnxNativeIo(h: fcQQnxNativeIo_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQQnxNativeIo_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQnxNativeIoVTable = nil): gen_qconnection_qnx_qiodevices_types.QQnxNativeIo =
  let vtbl = if vtbl == nil: new QQnxNativeIoVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQnxNativeIoVTable](fcQQnxNativeIo_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQnxNativeIo_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQnxNativeIo_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQnxNativeIo_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQQnxNativeIo_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQQnxNativeIo_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQQnxNativeIo_vtable_callback_bytesToWrite
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQQnxNativeIo_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQQnxNativeIo_vtable_callback_close
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQQnxNativeIo_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQQnxNativeIo_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQQnxNativeIo_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQQnxNativeIo_vtable_callback_writeData
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQQnxNativeIo_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQQnxNativeIo_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQQnxNativeIo_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQQnxNativeIo_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQQnxNativeIo_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQQnxNativeIo_vtable_callback_canReadLine
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQQnxNativeIo_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQQnxNativeIo_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQnxNativeIo_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQnxNativeIo_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQnxNativeIo_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQnxNativeIo_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQnxNativeIo_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQnxNativeIo_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQnxNativeIo_vtable_callback_disconnectNotify
  let tmp = gen_qconnection_qnx_qiodevices_types.QQnxNativeIo(h: fcQQnxNativeIo_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQQnxNativeIo_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQQnxNativeIo_mvtbl = cQQnxNativeIoVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQnxNativeIo()[])](self.fcQQnxNativeIo_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQnxNativeIo_method_callback_metaObject,
  metacast: fcQQnxNativeIo_method_callback_metacast,
  metacall: fcQQnxNativeIo_method_callback_metacall,
  isSequential: fcQQnxNativeIo_method_callback_isSequential,
  bytesAvailable: fcQQnxNativeIo_method_callback_bytesAvailable,
  bytesToWrite: fcQQnxNativeIo_method_callback_bytesToWrite,
  open: fcQQnxNativeIo_method_callback_open,
  close: fcQQnxNativeIo_method_callback_close,
  waitForBytesWritten: fcQQnxNativeIo_method_callback_waitForBytesWritten,
  waitForReadyRead: fcQQnxNativeIo_method_callback_waitForReadyRead,
  readData: fcQQnxNativeIo_method_callback_readData,
  writeData: fcQQnxNativeIo_method_callback_writeData,
  pos: fcQQnxNativeIo_method_callback_pos,
  size: fcQQnxNativeIo_method_callback_size,
  seek: fcQQnxNativeIo_method_callback_seek,
  atEnd: fcQQnxNativeIo_method_callback_atEnd,
  reset: fcQQnxNativeIo_method_callback_reset,
  canReadLine: fcQQnxNativeIo_method_callback_canReadLine,
  readLineData: fcQQnxNativeIo_method_callback_readLineData,
  skipData: fcQQnxNativeIo_method_callback_skipData,
  event: fcQQnxNativeIo_method_callback_event,
  eventFilter: fcQQnxNativeIo_method_callback_eventFilter,
  timerEvent: fcQQnxNativeIo_method_callback_timerEvent,
  childEvent: fcQQnxNativeIo_method_callback_childEvent,
  customEvent: fcQQnxNativeIo_method_callback_customEvent,
  connectNotify: fcQQnxNativeIo_method_callback_connectNotify,
  disconnectNotify: fcQQnxNativeIo_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo,
    inst: VirtualQQnxNativeIo) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQnxNativeIo_new(addr(cQQnxNativeIo_mvtbl), csize_t(sizeof(pointer)))
  fcQQnxNativeIo_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQnxNativeIo) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQnxNativeIo_new2(addr(cQQnxNativeIo_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQQnxNativeIo_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnection_qnx_qiodevices_types.QQnxNativeIo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQnxNativeIo_staticMetaObject())
proc metaObject*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIOQnxSource_metaObject(self.h), owned: false)

proc metacast*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, param1: cstring): pointer =
  fcQIOQnxSource_metacast(self.h, param1)

proc metacall*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQIOQnxSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource, s: cstring): string =
  let v_ms = fcQIOQnxSource_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isSequential*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_isSequential(self.h)

proc bytesAvailable*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): clonglong =
  fcQIOQnxSource_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): clonglong =
  fcQIOQnxSource_bytesToWrite(self.h)

proc close*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): void =
  fcQIOQnxSource_close(self.h)

proc error*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): cint =
  cint(fcQIOQnxSource_error(self.h))

proc isValid*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_isValid(self.h)

proc state*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): cint =
  cint(fcQIOQnxSource_state(self.h))

proc waitForBytesWritten*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, msecs: cint): bool =
  fcQIOQnxSource_waitForBytesWritten(self.h, msecs)

proc waitForConnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_waitForConnected(self.h)

proc waitForDisconnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_waitForDisconnected(self.h)

proc waitForReadyRead*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, msecs: cint): bool =
  fcQIOQnxSource_waitForReadyRead(self.h, msecs)

proc disconnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): void =
  fcQIOQnxSource_disconnected(self.h)

type QIOQnxSourcedisconnectedSlot* = proc()
proc fcQIOQnxSource_slot_callback_disconnected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIOQnxSourcedisconnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQIOQnxSource_slot_callback_disconnected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIOQnxSourcedisconnectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDisconnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, slot: QIOQnxSourcedisconnectedSlot) =
  var tmp = new QIOQnxSourcedisconnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIOQnxSource_connect_disconnected(self.h, cast[int](addr tmp[]), fcQIOQnxSource_slot_callback_disconnected, fcQIOQnxSource_slot_callback_disconnected_release)

proc error*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, socketError: cint): void =
  fcQIOQnxSource_errorSocketError(self.h, cint(socketError))

type QIOQnxSourceerrorSocketErrorSlot* = proc(socketError: cint)
proc fcQIOQnxSource_slot_callback_errorSocketError(slot: int, socketError: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIOQnxSourceerrorSocketErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc fcQIOQnxSource_slot_callback_errorSocketError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIOQnxSourceerrorSocketErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, slot: QIOQnxSourceerrorSocketErrorSlot) =
  var tmp = new QIOQnxSourceerrorSocketErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIOQnxSource_connect_errorSocketError(self.h, cast[int](addr tmp[]), fcQIOQnxSource_slot_callback_errorSocketError, fcQIOQnxSource_slot_callback_errorSocketError_release)

proc stateChanged*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, socketState: cint): void =
  fcQIOQnxSource_stateChanged(self.h, cint(socketState))

type QIOQnxSourcestateChangedSlot* = proc(socketState: cint)
proc fcQIOQnxSource_slot_callback_stateChanged(slot: int, socketState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIOQnxSourcestateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(socketState)

  nimfunc[](slotval1)

proc fcQIOQnxSource_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIOQnxSourcestateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, slot: QIOQnxSourcestateChangedSlot) =
  var tmp = new QIOQnxSourcestateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIOQnxSource_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQIOQnxSource_slot_callback_stateChanged, fcQIOQnxSource_slot_callback_stateChanged_release)

proc tr*(_: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource, s: cstring, c: cstring): string =
  let v_ms = fcQIOQnxSource_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIOQnxSource_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc waitForConnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, msecs: cint): bool =
  fcQIOQnxSource_waitForConnectedMsecs(self.h, msecs)

proc waitForDisconnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, msecs: cint): bool =
  fcQIOQnxSource_waitForDisconnectedMsecs(self.h, msecs)

type QIOQnxSourcemetaObjectProc* = proc(self: QIOQnxSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIOQnxSourcemetacastProc* = proc(self: QIOQnxSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QIOQnxSourcemetacallProc* = proc(self: QIOQnxSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIOQnxSourceisSequentialProc* = proc(self: QIOQnxSource): bool {.raises: [], gcsafe.}
type QIOQnxSourcebytesAvailableProc* = proc(self: QIOQnxSource): clonglong {.raises: [], gcsafe.}
type QIOQnxSourcebytesToWriteProc* = proc(self: QIOQnxSource): clonglong {.raises: [], gcsafe.}
type QIOQnxSourcecloseProc* = proc(self: QIOQnxSource): void {.raises: [], gcsafe.}
type QIOQnxSourcewaitForBytesWrittenProc* = proc(self: QIOQnxSource, msecs: cint): bool {.raises: [], gcsafe.}
type QIOQnxSourcewaitForReadyReadProc* = proc(self: QIOQnxSource, msecs: cint): bool {.raises: [], gcsafe.}
type QIOQnxSourcereadDataProc* = proc(self: QIOQnxSource, param1: cstring, param2: clonglong): clonglong {.raises: [], gcsafe.}
type QIOQnxSourcewriteDataProc* = proc(self: QIOQnxSource, param1: cstring, param2: clonglong): clonglong {.raises: [], gcsafe.}
type QIOQnxSourceopenProc* = proc(self: QIOQnxSource, openMode: cint): bool {.raises: [], gcsafe.}
type QIOQnxSourceposProc* = proc(self: QIOQnxSource): clonglong {.raises: [], gcsafe.}
type QIOQnxSourcesizeProc* = proc(self: QIOQnxSource): clonglong {.raises: [], gcsafe.}
type QIOQnxSourceseekProc* = proc(self: QIOQnxSource, pos: clonglong): bool {.raises: [], gcsafe.}
type QIOQnxSourceatEndProc* = proc(self: QIOQnxSource): bool {.raises: [], gcsafe.}
type QIOQnxSourceresetProc* = proc(self: QIOQnxSource): bool {.raises: [], gcsafe.}
type QIOQnxSourcecanReadLineProc* = proc(self: QIOQnxSource): bool {.raises: [], gcsafe.}
type QIOQnxSourcereadLineDataProc* = proc(self: QIOQnxSource, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QIOQnxSourceskipDataProc* = proc(self: QIOQnxSource, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QIOQnxSourceeventProc* = proc(self: QIOQnxSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIOQnxSourceeventFilterProc* = proc(self: QIOQnxSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIOQnxSourcetimerEventProc* = proc(self: QIOQnxSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIOQnxSourcechildEventProc* = proc(self: QIOQnxSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIOQnxSourcecustomEventProc* = proc(self: QIOQnxSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIOQnxSourceconnectNotifyProc* = proc(self: QIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIOQnxSourcedisconnectNotifyProc* = proc(self: QIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QIOQnxSourceVTable* {.inheritable, pure.} = object
  vtbl: cQIOQnxSourceVTable
  metaObject*: QIOQnxSourcemetaObjectProc
  metacast*: QIOQnxSourcemetacastProc
  metacall*: QIOQnxSourcemetacallProc
  isSequential*: QIOQnxSourceisSequentialProc
  bytesAvailable*: QIOQnxSourcebytesAvailableProc
  bytesToWrite*: QIOQnxSourcebytesToWriteProc
  close*: QIOQnxSourcecloseProc
  waitForBytesWritten*: QIOQnxSourcewaitForBytesWrittenProc
  waitForReadyRead*: QIOQnxSourcewaitForReadyReadProc
  readData*: QIOQnxSourcereadDataProc
  writeData*: QIOQnxSourcewriteDataProc
  open*: QIOQnxSourceopenProc
  pos*: QIOQnxSourceposProc
  size*: QIOQnxSourcesizeProc
  seek*: QIOQnxSourceseekProc
  atEnd*: QIOQnxSourceatEndProc
  reset*: QIOQnxSourceresetProc
  canReadLine*: QIOQnxSourcecanReadLineProc
  readLineData*: QIOQnxSourcereadLineDataProc
  skipData*: QIOQnxSourceskipDataProc
  event*: QIOQnxSourceeventProc
  eventFilter*: QIOQnxSourceeventFilterProc
  timerEvent*: QIOQnxSourcetimerEventProc
  childEvent*: QIOQnxSourcechildEventProc
  customEvent*: QIOQnxSourcecustomEventProc
  connectNotify*: QIOQnxSourceconnectNotifyProc
  disconnectNotify*: QIOQnxSourcedisconnectNotifyProc

proc QIOQnxSourcemetaObject*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIOQnxSource_virtualbase_metaObject(self.h), owned: false)

proc QIOQnxSourcemetacast*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, param1: cstring): pointer =
  fcQIOQnxSource_virtualbase_metacast(self.h, param1)

proc QIOQnxSourcemetacall*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQIOQnxSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QIOQnxSourceisSequential*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_virtualbase_isSequential(self.h)

proc QIOQnxSourcebytesAvailable*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): clonglong =
  fcQIOQnxSource_virtualbase_bytesAvailable(self.h)

proc QIOQnxSourcebytesToWrite*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): clonglong =
  fcQIOQnxSource_virtualbase_bytesToWrite(self.h)

proc QIOQnxSourceclose*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): void =
  fcQIOQnxSource_virtualbase_close(self.h)

proc QIOQnxSourcewaitForBytesWritten*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, msecs: cint): bool =
  fcQIOQnxSource_virtualbase_waitForBytesWritten(self.h, msecs)

proc QIOQnxSourcewaitForReadyRead*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, msecs: cint): bool =
  fcQIOQnxSource_virtualbase_waitForReadyRead(self.h, msecs)

proc QIOQnxSourcereadData*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, param1: cstring, param2: clonglong): clonglong =
  fcQIOQnxSource_virtualbase_readData(self.h, param1, param2)

proc QIOQnxSourcewriteData*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, param1: cstring, param2: clonglong): clonglong =
  fcQIOQnxSource_virtualbase_writeData(self.h, param1, param2)

proc QIOQnxSourceopen*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, openMode: cint): bool =
  fcQIOQnxSource_virtualbase_open(self.h, cint(openMode))

proc QIOQnxSourcepos*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): clonglong =
  fcQIOQnxSource_virtualbase_pos(self.h)

proc QIOQnxSourcesize*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): clonglong =
  fcQIOQnxSource_virtualbase_size(self.h)

proc QIOQnxSourceseek*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, pos: clonglong): bool =
  fcQIOQnxSource_virtualbase_seek(self.h, pos)

proc QIOQnxSourceatEnd*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_virtualbase_atEnd(self.h)

proc QIOQnxSourcereset*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_virtualbase_reset(self.h)

proc QIOQnxSourcecanReadLine*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): bool =
  fcQIOQnxSource_virtualbase_canReadLine(self.h)

proc QIOQnxSourcereadLineData*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, data: cstring, maxlen: clonglong): clonglong =
  fcQIOQnxSource_virtualbase_readLineData(self.h, data, maxlen)

proc QIOQnxSourceskipData*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, maxSize: clonglong): clonglong =
  fcQIOQnxSource_virtualbase_skipData(self.h, maxSize)

proc QIOQnxSourceevent*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQIOQnxSource_virtualbase_event(self.h, event.h)

proc QIOQnxSourceeventFilter*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIOQnxSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QIOQnxSourcetimerEvent*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIOQnxSource_virtualbase_timerEvent(self.h, event.h)

proc QIOQnxSourcechildEvent*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIOQnxSource_virtualbase_childEvent(self.h, event.h)

proc QIOQnxSourcecustomEvent*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, event: gen_qcoreevent_types.QEvent): void =
  fcQIOQnxSource_virtualbase_customEvent(self.h, event.h)

proc QIOQnxSourceconnectNotify*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIOQnxSource_virtualbase_connectNotify(self.h, signal.h)

proc QIOQnxSourcedisconnectNotify*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIOQnxSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQIOQnxSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQIOQnxSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  vtbl[].close(self)

proc fcQIOQnxSource_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = cint(openMode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQIOQnxSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQIOQnxSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQIOQnxSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQIOQnxSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
  let self = QIOQnxSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQIOQnxSource* {.inheritable.} = ref object of QIOQnxSource
  vtbl*: cQIOQnxSourceVTable

method metaObject*(self: VirtualQIOQnxSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QIOQnxSourcemetaObject(self[])
method metacast*(self: VirtualQIOQnxSource, param1: cstring): pointer {.base.} =
  QIOQnxSourcemetacast(self[], param1)
method metacall*(self: VirtualQIOQnxSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QIOQnxSourcemetacall(self[], param1, param2, param3)
method isSequential*(self: VirtualQIOQnxSource): bool {.base.} =
  QIOQnxSourceisSequential(self[])
method bytesAvailable*(self: VirtualQIOQnxSource): clonglong {.base.} =
  QIOQnxSourcebytesAvailable(self[])
method bytesToWrite*(self: VirtualQIOQnxSource): clonglong {.base.} =
  QIOQnxSourcebytesToWrite(self[])
method close*(self: VirtualQIOQnxSource): void {.base.} =
  QIOQnxSourceclose(self[])
method waitForBytesWritten*(self: VirtualQIOQnxSource, msecs: cint): bool {.base.} =
  QIOQnxSourcewaitForBytesWritten(self[], msecs)
method waitForReadyRead*(self: VirtualQIOQnxSource, msecs: cint): bool {.base.} =
  QIOQnxSourcewaitForReadyRead(self[], msecs)
method readData*(self: VirtualQIOQnxSource, param1: cstring, param2: clonglong): clonglong {.base.} =
  QIOQnxSourcereadData(self[], param1, param2)
method writeData*(self: VirtualQIOQnxSource, param1: cstring, param2: clonglong): clonglong {.base.} =
  QIOQnxSourcewriteData(self[], param1, param2)
method open*(self: VirtualQIOQnxSource, openMode: cint): bool {.base.} =
  QIOQnxSourceopen(self[], openMode)
method pos*(self: VirtualQIOQnxSource): clonglong {.base.} =
  QIOQnxSourcepos(self[])
method size*(self: VirtualQIOQnxSource): clonglong {.base.} =
  QIOQnxSourcesize(self[])
method seek*(self: VirtualQIOQnxSource, pos: clonglong): bool {.base.} =
  QIOQnxSourceseek(self[], pos)
method atEnd*(self: VirtualQIOQnxSource): bool {.base.} =
  QIOQnxSourceatEnd(self[])
method reset*(self: VirtualQIOQnxSource): bool {.base.} =
  QIOQnxSourcereset(self[])
method canReadLine*(self: VirtualQIOQnxSource): bool {.base.} =
  QIOQnxSourcecanReadLine(self[])
method readLineData*(self: VirtualQIOQnxSource, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QIOQnxSourcereadLineData(self[], data, maxlen)
method skipData*(self: VirtualQIOQnxSource, maxSize: clonglong): clonglong {.base.} =
  QIOQnxSourceskipData(self[], maxSize)
method event*(self: VirtualQIOQnxSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIOQnxSourceevent(self[], event)
method eventFilter*(self: VirtualQIOQnxSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIOQnxSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQIOQnxSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QIOQnxSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQIOQnxSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QIOQnxSourcechildEvent(self[], event)
method customEvent*(self: VirtualQIOQnxSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QIOQnxSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIOQnxSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIOQnxSourcedisconnectNotify(self[], signal)

proc fcQIOQnxSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQIOQnxSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQIOQnxSource_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.isSequential()
  virtualReturn

proc fcQIOQnxSource_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQIOQnxSource_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

proc fcQIOQnxSource_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  inst.close()

proc fcQIOQnxSource_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_readData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_method_callback_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = (param1)
  let slotval2 = param2
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_method_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = cint(openMode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.pos()
  virtualReturn

proc fcQIOQnxSource_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.size()
  virtualReturn

proc fcQIOQnxSource_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.atEnd()
  virtualReturn

proc fcQIOQnxSource_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.reset()
  virtualReturn

proc fcQIOQnxSource_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  var virtualReturn = inst.canReadLine()
  virtualReturn

proc fcQIOQnxSource_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQIOQnxSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQIOQnxSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQIOQnxSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQIOQnxSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQIOQnxSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQIOQnxSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIOQnxSource](fcQIOQnxSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setOpenMode*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, openMode: cint): void =
  fcQIOQnxSource_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, errorString: openArray[char]): void =
  fcQIOQnxSource_protectedbase_setErrorString(self.h, struct_seaqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIOQnxSource_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource): cint =
  fcQIOQnxSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, signal: cstring): cint =
  fcQIOQnxSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qconnection_qnx_qiodevices_types.QIOQnxSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIOQnxSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource,
    rcvid: cint,
    vtbl: ref QIOQnxSourceVTable = nil): gen_qconnection_qnx_qiodevices_types.QIOQnxSource =
  let vtbl = if vtbl == nil: new QIOQnxSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQIOQnxSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQIOQnxSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQIOQnxSource_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQIOQnxSource_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQIOQnxSource_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQIOQnxSource_vtable_callback_bytesToWrite
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQIOQnxSource_vtable_callback_close
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQIOQnxSource_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQIOQnxSource_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQIOQnxSource_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQIOQnxSource_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQIOQnxSource_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQIOQnxSource_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQIOQnxSource_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQIOQnxSource_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQIOQnxSource_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQIOQnxSource_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQIOQnxSource_vtable_callback_canReadLine
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQIOQnxSource_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQIOQnxSource_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQIOQnxSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQIOQnxSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQIOQnxSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQIOQnxSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQIOQnxSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQIOQnxSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQIOQnxSource_vtable_callback_disconnectNotify
  let tmp = gen_qconnection_qnx_qiodevices_types.QIOQnxSource(h: fcQIOQnxSource_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), rcvid), owned: true)
  fcQIOQnxSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource,
    rcvid: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QIOQnxSourceVTable = nil): gen_qconnection_qnx_qiodevices_types.QIOQnxSource =
  let vtbl = if vtbl == nil: new QIOQnxSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIOQnxSourceVTable](fcQIOQnxSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQIOQnxSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQIOQnxSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQIOQnxSource_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQIOQnxSource_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQIOQnxSource_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQIOQnxSource_vtable_callback_bytesToWrite
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQIOQnxSource_vtable_callback_close
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQIOQnxSource_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQIOQnxSource_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQIOQnxSource_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQIOQnxSource_vtable_callback_writeData
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQIOQnxSource_vtable_callback_open
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQIOQnxSource_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQIOQnxSource_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQIOQnxSource_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQIOQnxSource_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQIOQnxSource_vtable_callback_reset
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQIOQnxSource_vtable_callback_canReadLine
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQIOQnxSource_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQIOQnxSource_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQIOQnxSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQIOQnxSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQIOQnxSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQIOQnxSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQIOQnxSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQIOQnxSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQIOQnxSource_vtable_callback_disconnectNotify
  let tmp = gen_qconnection_qnx_qiodevices_types.QIOQnxSource(h: fcQIOQnxSource_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), rcvid, parent.h), owned: true)
  fcQIOQnxSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQIOQnxSource_mvtbl = cQIOQnxSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIOQnxSource()[])](self.fcQIOQnxSource_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQIOQnxSource_method_callback_metaObject,
  metacast: fcQIOQnxSource_method_callback_metacast,
  metacall: fcQIOQnxSource_method_callback_metacall,
  isSequential: fcQIOQnxSource_method_callback_isSequential,
  bytesAvailable: fcQIOQnxSource_method_callback_bytesAvailable,
  bytesToWrite: fcQIOQnxSource_method_callback_bytesToWrite,
  close: fcQIOQnxSource_method_callback_close,
  waitForBytesWritten: fcQIOQnxSource_method_callback_waitForBytesWritten,
  waitForReadyRead: fcQIOQnxSource_method_callback_waitForReadyRead,
  readData: fcQIOQnxSource_method_callback_readData,
  writeData: fcQIOQnxSource_method_callback_writeData,
  open: fcQIOQnxSource_method_callback_open,
  pos: fcQIOQnxSource_method_callback_pos,
  size: fcQIOQnxSource_method_callback_size,
  seek: fcQIOQnxSource_method_callback_seek,
  atEnd: fcQIOQnxSource_method_callback_atEnd,
  reset: fcQIOQnxSource_method_callback_reset,
  canReadLine: fcQIOQnxSource_method_callback_canReadLine,
  readLineData: fcQIOQnxSource_method_callback_readLineData,
  skipData: fcQIOQnxSource_method_callback_skipData,
  event: fcQIOQnxSource_method_callback_event,
  eventFilter: fcQIOQnxSource_method_callback_eventFilter,
  timerEvent: fcQIOQnxSource_method_callback_timerEvent,
  childEvent: fcQIOQnxSource_method_callback_childEvent,
  customEvent: fcQIOQnxSource_method_callback_customEvent,
  connectNotify: fcQIOQnxSource_method_callback_connectNotify,
  disconnectNotify: fcQIOQnxSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource,
    rcvid: cint,
    inst: VirtualQIOQnxSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIOQnxSource_new(addr(cQIOQnxSource_mvtbl), csize_t(sizeof(pointer)), rcvid)
  fcQIOQnxSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource,
    rcvid: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQIOQnxSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIOQnxSource_new2(addr(cQIOQnxSource_mvtbl), csize_t(sizeof(pointer)), rcvid, parent.h)
  fcQIOQnxSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qconnection_qnx_qiodevices_types.QIOQnxSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIOQnxSource_staticMetaObject())
