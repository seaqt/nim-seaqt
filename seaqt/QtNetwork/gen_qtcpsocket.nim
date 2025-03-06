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
{.compile("gen_qtcpsocket.cpp", cflags).}


import ./gen_qtcpsocket_types
export gen_qtcpsocket_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qabstractsocket
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qabstractsocket

type cQTcpSocket*{.exportc: "QTcpSocket", incompleteStruct.} = object

proc fcQTcpSocket_new(): ptr cQTcpSocket {.importc: "QTcpSocket_new".}
proc fcQTcpSocket_new2(parent: pointer): ptr cQTcpSocket {.importc: "QTcpSocket_new2".}
proc fcQTcpSocket_metaObject(self: pointer, ): pointer {.importc: "QTcpSocket_metaObject".}
proc fcQTcpSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpSocket_metacast".}
proc fcQTcpSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpSocket_metacall".}
proc fcQTcpSocket_tr(s: cstring): struct_miqt_string {.importc: "QTcpSocket_tr".}
proc fcQTcpSocket_trUtf8(s: cstring): struct_miqt_string {.importc: "QTcpSocket_trUtf8".}
proc fcQTcpSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_tr2".}
proc fcQTcpSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_tr3".}
proc fcQTcpSocket_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpSocket_trUtf82".}
proc fcQTcpSocket_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpSocket_trUtf83".}
proc fQTcpSocket_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTcpSocket_virtualbase_metaObject".}
proc fcQTcpSocket_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_metaObject".}
proc fQTcpSocket_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTcpSocket_virtualbase_metacast".}
proc fcQTcpSocket_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_metacast".}
proc fQTcpSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTcpSocket_virtualbase_metacall".}
proc fcQTcpSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_metacall".}
proc fQTcpSocket_virtualbase_resume(self: pointer, ): void{.importc: "QTcpSocket_virtualbase_resume".}
proc fcQTcpSocket_override_virtual_resume(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_resume".}
proc fQTcpSocket_virtualbase_connectToHost(self: pointer, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void{.importc: "QTcpSocket_virtualbase_connectToHost".}
proc fcQTcpSocket_override_virtual_connectToHost(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_connectToHost".}
proc fQTcpSocket_virtualbase_disconnectFromHost(self: pointer, ): void{.importc: "QTcpSocket_virtualbase_disconnectFromHost".}
proc fcQTcpSocket_override_virtual_disconnectFromHost(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_disconnectFromHost".}
proc fQTcpSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_bytesAvailable".}
proc fcQTcpSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_bytesAvailable".}
proc fQTcpSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_bytesToWrite".}
proc fcQTcpSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_bytesToWrite".}
proc fQTcpSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_canReadLine".}
proc fcQTcpSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_canReadLine".}
proc fQTcpSocket_virtualbase_setReadBufferSize(self: pointer, size: clonglong): void{.importc: "QTcpSocket_virtualbase_setReadBufferSize".}
proc fcQTcpSocket_override_virtual_setReadBufferSize(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_setReadBufferSize".}
proc fQTcpSocket_virtualbase_socketDescriptor(self: pointer, ): uint{.importc: "QTcpSocket_virtualbase_socketDescriptor".}
proc fcQTcpSocket_override_virtual_socketDescriptor(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_socketDescriptor".}
proc fQTcpSocket_virtualbase_setSocketDescriptor(self: pointer, socketDescriptor: uint, state: cint, openMode: cint): bool{.importc: "QTcpSocket_virtualbase_setSocketDescriptor".}
proc fcQTcpSocket_override_virtual_setSocketDescriptor(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_setSocketDescriptor".}
proc fQTcpSocket_virtualbase_setSocketOption(self: pointer, option: cint, value: pointer): void{.importc: "QTcpSocket_virtualbase_setSocketOption".}
proc fcQTcpSocket_override_virtual_setSocketOption(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_setSocketOption".}
proc fQTcpSocket_virtualbase_socketOption(self: pointer, option: cint): pointer{.importc: "QTcpSocket_virtualbase_socketOption".}
proc fcQTcpSocket_override_virtual_socketOption(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_socketOption".}
proc fQTcpSocket_virtualbase_close(self: pointer, ): void{.importc: "QTcpSocket_virtualbase_close".}
proc fcQTcpSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_close".}
proc fQTcpSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_isSequential".}
proc fcQTcpSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_isSequential".}
proc fQTcpSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_atEnd".}
proc fcQTcpSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_atEnd".}
proc fQTcpSocket_virtualbase_waitForConnected(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForConnected".}
proc fcQTcpSocket_override_virtual_waitForConnected(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForConnected".}
proc fQTcpSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForReadyRead".}
proc fcQTcpSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForReadyRead".}
proc fQTcpSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForBytesWritten".}
proc fcQTcpSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForBytesWritten".}
proc fQTcpSocket_virtualbase_waitForDisconnected(self: pointer, msecs: cint): bool{.importc: "QTcpSocket_virtualbase_waitForDisconnected".}
proc fcQTcpSocket_override_virtual_waitForDisconnected(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_waitForDisconnected".}
proc fQTcpSocket_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_readData".}
proc fcQTcpSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_readData".}
proc fQTcpSocket_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_readLineData".}
proc fcQTcpSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_readLineData".}
proc fQTcpSocket_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QTcpSocket_virtualbase_writeData".}
proc fcQTcpSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_writeData".}
proc fQTcpSocket_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QTcpSocket_virtualbase_open".}
proc fcQTcpSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_open".}
proc fQTcpSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_pos".}
proc fcQTcpSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_pos".}
proc fQTcpSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QTcpSocket_virtualbase_size".}
proc fcQTcpSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_size".}
proc fQTcpSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QTcpSocket_virtualbase_seek".}
proc fcQTcpSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_seek".}
proc fQTcpSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QTcpSocket_virtualbase_reset".}
proc fcQTcpSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_reset".}
proc fQTcpSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTcpSocket_virtualbase_event".}
proc fcQTcpSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_event".}
proc fQTcpSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTcpSocket_virtualbase_eventFilter".}
proc fcQTcpSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_eventFilter".}
proc fQTcpSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTcpSocket_virtualbase_timerEvent".}
proc fcQTcpSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_timerEvent".}
proc fQTcpSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTcpSocket_virtualbase_childEvent".}
proc fcQTcpSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_childEvent".}
proc fQTcpSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTcpSocket_virtualbase_customEvent".}
proc fcQTcpSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_customEvent".}
proc fQTcpSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTcpSocket_virtualbase_connectNotify".}
proc fcQTcpSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_connectNotify".}
proc fQTcpSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTcpSocket_virtualbase_disconnectNotify".}
proc fcQTcpSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTcpSocket_override_virtual_disconnectNotify".}
proc fcQTcpSocket_staticMetaObject(): pointer {.importc: "QTcpSocket_staticMetaObject".}
proc fcQTcpSocket_delete(self: pointer) {.importc: "QTcpSocket_delete".}


func init*(T: type gen_qtcpsocket_types.QTcpSocket, h: ptr cQTcpSocket): gen_qtcpsocket_types.QTcpSocket =
  T(h: h)
proc create*(T: type gen_qtcpsocket_types.QTcpSocket, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket.init(fcQTcpSocket_new())

proc create*(T: type gen_qtcpsocket_types.QTcpSocket, parent: gen_qobject_types.QObject): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket.init(fcQTcpSocket_new2(parent.h))

proc metaObject*(self: gen_qtcpsocket_types.QTcpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_metaObject(self.h))

proc metacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fcQTcpSocket_metacast(self.h, param1)

proc metacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring): string =
  let v_ms = fcQTcpSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring): string =
  let v_ms = fcQTcpSocket_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQTcpSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring): string =
  let v_ms = fcQTcpSocket_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtcpsocket_types.QTcpSocket, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpSocket_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTcpSocketmetaObject*(self: gen_qtcpsocket_types.QTcpSocket, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTcpSocket_virtualbase_metaObject(self.h))

type QTcpSocketmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTcpSocketmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_metaObject(self: ptr cQTcpSocket, slot: int): pointer {.exportc: "miqt_exec_callback_QTcpSocket_metaObject ".} =
  var nimfunc = cast[ptr QTcpSocketmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTcpSocketmetacast*(self: gen_qtcpsocket_types.QTcpSocket, param1: cstring): pointer =
  fQTcpSocket_virtualbase_metacast(self.h, param1)

type QTcpSocketmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketmetacastProc) =
  # TODO check subclass
  var tmp = new QTcpSocketmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_metacast(self: ptr cQTcpSocket, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTcpSocket_metacast ".} =
  var nimfunc = cast[ptr QTcpSocketmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketmetacall*(self: gen_qtcpsocket_types.QTcpSocket, param1: cint, param2: cint, param3: pointer): cint =
  fQTcpSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTcpSocketmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketmetacallProc) =
  # TODO check subclass
  var tmp = new QTcpSocketmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_metacall(self: ptr cQTcpSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTcpSocket_metacall ".} =
  var nimfunc = cast[ptr QTcpSocketmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTcpSocketresume*(self: gen_qtcpsocket_types.QTcpSocket, ): void =
  fQTcpSocket_virtualbase_resume(self.h)

type QTcpSocketresumeProc* = proc(): void
proc onresume*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketresumeProc) =
  # TODO check subclass
  var tmp = new QTcpSocketresumeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_resume(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_resume(self: ptr cQTcpSocket, slot: int): void {.exportc: "miqt_exec_callback_QTcpSocket_resume ".} =
  var nimfunc = cast[ptr QTcpSocketresumeProc](cast[pointer](slot))

  nimfunc[]()
proc QTcpSocketconnectToHost*(self: gen_qtcpsocket_types.QTcpSocket, hostName: string, port: cushort, mode: cint, protocol: cint): void =
  fQTcpSocket_virtualbase_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, cint(mode), cint(protocol))

type QTcpSocketconnectToHostProc* = proc(hostName: string, port: cushort, mode: cint, protocol: cint): void
proc onconnectToHost*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketconnectToHostProc) =
  # TODO check subclass
  var tmp = new QTcpSocketconnectToHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_connectToHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_connectToHost(self: ptr cQTcpSocket, slot: int, hostName: struct_miqt_string, port: cushort, mode: cint, protocol: cint): void {.exportc: "miqt_exec_callback_QTcpSocket_connectToHost ".} =
  var nimfunc = cast[ptr QTcpSocketconnectToHostProc](cast[pointer](slot))
  let vhostName_ms = hostName
  let vhostNamex_ret = string.fromBytes(toOpenArrayByte(vhostName_ms.data, 0, int(vhostName_ms.len)-1))
  c_free(vhostName_ms.data)
  let slotval1 = vhostNamex_ret

  let slotval2 = port

  let slotval3 = cint(mode)

  let slotval4 = cint(protocol)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QTcpSocketdisconnectFromHost*(self: gen_qtcpsocket_types.QTcpSocket, ): void =
  fQTcpSocket_virtualbase_disconnectFromHost(self.h)

type QTcpSocketdisconnectFromHostProc* = proc(): void
proc ondisconnectFromHost*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketdisconnectFromHostProc) =
  # TODO check subclass
  var tmp = new QTcpSocketdisconnectFromHostProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_disconnectFromHost(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_disconnectFromHost(self: ptr cQTcpSocket, slot: int): void {.exportc: "miqt_exec_callback_QTcpSocket_disconnectFromHost ".} =
  var nimfunc = cast[ptr QTcpSocketdisconnectFromHostProc](cast[pointer](slot))

  nimfunc[]()
proc QTcpSocketbytesAvailable*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fQTcpSocket_virtualbase_bytesAvailable(self.h)

type QTcpSocketbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QTcpSocketbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_bytesAvailable(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_bytesAvailable ".} =
  var nimfunc = cast[ptr QTcpSocketbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketbytesToWrite*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fQTcpSocket_virtualbase_bytesToWrite(self.h)

type QTcpSocketbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QTcpSocketbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_bytesToWrite(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_bytesToWrite ".} =
  var nimfunc = cast[ptr QTcpSocketbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketcanReadLine*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fQTcpSocket_virtualbase_canReadLine(self.h)

type QTcpSocketcanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketcanReadLineProc) =
  # TODO check subclass
  var tmp = new QTcpSocketcanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_canReadLine(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_canReadLine ".} =
  var nimfunc = cast[ptr QTcpSocketcanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketsetReadBufferSize*(self: gen_qtcpsocket_types.QTcpSocket, size: clonglong): void =
  fQTcpSocket_virtualbase_setReadBufferSize(self.h, size)

type QTcpSocketsetReadBufferSizeProc* = proc(size: clonglong): void
proc onsetReadBufferSize*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketsetReadBufferSizeProc) =
  # TODO check subclass
  var tmp = new QTcpSocketsetReadBufferSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_setReadBufferSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_setReadBufferSize(self: ptr cQTcpSocket, slot: int, size: clonglong): void {.exportc: "miqt_exec_callback_QTcpSocket_setReadBufferSize ".} =
  var nimfunc = cast[ptr QTcpSocketsetReadBufferSizeProc](cast[pointer](slot))
  let slotval1 = size


  nimfunc[](slotval1)
proc QTcpSocketsocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, ): uint =
  fQTcpSocket_virtualbase_socketDescriptor(self.h)

type QTcpSocketsocketDescriptorProc* = proc(): uint
proc onsocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketsocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QTcpSocketsocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_socketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_socketDescriptor(self: ptr cQTcpSocket, slot: int): uint {.exportc: "miqt_exec_callback_QTcpSocket_socketDescriptor ".} =
  var nimfunc = cast[ptr QTcpSocketsocketDescriptorProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketsetSocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, socketDescriptor: uint, state: cint, openMode: cint): bool =
  fQTcpSocket_virtualbase_setSocketDescriptor(self.h, socketDescriptor, cint(state), cint(openMode))

type QTcpSocketsetSocketDescriptorProc* = proc(socketDescriptor: uint, state: cint, openMode: cint): bool
proc onsetSocketDescriptor*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketsetSocketDescriptorProc) =
  # TODO check subclass
  var tmp = new QTcpSocketsetSocketDescriptorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_setSocketDescriptor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_setSocketDescriptor(self: ptr cQTcpSocket, slot: int, socketDescriptor: uint, state: cint, openMode: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_setSocketDescriptor ".} =
  var nimfunc = cast[ptr QTcpSocketsetSocketDescriptorProc](cast[pointer](slot))
  let slotval1 = socketDescriptor

  let slotval2 = cint(state)

  let slotval3 = cint(openMode)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTcpSocketsetSocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint, value: gen_qvariant_types.QVariant): void =
  fQTcpSocket_virtualbase_setSocketOption(self.h, cint(option), value.h)

type QTcpSocketsetSocketOptionProc* = proc(option: cint, value: gen_qvariant_types.QVariant): void
proc onsetSocketOption*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketsetSocketOptionProc) =
  # TODO check subclass
  var tmp = new QTcpSocketsetSocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_setSocketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_setSocketOption(self: ptr cQTcpSocket, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_setSocketOption ".} =
  var nimfunc = cast[ptr QTcpSocketsetSocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QTcpSocketsocketOption*(self: gen_qtcpsocket_types.QTcpSocket, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTcpSocket_virtualbase_socketOption(self.h, cint(option)))

type QTcpSocketsocketOptionProc* = proc(option: cint): gen_qvariant_types.QVariant
proc onsocketOption*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketsocketOptionProc) =
  # TODO check subclass
  var tmp = new QTcpSocketsocketOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_socketOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_socketOption(self: ptr cQTcpSocket, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QTcpSocket_socketOption ".} =
  var nimfunc = cast[ptr QTcpSocketsocketOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTcpSocketclose*(self: gen_qtcpsocket_types.QTcpSocket, ): void =
  fQTcpSocket_virtualbase_close(self.h)

type QTcpSocketcloseProc* = proc(): void
proc onclose*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketcloseProc) =
  # TODO check subclass
  var tmp = new QTcpSocketcloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_close(self: ptr cQTcpSocket, slot: int): void {.exportc: "miqt_exec_callback_QTcpSocket_close ".} =
  var nimfunc = cast[ptr QTcpSocketcloseProc](cast[pointer](slot))

  nimfunc[]()
proc QTcpSocketisSequential*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fQTcpSocket_virtualbase_isSequential(self.h)

type QTcpSocketisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketisSequentialProc) =
  # TODO check subclass
  var tmp = new QTcpSocketisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_isSequential(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_isSequential ".} =
  var nimfunc = cast[ptr QTcpSocketisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketatEnd*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fQTcpSocket_virtualbase_atEnd(self.h)

type QTcpSocketatEndProc* = proc(): bool
proc onatEnd*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketatEndProc) =
  # TODO check subclass
  var tmp = new QTcpSocketatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_atEnd(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_atEnd ".} =
  var nimfunc = cast[ptr QTcpSocketatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketwaitForConnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fQTcpSocket_virtualbase_waitForConnected(self.h, msecs)

type QTcpSocketwaitForConnectedProc* = proc(msecs: cint): bool
proc onwaitForConnected*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketwaitForConnectedProc) =
  # TODO check subclass
  var tmp = new QTcpSocketwaitForConnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForConnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForConnected(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForConnected ".} =
  var nimfunc = cast[ptr QTcpSocketwaitForConnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketwaitForReadyRead*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fQTcpSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QTcpSocketwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QTcpSocketwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForReadyRead(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForReadyRead ".} =
  var nimfunc = cast[ptr QTcpSocketwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketwaitForBytesWritten*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fQTcpSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QTcpSocketwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QTcpSocketwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForBytesWritten(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QTcpSocketwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketwaitForDisconnected*(self: gen_qtcpsocket_types.QTcpSocket, msecs: cint): bool =
  fQTcpSocket_virtualbase_waitForDisconnected(self.h, msecs)

type QTcpSocketwaitForDisconnectedProc* = proc(msecs: cint): bool
proc onwaitForDisconnected*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketwaitForDisconnectedProc) =
  # TODO check subclass
  var tmp = new QTcpSocketwaitForDisconnectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_waitForDisconnected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_waitForDisconnected(self: ptr cQTcpSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_waitForDisconnected ".} =
  var nimfunc = cast[ptr QTcpSocketwaitForDisconnectedProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketreadData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fQTcpSocket_virtualbase_readData(self.h, data, maxlen)

type QTcpSocketreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketreadDataProc) =
  # TODO check subclass
  var tmp = new QTcpSocketreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_readData(self: ptr cQTcpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_readData ".} =
  var nimfunc = cast[ptr QTcpSocketreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTcpSocketreadLineData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, maxlen: clonglong): clonglong =
  fQTcpSocket_virtualbase_readLineData(self.h, data, maxlen)

type QTcpSocketreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketreadLineDataProc) =
  # TODO check subclass
  var tmp = new QTcpSocketreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_readLineData(self: ptr cQTcpSocket, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_readLineData ".} =
  var nimfunc = cast[ptr QTcpSocketreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTcpSocketwriteData*(self: gen_qtcpsocket_types.QTcpSocket, data: cstring, len: clonglong): clonglong =
  fQTcpSocket_virtualbase_writeData(self.h, data, len)

type QTcpSocketwriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketwriteDataProc) =
  # TODO check subclass
  var tmp = new QTcpSocketwriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_writeData(self: ptr cQTcpSocket, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_writeData ".} =
  var nimfunc = cast[ptr QTcpSocketwriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTcpSocketopen*(self: gen_qtcpsocket_types.QTcpSocket, mode: cint): bool =
  fQTcpSocket_virtualbase_open(self.h, cint(mode))

type QTcpSocketopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketopenProc) =
  # TODO check subclass
  var tmp = new QTcpSocketopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_open(self: ptr cQTcpSocket, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QTcpSocket_open ".} =
  var nimfunc = cast[ptr QTcpSocketopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketpos*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fQTcpSocket_virtualbase_pos(self.h)

type QTcpSocketposProc* = proc(): clonglong
proc onpos*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketposProc) =
  # TODO check subclass
  var tmp = new QTcpSocketposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_pos(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_pos ".} =
  var nimfunc = cast[ptr QTcpSocketposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketsize*(self: gen_qtcpsocket_types.QTcpSocket, ): clonglong =
  fQTcpSocket_virtualbase_size(self.h)

type QTcpSocketsizeProc* = proc(): clonglong
proc onsize*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketsizeProc) =
  # TODO check subclass
  var tmp = new QTcpSocketsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_size(self: ptr cQTcpSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QTcpSocket_size ".} =
  var nimfunc = cast[ptr QTcpSocketsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketseek*(self: gen_qtcpsocket_types.QTcpSocket, pos: clonglong): bool =
  fQTcpSocket_virtualbase_seek(self.h, pos)

type QTcpSocketseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketseekProc) =
  # TODO check subclass
  var tmp = new QTcpSocketseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_seek(self: ptr cQTcpSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QTcpSocket_seek ".} =
  var nimfunc = cast[ptr QTcpSocketseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketreset*(self: gen_qtcpsocket_types.QTcpSocket, ): bool =
  fQTcpSocket_virtualbase_reset(self.h)

type QTcpSocketresetProc* = proc(): bool
proc onreset*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketresetProc) =
  # TODO check subclass
  var tmp = new QTcpSocketresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_reset(self: ptr cQTcpSocket, slot: int): bool {.exportc: "miqt_exec_callback_QTcpSocket_reset ".} =
  var nimfunc = cast[ptr QTcpSocketresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpSocketevent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): bool =
  fQTcpSocket_virtualbase_event(self.h, event.h)

type QTcpSocketeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketeventProc) =
  # TODO check subclass
  var tmp = new QTcpSocketeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_event(self: ptr cQTcpSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpSocket_event ".} =
  var nimfunc = cast[ptr QTcpSocketeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpSocketeventFilter*(self: gen_qtcpsocket_types.QTcpSocket, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTcpSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTcpSocketeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketeventFilterProc) =
  # TODO check subclass
  var tmp = new QTcpSocketeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_eventFilter(self: ptr cQTcpSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpSocket_eventFilter ".} =
  var nimfunc = cast[ptr QTcpSocketeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTcpSockettimerEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTcpSocket_virtualbase_timerEvent(self.h, event.h)

type QTcpSockettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSockettimerEventProc) =
  # TODO check subclass
  var tmp = new QTcpSockettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_timerEvent(self: ptr cQTcpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_timerEvent ".} =
  var nimfunc = cast[ptr QTcpSockettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTcpSocketchildEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QChildEvent): void =
  fQTcpSocket_virtualbase_childEvent(self.h, event.h)

type QTcpSocketchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketchildEventProc) =
  # TODO check subclass
  var tmp = new QTcpSocketchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_childEvent(self: ptr cQTcpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_childEvent ".} =
  var nimfunc = cast[ptr QTcpSocketchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTcpSocketcustomEvent*(self: gen_qtcpsocket_types.QTcpSocket, event: gen_qcoreevent_types.QEvent): void =
  fQTcpSocket_virtualbase_customEvent(self.h, event.h)

type QTcpSocketcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketcustomEventProc) =
  # TODO check subclass
  var tmp = new QTcpSocketcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_customEvent(self: ptr cQTcpSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_customEvent ".} =
  var nimfunc = cast[ptr QTcpSocketcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTcpSocketconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTcpSocket_virtualbase_connectNotify(self.h, signal.h)

type QTcpSocketconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTcpSocketconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_connectNotify(self: ptr cQTcpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_connectNotify ".} =
  var nimfunc = cast[ptr QTcpSocketconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTcpSocketdisconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTcpSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QTcpSocketdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtcpsocket_types.QTcpSocket, slot: QTcpSocketdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTcpSocketdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpSocket_disconnectNotify(self: ptr cQTcpSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpSocket_disconnectNotify ".} =
  var nimfunc = cast[ptr QTcpSocketdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtcpsocket_types.QTcpSocket): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpSocket_staticMetaObject())
proc delete*(self: gen_qtcpsocket_types.QTcpSocket) =
  fcQTcpSocket_delete(self.h)
