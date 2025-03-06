import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
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

proc fcQQmlComponent_new(): ptr cQQmlComponent {.importc: "QQmlComponent_new".}
proc fcQQmlComponent_new2(param1: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new2".}
proc fcQQmlComponent_new3(param1: pointer, fileName: struct_miqt_string): ptr cQQmlComponent {.importc: "QQmlComponent_new3".}
proc fcQQmlComponent_new4(param1: pointer, fileName: struct_miqt_string, mode: cint): ptr cQQmlComponent {.importc: "QQmlComponent_new4".}
proc fcQQmlComponent_new5(param1: pointer, url: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new5".}
proc fcQQmlComponent_new6(param1: pointer, url: pointer, mode: cint): ptr cQQmlComponent {.importc: "QQmlComponent_new6".}
proc fcQQmlComponent_new7(parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new7".}
proc fcQQmlComponent_new8(param1: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new8".}
proc fcQQmlComponent_new9(param1: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new9".}
proc fcQQmlComponent_new10(param1: pointer, fileName: struct_miqt_string, mode: cint, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new10".}
proc fcQQmlComponent_new11(param1: pointer, url: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new11".}
proc fcQQmlComponent_new12(param1: pointer, url: pointer, mode: cint, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new12".}
proc fcQQmlComponent_metaObject(self: pointer, ): pointer {.importc: "QQmlComponent_metaObject".}
proc fcQQmlComponent_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlComponent_metacast".}
proc fcQQmlComponent_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlComponent_metacall".}
proc fcQQmlComponent_tr(s: cstring): struct_miqt_string {.importc: "QQmlComponent_tr".}
proc fcQQmlComponent_status(self: pointer, ): cint {.importc: "QQmlComponent_status".}
proc fcQQmlComponent_isNull(self: pointer, ): bool {.importc: "QQmlComponent_isNull".}
proc fcQQmlComponent_isReady(self: pointer, ): bool {.importc: "QQmlComponent_isReady".}
proc fcQQmlComponent_isError(self: pointer, ): bool {.importc: "QQmlComponent_isError".}
proc fcQQmlComponent_isLoading(self: pointer, ): bool {.importc: "QQmlComponent_isLoading".}
proc fcQQmlComponent_isBound(self: pointer, ): bool {.importc: "QQmlComponent_isBound".}
proc fcQQmlComponent_errors(self: pointer, ): struct_miqt_array {.importc: "QQmlComponent_errors".}
proc fcQQmlComponent_errorString(self: pointer, ): struct_miqt_string {.importc: "QQmlComponent_errorString".}
proc fcQQmlComponent_progress(self: pointer, ): float64 {.importc: "QQmlComponent_progress".}
proc fcQQmlComponent_url(self: pointer, ): pointer {.importc: "QQmlComponent_url".}
proc fcQQmlComponent_create(self: pointer, context: pointer): pointer {.importc: "QQmlComponent_create".}
proc fcQQmlComponent_createWithInitialProperties(self: pointer, initialProperties: struct_miqt_map): pointer {.importc: "QQmlComponent_createWithInitialProperties".}
proc fcQQmlComponent_setInitialProperties(self: pointer, component: pointer, properties: struct_miqt_map): void {.importc: "QQmlComponent_setInitialProperties".}
proc fcQQmlComponent_beginCreate(self: pointer, param1: pointer): pointer {.importc: "QQmlComponent_beginCreate".}
proc fcQQmlComponent_completeCreate(self: pointer, ): void {.importc: "QQmlComponent_completeCreate".}
proc fcQQmlComponent_createWithQQmlIncubator(self: pointer, param1: pointer): void {.importc: "QQmlComponent_createWithQQmlIncubator".}
proc fcQQmlComponent_creationContext(self: pointer, ): pointer {.importc: "QQmlComponent_creationContext".}
proc fcQQmlComponent_engine(self: pointer, ): pointer {.importc: "QQmlComponent_engine".}
proc fcQQmlComponent_loadUrl(self: pointer, url: pointer): void {.importc: "QQmlComponent_loadUrl".}
proc fcQQmlComponent_loadUrl2(self: pointer, url: pointer, mode: cint): void {.importc: "QQmlComponent_loadUrl2".}
proc fcQQmlComponent_setData(self: pointer, param1: struct_miqt_string, baseUrl: pointer): void {.importc: "QQmlComponent_setData".}
proc fcQQmlComponent_statusChanged(self: pointer, param1: cint): void {.importc: "QQmlComponent_statusChanged".}
proc fcQQmlComponent_connect_statusChanged(self: pointer, slot: int) {.importc: "QQmlComponent_connect_statusChanged".}
proc fcQQmlComponent_progressChanged(self: pointer, param1: float64): void {.importc: "QQmlComponent_progressChanged".}
proc fcQQmlComponent_connect_progressChanged(self: pointer, slot: int) {.importc: "QQmlComponent_connect_progressChanged".}
proc fcQQmlComponent_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlComponent_tr2".}
proc fcQQmlComponent_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlComponent_tr3".}
proc fcQQmlComponent_createWithInitialProperties2(self: pointer, initialProperties: struct_miqt_map, context: pointer): pointer {.importc: "QQmlComponent_createWithInitialProperties2".}
proc fcQQmlComponent_create2(self: pointer, param1: pointer, context: pointer): void {.importc: "QQmlComponent_create2".}
proc fcQQmlComponent_create3(self: pointer, param1: pointer, context: pointer, forContext: pointer): void {.importc: "QQmlComponent_create3".}
proc fQQmlComponent_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlComponent_virtualbase_metaObject".}
proc fcQQmlComponent_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_metaObject".}
proc fQQmlComponent_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlComponent_virtualbase_metacast".}
proc fcQQmlComponent_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_metacast".}
proc fQQmlComponent_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlComponent_virtualbase_metacall".}
proc fcQQmlComponent_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_metacall".}
proc fQQmlComponent_virtualbase_create(self: pointer, context: pointer): pointer{.importc: "QQmlComponent_virtualbase_create".}
proc fcQQmlComponent_override_virtual_create(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_create".}
proc fQQmlComponent_virtualbase_beginCreate(self: pointer, param1: pointer): pointer{.importc: "QQmlComponent_virtualbase_beginCreate".}
proc fcQQmlComponent_override_virtual_beginCreate(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_beginCreate".}
proc fQQmlComponent_virtualbase_completeCreate(self: pointer, ): void{.importc: "QQmlComponent_virtualbase_completeCreate".}
proc fcQQmlComponent_override_virtual_completeCreate(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_completeCreate".}
proc fQQmlComponent_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlComponent_virtualbase_event".}
proc fcQQmlComponent_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_event".}
proc fQQmlComponent_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlComponent_virtualbase_eventFilter".}
proc fcQQmlComponent_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_eventFilter".}
proc fQQmlComponent_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlComponent_virtualbase_timerEvent".}
proc fcQQmlComponent_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_timerEvent".}
proc fQQmlComponent_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlComponent_virtualbase_childEvent".}
proc fcQQmlComponent_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_childEvent".}
proc fQQmlComponent_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlComponent_virtualbase_customEvent".}
proc fcQQmlComponent_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_customEvent".}
proc fQQmlComponent_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlComponent_virtualbase_connectNotify".}
proc fcQQmlComponent_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_connectNotify".}
proc fQQmlComponent_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlComponent_virtualbase_disconnectNotify".}
proc fcQQmlComponent_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_disconnectNotify".}
proc fcQQmlComponent_staticMetaObject(): pointer {.importc: "QQmlComponent_staticMetaObject".}
proc fcQQmlComponent_delete(self: pointer) {.importc: "QQmlComponent_delete".}


func init*(T: type gen_qqmlcomponent_types.QQmlComponent, h: ptr cQQmlComponent): gen_qqmlcomponent_types.QQmlComponent =
  T(h: h)
proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, ): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new())

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new2(param1.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, fileName: string): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new3(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, fileName: string, mode: cint): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new4(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode)))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new5(param1.h, url.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, mode: cint): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new6(param1.h, url.h, cint(mode)))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, parent: gen_qobject_types.QObject): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new7(parent.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new8(param1.h, parent.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, fileName: string, parent: gen_qobject_types.QObject): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new9(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, fileName: string, mode: cint, parent: gen_qobject_types.QObject): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new10(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode), parent.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new11(param1.h, url.h, parent.h))

proc create*(T: type gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlengine_types.QQmlEngine, url: gen_qurl_types.QUrl, mode: cint, parent: gen_qobject_types.QObject): gen_qqmlcomponent_types.QQmlComponent =
  gen_qqmlcomponent_types.QQmlComponent.init(fcQQmlComponent_new12(param1.h, url.h, cint(mode), parent.h))

proc metaObject*(self: gen_qqmlcomponent_types.QQmlComponent, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlComponent_metaObject(self.h))

proc metacast*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cstring): pointer =
  fcQQmlComponent_metacast(self.h, param1)

proc metacall*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlComponent_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlcomponent_types.QQmlComponent, s: cstring): string =
  let v_ms = fcQQmlComponent_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc status*(self: gen_qqmlcomponent_types.QQmlComponent, ): cint =
  cint(fcQQmlComponent_status(self.h))

proc isNull*(self: gen_qqmlcomponent_types.QQmlComponent, ): bool =
  fcQQmlComponent_isNull(self.h)

proc isReady*(self: gen_qqmlcomponent_types.QQmlComponent, ): bool =
  fcQQmlComponent_isReady(self.h)

proc isError*(self: gen_qqmlcomponent_types.QQmlComponent, ): bool =
  fcQQmlComponent_isError(self.h)

proc isLoading*(self: gen_qqmlcomponent_types.QQmlComponent, ): bool =
  fcQQmlComponent_isLoading(self.h)

proc isBound*(self: gen_qqmlcomponent_types.QQmlComponent, ): bool =
  fcQQmlComponent_isBound(self.h)

proc errors*(self: gen_qqmlcomponent_types.QQmlComponent, ): seq[gen_qqmlerror_types.QQmlError] =
  var v_ma = fcQQmlComponent_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror_types.QQmlError(h: v_outCast[i])
  vx_ret

proc errorString*(self: gen_qqmlcomponent_types.QQmlComponent, ): string =
  let v_ms = fcQQmlComponent_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc progress*(self: gen_qqmlcomponent_types.QQmlComponent, ): float64 =
  fcQQmlComponent_progress(self.h)

proc url*(self: gen_qqmlcomponent_types.QQmlComponent, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlComponent_url(self.h))

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_create(self.h, context.h))

proc createWithInitialProperties*(self: gen_qqmlcomponent_types.QQmlComponent, initialProperties: Table[string,gen_qvariant_types.QVariant]): gen_qobject_types.QObject =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  gen_qobject_types.QObject(h: fcQQmlComponent_createWithInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),)))

proc setInitialProperties*(self: gen_qqmlcomponent_types.QQmlComponent, component: gen_qobject_types.QObject, properties: Table[string,gen_qvariant_types.QVariant]): void =
  var properties_Keys_CArray = newSeq[struct_miqt_string](len(properties))
  var properties_Values_CArray = newSeq[pointer](len(properties))
  var properties_ctr = 0
  for propertiesk, propertiesv in properties:
    properties_Keys_CArray[properties_ctr] = struct_miqt_string(data: properties_k, len: csize_t(len(properties_k)))
    properties_Values_CArray[properties_ctr] = properties_v.h
    properties_ctr += 1

  fcQQmlComponent_setInitialProperties(self.h, component.h, struct_miqt_map(len: csize_t(len(properties)),keys: if len(properties) == 0: nil else: addr(properties_Keys_CArray[0]), values: if len(properties) == 0: nil else: addr(properties_Values_CArray[0]),))

proc beginCreate*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlComponent_beginCreate(self.h, param1.h))

proc completeCreate*(self: gen_qqmlcomponent_types.QQmlComponent, ): void =
  fcQQmlComponent_completeCreate(self.h)

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlincubator_types.QQmlIncubator): void =
  fcQQmlComponent_createWithQQmlIncubator(self.h, param1.h)

proc creationContext*(self: gen_qqmlcomponent_types.QQmlComponent, ): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlComponent_creationContext(self.h))

proc engine*(self: gen_qqmlcomponent_types.QQmlComponent, ): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlComponent_engine(self.h))

proc loadUrl*(self: gen_qqmlcomponent_types.QQmlComponent, url: gen_qurl_types.QUrl): void =
  fcQQmlComponent_loadUrl(self.h, url.h)

proc loadUrl*(self: gen_qqmlcomponent_types.QQmlComponent, url: gen_qurl_types.QUrl, mode: cint): void =
  fcQQmlComponent_loadUrl2(self.h, url.h, cint(mode))

proc setData*(self: gen_qqmlcomponent_types.QQmlComponent, param1: seq[byte], baseUrl: gen_qurl_types.QUrl): void =
  fcQQmlComponent_setData(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1))), baseUrl.h)

proc statusChanged*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cint): void =
  fcQQmlComponent_statusChanged(self.h, cint(param1))

type QQmlComponentstatusChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QQmlComponent_statusChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QQmlComponentstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onstatusChanged*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentstatusChangedSlot) =
  var tmp = new QQmlComponentstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_connect_statusChanged(self.h, cast[int](addr tmp[]))

proc progressChanged*(self: gen_qqmlcomponent_types.QQmlComponent, param1: float64): void =
  fcQQmlComponent_progressChanged(self.h, param1)

type QQmlComponentprogressChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_QQmlComponent_progressChanged(slot: int, param1: float64) {.exportc.} =
  let nimfunc = cast[ptr QQmlComponentprogressChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onprogressChanged*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentprogressChangedSlot) =
  var tmp = new QQmlComponentprogressChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_connect_progressChanged(self.h, cast[int](addr tmp[]))

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
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  gen_qobject_types.QObject(h: fcQQmlComponent_createWithInitialProperties2(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),), context.h))

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlincubator_types.QQmlIncubator, context: gen_qqmlcontext_types.QQmlContext): void =
  fcQQmlComponent_create2(self.h, param1.h, context.h)

proc create*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlincubator_types.QQmlIncubator, context: gen_qqmlcontext_types.QQmlContext, forContext: gen_qqmlcontext_types.QQmlContext): void =
  fcQQmlComponent_create3(self.h, param1.h, context.h, forContext.h)

proc QQmlComponentmetaObject*(self: gen_qqmlcomponent_types.QQmlComponent, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlComponent_virtualbase_metaObject(self.h))

type QQmlComponentmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlComponentmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_metaObject(self: ptr cQQmlComponent, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlComponent_metaObject ".} =
  var nimfunc = cast[ptr QQmlComponentmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlComponentmetacast*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cstring): pointer =
  fQQmlComponent_virtualbase_metacast(self.h, param1)

type QQmlComponentmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentmetacastProc) =
  # TODO check subclass
  var tmp = new QQmlComponentmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_metacast(self: ptr cQQmlComponent, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlComponent_metacast ".} =
  var nimfunc = cast[ptr QQmlComponentmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlComponentmetacall*(self: gen_qqmlcomponent_types.QQmlComponent, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlComponent_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlComponentmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentmetacallProc) =
  # TODO check subclass
  var tmp = new QQmlComponentmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_metacall(self: ptr cQQmlComponent, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlComponent_metacall ".} =
  var nimfunc = cast[ptr QQmlComponentmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlComponentcreate*(self: gen_qqmlcomponent_types.QQmlComponent, context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fQQmlComponent_virtualbase_create(self.h, context.h))

type QQmlComponentcreateProc* = proc(context: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject
proc oncreate*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentcreateProc) =
  # TODO check subclass
  var tmp = new QQmlComponentcreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_create(self: ptr cQQmlComponent, slot: int, context: pointer): pointer {.exportc: "miqt_exec_callback_QQmlComponent_create ".} =
  var nimfunc = cast[ptr QQmlComponentcreateProc](cast[pointer](slot))
  let slotval1 = gen_qqmlcontext_types.QQmlContext(h: context)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QQmlComponentbeginCreate*(self: gen_qqmlcomponent_types.QQmlComponent, param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fQQmlComponent_virtualbase_beginCreate(self.h, param1.h))

type QQmlComponentbeginCreateProc* = proc(param1: gen_qqmlcontext_types.QQmlContext): gen_qobject_types.QObject
proc onbeginCreate*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentbeginCreateProc) =
  # TODO check subclass
  var tmp = new QQmlComponentbeginCreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_beginCreate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_beginCreate(self: ptr cQQmlComponent, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QQmlComponent_beginCreate ".} =
  var nimfunc = cast[ptr QQmlComponentbeginCreateProc](cast[pointer](slot))
  let slotval1 = gen_qqmlcontext_types.QQmlContext(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QQmlComponentcompleteCreate*(self: gen_qqmlcomponent_types.QQmlComponent, ): void =
  fQQmlComponent_virtualbase_completeCreate(self.h)

type QQmlComponentcompleteCreateProc* = proc(): void
proc oncompleteCreate*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentcompleteCreateProc) =
  # TODO check subclass
  var tmp = new QQmlComponentcompleteCreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_completeCreate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_completeCreate(self: ptr cQQmlComponent, slot: int): void {.exportc: "miqt_exec_callback_QQmlComponent_completeCreate ".} =
  var nimfunc = cast[ptr QQmlComponentcompleteCreateProc](cast[pointer](slot))

  nimfunc[]()
proc QQmlComponentevent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlComponent_virtualbase_event(self.h, event.h)

type QQmlComponenteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponenteventProc) =
  # TODO check subclass
  var tmp = new QQmlComponenteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_event(self: ptr cQQmlComponent, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlComponent_event ".} =
  var nimfunc = cast[ptr QQmlComponenteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlComponenteventFilter*(self: gen_qqmlcomponent_types.QQmlComponent, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlComponent_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlComponenteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponenteventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlComponenteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_eventFilter(self: ptr cQQmlComponent, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlComponent_eventFilter ".} =
  var nimfunc = cast[ptr QQmlComponenteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlComponenttimerEvent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlComponent_virtualbase_timerEvent(self.h, event.h)

type QQmlComponenttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponenttimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlComponenttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_timerEvent(self: ptr cQQmlComponent, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_timerEvent ".} =
  var nimfunc = cast[ptr QQmlComponenttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlComponentchildEvent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlComponent_virtualbase_childEvent(self.h, event.h)

type QQmlComponentchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlComponentchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_childEvent(self: ptr cQQmlComponent, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_childEvent ".} =
  var nimfunc = cast[ptr QQmlComponentchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlComponentcustomEvent*(self: gen_qqmlcomponent_types.QQmlComponent, event: gen_qcoreevent_types.QEvent): void =
  fQQmlComponent_virtualbase_customEvent(self.h, event.h)

type QQmlComponentcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentcustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlComponentcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_customEvent(self: ptr cQQmlComponent, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_customEvent ".} =
  var nimfunc = cast[ptr QQmlComponentcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlComponentconnectNotify*(self: gen_qqmlcomponent_types.QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlComponent_virtualbase_connectNotify(self.h, signal.h)

type QQmlComponentconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlComponentconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_connectNotify(self: ptr cQQmlComponent, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_connectNotify ".} =
  var nimfunc = cast[ptr QQmlComponentconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlComponentdisconnectNotify*(self: gen_qqmlcomponent_types.QQmlComponent, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlComponent_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlComponentdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlcomponent_types.QQmlComponent, slot: QQmlComponentdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlComponentdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_disconnectNotify(self: ptr cQQmlComponent, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlComponentdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlcomponent_types.QQmlComponent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlComponent_staticMetaObject())
proc delete*(self: gen_qqmlcomponent_types.QQmlComponent) =
  fcQQmlComponent_delete(self.h)
