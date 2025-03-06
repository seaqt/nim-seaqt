import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qobjectcleanuphandler.cpp", cflags).}


import ./gen_qobjectcleanuphandler_types
export gen_qobjectcleanuphandler_types

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

type cQObjectCleanupHandler*{.exportc: "QObjectCleanupHandler", incompleteStruct.} = object

proc fcQObjectCleanupHandler_metaObject(self: pointer, ): pointer {.importc: "QObjectCleanupHandler_metaObject".}
proc fcQObjectCleanupHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QObjectCleanupHandler_metacast".}
proc fcQObjectCleanupHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObjectCleanupHandler_metacall".}
proc fcQObjectCleanupHandler_tr(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr".}
proc fcQObjectCleanupHandler_trUtf8(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf8".}
proc fcQObjectCleanupHandler_add(self: pointer, objectVal: pointer): pointer {.importc: "QObjectCleanupHandler_add".}
proc fcQObjectCleanupHandler_remove(self: pointer, objectVal: pointer): void {.importc: "QObjectCleanupHandler_remove".}
proc fcQObjectCleanupHandler_isEmpty(self: pointer, ): bool {.importc: "QObjectCleanupHandler_isEmpty".}
proc fcQObjectCleanupHandler_clear(self: pointer, ): void {.importc: "QObjectCleanupHandler_clear".}
proc fcQObjectCleanupHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr2".}
proc fcQObjectCleanupHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_tr3".}
proc fcQObjectCleanupHandler_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf82".}
proc fcQObjectCleanupHandler_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf83".}
type cQObjectCleanupHandlerVTable = object
  destructor*: proc(vtbl: ptr cQObjectCleanupHandlerVTable, self: ptr cQObjectCleanupHandler) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQObjectCleanupHandler_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QObjectCleanupHandler_virtualbase_metaObject".}
proc fcQObjectCleanupHandler_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QObjectCleanupHandler_virtualbase_metacast".}
proc fcQObjectCleanupHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObjectCleanupHandler_virtualbase_metacall".}
proc fcQObjectCleanupHandler_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QObjectCleanupHandler_virtualbase_event".}
proc fcQObjectCleanupHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObjectCleanupHandler_virtualbase_eventFilter".}
proc fcQObjectCleanupHandler_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_timerEvent".}
proc fcQObjectCleanupHandler_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_childEvent".}
proc fcQObjectCleanupHandler_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_customEvent".}
proc fcQObjectCleanupHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_connectNotify".}
proc fcQObjectCleanupHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_disconnectNotify".}
proc fcQObjectCleanupHandler_protectedbase_sender(self: pointer, ): pointer {.importc: "QObjectCleanupHandler_protectedbase_sender".}
proc fcQObjectCleanupHandler_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QObjectCleanupHandler_protectedbase_senderSignalIndex".}
proc fcQObjectCleanupHandler_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QObjectCleanupHandler_protectedbase_receivers".}
proc fcQObjectCleanupHandler_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QObjectCleanupHandler_protectedbase_isSignalConnected".}
proc fcQObjectCleanupHandler_new(vtbl: pointer, ): ptr cQObjectCleanupHandler {.importc: "QObjectCleanupHandler_new".}
proc fcQObjectCleanupHandler_staticMetaObject(): pointer {.importc: "QObjectCleanupHandler_staticMetaObject".}
proc fcQObjectCleanupHandler_delete(self: pointer) {.importc: "QObjectCleanupHandler_delete".}

proc metaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_metaObject(self.h))

proc metacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cstring): pointer =
  fcQObjectCleanupHandler_metacast(self.h, param1)

proc metacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQObjectCleanupHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring): string =
  let v_ms = fcQObjectCleanupHandler_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring): string =
  let v_ms = fcQObjectCleanupHandler_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc add*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, objectVal: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObjectCleanupHandler_add(self.h, objectVal.h))

proc remove*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, objectVal: gen_qobject_types.QObject): void =
  fcQObjectCleanupHandler_remove(self.h, objectVal.h)

proc isEmpty*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): bool =
  fcQObjectCleanupHandler_isEmpty(self.h)

proc clear*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): void =
  fcQObjectCleanupHandler_clear(self.h)

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring): string =
  let v_ms = fcQObjectCleanupHandler_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObjectCleanupHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring): string =
  let v_ms = fcQObjectCleanupHandler_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObjectCleanupHandler_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QObjectCleanupHandlermetaObjectProc* = proc(self: QObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QObjectCleanupHandlermetacastProc* = proc(self: QObjectCleanupHandler, param1: cstring): pointer {.raises: [], gcsafe.}
type QObjectCleanupHandlermetacallProc* = proc(self: QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QObjectCleanupHandlereventProc* = proc(self: QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QObjectCleanupHandlereventFilterProc* = proc(self: QObjectCleanupHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QObjectCleanupHandlertimerEventProc* = proc(self: QObjectCleanupHandler, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QObjectCleanupHandlerchildEventProc* = proc(self: QObjectCleanupHandler, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QObjectCleanupHandlercustomEventProc* = proc(self: QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QObjectCleanupHandlerconnectNotifyProc* = proc(self: QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QObjectCleanupHandlerdisconnectNotifyProc* = proc(self: QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QObjectCleanupHandlerVTable* = object
  vtbl: cQObjectCleanupHandlerVTable
  metaObject*: QObjectCleanupHandlermetaObjectProc
  metacast*: QObjectCleanupHandlermetacastProc
  metacall*: QObjectCleanupHandlermetacallProc
  event*: QObjectCleanupHandlereventProc
  eventFilter*: QObjectCleanupHandlereventFilterProc
  timerEvent*: QObjectCleanupHandlertimerEventProc
  childEvent*: QObjectCleanupHandlerchildEventProc
  customEvent*: QObjectCleanupHandlercustomEventProc
  connectNotify*: QObjectCleanupHandlerconnectNotifyProc
  disconnectNotify*: QObjectCleanupHandlerdisconnectNotifyProc
proc QObjectCleanupHandlermetaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQObjectCleanupHandler_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QObjectCleanupHandlermetacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cstring): pointer =
  fcQObjectCleanupHandler_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQObjectCleanupHandler_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QObjectCleanupHandlermetacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQObjectCleanupHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQObjectCleanupHandler_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QObjectCleanupHandlerevent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): bool =
  fcQObjectCleanupHandler_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQObjectCleanupHandler_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QObjectCleanupHandlereventFilter*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObjectCleanupHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQObjectCleanupHandler_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QObjectCleanupHandlertimerEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQObjectCleanupHandler_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQObjectCleanupHandler_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QObjectCleanupHandlerchildEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QChildEvent): void =
  fcQObjectCleanupHandler_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQObjectCleanupHandler_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QObjectCleanupHandlercustomEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): void =
  fcQObjectCleanupHandler_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQObjectCleanupHandler_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QObjectCleanupHandlerconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObjectCleanupHandler_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQObjectCleanupHandler_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QObjectCleanupHandlerdisconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObjectCleanupHandler_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQObjectCleanupHandler_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](vtbl)
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObjectCleanupHandler_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): cint =
  fcQObjectCleanupHandler_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: cstring): cint =
  fcQObjectCleanupHandler_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQObjectCleanupHandler_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler,
    vtbl: ref QObjectCleanupHandlerVTable = nil): gen_qobjectcleanuphandler_types.QObjectCleanupHandler =
  let vtbl = if vtbl == nil: new QObjectCleanupHandlerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQObjectCleanupHandlerVTable, _: ptr cQObjectCleanupHandler) {.cdecl.} =
    let vtbl = cast[ref QObjectCleanupHandlerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQObjectCleanupHandler_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQObjectCleanupHandler_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQObjectCleanupHandler_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQObjectCleanupHandler_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQObjectCleanupHandler_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQObjectCleanupHandler_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQObjectCleanupHandler_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQObjectCleanupHandler_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQObjectCleanupHandler_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQObjectCleanupHandler_disconnectNotify
  gen_qobjectcleanuphandler_types.QObjectCleanupHandler(h: fcQObjectCleanupHandler_new(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_staticMetaObject())
proc delete*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler) =
  fcQObjectCleanupHandler_delete(self.h)
