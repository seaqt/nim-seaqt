import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qiconengineplugin.cpp", cflags).}


import ./gen_qiconengineplugin_types
export gen_qiconengineplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qiconengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qiconengine_types

type cQIconEnginePlugin*{.exportc: "QIconEnginePlugin", incompleteStruct.} = object

proc fcQIconEnginePlugin_metaObject(self: pointer): pointer {.importc: "QIconEnginePlugin_metaObject".}
proc fcQIconEnginePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QIconEnginePlugin_metacast".}
proc fcQIconEnginePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIconEnginePlugin_metacall".}
proc fcQIconEnginePlugin_tr(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr".}
proc fcQIconEnginePlugin_create(self: pointer, filename: struct_miqt_string): pointer {.importc: "QIconEnginePlugin_create".}
proc fcQIconEnginePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr2".}
proc fcQIconEnginePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_tr3".}
proc fcQIconEnginePlugin_vtbl(self: pointer): pointer {.importc: "QIconEnginePlugin_vtbl".}
proc fcQIconEnginePlugin_vdata(self: pointer): pointer {.importc: "QIconEnginePlugin_vdata".}
type cQIconEnginePluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(self: pointer, filename: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIconEnginePlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QIconEnginePlugin_virtualbase_metaObject".}
proc fcQIconEnginePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIconEnginePlugin_virtualbase_metacast".}
proc fcQIconEnginePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIconEnginePlugin_virtualbase_metacall".}
proc fcQIconEnginePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIconEnginePlugin_virtualbase_event".}
proc fcQIconEnginePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIconEnginePlugin_virtualbase_eventFilter".}
proc fcQIconEnginePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIconEnginePlugin_virtualbase_timerEvent".}
proc fcQIconEnginePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIconEnginePlugin_virtualbase_childEvent".}
proc fcQIconEnginePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIconEnginePlugin_virtualbase_customEvent".}
proc fcQIconEnginePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIconEnginePlugin_virtualbase_connectNotify".}
proc fcQIconEnginePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIconEnginePlugin_virtualbase_disconnectNotify".}
proc fcQIconEnginePlugin_protectedbase_sender(self: pointer): pointer {.importc: "QIconEnginePlugin_protectedbase_sender".}
proc fcQIconEnginePlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QIconEnginePlugin_protectedbase_senderSignalIndex".}
proc fcQIconEnginePlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QIconEnginePlugin_protectedbase_receivers".}
proc fcQIconEnginePlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QIconEnginePlugin_protectedbase_isSignalConnected".}
proc fcQIconEnginePlugin_new(vtbl, vdata: pointer): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new".}
proc fcQIconEnginePlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new2".}
proc fcQIconEnginePlugin_staticMetaObject(): pointer {.importc: "QIconEnginePlugin_staticMetaObject".}

proc metaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cstring): pointer =
  fcQIconEnginePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQIconEnginePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring): string =
  let v_ms = fcQIconEnginePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qiconengineplugin_types.QIconEnginePlugin, filename: string): gen_qiconengine_types.QIconEngine =
  gen_qiconengine_types.QIconEngine(h: fcQIconEnginePlugin_create(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename)))), owned: false)

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQIconEnginePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIconEnginePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIconEnginePluginmetaObjectProc* = proc(self: QIconEnginePlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIconEnginePluginmetacastProc* = proc(self: QIconEnginePlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QIconEnginePluginmetacallProc* = proc(self: QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIconEnginePlugincreateProc* = proc(self: QIconEnginePlugin, filename: string): gen_qiconengine_types.QIconEngine {.raises: [], gcsafe.}
type QIconEnginePlugineventProc* = proc(self: QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIconEnginePlugineventFilterProc* = proc(self: QIconEnginePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIconEnginePlugintimerEventProc* = proc(self: QIconEnginePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIconEnginePluginchildEventProc* = proc(self: QIconEnginePlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIconEnginePlugincustomEventProc* = proc(self: QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIconEnginePluginconnectNotifyProc* = proc(self: QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIconEnginePlugindisconnectNotifyProc* = proc(self: QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIconEnginePluginVTable* {.inheritable, pure.} = object
  vtbl: cQIconEnginePluginVTable
  metaObject*: QIconEnginePluginmetaObjectProc
  metacast*: QIconEnginePluginmetacastProc
  metacall*: QIconEnginePluginmetacallProc
  create*: QIconEnginePlugincreateProc
  event*: QIconEnginePlugineventProc
  eventFilter*: QIconEnginePlugineventFilterProc
  timerEvent*: QIconEnginePlugintimerEventProc
  childEvent*: QIconEnginePluginchildEventProc
  customEvent*: QIconEnginePlugincustomEventProc
  connectNotify*: QIconEnginePluginconnectNotifyProc
  disconnectNotify*: QIconEnginePlugindisconnectNotifyProc
proc QIconEnginePluginmetaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_virtualbase_metaObject(self.h), owned: false)

proc cQIconEnginePlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIconEnginePluginmetacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cstring): pointer =
  fcQIconEnginePlugin_virtualbase_metacast(self.h, param1)

proc cQIconEnginePlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIconEnginePluginmetacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQIconEnginePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQIconEnginePlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQIconEnginePlugin_vtable_callback_create(self: pointer, filename: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval1 = vfilenamex_ret
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QIconEnginePluginevent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQIconEnginePlugin_virtualbase_event(self.h, event.h)

proc cQIconEnginePlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIconEnginePlugineventFilter*(self: gen_qiconengineplugin_types.QIconEnginePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIconEnginePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQIconEnginePlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIconEnginePlugintimerEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIconEnginePlugin_virtualbase_timerEvent(self.h, event.h)

proc cQIconEnginePlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QIconEnginePluginchildEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIconEnginePlugin_virtualbase_childEvent(self.h, event.h)

proc cQIconEnginePlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QIconEnginePlugincustomEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQIconEnginePlugin_virtualbase_customEvent(self.h, event.h)

proc cQIconEnginePlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QIconEnginePluginconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIconEnginePlugin_virtualbase_connectNotify(self.h, signal.h)

proc cQIconEnginePlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QIconEnginePlugindisconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIconEnginePlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc cQIconEnginePlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQIconEnginePlugin* {.inheritable.} = ref object of QIconEnginePlugin
  vtbl*: cQIconEnginePluginVTable
method metaObject*(self: VirtualQIconEnginePlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QIconEnginePluginmetaObject(self[])
proc cQIconEnginePlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQIconEnginePlugin, param1: cstring): pointer {.base.} =
  QIconEnginePluginmetacast(self[], param1)
proc cQIconEnginePlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QIconEnginePluginmetacall(self[], param1, param2, param3)
proc cQIconEnginePlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method create*(self: VirtualQIconEnginePlugin, filename: string): gen_qiconengine_types.QIconEngine {.base.} =
  raiseAssert("missing implementation of QIconEnginePlugin_virtualbase_create")
proc cQIconEnginePlugin_method_callback_create(self: pointer, filename: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval1 = vfilenamex_ret
  var virtualReturn = inst.create(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQIconEnginePlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIconEnginePluginevent(self[], event)
proc cQIconEnginePlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQIconEnginePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QIconEnginePlugineventFilter(self[], watched, event)
proc cQIconEnginePlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQIconEnginePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QIconEnginePlugintimerEvent(self[], event)
proc cQIconEnginePlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQIconEnginePlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QIconEnginePluginchildEvent(self[], event)
proc cQIconEnginePlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQIconEnginePlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QIconEnginePlugincustomEvent(self[], event)
proc cQIconEnginePlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIconEnginePluginconnectNotify(self[], signal)
proc cQIconEnginePlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QIconEnginePlugindisconnectNotify(self[], signal)
proc cQIconEnginePlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQIconEnginePlugin](fcQIconEnginePlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qiconengineplugin_types.QIconEnginePlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQIconEnginePlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qiconengineplugin_types.QIconEnginePlugin): cint =
  fcQIconEnginePlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: cstring): cint =
  fcQIconEnginePlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQIconEnginePlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin,
    vtbl: ref QIconEnginePluginVTable = nil): gen_qiconengineplugin_types.QIconEnginePlugin =
  let vtbl = if vtbl == nil: new QIconEnginePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIconEnginePlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIconEnginePlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIconEnginePlugin_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQIconEnginePlugin_vtable_callback_create
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIconEnginePlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIconEnginePlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIconEnginePlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIconEnginePlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIconEnginePlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIconEnginePlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIconEnginePlugin_vtable_callback_disconnectNotify
  gen_qiconengineplugin_types.QIconEnginePlugin(h: fcQIconEnginePlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIconEnginePluginVTable = nil): gen_qiconengineplugin_types.QIconEnginePlugin =
  let vtbl = if vtbl == nil: new QIconEnginePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIconEnginePluginVTable](fcQIconEnginePlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQIconEnginePlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQIconEnginePlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQIconEnginePlugin_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQIconEnginePlugin_vtable_callback_create
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQIconEnginePlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQIconEnginePlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQIconEnginePlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQIconEnginePlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQIconEnginePlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQIconEnginePlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQIconEnginePlugin_vtable_callback_disconnectNotify
  gen_qiconengineplugin_types.QIconEnginePlugin(h: fcQIconEnginePlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQIconEnginePlugin_mvtbl = cQIconEnginePluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIconEnginePlugin()[])](self.fcQIconEnginePlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQIconEnginePlugin_method_callback_metaObject,
  metacast: cQIconEnginePlugin_method_callback_metacast,
  metacall: cQIconEnginePlugin_method_callback_metacall,
  create: cQIconEnginePlugin_method_callback_create,
  event: cQIconEnginePlugin_method_callback_event,
  eventFilter: cQIconEnginePlugin_method_callback_eventFilter,
  timerEvent: cQIconEnginePlugin_method_callback_timerEvent,
  childEvent: cQIconEnginePlugin_method_callback_childEvent,
  customEvent: cQIconEnginePlugin_method_callback_customEvent,
  connectNotify: cQIconEnginePlugin_method_callback_connectNotify,
  disconnectNotify: cQIconEnginePlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin,
    inst: VirtualQIconEnginePlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIconEnginePlugin_new(addr(cQIconEnginePlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQIconEnginePlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIconEnginePlugin_new2(addr(cQIconEnginePlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qiconengineplugin_types.QIconEnginePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_staticMetaObject())
