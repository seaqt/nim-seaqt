import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qpluginloader.cpp", cflags).}


import ./gen_qpluginloader_types
export gen_qpluginloader_types

import
  ./gen_qcoreevent_types,
  ./gen_qjsonobject_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qplugin_types
export
  gen_qcoreevent_types,
  gen_qjsonobject_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qplugin_types

type cQPluginLoader*{.exportc: "QPluginLoader", incompleteStruct.} = object

proc fcQPluginLoader_metaObject(self: pointer, ): pointer {.importc: "QPluginLoader_metaObject".}
proc fcQPluginLoader_metacast(self: pointer, param1: cstring): pointer {.importc: "QPluginLoader_metacast".}
proc fcQPluginLoader_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPluginLoader_metacall".}
proc fcQPluginLoader_tr(s: cstring): struct_miqt_string {.importc: "QPluginLoader_tr".}
proc fcQPluginLoader_instance(self: pointer, ): pointer {.importc: "QPluginLoader_instance".}
proc fcQPluginLoader_metaData(self: pointer, ): pointer {.importc: "QPluginLoader_metaData".}
proc fcQPluginLoader_staticInstances(): struct_miqt_array {.importc: "QPluginLoader_staticInstances".}
proc fcQPluginLoader_staticPlugins(): struct_miqt_array {.importc: "QPluginLoader_staticPlugins".}
proc fcQPluginLoader_load(self: pointer, ): bool {.importc: "QPluginLoader_load".}
proc fcQPluginLoader_unload(self: pointer, ): bool {.importc: "QPluginLoader_unload".}
proc fcQPluginLoader_isLoaded(self: pointer, ): bool {.importc: "QPluginLoader_isLoaded".}
proc fcQPluginLoader_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QPluginLoader_setFileName".}
proc fcQPluginLoader_fileName(self: pointer, ): struct_miqt_string {.importc: "QPluginLoader_fileName".}
proc fcQPluginLoader_errorString(self: pointer, ): struct_miqt_string {.importc: "QPluginLoader_errorString".}
proc fcQPluginLoader_setLoadHints(self: pointer, loadHints: cint): void {.importc: "QPluginLoader_setLoadHints".}
proc fcQPluginLoader_loadHints(self: pointer, ): cint {.importc: "QPluginLoader_loadHints".}
proc fcQPluginLoader_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPluginLoader_tr2".}
proc fcQPluginLoader_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPluginLoader_tr3".}
type cQPluginLoaderVTable = object
  destructor*: proc(vtbl: ptr cQPluginLoaderVTable, self: ptr cQPluginLoader) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPluginLoader_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPluginLoader_virtualbase_metaObject".}
proc fcQPluginLoader_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPluginLoader_virtualbase_metacast".}
proc fcQPluginLoader_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPluginLoader_virtualbase_metacall".}
proc fcQPluginLoader_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPluginLoader_virtualbase_event".}
proc fcQPluginLoader_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPluginLoader_virtualbase_eventFilter".}
proc fcQPluginLoader_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPluginLoader_virtualbase_timerEvent".}
proc fcQPluginLoader_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPluginLoader_virtualbase_childEvent".}
proc fcQPluginLoader_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPluginLoader_virtualbase_customEvent".}
proc fcQPluginLoader_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPluginLoader_virtualbase_connectNotify".}
proc fcQPluginLoader_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPluginLoader_virtualbase_disconnectNotify".}
proc fcQPluginLoader_protectedbase_sender(self: pointer, ): pointer {.importc: "QPluginLoader_protectedbase_sender".}
proc fcQPluginLoader_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QPluginLoader_protectedbase_senderSignalIndex".}
proc fcQPluginLoader_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPluginLoader_protectedbase_receivers".}
proc fcQPluginLoader_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPluginLoader_protectedbase_isSignalConnected".}
proc fcQPluginLoader_new(vtbl: pointer, ): ptr cQPluginLoader {.importc: "QPluginLoader_new".}
proc fcQPluginLoader_new2(vtbl: pointer, fileName: struct_miqt_string): ptr cQPluginLoader {.importc: "QPluginLoader_new2".}
proc fcQPluginLoader_new3(vtbl: pointer, parent: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new3".}
proc fcQPluginLoader_new4(vtbl: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new4".}
proc fcQPluginLoader_staticMetaObject(): pointer {.importc: "QPluginLoader_staticMetaObject".}
proc fcQPluginLoader_delete(self: pointer) {.importc: "QPluginLoader_delete".}

proc metaObject*(self: gen_qpluginloader_types.QPluginLoader, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_metaObject(self.h))

proc metacast*(self: gen_qpluginloader_types.QPluginLoader, param1: cstring): pointer =
  fcQPluginLoader_metacast(self.h, param1)

proc metacall*(self: gen_qpluginloader_types.QPluginLoader, param1: cint, param2: cint, param3: pointer): cint =
  fcQPluginLoader_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring): string =
  let v_ms = fcQPluginLoader_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc instance*(self: gen_qpluginloader_types.QPluginLoader, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPluginLoader_instance(self.h))

proc metaData*(self: gen_qpluginloader_types.QPluginLoader, ): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQPluginLoader_metaData(self.h))

proc staticInstances*(_: type gen_qpluginloader_types.QPluginLoader, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQPluginLoader_staticInstances()
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc staticPlugins*(_: type gen_qpluginloader_types.QPluginLoader, ): seq[gen_qplugin_types.QStaticPlugin] =
  var v_ma = fcQPluginLoader_staticPlugins()
  var vx_ret = newSeq[gen_qplugin_types.QStaticPlugin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qplugin_types.QStaticPlugin(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc load*(self: gen_qpluginloader_types.QPluginLoader, ): bool =
  fcQPluginLoader_load(self.h)

proc unload*(self: gen_qpluginloader_types.QPluginLoader, ): bool =
  fcQPluginLoader_unload(self.h)

proc isLoaded*(self: gen_qpluginloader_types.QPluginLoader, ): bool =
  fcQPluginLoader_isLoaded(self.h)

proc setFileName*(self: gen_qpluginloader_types.QPluginLoader, fileName: string): void =
  fcQPluginLoader_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: gen_qpluginloader_types.QPluginLoader, ): string =
  let v_ms = fcQPluginLoader_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc errorString*(self: gen_qpluginloader_types.QPluginLoader, ): string =
  let v_ms = fcQPluginLoader_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLoadHints*(self: gen_qpluginloader_types.QPluginLoader, loadHints: cint): void =
  fcQPluginLoader_setLoadHints(self.h, cint(loadHints))

proc loadHints*(self: gen_qpluginloader_types.QPluginLoader, ): cint =
  cint(fcQPluginLoader_loadHints(self.h))

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring, c: cstring): string =
  let v_ms = fcQPluginLoader_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPluginLoader_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QPluginLoadermetaObjectProc* = proc(self: QPluginLoader): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPluginLoadermetacastProc* = proc(self: QPluginLoader, param1: cstring): pointer {.raises: [], gcsafe.}
type QPluginLoadermetacallProc* = proc(self: QPluginLoader, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPluginLoadereventProc* = proc(self: QPluginLoader, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPluginLoadereventFilterProc* = proc(self: QPluginLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPluginLoadertimerEventProc* = proc(self: QPluginLoader, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPluginLoaderchildEventProc* = proc(self: QPluginLoader, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPluginLoadercustomEventProc* = proc(self: QPluginLoader, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPluginLoaderconnectNotifyProc* = proc(self: QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPluginLoaderdisconnectNotifyProc* = proc(self: QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPluginLoaderVTable* = object
  vtbl: cQPluginLoaderVTable
  metaObject*: QPluginLoadermetaObjectProc
  metacast*: QPluginLoadermetacastProc
  metacall*: QPluginLoadermetacallProc
  event*: QPluginLoadereventProc
  eventFilter*: QPluginLoadereventFilterProc
  timerEvent*: QPluginLoadertimerEventProc
  childEvent*: QPluginLoaderchildEventProc
  customEvent*: QPluginLoadercustomEventProc
  connectNotify*: QPluginLoaderconnectNotifyProc
  disconnectNotify*: QPluginLoaderdisconnectNotifyProc
proc QPluginLoadermetaObject*(self: gen_qpluginloader_types.QPluginLoader, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPluginLoader_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPluginLoadermetacast*(self: gen_qpluginloader_types.QPluginLoader, param1: cstring): pointer =
  fcQPluginLoader_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPluginLoader_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPluginLoadermetacall*(self: gen_qpluginloader_types.QPluginLoader, param1: cint, param2: cint, param3: pointer): cint =
  fcQPluginLoader_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPluginLoader_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPluginLoaderevent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QEvent): bool =
  fcQPluginLoader_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPluginLoader_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPluginLoadereventFilter*(self: gen_qpluginloader_types.QPluginLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPluginLoader_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPluginLoader_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPluginLoadertimerEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPluginLoader_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPluginLoader_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPluginLoaderchildEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPluginLoader_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPluginLoader_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPluginLoadercustomEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QEvent): void =
  fcQPluginLoader_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPluginLoader_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPluginLoaderconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPluginLoader_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPluginLoader_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPluginLoaderdisconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPluginLoader_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPluginLoader_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](vtbl)
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qpluginloader_types.QPluginLoader, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPluginLoader_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpluginloader_types.QPluginLoader, ): cint =
  fcQPluginLoader_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpluginloader_types.QPluginLoader, signal: cstring): cint =
  fcQPluginLoader_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPluginLoader_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPluginLoaderVTable, _: ptr cQPluginLoader) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPluginLoader_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPluginLoader_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPluginLoader_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPluginLoader_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPluginLoader_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPluginLoader_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPluginLoader_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPluginLoader_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPluginLoader_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPluginLoader_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new(addr(vtbl[]), ))

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    fileName: string,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPluginLoaderVTable, _: ptr cQPluginLoader) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPluginLoader_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPluginLoader_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPluginLoader_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPluginLoader_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPluginLoader_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPluginLoader_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPluginLoader_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPluginLoader_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPluginLoader_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPluginLoader_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new2(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPluginLoaderVTable, _: ptr cQPluginLoader) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPluginLoader_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPluginLoader_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPluginLoader_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPluginLoader_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPluginLoader_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPluginLoader_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPluginLoader_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPluginLoader_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPluginLoader_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPluginLoader_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    fileName: string, parent: gen_qobject_types.QObject,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPluginLoaderVTable, _: ptr cQPluginLoader) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPluginLoader_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPluginLoader_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPluginLoader_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPluginLoader_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPluginLoader_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPluginLoader_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPluginLoader_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPluginLoader_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPluginLoader_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPluginLoader_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new4(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h))

proc staticMetaObject*(_: type gen_qpluginloader_types.QPluginLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_staticMetaObject())
proc delete*(self: gen_qpluginloader_types.QPluginLoader) =
  fcQPluginLoader_delete(self.h)
