import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qiodevice.cpp", cflags).}


type QIODeviceOpenModeFlagEnum* = distinct cint
template NotOpen*(_: type QIODeviceOpenModeFlagEnum): untyped = 0
template ReadOnly*(_: type QIODeviceOpenModeFlagEnum): untyped = 1
template WriteOnly*(_: type QIODeviceOpenModeFlagEnum): untyped = 2
template ReadWrite*(_: type QIODeviceOpenModeFlagEnum): untyped = 3
template Append*(_: type QIODeviceOpenModeFlagEnum): untyped = 4
template Truncate*(_: type QIODeviceOpenModeFlagEnum): untyped = 8
template Text*(_: type QIODeviceOpenModeFlagEnum): untyped = 16
template Unbuffered*(_: type QIODeviceOpenModeFlagEnum): untyped = 32
template NewOnly*(_: type QIODeviceOpenModeFlagEnum): untyped = 64
template ExistingOnly*(_: type QIODeviceOpenModeFlagEnum): untyped = 128


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

proc fcQIODevice_metaObject(self: pointer): pointer {.importc: "QIODevice_metaObject".}
proc fcQIODevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QIODevice_metacast".}
proc fcQIODevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIODevice_metacall".}
proc fcQIODevice_tr(s: cstring): struct_miqt_string {.importc: "QIODevice_tr".}
proc fcQIODevice_trUtf8(s: cstring): struct_miqt_string {.importc: "QIODevice_trUtf8".}
proc fcQIODevice_openMode(self: pointer): cint {.importc: "QIODevice_openMode".}
proc fcQIODevice_setTextModeEnabled(self: pointer, enabled: bool): void {.importc: "QIODevice_setTextModeEnabled".}
proc fcQIODevice_isTextModeEnabled(self: pointer): bool {.importc: "QIODevice_isTextModeEnabled".}
proc fcQIODevice_isOpen(self: pointer): bool {.importc: "QIODevice_isOpen".}
proc fcQIODevice_isReadable(self: pointer): bool {.importc: "QIODevice_isReadable".}
proc fcQIODevice_isWritable(self: pointer): bool {.importc: "QIODevice_isWritable".}
proc fcQIODevice_isSequential(self: pointer): bool {.importc: "QIODevice_isSequential".}
proc fcQIODevice_readChannelCount(self: pointer): cint {.importc: "QIODevice_readChannelCount".}
proc fcQIODevice_writeChannelCount(self: pointer): cint {.importc: "QIODevice_writeChannelCount".}
proc fcQIODevice_currentReadChannel(self: pointer): cint {.importc: "QIODevice_currentReadChannel".}
proc fcQIODevice_setCurrentReadChannel(self: pointer, channel: cint): void {.importc: "QIODevice_setCurrentReadChannel".}
proc fcQIODevice_currentWriteChannel(self: pointer): cint {.importc: "QIODevice_currentWriteChannel".}
proc fcQIODevice_setCurrentWriteChannel(self: pointer, channel: cint): void {.importc: "QIODevice_setCurrentWriteChannel".}
proc fcQIODevice_open(self: pointer, mode: cint): bool {.importc: "QIODevice_open".}
proc fcQIODevice_close(self: pointer): void {.importc: "QIODevice_close".}
proc fcQIODevice_pos(self: pointer): clonglong {.importc: "QIODevice_pos".}
proc fcQIODevice_size(self: pointer): clonglong {.importc: "QIODevice_size".}
proc fcQIODevice_seek(self: pointer, pos: clonglong): bool {.importc: "QIODevice_seek".}
proc fcQIODevice_atEnd(self: pointer): bool {.importc: "QIODevice_atEnd".}
proc fcQIODevice_reset(self: pointer): bool {.importc: "QIODevice_reset".}
proc fcQIODevice_bytesAvailable(self: pointer): clonglong {.importc: "QIODevice_bytesAvailable".}
proc fcQIODevice_bytesToWrite(self: pointer): clonglong {.importc: "QIODevice_bytesToWrite".}
proc fcQIODevice_read(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_read".}
proc fcQIODevice_readWithMaxlen(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readWithMaxlen".}
proc fcQIODevice_readAll(self: pointer): struct_miqt_string {.importc: "QIODevice_readAll".}
proc fcQIODevice_readLine(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_readLine".}
proc fcQIODevice_readLine2(self: pointer): struct_miqt_string {.importc: "QIODevice_readLine2".}
proc fcQIODevice_canReadLine(self: pointer): bool {.importc: "QIODevice_canReadLine".}
proc fcQIODevice_startTransaction(self: pointer): void {.importc: "QIODevice_startTransaction".}
proc fcQIODevice_commitTransaction(self: pointer): void {.importc: "QIODevice_commitTransaction".}
proc fcQIODevice_rollbackTransaction(self: pointer): void {.importc: "QIODevice_rollbackTransaction".}
proc fcQIODevice_isTransactionStarted(self: pointer): bool {.importc: "QIODevice_isTransactionStarted".}
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
proc fcQIODevice_errorString(self: pointer): struct_miqt_string {.importc: "QIODevice_errorString".}
proc fcQIODevice_readyRead(self: pointer): void {.importc: "QIODevice_readyRead".}
proc fcQIODevice_connect_readyRead(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_readyRead".}
proc fcQIODevice_channelReadyRead(self: pointer, channel: cint): void {.importc: "QIODevice_channelReadyRead".}
proc fcQIODevice_connect_channelReadyRead(self: pointer, slot: int, callback: proc (slot: int, channel: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_channelReadyRead".}
proc fcQIODevice_bytesWritten(self: pointer, bytes: clonglong): void {.importc: "QIODevice_bytesWritten".}
proc fcQIODevice_connect_bytesWritten(self: pointer, slot: int, callback: proc (slot: int, bytes: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_bytesWritten".}
proc fcQIODevice_channelBytesWritten(self: pointer, channel: cint, bytes: clonglong): void {.importc: "QIODevice_channelBytesWritten".}
proc fcQIODevice_connect_channelBytesWritten(self: pointer, slot: int, callback: proc (slot: int, channel: cint, bytes: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_channelBytesWritten".}
proc fcQIODevice_aboutToClose(self: pointer): void {.importc: "QIODevice_aboutToClose".}
proc fcQIODevice_connect_aboutToClose(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_aboutToClose".}
proc fcQIODevice_readChannelFinished(self: pointer): void {.importc: "QIODevice_readChannelFinished".}
proc fcQIODevice_connect_readChannelFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QIODevice_connect_readChannelFinished".}
proc fcQIODevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIODevice_tr2".}
proc fcQIODevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIODevice_tr3".}
proc fcQIODevice_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIODevice_trUtf82".}
proc fcQIODevice_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIODevice_trUtf83".}
proc fcQIODevice_readLine1(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readLine1".}
proc fcQIODevice_vtbl(self: pointer): pointer {.importc: "QIODevice_vtbl".}
proc fcQIODevice_vdata(self: pointer): pointer {.importc: "QIODevice_vdata".}
type cQIODeviceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIODevice_virtualbase_metaObject(self: pointer): pointer {.importc: "QIODevice_virtualbase_metaObject".}
proc fcQIODevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIODevice_virtualbase_metacast".}
proc fcQIODevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIODevice_virtualbase_metacall".}
proc fcQIODevice_virtualbase_isSequential(self: pointer): bool {.importc: "QIODevice_virtualbase_isSequential".}
proc fcQIODevice_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QIODevice_virtualbase_open".}
proc fcQIODevice_virtualbase_close(self: pointer): void {.importc: "QIODevice_virtualbase_close".}
proc fcQIODevice_virtualbase_pos(self: pointer): clonglong {.importc: "QIODevice_virtualbase_pos".}
proc fcQIODevice_virtualbase_size(self: pointer): clonglong {.importc: "QIODevice_virtualbase_size".}
proc fcQIODevice_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QIODevice_virtualbase_seek".}
proc fcQIODevice_virtualbase_atEnd(self: pointer): bool {.importc: "QIODevice_virtualbase_atEnd".}
proc fcQIODevice_virtualbase_reset(self: pointer): bool {.importc: "QIODevice_virtualbase_reset".}
proc fcQIODevice_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QIODevice_virtualbase_bytesAvailable".}
proc fcQIODevice_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QIODevice_virtualbase_bytesToWrite".}
proc fcQIODevice_virtualbase_canReadLine(self: pointer): bool {.importc: "QIODevice_virtualbase_canReadLine".}
proc fcQIODevice_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QIODevice_virtualbase_waitForReadyRead".}
proc fcQIODevice_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QIODevice_virtualbase_waitForBytesWritten".}
proc fcQIODevice_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QIODevice_virtualbase_readLineData".}
proc fcQIODevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIODevice_virtualbase_event".}
proc fcQIODevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIODevice_virtualbase_eventFilter".}
proc fcQIODevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIODevice_virtualbase_timerEvent".}
proc fcQIODevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIODevice_virtualbase_childEvent".}
proc fcQIODevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIODevice_virtualbase_customEvent".}
proc fcQIODevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIODevice_virtualbase_connectNotify".}
proc fcQIODevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIODevice_virtualbase_disconnectNotify".}
proc fcQIODevice_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QIODevice_protectedbase_setOpenMode".}
proc fcQIODevice_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QIODevice_protectedbase_setErrorString".}
proc fcQIODevice_protectedbase_sender(self: pointer): pointer {.importc: "QIODevice_protectedbase_sender".}
proc fcQIODevice_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QIODevice_protectedbase_senderSignalIndex".}
proc fcQIODevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIODevice_protectedbase_receivers".}
proc fcQIODevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIODevice_protectedbase_isSignalConnected".}
proc fcQIODevice_new(vtbl, vdata: pointer): ptr cQIODevice {.importc: "QIODevice_new".}
proc fcQIODevice_new2(vtbl, vdata: pointer, parent: pointer): ptr cQIODevice {.importc: "QIODevice_new2".}
proc fcQIODevice_staticMetaObject(): pointer {.importc: "QIODevice_staticMetaObject".}

proc metaObject*(self: gen_qiodevice_types.QIODevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_metaObject(self.h), owned: false)

proc metacast*(self: gen_qiodevice_types.QIODevice, param1: cstring): pointer =
  fcQIODevice_metacast(self.h, param1)

proc metacall*(self: gen_qiodevice_types.QIODevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQIODevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qiodevice_types.QIODevice, s: cstring): string =
  let v_ms = fcQIODevice_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiodevice_types.QIODevice, s: cstring): string =
  let v_ms = fcQIODevice_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc openMode*(self: gen_qiodevice_types.QIODevice): cint =
  cint(fcQIODevice_openMode(self.h))

proc setTextModeEnabled*(self: gen_qiodevice_types.QIODevice, enabled: bool): void =
  fcQIODevice_setTextModeEnabled(self.h, enabled)

proc isTextModeEnabled*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_isTextModeEnabled(self.h)

proc isOpen*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_isOpen(self.h)

proc isReadable*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_isReadable(self.h)

proc isWritable*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_isWritable(self.h)

proc isSequential*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_isSequential(self.h)

proc readChannelCount*(self: gen_qiodevice_types.QIODevice): cint =
  fcQIODevice_readChannelCount(self.h)

proc writeChannelCount*(self: gen_qiodevice_types.QIODevice): cint =
  fcQIODevice_writeChannelCount(self.h)

proc currentReadChannel*(self: gen_qiodevice_types.QIODevice): cint =
  fcQIODevice_currentReadChannel(self.h)

proc setCurrentReadChannel*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_setCurrentReadChannel(self.h, channel)

proc currentWriteChannel*(self: gen_qiodevice_types.QIODevice): cint =
  fcQIODevice_currentWriteChannel(self.h)

proc setCurrentWriteChannel*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_setCurrentWriteChannel(self.h, channel)

proc open*(self: gen_qiodevice_types.QIODevice, mode: cint): bool =
  fcQIODevice_open(self.h, cint(mode))

proc close*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_close(self.h)

proc pos*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_pos(self.h)

proc size*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_size(self.h)

proc seek*(self: gen_qiodevice_types.QIODevice, pos: clonglong): bool =
  fcQIODevice_seek(self.h, pos)

proc atEnd*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_atEnd(self.h)

proc reset*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_reset(self.h)

proc bytesAvailable*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_bytesToWrite(self.h)

proc read*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_read(self.h, data, maxlen)

proc read*(self: gen_qiodevice_types.QIODevice, maxlen: clonglong): seq[byte] =
  var v_bytearray = fcQIODevice_readWithMaxlen(self.h, maxlen)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readAll*(self: gen_qiodevice_types.QIODevice): seq[byte] =
  var v_bytearray = fcQIODevice_readAll(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readLine*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_readLine(self.h, data, maxlen)

proc readLine*(self: gen_qiodevice_types.QIODevice): seq[byte] =
  var v_bytearray = fcQIODevice_readLine2(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc canReadLine*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_canReadLine(self.h)

proc startTransaction*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_startTransaction(self.h)

proc commitTransaction*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_commitTransaction(self.h)

proc rollbackTransaction*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_rollbackTransaction(self.h)

proc isTransactionStarted*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_isTransactionStarted(self.h)

proc write*(self: gen_qiodevice_types.QIODevice, data: cstring, len: clonglong): clonglong =
  fcQIODevice_write(self.h, data, len)

proc write*(self: gen_qiodevice_types.QIODevice, data: cstring): clonglong =
  fcQIODevice_writeWithData(self.h, data)

proc write*(self: gen_qiodevice_types.QIODevice, data: openArray[byte]): clonglong =
  fcQIODevice_write2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc peek*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_peek(self.h, data, maxlen)

proc peek*(self: gen_qiodevice_types.QIODevice, maxlen: clonglong): seq[byte] =
  var v_bytearray = fcQIODevice_peekWithMaxlen(self.h, maxlen)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
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

proc errorString*(self: gen_qiodevice_types.QIODevice): string =
  let v_ms = fcQIODevice_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc readyRead*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_readyRead(self.h)

type QIODevicereadyReadSlot* = proc()
proc cQIODevice_slot_callback_readyRead(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicereadyReadSlot](cast[pointer](slot))
  nimfunc[]()

proc cQIODevice_slot_callback_readyRead_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicereadyReadSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadyReadSlot) =
  var tmp = new QIODevicereadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_readyRead(self.h, cast[int](addr tmp[]), cQIODevice_slot_callback_readyRead, cQIODevice_slot_callback_readyRead_release)

proc channelReadyRead*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_channelReadyRead(self.h, channel)

type QIODevicechannelReadyReadSlot* = proc(channel: cint)
proc cQIODevice_slot_callback_channelReadyRead(slot: int, channel: cint) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicechannelReadyReadSlot](cast[pointer](slot))
  let slotval1 = channel

  nimfunc[](slotval1)

proc cQIODevice_slot_callback_channelReadyRead_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicechannelReadyReadSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchannelReadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechannelReadyReadSlot) =
  var tmp = new QIODevicechannelReadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_channelReadyRead(self.h, cast[int](addr tmp[]), cQIODevice_slot_callback_channelReadyRead, cQIODevice_slot_callback_channelReadyRead_release)

proc bytesWritten*(self: gen_qiodevice_types.QIODevice, bytes: clonglong): void =
  fcQIODevice_bytesWritten(self.h, bytes)

type QIODevicebytesWrittenSlot* = proc(bytes: clonglong)
proc cQIODevice_slot_callback_bytesWritten(slot: int, bytes: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicebytesWrittenSlot](cast[pointer](slot))
  let slotval1 = bytes

  nimfunc[](slotval1)

proc cQIODevice_slot_callback_bytesWritten_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicebytesWrittenSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicebytesWrittenSlot) =
  var tmp = new QIODevicebytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_bytesWritten(self.h, cast[int](addr tmp[]), cQIODevice_slot_callback_bytesWritten, cQIODevice_slot_callback_bytesWritten_release)

proc channelBytesWritten*(self: gen_qiodevice_types.QIODevice, channel: cint, bytes: clonglong): void =
  fcQIODevice_channelBytesWritten(self.h, channel, bytes)

type QIODevicechannelBytesWrittenSlot* = proc(channel: cint, bytes: clonglong)
proc cQIODevice_slot_callback_channelBytesWritten(slot: int, channel: cint, bytes: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicechannelBytesWrittenSlot](cast[pointer](slot))
  let slotval1 = channel

  let slotval2 = bytes

  nimfunc[](slotval1, slotval2)

proc cQIODevice_slot_callback_channelBytesWritten_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicechannelBytesWrittenSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onchannelBytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechannelBytesWrittenSlot) =
  var tmp = new QIODevicechannelBytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_channelBytesWritten(self.h, cast[int](addr tmp[]), cQIODevice_slot_callback_channelBytesWritten, cQIODevice_slot_callback_channelBytesWritten_release)

proc aboutToClose*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_aboutToClose(self.h)

type QIODeviceaboutToCloseSlot* = proc()
proc cQIODevice_slot_callback_aboutToClose(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIODeviceaboutToCloseSlot](cast[pointer](slot))
  nimfunc[]()

proc cQIODevice_slot_callback_aboutToClose_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODeviceaboutToCloseSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaboutToClose*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceaboutToCloseSlot) =
  var tmp = new QIODeviceaboutToCloseSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_aboutToClose(self.h, cast[int](addr tmp[]), cQIODevice_slot_callback_aboutToClose, cQIODevice_slot_callback_aboutToClose_release)

proc readChannelFinished*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_readChannelFinished(self.h)

type QIODevicereadChannelFinishedSlot* = proc()
proc cQIODevice_slot_callback_readChannelFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QIODevicereadChannelFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQIODevice_slot_callback_readChannelFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QIODevicereadChannelFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreadChannelFinished*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadChannelFinishedSlot) =
  var tmp = new QIODevicereadChannelFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_readChannelFinished(self.h, cast[int](addr tmp[]), cQIODevice_slot_callback_readChannelFinished, cQIODevice_slot_callback_readChannelFinished_release)

proc tr*(_: type gen_qiodevice_types.QIODevice, s: cstring, c: cstring): string =
  let v_ms = fcQIODevice_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qiodevice_types.QIODevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIODevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiodevice_types.QIODevice, s: cstring, c: cstring): string =
  let v_ms = fcQIODevice_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiodevice_types.QIODevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIODevice_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc readLine*(self: gen_qiodevice_types.QIODevice, maxlen: clonglong): seq[byte] =
  var v_bytearray = fcQIODevice_readLine1(self.h, maxlen)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
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
type QIODevicewriteDataProc* = proc(self: QIODevice, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QIODeviceeventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIODeviceeventFilterProc* = proc(self: QIODevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIODevicetimerEventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIODevicechildEventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIODevicecustomEventProc* = proc(self: QIODevice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIODeviceconnectNotifyProc* = proc(self: QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIODevicedisconnectNotifyProc* = proc(self: QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIODeviceVTable* {.inheritable, pure.} = object
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
  writeData*: QIODevicewriteDataProc
  event*: QIODeviceeventProc
  eventFilter*: QIODeviceeventFilterProc
  timerEvent*: QIODevicetimerEventProc
  childEvent*: QIODevicechildEventProc
  customEvent*: QIODevicecustomEventProc
  connectNotify*: QIODeviceconnectNotifyProc
  disconnectNotify*: QIODevicedisconnectNotifyProc
proc QIODevicemetaObject*(self: gen_qiodevice_types.QIODevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_virtualbase_metaObject(self.h), owned: false)

proc cQIODevice_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIODevicemetacast*(self: gen_qiodevice_types.QIODevice, param1: cstring): pointer =
  fcQIODevice_virtualbase_metacast(self.h, param1)

proc cQIODevice_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIODevicemetacall*(self: gen_qiodevice_types.QIODevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQIODevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQIODevice_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIODeviceisSequential*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_virtualbase_isSequential(self.h)

proc cQIODevice_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QIODeviceopen*(self: gen_qiodevice_types.QIODevice, mode: cint): bool =
  fcQIODevice_virtualbase_open(self.h, cint(mode))

proc cQIODevice_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QIODeviceclose*(self: gen_qiodevice_types.QIODevice): void =
  fcQIODevice_virtualbase_close(self.h)

proc cQIODevice_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  vtbl[].close(self)

proc QIODevicepos*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_virtualbase_pos(self.h)

proc cQIODevice_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QIODevicesize*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_virtualbase_size(self.h)

proc cQIODevice_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QIODeviceseek*(self: gen_qiodevice_types.QIODevice, pos: clonglong): bool =
  fcQIODevice_virtualbase_seek(self.h, pos)

proc cQIODevice_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QIODeviceatEnd*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_virtualbase_atEnd(self.h)

proc cQIODevice_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QIODevicereset*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_virtualbase_reset(self.h)

proc cQIODevice_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QIODevicebytesAvailable*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_virtualbase_bytesAvailable(self.h)

proc cQIODevice_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QIODevicebytesToWrite*(self: gen_qiodevice_types.QIODevice): clonglong =
  fcQIODevice_virtualbase_bytesToWrite(self.h)

proc cQIODevice_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QIODevicecanReadLine*(self: gen_qiodevice_types.QIODevice): bool =
  fcQIODevice_virtualbase_canReadLine(self.h)

proc cQIODevice_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QIODevicewaitForReadyRead*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fcQIODevice_virtualbase_waitForReadyRead(self.h, msecs)

proc cQIODevice_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QIODevicewaitForBytesWritten*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fcQIODevice_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQIODevice_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc cQIODevice_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QIODevicereadLineData*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fcQIODevice_virtualbase_readLineData(self.h, data, maxlen)

proc cQIODevice_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc cQIODevice_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QIODeviceevent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQIODevice_virtualbase_event(self.h, event.h)

proc cQIODevice_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIODeviceeventFilter*(self: gen_qiodevice_types.QIODevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIODevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQIODevice_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIODevicetimerEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIODevice_virtualbase_timerEvent(self.h, event.h)

proc cQIODevice_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QIODevicechildEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIODevice_virtualbase_childEvent(self.h, event.h)

proc cQIODevice_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QIODevicecustomEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QEvent): void =
  fcQIODevice_virtualbase_customEvent(self.h, event.h)

proc cQIODevice_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QIODeviceconnectNotify*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIODevice_virtualbase_connectNotify(self.h, signal.h)

proc cQIODevice_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QIODevicedisconnectNotify*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIODevice_virtualbase_disconnectNotify(self.h, signal.h)

proc cQIODevice_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIODeviceVTable](fcQIODevice_vdata(self))
  let self = QIODevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQIODevice* {.inheritable.} = ref object of QIODevice
  vtbl*: cQIODeviceVTable
method metaObject*(self: VirtualQIODevice): gen_qobjectdefs_types.QMetaObject {.base.} =
  QIODevicemetaObject(self[])
proc cQIODevice_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQIODevice, param1: cstring): pointer {.base.} =
  QIODevicemetacast(self[], param1)
proc cQIODevice_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQIODevice, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QIODevicemetacall(self[], param1, param2, param3)
proc cQIODevice_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method isSequential*(self: VirtualQIODevice): bool {.base.} =
  QIODeviceisSequential(self[])
proc cQIODevice_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method open*(self: VirtualQIODevice, mode: cint): bool {.base.} =
  QIODeviceopen(self[], mode)
proc cQIODevice_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method close*(self: VirtualQIODevice): void {.base.} =
  QIODeviceclose(self[])
proc cQIODevice_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  inst.close()

method pos*(self: VirtualQIODevice): clonglong {.base.} =
  QIODevicepos(self[])
proc cQIODevice_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQIODevice): clonglong {.base.} =
  QIODevicesize(self[])
proc cQIODevice_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method seek*(self: VirtualQIODevice, pos: clonglong): bool {.base.} =
  QIODeviceseek(self[], pos)
proc cQIODevice_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method atEnd*(self: VirtualQIODevice): bool {.base.} =
  QIODeviceatEnd(self[])
proc cQIODevice_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method reset*(self: VirtualQIODevice): bool {.base.} =
  QIODevicereset(self[])
proc cQIODevice_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method bytesAvailable*(self: VirtualQIODevice): clonglong {.base.} =
  QIODevicebytesAvailable(self[])
proc cQIODevice_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQIODevice): clonglong {.base.} =
  QIODevicebytesToWrite(self[])
proc cQIODevice_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQIODevice): bool {.base.} =
  QIODevicecanReadLine(self[])
proc cQIODevice_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method waitForReadyRead*(self: VirtualQIODevice, msecs: cint): bool {.base.} =
  QIODevicewaitForReadyRead(self[], msecs)
proc cQIODevice_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQIODevice, msecs: cint): bool {.base.} =
  QIODevicewaitForBytesWritten(self[], msecs)
proc cQIODevice_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method readData*(self: VirtualQIODevice, data: cstring, maxlen: clonglong): clonglong {.base.} =
  raiseAssert("missing implementation of QIODevice_virtualbase_readData")
proc cQIODevice_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQIODevice, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QIODevicereadLineData(self[], data, maxlen)
proc cQIODevice_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method writeData*(self: VirtualQIODevice, data: cstring, len: clonglong): clonglong {.base.} =
  raiseAssert("missing implementation of QIODevice_virtualbase_writeData")
proc cQIODevice_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQIODevice, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIODeviceevent(self[], event)
proc cQIODevice_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQIODevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIODeviceeventFilter(self[], watched, event)
proc cQIODevice_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQIODevice, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QIODevicetimerEvent(self[], event)
proc cQIODevice_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQIODevice, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QIODevicechildEvent(self[], event)
proc cQIODevice_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQIODevice, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QIODevicecustomEvent(self[], event)
proc cQIODevice_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQIODevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIODeviceconnectNotify(self[], signal)
proc cQIODevice_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQIODevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIODevicedisconnectNotify(self[], signal)
proc cQIODevice_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIODevice](fcQIODevice_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setOpenMode*(self: gen_qiodevice_types.QIODevice, openMode: cint): void =
  fcQIODevice_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qiodevice_types.QIODevice, errorString: openArray[char]): void =
  fcQIODevice_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qiodevice_types.QIODevice): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIODevice_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qiodevice_types.QIODevice): cint =
  fcQIODevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qiodevice_types.QIODevice, signal: cstring): cint =
  fcQIODevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIODevice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qiodevice_types.QIODevice,
    vtbl: ref QIODeviceVTable = nil): gen_qiodevice_types.QIODevice =
  let vtbl = if vtbl == nil: new QIODeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIODeviceVTable](fcQIODevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIODevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIODevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIODevice_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQIODevice_vtable_callback_isSequential
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQIODevice_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQIODevice_vtable_callback_close
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQIODevice_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQIODevice_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQIODevice_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQIODevice_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQIODevice_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQIODevice_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQIODevice_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQIODevice_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQIODevice_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQIODevice_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQIODevice_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQIODevice_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQIODevice_vtable_callback_writeData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIODevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIODevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIODevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIODevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIODevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIODevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIODevice_vtable_callback_disconnectNotify
  gen_qiodevice_types.QIODevice(h: fcQIODevice_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qiodevice_types.QIODevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIODeviceVTable = nil): gen_qiodevice_types.QIODevice =
  let vtbl = if vtbl == nil: new QIODeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIODeviceVTable](fcQIODevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIODevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIODevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIODevice_vtable_callback_metacall
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQIODevice_vtable_callback_isSequential
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQIODevice_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQIODevice_vtable_callback_close
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQIODevice_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQIODevice_vtable_callback_size
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQIODevice_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQIODevice_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQIODevice_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQIODevice_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQIODevice_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQIODevice_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQIODevice_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQIODevice_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQIODevice_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQIODevice_vtable_callback_readLineData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQIODevice_vtable_callback_writeData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIODevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIODevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIODevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIODevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIODevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIODevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIODevice_vtable_callback_disconnectNotify
  gen_qiodevice_types.QIODevice(h: fcQIODevice_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQIODevice_mvtbl = cQIODeviceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIODevice()[])](self.fcQIODevice_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQIODevice_method_callback_metaObject,
  metacast: cQIODevice_method_callback_metacast,
  metacall: cQIODevice_method_callback_metacall,
  isSequential: cQIODevice_method_callback_isSequential,
  open: cQIODevice_method_callback_open,
  close: cQIODevice_method_callback_close,
  pos: cQIODevice_method_callback_pos,
  size: cQIODevice_method_callback_size,
  seek: cQIODevice_method_callback_seek,
  atEnd: cQIODevice_method_callback_atEnd,
  reset: cQIODevice_method_callback_reset,
  bytesAvailable: cQIODevice_method_callback_bytesAvailable,
  bytesToWrite: cQIODevice_method_callback_bytesToWrite,
  canReadLine: cQIODevice_method_callback_canReadLine,
  waitForReadyRead: cQIODevice_method_callback_waitForReadyRead,
  waitForBytesWritten: cQIODevice_method_callback_waitForBytesWritten,
  readData: cQIODevice_method_callback_readData,
  readLineData: cQIODevice_method_callback_readLineData,
  writeData: cQIODevice_method_callback_writeData,
  event: cQIODevice_method_callback_event,
  eventFilter: cQIODevice_method_callback_eventFilter,
  timerEvent: cQIODevice_method_callback_timerEvent,
  childEvent: cQIODevice_method_callback_childEvent,
  customEvent: cQIODevice_method_callback_customEvent,
  connectNotify: cQIODevice_method_callback_connectNotify,
  disconnectNotify: cQIODevice_method_callback_disconnectNotify,
)
proc create*(T: type gen_qiodevice_types.QIODevice,
    inst: VirtualQIODevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIODevice_new(addr(cQIODevice_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qiodevice_types.QIODevice,
    parent: gen_qobject_types.QObject,
    inst: VirtualQIODevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIODevice_new2(addr(cQIODevice_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qiodevice_types.QIODevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_staticMetaObject())
