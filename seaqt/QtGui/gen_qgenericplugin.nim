import ./qtgui_pkg

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


{.compile("gen_qgenericplugin.cpp", QtGuiCFlags).}


import ./gen_qgenericplugin_types
export gen_qgenericplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQGenericPlugin*{.exportc: "QGenericPlugin", incompleteStruct.} = object

proc fcQGenericPlugin_metaObject(self: pointer): pointer {.importc: "QGenericPlugin_metaObject".}
proc fcQGenericPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QGenericPlugin_metacast".}
proc fcQGenericPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGenericPlugin_metacall".}
proc fcQGenericPlugin_tr(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr".}
proc fcQGenericPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_trUtf8".}
proc fcQGenericPlugin_createX(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.importc: "QGenericPlugin_create".}
proc fcQGenericPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr2".}
proc fcQGenericPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_tr3".}
proc fcQGenericPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_trUtf82".}
proc fcQGenericPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_trUtf83".}
proc fcQGenericPlugin_vtbl(self: pointer): pointer {.importc: "QGenericPlugin_vtbl".}
proc fcQGenericPlugin_vdata(self: pointer): pointer {.importc: "QGenericPlugin_vdata".}
type cQGenericPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createX*: proc(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGenericPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QGenericPlugin_virtualbase_metaObject".}
proc fcQGenericPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGenericPlugin_virtualbase_metacast".}
proc fcQGenericPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGenericPlugin_virtualbase_metacall".}
proc fcQGenericPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGenericPlugin_virtualbase_event".}
proc fcQGenericPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGenericPlugin_virtualbase_eventFilter".}
proc fcQGenericPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGenericPlugin_virtualbase_timerEvent".}
proc fcQGenericPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGenericPlugin_virtualbase_childEvent".}
proc fcQGenericPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGenericPlugin_virtualbase_customEvent".}
proc fcQGenericPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGenericPlugin_virtualbase_connectNotify".}
proc fcQGenericPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGenericPlugin_virtualbase_disconnectNotify".}
proc fcQGenericPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QGenericPlugin_protectedbase_sender".}
proc fcQGenericPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGenericPlugin_protectedbase_senderSignalIndex".}
proc fcQGenericPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGenericPlugin_protectedbase_receivers".}
proc fcQGenericPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGenericPlugin_protectedbase_isSignalConnected".}
proc fcQGenericPlugin_new(vtbl, vdata: pointer): ptr cQGenericPlugin {.importc: "QGenericPlugin_new".}
proc fcQGenericPlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGenericPlugin {.importc: "QGenericPlugin_new2".}
proc fcQGenericPlugin_staticMetaObject(): pointer {.importc: "QGenericPlugin_staticMetaObject".}

proc metaObject*(self: gen_qgenericplugin_types.QGenericPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cstring): pointer =
  fcQGenericPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQGenericPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring): string =
  let v_ms = fcQGenericPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring): string =
  let v_ms = fcQGenericPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qgenericplugin_types.QGenericPlugin, name: openArray[char], spec: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGenericPlugin_createX(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_miqt_string(data: if len(spec) > 0: addr spec[0] else: nil, len: csize_t(len(spec)))), owned: false)

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQGenericPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGenericPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQGenericPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGenericPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGenericPluginmetaObjectProc* = proc(self: QGenericPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGenericPluginmetacastProc* = proc(self: QGenericPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QGenericPluginmetacallProc* = proc(self: QGenericPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGenericPlugincreateXProc* = proc(self: QGenericPlugin, name: openArray[char], spec: openArray[char]): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QGenericPlugineventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGenericPlugineventFilterProc* = proc(self: QGenericPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGenericPlugintimerEventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGenericPluginchildEventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGenericPlugincustomEventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGenericPluginconnectNotifyProc* = proc(self: QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGenericPlugindisconnectNotifyProc* = proc(self: QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGenericPluginVTable* {.inheritable, pure.} = object
  vtbl: cQGenericPluginVTable
  metaObject*: QGenericPluginmetaObjectProc
  metacast*: QGenericPluginmetacastProc
  metacall*: QGenericPluginmetacallProc
  createX*: QGenericPlugincreateXProc
  event*: QGenericPlugineventProc
  eventFilter*: QGenericPlugineventFilterProc
  timerEvent*: QGenericPlugintimerEventProc
  childEvent*: QGenericPluginchildEventProc
  customEvent*: QGenericPlugincustomEventProc
  connectNotify*: QGenericPluginconnectNotifyProc
  disconnectNotify*: QGenericPlugindisconnectNotifyProc
proc QGenericPluginmetaObject*(self: gen_qgenericplugin_types.QGenericPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_virtualbase_metaObject(self.h), owned: false)

proc cQGenericPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGenericPluginmetacast*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cstring): pointer =
  fcQGenericPlugin_virtualbase_metacast(self.h, param1)

proc cQGenericPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGenericPluginmetacall*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQGenericPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGenericPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQGenericPlugin_vtable_callback_createX(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let vspec_ms = spec
  let vspecx_ret = string.fromBytes(vspec_ms)
  c_free(vspec_ms.data)
  let slotval2 = vspecx_ret
  var virtualReturn = vtbl[].createX(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGenericPluginevent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQGenericPlugin_virtualbase_event(self.h, event.h)

proc cQGenericPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGenericPlugineventFilter*(self: gen_qgenericplugin_types.QGenericPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGenericPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGenericPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGenericPlugintimerEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGenericPlugin_virtualbase_timerEvent(self.h, event.h)

proc cQGenericPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGenericPluginchildEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGenericPlugin_virtualbase_childEvent(self.h, event.h)

proc cQGenericPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGenericPlugincustomEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQGenericPlugin_virtualbase_customEvent(self.h, event.h)

proc cQGenericPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGenericPluginconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGenericPlugin_virtualbase_connectNotify(self.h, signal.h)

proc cQGenericPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGenericPlugindisconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGenericPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGenericPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](fcQGenericPlugin_vdata(self))
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGenericPlugin* {.inheritable.} = ref object of QGenericPlugin
  vtbl*: cQGenericPluginVTable
method metaObject*(self: VirtualQGenericPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGenericPluginmetaObject(self[])
proc cQGenericPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGenericPlugin, param1: cstring): pointer {.base.} =
  QGenericPluginmetacast(self[], param1)
proc cQGenericPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGenericPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGenericPluginmetacall(self[], param1, param2, param3)
proc cQGenericPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method createX*(self: VirtualQGenericPlugin, name: openArray[char], spec: openArray[char]): gen_qobject_types.QObject {.base.} =
  raiseAssert("missing implementation of QGenericPlugin_virtualbase_create")
proc cQGenericPlugin_method_callback_createX(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let vspec_ms = spec
  let vspecx_ret = string.fromBytes(vspec_ms)
  c_free(vspec_ms.data)
  let slotval2 = vspecx_ret
  var virtualReturn = inst.createX(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQGenericPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGenericPluginevent(self[], event)
proc cQGenericPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGenericPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGenericPlugineventFilter(self[], watched, event)
proc cQGenericPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGenericPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGenericPlugintimerEvent(self[], event)
proc cQGenericPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGenericPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGenericPluginchildEvent(self[], event)
proc cQGenericPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGenericPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGenericPlugincustomEvent(self[], event)
proc cQGenericPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGenericPluginconnectNotify(self[], signal)
proc cQGenericPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGenericPlugindisconnectNotify(self[], signal)
proc cQGenericPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGenericPlugin](fcQGenericPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qgenericplugin_types.QGenericPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGenericPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgenericplugin_types.QGenericPlugin): cint =
  fcQGenericPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgenericplugin_types.QGenericPlugin, signal: cstring): cint =
  fcQGenericPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGenericPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgenericplugin_types.QGenericPlugin,
    vtbl: ref QGenericPluginVTable = nil): gen_qgenericplugin_types.QGenericPlugin =
  let vtbl = if vtbl == nil: new QGenericPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGenericPluginVTable](fcQGenericPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGenericPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGenericPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGenericPlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = cQGenericPlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGenericPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGenericPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGenericPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGenericPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGenericPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGenericPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGenericPlugin_vtable_callback_disconnectNotify
  gen_qgenericplugin_types.QGenericPlugin(h: fcQGenericPlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgenericplugin_types.QGenericPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGenericPluginVTable = nil): gen_qgenericplugin_types.QGenericPlugin =
  let vtbl = if vtbl == nil: new QGenericPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGenericPluginVTable](fcQGenericPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGenericPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGenericPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGenericPlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = cQGenericPlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGenericPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGenericPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGenericPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGenericPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGenericPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGenericPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGenericPlugin_vtable_callback_disconnectNotify
  gen_qgenericplugin_types.QGenericPlugin(h: fcQGenericPlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGenericPlugin_mvtbl = cQGenericPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGenericPlugin()[])](self.fcQGenericPlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGenericPlugin_method_callback_metaObject,
  metacast: cQGenericPlugin_method_callback_metacast,
  metacall: cQGenericPlugin_method_callback_metacall,
  createX: cQGenericPlugin_method_callback_createX,
  event: cQGenericPlugin_method_callback_event,
  eventFilter: cQGenericPlugin_method_callback_eventFilter,
  timerEvent: cQGenericPlugin_method_callback_timerEvent,
  childEvent: cQGenericPlugin_method_callback_childEvent,
  customEvent: cQGenericPlugin_method_callback_customEvent,
  connectNotify: cQGenericPlugin_method_callback_connectNotify,
  disconnectNotify: cQGenericPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgenericplugin_types.QGenericPlugin,
    inst: VirtualQGenericPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGenericPlugin_new(addr(cQGenericPlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgenericplugin_types.QGenericPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGenericPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGenericPlugin_new2(addr(cQGenericPlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgenericplugin_types.QGenericPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_staticMetaObject())
