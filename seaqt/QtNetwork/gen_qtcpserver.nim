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
{.compile("gen_qtcpserver.cpp", cflags).}


import ./gen_qtcpserver_types
export gen_qtcpserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qhostaddress_types,
  ./gen_qnetworkproxy_types,
  ./gen_qtcpsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qhostaddress_types,
  gen_qnetworkproxy_types,
  gen_qtcpsocket_types

type cQTcpServer*{.exportc: "QTcpServer", incompleteStruct.} = object

proc fcQTcpServer_new(): ptr cQTcpServer {.importc: "QTcpServer_new".}
proc fcQTcpServer_new2(parent: pointer): ptr cQTcpServer {.importc: "QTcpServer_new2".}
proc fcQTcpServer_metaObject(self: pointer, ): pointer {.importc: "QTcpServer_metaObject".}
proc fcQTcpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpServer_metacast".}
proc fcQTcpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpServer_metacall".}
proc fcQTcpServer_tr(s: cstring): struct_miqt_string {.importc: "QTcpServer_tr".}
proc fcQTcpServer_listen(self: pointer, ): bool {.importc: "QTcpServer_listen".}
proc fcQTcpServer_close(self: pointer, ): void {.importc: "QTcpServer_close".}
proc fcQTcpServer_isListening(self: pointer, ): bool {.importc: "QTcpServer_isListening".}
proc fcQTcpServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QTcpServer_setMaxPendingConnections".}
proc fcQTcpServer_maxPendingConnections(self: pointer, ): cint {.importc: "QTcpServer_maxPendingConnections".}
proc fcQTcpServer_setListenBacklogSize(self: pointer, size: cint): void {.importc: "QTcpServer_setListenBacklogSize".}
proc fcQTcpServer_listenBacklogSize(self: pointer, ): cint {.importc: "QTcpServer_listenBacklogSize".}
proc fcQTcpServer_serverPort(self: pointer, ): cushort {.importc: "QTcpServer_serverPort".}
proc fcQTcpServer_serverAddress(self: pointer, ): pointer {.importc: "QTcpServer_serverAddress".}
proc fcQTcpServer_socketDescriptor(self: pointer, ): uint {.importc: "QTcpServer_socketDescriptor".}
proc fcQTcpServer_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QTcpServer_setSocketDescriptor".}
proc fcQTcpServer_waitForNewConnection(self: pointer, ): bool {.importc: "QTcpServer_waitForNewConnection".}
proc fcQTcpServer_hasPendingConnections(self: pointer, ): bool {.importc: "QTcpServer_hasPendingConnections".}
proc fcQTcpServer_nextPendingConnection(self: pointer, ): pointer {.importc: "QTcpServer_nextPendingConnection".}
proc fcQTcpServer_serverError(self: pointer, ): cint {.importc: "QTcpServer_serverError".}
proc fcQTcpServer_errorString(self: pointer, ): struct_miqt_string {.importc: "QTcpServer_errorString".}
proc fcQTcpServer_pauseAccepting(self: pointer, ): void {.importc: "QTcpServer_pauseAccepting".}
proc fcQTcpServer_resumeAccepting(self: pointer, ): void {.importc: "QTcpServer_resumeAccepting".}
proc fcQTcpServer_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QTcpServer_setProxy".}
proc fcQTcpServer_proxy(self: pointer, ): pointer {.importc: "QTcpServer_proxy".}
proc fcQTcpServer_newConnection(self: pointer, ): void {.importc: "QTcpServer_newConnection".}
proc fcQTcpServer_connect_newConnection(self: pointer, slot: int) {.importc: "QTcpServer_connect_newConnection".}
proc fcQTcpServer_acceptError(self: pointer, socketError: cint): void {.importc: "QTcpServer_acceptError".}
proc fcQTcpServer_connect_acceptError(self: pointer, slot: int) {.importc: "QTcpServer_connect_acceptError".}
proc fcQTcpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpServer_tr2".}
proc fcQTcpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpServer_tr3".}
proc fcQTcpServer_listen1(self: pointer, address: pointer): bool {.importc: "QTcpServer_listen1".}
proc fcQTcpServer_listen2(self: pointer, address: pointer, port: cushort): bool {.importc: "QTcpServer_listen2".}
proc fcQTcpServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QTcpServer_waitForNewConnection1".}
proc fcQTcpServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QTcpServer_waitForNewConnection2".}
proc fQTcpServer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTcpServer_virtualbase_metaObject".}
proc fcQTcpServer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_metaObject".}
proc fQTcpServer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTcpServer_virtualbase_metacast".}
proc fcQTcpServer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_metacast".}
proc fQTcpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTcpServer_virtualbase_metacall".}
proc fcQTcpServer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_metacall".}
proc fQTcpServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QTcpServer_virtualbase_hasPendingConnections".}
proc fcQTcpServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_hasPendingConnections".}
proc fQTcpServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QTcpServer_virtualbase_nextPendingConnection".}
proc fcQTcpServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_nextPendingConnection".}
proc fQTcpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void{.importc: "QTcpServer_virtualbase_incomingConnection".}
proc fcQTcpServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_incomingConnection".}
proc fQTcpServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTcpServer_virtualbase_event".}
proc fcQTcpServer_override_virtual_event(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_event".}
proc fQTcpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTcpServer_virtualbase_eventFilter".}
proc fcQTcpServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_eventFilter".}
proc fQTcpServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTcpServer_virtualbase_timerEvent".}
proc fcQTcpServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_timerEvent".}
proc fQTcpServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTcpServer_virtualbase_childEvent".}
proc fcQTcpServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_childEvent".}
proc fQTcpServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTcpServer_virtualbase_customEvent".}
proc fcQTcpServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_customEvent".}
proc fQTcpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTcpServer_virtualbase_connectNotify".}
proc fcQTcpServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_connectNotify".}
proc fQTcpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTcpServer_virtualbase_disconnectNotify".}
proc fcQTcpServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_disconnectNotify".}
proc fcQTcpServer_staticMetaObject(): pointer {.importc: "QTcpServer_staticMetaObject".}
proc fcQTcpServer_delete(self: pointer) {.importc: "QTcpServer_delete".}


func init*(T: type gen_qtcpserver_types.QTcpServer, h: ptr cQTcpServer): gen_qtcpserver_types.QTcpServer =
  T(h: h)
proc create*(T: type gen_qtcpserver_types.QTcpServer, ): gen_qtcpserver_types.QTcpServer =
  gen_qtcpserver_types.QTcpServer.init(fcQTcpServer_new())

proc create*(T: type gen_qtcpserver_types.QTcpServer, parent: gen_qobject_types.QObject): gen_qtcpserver_types.QTcpServer =
  gen_qtcpserver_types.QTcpServer.init(fcQTcpServer_new2(parent.h))

proc metaObject*(self: gen_qtcpserver_types.QTcpServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_metaObject(self.h))

proc metacast*(self: gen_qtcpserver_types.QTcpServer, param1: cstring): pointer =
  fcQTcpServer_metacast(self.h, param1)

proc metacall*(self: gen_qtcpserver_types.QTcpServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTcpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring): string =
  let v_ms = fcQTcpServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_listen(self.h)

proc close*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_close(self.h)

proc isListening*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_isListening(self.h)

proc setMaxPendingConnections*(self: gen_qtcpserver_types.QTcpServer, numConnections: cint): void =
  fcQTcpServer_setMaxPendingConnections(self.h, numConnections)

proc maxPendingConnections*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  fcQTcpServer_maxPendingConnections(self.h)

proc setListenBacklogSize*(self: gen_qtcpserver_types.QTcpServer, size: cint): void =
  fcQTcpServer_setListenBacklogSize(self.h, size)

proc listenBacklogSize*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  fcQTcpServer_listenBacklogSize(self.h)

proc serverPort*(self: gen_qtcpserver_types.QTcpServer, ): cushort =
  fcQTcpServer_serverPort(self.h)

proc serverAddress*(self: gen_qtcpserver_types.QTcpServer, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQTcpServer_serverAddress(self.h))

proc socketDescriptor*(self: gen_qtcpserver_types.QTcpServer, ): uint =
  fcQTcpServer_socketDescriptor(self.h)

proc setSocketDescriptor*(self: gen_qtcpserver_types.QTcpServer, socketDescriptor: uint): bool =
  fcQTcpServer_setSocketDescriptor(self.h, socketDescriptor)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_waitForNewConnection(self.h)

proc hasPendingConnections*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fcQTcpServer_hasPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qtcpserver_types.QTcpServer, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQTcpServer_nextPendingConnection(self.h))

proc serverError*(self: gen_qtcpserver_types.QTcpServer, ): cint =
  cint(fcQTcpServer_serverError(self.h))

proc errorString*(self: gen_qtcpserver_types.QTcpServer, ): string =
  let v_ms = fcQTcpServer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pauseAccepting*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_pauseAccepting(self.h)

proc resumeAccepting*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_resumeAccepting(self.h)

proc setProxy*(self: gen_qtcpserver_types.QTcpServer, networkProxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQTcpServer_setProxy(self.h, networkProxy.h)

proc proxy*(self: gen_qtcpserver_types.QTcpServer, ): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQTcpServer_proxy(self.h))

proc newConnection*(self: gen_qtcpserver_types.QTcpServer, ): void =
  fcQTcpServer_newConnection(self.h)

type QTcpServernewConnectionSlot* = proc()
proc miqt_exec_callback_QTcpServer_newConnection(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QTcpServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc onnewConnection*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServernewConnectionSlot) =
  var tmp = new QTcpServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_connect_newConnection(self.h, cast[int](addr tmp[]))

proc acceptError*(self: gen_qtcpserver_types.QTcpServer, socketError: cint): void =
  fcQTcpServer_acceptError(self.h, cint(socketError))

type QTcpServeracceptErrorSlot* = proc(socketError: cint)
proc miqt_exec_callback_QTcpServer_acceptError(slot: int, socketError: cint) {.exportc.} =
  let nimfunc = cast[ptr QTcpServeracceptErrorSlot](cast[pointer](slot))
  let slotval1 = cint(socketError)

  nimfunc[](slotval1)

proc onacceptError*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServeracceptErrorSlot) =
  var tmp = new QTcpServeracceptErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_connect_acceptError(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring): string =
  let v_ms = fcQTcpServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtcpserver_types.QTcpServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTcpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc listen*(self: gen_qtcpserver_types.QTcpServer, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQTcpServer_listen1(self.h, address.h)

proc listen*(self: gen_qtcpserver_types.QTcpServer, address: gen_qhostaddress_types.QHostAddress, port: cushort): bool =
  fcQTcpServer_listen2(self.h, address.h, port)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer, msec: cint): bool =
  fcQTcpServer_waitForNewConnection1(self.h, msec)

proc waitForNewConnection*(self: gen_qtcpserver_types.QTcpServer, msec: cint, timedOut: ptr bool): bool =
  fcQTcpServer_waitForNewConnection2(self.h, msec, timedOut)

proc QTcpServermetaObject*(self: gen_qtcpserver_types.QTcpServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTcpServer_virtualbase_metaObject(self.h))

type QTcpServermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServermetaObjectProc) =
  # TODO check subclass
  var tmp = new QTcpServermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_metaObject(self: ptr cQTcpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QTcpServer_metaObject ".} =
  var nimfunc = cast[ptr QTcpServermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTcpServermetacast*(self: gen_qtcpserver_types.QTcpServer, param1: cstring): pointer =
  fQTcpServer_virtualbase_metacast(self.h, param1)

type QTcpServermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServermetacastProc) =
  # TODO check subclass
  var tmp = new QTcpServermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_metacast(self: ptr cQTcpServer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTcpServer_metacast ".} =
  var nimfunc = cast[ptr QTcpServermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpServermetacall*(self: gen_qtcpserver_types.QTcpServer, param1: cint, param2: cint, param3: pointer): cint =
  fQTcpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTcpServermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServermetacallProc) =
  # TODO check subclass
  var tmp = new QTcpServermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_metacall(self: ptr cQTcpServer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTcpServer_metacall ".} =
  var nimfunc = cast[ptr QTcpServermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTcpServerhasPendingConnections*(self: gen_qtcpserver_types.QTcpServer, ): bool =
  fQTcpServer_virtualbase_hasPendingConnections(self.h)

type QTcpServerhasPendingConnectionsProc* = proc(): bool
proc onhasPendingConnections*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServerhasPendingConnectionsProc) =
  # TODO check subclass
  var tmp = new QTcpServerhasPendingConnectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_hasPendingConnections(self: ptr cQTcpServer, slot: int): bool {.exportc: "miqt_exec_callback_QTcpServer_hasPendingConnections ".} =
  var nimfunc = cast[ptr QTcpServerhasPendingConnectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTcpServernextPendingConnection*(self: gen_qtcpserver_types.QTcpServer, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fQTcpServer_virtualbase_nextPendingConnection(self.h))

type QTcpServernextPendingConnectionProc* = proc(): gen_qtcpsocket_types.QTcpSocket
proc onnextPendingConnection*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServernextPendingConnectionProc) =
  # TODO check subclass
  var tmp = new QTcpServernextPendingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_nextPendingConnection(self: ptr cQTcpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QTcpServer_nextPendingConnection ".} =
  var nimfunc = cast[ptr QTcpServernextPendingConnectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTcpServerincomingConnection*(self: gen_qtcpserver_types.QTcpServer, handle: uint): void =
  fQTcpServer_virtualbase_incomingConnection(self.h, handle)

type QTcpServerincomingConnectionProc* = proc(handle: uint): void
proc onincomingConnection*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServerincomingConnectionProc) =
  # TODO check subclass
  var tmp = new QTcpServerincomingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_incomingConnection(self: ptr cQTcpServer, slot: int, handle: uint): void {.exportc: "miqt_exec_callback_QTcpServer_incomingConnection ".} =
  var nimfunc = cast[ptr QTcpServerincomingConnectionProc](cast[pointer](slot))
  let slotval1 = handle


  nimfunc[](slotval1)
proc QTcpServerevent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QEvent): bool =
  fQTcpServer_virtualbase_event(self.h, event.h)

type QTcpServereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServereventProc) =
  # TODO check subclass
  var tmp = new QTcpServereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_event(self: ptr cQTcpServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpServer_event ".} =
  var nimfunc = cast[ptr QTcpServereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTcpServereventFilter*(self: gen_qtcpserver_types.QTcpServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTcpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTcpServereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServereventFilterProc) =
  # TODO check subclass
  var tmp = new QTcpServereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_eventFilter(self: ptr cQTcpServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpServer_eventFilter ".} =
  var nimfunc = cast[ptr QTcpServereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTcpServertimerEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTcpServer_virtualbase_timerEvent(self.h, event.h)

type QTcpServertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServertimerEventProc) =
  # TODO check subclass
  var tmp = new QTcpServertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_timerEvent(self: ptr cQTcpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_timerEvent ".} =
  var nimfunc = cast[ptr QTcpServertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTcpServerchildEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QChildEvent): void =
  fQTcpServer_virtualbase_childEvent(self.h, event.h)

type QTcpServerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServerchildEventProc) =
  # TODO check subclass
  var tmp = new QTcpServerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_childEvent(self: ptr cQTcpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_childEvent ".} =
  var nimfunc = cast[ptr QTcpServerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTcpServercustomEvent*(self: gen_qtcpserver_types.QTcpServer, event: gen_qcoreevent_types.QEvent): void =
  fQTcpServer_virtualbase_customEvent(self.h, event.h)

type QTcpServercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServercustomEventProc) =
  # TODO check subclass
  var tmp = new QTcpServercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_customEvent(self: ptr cQTcpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_customEvent ".} =
  var nimfunc = cast[ptr QTcpServercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTcpServerconnectNotify*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTcpServer_virtualbase_connectNotify(self.h, signal.h)

type QTcpServerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTcpServerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_connectNotify(self: ptr cQTcpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_connectNotify ".} =
  var nimfunc = cast[ptr QTcpServerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTcpServerdisconnectNotify*(self: gen_qtcpserver_types.QTcpServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTcpServer_virtualbase_disconnectNotify(self.h, signal.h)

type QTcpServerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtcpserver_types.QTcpServer, slot: QTcpServerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTcpServerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_disconnectNotify(self: ptr cQTcpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_disconnectNotify ".} =
  var nimfunc = cast[ptr QTcpServerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtcpserver_types.QTcpServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTcpServer_staticMetaObject())
proc delete*(self: gen_qtcpserver_types.QTcpServer) =
  fcQTcpServer_delete(self.h)
