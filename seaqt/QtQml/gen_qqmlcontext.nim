import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
{.compile("gen_qqmlcontext.cpp", cflags).}


import ./gen_qqmlcontext_types
export gen_qqmlcontext_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qjsvalue_types,
  ./gen_qqmlengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qjsvalue_types,
  gen_qqmlengine_types

type cQQmlContext*{.exportc: "QQmlContext", incompleteStruct.} = object
type cQQmlContextPropertyPair*{.exportc: "QQmlContext__PropertyPair", incompleteStruct.} = object

proc fcQQmlContext_metaObject(self: pointer, ): pointer {.importc: "QQmlContext_metaObject".}
proc fcQQmlContext_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlContext_metacast".}
proc fcQQmlContext_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlContext_metacall".}
proc fcQQmlContext_tr(s: cstring): struct_miqt_string {.importc: "QQmlContext_tr".}
proc fcQQmlContext_isValid(self: pointer, ): bool {.importc: "QQmlContext_isValid".}
proc fcQQmlContext_engine(self: pointer, ): pointer {.importc: "QQmlContext_engine".}
proc fcQQmlContext_parentContext(self: pointer, ): pointer {.importc: "QQmlContext_parentContext".}
proc fcQQmlContext_contextObject(self: pointer, ): pointer {.importc: "QQmlContext_contextObject".}
proc fcQQmlContext_setContextObject(self: pointer, contextObject: pointer): void {.importc: "QQmlContext_setContextObject".}
proc fcQQmlContext_contextProperty(self: pointer, param1: struct_miqt_string): pointer {.importc: "QQmlContext_contextProperty".}
proc fcQQmlContext_setContextProperty(self: pointer, param1: struct_miqt_string, param2: pointer): void {.importc: "QQmlContext_setContextProperty".}
proc fcQQmlContext_setContextProperty2(self: pointer, param1: struct_miqt_string, param2: pointer): void {.importc: "QQmlContext_setContextProperty2".}
proc fcQQmlContext_setContextProperties(self: pointer, properties: struct_miqt_array): void {.importc: "QQmlContext_setContextProperties".}
proc fcQQmlContext_nameForObject(self: pointer, param1: pointer): struct_miqt_string {.importc: "QQmlContext_nameForObject".}
proc fcQQmlContext_objectForName(self: pointer, param1: struct_miqt_string): pointer {.importc: "QQmlContext_objectForName".}
proc fcQQmlContext_resolvedUrl(self: pointer, param1: pointer): pointer {.importc: "QQmlContext_resolvedUrl".}
proc fcQQmlContext_setBaseUrl(self: pointer, baseUrl: pointer): void {.importc: "QQmlContext_setBaseUrl".}
proc fcQQmlContext_baseUrl(self: pointer, ): pointer {.importc: "QQmlContext_baseUrl".}
proc fcQQmlContext_importedScript(self: pointer, name: struct_miqt_string): pointer {.importc: "QQmlContext_importedScript".}
proc fcQQmlContext_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlContext_tr2".}
proc fcQQmlContext_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlContext_tr3".}
type cQQmlContextVTable = object
  destructor*: proc(vtbl: ptr cQQmlContextVTable, self: ptr cQQmlContext) {.cdecl, raises:[], gcsafe.}
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
proc fcQQmlContext_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlContext_virtualbase_metaObject".}
proc fcQQmlContext_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlContext_virtualbase_metacast".}
proc fcQQmlContext_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlContext_virtualbase_metacall".}
proc fcQQmlContext_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlContext_virtualbase_event".}
proc fcQQmlContext_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlContext_virtualbase_eventFilter".}
proc fcQQmlContext_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlContext_virtualbase_timerEvent".}
proc fcQQmlContext_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlContext_virtualbase_childEvent".}
proc fcQQmlContext_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlContext_virtualbase_customEvent".}
proc fcQQmlContext_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlContext_virtualbase_connectNotify".}
proc fcQQmlContext_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlContext_virtualbase_disconnectNotify".}
proc fcQQmlContext_new(vtbl: pointer, parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new".}
proc fcQQmlContext_new2(vtbl: pointer, parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new2".}
proc fcQQmlContext_new3(vtbl: pointer, parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new3".}
proc fcQQmlContext_new4(vtbl: pointer, parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new4".}
proc fcQQmlContext_staticMetaObject(): pointer {.importc: "QQmlContext_staticMetaObject".}
proc fcQQmlContext_delete(self: pointer) {.importc: "QQmlContext_delete".}
proc fcQQmlContextPropertyPair_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlContext__PropertyPair_operatorAssign".}
proc fcQQmlContextPropertyPair_new(param1: pointer): ptr cQQmlContextPropertyPair {.importc: "QQmlContext__PropertyPair_new".}
proc fcQQmlContextPropertyPair_delete(self: pointer) {.importc: "QQmlContext__PropertyPair_delete".}

proc metaObject*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_metaObject(self.h))

proc metacast*(self: gen_qqmlcontext_types.QQmlContext, param1: cstring): pointer =
  fcQQmlContext_metacast(self.h, param1)

proc metacall*(self: gen_qqmlcontext_types.QQmlContext, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlContext_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring): string =
  let v_ms = fcQQmlContext_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qqmlcontext_types.QQmlContext, ): bool =
  fcQQmlContext_isValid(self.h)

proc engine*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlContext_engine(self.h))

proc parentContext*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_parentContext(self.h))

proc contextObject*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlContext_contextObject(self.h))

proc setContextObject*(self: gen_qqmlcontext_types.QQmlContext, contextObject: gen_qobject_types.QObject): void =
  fcQQmlContext_setContextObject(self.h, contextObject.h)

proc contextProperty*(self: gen_qqmlcontext_types.QQmlContext, param1: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlContext_contextProperty(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1)))))

proc setContextProperty*(self: gen_qqmlcontext_types.QQmlContext, param1: string, param2: gen_qobject_types.QObject): void =
  fcQQmlContext_setContextProperty(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2.h)

proc setContextProperty*(self: gen_qqmlcontext_types.QQmlContext, param1: string, param2: gen_qvariant_types.QVariant): void =
  fcQQmlContext_setContextProperty2(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2.h)

proc setContextProperties*(self: gen_qqmlcontext_types.QQmlContext, properties: seq[gen_qqmlcontext_types.QQmlContextPropertyPair]): void =
  var properties_CArray = newSeq[pointer](len(properties))
  for i in 0..<len(properties):
    properties_CArray[i] = properties[i].h

  fcQQmlContext_setContextProperties(self.h, struct_miqt_array(len: csize_t(len(properties)), data: if len(properties) == 0: nil else: addr(properties_CArray[0])))

proc nameForObject*(self: gen_qqmlcontext_types.QQmlContext, param1: gen_qobject_types.QObject): string =
  let v_ms = fcQQmlContext_nameForObject(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc objectForName*(self: gen_qqmlcontext_types.QQmlContext, param1: string): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlContext_objectForName(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1)))))

proc resolvedUrl*(self: gen_qqmlcontext_types.QQmlContext, param1: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlContext_resolvedUrl(self.h, param1.h))

proc setBaseUrl*(self: gen_qqmlcontext_types.QQmlContext, baseUrl: gen_qurl_types.QUrl): void =
  fcQQmlContext_setBaseUrl(self.h, baseUrl.h)

proc baseUrl*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlContext_baseUrl(self.h))

proc importedScript*(self: gen_qqmlcontext_types.QQmlContext, name: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQQmlContext_importedScript(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc tr*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring, c: cstring): string =
  let v_ms = fcQQmlContext_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlcontext_types.QQmlContext, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlContext_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QQmlContextVTable* = object
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
proc QQmlContextmetaObject*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlContext_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlContextmetacast*(self: gen_qqmlcontext_types.QQmlContext, param1: cstring): pointer =
  fcQQmlContext_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlContext_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlContextmetacall*(self: gen_qqmlcontext_types.QQmlContext, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlContext_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlContext_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlContextevent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlContext_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlContext_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlContexteventFilter*(self: gen_qqmlcontext_types.QQmlContext, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlContext_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlContext_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlContexttimerEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlContext_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlContext_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlContextchildEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlContext_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlContext_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlContextcustomEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlContext_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlContext_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlContextconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlContext_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlContext_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlContextdisconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlContext_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlContext_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlContextVTable](vtbl)
  let self = QQmlContext(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlengine_types.QQmlEngine,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlContextVTable, _: ptr cQQmlContext) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlContext_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlContext_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlContext_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlContext_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlContext_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlContext_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlContext_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlContext_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlContext_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlContext_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlcontext_types.QQmlContext,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlContextVTable, _: ptr cQQmlContext) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlContext_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlContext_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlContext_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlContext_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlContext_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlContext_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlContext_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlContext_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlContext_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlContext_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new2(addr(vtbl[]), parent.h))

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlengine_types.QQmlEngine, objParent: gen_qobject_types.QObject,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlContextVTable, _: ptr cQQmlContext) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlContext_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlContext_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlContext_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlContext_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlContext_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlContext_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlContext_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlContext_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlContext_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlContext_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new3(addr(vtbl[]), parent.h, objParent.h))

proc create*(T: type gen_qqmlcontext_types.QQmlContext,
    parent: gen_qqmlcontext_types.QQmlContext, objParent: gen_qobject_types.QObject,
    vtbl: ref QQmlContextVTable = nil): gen_qqmlcontext_types.QQmlContext =
  let vtbl = if vtbl == nil: new QQmlContextVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlContextVTable, _: ptr cQQmlContext) {.cdecl.} =
    let vtbl = cast[ref QQmlContextVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlContext_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlContext_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlContext_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlContext_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlContext_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlContext_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlContext_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlContext_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlContext_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlContext_disconnectNotify
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlContext_new4(addr(vtbl[]), parent.h, objParent.h))

proc staticMetaObject*(_: type gen_qqmlcontext_types.QQmlContext): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_staticMetaObject())
proc delete*(self: gen_qqmlcontext_types.QQmlContext) =
  fcQQmlContext_delete(self.h)
proc operatorAssign*(self: gen_qqmlcontext_types.QQmlContextPropertyPair, param1: gen_qqmlcontext_types.QQmlContextPropertyPair): void =
  fcQQmlContextPropertyPair_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qqmlcontext_types.QQmlContextPropertyPair,
    param1: gen_qqmlcontext_types.QQmlContextPropertyPair): gen_qqmlcontext_types.QQmlContextPropertyPair =
  gen_qqmlcontext_types.QQmlContextPropertyPair(h: fcQQmlContextPropertyPair_new(param1.h))

proc delete*(self: gen_qqmlcontext_types.QQmlContextPropertyPair) =
  fcQQmlContextPropertyPair_delete(self.h)
