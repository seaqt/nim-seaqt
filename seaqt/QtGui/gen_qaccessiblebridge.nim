import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
proc fcQAccessibleBridgePlugin_metaObject(self: pointer, ): pointer {.importc: "QAccessibleBridgePlugin_metaObject".}
proc fcQAccessibleBridgePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibleBridgePlugin_metacast".}
proc fcQAccessibleBridgePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibleBridgePlugin_metacall".}
proc fcQAccessibleBridgePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr".}
proc fcQAccessibleBridgePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_trUtf8".}
proc fcQAccessibleBridgePlugin_create(self: pointer, key: struct_miqt_string): pointer {.importc: "QAccessibleBridgePlugin_create".}
proc fcQAccessibleBridgePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr2".}
proc fcQAccessibleBridgePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleBridgePlugin_tr3".}
proc fcQAccessibleBridgePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessibleBridgePlugin_trUtf82".}
proc fcQAccessibleBridgePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleBridgePlugin_trUtf83".}
type cQAccessibleBridgePluginVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQAccessibleBridgePluginVTable, self: ptr cQAccessibleBridgePlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(vtbl, self: pointer, key: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleBridgePlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAccessibleBridgePlugin_virtualbase_metaObject".}
proc fcQAccessibleBridgePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibleBridgePlugin_virtualbase_metacast".}
proc fcQAccessibleBridgePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibleBridgePlugin_virtualbase_metacall".}
proc fcQAccessibleBridgePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAccessibleBridgePlugin_virtualbase_event".}
proc fcQAccessibleBridgePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAccessibleBridgePlugin_virtualbase_eventFilter".}
proc fcQAccessibleBridgePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_timerEvent".}
proc fcQAccessibleBridgePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_childEvent".}
proc fcQAccessibleBridgePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_customEvent".}
proc fcQAccessibleBridgePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_connectNotify".}
proc fcQAccessibleBridgePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAccessibleBridgePlugin_virtualbase_disconnectNotify".}
proc fcQAccessibleBridgePlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QAccessibleBridgePlugin_protectedbase_sender".}
proc fcQAccessibleBridgePlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAccessibleBridgePlugin_protectedbase_senderSignalIndex".}
proc fcQAccessibleBridgePlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAccessibleBridgePlugin_protectedbase_receivers".}
proc fcQAccessibleBridgePlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAccessibleBridgePlugin_protectedbase_isSignalConnected".}
proc fcQAccessibleBridgePlugin_new(vtbl: pointer, ): ptr cQAccessibleBridgePlugin {.importc: "QAccessibleBridgePlugin_new".}
proc fcQAccessibleBridgePlugin_new2(vtbl: pointer, parent: pointer): ptr cQAccessibleBridgePlugin {.importc: "QAccessibleBridgePlugin_new2".}
proc fcQAccessibleBridgePlugin_staticMetaObject(): pointer {.importc: "QAccessibleBridgePlugin_staticMetaObject".}

proc setRootObject*(self: gen_qaccessiblebridge_types.QAccessibleBridge, rootObject: gen_qaccessible_types.QAccessibleInterface): void =
  fcQAccessibleBridge_setRootObject(self.h, rootObject.h)

proc notifyAccessibilityUpdate*(self: gen_qaccessiblebridge_types.QAccessibleBridge, event: gen_qaccessible_types.QAccessibleEvent): void =
  fcQAccessibleBridge_notifyAccessibilityUpdate(self.h, event.h)

proc operatorAssign*(self: gen_qaccessiblebridge_types.QAccessibleBridge, param1: gen_qaccessiblebridge_types.QAccessibleBridge): void =
  fcQAccessibleBridge_operatorAssign(self.h, param1.h)

proc metaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibleBridgePlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cstring): pointer =
  fcQAccessibleBridgePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessibleBridgePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring): string =
  let v_ms = fcQAccessibleBridgePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring): string =
  let v_ms = fcQAccessibleBridgePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, key: string): gen_qaccessiblebridge_types.QAccessibleBridge =
  gen_qaccessiblebridge_types.QAccessibleBridge(h: fcQAccessibleBridgePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: false)

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessibleBridgePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessibleBridgePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessibleBridgePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessibleBridgePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAccessibleBridgePluginmetaObjectProc* = proc(self: QAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAccessibleBridgePluginmetacastProc* = proc(self: QAccessibleBridgePlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QAccessibleBridgePluginmetacallProc* = proc(self: QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAccessibleBridgePlugincreateProc* = proc(self: QAccessibleBridgePlugin, key: string): gen_qaccessiblebridge_types.QAccessibleBridge {.raises: [], gcsafe.}
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
  create*: QAccessibleBridgePlugincreateProc
  event*: QAccessibleBridgePlugineventProc
  eventFilter*: QAccessibleBridgePlugineventFilterProc
  timerEvent*: QAccessibleBridgePlugintimerEventProc
  childEvent*: QAccessibleBridgePluginchildEventProc
  customEvent*: QAccessibleBridgePlugincustomEventProc
  connectNotify*: QAccessibleBridgePluginconnectNotifyProc
  disconnectNotify*: QAccessibleBridgePlugindisconnectNotifyProc
proc QAccessibleBridgePluginmetaObject*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibleBridgePlugin_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQAccessibleBridgePlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAccessibleBridgePluginmetacast*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cstring): pointer =
  fcQAccessibleBridgePlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAccessibleBridgePlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAccessibleBridgePluginmetacall*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessibleBridgePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAccessibleBridgePlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAccessibleBridgePlugin_create(vtbl: pointer, self: pointer, key: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAccessibleBridgePluginevent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessibleBridgePlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAccessibleBridgePlugineventFilter*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessibleBridgePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAccessibleBridgePlugintimerEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAccessibleBridgePlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAccessibleBridgePluginchildEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAccessibleBridgePlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAccessibleBridgePlugincustomEvent*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQAccessibleBridgePlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAccessibleBridgePluginconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessibleBridgePlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAccessibleBridgePlugindisconnectNotify*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessibleBridgePlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAccessibleBridgePlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibleBridgePluginVTable](vtbl)
  let self = QAccessibleBridgePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAccessibleBridgePlugin* {.inheritable.} = ref object of QAccessibleBridgePlugin
  vtbl*: cQAccessibleBridgePluginVTable
method metaObject*(self: VirtualQAccessibleBridgePlugin, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAccessibleBridgePluginmetaObject(self[])
proc miqt_exec_method_cQAccessibleBridgePlugin_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAccessibleBridgePlugin, param1: cstring): pointer {.base.} =
  QAccessibleBridgePluginmetacast(self[], param1)
proc miqt_exec_method_cQAccessibleBridgePlugin_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAccessibleBridgePlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAccessibleBridgePluginmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQAccessibleBridgePlugin_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method create*(self: VirtualQAccessibleBridgePlugin, key: string): gen_qaccessiblebridge_types.QAccessibleBridge {.base.} =
  raiseAssert("missing implementation of QAccessibleBridgePlugin_virtualbase_create")
proc miqt_exec_method_cQAccessibleBridgePlugin_create(vtbl: pointer, inst: pointer, key: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl.create(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessibleBridgePluginevent(self[], event)
proc miqt_exec_method_cQAccessibleBridgePlugin_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAccessibleBridgePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessibleBridgePlugineventFilter(self[], watched, event)
proc miqt_exec_method_cQAccessibleBridgePlugin_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAccessibleBridgePlugintimerEvent(self[], event)
proc miqt_exec_method_cQAccessibleBridgePlugin_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAccessibleBridgePluginchildEvent(self[], event)
proc miqt_exec_method_cQAccessibleBridgePlugin_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQAccessibleBridgePlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAccessibleBridgePlugincustomEvent(self[], event)
proc miqt_exec_method_cQAccessibleBridgePlugin_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessibleBridgePluginconnectNotify(self[], signal)
proc miqt_exec_method_cQAccessibleBridgePlugin_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessibleBridgePlugindisconnectNotify(self[], signal)
proc miqt_exec_method_cQAccessibleBridgePlugin_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAccessibleBridgePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibleBridgePlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, ): cint =
  fcQAccessibleBridgePlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: cstring): cint =
  fcQAccessibleBridgePlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaccessiblebridge_types.QAccessibleBridgePlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAccessibleBridgePlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    vtbl: ref QAccessibleBridgePluginVTable = nil): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =
  let vtbl = if vtbl == nil: new QAccessibleBridgePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAccessibleBridgePluginVTable, _: ptr cQAccessibleBridgePlugin) {.cdecl.} =
    let vtbl = cast[ref QAccessibleBridgePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAccessibleBridgePlugin_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAccessibleBridgePlugin_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAccessibleBridgePlugin_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = miqt_exec_callback_cQAccessibleBridgePlugin_create
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAccessibleBridgePlugin_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAccessibleBridgePlugin_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAccessibleBridgePlugin_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAccessibleBridgePlugin_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAccessibleBridgePlugin_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAccessibleBridgePlugin_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAccessibleBridgePlugin_disconnectNotify
  gen_qaccessiblebridge_types.QAccessibleBridgePlugin(h: fcQAccessibleBridgePlugin_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAccessibleBridgePluginVTable = nil): gen_qaccessiblebridge_types.QAccessibleBridgePlugin =
  let vtbl = if vtbl == nil: new QAccessibleBridgePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAccessibleBridgePluginVTable, _: ptr cQAccessibleBridgePlugin) {.cdecl.} =
    let vtbl = cast[ref QAccessibleBridgePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAccessibleBridgePlugin_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAccessibleBridgePlugin_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAccessibleBridgePlugin_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = miqt_exec_callback_cQAccessibleBridgePlugin_create
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAccessibleBridgePlugin_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAccessibleBridgePlugin_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAccessibleBridgePlugin_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAccessibleBridgePlugin_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAccessibleBridgePlugin_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAccessibleBridgePlugin_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAccessibleBridgePlugin_disconnectNotify
  gen_qaccessiblebridge_types.QAccessibleBridgePlugin(h: fcQAccessibleBridgePlugin_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    vtbl: VirtualQAccessibleBridgePlugin) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAccessibleBridgePluginVTable, _: ptr cQAccessibleBridgePlugin) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAccessibleBridgePlugin()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAccessibleBridgePlugin_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAccessibleBridgePlugin_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAccessibleBridgePlugin_metacall
  vtbl[].vtbl.create = miqt_exec_method_cQAccessibleBridgePlugin_create
  vtbl[].vtbl.event = miqt_exec_method_cQAccessibleBridgePlugin_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAccessibleBridgePlugin_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAccessibleBridgePlugin_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAccessibleBridgePlugin_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAccessibleBridgePlugin_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAccessibleBridgePlugin_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAccessibleBridgePlugin_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAccessibleBridgePlugin_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQAccessibleBridgePlugin) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAccessibleBridgePluginVTable, _: ptr cQAccessibleBridgePlugin) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAccessibleBridgePlugin()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAccessibleBridgePlugin, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAccessibleBridgePlugin_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAccessibleBridgePlugin_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAccessibleBridgePlugin_metacall
  vtbl[].vtbl.create = miqt_exec_method_cQAccessibleBridgePlugin_create
  vtbl[].vtbl.event = miqt_exec_method_cQAccessibleBridgePlugin_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAccessibleBridgePlugin_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAccessibleBridgePlugin_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAccessibleBridgePlugin_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAccessibleBridgePlugin_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAccessibleBridgePlugin_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAccessibleBridgePlugin_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAccessibleBridgePlugin_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qaccessiblebridge_types.QAccessibleBridgePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibleBridgePlugin_staticMetaObject())
