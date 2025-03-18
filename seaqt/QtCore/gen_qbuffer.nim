import ./qtcore_pkg

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


{.compile("gen_qbuffer.cpp", QtCoreCFlags).}


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

proc fcQBuffer_metaObject(self: pointer): pointer {.importc: "QBuffer_metaObject".}
proc fcQBuffer_metacast(self: pointer, param1: cstring): pointer {.importc: "QBuffer_metacast".}
proc fcQBuffer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBuffer_metacall".}
proc fcQBuffer_tr(s: cstring): struct_miqt_string {.importc: "QBuffer_tr".}
proc fcQBuffer_buffer(self: pointer): struct_miqt_string {.importc: "QBuffer_buffer".}
proc fcQBuffer_buffer2(self: pointer): struct_miqt_string {.importc: "QBuffer_buffer2".}
proc fcQBuffer_setData(self: pointer, data: struct_miqt_string): void {.importc: "QBuffer_setData".}
proc fcQBuffer_setData2(self: pointer, data: cstring, len: cint): void {.importc: "QBuffer_setData2".}
proc fcQBuffer_data(self: pointer): struct_miqt_string {.importc: "QBuffer_data".}
proc fcQBuffer_open(self: pointer, openMode: cint): bool {.importc: "QBuffer_open".}
proc fcQBuffer_close(self: pointer): void {.importc: "QBuffer_close".}
proc fcQBuffer_size(self: pointer): clonglong {.importc: "QBuffer_size".}
proc fcQBuffer_pos(self: pointer): clonglong {.importc: "QBuffer_pos".}
proc fcQBuffer_seek(self: pointer, off: clonglong): bool {.importc: "QBuffer_seek".}
proc fcQBuffer_atEnd(self: pointer): bool {.importc: "QBuffer_atEnd".}
proc fcQBuffer_canReadLine(self: pointer): bool {.importc: "QBuffer_canReadLine".}
proc fcQBuffer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QBuffer_tr2".}
proc fcQBuffer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBuffer_tr3".}
proc fcQBuffer_vtbl(self: pointer): pointer {.importc: "QBuffer_vtbl".}
proc fcQBuffer_vdata(self: pointer): pointer {.importc: "QBuffer_vdata".}

type cQBufferVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, openMode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, off: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQBuffer_virtualbase_metaObject(self: pointer): pointer {.importc: "QBuffer_virtualbase_metaObject".}
proc fcQBuffer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QBuffer_virtualbase_metacast".}
proc fcQBuffer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBuffer_virtualbase_metacall".}
proc fcQBuffer_virtualbase_open(self: pointer, openMode: cint): bool {.importc: "QBuffer_virtualbase_open".}
proc fcQBuffer_virtualbase_close(self: pointer): void {.importc: "QBuffer_virtualbase_close".}
proc fcQBuffer_virtualbase_size(self: pointer): clonglong {.importc: "QBuffer_virtualbase_size".}
proc fcQBuffer_virtualbase_pos(self: pointer): clonglong {.importc: "QBuffer_virtualbase_pos".}
proc fcQBuffer_virtualbase_seek(self: pointer, off: clonglong): bool {.importc: "QBuffer_virtualbase_seek".}
proc fcQBuffer_virtualbase_atEnd(self: pointer): bool {.importc: "QBuffer_virtualbase_atEnd".}
proc fcQBuffer_virtualbase_canReadLine(self: pointer): bool {.importc: "QBuffer_virtualbase_canReadLine".}
proc fcQBuffer_virtualbase_connectNotify(self: pointer, param1: pointer): void {.importc: "QBuffer_virtualbase_connectNotify".}
proc fcQBuffer_virtualbase_disconnectNotify(self: pointer, param1: pointer): void {.importc: "QBuffer_virtualbase_disconnectNotify".}
proc fcQBuffer_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QBuffer_virtualbase_readData".}
proc fcQBuffer_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QBuffer_virtualbase_writeData".}
proc fcQBuffer_virtualbase_isSequential(self: pointer): bool {.importc: "QBuffer_virtualbase_isSequential".}
proc fcQBuffer_virtualbase_reset(self: pointer): bool {.importc: "QBuffer_virtualbase_reset".}
proc fcQBuffer_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QBuffer_virtualbase_bytesAvailable".}
proc fcQBuffer_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QBuffer_virtualbase_bytesToWrite".}
proc fcQBuffer_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QBuffer_virtualbase_waitForReadyRead".}
proc fcQBuffer_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QBuffer_virtualbase_waitForBytesWritten".}
proc fcQBuffer_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QBuffer_virtualbase_readLineData".}
proc fcQBuffer_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QBuffer_virtualbase_skipData".}
proc fcQBuffer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QBuffer_virtualbase_event".}
proc fcQBuffer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QBuffer_virtualbase_eventFilter".}
proc fcQBuffer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QBuffer_virtualbase_timerEvent".}
proc fcQBuffer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QBuffer_virtualbase_childEvent".}
proc fcQBuffer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QBuffer_virtualbase_customEvent".}
proc fcQBuffer_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QBuffer_protectedbase_setOpenMode".}
proc fcQBuffer_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QBuffer_protectedbase_setErrorString".}
proc fcQBuffer_protectedbase_sender(self: pointer): pointer {.importc: "QBuffer_protectedbase_sender".}
proc fcQBuffer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QBuffer_protectedbase_senderSignalIndex".}
proc fcQBuffer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QBuffer_protectedbase_receivers".}
proc fcQBuffer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QBuffer_protectedbase_isSignalConnected".}
proc fcQBuffer_new(vtbl, vdata: pointer): ptr cQBuffer {.importc: "QBuffer_new".}
proc fcQBuffer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQBuffer {.importc: "QBuffer_new2".}
proc fcQBuffer_staticMetaObject(): pointer {.importc: "QBuffer_staticMetaObject".}

proc metaObject*(self: gen_qbuffer_types.QBuffer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qbuffer_types.QBuffer, param1: cstring): pointer =
  fcQBuffer_metacast(self.h, param1)

proc metacall*(self: gen_qbuffer_types.QBuffer, param1: cint, param2: cint, param3: pointer): cint =
  fcQBuffer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring): string =
  let v_ms = fcQBuffer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc buffer*(self: gen_qbuffer_types.QBuffer): seq[byte] =
  var v_bytearray = fcQBuffer_buffer(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc buffer2*(self: gen_qbuffer_types.QBuffer): seq[byte] =
  var v_bytearray = fcQBuffer_buffer2(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: gen_qbuffer_types.QBuffer, data: openArray[byte]): void =
  fcQBuffer_setData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc setData*(self: gen_qbuffer_types.QBuffer, data: cstring, len: cint): void =
  fcQBuffer_setData2(self.h, data, len)

proc data*(self: gen_qbuffer_types.QBuffer): seq[byte] =
  var v_bytearray = fcQBuffer_data(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc open*(self: gen_qbuffer_types.QBuffer, openMode: cint): bool =
  fcQBuffer_open(self.h, cint(openMode))

proc close*(self: gen_qbuffer_types.QBuffer): void =
  fcQBuffer_close(self.h)

proc size*(self: gen_qbuffer_types.QBuffer): clonglong =
  fcQBuffer_size(self.h)

proc pos*(self: gen_qbuffer_types.QBuffer): clonglong =
  fcQBuffer_pos(self.h)

proc seek*(self: gen_qbuffer_types.QBuffer, off: clonglong): bool =
  fcQBuffer_seek(self.h, off)

proc atEnd*(self: gen_qbuffer_types.QBuffer): bool =
  fcQBuffer_atEnd(self.h)

proc canReadLine*(self: gen_qbuffer_types.QBuffer): bool =
  fcQBuffer_canReadLine(self.h)

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring, c: cstring): string =
  let v_ms = fcQBuffer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQBuffer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QBufferskipDataProc* = proc(self: QBuffer, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QBuffereventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QBuffereventFilterProc* = proc(self: QBuffer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QBuffertimerEventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QBufferchildEventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QBuffercustomEventProc* = proc(self: QBuffer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}

type QBufferVTable* {.inheritable, pure.} = object
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
  skipData*: QBufferskipDataProc
  event*: QBuffereventProc
  eventFilter*: QBuffereventFilterProc
  timerEvent*: QBuffertimerEventProc
  childEvent*: QBufferchildEventProc
  customEvent*: QBuffercustomEventProc

proc QBuffermetaObject*(self: gen_qbuffer_types.QBuffer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_virtualbase_metaObject(self.h), owned: false)

proc QBuffermetacast*(self: gen_qbuffer_types.QBuffer, param1: cstring): pointer =
  fcQBuffer_virtualbase_metacast(self.h, param1)

proc QBuffermetacall*(self: gen_qbuffer_types.QBuffer, param1: cint, param2: cint, param3: pointer): cint =
  fcQBuffer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QBufferopen*(self: gen_qbuffer_types.QBuffer, openMode: cint): bool =
  fcQBuffer_virtualbase_open(self.h, cint(openMode))

proc QBufferclose*(self: gen_qbuffer_types.QBuffer): void =
  fcQBuffer_virtualbase_close(self.h)

proc QBuffersize*(self: gen_qbuffer_types.QBuffer): clonglong =
  fcQBuffer_virtualbase_size(self.h)

proc QBufferpos*(self: gen_qbuffer_types.QBuffer): clonglong =
  fcQBuffer_virtualbase_pos(self.h)

proc QBufferseek*(self: gen_qbuffer_types.QBuffer, off: clonglong): bool =
  fcQBuffer_virtualbase_seek(self.h, off)

proc QBufferatEnd*(self: gen_qbuffer_types.QBuffer): bool =
  fcQBuffer_virtualbase_atEnd(self.h)

proc QBuffercanReadLine*(self: gen_qbuffer_types.QBuffer): bool =
  fcQBuffer_virtualbase_canReadLine(self.h)

proc QBufferconnectNotify*(self: gen_qbuffer_types.QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void =
  fcQBuffer_virtualbase_connectNotify(self.h, param1.h)

proc QBufferdisconnectNotify*(self: gen_qbuffer_types.QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void =
  fcQBuffer_virtualbase_disconnectNotify(self.h, param1.h)

proc QBufferreadData*(self: gen_qbuffer_types.QBuffer, data: cstring, maxlen: clonglong): clonglong =
  fcQBuffer_virtualbase_readData(self.h, data, maxlen)

proc QBufferwriteData*(self: gen_qbuffer_types.QBuffer, data: cstring, len: clonglong): clonglong =
  fcQBuffer_virtualbase_writeData(self.h, data, len)

proc QBufferisSequential*(self: gen_qbuffer_types.QBuffer): bool =
  fcQBuffer_virtualbase_isSequential(self.h)

proc QBufferreset*(self: gen_qbuffer_types.QBuffer): bool =
  fcQBuffer_virtualbase_reset(self.h)

proc QBufferbytesAvailable*(self: gen_qbuffer_types.QBuffer): clonglong =
  fcQBuffer_virtualbase_bytesAvailable(self.h)

proc QBufferbytesToWrite*(self: gen_qbuffer_types.QBuffer): clonglong =
  fcQBuffer_virtualbase_bytesToWrite(self.h)

proc QBufferwaitForReadyRead*(self: gen_qbuffer_types.QBuffer, msecs: cint): bool =
  fcQBuffer_virtualbase_waitForReadyRead(self.h, msecs)

proc QBufferwaitForBytesWritten*(self: gen_qbuffer_types.QBuffer, msecs: cint): bool =
  fcQBuffer_virtualbase_waitForBytesWritten(self.h, msecs)

proc QBufferreadLineData*(self: gen_qbuffer_types.QBuffer, data: cstring, maxlen: clonglong): clonglong =
  fcQBuffer_virtualbase_readLineData(self.h, data, maxlen)

proc QBufferskipData*(self: gen_qbuffer_types.QBuffer, maxSize: clonglong): clonglong =
  fcQBuffer_virtualbase_skipData(self.h, maxSize)

proc QBufferevent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QEvent): bool =
  fcQBuffer_virtualbase_event(self.h, event.h)

proc QBuffereventFilter*(self: gen_qbuffer_types.QBuffer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQBuffer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QBuffertimerEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQBuffer_virtualbase_timerEvent(self.h, event.h)

proc QBufferchildEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQBuffer_virtualbase_childEvent(self.h, event.h)

proc QBuffercustomEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QEvent): void =
  fcQBuffer_virtualbase_customEvent(self.h, event.h)


proc fcQBuffer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBuffer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQBuffer_vtable_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = cint(openMode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  vtbl[].close(self)

proc fcQBuffer_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc fcQBuffer_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc fcQBuffer_vtable_callback_seek(self: pointer, off: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = off
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc fcQBuffer_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc fcQBuffer_vtable_callback_connectNotify(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQBuffer_vtable_callback_disconnectNotify(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQBuffer_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc fcQBuffer_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc fcQBuffer_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc fcQBuffer_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc fcQBuffer_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQBuffer_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc fcQBuffer_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc fcQBuffer_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQBuffer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQBuffer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQBuffer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQBuffer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBufferVTable](fcQBuffer_vdata(self))
  let self = QBuffer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

type VirtualQBuffer* {.inheritable.} = ref object of QBuffer
  vtbl*: cQBufferVTable

method metaObject*(self: VirtualQBuffer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QBuffermetaObject(self[])
method metacast*(self: VirtualQBuffer, param1: cstring): pointer {.base.} =
  QBuffermetacast(self[], param1)
method metacall*(self: VirtualQBuffer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QBuffermetacall(self[], param1, param2, param3)
method open*(self: VirtualQBuffer, openMode: cint): bool {.base.} =
  QBufferopen(self[], openMode)
method close*(self: VirtualQBuffer): void {.base.} =
  QBufferclose(self[])
method size*(self: VirtualQBuffer): clonglong {.base.} =
  QBuffersize(self[])
method pos*(self: VirtualQBuffer): clonglong {.base.} =
  QBufferpos(self[])
method seek*(self: VirtualQBuffer, off: clonglong): bool {.base.} =
  QBufferseek(self[], off)
method atEnd*(self: VirtualQBuffer): bool {.base.} =
  QBufferatEnd(self[])
method canReadLine*(self: VirtualQBuffer): bool {.base.} =
  QBuffercanReadLine(self[])
method connectNotify*(self: VirtualQBuffer, param1: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QBufferconnectNotify(self[], param1)
method disconnectNotify*(self: VirtualQBuffer, param1: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QBufferdisconnectNotify(self[], param1)
method readData*(self: VirtualQBuffer, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QBufferreadData(self[], data, maxlen)
method writeData*(self: VirtualQBuffer, data: cstring, len: clonglong): clonglong {.base.} =
  QBufferwriteData(self[], data, len)
method isSequential*(self: VirtualQBuffer): bool {.base.} =
  QBufferisSequential(self[])
method reset*(self: VirtualQBuffer): bool {.base.} =
  QBufferreset(self[])
method bytesAvailable*(self: VirtualQBuffer): clonglong {.base.} =
  QBufferbytesAvailable(self[])
method bytesToWrite*(self: VirtualQBuffer): clonglong {.base.} =
  QBufferbytesToWrite(self[])
method waitForReadyRead*(self: VirtualQBuffer, msecs: cint): bool {.base.} =
  QBufferwaitForReadyRead(self[], msecs)
method waitForBytesWritten*(self: VirtualQBuffer, msecs: cint): bool {.base.} =
  QBufferwaitForBytesWritten(self[], msecs)
method readLineData*(self: VirtualQBuffer, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QBufferreadLineData(self[], data, maxlen)
method skipData*(self: VirtualQBuffer, maxSize: clonglong): clonglong {.base.} =
  QBufferskipData(self[], maxSize)
method event*(self: VirtualQBuffer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QBufferevent(self[], event)
method eventFilter*(self: VirtualQBuffer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QBuffereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQBuffer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QBuffertimerEvent(self[], event)
method childEvent*(self: VirtualQBuffer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QBufferchildEvent(self[], event)
method customEvent*(self: VirtualQBuffer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QBuffercustomEvent(self[], event)

proc fcQBuffer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBuffer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQBuffer_method_callback_open(self: pointer, openMode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = cint(openMode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  inst.close()

proc fcQBuffer_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

proc fcQBuffer_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

proc fcQBuffer_method_callback_seek(self: pointer, off: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = off
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

proc fcQBuffer_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

proc fcQBuffer_method_callback_connectNotify(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1, owned: false)
  inst.connectNotify(slotval1)

proc fcQBuffer_method_callback_disconnectNotify(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQBuffer_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

proc fcQBuffer_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

proc fcQBuffer_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

proc fcQBuffer_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

proc fcQBuffer_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQBuffer_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

proc fcQBuffer_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

proc fcQBuffer_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQBuffer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQBuffer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQBuffer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQBuffer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBuffer](fcQBuffer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)


proc setOpenMode*(self: gen_qbuffer_types.QBuffer, openMode: cint): void =
  fcQBuffer_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qbuffer_types.QBuffer, errorString: openArray[char]): void =
  fcQBuffer_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qbuffer_types.QBuffer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQBuffer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qbuffer_types.QBuffer): cint =
  fcQBuffer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qbuffer_types.QBuffer, signal: cstring): cint =
  fcQBuffer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qbuffer_types.QBuffer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQBuffer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qbuffer_types.QBuffer,
    vtbl: ref QBufferVTable = nil): gen_qbuffer_types.QBuffer =
  let vtbl = if vtbl == nil: new QBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBufferVTable](fcQBuffer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQBuffer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQBuffer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQBuffer_vtable_callback_metacall
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQBuffer_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQBuffer_vtable_callback_close
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQBuffer_vtable_callback_size
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQBuffer_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQBuffer_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQBuffer_vtable_callback_atEnd
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQBuffer_vtable_callback_canReadLine
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQBuffer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQBuffer_vtable_callback_disconnectNotify
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQBuffer_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQBuffer_vtable_callback_writeData
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQBuffer_vtable_callback_isSequential
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQBuffer_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQBuffer_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQBuffer_vtable_callback_bytesToWrite
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQBuffer_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQBuffer_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQBuffer_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQBuffer_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQBuffer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQBuffer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQBuffer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQBuffer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQBuffer_vtable_callback_customEvent
  gen_qbuffer_types.QBuffer(h: fcQBuffer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qbuffer_types.QBuffer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QBufferVTable = nil): gen_qbuffer_types.QBuffer =
  let vtbl = if vtbl == nil: new QBufferVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBufferVTable](fcQBuffer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQBuffer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQBuffer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQBuffer_vtable_callback_metacall
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQBuffer_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQBuffer_vtable_callback_close
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQBuffer_vtable_callback_size
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQBuffer_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQBuffer_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQBuffer_vtable_callback_atEnd
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQBuffer_vtable_callback_canReadLine
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQBuffer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQBuffer_vtable_callback_disconnectNotify
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQBuffer_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQBuffer_vtable_callback_writeData
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQBuffer_vtable_callback_isSequential
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQBuffer_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQBuffer_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQBuffer_vtable_callback_bytesToWrite
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQBuffer_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQBuffer_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQBuffer_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQBuffer_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQBuffer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQBuffer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQBuffer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQBuffer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQBuffer_vtable_callback_customEvent
  gen_qbuffer_types.QBuffer(h: fcQBuffer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQBuffer_mvtbl = cQBufferVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQBuffer()[])](self.fcQBuffer_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQBuffer_method_callback_metaObject,
  metacast: fcQBuffer_method_callback_metacast,
  metacall: fcQBuffer_method_callback_metacall,
  open: fcQBuffer_method_callback_open,
  close: fcQBuffer_method_callback_close,
  size: fcQBuffer_method_callback_size,
  pos: fcQBuffer_method_callback_pos,
  seek: fcQBuffer_method_callback_seek,
  atEnd: fcQBuffer_method_callback_atEnd,
  canReadLine: fcQBuffer_method_callback_canReadLine,
  connectNotify: fcQBuffer_method_callback_connectNotify,
  disconnectNotify: fcQBuffer_method_callback_disconnectNotify,
  readData: fcQBuffer_method_callback_readData,
  writeData: fcQBuffer_method_callback_writeData,
  isSequential: fcQBuffer_method_callback_isSequential,
  reset: fcQBuffer_method_callback_reset,
  bytesAvailable: fcQBuffer_method_callback_bytesAvailable,
  bytesToWrite: fcQBuffer_method_callback_bytesToWrite,
  waitForReadyRead: fcQBuffer_method_callback_waitForReadyRead,
  waitForBytesWritten: fcQBuffer_method_callback_waitForBytesWritten,
  readLineData: fcQBuffer_method_callback_readLineData,
  skipData: fcQBuffer_method_callback_skipData,
  event: fcQBuffer_method_callback_event,
  eventFilter: fcQBuffer_method_callback_eventFilter,
  timerEvent: fcQBuffer_method_callback_timerEvent,
  childEvent: fcQBuffer_method_callback_childEvent,
  customEvent: fcQBuffer_method_callback_customEvent,
)
proc create*(T: type gen_qbuffer_types.QBuffer,
    inst: VirtualQBuffer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBuffer_new(addr(cQBuffer_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qbuffer_types.QBuffer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQBuffer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBuffer_new2(addr(cQBuffer_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qbuffer_types.QBuffer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_staticMetaObject())
