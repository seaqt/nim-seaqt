import ./qtqml_pkg

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


import ./gen_qqmlcontext_types
export gen_qqmlcontext_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qqmlengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qqmlengine_types

type cQQmlContext*{.exportc: "QQmlContext", incompleteStruct.} = object
type cQQmlContextPropertyPair*{.exportc: "QQmlContext__PropertyPair", incompleteStruct.} = object

proc fcQQmlContext_metaObject(self: pointer): pointer {.importc: "QQmlContext_metaObject".}
proc fcQQmlContext_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlContext_metacast".}
proc fcQQmlContext_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlContext_metacall".}
proc fcQQmlContext_tr(s: cstring): struct_miqt_string {.importc: "QQmlContext_tr".}
proc fcQQmlContext_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlContext_trUtf8".}
proc fcQQmlContext_isValid(self: pointer): bool {.importc: "QQmlContext_isValid".}
proc fcQQmlContext_engine(self: pointer): pointer {.importc: "QQmlContext_engine".}
proc fcQQmlContext_parentContext(self: pointer): pointer {.importc: "QQmlContext_parentContext".}
proc fcQQmlContext_contextObject(self: pointer): pointer {.importc: "QQmlContext_contextObject".}
proc fcQQmlContext_setContextObject(self: pointer, contextObject: pointer): void {.importc: "QQmlContext_setContextObject".}
proc fcQQmlContext_contextProperty(self: pointer, param1: struct_miqt_string): pointer {.importc: "QQmlContext_contextProperty".}
proc fcQQmlContext_setContextProperty(self: pointer, param1: struct_miqt_string, param2: pointer): void {.importc: "QQmlContext_setContextProperty".}
proc fcQQmlContext_setContextProperty2(self: pointer, param1: struct_miqt_string, param2: pointer): void {.importc: "QQmlContext_setContextProperty2".}
proc fcQQmlContext_setContextProperties(self: pointer, properties: struct_miqt_array): void {.importc: "QQmlContext_setContextProperties".}
proc fcQQmlContext_nameForObject(self: pointer, param1: pointer): struct_miqt_string {.importc: "QQmlContext_nameForObject".}
proc fcQQmlContext_resolvedUrl(self: pointer, param1: pointer): pointer {.importc: "QQmlContext_resolvedUrl".}
proc fcQQmlContext_setBaseUrl(self: pointer, baseUrl: pointer): void {.importc: "QQmlContext_setBaseUrl".}
proc fcQQmlContext_baseUrl(self: pointer): pointer {.importc: "QQmlContext_baseUrl".}
proc fcQQmlContext_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlContext_tr2".}
proc fcQQmlContext_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlContext_tr3".}
proc fcQQmlContext_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlContext_trUtf82".}
proc fcQQmlContext_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlContext_trUtf83".}
proc fcQQmlContext_vtbl(self: pointer): pointer {.importc: "QQmlContext_vtbl".}
proc fcQQmlContext_vdata(self: pointer): pointer {.importc: "QQmlContext_vdata".}

type cQQmlContextVTable {.pure.} = object
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
proc fcQQmlContext_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlContext_virtualbase_metaObject".}
proc fcQQmlContext_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlContext_virtualbase_metacast".}
proc fcQQmlContext_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlContext_virtualbase_metacall".}
proc fcQQmlContext_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlContext_virtualbase_event".}
proc fcQQmlContext_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlContext_virtualbase_eventFilter".}
proc fcQQmlContext_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlContext_virtualbase_timerEvent".}
proc fcQQmlContext_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlContext_virtualbase_childEvent".}
proc fcQQmlContext_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlContext_virtualbase_customEvent".}
proc fcQQmlContext_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlContext_virtualbase_connectNotify".}
proc fcQQmlContext_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlContext_virtualbase_disconnectNotify".}
proc fcQQmlContext_protectedbase_sender(self: pointer): pointer {.importc: "QQmlContext_protectedbase_sender".}
proc fcQQmlContext_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlContext_protectedbase_senderSignalIndex".}
proc fcQQmlContext_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlContext_protectedbase_receivers".}
proc fcQQmlContext_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlContext_protectedbase_isSignalConnected".}
proc fcQQmlContext_new(vtbl, vdata: pointer, parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new".}
proc fcQQmlContext_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new2".}
proc fcQQmlContext_new3(vtbl, vdata: pointer, parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new3".}
proc fcQQmlContext_new4(vtbl, vdata: pointer, parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new4".}
proc fcQQmlContext_staticMetaObject(): pointer {.importc: "QQmlContext_staticMetaObject".}
proc fcQQmlContextPropertyPair_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlContext__PropertyPair_operatorAssign".}
proc fcQQmlContextPropertyPair_new(param1: pointer): ptr cQQmlContextPropertyPair {.importc: "QQmlContext__PropertyPair_new".}

proc metaObject*(self: gen_qqmlcontext_types.QQmlContext): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlcontext_types.QQmlContext, param1: cstring): pointer =
  fcQQmlContext_metacast(self.h, param1)

proc metacall*(self: gen_qqmlcontext_types.QQmlContext, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlContext_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring): string =
  let v_ms = fcQQmlContext_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring): string =
  let v_ms = fcQQmlContext_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qqmlcontext_types.QQmlContext): bool =
  fcQQmlContext_isValid(self.h)

proc engine*(self: gen_qqmlcontext_types.QQmlContext): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlContext_engine(self.h), owned: false)

proc parentContext*(self: gen_qqmlcontext_types.QQmlContext): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_parentContext(self.h), owned: false)

proc contextObject*(self: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlContext_contextObject(self.h), owned: false)

proc setContextObject*(self: gen_qqmlcontext_types.QQmlContext, contextObject: gen_qobject_types.QObject): void =
  fcQQmlContext_setContextObject(self.h, contextObject.h)

proc contextProperty*(self: gen_qqmlcontext_types.QQmlContext, param1: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlContext_contextProperty(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1)))), owned: true)

proc setContextProperty*(self: gen_qqmlcontext_types.QQmlContext, param1: openArray[char], param2: gen_qobject_types.QObject): void =
  fcQQmlContext_setContextProperty(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2.h)

proc setContextProperty*(self: gen_qqmlcontext_types.QQmlContext, param1: openArray[char], param2: gen_qvariant_types.QVariant): void =
  fcQQmlContext_setContextProperty2(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), param2.h)

proc setContextProperties*(self: gen_qqmlcontext_types.QQmlContext, properties: openArray[gen_qqmlcontext_types.QQmlContextPropertyPair]): void =
  var properties_CArray = newSeq[pointer](len(properties))
  for i in 0..<len(properties):
    properties_CArray[i] = properties[i].h

  fcQQmlContext_setContextProperties(self.h, struct_miqt_array(len: csize_t(len(properties)), data: if len(properties) == 0: nil else: addr(properties_CArray[0])))

proc nameForObject*(self: gen_qqmlcontext_types.QQmlContext, param1: gen_qobject_types.QObject): string =
  let v_ms = fcQQmlContext_nameForObject(self.h, param1.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc resolvedUrl*(self: gen_qqmlcontext_types.QQmlContext, param1: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlContext_resolvedUrl(self.h, param1.h), owned: true)

proc setBaseUrl*(self: gen_qqmlcontext_types.QQmlContext, baseUrl: gen_qurl_types.QUrl): void =
  fcQQmlContext_setBaseUrl(self.h, baseUrl.h)

proc baseUrl*(self: gen_qqmlcontext_types.QQmlContext): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlContext_baseUrl(self.h), owned: true)

proc tr*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring, c: cstring): string =
  let v_ms = fcQQmlContext_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlContext_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring, c: cstring): string =
  let v_ms = fcQQmlContext_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlContext_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQmlContextmetaObjectProc* = proc(self: QQmlContext): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlContextmetacastProc* = proc(self: QQmlContext, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlContextmetacallProc* = proc(self: QQmlContext, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlContexteventProc* = proc(self: QQmlContext, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlContexteventFilterProc* = proc(self: QQmlContext, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlContexttimerEventProc* = proc(self: QQmlContext, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlContextchildEventProc* = proc(self: QQmlContext, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlContextcustomEventProc* = proc(self: QQmlContext, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlContextconnectNotifyProc* = proc(self: QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlContextdisconnectNotifyProc* = proc(self: QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQmlContextVTable* {.inheritable, pure.} = object
  vtbl: cQQmlContextVTable
  metaObject*: QQmlContextmetaObjectProc
  metacast*: QQmlContextmetacastProc
  metacall*: QQmlContextmetacallProc
  event*: QQmlContexteventProc
  eventFilter*: QQmlContexteventFilterProc
  timerEvent*: QQmlContexttimerEventProc
  childEvent*: QQmlContextchildEventProc
  customEvent*: QQmlContextcustomEventProc
  connectNotify*: QQmlContextconnectNotifyProc
  disconnectNotify*: QQmlContextdisconnectNotifyProc

proc QQmlContextmetaObject*(self: gen_qqmlcontext_types.QQmlContext): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_virtualbase_metaObject(self.h), owned: false)

proc QQmlContextmetacast*(self: gen_qqmlcontext_types.QQmlContext, param1: cstring): pointer =
  fcQQmlContext_virtualbase_metacast(self.h, param1)

proc QQmlContextmetacall*(self: gen_qqmlcontext_types.QQmlContext, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlContext_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQmlContextevent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlContext_virtualbase_event(self.h, event.h)

proc QQmlContexteventFilter*(self: gen_qqmlcontext_types.QQmlContext, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlContext_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQmlContexttimerEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlContext_virtualbase_timerEvent(self.h, event.h)

proc QQmlContextchildEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlContext_virtualbase_childEvent(self.h, event.h)

proc QQmlContextcustomEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlContext_virtualbase_customEvent(self.h, event.h)

proc QQmlContextconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlContext_virtualbase_connectNotify(self.h, signal.h)

proc QQmlContextdisconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlContext_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQmlContext_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlContext_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQmlContext_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlContext_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQmlContext_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQmlContext_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQmlContext_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQmlContext_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQmlContext_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQmlContext_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](fcQQmlContext_vdata(self))
  let self = QQmlContext(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlContext* {.inheritable.} = ref object of QQmlContext
  vtbl*: cQQmlContextVTable

method metaObject*(self: VirtualQQmlContext): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlContextmetaObject(self[])
method metacast*(self: VirtualQQmlContext, param1: cstring): pointer {.base.} =
  QQmlContextmetacast(self[], param1)
method metacall*(self: VirtualQQmlContext, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlContextmetacall(self[], param1, param2, param3)
method event*(self: VirtualQQmlContext, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlContextevent(self[], event)
method eventFilter*(self: VirtualQQmlContext, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlContexteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQmlContext, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlContexttimerEvent(self[], event)
method childEvent*(self: VirtualQQmlContext, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlContextchildEvent(self[], event)
method customEvent*(self: VirtualQQmlContext, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlContextcustomEvent(self[], event)
method connectNotify*(self: VirtualQQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlContextconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlContextdisconnectNotify(self[], signal)

proc fcQQmlContext_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlContext_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQmlContext_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlContext_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQmlContext_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQmlContext_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQmlContext_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQmlContext_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQmlContext_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQmlContext_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlContext](fcQQmlContext_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlContext_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlcontext_types.QQmlContext): cint =
  fcQQmlContext_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlcontext_types.QQmlContext, signal: cstring): cint =
  fcQQmlContext_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlContext_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlengine_types.QQmlEngine,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](fcQQmlContext_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlContext_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlContext_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlContext_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlContext_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlContext_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlContext_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlContext_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlContext_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlContext_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlContext_vtable_callback_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlcontext_types.QQmlContext,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](fcQQmlContext_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlContext_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlContext_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlContext_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlContext_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlContext_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlContext_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlContext_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlContext_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlContext_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlContext_vtable_callback_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlengine_types.QQmlEngine, objParent: gen_qobject_types.QObject,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](fcQQmlContext_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlContext_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlContext_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlContext_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlContext_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlContext_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlContext_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlContext_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlContext_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlContext_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlContext_vtable_callback_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, objParent.h), owned: true)

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlcontext_types.QQmlContext, objParent: gen_qobject_types.QObject,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](fcQQmlContext_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlContext_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlContext_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlContext_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlContext_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlContext_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlContext_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlContext_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlContext_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlContext_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlContext_vtable_callback_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, objParent.h), owned: true)

const cQQmlContext_mvtbl = cQQmlContextVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlContext()[])](self.fcQQmlContext_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQmlContext_method_callback_metaObject,
  metacast: fcQQmlContext_method_callback_metacast,
  metacall: fcQQmlContext_method_callback_metacall,
  event: fcQQmlContext_method_callback_event,
  eventFilter: fcQQmlContext_method_callback_eventFilter,
  timerEvent: fcQQmlContext_method_callback_timerEvent,
  childEvent: fcQQmlContext_method_callback_childEvent,
  customEvent: fcQQmlContext_method_callback_customEvent,
  connectNotify: fcQQmlContext_method_callback_connectNotify,
  disconnectNotify: fcQQmlContext_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlengine_types.QQmlEngine,
    inst: VirtualQQmlContext) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlContext_new(addr(cQQmlContext_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlcontext_types.QQmlContext,
    inst: VirtualQQmlContext) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlContext_new2(addr(cQQmlContext_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlengine_types.QQmlEngine, objParent: gen_qobject_types.QObject,
    inst: VirtualQQmlContext) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlContext_new3(addr(cQQmlContext_mvtbl), addr(inst[]), parent.h, objParent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlcontext_types.QQmlContext, objParent: gen_qobject_types.QObject,
    inst: VirtualQQmlContext) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlContext_new4(addr(cQQmlContext_mvtbl), addr(inst[]), parent.h, objParent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlcontext_types.QQmlContext): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_staticMetaObject())
proc operatorAssign*(self: gen_qqmlcontext_types.QQmlContextPropertyPair, param1: gen_qqmlcontext_types.QQmlContextPropertyPair): void =
  fcQQmlContextPropertyPair_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qqmlcontext_types.QQmlContextPropertyPair,
    param1: gen_qqmlcontext_types.QQmlContextPropertyPair): gen_qqmlcontext_types.QQmlContextPropertyPair =
  gen_qqmlcontext_types.QQmlContextPropertyPair(h: fcQQmlContextPropertyPair_new(param1.h), owned: true)

