import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlextensionplugin.cpp", cflags).}


import ./gen_qqmlextensionplugin_types
export gen_qqmlextensionplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qqmlengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qqmlengine_types

type cQQmlExtensionPlugin*{.exportc: "QQmlExtensionPlugin", incompleteStruct.} = object
type cQQmlEngineExtensionPlugin*{.exportc: "QQmlEngineExtensionPlugin", incompleteStruct.} = object

proc fcQQmlExtensionPlugin_new(): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new".}
proc fcQQmlExtensionPlugin_new2(parent: pointer): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new2".}
proc fcQQmlExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_metaObject".}
proc fcQQmlExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExtensionPlugin_metacast".}
proc fcQQmlExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExtensionPlugin_metacall".}
proc fcQQmlExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr".}
proc fcQQmlExtensionPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_trUtf8".}
proc fcQQmlExtensionPlugin_baseUrl(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_baseUrl".}
proc fcQQmlExtensionPlugin_registerTypes(self: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_registerTypes".}
proc fcQQmlExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_initializeEngine".}
proc fcQQmlExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr2".}
proc fcQQmlExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr3".}
proc fcQQmlExtensionPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_trUtf82".}
proc fcQQmlExtensionPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExtensionPlugin_trUtf83".}
proc fQQmlExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlExtensionPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_metaObject".}
proc fQQmlExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlExtensionPlugin_virtualbase_metacast".}
proc fcQQmlExtensionPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_metacast".}
proc fQQmlExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlExtensionPlugin_virtualbase_metacall".}
proc fcQQmlExtensionPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_metacall".}
proc fcQQmlExtensionPlugin_override_virtual_registerTypes(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_registerTypes".}
proc fQQmlExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void{.importc: "QQmlExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlExtensionPlugin_override_virtual_initializeEngine(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_initializeEngine".}
proc fQQmlExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlExtensionPlugin_virtualbase_event".}
proc fcQQmlExtensionPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_event".}
proc fQQmlExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlExtensionPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_eventFilter".}
proc fQQmlExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlExtensionPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_timerEvent".}
proc fQQmlExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlExtensionPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_childEvent".}
proc fQQmlExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlExtensionPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_customEvent".}
proc fQQmlExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlExtensionPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_connectNotify".}
proc fQQmlExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlExtensionPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlExtensionPlugin_override_virtual_disconnectNotify".}
proc fcQQmlExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlExtensionPlugin_staticMetaObject".}
proc fcQQmlExtensionPlugin_delete(self: pointer) {.importc: "QQmlExtensionPlugin_delete".}
proc fcQQmlEngineExtensionPlugin_new(): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new".}
proc fcQQmlEngineExtensionPlugin_new2(parent: pointer): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new2".}
proc fcQQmlEngineExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QQmlEngineExtensionPlugin_metaObject".}
proc fcQQmlEngineExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngineExtensionPlugin_metacast".}
proc fcQQmlEngineExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngineExtensionPlugin_metacall".}
proc fcQQmlEngineExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr".}
proc fcQQmlEngineExtensionPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_trUtf8".}
proc fcQQmlEngineExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionPlugin_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr2".}
proc fcQQmlEngineExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr3".}
proc fcQQmlEngineExtensionPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_trUtf82".}
proc fcQQmlEngineExtensionPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_trUtf83".}
proc fQQmlEngineExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlEngineExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlEngineExtensionPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_metaObject".}
proc fQQmlEngineExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlEngineExtensionPlugin_virtualbase_metacast".}
proc fcQQmlEngineExtensionPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_metacast".}
proc fQQmlEngineExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlEngineExtensionPlugin_virtualbase_metacall".}
proc fcQQmlEngineExtensionPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_metacall".}
proc fQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_override_virtual_initializeEngine(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_initializeEngine".}
proc fQQmlEngineExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlEngineExtensionPlugin_virtualbase_event".}
proc fcQQmlEngineExtensionPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_event".}
proc fQQmlEngineExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlEngineExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlEngineExtensionPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_eventFilter".}
proc fQQmlEngineExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlEngineExtensionPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_timerEvent".}
proc fQQmlEngineExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlEngineExtensionPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_childEvent".}
proc fQQmlEngineExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlEngineExtensionPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_customEvent".}
proc fQQmlEngineExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlEngineExtensionPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_connectNotify".}
proc fQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngineExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlEngineExtensionPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlEngineExtensionPlugin_override_virtual_disconnectNotify".}
proc fcQQmlEngineExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlEngineExtensionPlugin_staticMetaObject".}
proc fcQQmlEngineExtensionPlugin_delete(self: pointer) {.importc: "QQmlEngineExtensionPlugin_delete".}


func init*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, h: ptr cQQmlExtensionPlugin): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  T(h: h)
proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  gen_qqmlextensionplugin_types.QQmlExtensionPlugin.init(fcQQmlExtensionPlugin_new())

proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, parent: gen_qobject_types.QObject): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  gen_qqmlextensionplugin_types.QQmlExtensionPlugin.init(fcQQmlExtensionPlugin_new2(parent.h))

proc metaObject*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_metaObject(self.h))

proc metacast*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cstring): pointer =
  fcQQmlExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring): string =
  let v_ms = fcQQmlExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring): string =
  let v_ms = fcQQmlExtensionPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseUrl*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlExtensionPlugin_baseUrl(self.h))

proc registerTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, uri: cstring): void =
  fcQQmlExtensionPlugin_registerTypes(self.h, uri)

proc initializeEngine*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlExtensionPlugin_initializeEngine(self.h, engine.h, uri)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQQmlExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQQmlExtensionPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlExtensionPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQmlExtensionPluginmetaObject*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlExtensionPlugin_virtualbase_metaObject(self.h))

type QQmlExtensionPluginmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_metaObject(self: ptr cQQmlExtensionPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_metaObject ".} =
  var nimfunc = cast[ptr QQmlExtensionPluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlExtensionPluginmetacast*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cstring): pointer =
  fQQmlExtensionPlugin_virtualbase_metacast(self.h, param1)

type QQmlExtensionPluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPluginmetacastProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_metacast(self: ptr cQQmlExtensionPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_metacast ".} =
  var nimfunc = cast[ptr QQmlExtensionPluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlExtensionPluginmetacall*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlExtensionPluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPluginmetacallProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_metacall(self: ptr cQQmlExtensionPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_metacall ".} =
  var nimfunc = cast[ptr QQmlExtensionPluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QQmlExtensionPluginregisterTypesProc* = proc(uri: cstring): void
proc onregisterTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPluginregisterTypesProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPluginregisterTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_registerTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_registerTypes(self: ptr cQQmlExtensionPlugin, slot: int, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_registerTypes ".} =
  var nimfunc = cast[ptr QQmlExtensionPluginregisterTypesProc](cast[pointer](slot))
  let slotval1 = (uri)


  nimfunc[](slotval1)
proc QQmlExtensionPlugininitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fQQmlExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

type QQmlExtensionPlugininitializeEngineProc* = proc(engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void
proc oninitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPlugininitializeEngineProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPlugininitializeEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_initializeEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_initializeEngine(self: ptr cQQmlExtensionPlugin, slot: int, engine: pointer, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_initializeEngine ".} =
  var nimfunc = cast[ptr QQmlExtensionPlugininitializeEngineProc](cast[pointer](slot))
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine)

  let slotval2 = (uri)


  nimfunc[](slotval1, slotval2)
proc QQmlExtensionPluginevent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlExtensionPlugin_virtualbase_event(self.h, event.h)

type QQmlExtensionPlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPlugineventProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_event(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_event ".} =
  var nimfunc = cast[ptr QQmlExtensionPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlExtensionPlugineventFilter*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlExtensionPlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_eventFilter(self: ptr cQQmlExtensionPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QQmlExtensionPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlExtensionPlugintimerEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

type QQmlExtensionPlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_timerEvent(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QQmlExtensionPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlExtensionPluginchildEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlExtensionPlugin_virtualbase_childEvent(self.h, event.h)

type QQmlExtensionPluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_childEvent(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_childEvent ".} =
  var nimfunc = cast[ptr QQmlExtensionPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlExtensionPlugincustomEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fQQmlExtensionPlugin_virtualbase_customEvent(self.h, event.h)

type QQmlExtensionPlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_customEvent(self: ptr cQQmlExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_customEvent ".} =
  var nimfunc = cast[ptr QQmlExtensionPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlExtensionPluginconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

type QQmlExtensionPluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_connectNotify(self: ptr cQQmlExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QQmlExtensionPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlExtensionPlugindisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlExtensionPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, slot: QQmlExtensionPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlExtensionPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify(self: ptr cQQmlExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlExtensionPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_staticMetaObject())
proc delete*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin) =
  fcQQmlExtensionPlugin_delete(self.h)

func init*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, h: ptr cQQmlEngineExtensionPlugin): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  T(h: h)
proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, ): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin.init(fcQQmlEngineExtensionPlugin_new())

proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, parent: gen_qobject_types.QObject): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin.init(fcQQmlEngineExtensionPlugin_new2(parent.h))

proc metaObject*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_metaObject(self.h))

proc metacast*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cstring): pointer =
  fcQQmlEngineExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngineExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring): string =
  let v_ms = fcQQmlEngineExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring): string =
  let v_ms = fcQQmlEngineExtensionPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc initializeEngine*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlEngineExtensionPlugin_initializeEngine(self.h, engine.h, uri)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngineExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngineExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngineExtensionPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngineExtensionPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQmlEngineExtensionPluginmetaObject*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlEngineExtensionPlugin_virtualbase_metaObject(self.h))

type QQmlEngineExtensionPluginmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject(self: ptr cQQmlEngineExtensionPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlEngineExtensionPluginmetacast*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cstring): pointer =
  fQQmlEngineExtensionPlugin_virtualbase_metacast(self.h, param1)

type QQmlEngineExtensionPluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPluginmetacastProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_metacast(self: ptr cQQmlEngineExtensionPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_metacast ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlEngineExtensionPluginmetacall*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlEngineExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlEngineExtensionPluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPluginmetacallProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_metacall(self: ptr cQQmlEngineExtensionPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_metacall ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlEngineExtensionPlugininitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

type QQmlEngineExtensionPlugininitializeEngineProc* = proc(engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void
proc oninitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPlugininitializeEngineProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPlugininitializeEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_initializeEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine(self: ptr cQQmlEngineExtensionPlugin, slot: int, engine: pointer, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPlugininitializeEngineProc](cast[pointer](slot))
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine)

  let slotval2 = (uri)


  nimfunc[](slotval1, slotval2)
proc QQmlEngineExtensionPluginevent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlEngineExtensionPlugin_virtualbase_event(self.h, event.h)

type QQmlEngineExtensionPlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPlugineventProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_event(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_event ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlEngineExtensionPlugineventFilter*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlEngineExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlEngineExtensionPlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter(self: ptr cQQmlEngineExtensionPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlEngineExtensionPlugintimerEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlEngineExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

type QQmlEngineExtensionPlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlEngineExtensionPluginchildEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlEngineExtensionPlugin_virtualbase_childEvent(self.h, event.h)

type QQmlEngineExtensionPluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlEngineExtensionPlugincustomEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fQQmlEngineExtensionPlugin_virtualbase_customEvent(self.h, event.h)

type QQmlEngineExtensionPlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent(self: ptr cQQmlEngineExtensionPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlEngineExtensionPluginconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlEngineExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

type QQmlEngineExtensionPluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify(self: ptr cQQmlEngineExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlEngineExtensionPlugindisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlEngineExtensionPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, slot: QQmlEngineExtensionPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlEngineExtensionPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngineExtensionPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify(self: ptr cQQmlEngineExtensionPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlEngineExtensionPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_staticMetaObject())
proc delete*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin) =
  fcQQmlEngineExtensionPlugin_delete(self.h)
