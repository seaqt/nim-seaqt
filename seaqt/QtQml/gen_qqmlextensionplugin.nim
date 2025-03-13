import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
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

proc fcQQmlExtensionPlugin_metaObject(self: pointer): pointer {.importc: "QQmlExtensionPlugin_metaObject".}
proc fcQQmlExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExtensionPlugin_metacast".}
proc fcQQmlExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExtensionPlugin_metacall".}
proc fcQQmlExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr".}
proc fcQQmlExtensionPlugin_baseUrl(self: pointer): pointer {.importc: "QQmlExtensionPlugin_baseUrl".}
proc fcQQmlExtensionPlugin_registerTypes(self: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_registerTypes".}
proc fcQQmlExtensionPlugin_unregisterTypes(self: pointer): void {.importc: "QQmlExtensionPlugin_unregisterTypes".}
proc fcQQmlExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_initializeEngine".}
proc fcQQmlExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr2".}
proc fcQQmlExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr3".}
proc fcQQmlExtensionPlugin_vtbl(self: pointer): pointer {.importc: "QQmlExtensionPlugin_vtbl".}
proc fcQQmlExtensionPlugin_vdata(self: pointer): pointer {.importc: "QQmlExtensionPlugin_vdata".}
type cQQmlExtensionPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  registerTypes*: proc(self: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  unregisterTypes*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  initializeEngine*: proc(self: pointer, engine: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlExtensionPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExtensionPlugin_virtualbase_metacast".}
proc fcQQmlExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExtensionPlugin_virtualbase_metacall".}
proc fcQQmlExtensionPlugin_virtualbase_unregisterTypes(self: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_unregisterTypes".}
proc fcQQmlExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlExtensionPlugin_virtualbase_event".}
proc fcQQmlExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlExtensionPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QQmlExtensionPlugin_protectedbase_sender".}
proc fcQQmlExtensionPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlExtensionPlugin_protectedbase_senderSignalIndex".}
proc fcQQmlExtensionPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlExtensionPlugin_protectedbase_receivers".}
proc fcQQmlExtensionPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlExtensionPlugin_protectedbase_isSignalConnected".}
proc fcQQmlExtensionPlugin_new(vtbl, vdata: pointer): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new".}
proc fcQQmlExtensionPlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new2".}
proc fcQQmlExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlExtensionPlugin_staticMetaObject".}
proc fcQQmlEngineExtensionPlugin_metaObject(self: pointer): pointer {.importc: "QQmlEngineExtensionPlugin_metaObject".}
proc fcQQmlEngineExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngineExtensionPlugin_metacast".}
proc fcQQmlEngineExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngineExtensionPlugin_metacall".}
proc fcQQmlEngineExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr".}
proc fcQQmlEngineExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionPlugin_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr2".}
proc fcQQmlEngineExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr3".}
proc fcQQmlEngineExtensionPlugin_vtbl(self: pointer): pointer {.importc: "QQmlEngineExtensionPlugin_vtbl".}
proc fcQQmlEngineExtensionPlugin_vdata(self: pointer): pointer {.importc: "QQmlEngineExtensionPlugin_vdata".}
type cQQmlEngineExtensionPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  initializeEngine*: proc(self: pointer, engine: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlEngineExtensionPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlEngineExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlEngineExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngineExtensionPlugin_virtualbase_metacast".}
proc fcQQmlEngineExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngineExtensionPlugin_virtualbase_metacall".}
proc fcQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlEngineExtensionPlugin_virtualbase_event".}
proc fcQQmlEngineExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlEngineExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlEngineExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlEngineExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlEngineExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlEngineExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlEngineExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlEngineExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlEngineExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlEngineExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlEngineExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlEngineExtensionPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QQmlEngineExtensionPlugin_protectedbase_sender".}
proc fcQQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex".}
proc fcQQmlEngineExtensionPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlEngineExtensionPlugin_protectedbase_receivers".}
proc fcQQmlEngineExtensionPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlEngineExtensionPlugin_protectedbase_isSignalConnected".}
proc fcQQmlEngineExtensionPlugin_new(vtbl, vdata: pointer): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new".}
proc fcQQmlEngineExtensionPlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new2".}
proc fcQQmlEngineExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlEngineExtensionPlugin_staticMetaObject".}

proc metaObject*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cstring): pointer =
  fcQQmlExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring): string =
  let v_ms = fcQQmlExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc baseUrl*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlExtensionPlugin_baseUrl(self.h), owned: true)

proc registerTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, uri: cstring): void =
  fcQQmlExtensionPlugin_registerTypes(self.h, uri)

proc unregisterTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): void =
  fcQQmlExtensionPlugin_unregisterTypes(self.h)

proc initializeEngine*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlExtensionPlugin_initializeEngine(self.h, engine.h, uri)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQQmlExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQmlExtensionPluginmetaObjectProc* = proc(self: QQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlExtensionPluginmetacastProc* = proc(self: QQmlExtensionPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlExtensionPluginmetacallProc* = proc(self: QQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlExtensionPluginregisterTypesProc* = proc(self: QQmlExtensionPlugin, uri: cstring): void {.raises: [], gcsafe.}
type QQmlExtensionPluginunregisterTypesProc* = proc(self: QQmlExtensionPlugin): void {.raises: [], gcsafe.}
type QQmlExtensionPlugininitializeEngineProc* = proc(self: QQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.raises: [], gcsafe.}
type QQmlExtensionPlugineventProc* = proc(self: QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlExtensionPlugineventFilterProc* = proc(self: QQmlExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlExtensionPlugintimerEventProc* = proc(self: QQmlExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlExtensionPluginchildEventProc* = proc(self: QQmlExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlExtensionPlugincustomEventProc* = proc(self: QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlExtensionPluginconnectNotifyProc* = proc(self: QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlExtensionPlugindisconnectNotifyProc* = proc(self: QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlExtensionPluginVTable* {.inheritable, pure.} = object
  vtbl: cQQmlExtensionPluginVTable
  metaObject*: QQmlExtensionPluginmetaObjectProc
  metacast*: QQmlExtensionPluginmetacastProc
  metacall*: QQmlExtensionPluginmetacallProc
  registerTypes*: QQmlExtensionPluginregisterTypesProc
  unregisterTypes*: QQmlExtensionPluginunregisterTypesProc
  initializeEngine*: QQmlExtensionPlugininitializeEngineProc
  event*: QQmlExtensionPlugineventProc
  eventFilter*: QQmlExtensionPlugineventFilterProc
  timerEvent*: QQmlExtensionPlugintimerEventProc
  childEvent*: QQmlExtensionPluginchildEventProc
  customEvent*: QQmlExtensionPlugincustomEventProc
  connectNotify*: QQmlExtensionPluginconnectNotifyProc
  disconnectNotify*: QQmlExtensionPlugindisconnectNotifyProc
proc QQmlExtensionPluginmetaObject*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_virtualbase_metaObject(self.h), owned: false)

proc cQQmlExtensionPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlExtensionPluginmetacast*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cstring): pointer =
  fcQQmlExtensionPlugin_virtualbase_metacast(self.h, param1)

proc cQQmlExtensionPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlExtensionPluginmetacall*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQmlExtensionPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQQmlExtensionPlugin_vtable_callback_registerTypes(self: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = (uri)
  vtbl[].registerTypes(self, slotval1)

proc QQmlExtensionPluginunregisterTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): void =
  fcQQmlExtensionPlugin_virtualbase_unregisterTypes(self.h)

proc cQQmlExtensionPlugin_vtable_callback_unregisterTypes(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  vtbl[].unregisterTypes(self)

proc QQmlExtensionPlugininitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

proc cQQmlExtensionPlugin_vtable_callback_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine, owned: false)
  let slotval2 = (uri)
  vtbl[].initializeEngine(self, slotval1, slotval2)

proc QQmlExtensionPluginevent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExtensionPlugin_virtualbase_event(self.h, event.h)

proc cQQmlExtensionPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlExtensionPlugineventFilter*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQmlExtensionPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlExtensionPlugintimerEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

proc cQQmlExtensionPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlExtensionPluginchildEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlExtensionPlugin_virtualbase_childEvent(self.h, event.h)

proc cQQmlExtensionPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlExtensionPlugincustomEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlExtensionPlugin_virtualbase_customEvent(self.h, event.h)

proc cQQmlExtensionPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlExtensionPluginconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

proc cQQmlExtensionPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlExtensionPlugindisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQmlExtensionPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlExtensionPlugin* {.inheritable.} = ref object of QQmlExtensionPlugin
  vtbl*: cQQmlExtensionPluginVTable
method metaObject*(self: VirtualQQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlExtensionPluginmetaObject(self[])
proc cQQmlExtensionPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlExtensionPlugin, param1: cstring): pointer {.base.} =
  QQmlExtensionPluginmetacast(self[], param1)
proc cQQmlExtensionPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlExtensionPluginmetacall(self[], param1, param2, param3)
proc cQQmlExtensionPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method registerTypes*(self: VirtualQQmlExtensionPlugin, uri: cstring): void {.base.} =
  raiseAssert("missing implementation of QQmlExtensionPlugin_virtualbase_registerTypes")
proc cQQmlExtensionPlugin_method_callback_registerTypes(self: pointer, uri: cstring): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = (uri)
  inst.registerTypes(slotval1)

method unregisterTypes*(self: VirtualQQmlExtensionPlugin): void {.base.} =
  QQmlExtensionPluginunregisterTypes(self[])
proc cQQmlExtensionPlugin_method_callback_unregisterTypes(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  inst.unregisterTypes()

method initializeEngine*(self: VirtualQQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.base.} =
  QQmlExtensionPlugininitializeEngine(self[], engine, uri)
proc cQQmlExtensionPlugin_method_callback_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine, owned: false)
  let slotval2 = (uri)
  inst.initializeEngine(slotval1, slotval2)

method event*(self: VirtualQQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlExtensionPluginevent(self[], event)
proc cQQmlExtensionPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlExtensionPlugineventFilter(self[], watched, event)
proc cQQmlExtensionPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlExtensionPlugintimerEvent(self[], event)
proc cQQmlExtensionPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlExtensionPluginchildEvent(self[], event)
proc cQQmlExtensionPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlExtensionPlugincustomEvent(self[], event)
proc cQQmlExtensionPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlExtensionPluginconnectNotify(self[], signal)
proc cQQmlExtensionPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlExtensionPlugindisconnectNotify(self[], signal)
proc cQQmlExtensionPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionPlugin](fcQQmlExtensionPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlExtensionPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin): cint =
  fcQQmlExtensionPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: cstring): cint =
  fcQQmlExtensionPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlExtensionPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin,
    vtbl: ref QQmlExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExtensionPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExtensionPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExtensionPlugin_vtable_callback_metacall
  if not isNil(vtbl[].registerTypes):
    vtbl[].vtbl.registerTypes = cQQmlExtensionPlugin_vtable_callback_registerTypes
  if not isNil(vtbl[].unregisterTypes):
    vtbl[].vtbl.unregisterTypes = cQQmlExtensionPlugin_vtable_callback_unregisterTypes
  if not isNil(vtbl[].initializeEngine):
    vtbl[].vtbl.initializeEngine = cQQmlExtensionPlugin_vtable_callback_initializeEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExtensionPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExtensionPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExtensionPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExtensionPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExtensionPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExtensionPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExtensionPlugin_vtable_callback_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlExtensionPlugin(h: fcQQmlExtensionPlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExtensionPluginVTable](fcQQmlExtensionPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExtensionPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExtensionPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExtensionPlugin_vtable_callback_metacall
  if not isNil(vtbl[].registerTypes):
    vtbl[].vtbl.registerTypes = cQQmlExtensionPlugin_vtable_callback_registerTypes
  if not isNil(vtbl[].unregisterTypes):
    vtbl[].vtbl.unregisterTypes = cQQmlExtensionPlugin_vtable_callback_unregisterTypes
  if not isNil(vtbl[].initializeEngine):
    vtbl[].vtbl.initializeEngine = cQQmlExtensionPlugin_vtable_callback_initializeEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExtensionPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExtensionPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExtensionPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExtensionPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExtensionPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExtensionPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExtensionPlugin_vtable_callback_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlExtensionPlugin(h: fcQQmlExtensionPlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQmlExtensionPlugin_mvtbl = cQQmlExtensionPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlExtensionPlugin()[])](self.fcQQmlExtensionPlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQmlExtensionPlugin_method_callback_metaObject,
  metacast: cQQmlExtensionPlugin_method_callback_metacast,
  metacall: cQQmlExtensionPlugin_method_callback_metacall,
  registerTypes: cQQmlExtensionPlugin_method_callback_registerTypes,
  unregisterTypes: cQQmlExtensionPlugin_method_callback_unregisterTypes,
  initializeEngine: cQQmlExtensionPlugin_method_callback_initializeEngine,
  event: cQQmlExtensionPlugin_method_callback_event,
  eventFilter: cQQmlExtensionPlugin_method_callback_eventFilter,
  timerEvent: cQQmlExtensionPlugin_method_callback_timerEvent,
  childEvent: cQQmlExtensionPlugin_method_callback_childEvent,
  customEvent: cQQmlExtensionPlugin_method_callback_customEvent,
  connectNotify: cQQmlExtensionPlugin_method_callback_connectNotify,
  disconnectNotify: cQQmlExtensionPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin,
    inst: VirtualQQmlExtensionPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExtensionPlugin_new(addr(cQQmlExtensionPlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQmlExtensionPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExtensionPlugin_new2(addr(cQQmlExtensionPlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_staticMetaObject())
proc metaObject*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cstring): pointer =
  fcQQmlEngineExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngineExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring): string =
  let v_ms = fcQQmlEngineExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc initializeEngine*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlEngineExtensionPlugin_initializeEngine(self.h, engine.h, uri)

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQQmlEngineExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlEngineExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQmlEngineExtensionPluginmetaObjectProc* = proc(self: QQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlEngineExtensionPluginmetacastProc* = proc(self: QQmlEngineExtensionPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlEngineExtensionPluginmetacallProc* = proc(self: QQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlEngineExtensionPlugininitializeEngineProc* = proc(self: QQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.raises: [], gcsafe.}
type QQmlEngineExtensionPlugineventProc* = proc(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlEngineExtensionPlugineventFilterProc* = proc(self: QQmlEngineExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlEngineExtensionPlugintimerEventProc* = proc(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlEngineExtensionPluginchildEventProc* = proc(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlEngineExtensionPlugincustomEventProc* = proc(self: QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlEngineExtensionPluginconnectNotifyProc* = proc(self: QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlEngineExtensionPlugindisconnectNotifyProc* = proc(self: QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlEngineExtensionPluginVTable* {.inheritable, pure.} = object
  vtbl: cQQmlEngineExtensionPluginVTable
  metaObject*: QQmlEngineExtensionPluginmetaObjectProc
  metacast*: QQmlEngineExtensionPluginmetacastProc
  metacall*: QQmlEngineExtensionPluginmetacallProc
  initializeEngine*: QQmlEngineExtensionPlugininitializeEngineProc
  event*: QQmlEngineExtensionPlugineventProc
  eventFilter*: QQmlEngineExtensionPlugineventFilterProc
  timerEvent*: QQmlEngineExtensionPlugintimerEventProc
  childEvent*: QQmlEngineExtensionPluginchildEventProc
  customEvent*: QQmlEngineExtensionPlugincustomEventProc
  connectNotify*: QQmlEngineExtensionPluginconnectNotifyProc
  disconnectNotify*: QQmlEngineExtensionPlugindisconnectNotifyProc
proc QQmlEngineExtensionPluginmetaObject*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_virtualbase_metaObject(self.h), owned: false)

proc cQQmlEngineExtensionPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlEngineExtensionPluginmetacast*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cstring): pointer =
  fcQQmlEngineExtensionPlugin_virtualbase_metacast(self.h, param1)

proc cQQmlEngineExtensionPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlEngineExtensionPluginmetacall*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngineExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQmlEngineExtensionPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlEngineExtensionPlugininitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

proc cQQmlEngineExtensionPlugin_vtable_callback_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine, owned: false)
  let slotval2 = (uri)
  vtbl[].initializeEngine(self, slotval1, slotval2)

proc QQmlEngineExtensionPluginevent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlEngineExtensionPlugin_virtualbase_event(self.h, event.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlEngineExtensionPlugineventFilter*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlEngineExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlEngineExtensionPlugintimerEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlEngineExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlEngineExtensionPluginchildEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlEngineExtensionPlugin_virtualbase_childEvent(self.h, event.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlEngineExtensionPlugincustomEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlEngineExtensionPlugin_virtualbase_customEvent(self.h, event.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlEngineExtensionPluginconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlEngineExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlEngineExtensionPlugindisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQmlEngineExtensionPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlEngineExtensionPlugin* {.inheritable.} = ref object of QQmlEngineExtensionPlugin
  vtbl*: cQQmlEngineExtensionPluginVTable
method metaObject*(self: VirtualQQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlEngineExtensionPluginmetaObject(self[])
proc cQQmlEngineExtensionPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlEngineExtensionPlugin, param1: cstring): pointer {.base.} =
  QQmlEngineExtensionPluginmetacast(self[], param1)
proc cQQmlEngineExtensionPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlEngineExtensionPluginmetacall(self[], param1, param2, param3)
proc cQQmlEngineExtensionPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method initializeEngine*(self: VirtualQQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.base.} =
  QQmlEngineExtensionPlugininitializeEngine(self[], engine, uri)
proc cQQmlEngineExtensionPlugin_method_callback_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine, owned: false)
  let slotval2 = (uri)
  inst.initializeEngine(slotval1, slotval2)

method event*(self: VirtualQQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlEngineExtensionPluginevent(self[], event)
proc cQQmlEngineExtensionPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlEngineExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlEngineExtensionPlugineventFilter(self[], watched, event)
proc cQQmlEngineExtensionPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlEngineExtensionPlugintimerEvent(self[], event)
proc cQQmlEngineExtensionPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlEngineExtensionPluginchildEvent(self[], event)
proc cQQmlEngineExtensionPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlEngineExtensionPlugincustomEvent(self[], event)
proc cQQmlEngineExtensionPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlEngineExtensionPluginconnectNotify(self[], signal)
proc cQQmlEngineExtensionPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlEngineExtensionPlugindisconnectNotify(self[], signal)
proc cQQmlEngineExtensionPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlEngineExtensionPlugin](fcQQmlEngineExtensionPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlEngineExtensionPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): cint =
  fcQQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: cstring): cint =
  fcQQmlEngineExtensionPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlEngineExtensionPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin,
    vtbl: ref QQmlEngineExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlEngineExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlEngineExtensionPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlEngineExtensionPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlEngineExtensionPlugin_vtable_callback_metacall
  if not isNil(vtbl[].initializeEngine):
    vtbl[].vtbl.initializeEngine = cQQmlEngineExtensionPlugin_vtable_callback_initializeEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlEngineExtensionPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlEngineExtensionPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlEngineExtensionPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlEngineExtensionPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlEngineExtensionPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlEngineExtensionPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlEngineExtensionPlugin_vtable_callback_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin(h: fcQQmlEngineExtensionPlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlEngineExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlEngineExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlEngineExtensionPluginVTable](fcQQmlEngineExtensionPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlEngineExtensionPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlEngineExtensionPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlEngineExtensionPlugin_vtable_callback_metacall
  if not isNil(vtbl[].initializeEngine):
    vtbl[].vtbl.initializeEngine = cQQmlEngineExtensionPlugin_vtable_callback_initializeEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlEngineExtensionPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlEngineExtensionPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlEngineExtensionPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlEngineExtensionPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlEngineExtensionPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlEngineExtensionPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlEngineExtensionPlugin_vtable_callback_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin(h: fcQQmlEngineExtensionPlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQmlEngineExtensionPlugin_mvtbl = cQQmlEngineExtensionPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlEngineExtensionPlugin()[])](self.fcQQmlEngineExtensionPlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQmlEngineExtensionPlugin_method_callback_metaObject,
  metacast: cQQmlEngineExtensionPlugin_method_callback_metacast,
  metacall: cQQmlEngineExtensionPlugin_method_callback_metacall,
  initializeEngine: cQQmlEngineExtensionPlugin_method_callback_initializeEngine,
  event: cQQmlEngineExtensionPlugin_method_callback_event,
  eventFilter: cQQmlEngineExtensionPlugin_method_callback_eventFilter,
  timerEvent: cQQmlEngineExtensionPlugin_method_callback_timerEvent,
  childEvent: cQQmlEngineExtensionPlugin_method_callback_childEvent,
  customEvent: cQQmlEngineExtensionPlugin_method_callback_customEvent,
  connectNotify: cQQmlEngineExtensionPlugin_method_callback_connectNotify,
  disconnectNotify: cQQmlEngineExtensionPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin,
    inst: VirtualQQmlEngineExtensionPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlEngineExtensionPlugin_new(addr(cQQmlEngineExtensionPlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQmlEngineExtensionPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlEngineExtensionPlugin_new2(addr(cQQmlEngineExtensionPlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_staticMetaObject())
