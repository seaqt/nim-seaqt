import ./qtwebenginecore_pkg

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


{.compile("gen_qwebengineurlschemehandler.cpp", QtWebEngineCoreCFlags).}


import ./gen_qwebengineurlschemehandler_types
export gen_qwebengineurlschemehandler_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qwebengineurlrequestjob_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebengineurlrequestjob_types

type cQWebEngineUrlSchemeHandler*{.exportc: "QWebEngineUrlSchemeHandler", incompleteStruct.} = object

proc fcQWebEngineUrlSchemeHandler_metaObject(self: pointer): pointer {.importc: "QWebEngineUrlSchemeHandler_metaObject".}
proc fcQWebEngineUrlSchemeHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlSchemeHandler_metacast".}
proc fcQWebEngineUrlSchemeHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlSchemeHandler_metacall".}
proc fcQWebEngineUrlSchemeHandler_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr".}
proc fcQWebEngineUrlSchemeHandler_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf8".}
proc fcQWebEngineUrlSchemeHandler_requestStarted(self: pointer, param1: pointer): void {.importc: "QWebEngineUrlSchemeHandler_requestStarted".}
proc fcQWebEngineUrlSchemeHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr2".}
proc fcQWebEngineUrlSchemeHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr3".}
proc fcQWebEngineUrlSchemeHandler_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf82".}
proc fcQWebEngineUrlSchemeHandler_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf83".}
proc fcQWebEngineUrlSchemeHandler_vtbl(self: pointer): pointer {.importc: "QWebEngineUrlSchemeHandler_vtbl".}
proc fcQWebEngineUrlSchemeHandler_vdata(self: pointer): pointer {.importc: "QWebEngineUrlSchemeHandler_vdata".}
type cQWebEngineUrlSchemeHandlerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  requestStarted*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebEngineUrlSchemeHandler_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebEngineUrlSchemeHandler_virtualbase_metaObject".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlSchemeHandler_virtualbase_metacast".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlSchemeHandler_virtualbase_metacall".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebEngineUrlSchemeHandler_virtualbase_event".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebEngineUrlSchemeHandler_virtualbase_eventFilter".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebEngineUrlSchemeHandler_virtualbase_timerEvent".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebEngineUrlSchemeHandler_virtualbase_childEvent".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebEngineUrlSchemeHandler_virtualbase_customEvent".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineUrlSchemeHandler_virtualbase_connectNotify".}
proc fcQWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify".}
proc fcQWebEngineUrlSchemeHandler_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineUrlSchemeHandler_protectedbase_sender".}
proc fcQWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex".}
proc fcQWebEngineUrlSchemeHandler_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineUrlSchemeHandler_protectedbase_receivers".}
proc fcQWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected".}
proc fcQWebEngineUrlSchemeHandler_new(vtbl, vdata: pointer): ptr cQWebEngineUrlSchemeHandler {.importc: "QWebEngineUrlSchemeHandler_new".}
proc fcQWebEngineUrlSchemeHandler_new2(vtbl, vdata: pointer, parent: pointer): ptr cQWebEngineUrlSchemeHandler {.importc: "QWebEngineUrlSchemeHandler_new2".}
proc fcQWebEngineUrlSchemeHandler_staticMetaObject(): pointer {.importc: "QWebEngineUrlSchemeHandler_staticMetaObject".}

proc metaObject*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlSchemeHandler_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cstring): pointer =
  fcQWebEngineUrlSchemeHandler_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineUrlSchemeHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc requestStarted*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): void =
  fcQWebEngineUrlSchemeHandler_requestStarted(self.h, param1.h)

proc tr*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWebEngineUrlSchemeHandlermetaObjectProc* = proc(self: QWebEngineUrlSchemeHandler): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlermetacastProc* = proc(self: QWebEngineUrlSchemeHandler, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlermetacallProc* = proc(self: QWebEngineUrlSchemeHandler, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlerrequestStartedProc* = proc(self: QWebEngineUrlSchemeHandler, param1: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): void {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlereventProc* = proc(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlereventFilterProc* = proc(self: QWebEngineUrlSchemeHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlertimerEventProc* = proc(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlerchildEventProc* = proc(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlercustomEventProc* = proc(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlerconnectNotifyProc* = proc(self: QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlerdisconnectNotifyProc* = proc(self: QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineUrlSchemeHandlerVTable* {.inheritable, pure.} = object
  vtbl: cQWebEngineUrlSchemeHandlerVTable
  metaObject*: QWebEngineUrlSchemeHandlermetaObjectProc
  metacast*: QWebEngineUrlSchemeHandlermetacastProc
  metacall*: QWebEngineUrlSchemeHandlermetacallProc
  requestStarted*: QWebEngineUrlSchemeHandlerrequestStartedProc
  event*: QWebEngineUrlSchemeHandlereventProc
  eventFilter*: QWebEngineUrlSchemeHandlereventFilterProc
  timerEvent*: QWebEngineUrlSchemeHandlertimerEventProc
  childEvent*: QWebEngineUrlSchemeHandlerchildEventProc
  customEvent*: QWebEngineUrlSchemeHandlercustomEventProc
  connectNotify*: QWebEngineUrlSchemeHandlerconnectNotifyProc
  disconnectNotify*: QWebEngineUrlSchemeHandlerdisconnectNotifyProc
proc QWebEngineUrlSchemeHandlermetaObject*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlSchemeHandler_virtualbase_metaObject(self.h), owned: false)

proc cQWebEngineUrlSchemeHandler_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineUrlSchemeHandlermetacast*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cstring): pointer =
  fcQWebEngineUrlSchemeHandler_virtualbase_metacast(self.h, param1)

proc cQWebEngineUrlSchemeHandler_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebEngineUrlSchemeHandlermetacall*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineUrlSchemeHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebEngineUrlSchemeHandler_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQWebEngineUrlSchemeHandler_vtable_callback_requestStarted(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob(h: param1, owned: false)
  vtbl[].requestStarted(self, slotval1)

proc QWebEngineUrlSchemeHandlerevent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineUrlSchemeHandler_virtualbase_event(self.h, event.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebEngineUrlSchemeHandlereventFilter*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineUrlSchemeHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebEngineUrlSchemeHandlertimerEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebEngineUrlSchemeHandler_virtualbase_timerEvent(self.h, event.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebEngineUrlSchemeHandlerchildEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebEngineUrlSchemeHandler_virtualbase_childEvent(self.h, event.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebEngineUrlSchemeHandlercustomEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineUrlSchemeHandler_virtualbase_customEvent(self.h, event.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebEngineUrlSchemeHandlerconnectNotify*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineUrlSchemeHandler_virtualbase_connectNotify(self.h, signal.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebEngineUrlSchemeHandlerdisconnectNotify*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebEngineUrlSchemeHandler_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
  let self = QWebEngineUrlSchemeHandler(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebEngineUrlSchemeHandler* {.inheritable.} = ref object of QWebEngineUrlSchemeHandler
  vtbl*: cQWebEngineUrlSchemeHandlerVTable
method metaObject*(self: VirtualQWebEngineUrlSchemeHandler): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebEngineUrlSchemeHandlermetaObject(self[])
proc cQWebEngineUrlSchemeHandler_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebEngineUrlSchemeHandler, param1: cstring): pointer {.base.} =
  QWebEngineUrlSchemeHandlermetacast(self[], param1)
proc cQWebEngineUrlSchemeHandler_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebEngineUrlSchemeHandler, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebEngineUrlSchemeHandlermetacall(self[], param1, param2, param3)
proc cQWebEngineUrlSchemeHandler_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method requestStarted*(self: VirtualQWebEngineUrlSchemeHandler, param1: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): void {.base.} =
  raiseAssert("missing implementation of QWebEngineUrlSchemeHandler_virtualbase_requestStarted")
proc cQWebEngineUrlSchemeHandler_method_callback_requestStarted(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob(h: param1, owned: false)
  inst.requestStarted(slotval1)

method event*(self: VirtualQWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineUrlSchemeHandlerevent(self[], event)
proc cQWebEngineUrlSchemeHandler_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebEngineUrlSchemeHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineUrlSchemeHandlereventFilter(self[], watched, event)
proc cQWebEngineUrlSchemeHandler_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebEngineUrlSchemeHandlertimerEvent(self[], event)
proc cQWebEngineUrlSchemeHandler_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebEngineUrlSchemeHandlerchildEvent(self[], event)
proc cQWebEngineUrlSchemeHandler_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebEngineUrlSchemeHandlercustomEvent(self[], event)
proc cQWebEngineUrlSchemeHandler_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineUrlSchemeHandlerconnectNotify(self[], signal)
proc cQWebEngineUrlSchemeHandler_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineUrlSchemeHandlerdisconnectNotify(self[], signal)
proc cQWebEngineUrlSchemeHandler_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineUrlSchemeHandler](fcQWebEngineUrlSchemeHandler_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineUrlSchemeHandler_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): cint =
  fcQWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, signal: cstring): cint =
  fcQWebEngineUrlSchemeHandler_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler,
    vtbl: ref QWebEngineUrlSchemeHandlerVTable = nil): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  let vtbl = if vtbl == nil: new QWebEngineUrlSchemeHandlerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineUrlSchemeHandler_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineUrlSchemeHandler_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineUrlSchemeHandler_vtable_callback_metacall
  if not isNil(vtbl[].requestStarted):
    vtbl[].vtbl.requestStarted = cQWebEngineUrlSchemeHandler_vtable_callback_requestStarted
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineUrlSchemeHandler_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineUrlSchemeHandler_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineUrlSchemeHandler_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineUrlSchemeHandler_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineUrlSchemeHandler_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineUrlSchemeHandler_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineUrlSchemeHandler_vtable_callback_disconnectNotify
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler(h: fcQWebEngineUrlSchemeHandler_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebEngineUrlSchemeHandlerVTable = nil): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  let vtbl = if vtbl == nil: new QWebEngineUrlSchemeHandlerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineUrlSchemeHandlerVTable](fcQWebEngineUrlSchemeHandler_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineUrlSchemeHandler_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineUrlSchemeHandler_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineUrlSchemeHandler_vtable_callback_metacall
  if not isNil(vtbl[].requestStarted):
    vtbl[].vtbl.requestStarted = cQWebEngineUrlSchemeHandler_vtable_callback_requestStarted
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineUrlSchemeHandler_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineUrlSchemeHandler_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineUrlSchemeHandler_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineUrlSchemeHandler_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineUrlSchemeHandler_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineUrlSchemeHandler_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineUrlSchemeHandler_vtable_callback_disconnectNotify
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler(h: fcQWebEngineUrlSchemeHandler_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQWebEngineUrlSchemeHandler_mvtbl = cQWebEngineUrlSchemeHandlerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebEngineUrlSchemeHandler()[])](self.fcQWebEngineUrlSchemeHandler_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebEngineUrlSchemeHandler_method_callback_metaObject,
  metacast: cQWebEngineUrlSchemeHandler_method_callback_metacast,
  metacall: cQWebEngineUrlSchemeHandler_method_callback_metacall,
  requestStarted: cQWebEngineUrlSchemeHandler_method_callback_requestStarted,
  event: cQWebEngineUrlSchemeHandler_method_callback_event,
  eventFilter: cQWebEngineUrlSchemeHandler_method_callback_eventFilter,
  timerEvent: cQWebEngineUrlSchemeHandler_method_callback_timerEvent,
  childEvent: cQWebEngineUrlSchemeHandler_method_callback_childEvent,
  customEvent: cQWebEngineUrlSchemeHandler_method_callback_customEvent,
  connectNotify: cQWebEngineUrlSchemeHandler_method_callback_connectNotify,
  disconnectNotify: cQWebEngineUrlSchemeHandler_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler,
    inst: VirtualQWebEngineUrlSchemeHandler) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineUrlSchemeHandler_new(addr(cQWebEngineUrlSchemeHandler_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWebEngineUrlSchemeHandler) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineUrlSchemeHandler_new2(addr(cQWebEngineUrlSchemeHandler_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlSchemeHandler_staticMetaObject())
