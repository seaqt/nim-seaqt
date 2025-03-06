import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qgenericplugin.cpp", cflags).}


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

proc fcQGenericPlugin_metaObject(self: pointer, ): pointer {.importc: "QGenericPlugin_metaObject".}
proc fcQGenericPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QGenericPlugin_metacast".}
proc fcQGenericPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGenericPlugin_metacall".}
proc fcQGenericPlugin_tr(s: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr".}
proc fcQGenericPlugin_create(self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.importc: "QGenericPlugin_create".}
proc fcQGenericPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGenericPlugin_tr2".}
proc fcQGenericPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGenericPlugin_tr3".}
type cQGenericPluginVTable = object
  destructor*: proc(vtbl: ptr cQGenericPluginVTable, self: ptr cQGenericPlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(vtbl, self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGenericPlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGenericPlugin_virtualbase_metaObject".}
proc fcQGenericPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGenericPlugin_virtualbase_metacast".}
proc fcQGenericPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGenericPlugin_virtualbase_metacall".}
proc fcQGenericPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGenericPlugin_virtualbase_event".}
proc fcQGenericPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGenericPlugin_virtualbase_eventFilter".}
proc fcQGenericPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGenericPlugin_virtualbase_timerEvent".}
proc fcQGenericPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGenericPlugin_virtualbase_childEvent".}
proc fcQGenericPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGenericPlugin_virtualbase_customEvent".}
proc fcQGenericPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGenericPlugin_virtualbase_connectNotify".}
proc fcQGenericPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGenericPlugin_virtualbase_disconnectNotify".}
proc fcQGenericPlugin_new(vtbl: pointer, ): ptr cQGenericPlugin {.importc: "QGenericPlugin_new".}
proc fcQGenericPlugin_new2(vtbl: pointer, parent: pointer): ptr cQGenericPlugin {.importc: "QGenericPlugin_new2".}
proc fcQGenericPlugin_staticMetaObject(): pointer {.importc: "QGenericPlugin_staticMetaObject".}
proc fcQGenericPlugin_delete(self: pointer) {.importc: "QGenericPlugin_delete".}

proc metaObject*(self: gen_qgenericplugin_types.QGenericPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_metaObject(self.h))

proc metacast*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cstring): pointer =
  fcQGenericPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQGenericPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring): string =
  let v_ms = fcQGenericPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qgenericplugin_types.QGenericPlugin, name: string, spec: string): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGenericPlugin_create(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: spec, len: csize_t(len(spec)))))

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQGenericPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgenericplugin_types.QGenericPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGenericPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGenericPluginmetaObjectProc* = proc(self: QGenericPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGenericPluginmetacastProc* = proc(self: QGenericPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QGenericPluginmetacallProc* = proc(self: QGenericPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGenericPlugincreateProc* = proc(self: QGenericPlugin, name: string, spec: string): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QGenericPlugineventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGenericPlugineventFilterProc* = proc(self: QGenericPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGenericPlugintimerEventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGenericPluginchildEventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGenericPlugincustomEventProc* = proc(self: QGenericPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGenericPluginconnectNotifyProc* = proc(self: QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGenericPlugindisconnectNotifyProc* = proc(self: QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGenericPluginVTable* = object
  vtbl: cQGenericPluginVTable
  metaObject*: QGenericPluginmetaObjectProc
  metacast*: QGenericPluginmetacastProc
  metacall*: QGenericPluginmetacallProc
  create*: QGenericPlugincreateProc
  event*: QGenericPlugineventProc
  eventFilter*: QGenericPlugineventFilterProc
  timerEvent*: QGenericPlugintimerEventProc
  childEvent*: QGenericPluginchildEventProc
  customEvent*: QGenericPlugincustomEventProc
  connectNotify*: QGenericPluginconnectNotifyProc
  disconnectNotify*: QGenericPlugindisconnectNotifyProc
proc QGenericPluginmetaObject*(self: gen_qgenericplugin_types.QGenericPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGenericPlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGenericPluginmetacast*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cstring): pointer =
  fcQGenericPlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGenericPlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGenericPluginmetacall*(self: gen_qgenericplugin_types.QGenericPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQGenericPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGenericPlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQGenericPlugin_create(vtbl: pointer, self: pointer, name: struct_miqt_string, spec: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let vspec_ms = spec
  let vspecx_ret = string.fromBytes(toOpenArrayByte(vspec_ms.data, 0, int(vspec_ms.len)-1))
  c_free(vspec_ms.data)
  let slotval2 = vspecx_ret
  var virtualReturn = vtbl[].create(self, slotval1, slotval2)
  virtualReturn.h

proc QGenericPluginevent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQGenericPlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGenericPlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGenericPlugineventFilter*(self: gen_qgenericplugin_types.QGenericPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGenericPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGenericPlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGenericPlugintimerEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGenericPlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGenericPlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGenericPluginchildEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGenericPlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGenericPlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGenericPlugincustomEvent*(self: gen_qgenericplugin_types.QGenericPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQGenericPlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGenericPlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGenericPluginconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGenericPlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGenericPlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGenericPlugindisconnectNotify*(self: gen_qgenericplugin_types.QGenericPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGenericPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGenericPlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGenericPluginVTable](vtbl)
  let self = QGenericPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgenericplugin_types.QGenericPlugin,
    vtbl: ref QGenericPluginVTable = nil): gen_qgenericplugin_types.QGenericPlugin =
  let vtbl = if vtbl == nil: new QGenericPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGenericPluginVTable, _: ptr cQGenericPlugin) {.cdecl.} =
    let vtbl = cast[ref QGenericPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGenericPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGenericPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGenericPlugin_metacall
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQGenericPlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGenericPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGenericPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGenericPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGenericPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGenericPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGenericPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGenericPlugin_disconnectNotify
  gen_qgenericplugin_types.QGenericPlugin(h: fcQGenericPlugin_new(addr(vtbl[]), ))

proc create*(T: type gen_qgenericplugin_types.QGenericPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGenericPluginVTable = nil): gen_qgenericplugin_types.QGenericPlugin =
  let vtbl = if vtbl == nil: new QGenericPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGenericPluginVTable, _: ptr cQGenericPlugin) {.cdecl.} =
    let vtbl = cast[ref QGenericPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGenericPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGenericPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGenericPlugin_metacall
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQGenericPlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGenericPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGenericPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGenericPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGenericPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGenericPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGenericPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGenericPlugin_disconnectNotify
  gen_qgenericplugin_types.QGenericPlugin(h: fcQGenericPlugin_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgenericplugin_types.QGenericPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGenericPlugin_staticMetaObject())
proc delete*(self: gen_qgenericplugin_types.QGenericPlugin) =
  fcQGenericPlugin_delete(self.h)
