import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qiodevice.cpp", cflags).}


import ./gen_qiodevice_types
export gen_qiodevice_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQIODevice*{.exportc: "QIODevice", incompleteStruct.} = object

proc fcQIODevice_metaObject(self: pointer, ): pointer {.importc: "QIODevice_metaObject".}
proc fcQIODevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QIODevice_metacast".}
proc fcQIODevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIODevice_metacall".}
proc fcQIODevice_tr(s: cstring): struct_miqt_string {.importc: "QIODevice_tr".}
proc fcQIODevice_openMode(self: pointer, ): cint {.importc: "QIODevice_openMode".}
proc fcQIODevice_setTextModeEnabled(self: pointer, enabled: bool): void {.importc: "QIODevice_setTextModeEnabled".}
proc fcQIODevice_isTextModeEnabled(self: pointer, ): bool {.importc: "QIODevice_isTextModeEnabled".}
proc fcQIODevice_isOpen(self: pointer, ): bool {.importc: "QIODevice_isOpen".}
proc fcQIODevice_isReadable(self: pointer, ): bool {.importc: "QIODevice_isReadable".}
proc fcQIODevice_isWritable(self: pointer, ): bool {.importc: "QIODevice_isWritable".}
proc fcQIODevice_isSequential(self: pointer, ): bool {.importc: "QIODevice_isSequential".}
proc fcQIODevice_readChannelCount(self: pointer, ): cint {.importc: "QIODevice_readChannelCount".}
proc fcQIODevice_writeChannelCount(self: pointer, ): cint {.importc: "QIODevice_writeChannelCount".}
proc fcQIODevice_currentReadChannel(self: pointer, ): cint {.importc: "QIODevice_currentReadChannel".}
proc fcQIODevice_setCurrentReadChannel(self: pointer, channel: cint): void {.importc: "QIODevice_setCurrentReadChannel".}
proc fcQIODevice_currentWriteChannel(self: pointer, ): cint {.importc: "QIODevice_currentWriteChannel".}
proc fcQIODevice_setCurrentWriteChannel(self: pointer, channel: cint): void {.importc: "QIODevice_setCurrentWriteChannel".}
proc fcQIODevice_open(self: pointer, mode: cint): bool {.importc: "QIODevice_open".}
proc fcQIODevice_close(self: pointer, ): void {.importc: "QIODevice_close".}
proc fcQIODevice_pos(self: pointer, ): clonglong {.importc: "QIODevice_pos".}
proc fcQIODevice_size(self: pointer, ): clonglong {.importc: "QIODevice_size".}
proc fcQIODevice_seek(self: pointer, pos: clonglong): bool {.importc: "QIODevice_seek".}
proc fcQIODevice_atEnd(self: pointer, ): bool {.importc: "QIODevice_atEnd".}
proc fcQIODevice_reset(self: pointer, ): bool {.importc: "QIODevice_reset".}
proc fcQIODevice_bytesAvailable(self: pointer, ): clonglong {.importc: "QIODevice_bytesAvailable".}
proc fcQIODevice_bytesToWrite(self: pointer, ): clonglong {.importc: "QIODevice_bytesToWrite".}
proc fcQIODevice_read(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_read".}
proc fcQIODevice_readWithMaxlen(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readWithMaxlen".}
proc fcQIODevice_readAll(self: pointer, ): struct_miqt_string {.importc: "QIODevice_readAll".}
proc fcQIODevice_readLine(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_readLine".}
proc fcQIODevice_readLine2(self: pointer, ): struct_miqt_string {.importc: "QIODevice_readLine2".}
proc fcQIODevice_canReadLine(self: pointer, ): bool {.importc: "QIODevice_canReadLine".}
proc fcQIODevice_startTransaction(self: pointer, ): void {.importc: "QIODevice_startTransaction".}
proc fcQIODevice_commitTransaction(self: pointer, ): void {.importc: "QIODevice_commitTransaction".}
proc fcQIODevice_rollbackTransaction(self: pointer, ): void {.importc: "QIODevice_rollbackTransaction".}
proc fcQIODevice_isTransactionStarted(self: pointer, ): bool {.importc: "QIODevice_isTransactionStarted".}
proc fcQIODevice_write(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QIODevice_write".}
proc fcQIODevice_writeWithData(self: pointer, data: cstring): clonglong {.importc: "QIODevice_writeWithData".}
proc fcQIODevice_write2(self: pointer, data: struct_miqt_string): clonglong {.importc: "QIODevice_write2".}
proc fcQIODevice_peek(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_peek".}
proc fcQIODevice_peekWithMaxlen(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_peekWithMaxlen".}
proc fcQIODevice_skip(self: pointer, maxSize: clonglong): clonglong {.importc: "QIODevice_skip".}
proc fcQIODevice_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QIODevice_waitForReadyRead".}
proc fcQIODevice_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QIODevice_waitForBytesWritten".}
proc fcQIODevice_ungetChar(self: pointer, c: cchar): void {.importc: "QIODevice_ungetChar".}
proc fcQIODevice_putChar(self: pointer, c: cchar): bool {.importc: "QIODevice_putChar".}
proc fcQIODevice_getChar(self: pointer, c: cstring): bool {.importc: "QIODevice_getChar".}
proc fcQIODevice_errorString(self: pointer, ): struct_miqt_string {.importc: "QIODevice_errorString".}
proc fcQIODevice_readyRead(self: pointer, ): void {.importc: "QIODevice_readyRead".}
proc fcQIODevice_connect_readyRead(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_readyRead".}
proc fcQIODevice_channelReadyRead(self: pointer, channel: cint): void {.importc: "QIODevice_channelReadyRead".}
proc fcQIODevice_connect_channelReadyRead(self: pointer, slot: int, callback: proc (slot: int, channel: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_channelReadyRead".}
proc fcQIODevice_bytesWritten(self: pointer, bytes: clonglong): void {.importc: "QIODevice_bytesWritten".}
proc fcQIODevice_connect_bytesWritten(self: pointer, slot: int, callback: proc (slot: int, bytes: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_bytesWritten".}
proc fcQIODevice_channelBytesWritten(self: pointer, channel: cint, bytes: clonglong): void {.importc: "QIODevice_channelBytesWritten".}
proc fcQIODevice_connect_channelBytesWritten(self: pointer, slot: int, callback: proc (slot: int, channel: cint, bytes: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_channelBytesWritten".}
proc fcQIODevice_aboutToClose(self: pointer, ): void {.importc: "QIODevice_aboutToClose".}
proc fcQIODevice_connect_aboutToClose(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_aboutToClose".}
proc fcQIODevice_readChannelFinished(self: pointer, ): void {.importc: "QIODevice_readChannelFinished".}
proc fcQIODevice_connect_readChannelFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_readChannelFinished".}
proc fcQIODevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIODevice_tr2".}
proc fcQIODevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIODevice_tr3".}
proc fcQIODevice_readLine1(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readLine1".}
type cQIODeviceVTable = object
  destructor*: proc(vtbl: ptr cQIODeviceVTable, self: ptr cQIODevice) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(vtbl, self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(vtbl, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIODevice_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QIODevice_virtualbase_metaObject".}
proc fcQIODevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIODevice_virtualbase_metacast".}
proc fcQIODevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIODevice_virtualbase_metacall".}
proc fcQIODevice_virtualbase_isSequential(self: pointer, ): bool {.importc: "QIODevice_virtualbase_isSequential".}
proc fcQIODevice_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QIODevice_virtualbase_open".}
proc fcQIODevice_virtualbase_close(self: pointer, ): void {.importc: "QIODevice_virtualbase_close".}
proc fcQIODevice_virtualbase_pos(self: pointer, ): clonglong {.importc: "QIODevice_virtualbase_pos".}
proc fcQIODevice_virtualbase_size(self: pointer, ): clonglong {.importc: "QIODevice_virtualbase_size".}
proc fcQIODevice_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QIODevice_virtualbase_seek".}
proc fcQIODevice_virtualbase_atEnd(self: pointer, ): bool {.importc: "QIODevice_virtualbase_atEnd".}
proc fcQIODevice_virtualbase_reset(self: pointer, ): bool {.importc: "QIODevice_virtualbase_reset".}
proc fcQIODevice_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QIODevice_virtualbase_bytesAvailable".}
proc fcQIODevice_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QIODevice_virtualbase_bytesToWrite".}
proc fcQIODevice_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QIODevice_virtualbase_canReadLine".}
proc fcQIODevice_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QIODevice_virtualbase_waitForReadyRead".}
proc fcQIODevice_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QIODevice_virtualbase_waitForBytesWritten".}
proc fcQIODevice_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_virtualbase_readLineData".}
proc fcQIODevice_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QIODevice_virtualbase_skipData".}
proc fcQIODevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIODevice_virtualbase_event".}
proc fcQIODevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIODevice_virtualbase_eventFilter".}
proc fcQIODevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIODevice_virtualbase_timerEvent".}
proc fcQIODevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIODevice_virtualbase_childEvent".}
proc fcQIODevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIODevice_virtualbase_customEvent".}
proc fcQIODevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIODevice_virtualbase_connectNotify".}
proc fcQIODevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIODevice_virtualbase_disconnectNotify".}
proc fcQIODevice_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QIODevice_protectedbase_setOpenMode".}
proc fcQIODevice_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QIODevice_protectedbase_setErrorString".}
proc fcQIODevice_protectedbase_sender(self: pointer, ): pointer {.importc: "QIODevice_protectedbase_sender".}
proc fcQIODevice_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QIODevice_protectedbase_senderSignalIndex".}
proc fcQIODevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIODevice_protectedbase_receivers".}
proc fcQIODevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIODevice_protectedbase_isSignalConnected".}
proc fcQIODevice_new(vtbl: pointer, ): ptr cQIODevice {.importc: "QIODevice_new".}
proc fcQIODevice_new2(vtbl: pointer, parent: pointer): ptr cQIODevice {.importc: "QIODevice_new2".}
proc fcQIODevice_staticMetaObject(): pointer {.importc: "QIODevice_staticMetaObject".}
proc fcQIODevice_delete(self: pointer) {.importc: "QIODevice_delete".}

proc metaObject*(self: gen_qiodevice_types.QIODevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_metaObject(self.h))

proc metacast*(self: gen_qiodevice_types.QIODevice, param1: cstring): pointer =
  fcQIODevice_metacast(self.h, param1)

proc metacall*(self: gen_qiodevice_types.QIODevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQIODevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qiodevice_types.QIODevice, s: cstring): string =
  let v_ms = fcQIODevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc openMode*(self: gen_qiodevice_types.QIODevice, ): cint =
  cint(fcQIODevice_openMode(self.h))

proc setTextModeEnabled*(self: gen_qiodevice_types.QIODevice, enabled: bool): void =
  fcQIODevice_setTextModeEnabled(self.h, enabled)

proc isTextModeEnabled*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_isTextModeEnabled(self.h)

proc isOpen*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_isOpen(self.h)

proc isReadable*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_isReadable(self.h)

proc isWritable*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_isWritable(self.h)

proc isSequential*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_isSequential(self.h)

proc readChannelCount*(self: gen_qiodevice_types.QIODevice, ): cint =
  fcQIODevice_readChannelCount(self.h)

proc writeChannelCount*(self: gen_qiodevice_types.QIODevice, ): cint =
  fcQIODevice_writeChannelCount(self.h)

proc currentReadChannel*(self: gen_qiodevice_types.QIODevice, ): cint =
  fcQIODevice_currentReadChannel(self.h)

proc setCurrentReadChannel*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_setCurrentReadChannel(self.h, channel)

proc currentWriteChannel*(self: gen_qiodevice_types.QIODevice, ): cint =
  fcQIODevice_currentWriteChannel(self.h)

proc setCurrentWriteChannel*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_setCurrentWriteChannel(self.h, channel)

proc open*(self: gen_qiodevice_types.QIODevice, mode: cint): bool =
  fcQIODevice_open(self.h, cint(mode))

proc close*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_close(self.h)

proc pos*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_pos(self.h)

proc size*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_size(self.h)

proc seek*(self: gen_qiodevice_types.QIODevice, pos: clonglong): bool =
  fcQIODevice_seek(self.h, pos)

proc atEnd*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_atEnd(self.h)

proc reset*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_reset(self.h)

proc bytesAvailable*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_bytesToWrite(self.h)

proc read*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_read(self.h, data, maxlen)

proc read*(self: gen_qiodevice_types.QIODevice, maxlen: clonglong): seq[byte] =
  var v_bytearray = fcQIODevice_readWithMaxlen(self.h, maxlen)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readAll*(self: gen_qiodevice_types.QIODevice, ): seq[byte] =
  var v_bytearray = fcQIODevice_readAll(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readLine*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_readLine(self.h, data, maxlen)

proc readLine*(self: gen_qiodevice_types.QIODevice, ): seq[byte] =
  var v_bytearray = fcQIODevice_readLine2(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc canReadLine*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_canReadLine(self.h)

proc startTransaction*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_startTransaction(self.h)

proc commitTransaction*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_commitTransaction(self.h)

proc rollbackTransaction*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_rollbackTransaction(self.h)

proc isTransactionStarted*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_isTransactionStarted(self.h)

proc write*(self: gen_qiodevice_types.QIODevice, data: cstring, len: clonglong): clonglong =
  fcQIODevice_write(self.h, data, len)

proc write*(self: gen_qiodevice_types.QIODevice, data: cstring): clonglong =
  fcQIODevice_writeWithData(self.h, data)

proc write*(self: gen_qiodevice_types.QIODevice, data: seq[byte]): clonglong =
  fcQIODevice_write2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc peek*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_peek(self.h, data, maxlen)

proc peek*(self: gen_qiodevice_types.QIODevice, maxlen: clonglong): seq[byte] =
  var v_bytearray = fcQIODevice_peekWithMaxlen(self.h, maxlen)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc skip*(self: gen_qiodevice_types.QIODevice, maxSize: clonglong): clonglong =
  fcQIODevice_skip(self.h, maxSize)

proc waitForReadyRead*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fcQIODevice_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fcQIODevice_waitForBytesWritten(self.h, msecs)

proc ungetChar*(self: gen_qiodevice_types.QIODevice, c: cchar): void =
  fcQIODevice_ungetChar(self.h, c)

proc putChar*(self: gen_qiodevice_types.QIODevice, c: cchar): bool =
  fcQIODevice_putChar(self.h, c)

proc getChar*(self: gen_qiodevice_types.QIODevice, c: cstring): bool =
  fcQIODevice_getChar(self.h, c)

proc errorString*(self: gen_qiodevice_types.QIODevice, ): string =
  let v_ms = fcQIODevice_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readyRead*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_readyRead(self.h)

type QIODevicereadyReadSlot* = proc()
proc miqt_exec_callback_cQIODevice_readyRead(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicereadyReadSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQIODevice_readyRead_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicereadyReadSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadyReadSlot) =
  var tmp = new QIODevicereadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_readyRead(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQIODevice_readyRead, miqt_exec_callback_cQIODevice_readyRead_release)

proc channelReadyRead*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_channelReadyRead(self.h, channel)

type QIODevicechannelReadyReadSlot* = proc(channel: cint)
proc miqt_exec_callback_cQIODevice_channelReadyRead(slot: int, channel: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicechannelReadyReadSlot](cast[pointer](slot))
  let slotval1 = channel

  nimfunc[](slotval1)

proc miqt_exec_callback_cQIODevice_channelReadyRead_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicechannelReadyReadSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchannelReadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechannelReadyReadSlot) =
  var tmp = new QIODevicechannelReadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_channelReadyRead(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQIODevice_channelReadyRead, miqt_exec_callback_cQIODevice_channelReadyRead_release)

proc bytesWritten*(self: gen_qiodevice_types.QIODevice, bytes: clonglong): void =
  fcQIODevice_bytesWritten(self.h, bytes)

type QIODevicebytesWrittenSlot* = proc(bytes: clonglong)
proc miqt_exec_callback_cQIODevice_bytesWritten(slot: int, bytes: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicebytesWrittenSlot](cast[pointer](slot))
  let slotval1 = bytes

  nimfunc[](slotval1)

proc miqt_exec_callback_cQIODevice_bytesWritten_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicebytesWrittenSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicebytesWrittenSlot) =
  var tmp = new QIODevicebytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_bytesWritten(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQIODevice_bytesWritten, miqt_exec_callback_cQIODevice_bytesWritten_release)

proc channelBytesWritten*(self: gen_qiodevice_types.QIODevice, channel: cint, bytes: clonglong): void =
  fcQIODevice_channelBytesWritten(self.h, channel, bytes)

type QIODevicechannelBytesWrittenSlot* = proc(channel: cint, bytes: clonglong)
proc miqt_exec_callback_cQIODevice_channelBytesWritten(slot: int, channel: cint, bytes: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicechannelBytesWrittenSlot](cast[pointer](slot))
  let slotval1 = channel

  let slotval2 = bytes

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQIODevice_channelBytesWritten_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicechannelBytesWrittenSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchannelBytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechannelBytesWrittenSlot) =
  var tmp = new QIODevicechannelBytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_channelBytesWritten(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQIODevice_channelBytesWritten, miqt_exec_callback_cQIODevice_channelBytesWritten_release)

proc aboutToClose*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_aboutToClose(self.h)

type QIODeviceaboutToCloseSlot* = proc()
proc miqt_exec_callback_cQIODevice_aboutToClose(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIODeviceaboutToCloseSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQIODevice_aboutToClose_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODeviceaboutToCloseSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaboutToClose*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceaboutToCloseSlot) =
  var tmp = new QIODeviceaboutToCloseSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_aboutToClose(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQIODevice_aboutToClose, miqt_exec_callback_cQIODevice_aboutToClose_release)

proc readChannelFinished*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_readChannelFinished(self.h)

type QIODevicereadChannelFinishedSlot* = proc()
proc miqt_exec_callback_cQIODevice_readChannelFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicereadChannelFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQIODevice_readChannelFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicereadChannelFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreadChannelFinished*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadChannelFinishedSlot) =
  var tmp = new QIODevicereadChannelFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_readChannelFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQIODevice_readChannelFinished, miqt_exec_callback_cQIODevice_readChannelFinished_release)

proc tr*(_: type gen_qiodevice_types.QIODevice, s: cstring, c: cstring): string =
  let v_ms = fcQIODevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qiodevice_types.QIODevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIODevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readLine*(self: gen_qiodevice_types.QIODevice, maxlen: clonglong): seq[byte] =
  var v_bytearray = fcQIODevice_readLine1(self.h, maxlen)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

type QIODevicemetaObjectProc* = proc(self: QIODevice): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIODevicemetacastProc* = proc(self: QIODevice, param1: cstring): pointer {.raises: [], gcsafe.}
type QIODevicemetacallProc* = proc(self: QIODevice, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIODeviceisSequentialProc* = proc(self: QIODevice): bool {.raises: [], gcsafe.}
type QIODeviceopenProc* = proc(self: QIODevice, mode: cint): bool {.raises: [], gcsafe.}
type QIODevicecloseProc* = proc(self: QIODevice): void {.raises: [], gcsafe.}
type QIODeviceposProc* = proc(self: QIODevice): clonglong {.raises: [], gcsafe.}
type QIODevicesizeProc* = proc(self: QIODevice): clonglong {.raises: [], gcsafe.}
type QIODeviceseekProc* = proc(self: QIODevice, pos: clonglong): bool {.raises: [], gcsafe.}
type QIODeviceatEndProc* = proc(self: QIODevice): bool {.raises: [], gcsafe.}
type QIODeviceresetProc* = proc(self: QIODevice): bool {.raises: [], gcsafe.}
type QIODevicebytesAvailableProc* = proc(self: QIODevice): clonglong {.raises: [], gcsafe.}
type QIODevicebytesToWriteProc* = proc(self: QIODevice): clonglong {.raises: [], gcsafe.}
type QIODevicecanReadLineProc* = proc(self: QIODevice): bool {.raises: [], gcsafe.}
type QIODevicewaitForReadyReadProc* = proc(self: QIODevice, msecs: cint): bool {.raises: [], gcsafe.}
type QIODevicewaitForBytesWrittenProc* = proc(self: QIODevice, msecs: cint): bool {.raises: [], gcsafe.}
type QIODevicereadDataProc* = proc(self: QIODevice, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QIODevicereadLineDataProc* = proc(self: QIODevice, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QIODeviceskipDataProc* = proc(self: QIODevice, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QIODevicewriteDataProc* = proc(self: QIODevice, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QIODeviceeventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIODeviceeventFilterProc* = proc(self: QIODevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIODevicetimerEventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIODevicechildEventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIODevicecustomEventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIODeviceconnectNotifyProc* = proc(self: QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIODevicedisconnectNotifyProc* = proc(self: QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIODeviceVTable* = object
  vtbl: cQIODeviceVTable
  metaObject*: QIODevicemetaObjectProc
  metacast*: QIODevicemetacastProc
  metacall*: QIODevicemetacallProc
  isSequential*: QIODeviceisSequentialProc
  open*: QIODeviceopenProc
  close*: QIODevicecloseProc
  pos*: QIODeviceposProc
  size*: QIODevicesizeProc
  seek*: QIODeviceseekProc
  atEnd*: QIODeviceatEndProc
  reset*: QIODeviceresetProc
  bytesAvailable*: QIODevicebytesAvailableProc
  bytesToWrite*: QIODevicebytesToWriteProc
  canReadLine*: QIODevicecanReadLineProc
  waitForReadyRead*: QIODevicewaitForReadyReadProc
  waitForBytesWritten*: QIODevicewaitForBytesWrittenProc
  readData*: QIODevicereadDataProc
  readLineData*: QIODevicereadLineDataProc
  skipData*: QIODeviceskipDataProc
  writeData*: QIODevicewriteDataProc
  event*: QIODeviceeventProc
  eventFilter*: QIODeviceeventFilterProc
  timerEvent*: QIODevicetimerEventProc
  childEvent*: QIODevicechildEventProc
  customEvent*: QIODevicecustomEventProc
  connectNotify*: QIODeviceconnectNotifyProc
  disconnectNotify*: QIODevicedisconnectNotifyProc
proc QIODevicemetaObject*(self: gen_qiodevice_types.QIODevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQIODevice_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QIODevicemetacast*(self: gen_qiodevice_types.QIODevice, param1: cstring): pointer =
  fcQIODevice_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQIODevice_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIODevicemetacall*(self: gen_qiodevice_types.QIODevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQIODevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQIODevice_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIODeviceisSequential*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQIODevice_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QIODeviceopen*(self: gen_qiodevice_types.QIODevice, mode: cint): bool =
  fcQIODevice_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQIODevice_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QIODeviceclose*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_virtualbase_close(self.h)

proc miqt_exec_callback_cQIODevice_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  vtbl[].close(self)

proc QIODevicepos*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_virtualbase_pos(self.h)

proc miqt_exec_callback_cQIODevice_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QIODevicesize*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_virtualbase_size(self.h)

proc miqt_exec_callback_cQIODevice_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QIODeviceseek*(self: gen_qiodevice_types.QIODevice, pos: clonglong): bool =
  fcQIODevice_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQIODevice_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QIODeviceatEnd*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQIODevice_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QIODevicereset*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_virtualbase_reset(self.h)

proc miqt_exec_callback_cQIODevice_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QIODevicebytesAvailable*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQIODevice_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QIODevicebytesToWrite*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fcQIODevice_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQIODevice_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QIODevicecanReadLine*(self: gen_qiodevice_types.QIODevice, ): bool =
  fcQIODevice_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQIODevice_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QIODevicewaitForReadyRead*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fcQIODevice_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQIODevice_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QIODevicewaitForBytesWritten*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fcQIODevice_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQIODevice_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQIODevice_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QIODevicereadLineData*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQIODevice_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QIODeviceskipData*(self: gen_qiodevice_types.QIODevice, maxSize: clonglong): clonglong =
  fcQIODevice_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQIODevice_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQIODevice_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QIODeviceevent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQIODevice_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQIODevice_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIODeviceeventFilter*(self: gen_qiodevice_types.QIODevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIODevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQIODevice_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIODevicetimerEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIODevice_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQIODevice_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QIODevicechildEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIODevice_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQIODevice_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QIODevicecustomEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QEvent): void =
  fcQIODevice_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQIODevice_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QIODeviceconnectNotify*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIODevice_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIODevice_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QIODevicedisconnectNotify*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIODevice_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIODevice_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](vtbl)
  let self = QIODevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setOpenMode*(self: gen_qiodevice_types.QIODevice, openMode: cint): void =
  fcQIODevice_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qiodevice_types.QIODevice, errorString: string): void =
  fcQIODevice_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qiodevice_types.QIODevice, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIODevice_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qiodevice_types.QIODevice, ): cint =
  fcQIODevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qiodevice_types.QIODevice, signal: cstring): cint =
  fcQIODevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIODevice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qiodevice_types.QIODevice,
    vtbl: ref QIODeviceVTable = nil): gen_qiodevice_types.QIODevice =
  let vtbl = if vtbl == nil: new QIODeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIODeviceVTable, _: ptr cQIODevice) {.cdecl.} =
    let vtbl = cast[ref QIODeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIODevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIODevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIODevice_metacall
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQIODevice_isSequential
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQIODevice_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQIODevice_close
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQIODevice_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQIODevice_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQIODevice_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQIODevice_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQIODevice_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQIODevice_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQIODevice_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQIODevice_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQIODevice_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQIODevice_waitForBytesWritten
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQIODevice_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQIODevice_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQIODevice_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQIODevice_writeData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIODevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIODevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIODevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIODevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIODevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIODevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIODevice_disconnectNotify
  gen_qiodevice_types.QIODevice(h: fcQIODevice_new(addr(vtbl[]), ))

proc create*(T: type gen_qiodevice_types.QIODevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIODeviceVTable = nil): gen_qiodevice_types.QIODevice =
  let vtbl = if vtbl == nil: new QIODeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIODeviceVTable, _: ptr cQIODevice) {.cdecl.} =
    let vtbl = cast[ref QIODeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIODevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIODevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIODevice_metacall
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQIODevice_isSequential
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQIODevice_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQIODevice_close
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQIODevice_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQIODevice_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQIODevice_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQIODevice_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQIODevice_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQIODevice_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQIODevice_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQIODevice_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQIODevice_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQIODevice_waitForBytesWritten
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQIODevice_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQIODevice_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQIODevice_skipData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQIODevice_writeData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIODevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIODevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIODevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIODevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIODevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIODevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIODevice_disconnectNotify
  gen_qiodevice_types.QIODevice(h: fcQIODevice_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qiodevice_types.QIODevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_staticMetaObject())
proc delete*(self: gen_qiodevice_types.QIODevice) =
  fcQIODevice_delete(self.h)
