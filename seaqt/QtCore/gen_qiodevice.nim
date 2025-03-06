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

proc fcQIODevice_new(): ptr cQIODevice {.importc: "QIODevice_new".}
proc fcQIODevice_new2(parent: pointer): ptr cQIODevice {.importc: "QIODevice_new2".}
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
proc fcQIODevice_connect_readyRead(self: pointer, slot: int) {.importc: "QIODevice_connect_readyRead".}
proc fcQIODevice_channelReadyRead(self: pointer, channel: cint): void {.importc: "QIODevice_channelReadyRead".}
proc fcQIODevice_connect_channelReadyRead(self: pointer, slot: int) {.importc: "QIODevice_connect_channelReadyRead".}
proc fcQIODevice_bytesWritten(self: pointer, bytes: clonglong): void {.importc: "QIODevice_bytesWritten".}
proc fcQIODevice_connect_bytesWritten(self: pointer, slot: int) {.importc: "QIODevice_connect_bytesWritten".}
proc fcQIODevice_channelBytesWritten(self: pointer, channel: cint, bytes: clonglong): void {.importc: "QIODevice_channelBytesWritten".}
proc fcQIODevice_connect_channelBytesWritten(self: pointer, slot: int) {.importc: "QIODevice_connect_channelBytesWritten".}
proc fcQIODevice_aboutToClose(self: pointer, ): void {.importc: "QIODevice_aboutToClose".}
proc fcQIODevice_connect_aboutToClose(self: pointer, slot: int) {.importc: "QIODevice_connect_aboutToClose".}
proc fcQIODevice_readChannelFinished(self: pointer, ): void {.importc: "QIODevice_readChannelFinished".}
proc fcQIODevice_connect_readChannelFinished(self: pointer, slot: int) {.importc: "QIODevice_connect_readChannelFinished".}
proc fcQIODevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIODevice_tr2".}
proc fcQIODevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIODevice_tr3".}
proc fcQIODevice_readLine1(self: pointer, maxlen: clonglong): struct_miqt_string {.importc: "QIODevice_readLine1".}
proc fQIODevice_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QIODevice_virtualbase_metaObject".}
proc fcQIODevice_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_metaObject".}
proc fQIODevice_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QIODevice_virtualbase_metacast".}
proc fcQIODevice_override_virtual_metacast(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_metacast".}
proc fQIODevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QIODevice_virtualbase_metacall".}
proc fcQIODevice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_metacall".}
proc fQIODevice_virtualbase_isSequential(self: pointer, ): bool{.importc: "QIODevice_virtualbase_isSequential".}
proc fcQIODevice_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_isSequential".}
proc fQIODevice_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QIODevice_virtualbase_open".}
proc fcQIODevice_override_virtual_open(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_open".}
proc fQIODevice_virtualbase_close(self: pointer, ): void{.importc: "QIODevice_virtualbase_close".}
proc fcQIODevice_override_virtual_close(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_close".}
proc fQIODevice_virtualbase_pos(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_pos".}
proc fcQIODevice_override_virtual_pos(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_pos".}
proc fQIODevice_virtualbase_size(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_size".}
proc fcQIODevice_override_virtual_size(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_size".}
proc fQIODevice_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QIODevice_virtualbase_seek".}
proc fcQIODevice_override_virtual_seek(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_seek".}
proc fQIODevice_virtualbase_atEnd(self: pointer, ): bool{.importc: "QIODevice_virtualbase_atEnd".}
proc fcQIODevice_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_atEnd".}
proc fQIODevice_virtualbase_reset(self: pointer, ): bool{.importc: "QIODevice_virtualbase_reset".}
proc fcQIODevice_override_virtual_reset(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_reset".}
proc fQIODevice_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_bytesAvailable".}
proc fcQIODevice_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_bytesAvailable".}
proc fQIODevice_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QIODevice_virtualbase_bytesToWrite".}
proc fcQIODevice_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_bytesToWrite".}
proc fQIODevice_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QIODevice_virtualbase_canReadLine".}
proc fcQIODevice_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_canReadLine".}
proc fQIODevice_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QIODevice_virtualbase_waitForReadyRead".}
proc fcQIODevice_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_waitForReadyRead".}
proc fQIODevice_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QIODevice_virtualbase_waitForBytesWritten".}
proc fcQIODevice_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_waitForBytesWritten".}
proc fcQIODevice_override_virtual_readData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_readData".}
proc fQIODevice_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QIODevice_virtualbase_readLineData".}
proc fcQIODevice_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_readLineData".}
proc fQIODevice_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QIODevice_virtualbase_skipData".}
proc fcQIODevice_override_virtual_skipData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_skipData".}
proc fcQIODevice_override_virtual_writeData(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_writeData".}
proc fQIODevice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIODevice_virtualbase_event".}
proc fcQIODevice_override_virtual_event(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_event".}
proc fQIODevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIODevice_virtualbase_eventFilter".}
proc fcQIODevice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_eventFilter".}
proc fQIODevice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIODevice_virtualbase_timerEvent".}
proc fcQIODevice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_timerEvent".}
proc fQIODevice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIODevice_virtualbase_childEvent".}
proc fcQIODevice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_childEvent".}
proc fQIODevice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIODevice_virtualbase_customEvent".}
proc fcQIODevice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_customEvent".}
proc fQIODevice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIODevice_virtualbase_connectNotify".}
proc fcQIODevice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_connectNotify".}
proc fQIODevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIODevice_virtualbase_disconnectNotify".}
proc fcQIODevice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIODevice_override_virtual_disconnectNotify".}
proc fcQIODevice_staticMetaObject(): pointer {.importc: "QIODevice_staticMetaObject".}
proc fcQIODevice_delete(self: pointer) {.importc: "QIODevice_delete".}


func init*(T: type gen_qiodevice_types.QIODevice, h: ptr cQIODevice): gen_qiodevice_types.QIODevice =
  T(h: h)
proc create*(T: type gen_qiodevice_types.QIODevice, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice.init(fcQIODevice_new())

proc create*(T: type gen_qiodevice_types.QIODevice, parent: gen_qobject_types.QObject): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice.init(fcQIODevice_new2(parent.h))

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
proc miqt_exec_callback_QIODevice_readyRead(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QIODevicereadyReadSlot](cast[pointer](slot))
  nimfunc[]()

proc onreadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadyReadSlot) =
  var tmp = new QIODevicereadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_readyRead(self.h, cast[int](addr tmp[]))

proc channelReadyRead*(self: gen_qiodevice_types.QIODevice, channel: cint): void =
  fcQIODevice_channelReadyRead(self.h, channel)

type QIODevicechannelReadyReadSlot* = proc(channel: cint)
proc miqt_exec_callback_QIODevice_channelReadyRead(slot: int, channel: cint) {.exportc.} =
  let nimfunc = cast[ptr QIODevicechannelReadyReadSlot](cast[pointer](slot))
  let slotval1 = channel

  nimfunc[](slotval1)

proc onchannelReadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechannelReadyReadSlot) =
  var tmp = new QIODevicechannelReadyReadSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_channelReadyRead(self.h, cast[int](addr tmp[]))

proc bytesWritten*(self: gen_qiodevice_types.QIODevice, bytes: clonglong): void =
  fcQIODevice_bytesWritten(self.h, bytes)

type QIODevicebytesWrittenSlot* = proc(bytes: clonglong)
proc miqt_exec_callback_QIODevice_bytesWritten(slot: int, bytes: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QIODevicebytesWrittenSlot](cast[pointer](slot))
  let slotval1 = bytes

  nimfunc[](slotval1)

proc onbytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicebytesWrittenSlot) =
  var tmp = new QIODevicebytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_bytesWritten(self.h, cast[int](addr tmp[]))

proc channelBytesWritten*(self: gen_qiodevice_types.QIODevice, channel: cint, bytes: clonglong): void =
  fcQIODevice_channelBytesWritten(self.h, channel, bytes)

type QIODevicechannelBytesWrittenSlot* = proc(channel: cint, bytes: clonglong)
proc miqt_exec_callback_QIODevice_channelBytesWritten(slot: int, channel: cint, bytes: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QIODevicechannelBytesWrittenSlot](cast[pointer](slot))
  let slotval1 = channel

  let slotval2 = bytes

  nimfunc[](slotval1, slotval2)

proc onchannelBytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechannelBytesWrittenSlot) =
  var tmp = new QIODevicechannelBytesWrittenSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_channelBytesWritten(self.h, cast[int](addr tmp[]))

proc aboutToClose*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_aboutToClose(self.h)

type QIODeviceaboutToCloseSlot* = proc()
proc miqt_exec_callback_QIODevice_aboutToClose(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QIODeviceaboutToCloseSlot](cast[pointer](slot))
  nimfunc[]()

proc onaboutToClose*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceaboutToCloseSlot) =
  var tmp = new QIODeviceaboutToCloseSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_aboutToClose(self.h, cast[int](addr tmp[]))

proc readChannelFinished*(self: gen_qiodevice_types.QIODevice, ): void =
  fcQIODevice_readChannelFinished(self.h)

type QIODevicereadChannelFinishedSlot* = proc()
proc miqt_exec_callback_QIODevice_readChannelFinished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QIODevicereadChannelFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onreadChannelFinished*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadChannelFinishedSlot) =
  var tmp = new QIODevicereadChannelFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_connect_readChannelFinished(self.h, cast[int](addr tmp[]))

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

proc QIODevicemetaObject*(self: gen_qiodevice_types.QIODevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQIODevice_virtualbase_metaObject(self.h))

type QIODevicemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qiodevice_types.QIODevice, slot: QIODevicemetaObjectProc) =
  # TODO check subclass
  var tmp = new QIODevicemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_metaObject(self: ptr cQIODevice, slot: int): pointer {.exportc: "miqt_exec_callback_QIODevice_metaObject ".} =
  var nimfunc = cast[ptr QIODevicemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QIODevicemetacast*(self: gen_qiodevice_types.QIODevice, param1: cstring): pointer =
  fQIODevice_virtualbase_metacast(self.h, param1)

type QIODevicemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qiodevice_types.QIODevice, slot: QIODevicemetacastProc) =
  # TODO check subclass
  var tmp = new QIODevicemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_metacast(self: ptr cQIODevice, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QIODevice_metacast ".} =
  var nimfunc = cast[ptr QIODevicemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIODevicemetacall*(self: gen_qiodevice_types.QIODevice, param1: cint, param2: cint, param3: pointer): cint =
  fQIODevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QIODevicemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qiodevice_types.QIODevice, slot: QIODevicemetacallProc) =
  # TODO check subclass
  var tmp = new QIODevicemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_metacall(self: ptr cQIODevice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QIODevice_metacall ".} =
  var nimfunc = cast[ptr QIODevicemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QIODeviceisSequential*(self: gen_qiodevice_types.QIODevice, ): bool =
  fQIODevice_virtualbase_isSequential(self.h)

type QIODeviceisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceisSequentialProc) =
  # TODO check subclass
  var tmp = new QIODeviceisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_isSequential(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_isSequential ".} =
  var nimfunc = cast[ptr QIODeviceisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODeviceopen*(self: gen_qiodevice_types.QIODevice, mode: cint): bool =
  fQIODevice_virtualbase_open(self.h, cint(mode))

type QIODeviceopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceopenProc) =
  # TODO check subclass
  var tmp = new QIODeviceopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_open(self: ptr cQIODevice, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QIODevice_open ".} =
  var nimfunc = cast[ptr QIODeviceopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIODeviceclose*(self: gen_qiodevice_types.QIODevice, ): void =
  fQIODevice_virtualbase_close(self.h)

type QIODevicecloseProc* = proc(): void
proc onclose*(self: gen_qiodevice_types.QIODevice, slot: QIODevicecloseProc) =
  # TODO check subclass
  var tmp = new QIODevicecloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_close(self: ptr cQIODevice, slot: int): void {.exportc: "miqt_exec_callback_QIODevice_close ".} =
  var nimfunc = cast[ptr QIODevicecloseProc](cast[pointer](slot))

  nimfunc[]()
proc QIODevicepos*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fQIODevice_virtualbase_pos(self.h)

type QIODeviceposProc* = proc(): clonglong
proc onpos*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceposProc) =
  # TODO check subclass
  var tmp = new QIODeviceposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_pos(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_pos ".} =
  var nimfunc = cast[ptr QIODeviceposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODevicesize*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fQIODevice_virtualbase_size(self.h)

type QIODevicesizeProc* = proc(): clonglong
proc onsize*(self: gen_qiodevice_types.QIODevice, slot: QIODevicesizeProc) =
  # TODO check subclass
  var tmp = new QIODevicesizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_size(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_size ".} =
  var nimfunc = cast[ptr QIODevicesizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODeviceseek*(self: gen_qiodevice_types.QIODevice, pos: clonglong): bool =
  fQIODevice_virtualbase_seek(self.h, pos)

type QIODeviceseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceseekProc) =
  # TODO check subclass
  var tmp = new QIODeviceseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_seek(self: ptr cQIODevice, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QIODevice_seek ".} =
  var nimfunc = cast[ptr QIODeviceseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIODeviceatEnd*(self: gen_qiodevice_types.QIODevice, ): bool =
  fQIODevice_virtualbase_atEnd(self.h)

type QIODeviceatEndProc* = proc(): bool
proc onatEnd*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceatEndProc) =
  # TODO check subclass
  var tmp = new QIODeviceatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_atEnd(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_atEnd ".} =
  var nimfunc = cast[ptr QIODeviceatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODevicereset*(self: gen_qiodevice_types.QIODevice, ): bool =
  fQIODevice_virtualbase_reset(self.h)

type QIODeviceresetProc* = proc(): bool
proc onreset*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceresetProc) =
  # TODO check subclass
  var tmp = new QIODeviceresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_reset(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_reset ".} =
  var nimfunc = cast[ptr QIODeviceresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODevicebytesAvailable*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fQIODevice_virtualbase_bytesAvailable(self.h)

type QIODevicebytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qiodevice_types.QIODevice, slot: QIODevicebytesAvailableProc) =
  # TODO check subclass
  var tmp = new QIODevicebytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_bytesAvailable(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_bytesAvailable ".} =
  var nimfunc = cast[ptr QIODevicebytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODevicebytesToWrite*(self: gen_qiodevice_types.QIODevice, ): clonglong =
  fQIODevice_virtualbase_bytesToWrite(self.h)

type QIODevicebytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qiodevice_types.QIODevice, slot: QIODevicebytesToWriteProc) =
  # TODO check subclass
  var tmp = new QIODevicebytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_bytesToWrite(self: ptr cQIODevice, slot: int): clonglong {.exportc: "miqt_exec_callback_QIODevice_bytesToWrite ".} =
  var nimfunc = cast[ptr QIODevicebytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODevicecanReadLine*(self: gen_qiodevice_types.QIODevice, ): bool =
  fQIODevice_virtualbase_canReadLine(self.h)

type QIODevicecanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qiodevice_types.QIODevice, slot: QIODevicecanReadLineProc) =
  # TODO check subclass
  var tmp = new QIODevicecanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_canReadLine(self: ptr cQIODevice, slot: int): bool {.exportc: "miqt_exec_callback_QIODevice_canReadLine ".} =
  var nimfunc = cast[ptr QIODevicecanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QIODevicewaitForReadyRead*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fQIODevice_virtualbase_waitForReadyRead(self.h, msecs)

type QIODevicewaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qiodevice_types.QIODevice, slot: QIODevicewaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QIODevicewaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_waitForReadyRead(self: ptr cQIODevice, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QIODevice_waitForReadyRead ".} =
  var nimfunc = cast[ptr QIODevicewaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIODevicewaitForBytesWritten*(self: gen_qiodevice_types.QIODevice, msecs: cint): bool =
  fQIODevice_virtualbase_waitForBytesWritten(self.h, msecs)

type QIODevicewaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qiodevice_types.QIODevice, slot: QIODevicewaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QIODevicewaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_waitForBytesWritten(self: ptr cQIODevice, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QIODevice_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QIODevicewaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QIODevicereadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadDataProc) =
  # TODO check subclass
  var tmp = new QIODevicereadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_readData(self: ptr cQIODevice, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_readData ".} =
  var nimfunc = cast[ptr QIODevicereadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIODevicereadLineData*(self: gen_qiodevice_types.QIODevice, data: cstring, maxlen: clonglong): clonglong =
  fQIODevice_virtualbase_readLineData(self.h, data, maxlen)

type QIODevicereadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qiodevice_types.QIODevice, slot: QIODevicereadLineDataProc) =
  # TODO check subclass
  var tmp = new QIODevicereadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_readLineData(self: ptr cQIODevice, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_readLineData ".} =
  var nimfunc = cast[ptr QIODevicereadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIODeviceskipData*(self: gen_qiodevice_types.QIODevice, maxSize: clonglong): clonglong =
  fQIODevice_virtualbase_skipData(self.h, maxSize)

type QIODeviceskipDataProc* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceskipDataProc) =
  # TODO check subclass
  var tmp = new QIODeviceskipDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_skipData(self: ptr cQIODevice, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_skipData ".} =
  var nimfunc = cast[ptr QIODeviceskipDataProc](cast[pointer](slot))
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QIODevicewriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qiodevice_types.QIODevice, slot: QIODevicewriteDataProc) =
  # TODO check subclass
  var tmp = new QIODevicewriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_writeData(self: ptr cQIODevice, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QIODevice_writeData ".} =
  var nimfunc = cast[ptr QIODevicewriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIODeviceevent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QEvent): bool =
  fQIODevice_virtualbase_event(self.h, event.h)

type QIODeviceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceeventProc) =
  # TODO check subclass
  var tmp = new QIODeviceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_event(self: ptr cQIODevice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIODevice_event ".} =
  var nimfunc = cast[ptr QIODeviceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QIODeviceeventFilter*(self: gen_qiodevice_types.QIODevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQIODevice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIODeviceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceeventFilterProc) =
  # TODO check subclass
  var tmp = new QIODeviceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_eventFilter(self: ptr cQIODevice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIODevice_eventFilter ".} =
  var nimfunc = cast[ptr QIODeviceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QIODevicetimerEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fQIODevice_virtualbase_timerEvent(self.h, event.h)

type QIODevicetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qiodevice_types.QIODevice, slot: QIODevicetimerEventProc) =
  # TODO check subclass
  var tmp = new QIODevicetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_timerEvent(self: ptr cQIODevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIODevice_timerEvent ".} =
  var nimfunc = cast[ptr QIODevicetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QIODevicechildEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QChildEvent): void =
  fQIODevice_virtualbase_childEvent(self.h, event.h)

type QIODevicechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qiodevice_types.QIODevice, slot: QIODevicechildEventProc) =
  # TODO check subclass
  var tmp = new QIODevicechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_childEvent(self: ptr cQIODevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIODevice_childEvent ".} =
  var nimfunc = cast[ptr QIODevicechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QIODevicecustomEvent*(self: gen_qiodevice_types.QIODevice, event: gen_qcoreevent_types.QEvent): void =
  fQIODevice_virtualbase_customEvent(self.h, event.h)

type QIODevicecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qiodevice_types.QIODevice, slot: QIODevicecustomEventProc) =
  # TODO check subclass
  var tmp = new QIODevicecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_customEvent(self: ptr cQIODevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIODevice_customEvent ".} =
  var nimfunc = cast[ptr QIODevicecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QIODeviceconnectNotify*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIODevice_virtualbase_connectNotify(self.h, signal.h)

type QIODeviceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qiodevice_types.QIODevice, slot: QIODeviceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIODeviceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_connectNotify(self: ptr cQIODevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIODevice_connectNotify ".} =
  var nimfunc = cast[ptr QIODeviceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QIODevicedisconnectNotify*(self: gen_qiodevice_types.QIODevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQIODevice_virtualbase_disconnectNotify(self.h, signal.h)

type QIODevicedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qiodevice_types.QIODevice, slot: QIODevicedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QIODevicedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIODevice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIODevice_disconnectNotify(self: ptr cQIODevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIODevice_disconnectNotify ".} =
  var nimfunc = cast[ptr QIODevicedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qiodevice_types.QIODevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIODevice_staticMetaObject())
proc delete*(self: gen_qiodevice_types.QIODevice) =
  fcQIODevice_delete(self.h)
