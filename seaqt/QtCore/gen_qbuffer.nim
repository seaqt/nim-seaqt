import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qbuffer.cpp", cflags).}


import ./gen_qbuffer_types
export gen_qbuffer_types

import
  ./gen_qcoreevent_types,
  ./gen_qiodevice,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qiodevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQBuffer*{.exportc: "QBuffer", incompleteStruct.} = object

proc fcQBuffer_metaObject(self: pointer, ): pointer {.importc: "QBuffer_metaObject".}
proc fcQBuffer_metacast(self: pointer, param1: cstring): pointer {.importc: "QBuffer_metacast".}
proc fcQBuffer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBuffer_metacall".}
proc fcQBuffer_tr(s: cstring): struct_miqt_string {.importc: "QBuffer_tr".}
proc fcQBuffer_trUtf8(s: cstring): struct_miqt_string {.importc: "QBuffer_trUtf8".}
proc fcQBuffer_buffer(self: pointer, ): struct_miqt_string {.importc: "QBuffer_buffer".}
proc fcQBuffer_buffer2(self: pointer, ): struct_miqt_string {.importc: "QBuffer_buffer2".}
proc fcQBuffer_setData(self: pointer, data: struct_miqt_string): void {.importc: "QBuffer_setData".}
proc fcQBuffer_setData2(self: pointer, data: cstring, len: cint): void {.importc: "QBuffer_setData2".}
proc fcQBuffer_data(self: pointer, ): struct_miqt_string {.importc: "QBuffer_data".}
proc fcQBuffer_open(self: pointer, openMode: cint): bool {.importc: "QBuffer_open".}
proc fcQBuffer_close(self: pointer, ): void {.importc: "QBuffer_close".}
proc fcQBuffer_size(self: pointer, ): clonglong {.importc: "QBuffer_size".}
proc fcQBuffer_pos(self: pointer, ): clonglong {.importc: "QBuffer_pos".}
proc fcQBuffer_seek(self: pointer, off: clonglong): bool {.importc: "QBuffer_seek".}
proc fcQBuffer_atEnd(self: pointer, ): bool {.importc: "QBuffer_atEnd".}
proc fcQBuffer_canReadLine(self: pointer, ): bool {.importc: "QBuffer_canReadLine".}
proc fcQBuffer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QBuffer_tr2".}
proc fcQBuffer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBuffer_tr3".}
proc fcQBuffer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QBuffer_trUtf82".}
proc fcQBuffer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBuffer_trUtf83".}
type cQBufferVTable = object
  destructor*: proc(vtbl: ptr cQBufferVTable, self: ptr cQBuffer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, off: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(vtbl, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQBuffer_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QBuffer_virtualbase_metaObject".}
proc fcQBuffer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QBuffer_virtualbase_metacast".}
proc fcQBuffer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBuffer_virtualbase_metacall".}
proc fcQBuffer_virtualbase_open(self: pointer, openMode: cint): bool {.importc: "QBuffer_virtualbase_open".}
proc fcQBuffer_virtualbase_close(self: pointer, ): void {.importc: "QBuffer_virtualbase_close".}
proc fcQBuffer_virtualbase_size(self: pointer, ): clonglong {.importc: "QBuffer_virtualbase_size".}
proc fcQBuffer_virtualbase_pos(self: pointer, ): clonglong {.importc: "QBuffer_virtualbase_pos".}
proc fcQBuffer_virtualbase_seek(self: pointer, off: clonglong): bool {.importc: "QBuffer_virtualbase_seek".}
proc fcQBuffer_virtualbase_atEnd(self: pointer, ): bool {.importc: "QBuffer_virtualbase_atEnd".}
proc fcQBuffer_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QBuffer_virtualbase_canReadLine".}
proc fcQBuffer_virtualbase_connectNotify(self: pointer, param1: pointer): void {.importc: "QBuffer_virtualbase_connectNotify".}
proc fcQBuffer_virtualbase_disconnectNotify(self: pointer, param1: pointer): void {.importc: "QBuffer_virtualbase_disconnectNotify".}
proc fcQBuffer_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QBuffer_virtualbase_readData".}
proc fcQBuffer_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QBuffer_virtualbase_writeData".}
proc fcQBuffer_virtualbase_isSequential(self: pointer, ): bool {.importc: "QBuffer_virtualbase_isSequential".}
proc fcQBuffer_virtualbase_reset(self: pointer, ): bool {.importc: "QBuffer_virtualbase_reset".}
proc fcQBuffer_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QBuffer_virtualbase_bytesAvailable".}
proc fcQBuffer_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QBuffer_virtualbase_bytesToWrite".}
proc fcQBuffer_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QBuffer_virtualbase_waitForReadyRead".}
proc fcQBuffer_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QBuffer_virtualbase_waitForBytesWritten".}
proc fcQBuffer_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QBuffer_virtualbase_readLineData".}
proc fcQBuffer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QBuffer_virtualbase_event".}
proc fcQBuffer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QBuffer_virtualbase_eventFilter".}
proc fcQBuffer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QBuffer_virtualbase_timerEvent".}
proc fcQBuffer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QBuffer_virtualbase_childEvent".}
proc fcQBuffer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QBuffer_virtualbase_customEvent".}
proc fcQBuffer_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QBuffer_protectedbase_setOpenMode".}
proc fcQBuffer_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QBuffer_protectedbase_setErrorString".}
proc fcQBuffer_protectedbase_sender(self: pointer, ): pointer {.importc: "QBuffer_protectedbase_sender".}
proc fcQBuffer_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QBuffer_protectedbase_senderSignalIndex".}
proc fcQBuffer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QBuffer_protectedbase_receivers".}
proc fcQBuffer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QBuffer_protectedbase_isSignalConnected".}
proc fcQBuffer_new(vtbl: pointer, ): ptr cQBuffer {.importc: "QBuffer_new".}
proc fcQBuffer_new2(vtbl: pointer, parent: pointer): ptr cQBuffer {.importc: "QBuffer_new2".}
proc fcQBuffer_staticMetaObject(): pointer {.importc: "QBuffer_staticMetaObject".}
proc fcQBuffer_delete(self: pointer) {.importc: "QBuffer_delete".}

proc metaObject*(self: gen_qbuffer_types.QBuffer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_metaObject(self.h))

proc metacast*(self: gen_qbuffer_types.QBuffer, param1: cstring): pointer =
  fcQBuffer_metacast(self.h, param1)

proc metacall*(self: gen_qbuffer_types.QBuffer, param1: cint, param2: cint, param3: pointer): cint =
  fcQBuffer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring): string =
  let v_ms = fcQBuffer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qbuffer_types.QBuffer, s: cstring): string =
  let v_ms = fcQBuffer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buffer*(self: gen_qbuffer_types.QBuffer, ): seq[byte] =
  var v_bytearray = fcQBuffer_buffer(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc buffer2*(self: gen_qbuffer_types.QBuffer, ): seq[byte] =
  var v_bytearray = fcQBuffer_buffer2(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: gen_qbuffer_types.QBuffer, data: seq[byte]): void =
  fcQBuffer_setData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc setData*(self: gen_qbuffer_types.QBuffer, data: cstring, len: cint): void =
  fcQBuffer_setData2(self.h, data, len)

proc data*(self: gen_qbuffer_types.QBuffer, ): seq[byte] =
  var v_bytearray = fcQBuffer_data(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc open*(self: gen_qbuffer_types.QBuffer, openMode: cint): bool =
  fcQBuffer_open(self.h, cint(openMode))

proc close*(self: gen_qbuffer_types.QBuffer, ): void =
  fcQBuffer_close(self.h)

proc size*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fcQBuffer_size(self.h)

proc pos*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fcQBuffer_pos(self.h)

proc seek*(self: gen_qbuffer_types.QBuffer, off: clonglong): bool =
  fcQBuffer_seek(self.h, off)

proc atEnd*(self: gen_qbuffer_types.QBuffer, ): bool =
  fcQBuffer_atEnd(self.h)

proc canReadLine*(self: gen_qbuffer_types.QBuffer, ): bool =
  fcQBuffer_canReadLine(self.h)

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring, c: cstring): string =
  let v_ms = fcQBuffer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQBuffer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qbuffer_types.QBuffer, s: cstring, c: cstring): string =
  let v_ms = fcQBuffer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qbuffer_types.QBuffer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQBuffer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QBuffermetaObjectProc* = proc(self: QBuffer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QBuffermetacastProc* = proc(self: QBuffer, param1: cstring): pointer {.raises: [], gcsafe.}
type QBuffermetacallProc* = proc(self: QBuffer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QBufferopenProc* = proc(self: QBuffer, openMode: cint): bool {.raises: [], gcsafe.}
type QBuffercloseProc* = proc(self: QBuffer): void {.raises: [], gcsafe.}
type QBuffersizeProc* = proc(self: QBuffer): clonglong {.raises: [], gcsafe.}
type QBufferposProc* = proc(self: QBuffer): clonglong {.raises: [], gcsafe.}
type QBufferseekProc* = proc(self: QBuffer, off: clonglong): bool {.raises: [], gcsafe.}
type QBufferatEndProc* = proc(self: QBuffer): bool {.raises: [], gcsafe.}
type QBuffercanReadLineProc* = proc(self: QBuffer): bool {.raises: [], gcsafe.}
type QBufferconnectNotifyProc* = proc(self: QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QBufferdisconnectNotifyProc* = proc(self: QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QBufferreadDataProc* = proc(self: QBuffer, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QBufferwriteDataProc* = proc(self: QBuffer, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QBufferisSequentialProc* = proc(self: QBuffer): bool {.raises: [], gcsafe.}
type QBufferresetProc* = proc(self: QBuffer): bool {.raises: [], gcsafe.}
type QBufferbytesAvailableProc* = proc(self: QBuffer): clonglong {.raises: [], gcsafe.}
type QBufferbytesToWriteProc* = proc(self: QBuffer): clonglong {.raises: [], gcsafe.}
type QBufferwaitForReadyReadProc* = proc(self: QBuffer, msecs: cint): bool {.raises: [], gcsafe.}
type QBufferwaitForBytesWrittenProc* = proc(self: QBuffer, msecs: cint): bool {.raises: [], gcsafe.}
type QBufferreadLineDataProc* = proc(self: QBuffer, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QBuffereventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QBuffereventFilterProc* = proc(self: QBuffer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QBuffertimerEventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QBufferchildEventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QBuffercustomEventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QBufferVTable* = object
  vtbl: cQBufferVTable
  metaObject*: QBuffermetaObjectProc
  metacast*: QBuffermetacastProc
  metacall*: QBuffermetacallProc
  open*: QBufferopenProc
  close*: QBuffercloseProc
  size*: QBuffersizeProc
  pos*: QBufferposProc
  seek*: QBufferseekProc
  atEnd*: QBufferatEndProc
  canReadLine*: QBuffercanReadLineProc
  connectNotify*: QBufferconnectNotifyProc
  disconnectNotify*: QBufferdisconnectNotifyProc
  readData*: QBufferreadDataProc
  writeData*: QBufferwriteDataProc
  isSequential*: QBufferisSequentialProc
  reset*: QBufferresetProc
  bytesAvailable*: QBufferbytesAvailableProc
  bytesToWrite*: QBufferbytesToWriteProc
  waitForReadyRead*: QBufferwaitForReadyReadProc
  waitForBytesWritten*: QBufferwaitForBytesWrittenProc
  readLineData*: QBufferreadLineDataProc
  event*: QBuffereventProc
  eventFilter*: QBuffereventFilterProc
  timerEvent*: QBuffertimerEventProc
  childEvent*: QBufferchildEventProc
  customEvent*: QBuffercustomEventProc
proc QBuffermetaObject*(self: gen_qbuffer_types.QBuffer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQBuffer_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QBuffermetacast*(self: gen_qbuffer_types.QBuffer, param1: cstring): pointer =
  fcQBuffer_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQBuffer_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QBuffermetacall*(self: gen_qbuffer_types.QBuffer, param1: cint, param2: cint, param3: pointer): cint =
  fcQBuffer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQBuffer_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QBufferopen*(self: gen_qbuffer_types.QBuffer, openMode: cint): bool =
  fcQBuffer_virtualbase_open(self.h, cint(openMode))

proc miqt_exec_callback_cQBuffer_open(vtbl: pointer, self: pointer, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = cint(openMode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QBufferclose*(self: gen_qbuffer_types.QBuffer, ): void =
  fcQBuffer_virtualbase_close(self.h)

proc miqt_exec_callback_cQBuffer_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  vtbl[].close(self)

proc QBuffersize*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fcQBuffer_virtualbase_size(self.h)

proc miqt_exec_callback_cQBuffer_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QBufferpos*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fcQBuffer_virtualbase_pos(self.h)

proc miqt_exec_callback_cQBuffer_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QBufferseek*(self: gen_qbuffer_types.QBuffer, off: clonglong): bool =
  fcQBuffer_virtualbase_seek(self.h, off)

proc miqt_exec_callback_cQBuffer_seek(vtbl: pointer, self: pointer, off: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = off
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QBufferatEnd*(self: gen_qbuffer_types.QBuffer, ): bool =
  fcQBuffer_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQBuffer_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QBuffercanReadLine*(self: gen_qbuffer_types.QBuffer, ): bool =
  fcQBuffer_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQBuffer_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QBufferconnectNotify*(self: gen_qbuffer_types.QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void =
  fcQBuffer_virtualbase_connectNotify(self.h, param1.h)

proc miqt_exec_callback_cQBuffer_connectNotify(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1)
  vtbl[].connectNotify(self, slotval1)

proc QBufferdisconnectNotify*(self: gen_qbuffer_types.QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void =
  fcQBuffer_virtualbase_disconnectNotify(self.h, param1.h)

proc miqt_exec_callback_cQBuffer_disconnectNotify(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1)
  vtbl[].disconnectNotify(self, slotval1)

proc QBufferreadData*(self: gen_qbuffer_types.QBuffer, data: cstring, maxlen: clonglong): clonglong =
  fcQBuffer_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQBuffer_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QBufferwriteData*(self: gen_qbuffer_types.QBuffer, data: cstring, len: clonglong): clonglong =
  fcQBuffer_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQBuffer_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QBufferisSequential*(self: gen_qbuffer_types.QBuffer, ): bool =
  fcQBuffer_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQBuffer_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QBufferreset*(self: gen_qbuffer_types.QBuffer, ): bool =
  fcQBuffer_virtualbase_reset(self.h)

proc miqt_exec_callback_cQBuffer_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QBufferbytesAvailable*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fcQBuffer_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQBuffer_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QBufferbytesToWrite*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fcQBuffer_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQBuffer_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QBufferwaitForReadyRead*(self: gen_qbuffer_types.QBuffer, msecs: cint): bool =
  fcQBuffer_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQBuffer_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QBufferwaitForBytesWritten*(self: gen_qbuffer_types.QBuffer, msecs: cint): bool =
  fcQBuffer_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQBuffer_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QBufferreadLineData*(self: gen_qbuffer_types.QBuffer, data: cstring, maxlen: clonglong): clonglong =
  fcQBuffer_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQBuffer_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QBufferevent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QEvent): bool =
  fcQBuffer_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQBuffer_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QBuffereventFilter*(self: gen_qbuffer_types.QBuffer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQBuffer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQBuffer_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QBuffertimerEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQBuffer_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQBuffer_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QBufferchildEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQBuffer_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQBuffer_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QBuffercustomEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QEvent): void =
  fcQBuffer_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQBuffer_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](vtbl)
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc setOpenMode*(self: gen_qbuffer_types.QBuffer, openMode: cint): void =
  fcQBuffer_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qbuffer_types.QBuffer, errorString: string): void =
  fcQBuffer_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qbuffer_types.QBuffer, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQBuffer_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qbuffer_types.QBuffer, ): cint =
  fcQBuffer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qbuffer_types.QBuffer, signal: cstring): cint =
  fcQBuffer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qbuffer_types.QBuffer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQBuffer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qbuffer_types.QBuffer,
    vtbl: ref QBufferVTable = nil): gen_qbuffer_types.QBuffer =
  let vtbl = if vtbl == nil: new QBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBufferVTable, _: ptr cQBuffer) {.cdecl.} =
    let vtbl = cast[ref QBufferVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQBuffer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQBuffer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQBuffer_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQBuffer_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQBuffer_close
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQBuffer_size
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQBuffer_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQBuffer_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQBuffer_atEnd
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQBuffer_canReadLine
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQBuffer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQBuffer_disconnectNotify
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQBuffer_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQBuffer_writeData
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQBuffer_isSequential
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQBuffer_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQBuffer_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQBuffer_bytesToWrite
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQBuffer_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQBuffer_waitForBytesWritten
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQBuffer_readLineData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQBuffer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQBuffer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQBuffer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQBuffer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQBuffer_customEvent
  gen_qbuffer_types.QBuffer(h: fcQBuffer_new(addr(vtbl[]), ))

proc create*(T: type gen_qbuffer_types.QBuffer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QBufferVTable = nil): gen_qbuffer_types.QBuffer =
  let vtbl = if vtbl == nil: new QBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBufferVTable, _: ptr cQBuffer) {.cdecl.} =
    let vtbl = cast[ref QBufferVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQBuffer_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQBuffer_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQBuffer_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQBuffer_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQBuffer_close
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQBuffer_size
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQBuffer_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQBuffer_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQBuffer_atEnd
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQBuffer_canReadLine
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQBuffer_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQBuffer_disconnectNotify
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQBuffer_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQBuffer_writeData
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQBuffer_isSequential
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQBuffer_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQBuffer_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQBuffer_bytesToWrite
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQBuffer_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQBuffer_waitForBytesWritten
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQBuffer_readLineData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQBuffer_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQBuffer_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQBuffer_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQBuffer_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQBuffer_customEvent
  gen_qbuffer_types.QBuffer(h: fcQBuffer_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qbuffer_types.QBuffer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_staticMetaObject())
proc delete*(self: gen_qbuffer_types.QBuffer) =
  fcQBuffer_delete(self.h)
