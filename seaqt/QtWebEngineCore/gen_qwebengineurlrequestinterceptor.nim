import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebengineurlrequestinterceptor.cpp", cflags).}


import ./gen_qwebengineurlrequestinterceptor_types
export gen_qwebengineurlrequestinterceptor_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qwebengineurlrequestinfo_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebengineurlrequestinfo_types

type cQWebEngineUrlRequestInterceptor*{.exportc: "QWebEngineUrlRequestInterceptor", incompleteStruct.} = object

proc fcQWebEngineUrlRequestInterceptor_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInterceptor_metaObject".}
proc fcQWebEngineUrlRequestInterceptor_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlRequestInterceptor_metacast".}
proc fcQWebEngineUrlRequestInterceptor_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlRequestInterceptor_metacall".}
proc fcQWebEngineUrlRequestInterceptor_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr".}
proc fcQWebEngineUrlRequestInterceptor_interceptRequest(self: pointer, info: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_interceptRequest".}
proc fcQWebEngineUrlRequestInterceptor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr2".}
proc fcQWebEngineUrlRequestInterceptor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr3".}
type cQWebEngineUrlRequestInterceptorVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQWebEngineUrlRequestInterceptorVTable, self: ptr cQWebEngineUrlRequestInterceptor) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  interceptRequest*: proc(vtbl, self: pointer, info: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_metaObject".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_metacast".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_metacall".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_event".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_eventFilter".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_timerEvent".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_childEvent".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_customEvent".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_connectNotify".}
proc fcQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify".}
proc fcQWebEngineUrlRequestInterceptor_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInterceptor_protectedbase_sender".}
proc fcQWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex".}
proc fcQWebEngineUrlRequestInterceptor_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineUrlRequestInterceptor_protectedbase_receivers".}
proc fcQWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected".}
proc fcQWebEngineUrlRequestInterceptor_new(vtbl: pointer, ): ptr cQWebEngineUrlRequestInterceptor {.importc: "QWebEngineUrlRequestInterceptor_new".}
proc fcQWebEngineUrlRequestInterceptor_new2(vtbl: pointer, p: pointer): ptr cQWebEngineUrlRequestInterceptor {.importc: "QWebEngineUrlRequestInterceptor_new2".}
proc fcQWebEngineUrlRequestInterceptor_staticMetaObject(): pointer {.importc: "QWebEngineUrlRequestInterceptor_staticMetaObject".}

proc metaObject*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cstring): pointer =
  fcQWebEngineUrlRequestInterceptor_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineUrlRequestInterceptor_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc interceptRequest*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, info: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): void =
  fcQWebEngineUrlRequestInterceptor_interceptRequest(self.h, info.h)

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebEngineUrlRequestInterceptormetaObjectProc* = proc(self: QWebEngineUrlRequestInterceptor): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptormetacastProc* = proc(self: QWebEngineUrlRequestInterceptor, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptormetacallProc* = proc(self: QWebEngineUrlRequestInterceptor, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptorinterceptRequestProc* = proc(self: QWebEngineUrlRequestInterceptor, info: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): void {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptoreventProc* = proc(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptoreventFilterProc* = proc(self: QWebEngineUrlRequestInterceptor, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptortimerEventProc* = proc(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptorchildEventProc* = proc(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptorcustomEventProc* = proc(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptorconnectNotifyProc* = proc(self: QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptordisconnectNotifyProc* = proc(self: QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineUrlRequestInterceptorVTable* {.inheritable, pure.} = object
  vtbl: cQWebEngineUrlRequestInterceptorVTable
  metaObject*: QWebEngineUrlRequestInterceptormetaObjectProc
  metacast*: QWebEngineUrlRequestInterceptormetacastProc
  metacall*: QWebEngineUrlRequestInterceptormetacallProc
  interceptRequest*: QWebEngineUrlRequestInterceptorinterceptRequestProc
  event*: QWebEngineUrlRequestInterceptoreventProc
  eventFilter*: QWebEngineUrlRequestInterceptoreventFilterProc
  timerEvent*: QWebEngineUrlRequestInterceptortimerEventProc
  childEvent*: QWebEngineUrlRequestInterceptorchildEventProc
  customEvent*: QWebEngineUrlRequestInterceptorcustomEventProc
  connectNotify*: QWebEngineUrlRequestInterceptorconnectNotifyProc
  disconnectNotify*: QWebEngineUrlRequestInterceptordisconnectNotifyProc
proc QWebEngineUrlRequestInterceptormetaObject*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineUrlRequestInterceptormetacast*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cstring): pointer =
  fcQWebEngineUrlRequestInterceptor_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebEngineUrlRequestInterceptormetacall*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineUrlRequestInterceptor_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_interceptRequest(vtbl: pointer, self: pointer, info: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo(h: info, owned: false)
  vtbl[].interceptRequest(self, slotval1)

proc QWebEngineUrlRequestInterceptorevent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineUrlRequestInterceptor_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebEngineUrlRequestInterceptoreventFilter*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebEngineUrlRequestInterceptortimerEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebEngineUrlRequestInterceptorchildEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebEngineUrlRequestInterceptorcustomEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebEngineUrlRequestInterceptorconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebEngineUrlRequestInterceptordisconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebEngineUrlRequestInterceptor_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineUrlRequestInterceptorVTable](vtbl)
  let self = QWebEngineUrlRequestInterceptor(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebEngineUrlRequestInterceptor* {.inheritable.} = ref object of QWebEngineUrlRequestInterceptor
  vtbl*: cQWebEngineUrlRequestInterceptorVTable
method metaObject*(self: VirtualQWebEngineUrlRequestInterceptor, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebEngineUrlRequestInterceptormetaObject(self[])
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebEngineUrlRequestInterceptor, param1: cstring): pointer {.base.} =
  QWebEngineUrlRequestInterceptormetacast(self[], param1)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebEngineUrlRequestInterceptor, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebEngineUrlRequestInterceptormetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method interceptRequest*(self: VirtualQWebEngineUrlRequestInterceptor, info: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): void {.base.} =
  raiseAssert("missing implementation of QWebEngineUrlRequestInterceptor_virtualbase_interceptRequest")
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_interceptRequest(vtbl: pointer, inst: pointer, info: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo(h: info, owned: false)
  vtbl.interceptRequest(slotval1)

method event*(self: VirtualQWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineUrlRequestInterceptorevent(self[], event)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebEngineUrlRequestInterceptor, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineUrlRequestInterceptoreventFilter(self[], watched, event)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebEngineUrlRequestInterceptortimerEvent(self[], event)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebEngineUrlRequestInterceptorchildEvent(self[], event)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebEngineUrlRequestInterceptorcustomEvent(self[], event)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineUrlRequestInterceptorconnectNotify(self[], signal)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineUrlRequestInterceptordisconnectNotify(self[], signal)
proc miqt_exec_method_cQWebEngineUrlRequestInterceptor_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebEngineUrlRequestInterceptor](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineUrlRequestInterceptor_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): cint =
  fcQWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: cstring): cint =
  fcQWebEngineUrlRequestInterceptor_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor,
    vtbl: ref QWebEngineUrlRequestInterceptorVTable = nil): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =
  let vtbl = if vtbl == nil: new QWebEngineUrlRequestInterceptorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebEngineUrlRequestInterceptorVTable, _: ptr cQWebEngineUrlRequestInterceptor) {.cdecl.} =
    let vtbl = cast[ref QWebEngineUrlRequestInterceptorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metacall
  if not isNil(vtbl[].interceptRequest):
    vtbl[].vtbl.interceptRequest = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_interceptRequest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_disconnectNotify
  gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor(h: fcQWebEngineUrlRequestInterceptor_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor,
    p: gen_qobject_types.QObject,
    vtbl: ref QWebEngineUrlRequestInterceptorVTable = nil): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =
  let vtbl = if vtbl == nil: new QWebEngineUrlRequestInterceptorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebEngineUrlRequestInterceptorVTable, _: ptr cQWebEngineUrlRequestInterceptor) {.cdecl.} =
    let vtbl = cast[ref QWebEngineUrlRequestInterceptorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_metacall
  if not isNil(vtbl[].interceptRequest):
    vtbl[].vtbl.interceptRequest = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_interceptRequest
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebEngineUrlRequestInterceptor_disconnectNotify
  gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor(h: fcQWebEngineUrlRequestInterceptor_new2(addr(vtbl[].vtbl), p.h), owned: true)

proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor,
    vtbl: VirtualQWebEngineUrlRequestInterceptor) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebEngineUrlRequestInterceptorVTable, _: ptr cQWebEngineUrlRequestInterceptor) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWebEngineUrlRequestInterceptor()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWebEngineUrlRequestInterceptor_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWebEngineUrlRequestInterceptor_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWebEngineUrlRequestInterceptor_metacall
  vtbl[].vtbl.interceptRequest = miqt_exec_method_cQWebEngineUrlRequestInterceptor_interceptRequest
  vtbl[].vtbl.event = miqt_exec_method_cQWebEngineUrlRequestInterceptor_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWebEngineUrlRequestInterceptor_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWebEngineUrlRequestInterceptor_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWebEngineUrlRequestInterceptor_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWebEngineUrlRequestInterceptor_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWebEngineUrlRequestInterceptor_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWebEngineUrlRequestInterceptor_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWebEngineUrlRequestInterceptor_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor,
    p: gen_qobject_types.QObject,
    vtbl: VirtualQWebEngineUrlRequestInterceptor) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebEngineUrlRequestInterceptorVTable, _: ptr cQWebEngineUrlRequestInterceptor) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWebEngineUrlRequestInterceptor()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWebEngineUrlRequestInterceptor, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWebEngineUrlRequestInterceptor_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWebEngineUrlRequestInterceptor_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWebEngineUrlRequestInterceptor_metacall
  vtbl[].vtbl.interceptRequest = miqt_exec_method_cQWebEngineUrlRequestInterceptor_interceptRequest
  vtbl[].vtbl.event = miqt_exec_method_cQWebEngineUrlRequestInterceptor_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWebEngineUrlRequestInterceptor_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWebEngineUrlRequestInterceptor_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWebEngineUrlRequestInterceptor_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWebEngineUrlRequestInterceptor_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWebEngineUrlRequestInterceptor_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWebEngineUrlRequestInterceptor_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWebEngineUrlRequestInterceptor_new2(addr(vtbl[].vtbl), p.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_staticMetaObject())
