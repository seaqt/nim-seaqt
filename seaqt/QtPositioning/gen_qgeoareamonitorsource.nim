import ./qtpositioning_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qgeoareamonitorsource.cpp", QtPositioningCFlags).}


type QGeoAreaMonitorSourceErrorEnum* = distinct cint
template AccessError*(_: type QGeoAreaMonitorSourceErrorEnum): untyped = 0
template InsufficientPositionInfo*(_: type QGeoAreaMonitorSourceErrorEnum): untyped = 1
template UnknownSourceError*(_: type QGeoAreaMonitorSourceErrorEnum): untyped = 2
template NoError*(_: type QGeoAreaMonitorSourceErrorEnum): untyped = 3


type QGeoAreaMonitorSourceAreaMonitorFeatureEnum* = distinct cint
template PersistentAreaMonitorFeature*(_: type QGeoAreaMonitorSourceAreaMonitorFeatureEnum): untyped = 1
template AnyAreaMonitorFeature*(_: type QGeoAreaMonitorSourceAreaMonitorFeatureEnum): untyped = 4294967295


import ./gen_qgeoareamonitorsource_types
export gen_qgeoareamonitorsource_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeoareamonitorinfo_types,
  ./gen_qgeopositioninfo_types,
  ./gen_qgeopositioninfosource_types,
  ./gen_qgeoshape_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qgeoareamonitorinfo_types,
  gen_qgeopositioninfo_types,
  gen_qgeopositioninfosource_types,
  gen_qgeoshape_types

type cQGeoAreaMonitorSource*{.exportc: "QGeoAreaMonitorSource", incompleteStruct.} = object

proc fcQGeoAreaMonitorSource_metaObject(self: pointer): pointer {.importc: "QGeoAreaMonitorSource_metaObject".}
proc fcQGeoAreaMonitorSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QGeoAreaMonitorSource_metacast".}
proc fcQGeoAreaMonitorSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGeoAreaMonitorSource_metacall".}
proc fcQGeoAreaMonitorSource_trS(s: cstring): struct_seaqt_string {.importc: "QGeoAreaMonitorSource_tr_s".}
proc fcQGeoAreaMonitorSource_createDefaultSource(parent: pointer): pointer {.importc: "QGeoAreaMonitorSource_createDefaultSource".}
proc fcQGeoAreaMonitorSource_createSource(sourceName: struct_seaqt_string, parent: pointer): pointer {.importc: "QGeoAreaMonitorSource_createSource".}
proc fcQGeoAreaMonitorSource_availableSources(): struct_seaqt_array {.importc: "QGeoAreaMonitorSource_availableSources".}
proc fcQGeoAreaMonitorSource_setPositionInfoSource(self: pointer, source: pointer): void {.importc: "QGeoAreaMonitorSource_setPositionInfoSource".}
proc fcQGeoAreaMonitorSource_positionInfoSource(self: pointer): pointer {.importc: "QGeoAreaMonitorSource_positionInfoSource".}
proc fcQGeoAreaMonitorSource_sourceName(self: pointer): struct_seaqt_string {.importc: "QGeoAreaMonitorSource_sourceName".}
proc fcQGeoAreaMonitorSource_error(self: pointer): cint {.importc: "QGeoAreaMonitorSource_error".}
proc fcQGeoAreaMonitorSource_supportedAreaMonitorFeatures(self: pointer): cint {.importc: "QGeoAreaMonitorSource_supportedAreaMonitorFeatures".}
proc fcQGeoAreaMonitorSource_startMonitoring(self: pointer, monitor: pointer): bool {.importc: "QGeoAreaMonitorSource_startMonitoring".}
proc fcQGeoAreaMonitorSource_stopMonitoring(self: pointer, monitor: pointer): bool {.importc: "QGeoAreaMonitorSource_stopMonitoring".}
proc fcQGeoAreaMonitorSource_requestUpdate(self: pointer, monitor: pointer, signal: cstring): bool {.importc: "QGeoAreaMonitorSource_requestUpdate".}
proc fcQGeoAreaMonitorSource_activeMonitors(self: pointer): struct_seaqt_array {.importc: "QGeoAreaMonitorSource_activeMonitors".}
proc fcQGeoAreaMonitorSource_activeMonitorsLookupArea(self: pointer, lookupArea: pointer): struct_seaqt_array {.importc: "QGeoAreaMonitorSource_activeMonitors_lookupArea".}
proc fcQGeoAreaMonitorSource_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.importc: "QGeoAreaMonitorSource_setBackendProperty".}
proc fcQGeoAreaMonitorSource_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.importc: "QGeoAreaMonitorSource_backendProperty".}
proc fcQGeoAreaMonitorSource_areaEntered(self: pointer, monitor: pointer, update: pointer): void {.importc: "QGeoAreaMonitorSource_areaEntered".}
proc fcQGeoAreaMonitorSource_connect_areaEntered(self: pointer, slot: int, callback: proc (slot: int, monitor: pointer, update: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoAreaMonitorSource_connect_areaEntered".}
proc fcQGeoAreaMonitorSource_areaExited(self: pointer, monitor: pointer, update: pointer): void {.importc: "QGeoAreaMonitorSource_areaExited".}
proc fcQGeoAreaMonitorSource_connect_areaExited(self: pointer, slot: int, callback: proc (slot: int, monitor: pointer, update: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoAreaMonitorSource_connect_areaExited".}
proc fcQGeoAreaMonitorSource_monitorExpired(self: pointer, monitor: pointer): void {.importc: "QGeoAreaMonitorSource_monitorExpired".}
proc fcQGeoAreaMonitorSource_connect_monitorExpired(self: pointer, slot: int, callback: proc (slot: int, monitor: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoAreaMonitorSource_connect_monitorExpired".}
proc fcQGeoAreaMonitorSource_errorOccurred(self: pointer, error: cint): void {.importc: "QGeoAreaMonitorSource_errorOccurred".}
proc fcQGeoAreaMonitorSource_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoAreaMonitorSource_connect_errorOccurred".}
proc fcQGeoAreaMonitorSource_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QGeoAreaMonitorSource_tr_s_c".}
proc fcQGeoAreaMonitorSource_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QGeoAreaMonitorSource_tr_s_c_n".}
proc fcQGeoAreaMonitorSource_vdata(self: pointer): ptr pointer {.importc: "QGeoAreaMonitorSource_vdata".}
proc fvdata_cQGeoAreaMonitorSource(self: pointer): pointer {.importc: "vdata_QGeoAreaMonitorSource".}

type cQGeoAreaMonitorSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setPositionInfoSource*: proc(self: pointer, source: pointer): void {.cdecl, raises: [], gcsafe.}
  positionInfoSource*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  error*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedAreaMonitorFeatures*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  startMonitoring*: proc(self: pointer, monitor: pointer): bool {.cdecl, raises: [], gcsafe.}
  stopMonitoring*: proc(self: pointer, monitor: pointer): bool {.cdecl, raises: [], gcsafe.}
  requestUpdate*: proc(self: pointer, monitor: pointer, signal: cstring): bool {.cdecl, raises: [], gcsafe.}
  activeMonitors*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  activeMonitorsLookupArea*: proc(self: pointer, lookupArea: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  setBackendProperty*: proc(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl, raises: [], gcsafe.}
  backendProperty*: proc(self: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGeoAreaMonitorSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QGeoAreaMonitorSource_virtualbase_metaObject".}
proc fcQGeoAreaMonitorSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGeoAreaMonitorSource_virtualbase_metacast".}
proc fcQGeoAreaMonitorSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGeoAreaMonitorSource_virtualbase_metacall".}
proc fcQGeoAreaMonitorSource_virtualbase_setPositionInfoSource(self: pointer, source: pointer): void {.importc: "QGeoAreaMonitorSource_virtualbase_setPositionInfoSource".}
proc fcQGeoAreaMonitorSource_virtualbase_positionInfoSource(self: pointer): pointer {.importc: "QGeoAreaMonitorSource_virtualbase_positionInfoSource".}
proc fcQGeoAreaMonitorSource_virtualbase_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.importc: "QGeoAreaMonitorSource_virtualbase_setBackendProperty".}
proc fcQGeoAreaMonitorSource_virtualbase_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.importc: "QGeoAreaMonitorSource_virtualbase_backendProperty".}
proc fcQGeoAreaMonitorSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGeoAreaMonitorSource_virtualbase_event".}
proc fcQGeoAreaMonitorSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGeoAreaMonitorSource_virtualbase_eventFilter".}
proc fcQGeoAreaMonitorSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGeoAreaMonitorSource_virtualbase_timerEvent".}
proc fcQGeoAreaMonitorSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGeoAreaMonitorSource_virtualbase_childEvent".}
proc fcQGeoAreaMonitorSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGeoAreaMonitorSource_virtualbase_customEvent".}
proc fcQGeoAreaMonitorSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGeoAreaMonitorSource_virtualbase_connectNotify".}
proc fcQGeoAreaMonitorSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGeoAreaMonitorSource_virtualbase_disconnectNotify".}
proc fcQGeoAreaMonitorSource_protectedbase_sender(self: pointer): pointer {.importc: "QGeoAreaMonitorSource_protectedbase_sender".}
proc fcQGeoAreaMonitorSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGeoAreaMonitorSource_protectedbase_senderSignalIndex".}
proc fcQGeoAreaMonitorSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGeoAreaMonitorSource_protectedbase_receivers".}
proc fcQGeoAreaMonitorSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGeoAreaMonitorSource_protectedbase_isSignalConnected".}
proc fcQGeoAreaMonitorSource_new(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQGeoAreaMonitorSource {.importc: "QGeoAreaMonitorSource_new".}
proc fcQGeoAreaMonitorSource_staticMetaObject(): pointer {.importc: "QGeoAreaMonitorSource_staticMetaObject".}

proc metaObject*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoAreaMonitorSource_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, param1: cstring): pointer =
  fcQGeoAreaMonitorSource_metacast(self.h, param1)

proc metacall*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQGeoAreaMonitorSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, s: cstring): string =
  let v_ms = fcQGeoAreaMonitorSource_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createDefaultSource*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource =
  gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource(h: fcQGeoAreaMonitorSource_createDefaultSource(parent.h), owned: false)

proc createSource*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, sourceName: openArray[char], parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource =
  gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource(h: fcQGeoAreaMonitorSource_createSource(struct_seaqt_string(data: if len(sourceName) > 0: addr sourceName[0] else: nil, len: csize_t(len(sourceName))), parent.h), owned: false)

proc availableSources*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): seq[string] =
  var v_ma = fcQGeoAreaMonitorSource_availableSources()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setPositionInfoSource*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, source: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void =
  fcQGeoAreaMonitorSource_setPositionInfoSource(self.h, source.h)

proc positionInfoSource*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoAreaMonitorSource_positionInfoSource(self.h), owned: false)

proc sourceName*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): string =
  let v_ms = fcQGeoAreaMonitorSource_sourceName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc error*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): cint =
  cint(fcQGeoAreaMonitorSource_error(self.h))

proc supportedAreaMonitorFeatures*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): cint =
  cint(fcQGeoAreaMonitorSource_supportedAreaMonitorFeatures(self.h))

proc startMonitoring*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool =
  fcQGeoAreaMonitorSource_startMonitoring(self.h, monitor.h)

proc stopMonitoring*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool =
  fcQGeoAreaMonitorSource_stopMonitoring(self.h, monitor.h)

proc requestUpdate*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, signal: cstring): bool =
  fcQGeoAreaMonitorSource_requestUpdate(self.h, monitor.h, signal)

proc activeMonitors*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): seq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo] =
  var v_ma = fcQGeoAreaMonitorSource_activeMonitors(self.h)
  var vx_ret = newSeq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc activeMonitors*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, lookupArea: gen_qgeoshape_types.QGeoShape): seq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo] =
  var v_ma = fcQGeoAreaMonitorSource_activeMonitorsLookupArea(self.h, lookupArea.h)
  var vx_ret = newSeq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setBackendProperty*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQGeoAreaMonitorSource_setBackendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc backendProperty*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGeoAreaMonitorSource_backendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc areaEntered*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, update: gen_qgeopositioninfo_types.QGeoPositionInfo): void =
  fcQGeoAreaMonitorSource_areaEntered(self.h, monitor.h, update.h)

type QGeoAreaMonitorSourceareaEnteredSlot* = proc(monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, update: gen_qgeopositioninfo_types.QGeoPositionInfo)
proc fcQGeoAreaMonitorSource_slot_callback_areaEntered(slot: int, monitor: pointer, update: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGeoAreaMonitorSourceareaEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)

  let slotval2 = gen_qgeopositioninfo_types.QGeoPositionInfo(h: update, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQGeoAreaMonitorSource_slot_callback_areaEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoAreaMonitorSourceareaEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAreaEntered*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, slot: QGeoAreaMonitorSourceareaEnteredSlot) =
  var tmp = new QGeoAreaMonitorSourceareaEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoAreaMonitorSource_connect_areaEntered(self.h, cast[int](addr tmp[]), fcQGeoAreaMonitorSource_slot_callback_areaEntered, fcQGeoAreaMonitorSource_slot_callback_areaEntered_release)

proc areaExited*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, update: gen_qgeopositioninfo_types.QGeoPositionInfo): void =
  fcQGeoAreaMonitorSource_areaExited(self.h, monitor.h, update.h)

type QGeoAreaMonitorSourceareaExitedSlot* = proc(monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, update: gen_qgeopositioninfo_types.QGeoPositionInfo)
proc fcQGeoAreaMonitorSource_slot_callback_areaExited(slot: int, monitor: pointer, update: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGeoAreaMonitorSourceareaExitedSlot](cast[pointer](slot))
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)

  let slotval2 = gen_qgeopositioninfo_types.QGeoPositionInfo(h: update, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQGeoAreaMonitorSource_slot_callback_areaExited_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoAreaMonitorSourceareaExitedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAreaExited*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, slot: QGeoAreaMonitorSourceareaExitedSlot) =
  var tmp = new QGeoAreaMonitorSourceareaExitedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoAreaMonitorSource_connect_areaExited(self.h, cast[int](addr tmp[]), fcQGeoAreaMonitorSource_slot_callback_areaExited, fcQGeoAreaMonitorSource_slot_callback_areaExited_release)

proc monitorExpired*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): void =
  fcQGeoAreaMonitorSource_monitorExpired(self.h, monitor.h)

type QGeoAreaMonitorSourcemonitorExpiredSlot* = proc(monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo)
proc fcQGeoAreaMonitorSource_slot_callback_monitorExpired(slot: int, monitor: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGeoAreaMonitorSourcemonitorExpiredSlot](cast[pointer](slot))
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)

  nimfunc[](slotval1)

proc fcQGeoAreaMonitorSource_slot_callback_monitorExpired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoAreaMonitorSourcemonitorExpiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMonitorExpired*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, slot: QGeoAreaMonitorSourcemonitorExpiredSlot) =
  var tmp = new QGeoAreaMonitorSourcemonitorExpiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoAreaMonitorSource_connect_monitorExpired(self.h, cast[int](addr tmp[]), fcQGeoAreaMonitorSource_slot_callback_monitorExpired, fcQGeoAreaMonitorSource_slot_callback_monitorExpired_release)

proc errorOccurred*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, error: cint): void =
  fcQGeoAreaMonitorSource_errorOccurred(self.h, cint(error))

type QGeoAreaMonitorSourceerrorOccurredSlot* = proc(error: cint)
proc fcQGeoAreaMonitorSource_slot_callback_errorOccurred(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGeoAreaMonitorSourceerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc fcQGeoAreaMonitorSource_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoAreaMonitorSourceerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorOccurred*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, slot: QGeoAreaMonitorSourceerrorOccurredSlot) =
  var tmp = new QGeoAreaMonitorSourceerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoAreaMonitorSource_connect_errorOccurred(self.h, cast[int](addr tmp[]), fcQGeoAreaMonitorSource_slot_callback_errorOccurred, fcQGeoAreaMonitorSource_slot_callback_errorOccurred_release)

proc tr*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, s: cstring, c: cstring): string =
  let v_ms = fcQGeoAreaMonitorSource_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGeoAreaMonitorSource_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGeoAreaMonitorSourcemetaObjectProc* = proc(self: QGeoAreaMonitorSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcemetacastProc* = proc(self: QGeoAreaMonitorSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcemetacallProc* = proc(self: QGeoAreaMonitorSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcesetPositionInfoSourceProc* = proc(self: QGeoAreaMonitorSource, source: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcepositionInfoSourceProc* = proc(self: QGeoAreaMonitorSource): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.raises: [], gcsafe.}
type QGeoAreaMonitorSourceerrorProc* = proc(self: QGeoAreaMonitorSource): cint {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcesupportedAreaMonitorFeaturesProc* = proc(self: QGeoAreaMonitorSource): cint {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcestartMonitoringProc* = proc(self: QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcestopMonitoringProc* = proc(self: QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcerequestUpdateProc* = proc(self: QGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, signal: cstring): bool {.raises: [], gcsafe.}
type QGeoAreaMonitorSourceactiveMonitorsProc* = proc(self: QGeoAreaMonitorSource): seq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo] {.raises: [], gcsafe.}
type QGeoAreaMonitorSourceactiveMonitorsLookupAreaProc* = proc(self: QGeoAreaMonitorSource, lookupArea: gen_qgeoshape_types.QGeoShape): seq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo] {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcesetBackendPropertyProc* = proc(self: QGeoAreaMonitorSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcebackendPropertyProc* = proc(self: QGeoAreaMonitorSource, name: openArray[char]): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGeoAreaMonitorSourceeventProc* = proc(self: QGeoAreaMonitorSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGeoAreaMonitorSourceeventFilterProc* = proc(self: QGeoAreaMonitorSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcetimerEventProc* = proc(self: QGeoAreaMonitorSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcechildEventProc* = proc(self: QGeoAreaMonitorSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcecustomEventProc* = proc(self: QGeoAreaMonitorSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGeoAreaMonitorSourceconnectNotifyProc* = proc(self: QGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGeoAreaMonitorSourcedisconnectNotifyProc* = proc(self: QGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QGeoAreaMonitorSourceVTable* {.inheritable, pure.} = object
  vtbl: cQGeoAreaMonitorSourceVTable
  metaObject*: QGeoAreaMonitorSourcemetaObjectProc
  metacast*: QGeoAreaMonitorSourcemetacastProc
  metacall*: QGeoAreaMonitorSourcemetacallProc
  setPositionInfoSource*: QGeoAreaMonitorSourcesetPositionInfoSourceProc
  positionInfoSource*: QGeoAreaMonitorSourcepositionInfoSourceProc
  error*: QGeoAreaMonitorSourceerrorProc
  supportedAreaMonitorFeatures*: QGeoAreaMonitorSourcesupportedAreaMonitorFeaturesProc
  startMonitoring*: QGeoAreaMonitorSourcestartMonitoringProc
  stopMonitoring*: QGeoAreaMonitorSourcestopMonitoringProc
  requestUpdate*: QGeoAreaMonitorSourcerequestUpdateProc
  activeMonitors*: QGeoAreaMonitorSourceactiveMonitorsProc
  activeMonitorsLookupArea*: QGeoAreaMonitorSourceactiveMonitorsLookupAreaProc
  setBackendProperty*: QGeoAreaMonitorSourcesetBackendPropertyProc
  backendProperty*: QGeoAreaMonitorSourcebackendPropertyProc
  event*: QGeoAreaMonitorSourceeventProc
  eventFilter*: QGeoAreaMonitorSourceeventFilterProc
  timerEvent*: QGeoAreaMonitorSourcetimerEventProc
  childEvent*: QGeoAreaMonitorSourcechildEventProc
  customEvent*: QGeoAreaMonitorSourcecustomEventProc
  connectNotify*: QGeoAreaMonitorSourceconnectNotifyProc
  disconnectNotify*: QGeoAreaMonitorSourcedisconnectNotifyProc

proc QGeoAreaMonitorSourcemetaObject*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoAreaMonitorSource_virtualbase_metaObject(self.h), owned: false)

proc QGeoAreaMonitorSourcemetacast*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, param1: cstring): pointer =
  fcQGeoAreaMonitorSource_virtualbase_metacast(self.h, param1)

proc QGeoAreaMonitorSourcemetacall*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQGeoAreaMonitorSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGeoAreaMonitorSourcesetPositionInfoSource*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, source: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void =
  fcQGeoAreaMonitorSource_virtualbase_setPositionInfoSource(self.h, source.h)

proc QGeoAreaMonitorSourcepositionInfoSource*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoAreaMonitorSource_virtualbase_positionInfoSource(self.h), owned: false)

proc QGeoAreaMonitorSourcesetBackendProperty*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQGeoAreaMonitorSource_virtualbase_setBackendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc QGeoAreaMonitorSourcebackendProperty*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGeoAreaMonitorSource_virtualbase_backendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc QGeoAreaMonitorSourceevent*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQGeoAreaMonitorSource_virtualbase_event(self.h, event.h)

proc QGeoAreaMonitorSourceeventFilter*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGeoAreaMonitorSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QGeoAreaMonitorSourcetimerEvent*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGeoAreaMonitorSource_virtualbase_timerEvent(self.h, event.h)

proc QGeoAreaMonitorSourcechildEvent*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGeoAreaMonitorSource_virtualbase_childEvent(self.h, event.h)

proc QGeoAreaMonitorSourcecustomEvent*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, event: gen_qcoreevent_types.QEvent): void =
  fcQGeoAreaMonitorSource_virtualbase_customEvent(self.h, event.h)

proc QGeoAreaMonitorSourceconnectNotify*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGeoAreaMonitorSource_virtualbase_connectNotify(self.h, signal.h)

proc QGeoAreaMonitorSourcedisconnectNotify*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGeoAreaMonitorSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQGeoAreaMonitorSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoAreaMonitorSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_setPositionInfoSource(self: pointer, source: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: source, owned: false)
  vtbl[].setPositionInfoSource(self, slotval1)

proc fcQGeoAreaMonitorSource_vtable_callback_positionInfoSource(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  var virtualReturn = vtbl[].positionInfoSource(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoAreaMonitorSource_vtable_callback_error(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  var virtualReturn = vtbl[].error(self)
  cint(virtualReturn)

proc fcQGeoAreaMonitorSource_vtable_callback_supportedAreaMonitorFeatures(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  var virtualReturn = vtbl[].supportedAreaMonitorFeatures(self)
  cint(virtualReturn)

proc fcQGeoAreaMonitorSource_vtable_callback_startMonitoring(self: pointer, monitor: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)
  var virtualReturn = vtbl[].startMonitoring(self, slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_stopMonitoring(self: pointer, monitor: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)
  var virtualReturn = vtbl[].stopMonitoring(self, slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_requestUpdate(self: pointer, monitor: pointer, signal: cstring): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)
  let slotval2 = (signal)
  var virtualReturn = vtbl[].requestUpdate(self, slotval1, slotval2)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_activeMonitors(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  var virtualReturn = vtbl[].activeMonitors(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQGeoAreaMonitorSource_vtable_callback_activeMonitorsLookupArea(self: pointer, lookupArea: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qgeoshape_types.QGeoShape(h: lookupArea, owned: false)
  var virtualReturn = vtbl[].activeMonitorsLookupArea(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQGeoAreaMonitorSource_vtable_callback_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].setBackendProperty(self, slotval1, slotval2)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].backendProperty(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoAreaMonitorSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGeoAreaMonitorSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQGeoAreaMonitorSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQGeoAreaMonitorSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQGeoAreaMonitorSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQGeoAreaMonitorSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
  let self = QGeoAreaMonitorSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGeoAreaMonitorSource* {.inheritable.} = ref object of QGeoAreaMonitorSource
  vtbl*: cQGeoAreaMonitorSourceVTable

method metaObject*(self: VirtualQGeoAreaMonitorSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGeoAreaMonitorSourcemetaObject(self[])
method metacast*(self: VirtualQGeoAreaMonitorSource, param1: cstring): pointer {.base.} =
  QGeoAreaMonitorSourcemetacast(self[], param1)
method metacall*(self: VirtualQGeoAreaMonitorSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGeoAreaMonitorSourcemetacall(self[], param1, param2, param3)
method setPositionInfoSource*(self: VirtualQGeoAreaMonitorSource, source: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void {.base.} =
  QGeoAreaMonitorSourcesetPositionInfoSource(self[], source)
method positionInfoSource*(self: VirtualQGeoAreaMonitorSource): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.base.} =
  QGeoAreaMonitorSourcepositionInfoSource(self[])
method error*(self: VirtualQGeoAreaMonitorSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.error")
method supportedAreaMonitorFeatures*(self: VirtualQGeoAreaMonitorSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.supportedAreaMonitorFeatures")
method startMonitoring*(self: VirtualQGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.startMonitoring")
method stopMonitoring*(self: VirtualQGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo): bool {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.stopMonitoring")
method requestUpdate*(self: VirtualQGeoAreaMonitorSource, monitor: gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo, signal: cstring): bool {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.requestUpdate")
method activeMonitors*(self: VirtualQGeoAreaMonitorSource): seq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo] {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.activeMonitors")
method activeMonitors*(self: VirtualQGeoAreaMonitorSource, lookupArea: gen_qgeoshape_types.QGeoShape): seq[gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo] {.base.} =
  raiseAssert("missing implementation of QGeoAreaMonitorSource.activeMonitors")
method setBackendProperty*(self: VirtualQGeoAreaMonitorSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool {.base.} =
  QGeoAreaMonitorSourcesetBackendProperty(self[], name, value)
method backendProperty*(self: VirtualQGeoAreaMonitorSource, name: openArray[char]): gen_qvariant_types.QVariant {.base.} =
  QGeoAreaMonitorSourcebackendProperty(self[], name)
method event*(self: VirtualQGeoAreaMonitorSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGeoAreaMonitorSourceevent(self[], event)
method eventFilter*(self: VirtualQGeoAreaMonitorSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGeoAreaMonitorSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQGeoAreaMonitorSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGeoAreaMonitorSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQGeoAreaMonitorSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGeoAreaMonitorSourcechildEvent(self[], event)
method customEvent*(self: VirtualQGeoAreaMonitorSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGeoAreaMonitorSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGeoAreaMonitorSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGeoAreaMonitorSourcedisconnectNotify(self[], signal)

proc fcQGeoAreaMonitorSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoAreaMonitorSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_setPositionInfoSource(self: pointer, source: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: source, owned: false)
  inst.setPositionInfoSource(slotval1)

proc fcQGeoAreaMonitorSource_method_callback_positionInfoSource(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  var virtualReturn = inst.positionInfoSource()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoAreaMonitorSource_method_callback_error(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  var virtualReturn = inst.error()
  cint(virtualReturn)

proc fcQGeoAreaMonitorSource_method_callback_supportedAreaMonitorFeatures(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  var virtualReturn = inst.supportedAreaMonitorFeatures()
  cint(virtualReturn)

proc fcQGeoAreaMonitorSource_method_callback_startMonitoring(self: pointer, monitor: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)
  var virtualReturn = inst.startMonitoring(slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_stopMonitoring(self: pointer, monitor: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)
  var virtualReturn = inst.stopMonitoring(slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_requestUpdate(self: pointer, monitor: pointer, signal: cstring): bool {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qgeoareamonitorinfo_types.QGeoAreaMonitorInfo(h: monitor, owned: false)
  let slotval2 = (signal)
  var virtualReturn = inst.requestUpdate(slotval1, slotval2)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_activeMonitors(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  var virtualReturn = inst.activeMonitors()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQGeoAreaMonitorSource_method_callback_activeMonitorsLookupArea(self: pointer, lookupArea: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qgeoshape_types.QGeoShape(h: lookupArea, owned: false)
  var virtualReturn = inst.activeMonitors(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQGeoAreaMonitorSource_method_callback_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.setBackendProperty(slotval1, slotval2)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.backendProperty(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoAreaMonitorSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGeoAreaMonitorSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQGeoAreaMonitorSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQGeoAreaMonitorSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQGeoAreaMonitorSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQGeoAreaMonitorSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoAreaMonitorSource](fcQGeoAreaMonitorSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGeoAreaMonitorSource_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): cint =
  fcQGeoAreaMonitorSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, signal: cstring): cint =
  fcQGeoAreaMonitorSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGeoAreaMonitorSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGeoAreaMonitorSourceVTable = nil): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource =
  let vtbl = if vtbl == nil: new QGeoAreaMonitorSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGeoAreaMonitorSourceVTable](fcQGeoAreaMonitorSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGeoAreaMonitorSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGeoAreaMonitorSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGeoAreaMonitorSource_vtable_callback_metacall
  if not isNil(vtbl[].setPositionInfoSource):
    vtbl[].vtbl.setPositionInfoSource = fcQGeoAreaMonitorSource_vtable_callback_setPositionInfoSource
  if not isNil(vtbl[].positionInfoSource):
    vtbl[].vtbl.positionInfoSource = fcQGeoAreaMonitorSource_vtable_callback_positionInfoSource
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQGeoAreaMonitorSource_vtable_callback_error
  if not isNil(vtbl[].supportedAreaMonitorFeatures):
    vtbl[].vtbl.supportedAreaMonitorFeatures = fcQGeoAreaMonitorSource_vtable_callback_supportedAreaMonitorFeatures
  if not isNil(vtbl[].startMonitoring):
    vtbl[].vtbl.startMonitoring = fcQGeoAreaMonitorSource_vtable_callback_startMonitoring
  if not isNil(vtbl[].stopMonitoring):
    vtbl[].vtbl.stopMonitoring = fcQGeoAreaMonitorSource_vtable_callback_stopMonitoring
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQGeoAreaMonitorSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].activeMonitors):
    vtbl[].vtbl.activeMonitors = fcQGeoAreaMonitorSource_vtable_callback_activeMonitors
  if not isNil(vtbl[].activeMonitorsLookupArea):
    vtbl[].vtbl.activeMonitorsLookupArea = fcQGeoAreaMonitorSource_vtable_callback_activeMonitorsLookupArea
  if not isNil(vtbl[].setBackendProperty):
    vtbl[].vtbl.setBackendProperty = fcQGeoAreaMonitorSource_vtable_callback_setBackendProperty
  if not isNil(vtbl[].backendProperty):
    vtbl[].vtbl.backendProperty = fcQGeoAreaMonitorSource_vtable_callback_backendProperty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGeoAreaMonitorSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGeoAreaMonitorSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGeoAreaMonitorSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGeoAreaMonitorSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGeoAreaMonitorSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGeoAreaMonitorSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGeoAreaMonitorSource_vtable_callback_disconnectNotify
  let tmp = gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource(h: fcQGeoAreaMonitorSource_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQGeoAreaMonitorSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQGeoAreaMonitorSource_mvtbl = cQGeoAreaMonitorSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGeoAreaMonitorSource()[])](self.fcQGeoAreaMonitorSource_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQGeoAreaMonitorSource_method_callback_metaObject,
  metacast: fcQGeoAreaMonitorSource_method_callback_metacast,
  metacall: fcQGeoAreaMonitorSource_method_callback_metacall,
  setPositionInfoSource: fcQGeoAreaMonitorSource_method_callback_setPositionInfoSource,
  positionInfoSource: fcQGeoAreaMonitorSource_method_callback_positionInfoSource,
  error: fcQGeoAreaMonitorSource_method_callback_error,
  supportedAreaMonitorFeatures: fcQGeoAreaMonitorSource_method_callback_supportedAreaMonitorFeatures,
  startMonitoring: fcQGeoAreaMonitorSource_method_callback_startMonitoring,
  stopMonitoring: fcQGeoAreaMonitorSource_method_callback_stopMonitoring,
  requestUpdate: fcQGeoAreaMonitorSource_method_callback_requestUpdate,
  activeMonitors: fcQGeoAreaMonitorSource_method_callback_activeMonitors,
  activeMonitorsLookupArea: fcQGeoAreaMonitorSource_method_callback_activeMonitorsLookupArea,
  setBackendProperty: fcQGeoAreaMonitorSource_method_callback_setBackendProperty,
  backendProperty: fcQGeoAreaMonitorSource_method_callback_backendProperty,
  event: fcQGeoAreaMonitorSource_method_callback_event,
  eventFilter: fcQGeoAreaMonitorSource_method_callback_eventFilter,
  timerEvent: fcQGeoAreaMonitorSource_method_callback_timerEvent,
  childEvent: fcQGeoAreaMonitorSource_method_callback_childEvent,
  customEvent: fcQGeoAreaMonitorSource_method_callback_customEvent,
  connectNotify: fcQGeoAreaMonitorSource_method_callback_connectNotify,
  disconnectNotify: fcQGeoAreaMonitorSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGeoAreaMonitorSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGeoAreaMonitorSource_new(addr(cQGeoAreaMonitorSource_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQGeoAreaMonitorSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoAreaMonitorSource_staticMetaObject())
