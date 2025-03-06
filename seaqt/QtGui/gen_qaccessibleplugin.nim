import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qaccessibleplugin.cpp", cflags).}


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

proc fcQAccessiblePlugin_metaObject(self: pointer, ): pointer {.importc: "QAccessiblePlugin_metaObject".}
proc fcQAccessiblePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessiblePlugin_metacast".}
proc fcQAccessiblePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessiblePlugin_metacall".}
proc fcQAccessiblePlugin_tr(s: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr".}
proc fcQAccessiblePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_trUtf8".}
proc fcQAccessiblePlugin_create(self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.importc: "QAccessiblePlugin_create".}
proc fcQAccessiblePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_tr2".}
proc fcQAccessiblePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessiblePlugin_tr3".}
proc fcQAccessiblePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAccessiblePlugin_trUtf82".}
proc fcQAccessiblePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAccessiblePlugin_trUtf83".}
type cQAccessiblePluginVTable = object
  destructor*: proc(vtbl: ptr cQAccessiblePluginVTable, self: ptr cQAccessiblePlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(vtbl, self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAccessiblePlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAccessiblePlugin_virtualbase_metaObject".}
proc fcQAccessiblePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessiblePlugin_virtualbase_metacast".}
proc fcQAccessiblePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessiblePlugin_virtualbase_metacall".}
proc fcQAccessiblePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAccessiblePlugin_virtualbase_event".}
proc fcQAccessiblePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAccessiblePlugin_virtualbase_eventFilter".}
proc fcQAccessiblePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAccessiblePlugin_virtualbase_timerEvent".}
proc fcQAccessiblePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAccessiblePlugin_virtualbase_childEvent".}
proc fcQAccessiblePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAccessiblePlugin_virtualbase_customEvent".}
proc fcQAccessiblePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAccessiblePlugin_virtualbase_connectNotify".}
proc fcQAccessiblePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAccessiblePlugin_virtualbase_disconnectNotify".}
proc fcQAccessiblePlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QAccessiblePlugin_protectedbase_sender".}
proc fcQAccessiblePlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAccessiblePlugin_protectedbase_senderSignalIndex".}
proc fcQAccessiblePlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAccessiblePlugin_protectedbase_receivers".}
proc fcQAccessiblePlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAccessiblePlugin_protectedbase_isSignalConnected".}
proc fcQAccessiblePlugin_new(vtbl: pointer, ): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new".}
proc fcQAccessiblePlugin_new2(vtbl: pointer, parent: pointer): ptr cQAccessiblePlugin {.importc: "QAccessiblePlugin_new2".}
proc fcQAccessiblePlugin_staticMetaObject(): pointer {.importc: "QAccessiblePlugin_staticMetaObject".}
proc fcQAccessiblePlugin_delete(self: pointer) {.importc: "QAccessiblePlugin_delete".}

proc metaObject*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_metaObject(self.h))

proc metacast*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cstring): pointer =
  fcQAccessiblePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessiblePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring): string =
  let v_ms = fcQAccessiblePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring): string =
  let v_ms = fcQAccessiblePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, key: string, objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessiblePlugin_create(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), objectVal.h))

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessiblePlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessiblePlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQAccessiblePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessiblePlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAccessiblePluginmetaObjectProc* = proc(self: QAccessiblePlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAccessiblePluginmetacastProc* = proc(self: QAccessiblePlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QAccessiblePluginmetacallProc* = proc(self: QAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAccessiblePlugincreateProc* = proc(self: QAccessiblePlugin, key: string, objectVal: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessiblePlugineventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessiblePlugineventFilterProc* = proc(self: QAccessiblePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessiblePlugintimerEventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAccessiblePluginchildEventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAccessiblePlugincustomEventProc* = proc(self: QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAccessiblePluginconnectNotifyProc* = proc(self: QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAccessiblePlugindisconnectNotifyProc* = proc(self: QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAccessiblePluginVTable* = object
  vtbl: cQAccessiblePluginVTable
  metaObject*: QAccessiblePluginmetaObjectProc
  metacast*: QAccessiblePluginmetacastProc
  metacall*: QAccessiblePluginmetacallProc
  create*: QAccessiblePlugincreateProc
  event*: QAccessiblePlugineventProc
  eventFilter*: QAccessiblePlugineventFilterProc
  timerEvent*: QAccessiblePlugintimerEventProc
  childEvent*: QAccessiblePluginchildEventProc
  customEvent*: QAccessiblePlugincustomEventProc
  connectNotify*: QAccessiblePluginconnectNotifyProc
  disconnectNotify*: QAccessiblePlugindisconnectNotifyProc
proc QAccessiblePluginmetaObject*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAccessiblePlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAccessiblePluginmetacast*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cstring): pointer =
  fcQAccessiblePlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAccessiblePlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAccessiblePluginmetacall*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessiblePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAccessiblePlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAccessiblePlugin_create(vtbl: pointer, self: pointer, key: struct_miqt_string, objectVal: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qobject_types.QObject(h: objectVal)
  var virtualReturn = vtbl[].create(self, slotval1, slotval2)
  virtualReturn.h

proc QAccessiblePluginevent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessiblePlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAccessiblePlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAccessiblePlugineventFilter*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessiblePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAccessiblePlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAccessiblePlugintimerEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAccessiblePlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAccessiblePlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAccessiblePluginchildEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAccessiblePlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAccessiblePlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAccessiblePlugincustomEvent*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQAccessiblePlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAccessiblePlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAccessiblePluginconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessiblePlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAccessiblePlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAccessiblePlugindisconnectNotify*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessiblePlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAccessiblePlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessiblePluginVTable](vtbl)
  let self = QAccessiblePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessiblePlugin_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, ): cint =
  fcQAccessiblePlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: cstring): cint =
  fcQAccessiblePlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaccessibleplugin_types.QAccessiblePlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAccessiblePlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin,
    vtbl: ref QAccessiblePluginVTable = nil): gen_qaccessibleplugin_types.QAccessiblePlugin =
  let vtbl = if vtbl == nil: new QAccessiblePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessiblePluginVTable, _: ptr cQAccessiblePlugin) {.cdecl.} =
    let vtbl = cast[ref QAccessiblePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAccessiblePlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAccessiblePlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAccessiblePlugin_metacall
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQAccessiblePlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAccessiblePlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAccessiblePlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAccessiblePlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAccessiblePlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAccessiblePlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAccessiblePlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAccessiblePlugin_disconnectNotify
  gen_qaccessibleplugin_types.QAccessiblePlugin(h: fcQAccessiblePlugin_new(addr(vtbl[]), ))

proc create*(T: type gen_qaccessibleplugin_types.QAccessiblePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAccessiblePluginVTable = nil): gen_qaccessibleplugin_types.QAccessiblePlugin =
  let vtbl = if vtbl == nil: new QAccessiblePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessiblePluginVTable, _: ptr cQAccessiblePlugin) {.cdecl.} =
    let vtbl = cast[ref QAccessiblePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAccessiblePlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAccessiblePlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAccessiblePlugin_metacall
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQAccessiblePlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAccessiblePlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAccessiblePlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAccessiblePlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAccessiblePlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAccessiblePlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAccessiblePlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAccessiblePlugin_disconnectNotify
  gen_qaccessibleplugin_types.QAccessiblePlugin(h: fcQAccessiblePlugin_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qaccessibleplugin_types.QAccessiblePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessiblePlugin_staticMetaObject())
proc delete*(self: gen_qaccessibleplugin_types.QAccessiblePlugin) =
  fcQAccessiblePlugin_delete(self.h)
