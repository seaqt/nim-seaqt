import ./qtcore_pkg

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


{.compile("gen_qpluginloader.cpp", QtCoreCFlags).}


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

proc fcQPluginLoader_metaObject(self: pointer): pointer {.importc: "QPluginLoader_metaObject".}
proc fcQPluginLoader_metacast(self: pointer, param1: cstring): pointer {.importc: "QPluginLoader_metacast".}
proc fcQPluginLoader_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPluginLoader_metacall".}
proc fcQPluginLoader_tr(s: cstring): struct_miqt_string {.importc: "QPluginLoader_tr".}
proc fcQPluginLoader_instance(self: pointer): pointer {.importc: "QPluginLoader_instance".}
proc fcQPluginLoader_metaData(self: pointer): pointer {.importc: "QPluginLoader_metaData".}
proc fcQPluginLoader_staticInstances(): struct_miqt_array {.importc: "QPluginLoader_staticInstances".}
proc fcQPluginLoader_staticPlugins(): struct_miqt_array {.importc: "QPluginLoader_staticPlugins".}
proc fcQPluginLoader_load(self: pointer): bool {.importc: "QPluginLoader_load".}
proc fcQPluginLoader_unload(self: pointer): bool {.importc: "QPluginLoader_unload".}
proc fcQPluginLoader_isLoaded(self: pointer): bool {.importc: "QPluginLoader_isLoaded".}
proc fcQPluginLoader_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QPluginLoader_setFileName".}
proc fcQPluginLoader_fileName(self: pointer): struct_miqt_string {.importc: "QPluginLoader_fileName".}
proc fcQPluginLoader_errorString(self: pointer): struct_miqt_string {.importc: "QPluginLoader_errorString".}
proc fcQPluginLoader_setLoadHints(self: pointer, loadHints: cint): void {.importc: "QPluginLoader_setLoadHints".}
proc fcQPluginLoader_loadHints(self: pointer): cint {.importc: "QPluginLoader_loadHints".}
proc fcQPluginLoader_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPluginLoader_tr2".}
proc fcQPluginLoader_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPluginLoader_tr3".}
proc fcQPluginLoader_vtbl(self: pointer): pointer {.importc: "QPluginLoader_vtbl".}
proc fcQPluginLoader_vdata(self: pointer): pointer {.importc: "QPluginLoader_vdata".}
type cQPluginLoaderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPluginLoader_virtualbase_metaObject(self: pointer): pointer {.importc: "QPluginLoader_virtualbase_metaObject".}
proc fcQPluginLoader_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPluginLoader_virtualbase_metacast".}
proc fcQPluginLoader_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPluginLoader_virtualbase_metacall".}
proc fcQPluginLoader_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPluginLoader_virtualbase_event".}
proc fcQPluginLoader_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPluginLoader_virtualbase_eventFilter".}
proc fcQPluginLoader_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPluginLoader_virtualbase_timerEvent".}
proc fcQPluginLoader_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPluginLoader_virtualbase_childEvent".}
proc fcQPluginLoader_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPluginLoader_virtualbase_customEvent".}
proc fcQPluginLoader_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPluginLoader_virtualbase_connectNotify".}
proc fcQPluginLoader_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPluginLoader_virtualbase_disconnectNotify".}
proc fcQPluginLoader_protectedbase_sender(self: pointer): pointer {.importc: "QPluginLoader_protectedbase_sender".}
proc fcQPluginLoader_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPluginLoader_protectedbase_senderSignalIndex".}
proc fcQPluginLoader_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPluginLoader_protectedbase_receivers".}
proc fcQPluginLoader_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPluginLoader_protectedbase_isSignalConnected".}
proc fcQPluginLoader_new(vtbl, vdata: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new".}
proc fcQPluginLoader_new2(vtbl, vdata: pointer, fileName: struct_miqt_string): ptr cQPluginLoader {.importc: "QPluginLoader_new2".}
proc fcQPluginLoader_new3(vtbl, vdata: pointer, parent: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new3".}
proc fcQPluginLoader_new4(vtbl, vdata: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new4".}
proc fcQPluginLoader_staticMetaObject(): pointer {.importc: "QPluginLoader_staticMetaObject".}

proc metaObject*(self: gen_qpluginloader_types.QPluginLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpluginloader_types.QPluginLoader, param1: cstring): pointer =
  fcQPluginLoader_metacast(self.h, param1)

proc metacall*(self: gen_qpluginloader_types.QPluginLoader, param1: cint, param2: cint, param3: pointer): cint =
  fcQPluginLoader_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring): string =
  let v_ms = fcQPluginLoader_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc instance*(self: gen_qpluginloader_types.QPluginLoader): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPluginLoader_instance(self.h), owned: false)

proc metaData*(self: gen_qpluginloader_types.QPluginLoader): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQPluginLoader_metaData(self.h), owned: true)

proc staticInstances*(_: type gen_qpluginloader_types.QPluginLoader): seq[gen_qobject_types.QObject] =
  var v_ma = fcQPluginLoader_staticInstances()
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc staticPlugins*(_: type gen_qpluginloader_types.QPluginLoader): seq[gen_qplugin_types.QStaticPlugin] =
  var v_ma = fcQPluginLoader_staticPlugins()
  var vx_ret = newSeq[gen_qplugin_types.QStaticPlugin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qplugin_types.QStaticPlugin(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc load*(self: gen_qpluginloader_types.QPluginLoader): bool =
  fcQPluginLoader_load(self.h)

proc unload*(self: gen_qpluginloader_types.QPluginLoader): bool =
  fcQPluginLoader_unload(self.h)

proc isLoaded*(self: gen_qpluginloader_types.QPluginLoader): bool =
  fcQPluginLoader_isLoaded(self.h)

proc setFileName*(self: gen_qpluginloader_types.QPluginLoader, fileName: openArray[char]): void =
  fcQPluginLoader_setFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc fileName*(self: gen_qpluginloader_types.QPluginLoader): string =
  let v_ms = fcQPluginLoader_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc errorString*(self: gen_qpluginloader_types.QPluginLoader): string =
  let v_ms = fcQPluginLoader_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setLoadHints*(self: gen_qpluginloader_types.QPluginLoader, loadHints: cint): void =
  fcQPluginLoader_setLoadHints(self.h, cint(loadHints))

proc loadHints*(self: gen_qpluginloader_types.QPluginLoader): cint =
  cint(fcQPluginLoader_loadHints(self.h))

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring, c: cstring): string =
  let v_ms = fcQPluginLoader_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPluginLoader_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QPluginLoaderVTable* {.inheritable, pure.} = object
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
proc QPluginLoadermetaObject*(self: gen_qpluginloader_types.QPluginLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_virtualbase_metaObject(self.h), owned: false)

proc cQPluginLoader_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPluginLoadermetacast*(self: gen_qpluginloader_types.QPluginLoader, param1: cstring): pointer =
  fcQPluginLoader_virtualbase_metacast(self.h, param1)

proc cQPluginLoader_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPluginLoadermetacall*(self: gen_qpluginloader_types.QPluginLoader, param1: cint, param2: cint, param3: pointer): cint =
  fcQPluginLoader_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPluginLoader_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPluginLoaderevent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QEvent): bool =
  fcQPluginLoader_virtualbase_event(self.h, event.h)

proc cQPluginLoader_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPluginLoadereventFilter*(self: gen_qpluginloader_types.QPluginLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPluginLoader_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQPluginLoader_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPluginLoadertimerEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPluginLoader_virtualbase_timerEvent(self.h, event.h)

proc cQPluginLoader_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPluginLoaderchildEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPluginLoader_virtualbase_childEvent(self.h, event.h)

proc cQPluginLoader_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPluginLoadercustomEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QEvent): void =
  fcQPluginLoader_virtualbase_customEvent(self.h, event.h)

proc cQPluginLoader_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPluginLoaderconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPluginLoader_virtualbase_connectNotify(self.h, signal.h)

proc cQPluginLoader_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPluginLoaderdisconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPluginLoader_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPluginLoader_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPluginLoaderVTable](fcQPluginLoader_vdata(self))
  let self = QPluginLoader(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPluginLoader* {.inheritable.} = ref object of QPluginLoader
  vtbl*: cQPluginLoaderVTable
method metaObject*(self: VirtualQPluginLoader): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPluginLoadermetaObject(self[])
proc cQPluginLoader_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPluginLoader, param1: cstring): pointer {.base.} =
  QPluginLoadermetacast(self[], param1)
proc cQPluginLoader_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPluginLoader, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPluginLoadermetacall(self[], param1, param2, param3)
proc cQPluginLoader_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQPluginLoader, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPluginLoaderevent(self[], event)
proc cQPluginLoader_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQPluginLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPluginLoadereventFilter(self[], watched, event)
proc cQPluginLoader_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQPluginLoader, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPluginLoadertimerEvent(self[], event)
proc cQPluginLoader_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPluginLoader, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPluginLoaderchildEvent(self[], event)
proc cQPluginLoader_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPluginLoader, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPluginLoadercustomEvent(self[], event)
proc cQPluginLoader_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPluginLoaderconnectNotify(self[], signal)
proc cQPluginLoader_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPluginLoaderdisconnectNotify(self[], signal)
proc cQPluginLoader_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPluginLoader](fcQPluginLoader_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qpluginloader_types.QPluginLoader): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPluginLoader_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpluginloader_types.QPluginLoader): cint =
  fcQPluginLoader_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpluginloader_types.QPluginLoader, signal: cstring): cint =
  fcQPluginLoader_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPluginLoader_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](fcQPluginLoader_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPluginLoader_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPluginLoader_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPluginLoader_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPluginLoader_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPluginLoader_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPluginLoader_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPluginLoader_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPluginLoader_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPluginLoader_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPluginLoader_vtable_callback_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    fileName: openArray[char],
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](fcQPluginLoader_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPluginLoader_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPluginLoader_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPluginLoader_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPluginLoader_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPluginLoader_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPluginLoader_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPluginLoader_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPluginLoader_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPluginLoader_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPluginLoader_vtable_callback_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](fcQPluginLoader_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPluginLoader_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPluginLoader_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPluginLoader_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPluginLoader_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPluginLoader_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPluginLoader_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPluginLoader_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPluginLoader_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPluginLoader_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPluginLoader_vtable_callback_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    fileName: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QPluginLoaderVTable = nil): gen_qpluginloader_types.QPluginLoader =
  let vtbl = if vtbl == nil: new QPluginLoaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPluginLoaderVTable](fcQPluginLoader_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPluginLoader_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPluginLoader_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPluginLoader_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPluginLoader_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPluginLoader_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPluginLoader_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPluginLoader_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPluginLoader_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPluginLoader_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPluginLoader_vtable_callback_disconnectNotify
  gen_qpluginloader_types.QPluginLoader(h: fcQPluginLoader_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), parent.h), owned: true)

const cQPluginLoader_mvtbl = cQPluginLoaderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPluginLoader()[])](self.fcQPluginLoader_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPluginLoader_method_callback_metaObject,
  metacast: cQPluginLoader_method_callback_metacast,
  metacall: cQPluginLoader_method_callback_metacall,
  event: cQPluginLoader_method_callback_event,
  eventFilter: cQPluginLoader_method_callback_eventFilter,
  timerEvent: cQPluginLoader_method_callback_timerEvent,
  childEvent: cQPluginLoader_method_callback_childEvent,
  customEvent: cQPluginLoader_method_callback_customEvent,
  connectNotify: cQPluginLoader_method_callback_connectNotify,
  disconnectNotify: cQPluginLoader_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    inst: VirtualQPluginLoader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPluginLoader_new(addr(cQPluginLoader_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    fileName: openArray[char],
    inst: VirtualQPluginLoader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPluginLoader_new2(addr(cQPluginLoader_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  inst[].owned = true

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPluginLoader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPluginLoader_new3(addr(cQPluginLoader_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qpluginloader_types.QPluginLoader,
    fileName: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQPluginLoader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPluginLoader_new4(addr(cQPluginLoader_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpluginloader_types.QPluginLoader): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_staticMetaObject())
