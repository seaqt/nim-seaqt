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

proc fcQBuffer_new(): ptr cQBuffer {.importc: "QBuffer_new".}
proc fcQBuffer_new2(parent: pointer): ptr cQBuffer {.importc: "QBuffer_new2".}
proc fcQBuffer_metaObject(self: pointer, ): pointer {.importc: "QBuffer_metaObject".}
proc fcQBuffer_metacast(self: pointer, param1: cstring): pointer {.importc: "QBuffer_metacast".}
proc fcQBuffer_tr(s: cstring): struct_miqt_string {.importc: "QBuffer_tr".}
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
proc fQBuffer_virtualbase_open(self: pointer, openMode: cint): bool{.importc: "QBuffer_virtualbase_open".}
proc fcQBuffer_override_virtual_open(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_open".}
proc fQBuffer_virtualbase_close(self: pointer, ): void{.importc: "QBuffer_virtualbase_close".}
proc fcQBuffer_override_virtual_close(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_close".}
proc fQBuffer_virtualbase_size(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_size".}
proc fcQBuffer_override_virtual_size(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_size".}
proc fQBuffer_virtualbase_pos(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_pos".}
proc fcQBuffer_override_virtual_pos(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_pos".}
proc fQBuffer_virtualbase_seek(self: pointer, off: clonglong): bool{.importc: "QBuffer_virtualbase_seek".}
proc fcQBuffer_override_virtual_seek(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_seek".}
proc fQBuffer_virtualbase_atEnd(self: pointer, ): bool{.importc: "QBuffer_virtualbase_atEnd".}
proc fcQBuffer_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_atEnd".}
proc fQBuffer_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QBuffer_virtualbase_canReadLine".}
proc fcQBuffer_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_canReadLine".}
proc fQBuffer_virtualbase_connectNotify(self: pointer, param1: pointer): void{.importc: "QBuffer_virtualbase_connectNotify".}
proc fcQBuffer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_connectNotify".}
proc fQBuffer_virtualbase_disconnectNotify(self: pointer, param1: pointer): void{.importc: "QBuffer_virtualbase_disconnectNotify".}
proc fcQBuffer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_disconnectNotify".}
proc fQBuffer_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QBuffer_virtualbase_readData".}
proc fcQBuffer_override_virtual_readData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_readData".}
proc fQBuffer_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QBuffer_virtualbase_writeData".}
proc fcQBuffer_override_virtual_writeData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_writeData".}
proc fQBuffer_virtualbase_isSequential(self: pointer, ): bool{.importc: "QBuffer_virtualbase_isSequential".}
proc fcQBuffer_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_isSequential".}
proc fQBuffer_virtualbase_reset(self: pointer, ): bool{.importc: "QBuffer_virtualbase_reset".}
proc fcQBuffer_override_virtual_reset(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_reset".}
proc fQBuffer_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_bytesAvailable".}
proc fcQBuffer_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_bytesAvailable".}
proc fQBuffer_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QBuffer_virtualbase_bytesToWrite".}
proc fcQBuffer_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_bytesToWrite".}
proc fQBuffer_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QBuffer_virtualbase_waitForReadyRead".}
proc fcQBuffer_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_waitForReadyRead".}
proc fQBuffer_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QBuffer_virtualbase_waitForBytesWritten".}
proc fcQBuffer_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_waitForBytesWritten".}
proc fQBuffer_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QBuffer_virtualbase_readLineData".}
proc fcQBuffer_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_readLineData".}
proc fQBuffer_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QBuffer_virtualbase_skipData".}
proc fcQBuffer_override_virtual_skipData(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_skipData".}
proc fQBuffer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QBuffer_virtualbase_event".}
proc fcQBuffer_override_virtual_event(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_event".}
proc fQBuffer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QBuffer_virtualbase_eventFilter".}
proc fcQBuffer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_eventFilter".}
proc fQBuffer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QBuffer_virtualbase_timerEvent".}
proc fcQBuffer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_timerEvent".}
proc fQBuffer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QBuffer_virtualbase_childEvent".}
proc fcQBuffer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_childEvent".}
proc fQBuffer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QBuffer_virtualbase_customEvent".}
proc fcQBuffer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QBuffer_override_virtual_customEvent".}
proc fcQBuffer_delete(self: pointer) {.importc: "QBuffer_delete".}


func init*(T: type gen_qbuffer_types.QBuffer, h: ptr cQBuffer): gen_qbuffer_types.QBuffer =
  T(h: h)
proc create*(T: type gen_qbuffer_types.QBuffer, ): gen_qbuffer_types.QBuffer =
  gen_qbuffer_types.QBuffer.init(fcQBuffer_new())

proc create*(T: type gen_qbuffer_types.QBuffer, parent: gen_qobject_types.QObject): gen_qbuffer_types.QBuffer =
  gen_qbuffer_types.QBuffer.init(fcQBuffer_new2(parent.h))

proc metaObject*(self: gen_qbuffer_types.QBuffer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQBuffer_metaObject(self.h))

proc metacast*(self: gen_qbuffer_types.QBuffer, param1: cstring): pointer =
  fcQBuffer_metacast(self.h, param1)

proc tr*(_: type gen_qbuffer_types.QBuffer, s: cstring): string =
  let v_ms = fcQBuffer_tr(s)
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

proc QBufferopen*(self: gen_qbuffer_types.QBuffer, openMode: cint): bool =
  fQBuffer_virtualbase_open(self.h, cint(openMode))

type QBufferopenProc* = proc(openMode: cint): bool
proc onopen*(self: gen_qbuffer_types.QBuffer, slot: QBufferopenProc) =
  # TODO check subclass
  var tmp = new QBufferopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_open(self: ptr cQBuffer, slot: int, openMode: cint): bool {.exportc: "miqt_exec_callback_QBuffer_open ".} =
  var nimfunc = cast[ptr QBufferopenProc](cast[pointer](slot))
  let slotval1 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBufferclose*(self: gen_qbuffer_types.QBuffer, ): void =
  fQBuffer_virtualbase_close(self.h)

type QBuffercloseProc* = proc(): void
proc onclose*(self: gen_qbuffer_types.QBuffer, slot: QBuffercloseProc) =
  # TODO check subclass
  var tmp = new QBuffercloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_close(self: ptr cQBuffer, slot: int): void {.exportc: "miqt_exec_callback_QBuffer_close ".} =
  var nimfunc = cast[ptr QBuffercloseProc](cast[pointer](slot))

  nimfunc[]()
proc QBuffersize*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fQBuffer_virtualbase_size(self.h)

type QBuffersizeProc* = proc(): clonglong
proc onsize*(self: gen_qbuffer_types.QBuffer, slot: QBuffersizeProc) =
  # TODO check subclass
  var tmp = new QBuffersizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_size(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_size ".} =
  var nimfunc = cast[ptr QBuffersizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferpos*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fQBuffer_virtualbase_pos(self.h)

type QBufferposProc* = proc(): clonglong
proc onpos*(self: gen_qbuffer_types.QBuffer, slot: QBufferposProc) =
  # TODO check subclass
  var tmp = new QBufferposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_pos(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_pos ".} =
  var nimfunc = cast[ptr QBufferposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferseek*(self: gen_qbuffer_types.QBuffer, off: clonglong): bool =
  fQBuffer_virtualbase_seek(self.h, off)

type QBufferseekProc* = proc(off: clonglong): bool
proc onseek*(self: gen_qbuffer_types.QBuffer, slot: QBufferseekProc) =
  # TODO check subclass
  var tmp = new QBufferseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_seek(self: ptr cQBuffer, slot: int, off: clonglong): bool {.exportc: "miqt_exec_callback_QBuffer_seek ".} =
  var nimfunc = cast[ptr QBufferseekProc](cast[pointer](slot))
  let slotval1 = off


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBufferatEnd*(self: gen_qbuffer_types.QBuffer, ): bool =
  fQBuffer_virtualbase_atEnd(self.h)

type QBufferatEndProc* = proc(): bool
proc onatEnd*(self: gen_qbuffer_types.QBuffer, slot: QBufferatEndProc) =
  # TODO check subclass
  var tmp = new QBufferatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_atEnd(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_atEnd ".} =
  var nimfunc = cast[ptr QBufferatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBuffercanReadLine*(self: gen_qbuffer_types.QBuffer, ): bool =
  fQBuffer_virtualbase_canReadLine(self.h)

type QBuffercanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qbuffer_types.QBuffer, slot: QBuffercanReadLineProc) =
  # TODO check subclass
  var tmp = new QBuffercanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_canReadLine(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_canReadLine ".} =
  var nimfunc = cast[ptr QBuffercanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferconnectNotify*(self: gen_qbuffer_types.QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void =
  fQBuffer_virtualbase_connectNotify(self.h, param1.h)

type QBufferconnectNotifyProc* = proc(param1: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qbuffer_types.QBuffer, slot: QBufferconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QBufferconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_connectNotify(self: ptr cQBuffer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QBuffer_connectNotify ".} =
  var nimfunc = cast[ptr QBufferconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1)


  nimfunc[](slotval1)
proc QBufferdisconnectNotify*(self: gen_qbuffer_types.QBuffer, param1: gen_qmetaobject_types.QMetaMethod): void =
  fQBuffer_virtualbase_disconnectNotify(self.h, param1.h)

type QBufferdisconnectNotifyProc* = proc(param1: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qbuffer_types.QBuffer, slot: QBufferdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QBufferdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_disconnectNotify(self: ptr cQBuffer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QBuffer_disconnectNotify ".} =
  var nimfunc = cast[ptr QBufferdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: param1)


  nimfunc[](slotval1)
proc QBufferreadData*(self: gen_qbuffer_types.QBuffer, data: cstring, maxlen: clonglong): clonglong =
  fQBuffer_virtualbase_readData(self.h, data, maxlen)

type QBufferreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qbuffer_types.QBuffer, slot: QBufferreadDataProc) =
  # TODO check subclass
  var tmp = new QBufferreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_readData(self: ptr cQBuffer, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_readData ".} =
  var nimfunc = cast[ptr QBufferreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QBufferwriteData*(self: gen_qbuffer_types.QBuffer, data: cstring, len: clonglong): clonglong =
  fQBuffer_virtualbase_writeData(self.h, data, len)

type QBufferwriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qbuffer_types.QBuffer, slot: QBufferwriteDataProc) =
  # TODO check subclass
  var tmp = new QBufferwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_writeData(self: ptr cQBuffer, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_writeData ".} =
  var nimfunc = cast[ptr QBufferwriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QBufferisSequential*(self: gen_qbuffer_types.QBuffer, ): bool =
  fQBuffer_virtualbase_isSequential(self.h)

type QBufferisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qbuffer_types.QBuffer, slot: QBufferisSequentialProc) =
  # TODO check subclass
  var tmp = new QBufferisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_isSequential(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_isSequential ".} =
  var nimfunc = cast[ptr QBufferisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferreset*(self: gen_qbuffer_types.QBuffer, ): bool =
  fQBuffer_virtualbase_reset(self.h)

type QBufferresetProc* = proc(): bool
proc onreset*(self: gen_qbuffer_types.QBuffer, slot: QBufferresetProc) =
  # TODO check subclass
  var tmp = new QBufferresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_reset(self: ptr cQBuffer, slot: int): bool {.exportc: "miqt_exec_callback_QBuffer_reset ".} =
  var nimfunc = cast[ptr QBufferresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferbytesAvailable*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fQBuffer_virtualbase_bytesAvailable(self.h)

type QBufferbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qbuffer_types.QBuffer, slot: QBufferbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QBufferbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_bytesAvailable(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_bytesAvailable ".} =
  var nimfunc = cast[ptr QBufferbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferbytesToWrite*(self: gen_qbuffer_types.QBuffer, ): clonglong =
  fQBuffer_virtualbase_bytesToWrite(self.h)

type QBufferbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qbuffer_types.QBuffer, slot: QBufferbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QBufferbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_bytesToWrite(self: ptr cQBuffer, slot: int): clonglong {.exportc: "miqt_exec_callback_QBuffer_bytesToWrite ".} =
  var nimfunc = cast[ptr QBufferbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBufferwaitForReadyRead*(self: gen_qbuffer_types.QBuffer, msecs: cint): bool =
  fQBuffer_virtualbase_waitForReadyRead(self.h, msecs)

type QBufferwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qbuffer_types.QBuffer, slot: QBufferwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QBufferwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_waitForReadyRead(self: ptr cQBuffer, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QBuffer_waitForReadyRead ".} =
  var nimfunc = cast[ptr QBufferwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBufferwaitForBytesWritten*(self: gen_qbuffer_types.QBuffer, msecs: cint): bool =
  fQBuffer_virtualbase_waitForBytesWritten(self.h, msecs)

type QBufferwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qbuffer_types.QBuffer, slot: QBufferwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QBufferwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_waitForBytesWritten(self: ptr cQBuffer, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QBuffer_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QBufferwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBufferreadLineData*(self: gen_qbuffer_types.QBuffer, data: cstring, maxlen: clonglong): clonglong =
  fQBuffer_virtualbase_readLineData(self.h, data, maxlen)

type QBufferreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qbuffer_types.QBuffer, slot: QBufferreadLineDataProc) =
  # TODO check subclass
  var tmp = new QBufferreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_readLineData(self: ptr cQBuffer, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_readLineData ".} =
  var nimfunc = cast[ptr QBufferreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QBufferskipData*(self: gen_qbuffer_types.QBuffer, maxSize: clonglong): clonglong =
  fQBuffer_virtualbase_skipData(self.h, maxSize)

type QBufferskipDataProc* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: gen_qbuffer_types.QBuffer, slot: QBufferskipDataProc) =
  # TODO check subclass
  var tmp = new QBufferskipDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_skipData(self: ptr cQBuffer, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QBuffer_skipData ".} =
  var nimfunc = cast[ptr QBufferskipDataProc](cast[pointer](slot))
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBufferevent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QEvent): bool =
  fQBuffer_virtualbase_event(self.h, event.h)

type QBuffereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qbuffer_types.QBuffer, slot: QBuffereventProc) =
  # TODO check subclass
  var tmp = new QBuffereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_event(self: ptr cQBuffer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QBuffer_event ".} =
  var nimfunc = cast[ptr QBuffereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBuffereventFilter*(self: gen_qbuffer_types.QBuffer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQBuffer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QBuffereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qbuffer_types.QBuffer, slot: QBuffereventFilterProc) =
  # TODO check subclass
  var tmp = new QBuffereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_eventFilter(self: ptr cQBuffer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QBuffer_eventFilter ".} =
  var nimfunc = cast[ptr QBuffereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QBuffertimerEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QTimerEvent): void =
  fQBuffer_virtualbase_timerEvent(self.h, event.h)

type QBuffertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qbuffer_types.QBuffer, slot: QBuffertimerEventProc) =
  # TODO check subclass
  var tmp = new QBuffertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_timerEvent(self: ptr cQBuffer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBuffer_timerEvent ".} =
  var nimfunc = cast[ptr QBuffertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QBufferchildEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QChildEvent): void =
  fQBuffer_virtualbase_childEvent(self.h, event.h)

type QBufferchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qbuffer_types.QBuffer, slot: QBufferchildEventProc) =
  # TODO check subclass
  var tmp = new QBufferchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_childEvent(self: ptr cQBuffer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBuffer_childEvent ".} =
  var nimfunc = cast[ptr QBufferchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QBuffercustomEvent*(self: gen_qbuffer_types.QBuffer, event: gen_qcoreevent_types.QEvent): void =
  fQBuffer_virtualbase_customEvent(self.h, event.h)

type QBuffercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qbuffer_types.QBuffer, slot: QBuffercustomEventProc) =
  # TODO check subclass
  var tmp = new QBuffercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBuffer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBuffer_customEvent(self: ptr cQBuffer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBuffer_customEvent ".} =
  var nimfunc = cast[ptr QBuffercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc delete*(self: gen_qbuffer_types.QBuffer) =
  fcQBuffer_delete(self.h)
