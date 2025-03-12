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
{.compile("gen_qqmlcomponent.cpp", cflags).}


type QQmlComponentCompilationModeEnum* = distinct cint
template PreferSynchronous*(_: type QQmlComponentCompilationModeEnum): untyped = 0
template Asynchronous*(_: type QQmlComponentCompilationModeEnum): untyped = 1


type QQmlComponentStatusEnum* = distinct cint
template Null*(_: type QQmlComponentStatusEnum): untyped = 0
template Ready*(_: type QQmlComponentStatusEnum): untyped = 1
template Loading*(_: type QQmlComponentStatusEnum): untyped = 2
template Error*(_: type QQmlComponentStatusEnum): untyped = 3


import ./gen_qqmlcomponent_types
export gen_qqmlcomponent_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qqmlcontext_types,
  ./gen_qqmlengine_types,
  ./gen_qqmlerror_types,
  ./gen_qqmlincubator_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qqmlcontext_types,
  gen_qqmlengine_types,
  gen_qqmlerror_types,
  gen_qqmlincubator_types

type cQQmlComponent*{.exportc: "QQmlComponent", incompleteStruct.} = object

proc fcQQmlComponent_metaObject(self: pointer): pointer {.importc: "QQmlComponent_metaObject".}
proc fcQQmlComponent_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlComponent_metacast".}
proc fcQQmlComponent_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlComponent_metacall".}
proc fcQQmlComponent_tr(s: cstring): struct_miqt_string {.importc: "QQmlComponent_tr".}
proc fcQQmlComponent_status(self: pointer): cint {.importc: "QQmlComponent_status".}
proc fcQQmlComponent_isNull(self: pointer): bool {.importc: "QQmlComponent_isNull".}
proc fcQQmlComponent_isReady(self: pointer): bool {.importc: "QQmlComponent_isReady".}
proc fcQQmlComponent_isError(self: pointer): bool {.importc: "QQmlComponent_isError".}
proc fcQQmlComponent_isLoading(self: pointer): bool {.importc: "QQmlComponent_isLoading".}
proc fcQQmlComponent_isBound(self: pointer): bool {.importc: "QQmlComponent_isBound".}
proc fcQQmlComponent_errors(self: pointer): struct_miqt_array {.importc: "QQmlComponent_errors".}
proc fcQQmlComponent_errorString(self: pointer): struct_miqt_string {.importc: "QQmlComponent_errorString".}
proc fcQQmlComponent_progress(self: pointer): float64 {.importc: "QQmlComponent_progress".}
proc fcQQmlComponent_url(self: pointer): pointer {.importc: "QQmlComponent_url".}
proc fcQQmlComponent_create(self: pointer, context: pointer): pointer {.importc: "QQmlComponent_create".}
proc fcQQmlComponent_createWithInitialProperties(self: pointer, initialProperties: struct_miqt_map): pointer {.importc: "QQmlComponent_createWithInitialProperties".}
proc fcQQmlComponent_setInitialProperties(self: pointer, component: pointer, properties: struct_miqt_map): void {.importc: "QQmlComponent_setInitialProperties".}
proc fcQQmlComponent_beginCreate(self: pointer, param1: pointer): pointer {.importc: "QQmlComponent_beginCreate".}
proc fcQQmlComponent_completeCreate(self: pointer): void {.importc: "QQmlComponent_completeCreate".}
proc fcQQmlComponent_createWithQQmlIncubator(self: pointer, param1: pointer): void {.importc: "QQmlComponent_createWithQQmlIncubator".}
proc fcQQmlComponent_creationContext(self: pointer): pointer {.importc: "QQmlComponent_creationContext".}
proc fcQQmlComponent_engine(self: pointer): pointer {.importc: "QQmlComponent_engine".}
proc fcQQmlComponent_loadUrl(self: pointer, url: pointer): void {.importc: "QQmlComponent_loadUrl".}
proc fcQQmlComponent_loadUrl2(self: pointer, url: pointer, mode: cint): void {.importc: "QQmlComponent_loadUrl2".}
proc fcQQmlComponent_setData(self: pointer, param1: struct_miqt_string, baseUrl: pointer): void {.importc: "QQmlComponent_setData".}
proc fcQQmlComponent_statusChanged(self: pointer, param1: cint): void {.importc: "QQmlComponent_statusChanged".}
proc fcQQmlComponent_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlComponent_connect_statusChanged".}
proc fcQQmlComponent_progressChanged(self: pointer, param1: float64): void {.importc: "QQmlComponent_progressChanged".}
proc fcQQmlComponent_connect_progressChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlComponent_connect_progressChanged".}
proc fcQQmlComponent_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlComponent_tr2".}
proc fcQQmlComponent_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlComponent_tr3".}
proc fcQQmlComponent_createWithInitialProperties2(self: pointer, initialProperties: struct_miqt_map, context: pointer): pointer {.importc: "QQmlComponent_createWithInitialProperties2".}
proc fcQQmlComponent_create2(self: pointer, param1: pointer, context: pointer): void {.importc: "QQmlComponent_create2".}
proc fcQQmlComponent_create3(self: pointer, param1: pointer, context: pointer, forContext: pointer): void {.importc: "QQmlComponent_create3".}
proc fcQQmlComponent_vtbl(self: pointer): pointer {.importc: "QQmlComponent_vtbl".}
proc fcQQmlComponent_vdata(self: pointer): pointer {.importc: "QQmlComponent_vdata".}
type cQQmlComponentVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(self: pointer, context: pointer): pointer {.cdecl, raises: [], gcsafe.}
  beginCreate*: proc(self: pointer, param1: pointer): pointer {.cdecl, raises: [], gcsafe.}
  completeCreate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlComponent_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlComponent_virtualbase_metaObject".}
proc fcQQmlComponent_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlComponent_virtualbase_metacast".}
proc fcQQmlComponent_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlComponent_virtualbase_metacall".}
proc fcQQmlComponent_virtualbase_create(self: pointer, context: pointer): pointer {.importc: "QQmlComponent_virtualbase_create".}
proc fcQQmlComponent_virtualbase_beginCreate(self: pointer, param1: pointer): pointer {.importc: "QQmlComponent_virtualbase_beginCreate".}
proc fcQQmlComponent_virtualbase_completeCreate(self: pointer): void {.importc: "QQmlComponent_virtualbase_completeCreate".}
proc fcQQmlComponent_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlComponent_virtualbase_event".}
proc fcQQmlComponent_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlComponent_virtualbase_eventFilter".}
proc fcQQmlComponent_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlComponent_virtualbase_timerEvent".}
proc fcQQmlComponent_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlComponent_virtualbase_childEvent".}
proc fcQQmlComponent_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlComponent_virtualbase_customEvent".}
proc fcQQmlComponent_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlComponent_virtualbase_connectNotify".}
proc fcQQmlComponent_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlComponent_virtualbase_disconnectNotify".}
proc fcQQmlComponent_protectedbase_createObject2(self: pointer): pointer {.importc: "QQmlComponent_protectedbase_createObject2".}
proc fcQQmlComponent_protectedbase_createObject1(self: pointer, parent: pointer): pointer {.importc: "QQmlComponent_protectedbase_createObject1".}
proc fcQQmlComponent_protectedbase_createObject22(self: pointer, parent: pointer, properties: struct_miqt_map): pointer {.importc: "QQmlComponent_protectedbase_createObject22".}
proc fcQQmlComponent_protectedbase_sender(self: pointer): pointer {.importc: "QQmlComponent_protectedbase_sender".}
proc fcQQmlComponent_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlComponent_protectedbase_senderSignalIndex".}
proc fcQQmlComponent_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlComponent_protectedbase_receivers".}
proc fcQQmlComponent_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlComponent_protectedbase_isSignalConnected".}
proc fcQQmlComponent_new(vtbl, vdata: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new".}
proc fcQQmlComponent_new2(vtbl, vdata: pointer, param1: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new2".}
proc fcQQmlComponent_new3(vtbl, vdata: pointer, param1: pointer, fileName: struct_miqt_string): ptr cQQmlComponent {.importc: "QQmlComponent_new3".}
proc fcQQmlComponent_new4(vtbl, vdata: pointer, param1: pointer, fileName: struct_miqt_string, mode: cint): ptr cQQmlComponent {.importc: "QQmlComponent_new4".}
proc fcQQmlComponent_new5(vtbl, vdata: pointer, param1: pointer, url: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new5".}
proc fcQQmlComponent_new6(vtbl, vdata: pointer, param1: pointer, url: pointer, mode: cint): ptr cQQmlComponent {.importc: "QQmlComponent_new6".}
proc fcQQmlComponent_new7(vtbl, vdata: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new7".}
proc fcQQmlComponent_new8(vtbl, vdata: pointer, param1: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new8".}
proc fcQQmlComponent_new9(vtbl, vdata: pointer, param1: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new9".}
proc fcQQmlComponent_new10(vtbl, vdata: pointer, param1: pointer, fileName: struct_miqt_string, mode: cint, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new10".}
proc fcQQmlComponent_new11(vtbl, vdata: pointer, param1: pointer, url: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new11".}
proc fcQQmlComponent_new12(vtbl, vdata: pointer, param1: pointer, url: pointer, mode: cint, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new12".}
proc fcQQmlComponent_staticMetaObject(): pointer {.importc: "QQmlComponent_staticMetaObject".}

proc metaObject*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlComponent_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cstring): pointer =
  fcQQmlComponent_metacast(self.h, param1)

proc metacall*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlComponent_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlcomponent_types.QQmlComponent, s: cstring): string =
  let v_ms = fcQQmlComponent_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc status*(self: gen_qqmlcomponent_types.QQmlComponent): cint =
  cint(fcQQmlComponent_status(self.h))

proc isNull*(self: gen_qqmlcomponent_types.QQmlComponent): bool =
  fcQQmlComponent_isNull(self.h)

proc isReady*(self: gen_qqmlcomponent_types.QQmlComponent): bool =
  fcQQmlComponent_isReady(self.h)

proc isError*(self: gen_qqmlcomponent_types.QQmlComponent): bool =
  fcQQmlComponent_isError(self.h)

proc isLoading*(self: gen_qqmlcomponent_types.QQmlComponent): bool =
  fcQQmlComponent_isLoading(self.h)

proc isBound*(self: gen_qqmlcomponent_types.QQmlComponent): bool =
  fcQQmlComponent_isBound(self.h)

proc errors*(self: gen_qqmlcomponent_types.QQmlComponent): seq[gen_qqmlerror_types.QQmlError] =
  var v_ma = fcQQmlComponent_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror_types.QQmlError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc errorString*(self: gen_qqmlcomponent_types.QQmlComponent): string =
  let v_ms = fcQQmlComponent_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc progress*(self: gen_qqmlcomponent_types.QQmlComponent): float64 =
  fcQQmlComponent_progress(self.h)

proc url*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlComponent_url(self.h), owned: true)

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_create(self.h, context.h), owned: false)

proc createWithInitialProperties*(self: gen_qqmlcomponent_types.QQmlComponent, initialProperties: Table[string,gen_qvariant_types.QVariant]): gen_qobject_types.QObject =
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

  gen_qobject_types.QObject(h: fcQQmlComponent_createWithInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),)), owned: false)

proc setInitialProperties*(self: gen_qqmlcomponent_types.QQmlComponent, component: gen_qobject_types.QObject, properties: Table[string,gen_qvariant_types.QVariant]): void =
  var properties_Keys_CArray = newSeq[struct_miqt_string](len(properties))
  var properties_Values_CArray = newSeq[pointer](len(properties))
  var properties_ctr = 0
  for properties_k in properties.keys():
    properties_Keys_CArray[properties_ctr] = struct_miqt_string(data: properties_k, len: csize_t(len(properties_k)))
    properties_ctr += 1
  properties_ctr = 0
  for properties_v in properties.values():
    properties_Values_CArray[properties_ctr] = properties_v.h
    properties_ctr += 1

  fcQQmlComponent_setInitialProperties(self.h, component.h, struct_miqt_map(len: csize_t(len(properties)),keys: if len(properties) == 0: nil else: addr(properties_Keys_CArray[0]), values: if len(properties) == 0: nil else: addr(properties_Values_CArray[0]),))

proc beginCreate*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_beginCreate(self.h, param1.h), owned: false)

proc completeCreate*(self: gen_qqmlcomponent_types.QQmlComponent): void =
  fcQQmlComponent_completeCreate(self.h)

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlincubator_types.QQmlIncubator): void =
  fcQQmlComponent_createWithQQmlIncubator(self.h, param1.h)

proc creationContext*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlComponent_creationContext(self.h), owned: false)

proc engine*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlComponent_engine(self.h), owned: false)

proc loadUrl*(self: gen_qqmlcomponent_types.QQmlComponent, url: gen_qurl_types.QUrl): void =
  fcQQmlComponent_loadUrl(self.h, url.h)

proc loadUrl*(self: gen_qqmlcomponent_types.QQmlComponent, url: gen_qurl_types.QUrl, mode: cint): void =
  fcQQmlComponent_loadUrl2(self.h, url.h, cint(mode))

proc setData*(self: gen_qqmlcomponent_types.QQmlComponent, param1: seq[byte], baseUrl: gen_qurl_types.QUrl): void =
  fcQQmlComponent_setData(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1))), baseUrl.h)

proc statusChanged*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cint): void =
  fcQQmlComponent_statusChanged(self.h, cint(param1))

type QQmlComponentstatusChangedSlot* = proc(param1: cint)
proc cQQmlComponent_slot_callback_statusChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QQmlComponentstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc cQQmlComponent_slot_callback_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlComponentstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentstatusChangedSlot) =
  var tmp = new QQmlComponentstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_connect_statusChanged(self.h, cast[int](addr tmp[]), cQQmlComponent_slot_callback_statusChanged, cQQmlComponent_slot_callback_statusChanged_release)

proc progressChanged*(self: gen_qqmlcomponent_types.QQmlComponent, param1: float64): void =
  fcQQmlComponent_progressChanged(self.h, param1)

type QQmlComponentprogressChangedSlot* = proc(param1: float64)
proc cQQmlComponent_slot_callback_progressChanged(slot: int, param1: float64) {.cdecl.} =
  let nimfunc = cast[ptr QQmlComponentprogressChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQQmlComponent_slot_callback_progressChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlComponentprogressChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprogressChanged*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentprogressChangedSlot) =
  var tmp = new QQmlComponentprogressChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_connect_progressChanged(self.h, cast[int](addr tmp[]), cQQmlComponent_slot_callback_progressChanged, cQQmlComponent_slot_callback_progressChanged_release)

proc tr*(_: type gen_qqmlcomponent_types.QQmlComponent, s: cstring, c: cstring): string =
  let v_ms = fcQQmlComponent_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlcomponent_types.QQmlComponent, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlComponent_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createWithInitialProperties*(self: gen_qqmlcomponent_types.QQmlComponent, initialProperties: Table[string,gen_qvariant_types.QVariant], context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
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

  gen_qobject_types.QObject(h: fcQQmlComponent_createWithInitialProperties2(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),), context.h), owned: false)

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlincubator_types.QQmlIncubator, context: gen_qqmlcontext_types.QQmlContext): void =
  fcQQmlComponent_create2(self.h, param1.h, context.h)

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlincubator_types.QQmlIncubator, context: gen_qqmlcontext_types.QQmlContext, forContext: gen_qqmlcontext_types.QQmlContext): void =
  fcQQmlComponent_create3(self.h, param1.h, context.h, forContext.h)

type QQmlComponentmetaObjectProc* = proc(self: QQmlComponent): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlComponentmetacastProc* = proc(self: QQmlComponent, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlComponentmetacallProc* = proc(self: QQmlComponent, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlComponentcreateProc* = proc(self: QQmlComponent, context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QQmlComponentbeginCreateProc* = proc(self: QQmlComponent, param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QQmlComponentcompleteCreateProc* = proc(self: QQmlComponent): void {.raises: [], gcsafe.}
type QQmlComponenteventProc* = proc(self: QQmlComponent, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlComponenteventFilterProc* = proc(self: QQmlComponent, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlComponenttimerEventProc* = proc(self: QQmlComponent, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlComponentchildEventProc* = proc(self: QQmlComponent, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlComponentcustomEventProc* = proc(self: QQmlComponent, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlComponentconnectNotifyProc* = proc(self: QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlComponentdisconnectNotifyProc* = proc(self: QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlComponentVTable* {.inheritable, pure.} = object
  vtbl: cQQmlComponentVTable
  metaObject*: QQmlComponentmetaObjectProc
  metacast*: QQmlComponentmetacastProc
  metacall*: QQmlComponentmetacallProc
  create*: QQmlComponentcreateProc
  beginCreate*: QQmlComponentbeginCreateProc
  completeCreate*: QQmlComponentcompleteCreateProc
  event*: QQmlComponenteventProc
  eventFilter*: QQmlComponenteventFilterProc
  timerEvent*: QQmlComponenttimerEventProc
  childEvent*: QQmlComponentchildEventProc
  customEvent*: QQmlComponentcustomEventProc
  connectNotify*: QQmlComponentconnectNotifyProc
  disconnectNotify*: QQmlComponentdisconnectNotifyProc
proc QQmlComponentmetaObject*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlComponent_virtualbase_metaObject(self.h), owned: false)

proc cQQmlComponent_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlComponentmetacast*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cstring): pointer =
  fcQQmlComponent_virtualbase_metacast(self.h, param1)

proc cQQmlComponent_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlComponentmetacall*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlComponent_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQmlComponent_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlComponentcreate*(self: gen_qqmlcomponent_types.QQmlComponent, context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_virtualbase_create(self.h, context.h), owned: false)

proc cQQmlComponent_vtable_callback_create(self: pointer, context: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qqmlcontext_types.QQmlContext(h: context, owned: false)
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlComponentbeginCreate*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_virtualbase_beginCreate(self.h, param1.h), owned: false)

proc cQQmlComponent_vtable_callback_beginCreate(self: pointer, param1: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qqmlcontext_types.QQmlContext(h: param1, owned: false)
  var virtualReturn = vtbl[].beginCreate(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlComponentcompleteCreate*(self: gen_qqmlcomponent_types.QQmlComponent): void =
  fcQQmlComponent_virtualbase_completeCreate(self.h)

proc cQQmlComponent_vtable_callback_completeCreate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  vtbl[].completeCreate(self)

proc QQmlComponentevent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlComponent_virtualbase_event(self.h, event.h)

proc cQQmlComponent_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlComponenteventFilter*(self: gen_qqmlcomponent_types.QQmlComponent, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlComponent_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQmlComponent_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlComponenttimerEvent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlComponent_virtualbase_timerEvent(self.h, event.h)

proc cQQmlComponent_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlComponentchildEvent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlComponent_virtualbase_childEvent(self.h, event.h)

proc cQQmlComponent_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlComponentcustomEvent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlComponent_virtualbase_customEvent(self.h, event.h)

proc cQQmlComponent_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlComponentconnectNotify*(self: gen_qqmlcomponent_types.QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlComponent_virtualbase_connectNotify(self.h, signal.h)

proc cQQmlComponent_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlComponentdisconnectNotify*(self: gen_qqmlcomponent_types.QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlComponent_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQmlComponent_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlComponentVTable](fcQQmlComponent_vdata(self))
  let self = QQmlComponent(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlComponent* {.inheritable.} = ref object of QQmlComponent
  vtbl*: cQQmlComponentVTable
method metaObject*(self: VirtualQQmlComponent): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlComponentmetaObject(self[])
proc cQQmlComponent_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlComponent, param1: cstring): pointer {.base.} =
  QQmlComponentmetacast(self[], param1)
proc cQQmlComponent_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlComponent, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlComponentmetacall(self[], param1, param2, param3)
proc cQQmlComponent_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method create*(self: VirtualQQmlComponent, context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject {.base.} =
  QQmlComponentcreate(self[], context)
proc cQQmlComponent_method_callback_create(self: pointer, context: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qqmlcontext_types.QQmlContext(h: context, owned: false)
  var virtualReturn = inst.create(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method beginCreate*(self: VirtualQQmlComponent, param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject {.base.} =
  QQmlComponentbeginCreate(self[], param1)
proc cQQmlComponent_method_callback_beginCreate(self: pointer, param1: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qqmlcontext_types.QQmlContext(h: param1, owned: false)
  var virtualReturn = inst.beginCreate(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method completeCreate*(self: VirtualQQmlComponent): void {.base.} =
  QQmlComponentcompleteCreate(self[])
proc cQQmlComponent_method_callback_completeCreate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  inst.completeCreate()

method event*(self: VirtualQQmlComponent, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlComponentevent(self[], event)
proc cQQmlComponent_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlComponent, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlComponenteventFilter(self[], watched, event)
proc cQQmlComponent_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlComponent, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlComponenttimerEvent(self[], event)
proc cQQmlComponent_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlComponent, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlComponentchildEvent(self[], event)
proc cQQmlComponent_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQmlComponent, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlComponentcustomEvent(self[], event)
proc cQQmlComponent_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlComponentconnectNotify(self[], signal)
proc cQQmlComponent_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlComponentdisconnectNotify(self[], signal)
proc cQQmlComponent_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlComponent](fcQQmlComponent_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc createObject*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_protectedbase_createObject2(self.h), owned: false)

proc createObject*(self: gen_qqmlcomponent_types.QQmlComponent, parent: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_protectedbase_createObject1(self.h, parent.h), owned: false)

proc createObject*(self: gen_qqmlcomponent_types.QQmlComponent, parent: gen_qobject_types.QObject, properties: Table[string,gen_qvariant_types.QVariant]): gen_qobject_types.QObject =
  var properties_Keys_CArray = newSeq[struct_miqt_string](len(properties))
  var properties_Values_CArray = newSeq[pointer](len(properties))
  var properties_ctr = 0
  for properties_k in properties.keys():
    properties_Keys_CArray[properties_ctr] = struct_miqt_string(data: properties_k, len: csize_t(len(properties_k)))
    properties_ctr += 1
  properties_ctr = 0
  for properties_v in properties.values():
    properties_Values_CArray[properties_ctr] = properties_v.h
    properties_ctr += 1

  gen_qobject_types.QObject(h: fcQQmlComponent_protectedbase_createObject22(self.h, parent.h, struct_miqt_map(len: csize_t(len(properties)),keys: if len(properties) == 0: nil else: addr(properties_Keys_CArray[0]), values: if len(properties) == 0: nil else: addr(properties_Values_CArray[0]),)), owned: false)

proc sender*(self: gen_qqmlcomponent_types.QQmlComponent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlcomponent_types.QQmlComponent): cint =
  fcQQmlComponent_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlcomponent_types.QQmlComponent, signal: cstring): cint =
  fcQQmlComponent_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlcomponent_types.QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlComponent_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new3(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string, mode: cint,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new4(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode)), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new5(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, url.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, mode: cint,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new6(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, url.h, cint(mode)), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new7(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new8(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, parent.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new9(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string, mode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new10(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode), parent.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new11(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, url.h, parent.h), owned: true)

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, mode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlComponentVTable = nil): gen_qqmlcomponent_types.QQmlComponent =
  let vtbl = if vtbl == nil: new QQmlComponentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlComponentVTable](fcQQmlComponent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlComponent_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlComponent_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlComponent_vtable_callback_metacall
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQQmlComponent_vtable_callback_create
  if not isNil(vtbl[].beginCreate):
    vtbl[].vtbl.beginCreate = cQQmlComponent_vtable_callback_beginCreate
  if not isNil(vtbl[].completeCreate):
    vtbl[].vtbl.completeCreate = cQQmlComponent_vtable_callback_completeCreate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlComponent_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlComponent_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlComponent_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlComponent_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlComponent_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlComponent_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlComponent_vtable_callback_disconnectNotify
  gen_qqmlcomponent_types.QQmlComponent(h: fcQQmlComponent_new12(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, url.h, cint(mode), parent.h), owned: true)

const cQQmlComponent_mvtbl = cQQmlComponentVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlComponent()[])](self.fcQQmlComponent_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQmlComponent_method_callback_metaObject,
  metacast: cQQmlComponent_method_callback_metacast,
  metacall: cQQmlComponent_method_callback_metacall,
  create: cQQmlComponent_method_callback_create,
  beginCreate: cQQmlComponent_method_callback_beginCreate,
  completeCreate: cQQmlComponent_method_callback_completeCreate,
  event: cQQmlComponent_method_callback_event,
  eventFilter: cQQmlComponent_method_callback_eventFilter,
  timerEvent: cQQmlComponent_method_callback_timerEvent,
  childEvent: cQQmlComponent_method_callback_childEvent,
  customEvent: cQQmlComponent_method_callback_customEvent,
  connectNotify: cQQmlComponent_method_callback_connectNotify,
  disconnectNotify: cQQmlComponent_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new(addr(cQQmlComponent_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new2(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new3(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string, mode: cint,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new4(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode))
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new5(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, url.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, mode: cint,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new6(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, url.h, cint(mode))
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new7(addr(cQQmlComponent_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new8(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new9(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, fileName: string, mode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new10(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode), parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new11(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, url.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent,
    param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, mode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQQmlComponent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlComponent_new12(addr(cQQmlComponent_mvtbl), addr(inst[]), param1.h, url.h, cint(mode), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlcomponent_types.QQmlComponent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlComponent_staticMetaObject())
