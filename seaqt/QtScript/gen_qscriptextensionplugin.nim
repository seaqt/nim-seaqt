import ./qtscript_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qscriptextensionplugin.cpp", QtScriptCFlags).}


import ./gen_qscriptextensionplugin_types
export gen_qscriptextensionplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qscriptengine_types,
  ./gen_qscriptvalue_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qscriptengine_types,
  gen_qscriptvalue_types

type cQScriptExtensionPlugin*{.exportc: "QScriptExtensionPlugin", incompleteStruct.} = object

proc fcQScriptExtensionPlugin_metaObject(self: pointer): pointer {.importc: "QScriptExtensionPlugin_metaObject".}
proc fcQScriptExtensionPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QScriptExtensionPlugin_metacast".}
proc fcQScriptExtensionPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScriptExtensionPlugin_metacall".}
proc fcQScriptExtensionPlugin_tr(s: cstring): struct_seaqt_string {.importc: "QScriptExtensionPlugin_tr".}
proc fcQScriptExtensionPlugin_trUtf8(s: cstring): struct_seaqt_string {.importc: "QScriptExtensionPlugin_trUtf8".}
proc fcQScriptExtensionPlugin_keys(self: pointer): struct_seaqt_array {.importc: "QScriptExtensionPlugin_keys".}
proc fcQScriptExtensionPlugin_initialize(self: pointer, key: struct_seaqt_string, engine: pointer): void {.importc: "QScriptExtensionPlugin_initialize".}
proc fcQScriptExtensionPlugin_setupPackage(self: pointer, key: struct_seaqt_string, engine: pointer): pointer {.importc: "QScriptExtensionPlugin_setupPackage".}
proc fcQScriptExtensionPlugin_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QScriptExtensionPlugin_tr2".}
proc fcQScriptExtensionPlugin_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QScriptExtensionPlugin_tr3".}
proc fcQScriptExtensionPlugin_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QScriptExtensionPlugin_trUtf82".}
proc fcQScriptExtensionPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QScriptExtensionPlugin_trUtf83".}
proc fcQScriptExtensionPlugin_vdata(self: pointer): ptr pointer {.importc: "QScriptExtensionPlugin_vdata".}
proc fvdata_cQScriptExtensionPlugin(self: pointer): pointer {.importc: "vdata_QScriptExtensionPlugin".}

type cQScriptExtensionPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  keys*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  initialize*: proc(self: pointer, key: struct_seaqt_string, engine: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQScriptExtensionPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QScriptExtensionPlugin_virtualbase_metaObject".}
proc fcQScriptExtensionPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QScriptExtensionPlugin_virtualbase_metacast".}
proc fcQScriptExtensionPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScriptExtensionPlugin_virtualbase_metacall".}
proc fcQScriptExtensionPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QScriptExtensionPlugin_virtualbase_event".}
proc fcQScriptExtensionPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QScriptExtensionPlugin_virtualbase_eventFilter".}
proc fcQScriptExtensionPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QScriptExtensionPlugin_virtualbase_timerEvent".}
proc fcQScriptExtensionPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QScriptExtensionPlugin_virtualbase_childEvent".}
proc fcQScriptExtensionPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QScriptExtensionPlugin_virtualbase_customEvent".}
proc fcQScriptExtensionPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QScriptExtensionPlugin_virtualbase_connectNotify".}
proc fcQScriptExtensionPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QScriptExtensionPlugin_virtualbase_disconnectNotify".}
proc fcQScriptExtensionPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QScriptExtensionPlugin_protectedbase_sender".}
proc fcQScriptExtensionPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QScriptExtensionPlugin_protectedbase_senderSignalIndex".}
proc fcQScriptExtensionPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScriptExtensionPlugin_protectedbase_receivers".}
proc fcQScriptExtensionPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScriptExtensionPlugin_protectedbase_isSignalConnected".}
proc fcQScriptExtensionPlugin_new(vtbl: pointer, vdata: csize_t): ptr cQScriptExtensionPlugin {.importc: "QScriptExtensionPlugin_new".}
proc fcQScriptExtensionPlugin_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQScriptExtensionPlugin {.importc: "QScriptExtensionPlugin_new2".}
proc fcQScriptExtensionPlugin_staticMetaObject(): pointer {.importc: "QScriptExtensionPlugin_staticMetaObject".}
proc fcQScriptExtensionPlugin_delete(self: pointer) {.importc: "QScriptExtensionPlugin_delete".}

proc metaObject*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScriptExtensionPlugin_metaObject(self.h))

proc metacast*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cstring): pointer =
  fcQScriptExtensionPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQScriptExtensionPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring): string =
  let v_ms = fcQScriptExtensionPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring): string =
  let v_ms = fcQScriptExtensionPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc keys*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin): seq[string] =
  var v_ma = fcQScriptExtensionPlugin_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc initialize*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): void =
  fcQScriptExtensionPlugin_initialize(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), engine.h)

proc setupPackage*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptExtensionPlugin_setupPackage(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), engine.h))

proc tr*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQScriptExtensionPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScriptExtensionPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQScriptExtensionPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScriptExtensionPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QScriptExtensionPluginmetaObjectProc* = proc(self: QScriptExtensionPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QScriptExtensionPluginmetacastProc* = proc(self: QScriptExtensionPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QScriptExtensionPluginmetacallProc* = proc(self: QScriptExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QScriptExtensionPluginkeysProc* = proc(self: QScriptExtensionPlugin): seq[string] {.raises: [], gcsafe.}
type QScriptExtensionPlugininitializeProc* = proc(self: QScriptExtensionPlugin, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): void {.raises: [], gcsafe.}
type QScriptExtensionPlugineventProc* = proc(self: QScriptExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScriptExtensionPlugineventFilterProc* = proc(self: QScriptExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScriptExtensionPlugintimerEventProc* = proc(self: QScriptExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QScriptExtensionPluginchildEventProc* = proc(self: QScriptExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QScriptExtensionPlugincustomEventProc* = proc(self: QScriptExtensionPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScriptExtensionPluginconnectNotifyProc* = proc(self: QScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScriptExtensionPlugindisconnectNotifyProc* = proc(self: QScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScriptExtensionPluginVTable* = object
  vtbl: cQScriptExtensionPluginVTable
  metaObject*: QScriptExtensionPluginmetaObjectProc
  metacast*: QScriptExtensionPluginmetacastProc
  metacall*: QScriptExtensionPluginmetacallProc
  keys*: QScriptExtensionPluginkeysProc
  initialize*: QScriptExtensionPlugininitializeProc
  event*: QScriptExtensionPlugineventProc
  eventFilter*: QScriptExtensionPlugineventFilterProc
  timerEvent*: QScriptExtensionPlugintimerEventProc
  childEvent*: QScriptExtensionPluginchildEventProc
  customEvent*: QScriptExtensionPlugincustomEventProc
  connectNotify*: QScriptExtensionPluginconnectNotifyProc
  disconnectNotify*: QScriptExtensionPlugindisconnectNotifyProc

proc QScriptExtensionPluginmetaObject*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScriptExtensionPlugin_virtualbase_metaObject(self.h))

proc QScriptExtensionPluginmetacast*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cstring): pointer =
  fcQScriptExtensionPlugin_virtualbase_metacast(self.h, param1)

proc QScriptExtensionPluginmetacall*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQScriptExtensionPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QScriptExtensionPluginevent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQScriptExtensionPlugin_virtualbase_event(self.h, event.h)

proc QScriptExtensionPlugineventFilter*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQScriptExtensionPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QScriptExtensionPlugintimerEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQScriptExtensionPlugin_virtualbase_timerEvent(self.h, event.h)

proc QScriptExtensionPluginchildEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQScriptExtensionPlugin_virtualbase_childEvent(self.h, event.h)

proc QScriptExtensionPlugincustomEvent*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQScriptExtensionPlugin_virtualbase_customEvent(self.h, event.h)

proc QScriptExtensionPluginconnectNotify*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScriptExtensionPlugin_virtualbase_connectNotify(self.h, signal.h)

proc QScriptExtensionPlugindisconnectNotify*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScriptExtensionPlugin_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQScriptExtensionPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQScriptExtensionPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQScriptExtensionPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQScriptExtensionPlugin_vtable_callback_keys(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  var virtualReturn = vtbl[].keys(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQScriptExtensionPlugin_vtable_callback_initialize(self: pointer, key: struct_seaqt_string, engine: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qscriptengine_types.QScriptEngine(h: engine)
  vtbl[].initialize(self, slotval1, slotval2)

proc fcQScriptExtensionPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQScriptExtensionPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQScriptExtensionPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQScriptExtensionPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQScriptExtensionPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQScriptExtensionPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQScriptExtensionPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
  let self = QScriptExtensionPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQScriptExtensionPlugin* {.inheritable.} = ref object of QScriptExtensionPlugin
  vtbl*: cQScriptExtensionPluginVTable

method metaObject*(self: VirtualQScriptExtensionPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QScriptExtensionPluginmetaObject(self[])
method metacast*(self: VirtualQScriptExtensionPlugin, param1: cstring): pointer {.base.} =
  QScriptExtensionPluginmetacast(self[], param1)
method metacall*(self: VirtualQScriptExtensionPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QScriptExtensionPluginmetacall(self[], param1, param2, param3)
method keys*(self: VirtualQScriptExtensionPlugin): seq[string] {.base.} =
  raiseAssert("missing implementation of QScriptExtensionPlugin.keys")
method initialize*(self: VirtualQScriptExtensionPlugin, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): void {.base.} =
  raiseAssert("missing implementation of QScriptExtensionPlugin.initialize")
method event*(self: VirtualQScriptExtensionPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScriptExtensionPluginevent(self[], event)
method eventFilter*(self: VirtualQScriptExtensionPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScriptExtensionPlugineventFilter(self[], watched, event)
method timerEvent*(self: VirtualQScriptExtensionPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QScriptExtensionPlugintimerEvent(self[], event)
method childEvent*(self: VirtualQScriptExtensionPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QScriptExtensionPluginchildEvent(self[], event)
method customEvent*(self: VirtualQScriptExtensionPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QScriptExtensionPlugincustomEvent(self[], event)
method connectNotify*(self: VirtualQScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScriptExtensionPluginconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScriptExtensionPlugindisconnectNotify(self[], signal)

proc fcQScriptExtensionPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQScriptExtensionPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQScriptExtensionPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQScriptExtensionPlugin_method_callback_keys(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  var virtualReturn = inst.keys()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQScriptExtensionPlugin_method_callback_initialize(self: pointer, key: struct_seaqt_string, engine: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qscriptengine_types.QScriptEngine(h: engine)
  inst.initialize(slotval1, slotval2)

proc fcQScriptExtensionPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQScriptExtensionPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQScriptExtensionPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQScriptExtensionPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQScriptExtensionPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQScriptExtensionPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQScriptExtensionPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionPlugin](fcQScriptExtensionPlugin_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScriptExtensionPlugin_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin): cint =
  fcQScriptExtensionPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, signal: cstring): cint =
  fcQScriptExtensionPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQScriptExtensionPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin,
    vtbl: ref QScriptExtensionPluginVTable = nil): gen_qscriptextensionplugin_types.QScriptExtensionPlugin =
  let vtbl = if vtbl == nil: new QScriptExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQScriptExtensionPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQScriptExtensionPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQScriptExtensionPlugin_vtable_callback_metacall
  if not isNil(vtbl[].keys):
    vtbl[].vtbl.keys = fcQScriptExtensionPlugin_vtable_callback_keys
  if not isNil(vtbl[].initialize):
    vtbl[].vtbl.initialize = fcQScriptExtensionPlugin_vtable_callback_initialize
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQScriptExtensionPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQScriptExtensionPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQScriptExtensionPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQScriptExtensionPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQScriptExtensionPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQScriptExtensionPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQScriptExtensionPlugin_vtable_callback_disconnectNotify
  let tmp = gen_qscriptextensionplugin_types.QScriptExtensionPlugin(h: fcQScriptExtensionPlugin_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQScriptExtensionPlugin_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QScriptExtensionPluginVTable = nil): gen_qscriptextensionplugin_types.QScriptExtensionPlugin =
  let vtbl = if vtbl == nil: new QScriptExtensionPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScriptExtensionPluginVTable](fcQScriptExtensionPlugin_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQScriptExtensionPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQScriptExtensionPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQScriptExtensionPlugin_vtable_callback_metacall
  if not isNil(vtbl[].keys):
    vtbl[].vtbl.keys = fcQScriptExtensionPlugin_vtable_callback_keys
  if not isNil(vtbl[].initialize):
    vtbl[].vtbl.initialize = fcQScriptExtensionPlugin_vtable_callback_initialize
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQScriptExtensionPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQScriptExtensionPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQScriptExtensionPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQScriptExtensionPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQScriptExtensionPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQScriptExtensionPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQScriptExtensionPlugin_vtable_callback_disconnectNotify
  let tmp = gen_qscriptextensionplugin_types.QScriptExtensionPlugin(h: fcQScriptExtensionPlugin_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQScriptExtensionPlugin_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQScriptExtensionPlugin_mvtbl = cQScriptExtensionPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScriptExtensionPlugin()[])](self.fcQScriptExtensionPlugin_vdata()[])
    inst[].h = nil,

  metaObject: fcQScriptExtensionPlugin_method_callback_metaObject,
  metacast: fcQScriptExtensionPlugin_method_callback_metacast,
  metacall: fcQScriptExtensionPlugin_method_callback_metacall,
  keys: fcQScriptExtensionPlugin_method_callback_keys,
  initialize: fcQScriptExtensionPlugin_method_callback_initialize,
  event: fcQScriptExtensionPlugin_method_callback_event,
  eventFilter: fcQScriptExtensionPlugin_method_callback_eventFilter,
  timerEvent: fcQScriptExtensionPlugin_method_callback_timerEvent,
  childEvent: fcQScriptExtensionPlugin_method_callback_childEvent,
  customEvent: fcQScriptExtensionPlugin_method_callback_customEvent,
  connectNotify: fcQScriptExtensionPlugin_method_callback_connectNotify,
  disconnectNotify: fcQScriptExtensionPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin,
    inst: VirtualQScriptExtensionPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScriptExtensionPlugin_new(addr(cQScriptExtensionPlugin_mvtbl), csize_t(sizeof(pointer)))
  fcQScriptExtensionPlugin_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQScriptExtensionPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScriptExtensionPlugin_new2(addr(cQScriptExtensionPlugin_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQScriptExtensionPlugin_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qscriptextensionplugin_types.QScriptExtensionPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScriptExtensionPlugin_staticMetaObject())
proc delete*(self: gen_qscriptextensionplugin_types.QScriptExtensionPlugin) =
  fcQScriptExtensionPlugin_delete(self.h)
