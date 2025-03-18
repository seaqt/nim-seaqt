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


{.compile("gen_qaccessibleplugin.cpp", QtGuiCFlags).}


import ./gen_qaccessibleplugin_types
export gen_qaccessibleplugin_types

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

type cQAccessiblePlugin*{.exportc: "QAccessiblePlugin", incompleteStruct.} = object

proc fcQAccessiblePlugin_metaObject(self: pointer): pointer {.importc: "QAccessiblePlugin_metaObject".}
proc fcQAccessiblePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessiblePlugin_metacast".}
proc fcQAccessiblePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessiblePlugin_metacall".}
proc fcQAccessiblePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr".}
proc fcQAccessiblePlugin_createX(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.importc: "QAccessiblePlugin_create".}
proc fcQAccessiblePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr2".}
proc fcQAccessiblePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessiblePlugin_tr3".}
proc fcQAccessiblePlugin_vtbl(self: pointer): pointer {.importc: "QAccessiblePlugin_vtbl".}
proc fcQAccessiblePlugin_vdata(self: pointer): pointer {.importc: "QAccessiblePlugin_vdata".}

type cQAccessiblePluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createX*: proc(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAccessiblePlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QAccessiblePlugin_virtualbase_metaObject".}
proc fcQAccessiblePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessiblePlugin_virtualbase_metacast".}
proc fcQAccessiblePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessiblePlugin_virtualbase_metacall".}
proc fcQAccessiblePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAccessiblePlugin_virtualbase_event".}
proc fcQAccessiblePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAccessiblePlugin_virtualbase_eventFilter".}
proc fcQAccessiblePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAccessiblePlugin_virtualbase_timerEvent".}
proc fcQAccessiblePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAccessiblePlugin_virtualbase_childEvent".}
proc fcQAccessiblePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAccessiblePlugin_virtualbase_customEvent".}
proc fcQAccessiblePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAccessiblePlugin_virtualbase_connectNotify".}
proc fcQAccessiblePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAccessiblePlugin_virtualbase_disconnectNotify".}
proc fcQAccessiblePlugin_protectedbase_sender(self: pointer): pointer {.importc: "QAccessiblePlugin_protectedbase_sender".}
proc fcQAccessiblePlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAccessiblePlugin_protectedbase_senderSignalIndex".}
proc fcQAccessiblePlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAccessiblePlugin_protectedbase_receivers".}
proc fcQAccessiblePlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAccessiblePlugin_protectedbase_isSignalConnected".}
proc fcQAccessiblePlugin_new(vtbl, vdata: pointer): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new".}
proc fcQAccessiblePlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new2".}
proc fcQAccessiblePlugin_staticMetaObject(): pointer {.importc: "QAccessiblePlugin_staticMetaObject".}

proc metaObject*(self: gen_qaccessibleplugin_types.QAccessiblePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cstring): pointer =
  fcQAccessiblePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessiblePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring): string =
  let v_ms = fcQAccessiblePlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, key: openArray[char], objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessiblePlugin_createX(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), objectVal.h), owned: false)

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessiblePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessiblePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAccessiblePluginmetaObjectProc* = proc(self: QAccessiblePlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAccessiblePluginmetacastProc* = proc(self: QAccessiblePlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QAccessiblePluginmetacallProc* = proc(self: QAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAccessiblePlugincreateXProc* = proc(self: QAccessiblePlugin, key: openArray[char], objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessiblePlugineventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessiblePlugineventFilterProc* = proc(self: QAccessiblePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessiblePlugintimerEventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAccessiblePluginchildEventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAccessiblePlugincustomEventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAccessiblePluginconnectNotifyProc* = proc(self: QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAccessiblePlugindisconnectNotifyProc* = proc(self: QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAccessiblePluginVTable* {.inheritable, pure.} = object
  vtbl: cQAccessiblePluginVTable
  metaObject*: QAccessiblePluginmetaObjectProc
  metacast*: QAccessiblePluginmetacastProc
  metacall*: QAccessiblePluginmetacallProc
  createX*: QAccessiblePlugincreateXProc
  event*: QAccessiblePlugineventProc
  eventFilter*: QAccessiblePlugineventFilterProc
  timerEvent*: QAccessiblePlugintimerEventProc
  childEvent*: QAccessiblePluginchildEventProc
  customEvent*: QAccessiblePlugincustomEventProc
  connectNotify*: QAccessiblePluginconnectNotifyProc
  disconnectNotify*: QAccessiblePlugindisconnectNotifyProc

proc QAccessiblePluginmetaObject*(self: gen_qaccessibleplugin_types.QAccessiblePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_virtualbase_metaObject(self.h), owned: false)

proc QAccessiblePluginmetacast*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cstring): pointer =
  fcQAccessiblePlugin_virtualbase_metacast(self.h, param1)

proc QAccessiblePluginmetacall*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessiblePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAccessiblePluginevent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessiblePlugin_virtualbase_event(self.h, event.h)

proc QAccessiblePlugineventFilter*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessiblePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAccessiblePlugintimerEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAccessiblePlugin_virtualbase_timerEvent(self.h, event.h)

proc QAccessiblePluginchildEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAccessiblePlugin_virtualbase_childEvent(self.h, event.h)

proc QAccessiblePlugincustomEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQAccessiblePlugin_virtualbase_customEvent(self.h, event.h)

proc QAccessiblePluginconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessiblePlugin_virtualbase_connectNotify(self.h, signal.h)

proc QAccessiblePlugindisconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessiblePlugin_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAccessiblePlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAccessiblePlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAccessiblePlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAccessiblePlugin_vtable_callback_createX(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qobject_types.QObject(h: objectVal, owned: false)
  var virtualReturn = vtbl[].createX(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAccessiblePlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAccessiblePlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAccessiblePlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAccessiblePlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAccessiblePlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAccessiblePlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAccessiblePlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAccessiblePlugin* {.inheritable.} = ref object of QAccessiblePlugin
  vtbl*: cQAccessiblePluginVTable

method metaObject*(self: VirtualQAccessiblePlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAccessiblePluginmetaObject(self[])
method metacast*(self: VirtualQAccessiblePlugin, param1: cstring): pointer {.base.} =
  QAccessiblePluginmetacast(self[], param1)
method metacall*(self: VirtualQAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAccessiblePluginmetacall(self[], param1, param2, param3)
method createX*(self: VirtualQAccessiblePlugin, key: openArray[char], objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface {.base.} =
  raiseAssert("missing implementation of QAccessiblePlugin.createX")
method event*(self: VirtualQAccessiblePlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessiblePluginevent(self[], event)
method eventFilter*(self: VirtualQAccessiblePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessiblePlugineventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAccessiblePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAccessiblePlugintimerEvent(self[], event)
method childEvent*(self: VirtualQAccessiblePlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAccessiblePluginchildEvent(self[], event)
method customEvent*(self: VirtualQAccessiblePlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAccessiblePlugincustomEvent(self[], event)
method connectNotify*(self: VirtualQAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessiblePluginconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessiblePlugindisconnectNotify(self[], signal)

proc fcQAccessiblePlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAccessiblePlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAccessiblePlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAccessiblePlugin_method_callback_createX(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qobject_types.QObject(h: objectVal, owned: false)
  var virtualReturn = inst.createX(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAccessiblePlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAccessiblePlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAccessiblePlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAccessiblePlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAccessiblePlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAccessiblePlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAccessiblePlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessiblePlugin](fcQAccessiblePlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaccessibleplugin_types.QAccessiblePlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessiblePlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaccessibleplugin_types.QAccessiblePlugin): cint =
  fcQAccessiblePlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: cstring): cint =
  fcQAccessiblePlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAccessiblePlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin,
    vtbl: ref QAccessiblePluginVTable = nil): gen_qaccessibleplugin_types.QAccessiblePlugin =
  let vtbl = if vtbl == nil: new QAccessiblePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAccessiblePlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAccessiblePlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAccessiblePlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQAccessiblePlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAccessiblePlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAccessiblePlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAccessiblePlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAccessiblePlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAccessiblePlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAccessiblePlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAccessiblePlugin_vtable_callback_disconnectNotify
  gen_qaccessibleplugin_types.QAccessiblePlugin(h: fcQAccessiblePlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAccessiblePluginVTable = nil): gen_qaccessibleplugin_types.QAccessiblePlugin =
  let vtbl = if vtbl == nil: new QAccessiblePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAccessiblePluginVTable](fcQAccessiblePlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAccessiblePlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAccessiblePlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAccessiblePlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQAccessiblePlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAccessiblePlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAccessiblePlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAccessiblePlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAccessiblePlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAccessiblePlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAccessiblePlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAccessiblePlugin_vtable_callback_disconnectNotify
  gen_qaccessibleplugin_types.QAccessiblePlugin(h: fcQAccessiblePlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAccessiblePlugin_mvtbl = cQAccessiblePluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAccessiblePlugin()[])](self.fcQAccessiblePlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAccessiblePlugin_method_callback_metaObject,
  metacast: fcQAccessiblePlugin_method_callback_metacast,
  metacall: fcQAccessiblePlugin_method_callback_metacall,
  createX: fcQAccessiblePlugin_method_callback_createX,
  event: fcQAccessiblePlugin_method_callback_event,
  eventFilter: fcQAccessiblePlugin_method_callback_eventFilter,
  timerEvent: fcQAccessiblePlugin_method_callback_timerEvent,
  childEvent: fcQAccessiblePlugin_method_callback_childEvent,
  customEvent: fcQAccessiblePlugin_method_callback_customEvent,
  connectNotify: fcQAccessiblePlugin_method_callback_connectNotify,
  disconnectNotify: fcQAccessiblePlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin,
    inst: VirtualQAccessiblePlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAccessiblePlugin_new(addr(cQAccessiblePlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAccessiblePlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAccessiblePlugin_new2(addr(cQAccessiblePlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_staticMetaObject())
