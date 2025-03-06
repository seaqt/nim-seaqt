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

proc fcQQmlExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_metaObject".}
proc fcQQmlExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExtensionPlugin_metacast".}
proc fcQQmlExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExtensionPlugin_metacall".}
proc fcQQmlExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr".}
proc fcQQmlExtensionPlugin_baseUrl(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_baseUrl".}
proc fcQQmlExtensionPlugin_registerTypes(self: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_registerTypes".}
proc fcQQmlExtensionPlugin_unregisterTypes(self: pointer, ): void {.importc: "QQmlExtensionPlugin_unregisterTypes".}
proc fcQQmlExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_initializeEngine".}
proc fcQQmlExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr2".}
proc fcQQmlExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExtensionPlugin_tr3".}
type cQQmlExtensionPluginVTable = object
  destructor*: proc(vtbl: ptr cQQmlExtensionPluginVTable, self: ptr cQQmlExtensionPlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  registerTypes*: proc(vtbl, self: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  unregisterTypes*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  initializeEngine*: proc(vtbl, self: pointer, engine: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_virtualbase_metaObject".}
proc fcQQmlExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExtensionPlugin_virtualbase_metacast".}
proc fcQQmlExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExtensionPlugin_virtualbase_metacall".}
proc fcQQmlExtensionPlugin_virtualbase_unregisterTypes(self: pointer, ): void {.importc: "QQmlExtensionPlugin_virtualbase_unregisterTypes".}
proc fcQQmlExtensionPlugin_virtualbase_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionPlugin_virtualbase_initializeEngine".}
proc fcQQmlExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlExtensionPlugin_virtualbase_event".}
proc fcQQmlExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlExtensionPlugin_virtualbase_eventFilter".}
proc fcQQmlExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_timerEvent".}
proc fcQQmlExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_childEvent".}
proc fcQQmlExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_customEvent".}
proc fcQQmlExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_connectNotify".}
proc fcQQmlExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQQmlExtensionPlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QQmlExtensionPlugin_protectedbase_sender".}
proc fcQQmlExtensionPlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQmlExtensionPlugin_protectedbase_senderSignalIndex".}
proc fcQQmlExtensionPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlExtensionPlugin_protectedbase_receivers".}
proc fcQQmlExtensionPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlExtensionPlugin_protectedbase_isSignalConnected".}
proc fcQQmlExtensionPlugin_new(vtbl: pointer, ): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new".}
proc fcQQmlExtensionPlugin_new2(vtbl: pointer, parent: pointer): ptr cQQmlExtensionPlugin {.importc: "QQmlExtensionPlugin_new2".}
proc fcQQmlExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlExtensionPlugin_staticMetaObject".}
proc fcQQmlExtensionPlugin_delete(self: pointer) {.importc: "QQmlExtensionPlugin_delete".}
proc fcQQmlEngineExtensionPlugin_metaObject(self: pointer, ): pointer {.importc: "QQmlEngineExtensionPlugin_metaObject".}
proc fcQQmlEngineExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngineExtensionPlugin_metacast".}
proc fcQQmlEngineExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngineExtensionPlugin_metacall".}
proc fcQQmlEngineExtensionPlugin_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr".}
proc fcQQmlEngineExtensionPlugin_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionPlugin_initializeEngine".}
proc fcQQmlEngineExtensionPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr2".}
proc fcQQmlEngineExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngineExtensionPlugin_tr3".}
type cQQmlEngineExtensionPluginVTable = object
  destructor*: proc(vtbl: ptr cQQmlEngineExtensionPluginVTable, self: ptr cQQmlEngineExtensionPlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  initializeEngine*: proc(vtbl, self: pointer, engine: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlEngineExtensionPlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlEngineExtensionPlugin_virtualbase_metaObject".}
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
proc fcQQmlEngineExtensionPlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QQmlEngineExtensionPlugin_protectedbase_sender".}
proc fcQQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex".}
proc fcQQmlEngineExtensionPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlEngineExtensionPlugin_protectedbase_receivers".}
proc fcQQmlEngineExtensionPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlEngineExtensionPlugin_protectedbase_isSignalConnected".}
proc fcQQmlEngineExtensionPlugin_new(vtbl: pointer, ): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new".}
proc fcQQmlEngineExtensionPlugin_new2(vtbl: pointer, parent: pointer): ptr cQQmlEngineExtensionPlugin {.importc: "QQmlEngineExtensionPlugin_new2".}
proc fcQQmlEngineExtensionPlugin_staticMetaObject(): pointer {.importc: "QQmlEngineExtensionPlugin_staticMetaObject".}
proc fcQQmlEngineExtensionPlugin_delete(self: pointer) {.importc: "QQmlEngineExtensionPlugin_delete".}

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

proc baseUrl*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlExtensionPlugin_baseUrl(self.h))

proc registerTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, uri: cstring): void =
  fcQQmlExtensionPlugin_registerTypes(self.h, uri)

proc unregisterTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): void =
  fcQQmlExtensionPlugin_unregisterTypes(self.h)

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
type QQmlExtensionPluginVTable* = object
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
proc QQmlExtensionPluginmetaObject*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlExtensionPlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlExtensionPluginmetacast*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cstring): pointer =
  fcQQmlExtensionPlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlExtensionPlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlExtensionPluginmetacall*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlExtensionPlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQQmlExtensionPlugin_registerTypes(vtbl: pointer, self: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = (uri)
  vtbl[].registerTypes(self, slotval1)

proc QQmlExtensionPluginunregisterTypes*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): void =
  fcQQmlExtensionPlugin_virtualbase_unregisterTypes(self.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_unregisterTypes(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  vtbl[].unregisterTypes(self)

proc QQmlExtensionPlugininitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

proc miqt_exec_callback_cQQmlExtensionPlugin_initializeEngine(vtbl: pointer, self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine)
  let slotval2 = (uri)
  vtbl[].initializeEngine(self, slotval1, slotval2)

proc QQmlExtensionPluginevent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExtensionPlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlExtensionPlugineventFilter*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlExtensionPlugintimerEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlExtensionPluginchildEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlExtensionPlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlExtensionPlugincustomEvent*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlExtensionPlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlExtensionPluginconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlExtensionPlugindisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlExtensionPlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionPluginVTable](vtbl)
  let self = QQmlExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlExtensionPlugin_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, ): cint =
  fcQQmlExtensionPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: cstring): cint =
  fcQQmlExtensionPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlExtensionPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin,
    vtbl: ref QQmlExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExtensionPluginVTable, _: ptr cQQmlExtensionPlugin) {.cdecl.} =
    let vtbl = cast[ref QQmlExtensionPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExtensionPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExtensionPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExtensionPlugin_metacall
  if not isNil(vtbl.registerTypes):
    vtbl[].vtbl.registerTypes = miqt_exec_callback_cQQmlExtensionPlugin_registerTypes
  if not isNil(vtbl.unregisterTypes):
    vtbl[].vtbl.unregisterTypes = miqt_exec_callback_cQQmlExtensionPlugin_unregisterTypes
  if not isNil(vtbl.initializeEngine):
    vtbl[].vtbl.initializeEngine = miqt_exec_callback_cQQmlExtensionPlugin_initializeEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExtensionPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExtensionPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExtensionPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExtensionPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExtensionPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExtensionPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExtensionPlugin_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlExtensionPlugin(h: fcQQmlExtensionPlugin_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExtensionPluginVTable, _: ptr cQQmlExtensionPlugin) {.cdecl.} =
    let vtbl = cast[ref QQmlExtensionPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExtensionPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExtensionPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExtensionPlugin_metacall
  if not isNil(vtbl.registerTypes):
    vtbl[].vtbl.registerTypes = miqt_exec_callback_cQQmlExtensionPlugin_registerTypes
  if not isNil(vtbl.unregisterTypes):
    vtbl[].vtbl.unregisterTypes = miqt_exec_callback_cQQmlExtensionPlugin_unregisterTypes
  if not isNil(vtbl.initializeEngine):
    vtbl[].vtbl.initializeEngine = miqt_exec_callback_cQQmlExtensionPlugin_initializeEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExtensionPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExtensionPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExtensionPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExtensionPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExtensionPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExtensionPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExtensionPlugin_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlExtensionPlugin(h: fcQQmlExtensionPlugin_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qqmlextensionplugin_types.QQmlExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExtensionPlugin_staticMetaObject())
proc delete*(self: gen_qqmlextensionplugin_types.QQmlExtensionPlugin) =
  fcQQmlExtensionPlugin_delete(self.h)
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
type QQmlEngineExtensionPluginVTable* = object
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
proc QQmlEngineExtensionPluginmetaObject*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlEngineExtensionPluginmetacast*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cstring): pointer =
  fcQQmlEngineExtensionPlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlEngineExtensionPluginmetacall*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlEngineExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlEngineExtensionPlugininitializeEngine*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlEngineExtensionPlugin_virtualbase_initializeEngine(self.h, engine.h, uri)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_initializeEngine(vtbl: pointer, self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine)
  let slotval2 = (uri)
  vtbl[].initializeEngine(self, slotval1, slotval2)

proc QQmlEngineExtensionPluginevent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlEngineExtensionPlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlEngineExtensionPlugineventFilter*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlEngineExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlEngineExtensionPlugintimerEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlEngineExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlEngineExtensionPluginchildEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlEngineExtensionPlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlEngineExtensionPlugincustomEvent*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlEngineExtensionPlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlEngineExtensionPluginconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlEngineExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlEngineExtensionPlugindisconnectNotify*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlEngineExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlEngineExtensionPlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlEngineExtensionPluginVTable](vtbl)
  let self = QQmlEngineExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlEngineExtensionPlugin_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, ): cint =
  fcQQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: cstring): cint =
  fcQQmlEngineExtensionPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlEngineExtensionPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin,
    vtbl: ref QQmlEngineExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlEngineExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlEngineExtensionPluginVTable, _: ptr cQQmlEngineExtensionPlugin) {.cdecl.} =
    let vtbl = cast[ref QQmlEngineExtensionPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlEngineExtensionPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlEngineExtensionPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlEngineExtensionPlugin_metacall
  if not isNil(vtbl.initializeEngine):
    vtbl[].vtbl.initializeEngine = miqt_exec_callback_cQQmlEngineExtensionPlugin_initializeEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlEngineExtensionPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlEngineExtensionPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlEngineExtensionPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlEngineExtensionPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlEngineExtensionPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlEngineExtensionPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlEngineExtensionPlugin_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin(h: fcQQmlEngineExtensionPlugin_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlEngineExtensionPluginVTable = nil): gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin =
  let vtbl = if vtbl == nil: new QQmlEngineExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlEngineExtensionPluginVTable, _: ptr cQQmlEngineExtensionPlugin) {.cdecl.} =
    let vtbl = cast[ref QQmlEngineExtensionPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlEngineExtensionPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlEngineExtensionPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlEngineExtensionPlugin_metacall
  if not isNil(vtbl.initializeEngine):
    vtbl[].vtbl.initializeEngine = miqt_exec_callback_cQQmlEngineExtensionPlugin_initializeEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlEngineExtensionPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlEngineExtensionPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlEngineExtensionPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlEngineExtensionPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlEngineExtensionPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlEngineExtensionPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlEngineExtensionPlugin_disconnectNotify
  gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin(h: fcQQmlEngineExtensionPlugin_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlEngineExtensionPlugin_staticMetaObject())
proc delete*(self: gen_qqmlextensionplugin_types.QQmlEngineExtensionPlugin) =
  fcQQmlEngineExtensionPlugin_delete(self.h)
