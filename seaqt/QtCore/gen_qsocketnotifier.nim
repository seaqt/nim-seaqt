import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qsocketnotifier.cpp", cflags).}


type QSocketNotifierTypeEnum* = distinct cint
template Read*(_: type QSocketNotifierTypeEnum): untyped = 0
template Write*(_: type QSocketNotifierTypeEnum): untyped = 1
template ExceptionVal*(_: type QSocketNotifierTypeEnum): untyped = 2


import ./gen_qsocketnotifier_types
export gen_qsocketnotifier_types

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

type cQSocketNotifier*{.exportc: "QSocketNotifier", incompleteStruct.} = object
type cQSocketDescriptor*{.exportc: "QSocketDescriptor", incompleteStruct.} = object

proc fcQSocketNotifier_metaObject(self: pointer, ): pointer {.importc: "QSocketNotifier_metaObject".}
proc fcQSocketNotifier_metacast(self: pointer, param1: cstring): pointer {.importc: "QSocketNotifier_metacast".}
proc fcQSocketNotifier_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSocketNotifier_metacall".}
proc fcQSocketNotifier_tr(s: cstring): struct_miqt_string {.importc: "QSocketNotifier_tr".}
proc fcQSocketNotifier_setSocket(self: pointer, socket: uint): void {.importc: "QSocketNotifier_setSocket".}
proc fcQSocketNotifier_socket(self: pointer, ): uint {.importc: "QSocketNotifier_socket".}
proc fcQSocketNotifier_typeX(self: pointer, ): cint {.importc: "QSocketNotifier_type".}
proc fcQSocketNotifier_isValid(self: pointer, ): bool {.importc: "QSocketNotifier_isValid".}
proc fcQSocketNotifier_isEnabled(self: pointer, ): bool {.importc: "QSocketNotifier_isEnabled".}
proc fcQSocketNotifier_setEnabled(self: pointer, enabled: bool): void {.importc: "QSocketNotifier_setEnabled".}
proc fcQSocketNotifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSocketNotifier_tr2".}
proc fcQSocketNotifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSocketNotifier_tr3".}
type cQSocketNotifierVTable = object
  destructor*: proc(vtbl: ptr cQSocketNotifierVTable, self: ptr cQSocketNotifier) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSocketNotifier_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSocketNotifier_virtualbase_metaObject".}
proc fcQSocketNotifier_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSocketNotifier_virtualbase_metacast".}
proc fcQSocketNotifier_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSocketNotifier_virtualbase_metacall".}
proc fcQSocketNotifier_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QSocketNotifier_virtualbase_event".}
proc fcQSocketNotifier_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSocketNotifier_virtualbase_eventFilter".}
proc fcQSocketNotifier_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSocketNotifier_virtualbase_timerEvent".}
proc fcQSocketNotifier_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSocketNotifier_virtualbase_childEvent".}
proc fcQSocketNotifier_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSocketNotifier_virtualbase_customEvent".}
proc fcQSocketNotifier_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSocketNotifier_virtualbase_connectNotify".}
proc fcQSocketNotifier_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSocketNotifier_virtualbase_disconnectNotify".}
proc fcQSocketNotifier_protectedbase_sender(self: pointer, ): pointer {.importc: "QSocketNotifier_protectedbase_sender".}
proc fcQSocketNotifier_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSocketNotifier_protectedbase_senderSignalIndex".}
proc fcQSocketNotifier_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSocketNotifier_protectedbase_receivers".}
proc fcQSocketNotifier_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSocketNotifier_protectedbase_isSignalConnected".}
proc fcQSocketNotifier_new(vtbl: pointer, param1: cint): ptr cQSocketNotifier {.importc: "QSocketNotifier_new".}
proc fcQSocketNotifier_new2(vtbl: pointer, socket: uint, param2: cint): ptr cQSocketNotifier {.importc: "QSocketNotifier_new2".}
proc fcQSocketNotifier_new3(vtbl: pointer, param1: cint, parent: pointer): ptr cQSocketNotifier {.importc: "QSocketNotifier_new3".}
proc fcQSocketNotifier_new4(vtbl: pointer, socket: uint, param2: cint, parent: pointer): ptr cQSocketNotifier {.importc: "QSocketNotifier_new4".}
proc fcQSocketNotifier_staticMetaObject(): pointer {.importc: "QSocketNotifier_staticMetaObject".}
proc fcQSocketNotifier_delete(self: pointer) {.importc: "QSocketNotifier_delete".}
proc fcQSocketDescriptor_ToInt(self: pointer, ): cint {.importc: "QSocketDescriptor_ToInt".}
proc fcQSocketDescriptor_isValid(self: pointer, ): bool {.importc: "QSocketDescriptor_isValid".}
proc fcQSocketDescriptor_new(): ptr cQSocketDescriptor {.importc: "QSocketDescriptor_new".}
proc fcQSocketDescriptor_new2(param1: pointer): ptr cQSocketDescriptor {.importc: "QSocketDescriptor_new2".}
proc fcQSocketDescriptor_new3(descriptor: cint): ptr cQSocketDescriptor {.importc: "QSocketDescriptor_new3".}
proc fcQSocketDescriptor_delete(self: pointer) {.importc: "QSocketDescriptor_delete".}

proc metaObject*(self: gen_qsocketnotifier_types.QSocketNotifier, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSocketNotifier_metaObject(self.h))

proc metacast*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cstring): pointer =
  fcQSocketNotifier_metacast(self.h, param1)

proc metacall*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQSocketNotifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsocketnotifier_types.QSocketNotifier, s: cstring): string =
  let v_ms = fcQSocketNotifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSocket*(self: gen_qsocketnotifier_types.QSocketNotifier, socket: uint): void =
  fcQSocketNotifier_setSocket(self.h, socket)

proc socket*(self: gen_qsocketnotifier_types.QSocketNotifier, ): uint =
  fcQSocketNotifier_socket(self.h)

proc typeX*(self: gen_qsocketnotifier_types.QSocketNotifier, ): cint =
  cint(fcQSocketNotifier_typeX(self.h))

proc isValid*(self: gen_qsocketnotifier_types.QSocketNotifier, ): bool =
  fcQSocketNotifier_isValid(self.h)

proc isEnabled*(self: gen_qsocketnotifier_types.QSocketNotifier, ): bool =
  fcQSocketNotifier_isEnabled(self.h)

proc setEnabled*(self: gen_qsocketnotifier_types.QSocketNotifier, enabled: bool): void =
  fcQSocketNotifier_setEnabled(self.h, enabled)

proc tr*(_: type gen_qsocketnotifier_types.QSocketNotifier, s: cstring, c: cstring): string =
  let v_ms = fcQSocketNotifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsocketnotifier_types.QSocketNotifier, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSocketNotifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSocketNotifiermetaObjectProc* = proc(self: QSocketNotifier): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSocketNotifiermetacastProc* = proc(self: QSocketNotifier, param1: cstring): pointer {.raises: [], gcsafe.}
type QSocketNotifiermetacallProc* = proc(self: QSocketNotifier, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSocketNotifiereventProc* = proc(self: QSocketNotifier, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSocketNotifiereventFilterProc* = proc(self: QSocketNotifier, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSocketNotifiertimerEventProc* = proc(self: QSocketNotifier, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSocketNotifierchildEventProc* = proc(self: QSocketNotifier, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSocketNotifiercustomEventProc* = proc(self: QSocketNotifier, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSocketNotifierconnectNotifyProc* = proc(self: QSocketNotifier, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSocketNotifierdisconnectNotifyProc* = proc(self: QSocketNotifier, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSocketNotifierVTable* = object
  vtbl: cQSocketNotifierVTable
  metaObject*: QSocketNotifiermetaObjectProc
  metacast*: QSocketNotifiermetacastProc
  metacall*: QSocketNotifiermetacallProc
  event*: QSocketNotifiereventProc
  eventFilter*: QSocketNotifiereventFilterProc
  timerEvent*: QSocketNotifiertimerEventProc
  childEvent*: QSocketNotifierchildEventProc
  customEvent*: QSocketNotifiercustomEventProc
  connectNotify*: QSocketNotifierconnectNotifyProc
  disconnectNotify*: QSocketNotifierdisconnectNotifyProc
proc QSocketNotifiermetaObject*(self: gen_qsocketnotifier_types.QSocketNotifier, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSocketNotifier_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSocketNotifier_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSocketNotifiermetacast*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cstring): pointer =
  fcQSocketNotifier_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSocketNotifier_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSocketNotifiermetacall*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQSocketNotifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSocketNotifier_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSocketNotifierevent*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSocketNotifier_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQSocketNotifier_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSocketNotifiereventFilter*(self: gen_qsocketnotifier_types.QSocketNotifier, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSocketNotifier_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSocketNotifier_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSocketNotifiertimerEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSocketNotifier_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSocketNotifier_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSocketNotifierchildEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSocketNotifier_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSocketNotifier_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSocketNotifiercustomEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, event: gen_qcoreevent_types.QEvent): void =
  fcQSocketNotifier_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSocketNotifier_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSocketNotifierconnectNotify*(self: gen_qsocketnotifier_types.QSocketNotifier, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSocketNotifier_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSocketNotifier_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSocketNotifierdisconnectNotify*(self: gen_qsocketnotifier_types.QSocketNotifier, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSocketNotifier_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSocketNotifier_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSocketNotifierVTable](vtbl)
  let self = QSocketNotifier(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsocketnotifier_types.QSocketNotifier, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSocketNotifier_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsocketnotifier_types.QSocketNotifier, ): cint =
  fcQSocketNotifier_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsocketnotifier_types.QSocketNotifier, signal: cstring): cint =
  fcQSocketNotifier_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsocketnotifier_types.QSocketNotifier, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSocketNotifier_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier,
    param1: cint,
    vtbl: ref QSocketNotifierVTable = nil): gen_qsocketnotifier_types.QSocketNotifier =
  let vtbl = if vtbl == nil: new QSocketNotifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSocketNotifierVTable, _: ptr cQSocketNotifier) {.cdecl.} =
    let vtbl = cast[ref QSocketNotifierVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSocketNotifier_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSocketNotifier_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSocketNotifier_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSocketNotifier_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSocketNotifier_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSocketNotifier_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSocketNotifier_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSocketNotifier_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSocketNotifier_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSocketNotifier_disconnectNotify
  gen_qsocketnotifier_types.QSocketNotifier(h: fcQSocketNotifier_new(addr(vtbl[]), cint(param1)))

proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier,
    socket: uint, param2: cint,
    vtbl: ref QSocketNotifierVTable = nil): gen_qsocketnotifier_types.QSocketNotifier =
  let vtbl = if vtbl == nil: new QSocketNotifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSocketNotifierVTable, _: ptr cQSocketNotifier) {.cdecl.} =
    let vtbl = cast[ref QSocketNotifierVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSocketNotifier_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSocketNotifier_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSocketNotifier_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSocketNotifier_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSocketNotifier_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSocketNotifier_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSocketNotifier_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSocketNotifier_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSocketNotifier_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSocketNotifier_disconnectNotify
  gen_qsocketnotifier_types.QSocketNotifier(h: fcQSocketNotifier_new2(addr(vtbl[]), socket, cint(param2)))

proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier,
    param1: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QSocketNotifierVTable = nil): gen_qsocketnotifier_types.QSocketNotifier =
  let vtbl = if vtbl == nil: new QSocketNotifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSocketNotifierVTable, _: ptr cQSocketNotifier) {.cdecl.} =
    let vtbl = cast[ref QSocketNotifierVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSocketNotifier_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSocketNotifier_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSocketNotifier_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSocketNotifier_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSocketNotifier_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSocketNotifier_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSocketNotifier_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSocketNotifier_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSocketNotifier_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSocketNotifier_disconnectNotify
  gen_qsocketnotifier_types.QSocketNotifier(h: fcQSocketNotifier_new3(addr(vtbl[]), cint(param1), parent.h))

proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier,
    socket: uint, param2: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QSocketNotifierVTable = nil): gen_qsocketnotifier_types.QSocketNotifier =
  let vtbl = if vtbl == nil: new QSocketNotifierVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSocketNotifierVTable, _: ptr cQSocketNotifier) {.cdecl.} =
    let vtbl = cast[ref QSocketNotifierVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSocketNotifier_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSocketNotifier_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSocketNotifier_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSocketNotifier_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSocketNotifier_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSocketNotifier_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSocketNotifier_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSocketNotifier_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSocketNotifier_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSocketNotifier_disconnectNotify
  gen_qsocketnotifier_types.QSocketNotifier(h: fcQSocketNotifier_new4(addr(vtbl[]), socket, cint(param2), parent.h))

proc staticMetaObject*(_: type gen_qsocketnotifier_types.QSocketNotifier): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSocketNotifier_staticMetaObject())
proc delete*(self: gen_qsocketnotifier_types.QSocketNotifier) =
  fcQSocketNotifier_delete(self.h)
proc ToInt*(self: gen_qsocketnotifier_types.QSocketDescriptor, ): cint =
  fcQSocketDescriptor_ToInt(self.h)

proc isValid*(self: gen_qsocketnotifier_types.QSocketDescriptor, ): bool =
  fcQSocketDescriptor_isValid(self.h)

proc create*(T: type gen_qsocketnotifier_types.QSocketDescriptor): gen_qsocketnotifier_types.QSocketDescriptor =
  gen_qsocketnotifier_types.QSocketDescriptor(h: fcQSocketDescriptor_new())

proc create*(T: type gen_qsocketnotifier_types.QSocketDescriptor,
    param1: gen_qsocketnotifier_types.QSocketDescriptor): gen_qsocketnotifier_types.QSocketDescriptor =
  gen_qsocketnotifier_types.QSocketDescriptor(h: fcQSocketDescriptor_new2(param1.h))

proc create*(T: type gen_qsocketnotifier_types.QSocketDescriptor,
    descriptor: cint): gen_qsocketnotifier_types.QSocketDescriptor =
  gen_qsocketnotifier_types.QSocketDescriptor(h: fcQSocketDescriptor_new3(descriptor))

proc delete*(self: gen_qsocketnotifier_types.QSocketDescriptor) =
  fcQSocketDescriptor_delete(self.h)
