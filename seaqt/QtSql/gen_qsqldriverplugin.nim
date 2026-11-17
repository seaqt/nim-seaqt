import ./qtsql_pkg

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


{.compile("gen_qsqldriverplugin.cpp", QtSqlCFlags).}


import ./gen_qsqldriverplugin_types
export gen_qsqldriverplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qsqldriver_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsqldriver_types

type cQSqlDriverPlugin*{.exportc: "QSqlDriverPlugin", incompleteStruct.} = object

proc fcQSqlDriverPlugin_metaObject(self: pointer): pointer {.importc: "QSqlDriverPlugin_metaObject".}
proc fcQSqlDriverPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlDriverPlugin_metacast".}
proc fcQSqlDriverPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlDriverPlugin_metacall".}
proc fcQSqlDriverPlugin_trS(s: cstring): struct_seaqt_string {.importc: "QSqlDriverPlugin_tr_s".}
proc fcQSqlDriverPlugin_createX(self: pointer, key: struct_seaqt_string): pointer {.importc: "QSqlDriverPlugin_create".}
proc fcQSqlDriverPlugin_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QSqlDriverPlugin_tr_s_c".}
proc fcQSqlDriverPlugin_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QSqlDriverPlugin_tr_s_c_n".}
proc fcQSqlDriverPlugin_vdata(self: pointer): ptr pointer {.importc: "QSqlDriverPlugin_vdata".}
proc fvdata_cQSqlDriverPlugin(self: pointer): pointer {.importc: "vdata_QSqlDriverPlugin".}

type cQSqlDriverPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createX*: proc(self: pointer, key: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSqlDriverPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QSqlDriverPlugin_virtualbase_metaObject".}
proc fcQSqlDriverPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSqlDriverPlugin_virtualbase_metacast".}
proc fcQSqlDriverPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSqlDriverPlugin_virtualbase_metacall".}
proc fcQSqlDriverPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSqlDriverPlugin_virtualbase_event".}
proc fcQSqlDriverPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSqlDriverPlugin_virtualbase_eventFilter".}
proc fcQSqlDriverPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSqlDriverPlugin_virtualbase_timerEvent".}
proc fcQSqlDriverPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSqlDriverPlugin_virtualbase_childEvent".}
proc fcQSqlDriverPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSqlDriverPlugin_virtualbase_customEvent".}
proc fcQSqlDriverPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSqlDriverPlugin_virtualbase_connectNotify".}
proc fcQSqlDriverPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSqlDriverPlugin_virtualbase_disconnectNotify".}
proc fcQSqlDriverPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QSqlDriverPlugin_protectedbase_sender".}
proc fcQSqlDriverPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSqlDriverPlugin_protectedbase_senderSignalIndex".}
proc fcQSqlDriverPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSqlDriverPlugin_protectedbase_receivers".}
proc fcQSqlDriverPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSqlDriverPlugin_protectedbase_isSignalConnected".}
proc fcQSqlDriverPlugin_new(vtbl: pointer, vdata: csize_t): ptr cQSqlDriverPlugin {.importc: "QSqlDriverPlugin_new".}
proc fcQSqlDriverPlugin_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQSqlDriverPlugin {.importc: "QSqlDriverPlugin_new_parent".}
proc fcQSqlDriverPlugin_staticMetaObject(): pointer {.importc: "QSqlDriverPlugin_staticMetaObject".}

proc metaObject*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlDriverPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, param1: cstring): pointer =
  fcQSqlDriverPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlDriverPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsqldriverplugin_types.QSqlDriverPlugin, s: cstring): string =
  let v_ms = fcQSqlDriverPlugin_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, key: openArray[char]): gen_qsqldriver_types.QSqlDriver =
  gen_qsqldriver_types.QSqlDriver(h: fcQSqlDriverPlugin_createX(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: false)

proc tr*(_: type gen_qsqldriverplugin_types.QSqlDriverPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQSqlDriverPlugin_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsqldriverplugin_types.QSqlDriverPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSqlDriverPlugin_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSqlDriverPluginmetaObjectProc* = proc(self: QSqlDriverPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSqlDriverPluginmetacastProc* = proc(self: QSqlDriverPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QSqlDriverPluginmetacallProc* = proc(self: QSqlDriverPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSqlDriverPlugincreateXProc* = proc(self: QSqlDriverPlugin, key: openArray[char]): gen_qsqldriver_types.QSqlDriver {.raises: [], gcsafe.}
type QSqlDriverPlugineventProc* = proc(self: QSqlDriverPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlDriverPlugineventFilterProc* = proc(self: QSqlDriverPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSqlDriverPlugintimerEventProc* = proc(self: QSqlDriverPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSqlDriverPluginchildEventProc* = proc(self: QSqlDriverPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSqlDriverPlugincustomEventProc* = proc(self: QSqlDriverPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSqlDriverPluginconnectNotifyProc* = proc(self: QSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSqlDriverPlugindisconnectNotifyProc* = proc(self: QSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSqlDriverPluginVTable* {.inheritable, pure.} = object
  vtbl: cQSqlDriverPluginVTable
  metaObject*: QSqlDriverPluginmetaObjectProc
  metacast*: QSqlDriverPluginmetacastProc
  metacall*: QSqlDriverPluginmetacallProc
  createX*: QSqlDriverPlugincreateXProc
  event*: QSqlDriverPlugineventProc
  eventFilter*: QSqlDriverPlugineventFilterProc
  timerEvent*: QSqlDriverPlugintimerEventProc
  childEvent*: QSqlDriverPluginchildEventProc
  customEvent*: QSqlDriverPlugincustomEventProc
  connectNotify*: QSqlDriverPluginconnectNotifyProc
  disconnectNotify*: QSqlDriverPlugindisconnectNotifyProc

proc QSqlDriverPluginmetaObject*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlDriverPlugin_virtualbase_metaObject(self.h), owned: false)

proc QSqlDriverPluginmetacast*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, param1: cstring): pointer =
  fcQSqlDriverPlugin_virtualbase_metacast(self.h, param1)

proc QSqlDriverPluginmetacall*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQSqlDriverPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSqlDriverPluginevent*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlDriverPlugin_virtualbase_event(self.h, event.h)

proc QSqlDriverPlugineventFilter*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSqlDriverPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSqlDriverPlugintimerEvent*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSqlDriverPlugin_virtualbase_timerEvent(self.h, event.h)

proc QSqlDriverPluginchildEvent*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSqlDriverPlugin_virtualbase_childEvent(self.h, event.h)

proc QSqlDriverPlugincustomEvent*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQSqlDriverPlugin_virtualbase_customEvent(self.h, event.h)

proc QSqlDriverPluginconnectNotify*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlDriverPlugin_virtualbase_connectNotify(self.h, signal.h)

proc QSqlDriverPlugindisconnectNotify*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSqlDriverPlugin_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSqlDriverPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlDriverPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSqlDriverPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlDriverPlugin_vtable_callback_createX(self: pointer, key: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl[].createX(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlDriverPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSqlDriverPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSqlDriverPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSqlDriverPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSqlDriverPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSqlDriverPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSqlDriverPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
  let self = QSqlDriverPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSqlDriverPlugin* {.inheritable.} = ref object of QSqlDriverPlugin
  vtbl*: cQSqlDriverPluginVTable

method metaObject*(self: VirtualQSqlDriverPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSqlDriverPluginmetaObject(self[])
method metacast*(self: VirtualQSqlDriverPlugin, param1: cstring): pointer {.base.} =
  QSqlDriverPluginmetacast(self[], param1)
method metacall*(self: VirtualQSqlDriverPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSqlDriverPluginmetacall(self[], param1, param2, param3)
method createX*(self: VirtualQSqlDriverPlugin, key: openArray[char]): gen_qsqldriver_types.QSqlDriver {.base.} =
  raiseAssert("missing implementation of QSqlDriverPlugin.createX")
method event*(self: VirtualQSqlDriverPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlDriverPluginevent(self[], event)
method eventFilter*(self: VirtualQSqlDriverPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSqlDriverPlugineventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSqlDriverPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSqlDriverPlugintimerEvent(self[], event)
method childEvent*(self: VirtualQSqlDriverPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSqlDriverPluginchildEvent(self[], event)
method customEvent*(self: VirtualQSqlDriverPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSqlDriverPlugincustomEvent(self[], event)
method connectNotify*(self: VirtualQSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlDriverPluginconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSqlDriverPlugindisconnectNotify(self[], signal)

proc fcQSqlDriverPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlDriverPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSqlDriverPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSqlDriverPlugin_method_callback_createX(self: pointer, key: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = inst.createX(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSqlDriverPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSqlDriverPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSqlDriverPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSqlDriverPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSqlDriverPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSqlDriverPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSqlDriverPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSqlDriverPlugin](fcQSqlDriverPlugin_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSqlDriverPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin): cint =
  fcQSqlDriverPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, signal: cstring): cint =
  fcQSqlDriverPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsqldriverplugin_types.QSqlDriverPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSqlDriverPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsqldriverplugin_types.QSqlDriverPlugin,
    vtbl: ref QSqlDriverPluginVTable = nil): gen_qsqldriverplugin_types.QSqlDriverPlugin =
  let vtbl = if vtbl == nil: new QSqlDriverPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlDriverPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlDriverPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlDriverPlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQSqlDriverPlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlDriverPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlDriverPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlDriverPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlDriverPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlDriverPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlDriverPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlDriverPlugin_vtable_callback_disconnectNotify
  let tmp = gen_qsqldriverplugin_types.QSqlDriverPlugin(h: fcQSqlDriverPlugin_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQSqlDriverPlugin_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qsqldriverplugin_types.QSqlDriverPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSqlDriverPluginVTable = nil): gen_qsqldriverplugin_types.QSqlDriverPlugin =
  let vtbl = if vtbl == nil: new QSqlDriverPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSqlDriverPluginVTable](fcQSqlDriverPlugin_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSqlDriverPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSqlDriverPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSqlDriverPlugin_vtable_callback_metacall
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQSqlDriverPlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSqlDriverPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSqlDriverPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSqlDriverPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSqlDriverPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSqlDriverPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSqlDriverPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSqlDriverPlugin_vtable_callback_disconnectNotify
  let tmp = gen_qsqldriverplugin_types.QSqlDriverPlugin(h: fcQSqlDriverPlugin_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQSqlDriverPlugin_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSqlDriverPlugin_mvtbl = cQSqlDriverPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSqlDriverPlugin()[])](self.fcQSqlDriverPlugin_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSqlDriverPlugin_method_callback_metaObject,
  metacast: fcQSqlDriverPlugin_method_callback_metacast,
  metacall: fcQSqlDriverPlugin_method_callback_metacall,
  createX: fcQSqlDriverPlugin_method_callback_createX,
  event: fcQSqlDriverPlugin_method_callback_event,
  eventFilter: fcQSqlDriverPlugin_method_callback_eventFilter,
  timerEvent: fcQSqlDriverPlugin_method_callback_timerEvent,
  childEvent: fcQSqlDriverPlugin_method_callback_childEvent,
  customEvent: fcQSqlDriverPlugin_method_callback_customEvent,
  connectNotify: fcQSqlDriverPlugin_method_callback_connectNotify,
  disconnectNotify: fcQSqlDriverPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsqldriverplugin_types.QSqlDriverPlugin,
    inst: VirtualQSqlDriverPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlDriverPlugin_new(addr(cQSqlDriverPlugin_mvtbl), csize_t(sizeof(pointer)))
  fcQSqlDriverPlugin_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qsqldriverplugin_types.QSqlDriverPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSqlDriverPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSqlDriverPlugin_new2(addr(cQSqlDriverPlugin_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQSqlDriverPlugin_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsqldriverplugin_types.QSqlDriverPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSqlDriverPlugin_staticMetaObject())
