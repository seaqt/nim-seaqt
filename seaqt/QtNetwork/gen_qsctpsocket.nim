import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qsctpsocket.cpp", cflags).}


import ./gen_qsctpsocket_types
export gen_qsctpsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qhostaddress_types,
  ./gen_qnetworkdatagram_types,
  ./gen_qtcpsocket
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qhostaddress_types,
  gen_qnetworkdatagram_types,
  gen_qtcpsocket

type cQSctpSocket*{.exportc: "QSctpSocket", incompleteStruct.} = object

proc fcQSctpSocket_new(): ptr cQSctpSocket {.importc: "QSctpSocket_new".}
proc fcQSctpSocket_new2(parent: pointer): ptr cQSctpSocket {.importc: "QSctpSocket_new2".}
proc fcQSctpSocket_metaObject(self: pointer, ): pointer {.importc: "QSctpSocket_metaObject".}
proc fcQSctpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpSocket_metacast".}
proc fcQSctpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpSocket_metacall".}
proc fcQSctpSocket_tr(s: cstring): struct_miqt_string {.importc: "QSctpSocket_tr".}
proc fcQSctpSocket_close(self: pointer, ): void {.importc: "QSctpSocket_close".}
proc fcQSctpSocket_disconnectFromHost(self: pointer, ): void {.importc: "QSctpSocket_disconnectFromHost".}
proc fcQSctpSocket_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpSocket_setMaximumChannelCount".}
proc fcQSctpSocket_maximumChannelCount(self: pointer, ): cint {.importc: "QSctpSocket_maximumChannelCount".}
proc fcQSctpSocket_isInDatagramMode(self: pointer, ): bool {.importc: "QSctpSocket_isInDatagramMode".}
proc fcQSctpSocket_readDatagram(self: pointer, ): pointer {.importc: "QSctpSocket_readDatagram".}
proc fcQSctpSocket_writeDatagram(self: pointer, datagram: pointer): bool {.importc: "QSctpSocket_writeDatagram".}
proc fcQSctpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpSocket_tr2".}
proc fcQSctpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpSocket_tr3".}
proc fQSctpSocket_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSctpSocket_virtualbase_metaObject".}
proc fcQSctpSocket_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_metaObject".}
proc fQSctpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSctpSocket_virtualbase_metacast".}
proc fcQSctpSocket_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_metacast".}
proc fQSctpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSctpSocket_virtualbase_metacall".}
proc fcQSctpSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_metacall".}
proc fQSctpSocket_virtualbase_close(self: pointer, ): void{.importc: "QSctpSocket_virtualbase_close".}
proc fcQSctpSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_close".}
proc fQSctpSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QSctpSocket_virtualbase_disconnectFromHost".}
proc fcQSctpSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_disconnectFromHost".}
proc fQSctpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_readData".}
proc fcQSctpSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_readData".}
proc fQSctpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_readLineData".}
proc fcQSctpSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_readLineData".}
proc fQSctpSocket_virtualbase_resume(self: pointer, ): void{.importc: "QSctpSocket_virtualbase_resume".}
proc fcQSctpSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_resume".}
proc fQSctpSocket_virtualbase_bind(self: pointer, address: pointer, port: cushort, mode: cint): bool{.importc: "QSctpSocket_virtualbase_bind".}
proc fcQSctpSocket_override_virtual_bindX(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_bind".}
proc fQSctpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QSctpSocket_virtualbase_connectToHost".}
proc fcQSctpSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_connectToHost".}
proc fQSctpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_bytesAvailable".}
proc fcQSctpSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_bytesAvailable".}
proc fQSctpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_bytesToWrite".}
proc fcQSctpSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_bytesToWrite".}
proc fQSctpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QSctpSocket_virtualbase_setReadBufferSize".}
proc fcQSctpSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_setReadBufferSize".}
proc fQSctpSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QSctpSocket_virtualbase_socketDescriptor".}
proc fcQSctpSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_socketDescriptor".}
proc fQSctpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QSctpSocket_virtualbase_setSocketDescriptor".}
proc fcQSctpSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_setSocketDescriptor".}
proc fQSctpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QSctpSocket_virtualbase_setSocketOption".}
proc fcQSctpSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_setSocketOption".}
proc fQSctpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QSctpSocket_virtualbase_socketOption".}
proc fcQSctpSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_socketOption".}
proc fQSctpSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_isSequential".}
proc fcQSctpSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_isSequential".}
proc fQSctpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForConnected".}
proc fcQSctpSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForConnected".}
proc fQSctpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForReadyRead".}
proc fcQSctpSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForReadyRead".}
proc fQSctpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForBytesWritten".}
proc fcQSctpSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForBytesWritten".}
proc fQSctpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QSctpSocket_virtualbase_waitForDisconnected".}
proc fcQSctpSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_waitForDisconnected".}
proc fQSctpSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_skipData".}
proc fcQSctpSocket_override_virtual_skipData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_skipData".}
proc fQSctpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QSctpSocket_virtualbase_writeData".}
proc fcQSctpSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_writeData".}
proc fQSctpSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QSctpSocket_virtualbase_open".}
proc fcQSctpSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_open".}
proc fQSctpSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_pos".}
proc fcQSctpSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_pos".}
proc fQSctpSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QSctpSocket_virtualbase_size".}
proc fcQSctpSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_size".}
proc fQSctpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QSctpSocket_virtualbase_seek".}
proc fcQSctpSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_seek".}
proc fQSctpSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_atEnd".}
proc fcQSctpSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_atEnd".}
proc fQSctpSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_reset".}
proc fcQSctpSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_reset".}
proc fQSctpSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QSctpSocket_virtualbase_canReadLine".}
proc fcQSctpSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_canReadLine".}
proc fQSctpSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSctpSocket_virtualbase_event".}
proc fcQSctpSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_event".}
proc fQSctpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSctpSocket_virtualbase_eventFilter".}
proc fcQSctpSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_eventFilter".}
proc fQSctpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSctpSocket_virtualbase_timerEvent".}
proc fcQSctpSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_timerEvent".}
proc fQSctpSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSctpSocket_virtualbase_childEvent".}
proc fcQSctpSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_childEvent".}
proc fQSctpSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSctpSocket_virtualbase_customEvent".}
proc fcQSctpSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_customEvent".}
proc fQSctpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSctpSocket_virtualbase_connectNotify".}
proc fcQSctpSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_connectNotify".}
proc fQSctpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSctpSocket_virtualbase_disconnectNotify".}
proc fcQSctpSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSctpSocket_override_virtual_disconnectNotify".}
proc fcQSctpSocket_staticMetaObject(): pointer {.importc: "QSctpSocket_staticMetaObject".}
proc fcQSctpSocket_delete(self: pointer) {.importc: "QSctpSocket_delete".}


func init*(T: type gen_qsctpsocket_types.QSctpSocket, h: ptr cQSctpSocket): gen_qsctpsocket_types.QSctpSocket =
  T(h: h)
proc create*(T: type gen_qsctpsocket_types.QSctpSocket, ): gen_qsctpsocket_types.QSctpSocket =
  gen_qsctpsocket_types.QSctpSocket.init(fcQSctpSocket_new())

proc create*(T: type gen_qsctpsocket_types.QSctpSocket, parent: gen_qobject_types.QObject): gen_qsctpsocket_types.QSctpSocket =
  gen_qsctpsocket_types.QSctpSocket.init(fcQSctpSocket_new2(parent.h))

proc metaObject*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_metaObject(self.h))

proc metacast*(self: gen_qsctpsocket_types.QSctpSocket, param1: cstring): pointer =
  fcQSctpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qsctpsocket_types.QSctpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQSctpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring): string =
  let v_ms = fcQSctpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc close*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_close(self.h)

proc disconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fcQSctpSocket_disconnectFromHost(self.h)

proc setMaximumChannelCount*(self: gen_qsctpsocket_types.QSctpSocket, count: cint): void =
  fcQSctpSocket_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: gen_qsctpsocket_types.QSctpSocket, ): cint =
  fcQSctpSocket_maximumChannelCount(self.h)

proc isInDatagramMode*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fcQSctpSocket_isInDatagramMode(self.h)

proc readDatagram*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qnetworkdatagram_types.QNetworkDatagram =
  gen_qnetworkdatagram_types.QNetworkDatagram(h: fcQSctpSocket_readDatagram(self.h))

proc writeDatagram*(self: gen_qsctpsocket_types.QSctpSocket, datagram: gen_qnetworkdatagram_types.QNetworkDatagram): bool =
  fcQSctpSocket_writeDatagram(self.h, datagram.h)

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQSctpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsctpsocket_types.QSctpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSctpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSctpSocketmetaObject*(self: gen_qsctpsocket_types.QSctpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSctpSocket_virtualbase_metaObject(self.h))

type QSctpSocketmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSctpSocketmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_metaObject(self: ptr cQSctpSocket, slot: int): pointer {.exportc: "miqt_exec_callback_QSctpSocket_metaObject ".} =
  var nimfunc = cast[ptr QSctpSocketmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSctpSocketmetacast*(self: gen_qsctpsocket_types.QSctpSocket, param1: cstring): pointer =
  fQSctpSocket_virtualbase_metacast(self.h, param1)

type QSctpSocketmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketmetacastProc) =
  # TODO check subclass
  var tmp = new QSctpSocketmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_metacast(self: ptr cQSctpSocket, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSctpSocket_metacast ".} =
  var nimfunc = cast[ptr QSctpSocketmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketmetacall*(self: gen_qsctpsocket_types.QSctpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fQSctpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSctpSocketmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketmetacallProc) =
  # TODO check subclass
  var tmp = new QSctpSocketmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_metacall(self: ptr cQSctpSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSctpSocket_metacall ".} =
  var nimfunc = cast[ptr QSctpSocketmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSctpSocketclose*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fQSctpSocket_virtualbase_close(self.h)

type QSctpSocketcloseProc* = proc(): void
proc onclose*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketcloseProc) =
  # TODO check subclass
  var tmp = new QSctpSocketcloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_close(self: ptr cQSctpSocket, slot: int): void {.exportc: "miqt_exec_callback_QSctpSocket_close ".} =
  var nimfunc = cast[ptr QSctpSocketcloseProc](cast[pointer](slot))

  nimfunc[]()
proc QSctpSocketdisconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fQSctpSocket_virtualbase_disconnectFromHost(self.h)

type QSctpSocketdisconnectFromHostProc* = proc(): void
proc ondisconnectFromHost*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketdisconnectFromHostProc) =
  # TODO check subclass
  var tmp = new QSctpSocketdisconnectFromHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_disconnectFromHost(self: ptr cQSctpSocket, slot: int): void {.exportc: "miqt_exec_callback_QSctpSocket_disconnectFromHost ".} =
  var nimfunc = cast[ptr QSctpSocketdisconnectFromHostProc](cast[pointer](slot))

  nimfunc[]()
proc QSctpSocketreadData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, maxlen: clonglong): clonglong =
  fQSctpSocket_virtualbase_readData(self.h, data, maxlen)

type QSctpSocketreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketreadDataProc) =
  # TODO check subclass
  var tmp = new QSctpSocketreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_readData(self: ptr cQSctpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_readData ".} =
  var nimfunc = cast[ptr QSctpSocketreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSctpSocketreadLineData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, maxlen: clonglong): clonglong =
  fQSctpSocket_virtualbase_readLineData(self.h, data, maxlen)

type QSctpSocketreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketreadLineDataProc) =
  # TODO check subclass
  var tmp = new QSctpSocketreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_readLineData(self: ptr cQSctpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_readLineData ".} =
  var nimfunc = cast[ptr QSctpSocketreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSctpSocketresume*(self: gen_qsctpsocket_types.QSctpSocket, ): void =
  fQSctpSocket_virtualbase_resume(self.h)

type QSctpSocketresumeProc* = proc(): void
proc onresume*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketresumeProc) =
  # TODO check subclass
  var tmp = new QSctpSocketresumeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_resume(self: ptr cQSctpSocket, slot: int): void {.exportc: "miqt_exec_callback_QSctpSocket_resume ".} =
  var nimfunc = cast[ptr QSctpSocketresumeProc](cast[pointer](slot))

  nimfunc[]()
proc QSctpSocketbindX*(self: gen_qsctpsocket_types.QSctpSocket, address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool =
  fQSctpSocket_virtualbase_bind(self.h, address.h, port, cint(mode))

type QSctpSocketbindXProc* = proc(address: gen_qhostaddress_types.QHostAddress, port: cushort, mode: cint): bool
proc onbindX*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketbindXProc) =
  # TODO check subclass
  var tmp = new QSctpSocketbindXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_bind(self: ptr cQSctpSocket, slot: int, address: pointer, port: cushort, mode: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_bind ".} =
  var nimfunc = cast[ptr QSctpSocketbindXProc](cast[pointer](slot))
  let slotval1 = gen_qhostaddress_types.QHostAddress(h: address)

  let slotval2 = port

  let slotval3 = cint(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSctpSocketconnectToHost*(self: gen_qsctpsocket_types.QSctpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fQSctpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QSctpSocketconnectToHostProc* = proc(hostName: string, port: cushort, mode: cint, protocol: cint): void
proc onconnectToHost*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketconnectToHostProc) =
  # TODO check subclass
  var tmp = new QSctpSocketconnectToHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_connectToHost(self: ptr cQSctpSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QSctpSocket_connectToHost ".} =
  var nimfunc = cast[ptr QSctpSocketconnectToHostProc](cast[pointer](slot))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = cint(mode)

  let slotval4 = cint(protocol)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QSctpSocketbytesAvailable*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fQSctpSocket_virtualbase_bytesAvailable(self.h)

type QSctpSocketbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QSctpSocketbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_bytesAvailable(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_bytesAvailable ".} =
  var nimfunc = cast[ptr QSctpSocketbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketbytesToWrite*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fQSctpSocket_virtualbase_bytesToWrite(self.h)

type QSctpSocketbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QSctpSocketbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_bytesToWrite(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_bytesToWrite ".} =
  var nimfunc = cast[ptr QSctpSocketbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketsetReadBufferSize*(self: gen_qsctpsocket_types.QSctpSocket, size: clonglong): void =
  fQSctpSocket_virtualbase_setReadBufferSize(self.h, size)

type QSctpSocketsetReadBufferSizeProc* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketsetReadBufferSizeProc) =
  # TODO check subclass
  var tmp = new QSctpSocketsetReadBufferSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_setReadBufferSize(self: ptr cQSctpSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QSctpSocket_setReadBufferSize ".} =
  var nimfunc = cast[ptr QSctpSocketsetReadBufferSizeProc](cast[pointer](slot))
  let slotval1 = size


  nimfunc[](slotval1)
proc QSctpSocketsocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, ): uint =
  fQSctpSocket_virtualbase_socketDescriptor(self.h)

type QSctpSocketsocketDescriptorProc* = proc(): uint
proc onsocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketsocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QSctpSocketsocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_socketDescriptor(self: ptr cQSctpSocket, slot: int): uint {.exportc: "miqt_exec_callback_QSctpSocket_socketDescriptor ".} =
  var nimfunc = cast[ptr QSctpSocketsocketDescriptorProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketsetSocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fQSctpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QSctpSocketsetSocketDescriptorProc* = proc(socketDescriptor: uint, state: cint, openMode: cint): bool
proc onsetSocketDescriptor*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketsetSocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QSctpSocketsetSocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_setSocketDescriptor(self: ptr cQSctpSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_setSocketDescriptor ".} =
  var nimfunc = cast[ptr QSctpSocketsetSocketDescriptorProc](cast[pointer](slot))
  let slotval1 = socketDescriptor

  let slotval2 = cint(state)

  let slotval3 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSctpSocketsetSocketOption*(self: gen_qsctpsocket_types.QSctpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fQSctpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QSctpSocketsetSocketOptionProc* = proc(option: cint, value: gen_qvariant_types.QVariant): void
proc onsetSocketOption*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketsetSocketOptionProc) =
  # TODO check subclass
  var tmp = new QSctpSocketsetSocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_setSocketOption(self: ptr cQSctpSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_setSocketOption ".} =
  var nimfunc = cast[ptr QSctpSocketsetSocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QSctpSocketsocketOption*(self: gen_qsctpsocket_types.QSctpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSctpSocket_virtualbase_socketOption(self.h, cint(option)))

type QSctpSocketsocketOptionProc* = proc(option: cint): gen_qvariant_types.QVariant
proc onsocketOption*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketsocketOptionProc) =
  # TODO check subclass
  var tmp = new QSctpSocketsocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_socketOption(self: ptr cQSctpSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QSctpSocket_socketOption ".} =
  var nimfunc = cast[ptr QSctpSocketsocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSctpSocketisSequential*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fQSctpSocket_virtualbase_isSequential(self.h)

type QSctpSocketisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketisSequentialProc) =
  # TODO check subclass
  var tmp = new QSctpSocketisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_isSequential(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_isSequential ".} =
  var nimfunc = cast[ptr QSctpSocketisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketwaitForConnected*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fQSctpSocket_virtualbase_waitForConnected(self.h, msecs)

type QSctpSocketwaitForConnectedProc* = proc(msecs: cint): bool
proc onwaitForConnected*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketwaitForConnectedProc) =
  # TODO check subclass
  var tmp = new QSctpSocketwaitForConnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForConnected(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForConnected ".} =
  var nimfunc = cast[ptr QSctpSocketwaitForConnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketwaitForReadyRead*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fQSctpSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QSctpSocketwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QSctpSocketwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForReadyRead(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForReadyRead ".} =
  var nimfunc = cast[ptr QSctpSocketwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketwaitForBytesWritten*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fQSctpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QSctpSocketwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QSctpSocketwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForBytesWritten(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QSctpSocketwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketwaitForDisconnected*(self: gen_qsctpsocket_types.QSctpSocket, msecs: cint): bool =
  fQSctpSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QSctpSocketwaitForDisconnectedProc* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketwaitForDisconnectedProc) =
  # TODO check subclass
  var tmp = new QSctpSocketwaitForDisconnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_waitForDisconnected(self: ptr cQSctpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_waitForDisconnected ".} =
  var nimfunc = cast[ptr QSctpSocketwaitForDisconnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketskipData*(self: gen_qsctpsocket_types.QSctpSocket, maxSize: clonglong): clonglong =
  fQSctpSocket_virtualbase_skipData(self.h, maxSize)

type QSctpSocketskipDataProc* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketskipDataProc) =
  # TODO check subclass
  var tmp = new QSctpSocketskipDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_skipData(self: ptr cQSctpSocket, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_skipData ".} =
  var nimfunc = cast[ptr QSctpSocketskipDataProc](cast[pointer](slot))
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketwriteData*(self: gen_qsctpsocket_types.QSctpSocket, data: cstring, len: clonglong): clonglong =
  fQSctpSocket_virtualbase_writeData(self.h, data, len)

type QSctpSocketwriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketwriteDataProc) =
  # TODO check subclass
  var tmp = new QSctpSocketwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_writeData(self: ptr cQSctpSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_writeData ".} =
  var nimfunc = cast[ptr QSctpSocketwriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSctpSocketopen*(self: gen_qsctpsocket_types.QSctpSocket, mode: cint): bool =
  fQSctpSocket_virtualbase_open(self.h, cint(mode))

type QSctpSocketopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketopenProc) =
  # TODO check subclass
  var tmp = new QSctpSocketopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_open(self: ptr cQSctpSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QSctpSocket_open ".} =
  var nimfunc = cast[ptr QSctpSocketopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketpos*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fQSctpSocket_virtualbase_pos(self.h)

type QSctpSocketposProc* = proc(): clonglong
proc onpos*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketposProc) =
  # TODO check subclass
  var tmp = new QSctpSocketposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_pos(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_pos ".} =
  var nimfunc = cast[ptr QSctpSocketposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketsize*(self: gen_qsctpsocket_types.QSctpSocket, ): clonglong =
  fQSctpSocket_virtualbase_size(self.h)

type QSctpSocketsizeProc* = proc(): clonglong
proc onsize*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketsizeProc) =
  # TODO check subclass
  var tmp = new QSctpSocketsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_size(self: ptr cQSctpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QSctpSocket_size ".} =
  var nimfunc = cast[ptr QSctpSocketsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketseek*(self: gen_qsctpsocket_types.QSctpSocket, pos: clonglong): bool =
  fQSctpSocket_virtualbase_seek(self.h, pos)

type QSctpSocketseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketseekProc) =
  # TODO check subclass
  var tmp = new QSctpSocketseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_seek(self: ptr cQSctpSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QSctpSocket_seek ".} =
  var nimfunc = cast[ptr QSctpSocketseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketatEnd*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fQSctpSocket_virtualbase_atEnd(self.h)

type QSctpSocketatEndProc* = proc(): bool
proc onatEnd*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketatEndProc) =
  # TODO check subclass
  var tmp = new QSctpSocketatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_atEnd(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_atEnd ".} =
  var nimfunc = cast[ptr QSctpSocketatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketreset*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fQSctpSocket_virtualbase_reset(self.h)

type QSctpSocketresetProc* = proc(): bool
proc onreset*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketresetProc) =
  # TODO check subclass
  var tmp = new QSctpSocketresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_reset(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_reset ".} =
  var nimfunc = cast[ptr QSctpSocketresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketcanReadLine*(self: gen_qsctpsocket_types.QSctpSocket, ): bool =
  fQSctpSocket_virtualbase_canReadLine(self.h)

type QSctpSocketcanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketcanReadLineProc) =
  # TODO check subclass
  var tmp = new QSctpSocketcanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_canReadLine(self: ptr cQSctpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QSctpSocket_canReadLine ".} =
  var nimfunc = cast[ptr QSctpSocketcanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpSocketevent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fQSctpSocket_virtualbase_event(self.h, event.h)

type QSctpSocketeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketeventProc) =
  # TODO check subclass
  var tmp = new QSctpSocketeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_event(self: ptr cQSctpSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpSocket_event ".} =
  var nimfunc = cast[ptr QSctpSocketeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpSocketeventFilter*(self: gen_qsctpsocket_types.QSctpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSctpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSctpSocketeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketeventFilterProc) =
  # TODO check subclass
  var tmp = new QSctpSocketeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_eventFilter(self: ptr cQSctpSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpSocket_eventFilter ".} =
  var nimfunc = cast[ptr QSctpSocketeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSctpSockettimerEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSctpSocket_virtualbase_timerEvent(self.h, event.h)

type QSctpSockettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSockettimerEventProc) =
  # TODO check subclass
  var tmp = new QSctpSockettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_timerEvent(self: ptr cQSctpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_timerEvent ".} =
  var nimfunc = cast[ptr QSctpSockettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSctpSocketchildEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fQSctpSocket_virtualbase_childEvent(self.h, event.h)

type QSctpSocketchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketchildEventProc) =
  # TODO check subclass
  var tmp = new QSctpSocketchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_childEvent(self: ptr cQSctpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_childEvent ".} =
  var nimfunc = cast[ptr QSctpSocketchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSctpSocketcustomEvent*(self: gen_qsctpsocket_types.QSctpSocket, event: gen_qcoreevent_types.QEvent): void =
  fQSctpSocket_virtualbase_customEvent(self.h, event.h)

type QSctpSocketcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketcustomEventProc) =
  # TODO check subclass
  var tmp = new QSctpSocketcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_customEvent(self: ptr cQSctpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_customEvent ".} =
  var nimfunc = cast[ptr QSctpSocketcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSctpSocketconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSctpSocket_virtualbase_connectNotify(self.h, signal.h)

type QSctpSocketconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSctpSocketconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_connectNotify(self: ptr cQSctpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_connectNotify ".} =
  var nimfunc = cast[ptr QSctpSocketconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSctpSocketdisconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSctpSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QSctpSocketdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsctpsocket_types.QSctpSocket, slot: QSctpSocketdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSctpSocketdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpSocket_disconnectNotify(self: ptr cQSctpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpSocket_disconnectNotify ".} =
  var nimfunc = cast[ptr QSctpSocketdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsctpsocket_types.QSctpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSctpSocket_staticMetaObject())
proc delete*(self: gen_qsctpsocket_types.QSctpSocket) =
  fcQSctpSocket_delete(self.h)
