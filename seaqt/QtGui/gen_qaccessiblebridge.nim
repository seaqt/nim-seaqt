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


import ./gen_qaccessiblebridge_types
export gen_qaccessiblebridge_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaccessible_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaccessible_types

type cQAccessibleBridge*{.exportc: "QAccessibleBridge", incompleteStruct.} = object
type cQAccessibleBridgePlugin*{.exportc: "QAccessibleBridgePlugin", incompleteStruct.} = object

proc fcQAccessibleBridge_setRootObject(self: pointer, rootObject: pointer): void {.importc: "QAccessibleBridge_setRootObject".}
proc fcQAccessibleBridge_notifyAccessibilityUpdate(self: pointer, event: pointer): void {.importc: "QAccessibleBridge_notifyAccessibilityUpdate".}
proc fcQAccessibleBridge_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleBridge_operatorAssign".}
proc fcQAccessibleBridgePlugin_metaObject(self: pointer): pointer {.importc: "QAccessibleBridgePlugin_metaObject".}
proc fcQAccessibleBridgePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibleBridgePlugin_metacast".}
proc fcQAccessibleBridgePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibleBridgePlugin_metacall".}
proc fcQAccessibleBridgePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr".}
proc fcQAccessibleBridgePlugin_createX(self: pointer, key: struct_miqt_string): pointer {.importc: "QAccessibleBridgePlugin_create".}
proc fcQAccessibleBridgePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr2".}
proc fcQAccessibleBridgePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr3".}
proc fcQAccessibleBridgePlugin_vtbl(self: pointer): pointer {.importc: "QAccessibleBridgePlugin_vtbl".}
proc fcQAccessibleBridgePlugin_vdata(self: pointer): pointer {.importc: "QAccessibleBridgePlugin_vdata".}
type cQAccessibleBridgePluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createX*: proc(self: pointer, key: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleBridgePlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QAccessibleBridgePlugin_virtualbase_metaObject".}
proc fcQAccessibleBridgePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibleBridgePlugin_virtualbase_metacast".}
proc fcQAccessibleBridgePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibleBridgePlugin_virtualbase_metacall".}
proc fcQAccessibleBridgePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAccessibleBridgePlugin_virtualbase_event".}
proc fcQAccessibleBridgePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAccessibleBridgePlugin_virtualbase_eventFilter".}
proc fcQAccessibleBridgePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_timerEvent".}
proc fcQAccessibleBridgePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_childEvent".}
proc fcQAccessibleBridgePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_customEvent".}
proc fcQAccessibleBridgePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_connectNotify".}
proc fcQAccessibleBridgePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_disconnectNotify".}
proc fcQAccessibleBridgePlugin_protectedbase_sender(self: pointer): pointer {.importc: "QAccessibleBridgePlugin_protectedbase_sender".}
proc fcQAccessibleBridgePlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAccessibleBridgePlugin_protectedbase_senderSignalIndex".}
proc fcQAccessibleBridgePlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAccessibleBridgePlugin_protectedbase_receivers".}
proc fcQAccessibleBridgePlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAccessibleBridgePlugin_protectedbase_isSignalConnected".}
proc fcQAccessibleBridgePlugin_new(vtbl, vdata: pointer): ptr cQAccessibleBridgePlugin {.importc: "QAccessibleBridgePlugin_new".}
proc fcQAccessibleBridgePlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAccessibleBridgePlugin {.importc: "QAccessibleBridgePlugin_new2".}
proc fcQAccessibleBridgePlugin_staticMetaObject(): pointer {.importc: "QAccessibleBridgePlugin_staticMetaObject".}

proc setRootObject*(self: gen_qaccessiblebridge_types.QAccessibleBridge, rootObject: gen_qaccessible_types.QAccessibleInterface): void =
  fcQAccessibleBridge_setRootObject(self.h, rootObject.h)

proc notifyAccessibilityUpdate*(self: gen_qaccessiblebridge_types.QAccessibleBridge, event: gen_qaccessible_types.QAccessibleEvent): void =
  fcQAccessibleBridge_notifyAccessibilityUpdate(self.h, event.h)

proc operatorAssign*(self: gen_qaccessiblebridge_types.QAccessibleBridge, param1: gen_qaccessiblebridge_types.QAccessibleBridge): void =
  fcQAccessibleBridge_operatorAssign(self.h, param1.h)

proc metaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibleBridgePlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cstring): pointer =
  fcQAccessibleBridgePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessibleBridgePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring): string =
  let v_ms = fcQAccessibleBridgePlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, key: openArray[char]): gen_qaccessiblebridge_types.QAccessibleBridge =
  gen_qaccessiblebridge_types.QAccessibleBridge(h: fcQAccessibleBridgePlugin_createX(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: false)

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessibleBridgePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessibleBridgePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAccessibleBridgePluginmetaObjectProc* = proc(self: QAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAccessibleBridgePluginmetacastProc* = proc(self: QAccessibleBridgePlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QAccessibleBridgePluginmetacallProc* = proc(self: QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAccessibleBridgePlugincreateXProc* = proc(self: QAccessibleBridgePlugin, key: openArray[char]): gen_qaccessiblebridge_types.QAccessibleBridge {.raises: [], gcsafe.}
type QAccessibleBridgePlugineventProc* = proc(self: QAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessibleBridgePlugineventFilterProc* = proc(self: QAccessibleBridgePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessibleBridgePlugintimerEventProc* = proc(self: QAccessibleBridgePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAccessibleBridgePluginchildEventProc* = proc(self: QAccessibleBridgePlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAccessibleBridgePlugincustomEventProc* = proc(self: QAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAccessibleBridgePluginconnectNotifyProc* = proc(self: QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAccessibleBridgePlugindisconnectNotifyProc* = proc(self: QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAccessibleBridgePluginVTable* {.inheritable, pure.} = object
  vtbl: cQAccessibleBridgePluginVTable
  metaObject*: QAccessibleBridgePluginmetaObjectProc
  metacast*: QAccessibleBridgePluginmetacastProc
  metacall*: QAccessibleBridgePluginmetacallProc
  createX*: QAccessibleBridgePlugincreateXProc
  event*: QAccessibleBridgePlugineventProc
  eventFilter*: QAccessibleBridgePlugineventFilterProc
  timerEvent*: QAccessibleBridgePlugintimerEventProc
  childEvent*: QAccessibleBridgePluginchildEventProc
  customEvent*: QAccessibleBridgePlugincustomEventProc
  connectNotify*: QAccessibleBridgePluginconnectNotifyProc
  disconnectNotify*: QAccessibleBridgePlugindisconnectNotifyProc
proc QAccessibleBridgePluginmetaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibleBridgePlugin_virtualbase_metaObject(self.h), owned: false)

proc cQAccessibleBridgePlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAccessibleBridgePluginmetacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cstring): pointer =
  fcQAccessibleBridgePlugin_virtualbase_metacast(self.h, param1)

proc cQAccessibleBridgePlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAccessibleBridgePluginmetacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessibleBridgePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAccessibleBridgePlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQAccessibleBridgePlugin_vtable_callback_createX(self: pointer, key: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl[].createX(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAccessibleBridgePluginevent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessibleBridgePlugin_virtualbase_event(self.h, event.h)

proc cQAccessibleBridgePlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAccessibleBridgePlugineventFilter*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessibleBridgePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAccessibleBridgePlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAccessibleBridgePlugintimerEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAccessibleBridgePlugin_virtualbase_timerEvent(self.h, event.h)

proc cQAccessibleBridgePlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAccessibleBridgePluginchildEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAccessibleBridgePlugin_virtualbase_childEvent(self.h, event.h)

proc cQAccessibleBridgePlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAccessibleBridgePlugincustomEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQAccessibleBridgePlugin_virtualbase_customEvent(self.h, event.h)

proc cQAccessibleBridgePlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAccessibleBridgePluginconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessibleBridgePlugin_virtualbase_connectNotify(self.h, signal.h)

proc cQAccessibleBridgePlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAccessibleBridgePlugindisconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessibleBridgePlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAccessibleBridgePlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAccessibleBridgePlugin* {.inheritable.} = ref object of QAccessibleBridgePlugin
  vtbl*: cQAccessibleBridgePluginVTable
method metaObject*(self: VirtualQAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAccessibleBridgePluginmetaObject(self[])
proc cQAccessibleBridgePlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAccessibleBridgePlugin, param1: cstring): pointer {.base.} =
  QAccessibleBridgePluginmetacast(self[], param1)
proc cQAccessibleBridgePlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAccessibleBridgePluginmetacall(self[], param1, param2, param3)
proc cQAccessibleBridgePlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method createX*(self: VirtualQAccessibleBridgePlugin, key: openArray[char]): gen_qaccessiblebridge_types.QAccessibleBridge {.base.} =
  raiseAssert("missing implementation of QAccessibleBridgePlugin_virtualbase_create")
proc cQAccessibleBridgePlugin_method_callback_createX(self: pointer, key: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = inst.createX(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessibleBridgePluginevent(self[], event)
proc cQAccessibleBridgePlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAccessibleBridgePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessibleBridgePlugineventFilter(self[], watched, event)
proc cQAccessibleBridgePlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAccessibleBridgePlugintimerEvent(self[], event)
proc cQAccessibleBridgePlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAccessibleBridgePluginchildEvent(self[], event)
proc cQAccessibleBridgePlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAccessibleBridgePlugincustomEvent(self[], event)
proc cQAccessibleBridgePlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessibleBridgePluginconnectNotify(self[], signal)
proc cQAccessibleBridgePlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessibleBridgePlugindisconnectNotify(self[], signal)
proc cQAccessibleBridgePlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibleBridgePlugin](fcQAccessibleBridgePlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibleBridgePlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin): cint =
  fcQAccessibleBridgePlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: cstring): cint =
  fcQAccessibleBridgePlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAccessibleBridgePlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    vtbl: ref QAccessibleBridgePluginVTable = nil): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =
  let vtbl = if vtbl == nil: new QAccessibleBridgePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAccessibleBridgePlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAccessibleBridgePlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAccessibleBridgePlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = cQAccessibleBridgePlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAccessibleBridgePlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAccessibleBridgePlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAccessibleBridgePlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAccessibleBridgePlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAccessibleBridgePlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAccessibleBridgePlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAccessibleBridgePlugin_vtable_callback_disconnectNotify
  gen_qaccessiblebridge_types.QAccessibleBridgePlugin(h: fcQAccessibleBridgePlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAccessibleBridgePluginVTable = nil): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =
  let vtbl = if vtbl == nil: new QAccessibleBridgePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAccessibleBridgePluginVTable](fcQAccessibleBridgePlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAccessibleBridgePlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAccessibleBridgePlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAccessibleBridgePlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = cQAccessibleBridgePlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAccessibleBridgePlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAccessibleBridgePlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAccessibleBridgePlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAccessibleBridgePlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAccessibleBridgePlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAccessibleBridgePlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAccessibleBridgePlugin_vtable_callback_disconnectNotify
  gen_qaccessiblebridge_types.QAccessibleBridgePlugin(h: fcQAccessibleBridgePlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAccessibleBridgePlugin_mvtbl = cQAccessibleBridgePluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAccessibleBridgePlugin()[])](self.fcQAccessibleBridgePlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAccessibleBridgePlugin_method_callback_metaObject,
  metacast: cQAccessibleBridgePlugin_method_callback_metacast,
  metacall: cQAccessibleBridgePlugin_method_callback_metacall,
  createX: cQAccessibleBridgePlugin_method_callback_createX,
  event: cQAccessibleBridgePlugin_method_callback_event,
  eventFilter: cQAccessibleBridgePlugin_method_callback_eventFilter,
  timerEvent: cQAccessibleBridgePlugin_method_callback_timerEvent,
  childEvent: cQAccessibleBridgePlugin_method_callback_childEvent,
  customEvent: cQAccessibleBridgePlugin_method_callback_customEvent,
  connectNotify: cQAccessibleBridgePlugin_method_callback_connectNotify,
  disconnectNotify: cQAccessibleBridgePlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    inst: VirtualQAccessibleBridgePlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAccessibleBridgePlugin_new(addr(cQAccessibleBridgePlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAccessibleBridgePlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAccessibleBridgePlugin_new2(addr(cQAccessibleBridgePlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibleBridgePlugin_staticMetaObject())
