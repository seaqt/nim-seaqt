import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
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

proc fcQQmlApplicationEngine_metaObject(self: pointer, ): pointer {.importc: "QQmlApplicationEngine_metaObject".}
proc fcQQmlApplicationEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_metacast".}
proc fcQQmlApplicationEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_metacall".}
proc fcQQmlApplicationEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr".}
proc fcQQmlApplicationEngine_rootObjects(self: pointer, ): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects".}
proc fcQQmlApplicationEngine_load(self: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_load".}
proc fcQQmlApplicationEngine_loadWithFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadWithFilePath".}
proc fcQQmlApplicationEngine_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlApplicationEngine_setInitialProperties".}
proc fcQQmlApplicationEngine_setExtraFileSelectors(self: pointer, extraFileSelectors: struct_miqt_array): void {.importc: "QQmlApplicationEngine_setExtraFileSelectors".}
proc fcQQmlApplicationEngine_loadData(self: pointer, data: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadData".}
proc fcQQmlApplicationEngine_objectCreated(self: pointer, objectVal: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_objectCreated".}
proc fcQQmlApplicationEngine_connect_objectCreated(self: pointer, slot: int, callback: proc (slot: int, objectVal: pointer, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlApplicationEngine_connect_objectCreated".}
proc fcQQmlApplicationEngine_objectCreationFailed(self: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_objectCreationFailed".}
proc fcQQmlApplicationEngine_connect_objectCreationFailed(self: pointer, slot: int, callback: proc (slot: int, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlApplicationEngine_connect_objectCreationFailed".}
proc fcQQmlApplicationEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr2".}
proc fcQQmlApplicationEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_tr3".}
proc fcQQmlApplicationEngine_loadData2(self: pointer, data: struct_miqt_string, url: pointer): void {.importc: "QQmlApplicationEngine_loadData2".}
type cQQmlApplicationEngineVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQQmlApplicationEngineVTable, self: ptr cQQmlApplicationEngine) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlApplicationEngine_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlApplicationEngine_virtualbase_metaObject".}
proc fcQQmlApplicationEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_virtualbase_metacast".}
proc fcQQmlApplicationEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_virtualbase_metacall".}
proc fcQQmlApplicationEngine_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQmlApplicationEngine_virtualbase_event".}
proc fcQQmlApplicationEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlApplicationEngine_virtualbase_eventFilter".}
proc fcQQmlApplicationEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_timerEvent".}
proc fcQQmlApplicationEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_childEvent".}
proc fcQQmlApplicationEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_customEvent".}
proc fcQQmlApplicationEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_connectNotify".}
proc fcQQmlApplicationEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_disconnectNotify".}
proc fcQQmlApplicationEngine_protectedbase_sender(self: pointer, ): pointer {.importc: "QQmlApplicationEngine_protectedbase_sender".}
proc fcQQmlApplicationEngine_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQmlApplicationEngine_protectedbase_senderSignalIndex".}
proc fcQQmlApplicationEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlApplicationEngine_protectedbase_receivers".}
proc fcQQmlApplicationEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlApplicationEngine_protectedbase_isSignalConnected".}
proc fcQQmlApplicationEngine_new(vtbl: pointer, ): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new".}
proc fcQQmlApplicationEngine_new2(vtbl: pointer, url: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new2".}
proc fcQQmlApplicationEngine_new3(vtbl: pointer, filePath: struct_miqt_string): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new3".}
proc fcQQmlApplicationEngine_new4(vtbl: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new4".}
proc fcQQmlApplicationEngine_new5(vtbl: pointer, url: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new5".}
proc fcQQmlApplicationEngine_new6(vtbl: pointer, filePath: struct_miqt_string, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new6".}
proc fcQQmlApplicationEngine_staticMetaObject(): pointer {.importc: "QQmlApplicationEngine_staticMetaObject".}

proc metaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject =
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

proc rootObjects*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects(self.h)
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

proc setExtraFileSelectors*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, extraFileSelectors: seq[string]): void =
  var extraFileSelectors_CArray = newSeq[struct_miqt_string](len(extraFileSelectors))
  for i in 0..<len(extraFileSelectors):
    extraFileSelectors_CArray[i] = struct_miqt_string(data: extraFileSelectors[i], len: csize_t(len(extraFileSelectors[i])))

  fcQQmlApplicationEngine_setExtraFileSelectors(self.h, struct_miqt_array(len: csize_t(len(extraFileSelectors)), data: if len(extraFileSelectors) == 0: nil else: addr(extraFileSelectors_CArray[0])))

proc loadData*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, data: seq[byte]): void =
  fcQQmlApplicationEngine_loadData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc objectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_objectCreated(self.h, objectVal.h, url.h)

type QQmlApplicationEngineobjectCreatedSlot* = proc(objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQQmlApplicationEngine_objectCreated(slot: int, objectVal: pointer, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)

  let slotval2 = gen_qurl_types.QUrl(h: url, owned: false)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQQmlApplicationEngine_objectCreated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onobjectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineobjectCreatedSlot) =
  var tmp = new QQmlApplicationEngineobjectCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_connect_objectCreated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQmlApplicationEngine_objectCreated, miqt_exec_callback_cQQmlApplicationEngine_objectCreated_release)

proc objectCreationFailed*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_objectCreationFailed(self.h, url.h)

type QQmlApplicationEngineobjectCreationFailedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQQmlApplicationEngine_objectCreationFailed(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQmlApplicationEngineobjectCreationFailedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQmlApplicationEngine_objectCreationFailed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlApplicationEngineobjectCreationFailedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onobjectCreationFailed*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineobjectCreationFailedSlot) =
  var tmp = new QQmlApplicationEngineobjectCreationFailedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_connect_objectCreationFailed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQmlApplicationEngine_objectCreationFailed, miqt_exec_callback_cQQmlApplicationEngine_objectCreationFailed_release)

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
proc QQmlApplicationEnginemetaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQQmlApplicationEngine_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlApplicationEnginemetacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cstring): pointer =
  fcQQmlApplicationEngine_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlApplicationEngine_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlApplicationEnginemetacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlApplicationEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlApplicationEngine_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlApplicationEngineevent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQmlApplicationEngine_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQmlApplicationEngine_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlApplicationEngineeventFilter*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlApplicationEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlApplicationEnginetimerEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlApplicationEngine_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlApplicationEnginechildEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlApplicationEngine_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlApplicationEnginecustomEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlApplicationEngine_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlApplicationEngineconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlApplicationEngine_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlApplicationEngine_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlApplicationEnginedisconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlApplicationEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlApplicationEngine* {.inheritable.} = ref object of QQmlApplicationEngine
  vtbl*: cQQmlApplicationEngineVTable
method metaObject*(self: VirtualQQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlApplicationEnginemetaObject(self[])
proc miqt_exec_method_cQQmlApplicationEngine_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlApplicationEngine, param1: cstring): pointer {.base.} =
  QQmlApplicationEnginemetacast(self[], param1)
proc miqt_exec_method_cQQmlApplicationEngine_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlApplicationEnginemetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQQmlApplicationEngine_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlApplicationEngineevent(self[], param1)
proc miqt_exec_method_cQQmlApplicationEngine_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlApplicationEngineeventFilter(self[], watched, event)
proc miqt_exec_method_cQQmlApplicationEngine_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlApplicationEnginetimerEvent(self[], event)
proc miqt_exec_method_cQQmlApplicationEngine_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlApplicationEnginechildEvent(self[], event)
proc miqt_exec_method_cQQmlApplicationEngine_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlApplicationEnginecustomEvent(self[], event)
proc miqt_exec_method_cQQmlApplicationEngine_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlApplicationEngineconnectNotify(self[], signal)
proc miqt_exec_method_cQQmlApplicationEngine_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlApplicationEnginedisconnectNotify(self[], signal)
proc miqt_exec_method_cQQmlApplicationEngine_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQQmlApplicationEngine](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlApplicationEngine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): cint =
  fcQQmlApplicationEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: cstring): cint =
  fcQQmlApplicationEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlApplicationEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new2(addr(vtbl[].vtbl), url.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new3(addr(vtbl[].vtbl), struct_miqt_string(data: filePath, len: csize_t(len(filePath)))), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new4(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new5(addr(vtbl[].vtbl), url.h, parent.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new6(addr(vtbl[].vtbl), struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h), owned: true)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    vtbl: VirtualQQmlApplicationEngine) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQmlApplicationEngine_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQmlApplicationEngine_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQmlApplicationEngine_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQQmlApplicationEngine_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQmlApplicationEngine_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQmlApplicationEngine_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQmlApplicationEngine_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQmlApplicationEngine_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQmlApplicationEngine_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQmlApplicationEngine_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQmlApplicationEngine_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl,
    vtbl: VirtualQQmlApplicationEngine) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQmlApplicationEngine_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQmlApplicationEngine_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQmlApplicationEngine_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQQmlApplicationEngine_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQmlApplicationEngine_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQmlApplicationEngine_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQmlApplicationEngine_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQmlApplicationEngine_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQmlApplicationEngine_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQmlApplicationEngine_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQmlApplicationEngine_new2(addr(vtbl[].vtbl), url.h)
  vtbl[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string,
    vtbl: VirtualQQmlApplicationEngine) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQmlApplicationEngine_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQmlApplicationEngine_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQmlApplicationEngine_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQQmlApplicationEngine_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQmlApplicationEngine_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQmlApplicationEngine_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQmlApplicationEngine_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQmlApplicationEngine_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQmlApplicationEngine_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQmlApplicationEngine_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQmlApplicationEngine_new3(addr(vtbl[].vtbl), struct_miqt_string(data: filePath, len: csize_t(len(filePath))))
  vtbl[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQQmlApplicationEngine) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQmlApplicationEngine_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQmlApplicationEngine_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQmlApplicationEngine_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQQmlApplicationEngine_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQmlApplicationEngine_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQmlApplicationEngine_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQmlApplicationEngine_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQmlApplicationEngine_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQmlApplicationEngine_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQmlApplicationEngine_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQmlApplicationEngine_new4(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: VirtualQQmlApplicationEngine) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQmlApplicationEngine_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQmlApplicationEngine_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQmlApplicationEngine_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQQmlApplicationEngine_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQmlApplicationEngine_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQmlApplicationEngine_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQmlApplicationEngine_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQmlApplicationEngine_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQmlApplicationEngine_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQmlApplicationEngine_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQmlApplicationEngine_new5(addr(vtbl[].vtbl), url.h, parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQQmlApplicationEngine) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQQmlApplicationEngine()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQQmlApplicationEngine, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQQmlApplicationEngine_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQQmlApplicationEngine_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQQmlApplicationEngine_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQQmlApplicationEngine_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQQmlApplicationEngine_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQQmlApplicationEngine_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQQmlApplicationEngine_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQQmlApplicationEngine_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQQmlApplicationEngine_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQQmlApplicationEngine_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQQmlApplicationEngine_new6(addr(vtbl[].vtbl), struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_staticMetaObject())
