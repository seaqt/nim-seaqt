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

proc fcQIconEnginePlugin_metaObject(self: pointer, ): pointer {.importc: "QIconEnginePlugin_metaObject".}
proc fcQIconEnginePlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QIconEnginePlugin_metacast".}
proc fcQIconEnginePlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIconEnginePlugin_metacall".}
proc fcQIconEnginePlugin_tr(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr".}
proc fcQIconEnginePlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf8".}
proc fcQIconEnginePlugin_create(self: pointer, filename: struct_miqt_string): pointer {.importc: "QIconEnginePlugin_create".}
proc fcQIconEnginePlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_tr2".}
proc fcQIconEnginePlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_tr3".}
proc fcQIconEnginePlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf82".}
proc fcQIconEnginePlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIconEnginePlugin_trUtf83".}
type cQIconEnginePluginVTable = object
  destructor*: proc(vtbl: ptr cQIconEnginePluginVTable, self: ptr cQIconEnginePlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(vtbl, self: pointer, filename: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIconEnginePlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QIconEnginePlugin_virtualbase_metaObject".}
proc fcQIconEnginePlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIconEnginePlugin_virtualbase_metacast".}
proc fcQIconEnginePlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIconEnginePlugin_virtualbase_metacall".}
proc fcQIconEnginePlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIconEnginePlugin_virtualbase_event".}
proc fcQIconEnginePlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIconEnginePlugin_virtualbase_eventFilter".}
proc fcQIconEnginePlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIconEnginePlugin_virtualbase_timerEvent".}
proc fcQIconEnginePlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIconEnginePlugin_virtualbase_childEvent".}
proc fcQIconEnginePlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIconEnginePlugin_virtualbase_customEvent".}
proc fcQIconEnginePlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIconEnginePlugin_virtualbase_connectNotify".}
proc fcQIconEnginePlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIconEnginePlugin_virtualbase_disconnectNotify".}
proc fcQIconEnginePlugin_new(vtbl: pointer, ): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new".}
proc fcQIconEnginePlugin_new2(vtbl: pointer, parent: pointer): ptr cQIconEnginePlugin {.importc: "QIconEnginePlugin_new2".}
proc fcQIconEnginePlugin_staticMetaObject(): pointer {.importc: "QIconEnginePlugin_staticMetaObject".}
proc fcQIconEnginePlugin_delete(self: pointer) {.importc: "QIconEnginePlugin_delete".}

proc metaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_metaObject(self.h))

proc metacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cstring): pointer =
  fcQIconEnginePlugin_metacast(self.h, param1)

proc metacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQIconEnginePlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring): string =
  let v_ms = fcQIconEnginePlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring): string =
  let v_ms = fcQIconEnginePlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qiconengineplugin_types.QIconEnginePlugin, filename: string): gen_qiconengine_types.QIconEngine =
  gen_qiconengine_types.QIconEngine(h: fcQIconEnginePlugin_create(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename)))))

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

proc trUtf8*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring): string =
  let v_ms = fcQIconEnginePlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qiconengineplugin_types.QIconEnginePlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIconEnginePlugin_trUtf83(s, c, n)
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
type QIconEnginePluginVTable* = object
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
proc QIconEnginePluginmetaObject*(self: gen_qiconengineplugin_types.QIconEnginePlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQIconEnginePlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QIconEnginePluginmetacast*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cstring): pointer =
  fcQIconEnginePlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQIconEnginePlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIconEnginePluginmetacall*(self: gen_qiconengineplugin_types.QIconEnginePlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQIconEnginePlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQIconEnginePlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQIconEnginePlugin_create(vtbl: pointer, self: pointer, filename: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval1 = vfilenamex_ret
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.h

proc QIconEnginePluginevent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQIconEnginePlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQIconEnginePlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIconEnginePlugineventFilter*(self: gen_qiconengineplugin_types.QIconEnginePlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIconEnginePlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQIconEnginePlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIconEnginePlugintimerEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIconEnginePlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQIconEnginePlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QIconEnginePluginchildEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIconEnginePlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQIconEnginePlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QIconEnginePlugincustomEvent*(self: gen_qiconengineplugin_types.QIconEnginePlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQIconEnginePlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQIconEnginePlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QIconEnginePluginconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIconEnginePlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIconEnginePlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QIconEnginePlugindisconnectNotify*(self: gen_qiconengineplugin_types.QIconEnginePlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIconEnginePlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIconEnginePlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIconEnginePluginVTable](vtbl)
  let self = QIconEnginePlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin,
    vtbl: ref QIconEnginePluginVTable = nil): gen_qiconengineplugin_types.QIconEnginePlugin =
  let vtbl = if vtbl == nil: new QIconEnginePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIconEnginePluginVTable, _: ptr cQIconEnginePlugin) {.cdecl.} =
    let vtbl = cast[ref QIconEnginePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIconEnginePlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIconEnginePlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIconEnginePlugin_metacall
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQIconEnginePlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIconEnginePlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIconEnginePlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIconEnginePlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIconEnginePlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIconEnginePlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIconEnginePlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIconEnginePlugin_disconnectNotify
  gen_qiconengineplugin_types.QIconEnginePlugin(h: fcQIconEnginePlugin_new(addr(vtbl[]), ))

proc create*(T: type gen_qiconengineplugin_types.QIconEnginePlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIconEnginePluginVTable = nil): gen_qiconengineplugin_types.QIconEnginePlugin =
  let vtbl = if vtbl == nil: new QIconEnginePluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIconEnginePluginVTable, _: ptr cQIconEnginePlugin) {.cdecl.} =
    let vtbl = cast[ref QIconEnginePluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIconEnginePlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIconEnginePlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIconEnginePlugin_metacall
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQIconEnginePlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIconEnginePlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIconEnginePlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIconEnginePlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIconEnginePlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIconEnginePlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIconEnginePlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIconEnginePlugin_disconnectNotify
  gen_qiconengineplugin_types.QIconEnginePlugin(h: fcQIconEnginePlugin_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qiconengineplugin_types.QIconEnginePlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIconEnginePlugin_staticMetaObject())
proc delete*(self: gen_qiconengineplugin_types.QIconEnginePlugin) =
  fcQIconEnginePlugin_delete(self.h)
