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


{.compile("gen_qobjectcleanuphandler.cpp", QtCoreCFlags).}


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

proc fcQObjectCleanupHandler_metaObject(self: pointer): pointer {.importc: "QObjectCleanupHandler_metaObject".}
proc fcQObjectCleanupHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QObjectCleanupHandler_metacast".}
proc fcQObjectCleanupHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObjectCleanupHandler_metacall".}
proc fcQObjectCleanupHandler_tr(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr".}
proc fcQObjectCleanupHandler_add(self: pointer, objectVal: pointer): pointer {.importc: "QObjectCleanupHandler_add".}
proc fcQObjectCleanupHandler_remove(self: pointer, objectVal: pointer): void {.importc: "QObjectCleanupHandler_remove".}
proc fcQObjectCleanupHandler_isEmpty(self: pointer): bool {.importc: "QObjectCleanupHandler_isEmpty".}
proc fcQObjectCleanupHandler_clear(self: pointer): void {.importc: "QObjectCleanupHandler_clear".}
proc fcQObjectCleanupHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr2".}
proc fcQObjectCleanupHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_tr3".}
proc fcQObjectCleanupHandler_vtbl(self: pointer): pointer {.importc: "QObjectCleanupHandler_vtbl".}
proc fcQObjectCleanupHandler_vdata(self: pointer): pointer {.importc: "QObjectCleanupHandler_vdata".}

type cQObjectCleanupHandlerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQObjectCleanupHandler_virtualbase_metaObject(self: pointer): pointer {.importc: "QObjectCleanupHandler_virtualbase_metaObject".}
proc fcQObjectCleanupHandler_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QObjectCleanupHandler_virtualbase_metacast".}
proc fcQObjectCleanupHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObjectCleanupHandler_virtualbase_metacall".}
proc fcQObjectCleanupHandler_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QObjectCleanupHandler_virtualbase_event".}
proc fcQObjectCleanupHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QObjectCleanupHandler_virtualbase_eventFilter".}
proc fcQObjectCleanupHandler_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_timerEvent".}
proc fcQObjectCleanupHandler_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_childEvent".}
proc fcQObjectCleanupHandler_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_customEvent".}
proc fcQObjectCleanupHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_connectNotify".}
proc fcQObjectCleanupHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QObjectCleanupHandler_virtualbase_disconnectNotify".}
proc fcQObjectCleanupHandler_protectedbase_sender(self: pointer): pointer {.importc: "QObjectCleanupHandler_protectedbase_sender".}
proc fcQObjectCleanupHandler_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QObjectCleanupHandler_protectedbase_senderSignalIndex".}
proc fcQObjectCleanupHandler_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QObjectCleanupHandler_protectedbase_receivers".}
proc fcQObjectCleanupHandler_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QObjectCleanupHandler_protectedbase_isSignalConnected".}
proc fcQObjectCleanupHandler_new(vtbl, vdata: pointer): ptr cQObjectCleanupHandler {.importc: "QObjectCleanupHandler_new".}
proc fcQObjectCleanupHandler_staticMetaObject(): pointer {.importc: "QObjectCleanupHandler_staticMetaObject".}

proc metaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_metaObject(self.h), owned: false)

proc metacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cstring): pointer =
  fcQObjectCleanupHandler_metacast(self.h, param1)

proc metacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQObjectCleanupHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring): string =
  let v_ms = fcQObjectCleanupHandler_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc add*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, objectVal: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObjectCleanupHandler_add(self.h, objectVal.h), owned: false)

proc remove*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, objectVal: gen_qobject_types.QObject): void =
  fcQObjectCleanupHandler_remove(self.h, objectVal.h)

proc isEmpty*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler): bool =
  fcQObjectCleanupHandler_isEmpty(self.h)

proc clear*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler): void =
  fcQObjectCleanupHandler_clear(self.h)

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring): string =
  let v_ms = fcQObjectCleanupHandler_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObjectCleanupHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QObjectCleanupHandlerVTable* {.inheritable, pure.} = object
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

proc QObjectCleanupHandlermetaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_virtualbase_metaObject(self.h), owned: false)

proc QObjectCleanupHandlermetacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cstring): pointer =
  fcQObjectCleanupHandler_virtualbase_metacast(self.h, param1)

proc QObjectCleanupHandlermetacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQObjectCleanupHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QObjectCleanupHandlerevent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): bool =
  fcQObjectCleanupHandler_virtualbase_event(self.h, event.h)

proc QObjectCleanupHandlereventFilter*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQObjectCleanupHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QObjectCleanupHandlertimerEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQObjectCleanupHandler_virtualbase_timerEvent(self.h, event.h)

proc QObjectCleanupHandlerchildEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QChildEvent): void =
  fcQObjectCleanupHandler_virtualbase_childEvent(self.h, event.h)

proc QObjectCleanupHandlercustomEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): void =
  fcQObjectCleanupHandler_virtualbase_customEvent(self.h, event.h)

proc QObjectCleanupHandlerconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObjectCleanupHandler_virtualbase_connectNotify(self.h, signal.h)

proc QObjectCleanupHandlerdisconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQObjectCleanupHandler_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQObjectCleanupHandler_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQObjectCleanupHandler_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQObjectCleanupHandler_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQObjectCleanupHandler_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQObjectCleanupHandler_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQObjectCleanupHandler_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQObjectCleanupHandler_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQObjectCleanupHandler_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQObjectCleanupHandler_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQObjectCleanupHandler_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
  let self = QObjectCleanupHandler(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQObjectCleanupHandler* {.inheritable.} = ref object of QObjectCleanupHandler
  vtbl*: cQObjectCleanupHandlerVTable

method metaObject*(self: VirtualQObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject {.base.} =
  QObjectCleanupHandlermetaObject(self[])
method metacast*(self: VirtualQObjectCleanupHandler, param1: cstring): pointer {.base.} =
  QObjectCleanupHandlermetacast(self[], param1)
method metacall*(self: VirtualQObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QObjectCleanupHandlermetacall(self[], param1, param2, param3)
method event*(self: VirtualQObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QObjectCleanupHandlerevent(self[], event)
method eventFilter*(self: VirtualQObjectCleanupHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QObjectCleanupHandlereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQObjectCleanupHandler, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QObjectCleanupHandlertimerEvent(self[], event)
method childEvent*(self: VirtualQObjectCleanupHandler, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QObjectCleanupHandlerchildEvent(self[], event)
method customEvent*(self: VirtualQObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QObjectCleanupHandlercustomEvent(self[], event)
method connectNotify*(self: VirtualQObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QObjectCleanupHandlerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QObjectCleanupHandlerdisconnectNotify(self[], signal)

proc fcQObjectCleanupHandler_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQObjectCleanupHandler_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQObjectCleanupHandler_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQObjectCleanupHandler_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQObjectCleanupHandler_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQObjectCleanupHandler_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQObjectCleanupHandler_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQObjectCleanupHandler_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQObjectCleanupHandler_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQObjectCleanupHandler_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQObjectCleanupHandler](fcQObjectCleanupHandler_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObjectCleanupHandler_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler): cint =
  fcQObjectCleanupHandler_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: cstring): cint =
  fcQObjectCleanupHandler_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQObjectCleanupHandler_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler,
    vtbl: ref QObjectCleanupHandlerVTable = nil): gen_qobjectcleanuphandler_types.QObjectCleanupHandler =
  let vtbl = if vtbl == nil: new QObjectCleanupHandlerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QObjectCleanupHandlerVTable](fcQObjectCleanupHandler_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQObjectCleanupHandler_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQObjectCleanupHandler_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQObjectCleanupHandler_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQObjectCleanupHandler_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQObjectCleanupHandler_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQObjectCleanupHandler_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQObjectCleanupHandler_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQObjectCleanupHandler_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQObjectCleanupHandler_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQObjectCleanupHandler_vtable_callback_disconnectNotify
  gen_qobjectcleanuphandler_types.QObjectCleanupHandler(h: fcQObjectCleanupHandler_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQObjectCleanupHandler_mvtbl = cQObjectCleanupHandlerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQObjectCleanupHandler()[])](self.fcQObjectCleanupHandler_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQObjectCleanupHandler_method_callback_metaObject,
  metacast: fcQObjectCleanupHandler_method_callback_metacast,
  metacall: fcQObjectCleanupHandler_method_callback_metacall,
  event: fcQObjectCleanupHandler_method_callback_event,
  eventFilter: fcQObjectCleanupHandler_method_callback_eventFilter,
  timerEvent: fcQObjectCleanupHandler_method_callback_timerEvent,
  childEvent: fcQObjectCleanupHandler_method_callback_childEvent,
  customEvent: fcQObjectCleanupHandler_method_callback_customEvent,
  connectNotify: fcQObjectCleanupHandler_method_callback_connectNotify,
  disconnectNotify: fcQObjectCleanupHandler_method_callback_disconnectNotify,
)
proc create*(T: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler,
    inst: VirtualQObjectCleanupHandler) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQObjectCleanupHandler_new(addr(cQObjectCleanupHandler_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_staticMetaObject())
