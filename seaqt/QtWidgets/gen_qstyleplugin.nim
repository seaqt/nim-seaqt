import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qstyleplugin.cpp", cflags).}


import ./gen_qstyleplugin_types
export gen_qstyleplugin_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qstyle_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qstyle_types

type cQStylePlugin*{.exportc: "QStylePlugin", incompleteStruct.} = object

proc fcQStylePlugin_metaObject(self: pointer, ): pointer {.importc: "QStylePlugin_metaObject".}
proc fcQStylePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QStylePlugin_metacast".}
proc fcQStylePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStylePlugin_metacall".}
proc fcQStylePlugin_tr(s: cstring): struct_miqt_string {.importc: "QStylePlugin_tr".}
proc fcQStylePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QStylePlugin_trUtf8".}
proc fcQStylePlugin_create(self: pointer, key: struct_miqt_string): pointer {.importc: "QStylePlugin_create".}
proc fcQStylePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStylePlugin_tr2".}
proc fcQStylePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStylePlugin_tr3".}
proc fcQStylePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStylePlugin_trUtf82".}
proc fcQStylePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStylePlugin_trUtf83".}
type cQStylePluginVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQStylePluginVTable, self: ptr cQStylePlugin) {.cdecl, raises:[], gcsafe.}
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
proc fcQStylePlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStylePlugin_virtualbase_metaObject".}
proc fcQStylePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStylePlugin_virtualbase_metacast".}
proc fcQStylePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStylePlugin_virtualbase_metacall".}
proc fcQStylePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStylePlugin_virtualbase_event".}
proc fcQStylePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStylePlugin_virtualbase_eventFilter".}
proc fcQStylePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStylePlugin_virtualbase_timerEvent".}
proc fcQStylePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStylePlugin_virtualbase_childEvent".}
proc fcQStylePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStylePlugin_virtualbase_customEvent".}
proc fcQStylePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStylePlugin_virtualbase_connectNotify".}
proc fcQStylePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStylePlugin_virtualbase_disconnectNotify".}
proc fcQStylePlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QStylePlugin_protectedbase_sender".}
proc fcQStylePlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QStylePlugin_protectedbase_senderSignalIndex".}
proc fcQStylePlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStylePlugin_protectedbase_receivers".}
proc fcQStylePlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStylePlugin_protectedbase_isSignalConnected".}
proc fcQStylePlugin_new(vtbl: pointer, ): ptr cQStylePlugin {.importc: "QStylePlugin_new".}
proc fcQStylePlugin_new2(vtbl: pointer, parent: pointer): ptr cQStylePlugin {.importc: "QStylePlugin_new2".}
proc fcQStylePlugin_staticMetaObject(): pointer {.importc: "QStylePlugin_staticMetaObject".}

proc metaObject*(self: gen_qstyleplugin_types.QStylePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStylePlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstyleplugin_types.QStylePlugin, param1: cstring): pointer =
  fcQStylePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qstyleplugin_types.QStylePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQStylePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring): string =
  let v_ms = fcQStylePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring): string =
  let v_ms = fcQStylePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qstyleplugin_types.QStylePlugin, key: string): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQStylePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: false)

proc tr*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQStylePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStylePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQStylePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyleplugin_types.QStylePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStylePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStylePluginmetaObjectProc* = proc(self: QStylePlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStylePluginmetacastProc* = proc(self: QStylePlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QStylePluginmetacallProc* = proc(self: QStylePlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStylePlugincreateProc* = proc(self: QStylePlugin, key: string): gen_qstyle_types.QStyle {.raises: [], gcsafe.}
type QStylePlugineventProc* = proc(self: QStylePlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStylePlugineventFilterProc* = proc(self: QStylePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStylePlugintimerEventProc* = proc(self: QStylePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStylePluginchildEventProc* = proc(self: QStylePlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStylePlugincustomEventProc* = proc(self: QStylePlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStylePluginconnectNotifyProc* = proc(self: QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStylePlugindisconnectNotifyProc* = proc(self: QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStylePluginVTable* {.inheritable, pure.} = object
  vtbl: cQStylePluginVTable
  metaObject*: QStylePluginmetaObjectProc
  metacast*: QStylePluginmetacastProc
  metacall*: QStylePluginmetacallProc
  create*: QStylePlugincreateProc
  event*: QStylePlugineventProc
  eventFilter*: QStylePlugineventFilterProc
  timerEvent*: QStylePlugintimerEventProc
  childEvent*: QStylePluginchildEventProc
  customEvent*: QStylePlugincustomEventProc
  connectNotify*: QStylePluginconnectNotifyProc
  disconnectNotify*: QStylePlugindisconnectNotifyProc
proc QStylePluginmetaObject*(self: gen_qstyleplugin_types.QStylePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStylePlugin_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQStylePlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStylePluginmetacast*(self: gen_qstyleplugin_types.QStylePlugin, param1: cstring): pointer =
  fcQStylePlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStylePlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStylePluginmetacall*(self: gen_qstyleplugin_types.QStylePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQStylePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStylePlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQStylePlugin_create(vtbl: pointer, self: pointer, key: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStylePluginevent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQStylePlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQStylePlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStylePlugineventFilter*(self: gen_qstyleplugin_types.QStylePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStylePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStylePlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStylePlugintimerEvent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStylePlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStylePlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QStylePluginchildEvent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStylePlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStylePlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QStylePlugincustomEvent*(self: gen_qstyleplugin_types.QStylePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQStylePlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStylePlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QStylePluginconnectNotify*(self: gen_qstyleplugin_types.QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStylePlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStylePlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QStylePlugindisconnectNotify*(self: gen_qstyleplugin_types.QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStylePlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStylePlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStylePluginVTable](vtbl)
  let self = QStylePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStylePlugin* {.inheritable.} = ref object of QStylePlugin
  vtbl*: cQStylePluginVTable
method metaObject*(self: VirtualQStylePlugin, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStylePluginmetaObject(self[])
proc miqt_exec_method_cQStylePlugin_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQStylePlugin, param1: cstring): pointer {.base.} =
  QStylePluginmetacast(self[], param1)
proc miqt_exec_method_cQStylePlugin_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQStylePlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStylePluginmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQStylePlugin_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method create*(self: VirtualQStylePlugin, key: string): gen_qstyle_types.QStyle {.base.} =
  raiseAssert("missing implementation of QStylePlugin_virtualbase_create")
proc miqt_exec_method_cQStylePlugin_create(vtbl: pointer, inst: pointer, key: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl.create(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQStylePlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStylePluginevent(self[], event)
proc miqt_exec_method_cQStylePlugin_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQStylePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStylePlugineventFilter(self[], watched, event)
proc miqt_exec_method_cQStylePlugin_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQStylePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStylePlugintimerEvent(self[], event)
proc miqt_exec_method_cQStylePlugin_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQStylePlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStylePluginchildEvent(self[], event)
proc miqt_exec_method_cQStylePlugin_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQStylePlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStylePlugincustomEvent(self[], event)
proc miqt_exec_method_cQStylePlugin_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStylePluginconnectNotify(self[], signal)
proc miqt_exec_method_cQStylePlugin_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStylePlugindisconnectNotify(self[], signal)
proc miqt_exec_method_cQStylePlugin_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStylePlugin](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qstyleplugin_types.QStylePlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStylePlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstyleplugin_types.QStylePlugin, ): cint =
  fcQStylePlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstyleplugin_types.QStylePlugin, signal: cstring): cint =
  fcQStylePlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstyleplugin_types.QStylePlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStylePlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstyleplugin_types.QStylePlugin,
    vtbl: ref QStylePluginVTable = nil): gen_qstyleplugin_types.QStylePlugin =
  let vtbl = if vtbl == nil: new QStylePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStylePluginVTable, _: ptr cQStylePlugin) {.cdecl.} =
    let vtbl = cast[ref QStylePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStylePlugin_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStylePlugin_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStylePlugin_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = miqt_exec_callback_cQStylePlugin_create
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStylePlugin_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStylePlugin_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStylePlugin_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStylePlugin_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStylePlugin_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStylePlugin_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStylePlugin_disconnectNotify
  gen_qstyleplugin_types.QStylePlugin(h: fcQStylePlugin_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qstyleplugin_types.QStylePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStylePluginVTable = nil): gen_qstyleplugin_types.QStylePlugin =
  let vtbl = if vtbl == nil: new QStylePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStylePluginVTable, _: ptr cQStylePlugin) {.cdecl.} =
    let vtbl = cast[ref QStylePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStylePlugin_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStylePlugin_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStylePlugin_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = miqt_exec_callback_cQStylePlugin_create
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStylePlugin_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStylePlugin_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStylePlugin_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStylePlugin_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStylePlugin_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStylePlugin_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStylePlugin_disconnectNotify
  gen_qstyleplugin_types.QStylePlugin(h: fcQStylePlugin_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qstyleplugin_types.QStylePlugin,
    vtbl: VirtualQStylePlugin) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStylePluginVTable, _: ptr cQStylePlugin) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStylePlugin()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStylePlugin_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStylePlugin_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStylePlugin_metacall
  vtbl[].vtbl.create = miqt_exec_method_cQStylePlugin_create
  vtbl[].vtbl.event = miqt_exec_method_cQStylePlugin_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStylePlugin_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStylePlugin_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStylePlugin_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStylePlugin_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStylePlugin_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStylePlugin_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStylePlugin_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qstyleplugin_types.QStylePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQStylePlugin) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStylePluginVTable, _: ptr cQStylePlugin) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStylePlugin()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStylePlugin, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStylePlugin_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStylePlugin_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStylePlugin_metacall
  vtbl[].vtbl.create = miqt_exec_method_cQStylePlugin_create
  vtbl[].vtbl.event = miqt_exec_method_cQStylePlugin_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStylePlugin_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStylePlugin_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStylePlugin_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStylePlugin_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStylePlugin_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStylePlugin_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStylePlugin_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qstyleplugin_types.QStylePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStylePlugin_staticMetaObject())
