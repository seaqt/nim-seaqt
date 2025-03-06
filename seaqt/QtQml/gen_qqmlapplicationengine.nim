import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
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

proc fcQQmlApplicationEngine_new(): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new".}
proc fcQQmlApplicationEngine_new2(url: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new2".}
proc fcQQmlApplicationEngine_new3(filePath: struct_miqt_string): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new3".}
proc fcQQmlApplicationEngine_new4(parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new4".}
proc fcQQmlApplicationEngine_new5(url: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new5".}
proc fcQQmlApplicationEngine_new6(filePath: struct_miqt_string, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new6".}
proc fcQQmlApplicationEngine_metaObject(self: pointer, ): pointer {.importc: "QQmlApplicationEngine_metaObject".}
proc fcQQmlApplicationEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_metacast".}
proc fcQQmlApplicationEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_metacall".}
proc fcQQmlApplicationEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr".}
proc fcQQmlApplicationEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf8".}
proc fcQQmlApplicationEngine_rootObjects(self: pointer, ): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects".}
proc fcQQmlApplicationEngine_rootObjects2(self: pointer, ): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects2".}
proc fcQQmlApplicationEngine_load(self: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_load".}
proc fcQQmlApplicationEngine_loadWithFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadWithFilePath".}
proc fcQQmlApplicationEngine_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlApplicationEngine_setInitialProperties".}
proc fcQQmlApplicationEngine_loadData(self: pointer, data: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadData".}
proc fcQQmlApplicationEngine_objectCreated(self: pointer, objectVal: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_objectCreated".}
proc fcQQmlApplicationEngine_connect_objectCreated(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_connect_objectCreated".}
proc fcQQmlApplicationEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr2".}
proc fcQQmlApplicationEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_tr3".}
proc fcQQmlApplicationEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf82".}
proc fcQQmlApplicationEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf83".}
proc fcQQmlApplicationEngine_loadData2(self: pointer, data: struct_miqt_string, url: pointer): void {.importc: "QQmlApplicationEngine_loadData2".}
proc fQQmlApplicationEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlApplicationEngine_virtualbase_metaObject".}
proc fcQQmlApplicationEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_metaObject".}
proc fQQmlApplicationEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlApplicationEngine_virtualbase_metacast".}
proc fcQQmlApplicationEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_metacast".}
proc fQQmlApplicationEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlApplicationEngine_virtualbase_metacall".}
proc fcQQmlApplicationEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_metacall".}
proc fQQmlApplicationEngine_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQmlApplicationEngine_virtualbase_event".}
proc fcQQmlApplicationEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_event".}
proc fQQmlApplicationEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlApplicationEngine_virtualbase_eventFilter".}
proc fcQQmlApplicationEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_eventFilter".}
proc fQQmlApplicationEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_timerEvent".}
proc fcQQmlApplicationEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_timerEvent".}
proc fQQmlApplicationEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_childEvent".}
proc fcQQmlApplicationEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_childEvent".}
proc fQQmlApplicationEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_customEvent".}
proc fcQQmlApplicationEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_customEvent".}
proc fQQmlApplicationEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_connectNotify".}
proc fcQQmlApplicationEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_connectNotify".}
proc fQQmlApplicationEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_disconnectNotify".}
proc fcQQmlApplicationEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_disconnectNotify".}
proc fcQQmlApplicationEngine_staticMetaObject(): pointer {.importc: "QQmlApplicationEngine_staticMetaObject".}
proc fcQQmlApplicationEngine_delete(self: pointer) {.importc: "QQmlApplicationEngine_delete".}


func init*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, h: ptr cQQmlApplicationEngine): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  T(h: h)
proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  gen_qqmlapplicationengine_types.QQmlApplicationEngine.init(fcQQmlApplicationEngine_new())

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, url: gen_qurl_types.QUrl): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  gen_qqmlapplicationengine_types.QQmlApplicationEngine.init(fcQQmlApplicationEngine_new2(url.h))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, filePath: string): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  gen_qqmlapplicationengine_types.QQmlApplicationEngine.init(fcQQmlApplicationEngine_new3(struct_miqt_string(data: filePath, len: csize_t(len(filePath)))))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, parent: gen_qobject_types.QObject): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  gen_qqmlapplicationengine_types.QQmlApplicationEngine.init(fcQQmlApplicationEngine_new4(parent.h))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  gen_qqmlapplicationengine_types.QQmlApplicationEngine.init(fcQQmlApplicationEngine_new5(url.h, parent.h))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, filePath: string, parent: gen_qobject_types.QObject): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  gen_qqmlapplicationengine_types.QQmlApplicationEngine.init(fcQQmlApplicationEngine_new6(struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h))

proc metaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_metaObject(self.h))

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

proc rootObjects*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  vx_ret

proc rootObjects2*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects2(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  vx_ret

proc load*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_load(self.h, url.h)

proc load*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, filePath: string): void =
  fcQQmlApplicationEngine_loadWithFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc setInitialProperties*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlApplicationEngine_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc loadData*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, data: seq[byte]): void =
  fcQQmlApplicationEngine_loadData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc objectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_objectCreated(self.h, objectVal.h, url.h)

type QQmlApplicationEngineobjectCreatedSlot* = proc(objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl)
proc miqt_exec_callback_QQmlApplicationEngine_objectCreated(slot: int, objectVal: pointer, url: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1, slotval2)

proc onobjectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineobjectCreatedSlot) =
  var tmp = new QQmlApplicationEngineobjectCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_connect_objectCreated(self.h, cast[int](addr tmp[]))

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

proc QQmlApplicationEnginemetaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlApplicationEngine_virtualbase_metaObject(self.h))

type QQmlApplicationEnginemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginemetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_metaObject(self: ptr cQQmlApplicationEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlApplicationEngine_metaObject ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlApplicationEnginemetacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cstring): pointer =
  fQQmlApplicationEngine_virtualbase_metacast(self.h, param1)

type QQmlApplicationEnginemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginemetacastProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_metacast(self: ptr cQQmlApplicationEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlApplicationEngine_metacast ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlApplicationEnginemetacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlApplicationEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlApplicationEnginemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginemetacallProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_metacall(self: ptr cQQmlApplicationEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlApplicationEngine_metacall ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlApplicationEngineevent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool =
  fQQmlApplicationEngine_virtualbase_event(self.h, param1.h)

type QQmlApplicationEngineeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineeventProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEngineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_event(self: ptr cQQmlApplicationEngine, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQmlApplicationEngine_event ".} =
  var nimfunc = cast[ptr QQmlApplicationEngineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlApplicationEngineeventFilter*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlApplicationEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlApplicationEngineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineeventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEngineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_eventFilter(self: ptr cQQmlApplicationEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlApplicationEngine_eventFilter ".} =
  var nimfunc = cast[ptr QQmlApplicationEngineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlApplicationEnginetimerEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlApplicationEngine_virtualbase_timerEvent(self.h, event.h)

type QQmlApplicationEnginetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginetimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_timerEvent(self: ptr cQQmlApplicationEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_timerEvent ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlApplicationEnginechildEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlApplicationEngine_virtualbase_childEvent(self.h, event.h)

type QQmlApplicationEnginechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginechildEventProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_childEvent(self: ptr cQQmlApplicationEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_childEvent ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlApplicationEnginecustomEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void =
  fQQmlApplicationEngine_virtualbase_customEvent(self.h, event.h)

type QQmlApplicationEnginecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginecustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_customEvent(self: ptr cQQmlApplicationEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_customEvent ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlApplicationEngineconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlApplicationEngine_virtualbase_connectNotify(self.h, signal.h)

type QQmlApplicationEngineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEngineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_connectNotify(self: ptr cQQmlApplicationEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_connectNotify ".} =
  var nimfunc = cast[ptr QQmlApplicationEngineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlApplicationEnginedisconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlApplicationEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlApplicationEnginedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEnginedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlApplicationEnginedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_disconnectNotify(self: ptr cQQmlApplicationEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlApplicationEnginedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_staticMetaObject())
proc delete*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine) =
  fcQQmlApplicationEngine_delete(self.h)
