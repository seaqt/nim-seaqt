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

proc fcQQmlContext_new(parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new".}
proc fcQQmlContext_new2(parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new2".}
proc fcQQmlContext_new3(parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new3".}
proc fcQQmlContext_new4(parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new4".}
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
proc fQQmlContext_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlContext_virtualbase_metaObject".}
proc fcQQmlContext_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_metaObject".}
proc fQQmlContext_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlContext_virtualbase_metacast".}
proc fcQQmlContext_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_metacast".}
proc fQQmlContext_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlContext_virtualbase_metacall".}
proc fcQQmlContext_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_metacall".}
proc fQQmlContext_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlContext_virtualbase_event".}
proc fcQQmlContext_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_event".}
proc fQQmlContext_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlContext_virtualbase_eventFilter".}
proc fcQQmlContext_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_eventFilter".}
proc fQQmlContext_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlContext_virtualbase_timerEvent".}
proc fcQQmlContext_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_timerEvent".}
proc fQQmlContext_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlContext_virtualbase_childEvent".}
proc fcQQmlContext_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_childEvent".}
proc fQQmlContext_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlContext_virtualbase_customEvent".}
proc fcQQmlContext_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_customEvent".}
proc fQQmlContext_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlContext_virtualbase_connectNotify".}
proc fcQQmlContext_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_connectNotify".}
proc fQQmlContext_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlContext_virtualbase_disconnectNotify".}
proc fcQQmlContext_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_disconnectNotify".}
proc fcQQmlContext_staticMetaObject(): pointer {.importc: "QQmlContext_staticMetaObject".}
proc fcQQmlContext_delete(self: pointer) {.importc: "QQmlContext_delete".}
proc fcQQmlContextPropertyPair_new(param1: pointer): ptr cQQmlContextPropertyPair {.importc: "QQmlContext__PropertyPair_new".}
proc fcQQmlContextPropertyPair_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlContext__PropertyPair_operatorAssign".}
proc fcQQmlContextPropertyPair_delete(self: pointer) {.importc: "QQmlContext__PropertyPair_delete".}


func init*(T: type gen_qqmlcontext_types.QQmlContext, h: ptr cQQmlContext): gen_qqmlcontext_types.QQmlContext =
  T(h: h)
proc create*(T: type gen_qqmlcontext_types.QQmlContext, parent: gen_qqmlengine_types.QQmlEngine): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext.init(fcQQmlContext_new(parent.h))

proc create*(T: type gen_qqmlcontext_types.QQmlContext, parent: gen_qqmlcontext_types.QQmlContext): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext.init(fcQQmlContext_new2(parent.h))

proc create*(T: type gen_qqmlcontext_types.QQmlContext, parent: gen_qqmlengine_types.QQmlEngine, objParent: gen_qobject_types.QObject): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext.init(fcQQmlContext_new3(parent.h, objParent.h))

proc create*(T: type gen_qqmlcontext_types.QQmlContext, parent: gen_qqmlcontext_types.QQmlContext, objParent: gen_qobject_types.QObject): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext.init(fcQQmlContext_new4(parent.h, objParent.h))

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

proc QQmlContextmetaObject*(self: gen_qqmlcontext_types.QQmlContext, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlContext_virtualbase_metaObject(self.h))

type QQmlContextmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlContextmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_metaObject(self: ptr cQQmlContext, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlContext_metaObject ".} =
  var nimfunc = cast[ptr QQmlContextmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlContextmetacast*(self: gen_qqmlcontext_types.QQmlContext, param1: cstring): pointer =
  fQQmlContext_virtualbase_metacast(self.h, param1)

type QQmlContextmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextmetacastProc) =
  # TODO check subclass
  var tmp = new QQmlContextmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_metacast(self: ptr cQQmlContext, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlContext_metacast ".} =
  var nimfunc = cast[ptr QQmlContextmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlContextmetacall*(self: gen_qqmlcontext_types.QQmlContext, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlContext_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlContextmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextmetacallProc) =
  # TODO check subclass
  var tmp = new QQmlContextmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_metacall(self: ptr cQQmlContext, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlContext_metacall ".} =
  var nimfunc = cast[ptr QQmlContextmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlContextevent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlContext_virtualbase_event(self.h, event.h)

type QQmlContexteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContexteventProc) =
  # TODO check subclass
  var tmp = new QQmlContexteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_event(self: ptr cQQmlContext, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlContext_event ".} =
  var nimfunc = cast[ptr QQmlContexteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlContexteventFilter*(self: gen_qqmlcontext_types.QQmlContext, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlContext_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlContexteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContexteventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlContexteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_eventFilter(self: ptr cQQmlContext, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlContext_eventFilter ".} =
  var nimfunc = cast[ptr QQmlContexteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlContexttimerEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlContext_virtualbase_timerEvent(self.h, event.h)

type QQmlContexttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContexttimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlContexttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_timerEvent(self: ptr cQQmlContext, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_timerEvent ".} =
  var nimfunc = cast[ptr QQmlContexttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlContextchildEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlContext_virtualbase_childEvent(self.h, event.h)

type QQmlContextchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlContextchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_childEvent(self: ptr cQQmlContext, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_childEvent ".} =
  var nimfunc = cast[ptr QQmlContextchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlContextcustomEvent*(self: gen_qqmlcontext_types.QQmlContext, event: gen_qcoreevent_types.QEvent): void =
  fQQmlContext_virtualbase_customEvent(self.h, event.h)

type QQmlContextcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextcustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlContextcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_customEvent(self: ptr cQQmlContext, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_customEvent ".} =
  var nimfunc = cast[ptr QQmlContextcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlContextconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlContext_virtualbase_connectNotify(self.h, signal.h)

type QQmlContextconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlContextconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_connectNotify(self: ptr cQQmlContext, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_connectNotify ".} =
  var nimfunc = cast[ptr QQmlContextconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlContextdisconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlContext_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlContextdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlcontext_types.QQmlContext, slot: QQmlContextdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlContextdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_disconnectNotify(self: ptr cQQmlContext, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlContextdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlcontext_types.QQmlContext): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlContext_staticMetaObject())
proc delete*(self: gen_qqmlcontext_types.QQmlContext) =
  fcQQmlContext_delete(self.h)

func init*(T: type gen_qqmlcontext_types.QQmlContextPropertyPair, h: ptr cQQmlContextPropertyPair): gen_qqmlcontext_types.QQmlContextPropertyPair =
  T(h: h)
proc create*(T: type gen_qqmlcontext_types.QQmlContextPropertyPair, param1: gen_qqmlcontext_types.QQmlContextPropertyPair): gen_qqmlcontext_types.QQmlContextPropertyPair =
  gen_qqmlcontext_types.QQmlContextPropertyPair.init(fcQQmlContextPropertyPair_new(param1.h))

proc operatorAssign*(self: gen_qqmlcontext_types.QQmlContextPropertyPair, param1: gen_qqmlcontext_types.QQmlContextPropertyPair): void =
  fcQQmlContextPropertyPair_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qqmlcontext_types.QQmlContextPropertyPair) =
  fcQQmlContextPropertyPair_delete(self.h)
