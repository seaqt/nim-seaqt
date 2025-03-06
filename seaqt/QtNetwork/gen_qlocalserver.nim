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
{.compile("gen_qlocalserver.cpp", cflags).}


type QLocalServerSocketOptionEnum* = distinct cint
template NoOptions*(_: type QLocalServerSocketOptionEnum): untyped = 0
template UserAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 1
template GroupAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 2
template OtherAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 4
template WorldAccessOption*(_: type QLocalServerSocketOptionEnum): untyped = 7
template AbstractNamespaceOption*(_: type QLocalServerSocketOptionEnum): untyped = 8


import ./gen_qlocalserver_types
export gen_qlocalserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qlocalsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qlocalsocket_types

type cQLocalServer*{.exportc: "QLocalServer", incompleteStruct.} = object

proc fcQLocalServer_new(): ptr cQLocalServer {.importc: "QLocalServer_new".}
proc fcQLocalServer_new2(parent: pointer): ptr cQLocalServer {.importc: "QLocalServer_new2".}
proc fcQLocalServer_metaObject(self: pointer, ): pointer {.importc: "QLocalServer_metaObject".}
proc fcQLocalServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalServer_metacast".}
proc fcQLocalServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalServer_metacall".}
proc fcQLocalServer_tr(s: cstring): struct_miqt_string {.importc: "QLocalServer_tr".}
proc fcQLocalServer_newConnection(self: pointer, ): void {.importc: "QLocalServer_newConnection".}
proc fcQLocalServer_connect_newConnection(self: pointer, slot: int) {.importc: "QLocalServer_connect_newConnection".}
proc fcQLocalServer_close(self: pointer, ): void {.importc: "QLocalServer_close".}
proc fcQLocalServer_errorString(self: pointer, ): struct_miqt_string {.importc: "QLocalServer_errorString".}
proc fcQLocalServer_hasPendingConnections(self: pointer, ): bool {.importc: "QLocalServer_hasPendingConnections".}
proc fcQLocalServer_isListening(self: pointer, ): bool {.importc: "QLocalServer_isListening".}
proc fcQLocalServer_listen(self: pointer, name: struct_miqt_string): bool {.importc: "QLocalServer_listen".}
proc fcQLocalServer_listenWithSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QLocalServer_listenWithSocketDescriptor".}
proc fcQLocalServer_maxPendingConnections(self: pointer, ): cint {.importc: "QLocalServer_maxPendingConnections".}
proc fcQLocalServer_nextPendingConnection(self: pointer, ): pointer {.importc: "QLocalServer_nextPendingConnection".}
proc fcQLocalServer_serverName(self: pointer, ): struct_miqt_string {.importc: "QLocalServer_serverName".}
proc fcQLocalServer_fullServerName(self: pointer, ): struct_miqt_string {.importc: "QLocalServer_fullServerName".}
proc fcQLocalServer_removeServer(name: struct_miqt_string): bool {.importc: "QLocalServer_removeServer".}
proc fcQLocalServer_serverError(self: pointer, ): cint {.importc: "QLocalServer_serverError".}
proc fcQLocalServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QLocalServer_setMaxPendingConnections".}
proc fcQLocalServer_waitForNewConnection(self: pointer, ): bool {.importc: "QLocalServer_waitForNewConnection".}
proc fcQLocalServer_setListenBacklogSize(self: pointer, size: cint): void {.importc: "QLocalServer_setListenBacklogSize".}
proc fcQLocalServer_listenBacklogSize(self: pointer, ): cint {.importc: "QLocalServer_listenBacklogSize".}
proc fcQLocalServer_setSocketOptions(self: pointer, options: cint): void {.importc: "QLocalServer_setSocketOptions".}
proc fcQLocalServer_socketOptions(self: pointer, ): cint {.importc: "QLocalServer_socketOptions".}
proc fcQLocalServer_socketDescriptor(self: pointer, ): uint {.importc: "QLocalServer_socketDescriptor".}
proc fcQLocalServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLocalServer_tr2".}
proc fcQLocalServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLocalServer_tr3".}
proc fcQLocalServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QLocalServer_waitForNewConnection1".}
proc fcQLocalServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QLocalServer_waitForNewConnection2".}
proc fQLocalServer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QLocalServer_virtualbase_metaObject".}
proc fcQLocalServer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_metaObject".}
proc fQLocalServer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QLocalServer_virtualbase_metacast".}
proc fcQLocalServer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_metacast".}
proc fQLocalServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLocalServer_virtualbase_metacall".}
proc fcQLocalServer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_metacall".}
proc fQLocalServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QLocalServer_virtualbase_hasPendingConnections".}
proc fcQLocalServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_hasPendingConnections".}
proc fQLocalServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QLocalServer_virtualbase_nextPendingConnection".}
proc fcQLocalServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_nextPendingConnection".}
proc fQLocalServer_virtualbase_incomingConnection(self: pointer, socketDescriptor: uint): void{.importc: "QLocalServer_virtualbase_incomingConnection".}
proc fcQLocalServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_incomingConnection".}
proc fQLocalServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLocalServer_virtualbase_event".}
proc fcQLocalServer_override_virtual_event(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_event".}
proc fQLocalServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLocalServer_virtualbase_eventFilter".}
proc fcQLocalServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_eventFilter".}
proc fQLocalServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLocalServer_virtualbase_timerEvent".}
proc fcQLocalServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_timerEvent".}
proc fQLocalServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLocalServer_virtualbase_childEvent".}
proc fcQLocalServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_childEvent".}
proc fQLocalServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLocalServer_virtualbase_customEvent".}
proc fcQLocalServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_customEvent".}
proc fQLocalServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLocalServer_virtualbase_connectNotify".}
proc fcQLocalServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_connectNotify".}
proc fQLocalServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLocalServer_virtualbase_disconnectNotify".}
proc fcQLocalServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_disconnectNotify".}
proc fcQLocalServer_staticMetaObject(): pointer {.importc: "QLocalServer_staticMetaObject".}
proc fcQLocalServer_delete(self: pointer) {.importc: "QLocalServer_delete".}


func init*(T: type gen_qlocalserver_types.QLocalServer, h: ptr cQLocalServer): gen_qlocalserver_types.QLocalServer =
  T(h: h)
proc create*(T: type gen_qlocalserver_types.QLocalServer, ): gen_qlocalserver_types.QLocalServer =
  gen_qlocalserver_types.QLocalServer.init(fcQLocalServer_new())

proc create*(T: type gen_qlocalserver_types.QLocalServer, parent: gen_qobject_types.QObject): gen_qlocalserver_types.QLocalServer =
  gen_qlocalserver_types.QLocalServer.init(fcQLocalServer_new2(parent.h))

proc metaObject*(self: gen_qlocalserver_types.QLocalServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalServer_metaObject(self.h))

proc metacast*(self: gen_qlocalserver_types.QLocalServer, param1: cstring): pointer =
  fcQLocalServer_metacast(self.h, param1)

proc metacall*(self: gen_qlocalserver_types.QLocalServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQLocalServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlocalserver_types.QLocalServer, s: cstring): string =
  let v_ms = fcQLocalServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc newConnection*(self: gen_qlocalserver_types.QLocalServer, ): void =
  fcQLocalServer_newConnection(self.h)

type QLocalServernewConnectionSlot* = proc()
proc miqt_exec_callback_QLocalServer_newConnection(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QLocalServernewConnectionSlot](cast[pointer](slot))
  nimfunc[]()

proc onnewConnection*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServernewConnectionSlot) =
  var tmp = new QLocalServernewConnectionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_connect_newConnection(self.h, cast[int](addr tmp[]))

proc close*(self: gen_qlocalserver_types.QLocalServer, ): void =
  fcQLocalServer_close(self.h)

proc errorString*(self: gen_qlocalserver_types.QLocalServer, ): string =
  let v_ms = fcQLocalServer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasPendingConnections*(self: gen_qlocalserver_types.QLocalServer, ): bool =
  fcQLocalServer_hasPendingConnections(self.h)

proc isListening*(self: gen_qlocalserver_types.QLocalServer, ): bool =
  fcQLocalServer_isListening(self.h)

proc listen*(self: gen_qlocalserver_types.QLocalServer, name: string): bool =
  fcQLocalServer_listen(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc listen*(self: gen_qlocalserver_types.QLocalServer, socketDescriptor: uint): bool =
  fcQLocalServer_listenWithSocketDescriptor(self.h, socketDescriptor)

proc maxPendingConnections*(self: gen_qlocalserver_types.QLocalServer, ): cint =
  fcQLocalServer_maxPendingConnections(self.h)

proc nextPendingConnection*(self: gen_qlocalserver_types.QLocalServer, ): gen_qlocalsocket_types.QLocalSocket =
  gen_qlocalsocket_types.QLocalSocket(h: fcQLocalServer_nextPendingConnection(self.h))

proc serverName*(self: gen_qlocalserver_types.QLocalServer, ): string =
  let v_ms = fcQLocalServer_serverName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fullServerName*(self: gen_qlocalserver_types.QLocalServer, ): string =
  let v_ms = fcQLocalServer_fullServerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc removeServer*(_: type gen_qlocalserver_types.QLocalServer, name: string): bool =
  fcQLocalServer_removeServer(struct_miqt_string(data: name, len: csize_t(len(name))))

proc serverError*(self: gen_qlocalserver_types.QLocalServer, ): cint =
  cint(fcQLocalServer_serverError(self.h))

proc setMaxPendingConnections*(self: gen_qlocalserver_types.QLocalServer, numConnections: cint): void =
  fcQLocalServer_setMaxPendingConnections(self.h, numConnections)

proc waitForNewConnection*(self: gen_qlocalserver_types.QLocalServer, ): bool =
  fcQLocalServer_waitForNewConnection(self.h)

proc setListenBacklogSize*(self: gen_qlocalserver_types.QLocalServer, size: cint): void =
  fcQLocalServer_setListenBacklogSize(self.h, size)

proc listenBacklogSize*(self: gen_qlocalserver_types.QLocalServer, ): cint =
  fcQLocalServer_listenBacklogSize(self.h)

proc setSocketOptions*(self: gen_qlocalserver_types.QLocalServer, options: cint): void =
  fcQLocalServer_setSocketOptions(self.h, cint(options))

proc socketOptions*(self: gen_qlocalserver_types.QLocalServer, ): cint =
  cint(fcQLocalServer_socketOptions(self.h))

proc socketDescriptor*(self: gen_qlocalserver_types.QLocalServer, ): uint =
  fcQLocalServer_socketDescriptor(self.h)

proc tr*(_: type gen_qlocalserver_types.QLocalServer, s: cstring, c: cstring): string =
  let v_ms = fcQLocalServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlocalserver_types.QLocalServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLocalServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc waitForNewConnection*(self: gen_qlocalserver_types.QLocalServer, msec: cint): bool =
  fcQLocalServer_waitForNewConnection1(self.h, msec)

proc waitForNewConnection*(self: gen_qlocalserver_types.QLocalServer, msec: cint, timedOut: ptr bool): bool =
  fcQLocalServer_waitForNewConnection2(self.h, msec, timedOut)

proc QLocalServermetaObject*(self: gen_qlocalserver_types.QLocalServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQLocalServer_virtualbase_metaObject(self.h))

type QLocalServermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServermetaObjectProc) =
  # TODO check subclass
  var tmp = new QLocalServermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_metaObject(self: ptr cQLocalServer, slot: int): pointer {.exportc: "miqt_exec_callback_QLocalServer_metaObject ".} =
  var nimfunc = cast[ptr QLocalServermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLocalServermetacast*(self: gen_qlocalserver_types.QLocalServer, param1: cstring): pointer =
  fQLocalServer_virtualbase_metacast(self.h, param1)

type QLocalServermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServermetacastProc) =
  # TODO check subclass
  var tmp = new QLocalServermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_metacast(self: ptr cQLocalServer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QLocalServer_metacast ".} =
  var nimfunc = cast[ptr QLocalServermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalServermetacall*(self: gen_qlocalserver_types.QLocalServer, param1: cint, param2: cint, param3: pointer): cint =
  fQLocalServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLocalServermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServermetacallProc) =
  # TODO check subclass
  var tmp = new QLocalServermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_metacall(self: ptr cQLocalServer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLocalServer_metacall ".} =
  var nimfunc = cast[ptr QLocalServermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QLocalServerhasPendingConnections*(self: gen_qlocalserver_types.QLocalServer, ): bool =
  fQLocalServer_virtualbase_hasPendingConnections(self.h)

type QLocalServerhasPendingConnectionsProc* = proc(): bool
proc onhasPendingConnections*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServerhasPendingConnectionsProc) =
  # TODO check subclass
  var tmp = new QLocalServerhasPendingConnectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_hasPendingConnections(self: ptr cQLocalServer, slot: int): bool {.exportc: "miqt_exec_callback_QLocalServer_hasPendingConnections ".} =
  var nimfunc = cast[ptr QLocalServerhasPendingConnectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLocalServernextPendingConnection*(self: gen_qlocalserver_types.QLocalServer, ): gen_qlocalsocket_types.QLocalSocket =
  gen_qlocalsocket_types.QLocalSocket(h: fQLocalServer_virtualbase_nextPendingConnection(self.h))

type QLocalServernextPendingConnectionProc* = proc(): gen_qlocalsocket_types.QLocalSocket
proc onnextPendingConnection*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServernextPendingConnectionProc) =
  # TODO check subclass
  var tmp = new QLocalServernextPendingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_nextPendingConnection(self: ptr cQLocalServer, slot: int): pointer {.exportc: "miqt_exec_callback_QLocalServer_nextPendingConnection ".} =
  var nimfunc = cast[ptr QLocalServernextPendingConnectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLocalServerincomingConnection*(self: gen_qlocalserver_types.QLocalServer, socketDescriptor: uint): void =
  fQLocalServer_virtualbase_incomingConnection(self.h, socketDescriptor)

type QLocalServerincomingConnectionProc* = proc(socketDescriptor: uint): void
proc onincomingConnection*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServerincomingConnectionProc) =
  # TODO check subclass
  var tmp = new QLocalServerincomingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_incomingConnection(self: ptr cQLocalServer, slot: int, socketDescriptor: uint): void {.exportc: "miqt_exec_callback_QLocalServer_incomingConnection ".} =
  var nimfunc = cast[ptr QLocalServerincomingConnectionProc](cast[pointer](slot))
  let slotval1 = socketDescriptor


  nimfunc[](slotval1)
proc QLocalServerevent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QEvent): bool =
  fQLocalServer_virtualbase_event(self.h, event.h)

type QLocalServereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServereventProc) =
  # TODO check subclass
  var tmp = new QLocalServereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_event(self: ptr cQLocalServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalServer_event ".} =
  var nimfunc = cast[ptr QLocalServereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLocalServereventFilter*(self: gen_qlocalserver_types.QLocalServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLocalServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLocalServereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServereventFilterProc) =
  # TODO check subclass
  var tmp = new QLocalServereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_eventFilter(self: ptr cQLocalServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalServer_eventFilter ".} =
  var nimfunc = cast[ptr QLocalServereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLocalServertimerEvent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fQLocalServer_virtualbase_timerEvent(self.h, event.h)

type QLocalServertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServertimerEventProc) =
  # TODO check subclass
  var tmp = new QLocalServertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_timerEvent(self: ptr cQLocalServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_timerEvent ".} =
  var nimfunc = cast[ptr QLocalServertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QLocalServerchildEvent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QChildEvent): void =
  fQLocalServer_virtualbase_childEvent(self.h, event.h)

type QLocalServerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServerchildEventProc) =
  # TODO check subclass
  var tmp = new QLocalServerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_childEvent(self: ptr cQLocalServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_childEvent ".} =
  var nimfunc = cast[ptr QLocalServerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QLocalServercustomEvent*(self: gen_qlocalserver_types.QLocalServer, event: gen_qcoreevent_types.QEvent): void =
  fQLocalServer_virtualbase_customEvent(self.h, event.h)

type QLocalServercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServercustomEventProc) =
  # TODO check subclass
  var tmp = new QLocalServercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_customEvent(self: ptr cQLocalServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_customEvent ".} =
  var nimfunc = cast[ptr QLocalServercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLocalServerconnectNotify*(self: gen_qlocalserver_types.QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLocalServer_virtualbase_connectNotify(self.h, signal.h)

type QLocalServerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLocalServerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_connectNotify(self: ptr cQLocalServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_connectNotify ".} =
  var nimfunc = cast[ptr QLocalServerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLocalServerdisconnectNotify*(self: gen_qlocalserver_types.QLocalServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLocalServer_virtualbase_disconnectNotify(self.h, signal.h)

type QLocalServerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlocalserver_types.QLocalServer, slot: QLocalServerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLocalServerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_disconnectNotify(self: ptr cQLocalServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_disconnectNotify ".} =
  var nimfunc = cast[ptr QLocalServerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qlocalserver_types.QLocalServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocalServer_staticMetaObject())
proc delete*(self: gen_qlocalserver_types.QLocalServer) =
  fcQLocalServer_delete(self.h)
