import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
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

proc fcQPluginLoader_new(): ptr cQPluginLoader {.importc: "QPluginLoader_new".}
proc fcQPluginLoader_new2(fileName: struct_miqt_string): ptr cQPluginLoader {.importc: "QPluginLoader_new2".}
proc fcQPluginLoader_new3(parent: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new3".}
proc fcQPluginLoader_new4(fileName: struct_miqt_string, parent: pointer): ptr cQPluginLoader {.importc: "QPluginLoader_new4".}
proc fcQPluginLoader_metaObject(self: pointer, ): pointer {.importc: "QPluginLoader_metaObject".}
proc fcQPluginLoader_metacast(self: pointer, param1: cstring): pointer {.importc: "QPluginLoader_metacast".}
proc fcQPluginLoader_tr(s: cstring): struct_miqt_string {.importc: "QPluginLoader_tr".}
proc fcQPluginLoader_trUtf8(s: cstring): struct_miqt_string {.importc: "QPluginLoader_trUtf8".}
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
proc fcQPluginLoader_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPluginLoader_trUtf82".}
proc fcQPluginLoader_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPluginLoader_trUtf83".}
proc fQPluginLoader_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPluginLoader_virtualbase_event".}
proc fcQPluginLoader_override_virtual_event(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_event".}
proc fQPluginLoader_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPluginLoader_virtualbase_eventFilter".}
proc fcQPluginLoader_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_eventFilter".}
proc fQPluginLoader_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPluginLoader_virtualbase_timerEvent".}
proc fcQPluginLoader_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_timerEvent".}
proc fQPluginLoader_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPluginLoader_virtualbase_childEvent".}
proc fcQPluginLoader_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_childEvent".}
proc fQPluginLoader_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPluginLoader_virtualbase_customEvent".}
proc fcQPluginLoader_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_customEvent".}
proc fQPluginLoader_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPluginLoader_virtualbase_connectNotify".}
proc fcQPluginLoader_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_connectNotify".}
proc fQPluginLoader_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPluginLoader_virtualbase_disconnectNotify".}
proc fcQPluginLoader_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPluginLoader_override_virtual_disconnectNotify".}
proc fcQPluginLoader_delete(self: pointer) {.importc: "QPluginLoader_delete".}


func init*(T: type gen_qpluginloader_types.QPluginLoader, h: ptr cQPluginLoader): gen_qpluginloader_types.QPluginLoader =
  T(h: h)
proc create*(T: type gen_qpluginloader_types.QPluginLoader, ): gen_qpluginloader_types.QPluginLoader =
  gen_qpluginloader_types.QPluginLoader.init(fcQPluginLoader_new())

proc create*(T: type gen_qpluginloader_types.QPluginLoader, fileName: string): gen_qpluginloader_types.QPluginLoader =
  gen_qpluginloader_types.QPluginLoader.init(fcQPluginLoader_new2(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qpluginloader_types.QPluginLoader, parent: gen_qobject_types.QObject): gen_qpluginloader_types.QPluginLoader =
  gen_qpluginloader_types.QPluginLoader.init(fcQPluginLoader_new3(parent.h))

proc create*(T: type gen_qpluginloader_types.QPluginLoader, fileName: string, parent: gen_qobject_types.QObject): gen_qpluginloader_types.QPluginLoader =
  gen_qpluginloader_types.QPluginLoader.init(fcQPluginLoader_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h))

proc metaObject*(self: gen_qpluginloader_types.QPluginLoader, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPluginLoader_metaObject(self.h))

proc metacast*(self: gen_qpluginloader_types.QPluginLoader, param1: cstring): pointer =
  fcQPluginLoader_metacast(self.h, param1)

proc tr*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring): string =
  let v_ms = fcQPluginLoader_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring): string =
  let v_ms = fcQPluginLoader_trUtf8(s)
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
  vx_ret

proc staticPlugins*(_: type gen_qpluginloader_types.QPluginLoader, ): seq[gen_qplugin_types.QStaticPlugin] =
  var v_ma = fcQPluginLoader_staticPlugins()
  var vx_ret = newSeq[gen_qplugin_types.QStaticPlugin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qplugin_types.QStaticPlugin(h: v_outCast[i])
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

proc trUtf8*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring, c: cstring): string =
  let v_ms = fcQPluginLoader_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpluginloader_types.QPluginLoader, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPluginLoader_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPluginLoaderevent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QEvent): bool =
  fQPluginLoader_virtualbase_event(self.h, event.h)

type QPluginLoadereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoadereventProc) =
  # TODO check subclass
  var tmp = new QPluginLoadereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_event(self: ptr cQPluginLoader, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPluginLoader_event ".} =
  var nimfunc = cast[ptr QPluginLoadereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPluginLoadereventFilter*(self: gen_qpluginloader_types.QPluginLoader, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPluginLoader_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPluginLoadereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoadereventFilterProc) =
  # TODO check subclass
  var tmp = new QPluginLoadereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_eventFilter(self: ptr cQPluginLoader, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPluginLoader_eventFilter ".} =
  var nimfunc = cast[ptr QPluginLoadereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPluginLoadertimerEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPluginLoader_virtualbase_timerEvent(self.h, event.h)

type QPluginLoadertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoadertimerEventProc) =
  # TODO check subclass
  var tmp = new QPluginLoadertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_timerEvent(self: ptr cQPluginLoader, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPluginLoader_timerEvent ".} =
  var nimfunc = cast[ptr QPluginLoadertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPluginLoaderchildEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QChildEvent): void =
  fQPluginLoader_virtualbase_childEvent(self.h, event.h)

type QPluginLoaderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoaderchildEventProc) =
  # TODO check subclass
  var tmp = new QPluginLoaderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_childEvent(self: ptr cQPluginLoader, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPluginLoader_childEvent ".} =
  var nimfunc = cast[ptr QPluginLoaderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPluginLoadercustomEvent*(self: gen_qpluginloader_types.QPluginLoader, event: gen_qcoreevent_types.QEvent): void =
  fQPluginLoader_virtualbase_customEvent(self.h, event.h)

type QPluginLoadercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoadercustomEventProc) =
  # TODO check subclass
  var tmp = new QPluginLoadercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_customEvent(self: ptr cQPluginLoader, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPluginLoader_customEvent ".} =
  var nimfunc = cast[ptr QPluginLoadercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPluginLoaderconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPluginLoader_virtualbase_connectNotify(self.h, signal.h)

type QPluginLoaderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoaderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPluginLoaderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_connectNotify(self: ptr cQPluginLoader, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPluginLoader_connectNotify ".} =
  var nimfunc = cast[ptr QPluginLoaderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPluginLoaderdisconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPluginLoader_virtualbase_disconnectNotify(self.h, signal.h)

type QPluginLoaderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpluginloader_types.QPluginLoader, slot: QPluginLoaderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPluginLoaderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPluginLoader_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPluginLoader_disconnectNotify(self: ptr cQPluginLoader, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPluginLoader_disconnectNotify ".} =
  var nimfunc = cast[ptr QPluginLoaderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qpluginloader_types.QPluginLoader) =
  fcQPluginLoader_delete(self.h)
