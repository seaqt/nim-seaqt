import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml") & " -fPIC"
{.compile("gen_qqmlapplicationengine.cpp", cflags).}


import ./gen_qqmlapplicationengine_types
export gen_qqmlapplicationengine_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qqmlengine,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qqmlengine

type cQQmlApplicationEngine*{.exportc: "QQmlApplicationEngine", incompleteStruct.} = object

proc fcQQmlApplicationEngine_metaObject(self: pointer): pointer {.importc: "QQmlApplicationEngine_metaObject".}
proc fcQQmlApplicationEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_metacast".}
proc fcQQmlApplicationEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_metacall".}
proc fcQQmlApplicationEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr".}
proc fcQQmlApplicationEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf8".}
proc fcQQmlApplicationEngine_rootObjects(self: pointer): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects".}
proc fcQQmlApplicationEngine_rootObjects2(self: pointer): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects2".}
proc fcQQmlApplicationEngine_load(self: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_load".}
proc fcQQmlApplicationEngine_loadWithFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadWithFilePath".}
proc fcQQmlApplicationEngine_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlApplicationEngine_setInitialProperties".}
proc fcQQmlApplicationEngine_loadData(self: pointer, data: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadData".}
proc fcQQmlApplicationEngine_objectCreated(self: pointer, objectVal: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_objectCreated".}
proc fcQQmlApplicationEngine_connect_objectCreated(self: pointer, slot: int, callback: proc (slot: int, objectVal: pointer, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlApplicationEngine_connect_objectCreated".}
proc fcQQmlApplicationEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr2".}
proc fcQQmlApplicationEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_tr3".}
proc fcQQmlApplicationEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf82".}
proc fcQQmlApplicationEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf83".}
proc fcQQmlApplicationEngine_loadData2(self: pointer, data: struct_miqt_string, url: pointer): void {.importc: "QQmlApplicationEngine_loadData2".}
proc fcQQmlApplicationEngine_vtbl(self: pointer): pointer {.importc: "QQmlApplicationEngine_vtbl".}
proc fcQQmlApplicationEngine_vdata(self: pointer): pointer {.importc: "QQmlApplicationEngine_vdata".}
type cQQmlApplicationEngineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlApplicationEngine_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlApplicationEngine_virtualbase_metaObject".}
proc fcQQmlApplicationEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_virtualbase_metacast".}
proc fcQQmlApplicationEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_virtualbase_metacall".}
proc fcQQmlApplicationEngine_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQmlApplicationEngine_virtualbase_event".}
proc fcQQmlApplicationEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlApplicationEngine_virtualbase_eventFilter".}
proc fcQQmlApplicationEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_timerEvent".}
proc fcQQmlApplicationEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_childEvent".}
proc fcQQmlApplicationEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_customEvent".}
proc fcQQmlApplicationEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_connectNotify".}
proc fcQQmlApplicationEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_disconnectNotify".}
proc fcQQmlApplicationEngine_protectedbase_sender(self: pointer): pointer {.importc: "QQmlApplicationEngine_protectedbase_sender".}
proc fcQQmlApplicationEngine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlApplicationEngine_protectedbase_senderSignalIndex".}
proc fcQQmlApplicationEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlApplicationEngine_protectedbase_receivers".}
proc fcQQmlApplicationEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlApplicationEngine_protectedbase_isSignalConnected".}
proc fcQQmlApplicationEngine_new(vtbl, vdata: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new".}
proc fcQQmlApplicationEngine_new2(vtbl, vdata: pointer, url: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new2".}
proc fcQQmlApplicationEngine_new3(vtbl, vdata: pointer, filePath: struct_miqt_string): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new3".}
proc fcQQmlApplicationEngine_new4(vtbl, vdata: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new4".}
proc fcQQmlApplicationEngine_new5(vtbl, vdata: pointer, url: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new5".}
proc fcQQmlApplicationEngine_new6(vtbl, vdata: pointer, filePath: struct_miqt_string, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new6".}
proc fcQQmlApplicationEngine_staticMetaObject(): pointer {.importc: "QQmlApplicationEngine_staticMetaObject".}

proc metaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cstring): pointer =
  fcQQmlApplicationEngine_metacast(self.h, param1)

proc metacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlApplicationEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring): string =
  let v_ms = fcQQmlApplicationEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring): string =
  let v_ms = fcQQmlApplicationEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootObjects*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc rootObjects2*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects2(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc load*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_load(self.h, url.h)

proc load*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, filePath: string): void =
  fcQQmlApplicationEngine_loadWithFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc setInitialProperties*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialProperties_k in initialProperties.keys():
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_ctr += 1
  initialProperties_ctr = 0
  for initialProperties_v in initialProperties.values():
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlApplicationEngine_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc loadData*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, data: seq[byte]): void =
  fcQQmlApplicationEngine_loadData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc objectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_objectCreated(self.h, objectVal.h, url.h)

type QQmlApplicationEngineobjectCreatedSlot* = proc(objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl)
proc cQQmlApplicationEngine_slot_callback_objectCreated(slot: int, objectVal: pointer, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)

  let slotval2 = gen_qurl_types.QUrl(h: url, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQQmlApplicationEngine_slot_callback_objectCreated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onobjectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineobjectCreatedSlot) =
  var tmp = new QQmlApplicationEngineobjectCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_connect_objectCreated(self.h, cast[int](addr tmp[]), cQQmlApplicationEngine_slot_callback_objectCreated, cQQmlApplicationEngine_slot_callback_objectCreated_release)

proc tr*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlApplicationEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlApplicationEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlApplicationEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlApplicationEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc loadData*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, data: seq[byte], url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_loadData2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), url.h)

type QQmlApplicationEnginemetaObjectProc* = proc(self: QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlApplicationEnginemetacastProc* = proc(self: QQmlApplicationEngine, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlApplicationEnginemetacallProc* = proc(self: QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlApplicationEngineeventProc* = proc(self: QQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlApplicationEngineeventFilterProc* = proc(self: QQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlApplicationEnginetimerEventProc* = proc(self: QQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlApplicationEnginechildEventProc* = proc(self: QQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlApplicationEnginecustomEventProc* = proc(self: QQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlApplicationEngineconnectNotifyProc* = proc(self: QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlApplicationEnginedisconnectNotifyProc* = proc(self: QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlApplicationEngineVTable* {.inheritable, pure.} = object
  vtbl: cQQmlApplicationEngineVTable
  metaObject*: QQmlApplicationEnginemetaObjectProc
  metacast*: QQmlApplicationEnginemetacastProc
  metacall*: QQmlApplicationEnginemetacallProc
  event*: QQmlApplicationEngineeventProc
  eventFilter*: QQmlApplicationEngineeventFilterProc
  timerEvent*: QQmlApplicationEnginetimerEventProc
  childEvent*: QQmlApplicationEnginechildEventProc
  customEvent*: QQmlApplicationEnginecustomEventProc
  connectNotify*: QQmlApplicationEngineconnectNotifyProc
  disconnectNotify*: QQmlApplicationEnginedisconnectNotifyProc
proc QQmlApplicationEnginemetaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_virtualbase_metaObject(self.h), owned: false)

proc cQQmlApplicationEngine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlApplicationEnginemetacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cstring): pointer =
  fcQQmlApplicationEngine_virtualbase_metacast(self.h, param1)

proc cQQmlApplicationEngine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlApplicationEnginemetacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlApplicationEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQmlApplicationEngine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlApplicationEngineevent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQmlApplicationEngine_virtualbase_event(self.h, param1.h)

proc cQQmlApplicationEngine_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlApplicationEngineeventFilter*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlApplicationEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQmlApplicationEngine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlApplicationEnginetimerEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlApplicationEngine_virtualbase_timerEvent(self.h, event.h)

proc cQQmlApplicationEngine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlApplicationEnginechildEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlApplicationEngine_virtualbase_childEvent(self.h, event.h)

proc cQQmlApplicationEngine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlApplicationEnginecustomEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlApplicationEngine_virtualbase_customEvent(self.h, event.h)

proc cQQmlApplicationEngine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlApplicationEngineconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlApplicationEngine_virtualbase_connectNotify(self.h, signal.h)

proc cQQmlApplicationEngine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlApplicationEnginedisconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlApplicationEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQmlApplicationEngine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlApplicationEngine* {.inheritable.} = ref object of QQmlApplicationEngine
  vtbl*: cQQmlApplicationEngineVTable
method metaObject*(self: VirtualQQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlApplicationEnginemetaObject(self[])
proc cQQmlApplicationEngine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlApplicationEngine, param1: cstring): pointer {.base.} =
  QQmlApplicationEnginemetacast(self[], param1)
proc cQQmlApplicationEngine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlApplicationEnginemetacall(self[], param1, param2, param3)
proc cQQmlApplicationEngine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlApplicationEngineevent(self[], param1)
proc cQQmlApplicationEngine_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlApplicationEngineeventFilter(self[], watched, event)
proc cQQmlApplicationEngine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlApplicationEnginetimerEvent(self[], event)
proc cQQmlApplicationEngine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlApplicationEnginechildEvent(self[], event)
proc cQQmlApplicationEngine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlApplicationEnginecustomEvent(self[], event)
proc cQQmlApplicationEngine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlApplicationEngineconnectNotify(self[], signal)
proc cQQmlApplicationEngine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlApplicationEnginedisconnectNotify(self[], signal)
proc cQQmlApplicationEngine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlApplicationEngine](fcQQmlApplicationEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlApplicationEngine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine): cint =
  fcQQmlApplicationEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: cstring): cint =
  fcQQmlApplicationEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlApplicationEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlApplicationEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlApplicationEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlApplicationEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlApplicationEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlApplicationEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlApplicationEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlApplicationEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlApplicationEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlApplicationEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlApplicationEngine_vtable_callback_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlApplicationEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlApplicationEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlApplicationEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlApplicationEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlApplicationEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlApplicationEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlApplicationEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlApplicationEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlApplicationEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlApplicationEngine_vtable_callback_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new2(addr(vtbl[].vtbl), addr(vtbl[]), url.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlApplicationEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlApplicationEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlApplicationEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlApplicationEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlApplicationEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlApplicationEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlApplicationEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlApplicationEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlApplicationEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlApplicationEngine_vtable_callback_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: filePath, len: csize_t(len(filePath)))), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlApplicationEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlApplicationEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlApplicationEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlApplicationEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlApplicationEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlApplicationEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlApplicationEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlApplicationEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlApplicationEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlApplicationEngine_vtable_callback_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlApplicationEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlApplicationEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlApplicationEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlApplicationEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlApplicationEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlApplicationEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlApplicationEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlApplicationEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlApplicationEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlApplicationEngine_vtable_callback_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new5(addr(vtbl[].vtbl), addr(vtbl[]), url.h, parent.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](fcQQmlApplicationEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlApplicationEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlApplicationEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlApplicationEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlApplicationEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlApplicationEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlApplicationEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlApplicationEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlApplicationEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlApplicationEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlApplicationEngine_vtable_callback_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new6(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h), owned: true)

const cQQmlApplicationEngine_mvtbl = cQQmlApplicationEngineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](self.fcQQmlApplicationEngine_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQmlApplicationEngine_method_callback_metaObject,
  metacast: cQQmlApplicationEngine_method_callback_metacast,
  metacall: cQQmlApplicationEngine_method_callback_metacall,
  event: cQQmlApplicationEngine_method_callback_event,
  eventFilter: cQQmlApplicationEngine_method_callback_eventFilter,
  timerEvent: cQQmlApplicationEngine_method_callback_timerEvent,
  childEvent: cQQmlApplicationEngine_method_callback_childEvent,
  customEvent: cQQmlApplicationEngine_method_callback_customEvent,
  connectNotify: cQQmlApplicationEngine_method_callback_connectNotify,
  disconnectNotify: cQQmlApplicationEngine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    inst: VirtualQQmlApplicationEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlApplicationEngine_new(addr(cQQmlApplicationEngine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl,
    inst: VirtualQQmlApplicationEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlApplicationEngine_new2(addr(cQQmlApplicationEngine_mvtbl), addr(inst[]), url.h)
  inst[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string,
    inst: VirtualQQmlApplicationEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlApplicationEngine_new3(addr(cQQmlApplicationEngine_mvtbl), addr(inst[]), struct_miqt_string(data: filePath, len: csize_t(len(filePath))))
  inst[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQmlApplicationEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlApplicationEngine_new4(addr(cQQmlApplicationEngine_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlApplicationEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlApplicationEngine_new5(addr(cQQmlApplicationEngine_mvtbl), addr(inst[]), url.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlApplicationEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlApplicationEngine_new6(addr(cQQmlApplicationEngine_mvtbl), addr(inst[]), struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_staticMetaObject())
