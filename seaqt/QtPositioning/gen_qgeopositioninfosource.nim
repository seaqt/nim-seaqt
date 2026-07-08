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


{.compile("gen_qgeopositioninfosource.cpp", QtPositioningCFlags).}


type QGeoPositionInfoSourceErrorEnum* = distinct cint
template AccessError*(_: type QGeoPositionInfoSourceErrorEnum): untyped = 0
template ClosedError*(_: type QGeoPositionInfoSourceErrorEnum): untyped = 1
template UnknownSourceError*(_: type QGeoPositionInfoSourceErrorEnum): untyped = 2
template NoError*(_: type QGeoPositionInfoSourceErrorEnum): untyped = 3


type QGeoPositionInfoSourcePositioningMethodEnum* = distinct cint
template NoPositioningMethods*(_: type QGeoPositionInfoSourcePositioningMethodEnum): untyped = 0
template SatellitePositioningMethods*(_: type QGeoPositionInfoSourcePositioningMethodEnum): untyped = 255
template NonSatellitePositioningMethods*(_: type QGeoPositionInfoSourcePositioningMethodEnum): untyped = 4294967040
template AllPositioningMethods*(_: type QGeoPositionInfoSourcePositioningMethodEnum): untyped = 4294967295


import ./gen_qgeopositioninfosource_types
export gen_qgeopositioninfosource_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeopositioninfo_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qgeopositioninfo_types

type cQGeoPositionInfoSource*{.exportc: "QGeoPositionInfoSource", incompleteStruct.} = object

proc fcQGeoPositionInfoSource_metaObject(self: pointer): pointer {.importc: "QGeoPositionInfoSource_metaObject".}
proc fcQGeoPositionInfoSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QGeoPositionInfoSource_metacast".}
proc fcQGeoPositionInfoSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGeoPositionInfoSource_metacall".}
proc fcQGeoPositionInfoSource_trS(s: cstring): struct_seaqt_string {.importc: "QGeoPositionInfoSource_tr_s".}
proc fcQGeoPositionInfoSource_trUtf8S(s: cstring): struct_seaqt_string {.importc: "QGeoPositionInfoSource_trUtf8_s".}
proc fcQGeoPositionInfoSource_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QGeoPositionInfoSource_setUpdateInterval".}
proc fcQGeoPositionInfoSource_updateInterval(self: pointer): cint {.importc: "QGeoPositionInfoSource_updateInterval".}
proc fcQGeoPositionInfoSource_setPreferredPositioningMethods(self: pointer, methods: cint): void {.importc: "QGeoPositionInfoSource_setPreferredPositioningMethods".}
proc fcQGeoPositionInfoSource_preferredPositioningMethods(self: pointer): cint {.importc: "QGeoPositionInfoSource_preferredPositioningMethods".}
proc fcQGeoPositionInfoSource_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.importc: "QGeoPositionInfoSource_lastKnownPosition".}
proc fcQGeoPositionInfoSource_supportedPositioningMethods(self: pointer): cint {.importc: "QGeoPositionInfoSource_supportedPositioningMethods".}
proc fcQGeoPositionInfoSource_minimumUpdateInterval(self: pointer): cint {.importc: "QGeoPositionInfoSource_minimumUpdateInterval".}
proc fcQGeoPositionInfoSource_sourceName(self: pointer): struct_seaqt_string {.importc: "QGeoPositionInfoSource_sourceName".}
proc fcQGeoPositionInfoSource_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.importc: "QGeoPositionInfoSource_setBackendProperty".}
proc fcQGeoPositionInfoSource_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.importc: "QGeoPositionInfoSource_backendProperty".}
proc fcQGeoPositionInfoSource_createDefaultSource_QObject(parent: pointer): pointer {.importc: "QGeoPositionInfoSource_createDefaultSource_QObject".}
proc fcQGeoPositionInfoSource_createDefaultSource_QVariantMap_QObject(parameters: struct_seaqt_map, parent: pointer): pointer {.importc: "QGeoPositionInfoSource_createDefaultSource_QVariantMap_QObject".}
proc fcQGeoPositionInfoSource_createSource_QString_QObject(sourceName: struct_seaqt_string, parent: pointer): pointer {.importc: "QGeoPositionInfoSource_createSource_QString_QObject".}
proc fcQGeoPositionInfoSource_createSource_QString_QVariantMap_QObject(sourceName: struct_seaqt_string, parameters: struct_seaqt_map, parent: pointer): pointer {.importc: "QGeoPositionInfoSource_createSource_QString_QVariantMap_QObject".}
proc fcQGeoPositionInfoSource_availableSources(): struct_seaqt_array {.importc: "QGeoPositionInfoSource_availableSources".}
proc fcQGeoPositionInfoSource_error(self: pointer): cint {.importc: "QGeoPositionInfoSource_error".}
proc fcQGeoPositionInfoSource_startUpdates(self: pointer): void {.importc: "QGeoPositionInfoSource_startUpdates".}
proc fcQGeoPositionInfoSource_stopUpdates(self: pointer): void {.importc: "QGeoPositionInfoSource_stopUpdates".}
proc fcQGeoPositionInfoSource_requestUpdate(self: pointer, timeout: cint): void {.importc: "QGeoPositionInfoSource_requestUpdate".}
proc fcQGeoPositionInfoSource_positionUpdated(self: pointer, update: pointer): void {.importc: "QGeoPositionInfoSource_positionUpdated".}
proc fcQGeoPositionInfoSource_connect_positionUpdated(self: pointer, slot: int, callback: proc (slot: int, update: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoPositionInfoSource_connect_positionUpdated".}
proc fcQGeoPositionInfoSource_updateTimeout(self: pointer): void {.importc: "QGeoPositionInfoSource_updateTimeout".}
proc fcQGeoPositionInfoSource_connect_updateTimeout(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoPositionInfoSource_connect_updateTimeout".}
proc fcQGeoPositionInfoSource_error_QGeoPositionInfoSource_Error(self: pointer, param1: cint): void {.importc: "QGeoPositionInfoSource_error_QGeoPositionInfoSource_Error".}
proc fcQGeoPositionInfoSource_connect_error_QGeoPositionInfoSource_Error(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoPositionInfoSource_connect_error_QGeoPositionInfoSource_Error".}
proc fcQGeoPositionInfoSource_supportedPositioningMethodsChanged(self: pointer): void {.importc: "QGeoPositionInfoSource_supportedPositioningMethodsChanged".}
proc fcQGeoPositionInfoSource_connect_supportedPositioningMethodsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoPositionInfoSource_connect_supportedPositioningMethodsChanged".}
proc fcQGeoPositionInfoSource_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QGeoPositionInfoSource_tr_s_c".}
proc fcQGeoPositionInfoSource_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QGeoPositionInfoSource_tr_s_c_n".}
proc fcQGeoPositionInfoSource_trUtf8SC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QGeoPositionInfoSource_trUtf8_s_c".}
proc fcQGeoPositionInfoSource_trUtf8SCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QGeoPositionInfoSource_trUtf8_s_c_n".}
proc fcQGeoPositionInfoSource_vdata(self: pointer): ptr pointer {.importc: "QGeoPositionInfoSource_vdata".}
proc fvdata_cQGeoPositionInfoSource(self: pointer): pointer {.importc: "vdata_QGeoPositionInfoSource".}

type cQGeoPositionInfoSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setUpdateInterval*: proc(self: pointer, msec: cint): void {.cdecl, raises: [], gcsafe.}
  setPreferredPositioningMethods*: proc(self: pointer, methods: cint): void {.cdecl, raises: [], gcsafe.}
  lastKnownPosition*: proc(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.cdecl, raises: [], gcsafe.}
  supportedPositioningMethods*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumUpdateInterval*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  error*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  startUpdates*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stopUpdates*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  requestUpdate*: proc(self: pointer, timeout: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGeoPositionInfoSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QGeoPositionInfoSource_virtualbase_metaObject".}
proc fcQGeoPositionInfoSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGeoPositionInfoSource_virtualbase_metacast".}
proc fcQGeoPositionInfoSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGeoPositionInfoSource_virtualbase_metacall".}
proc fcQGeoPositionInfoSource_virtualbase_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QGeoPositionInfoSource_virtualbase_setUpdateInterval".}
proc fcQGeoPositionInfoSource_virtualbase_setPreferredPositioningMethods(self: pointer, methods: cint): void {.importc: "QGeoPositionInfoSource_virtualbase_setPreferredPositioningMethods".}
proc fcQGeoPositionInfoSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGeoPositionInfoSource_virtualbase_event".}
proc fcQGeoPositionInfoSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGeoPositionInfoSource_virtualbase_eventFilter".}
proc fcQGeoPositionInfoSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGeoPositionInfoSource_virtualbase_timerEvent".}
proc fcQGeoPositionInfoSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGeoPositionInfoSource_virtualbase_childEvent".}
proc fcQGeoPositionInfoSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGeoPositionInfoSource_virtualbase_customEvent".}
proc fcQGeoPositionInfoSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGeoPositionInfoSource_virtualbase_connectNotify".}
proc fcQGeoPositionInfoSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGeoPositionInfoSource_virtualbase_disconnectNotify".}
proc fcQGeoPositionInfoSource_protectedbase_sender(self: pointer): pointer {.importc: "QGeoPositionInfoSource_protectedbase_sender".}
proc fcQGeoPositionInfoSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGeoPositionInfoSource_protectedbase_senderSignalIndex".}
proc fcQGeoPositionInfoSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGeoPositionInfoSource_protectedbase_receivers".}
proc fcQGeoPositionInfoSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGeoPositionInfoSource_protectedbase_isSignalConnected".}
proc fcQGeoPositionInfoSource_new(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQGeoPositionInfoSource {.importc: "QGeoPositionInfoSource_new".}
proc fcQGeoPositionInfoSource_staticMetaObject(): pointer {.importc: "QGeoPositionInfoSource_staticMetaObject".}

proc metaObject*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoPositionInfoSource_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, param1: cstring): pointer =
  fcQGeoPositionInfoSource_metacast(self.h, param1)

proc metacall*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQGeoPositionInfoSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, s: cstring): string =
  let v_ms = fcQGeoPositionInfoSource_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, s: cstring): string =
  let v_ms = fcQGeoPositionInfoSource_trUtf8S(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUpdateInterval*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, msec: cint): void =
  fcQGeoPositionInfoSource_setUpdateInterval(self.h, msec)

proc updateInterval*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): cint =
  fcQGeoPositionInfoSource_updateInterval(self.h)

proc setPreferredPositioningMethods*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, methods: cint): void =
  fcQGeoPositionInfoSource_setPreferredPositioningMethods(self.h, cint(methods))

proc preferredPositioningMethods*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): cint =
  cint(fcQGeoPositionInfoSource_preferredPositioningMethods(self.h))

proc lastKnownPosition*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo =
  gen_qgeopositioninfo_types.QGeoPositionInfo(h: fcQGeoPositionInfoSource_lastKnownPosition(self.h, fromSatellitePositioningMethodsOnly), owned: true)

proc supportedPositioningMethods*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): cint =
  cint(fcQGeoPositionInfoSource_supportedPositioningMethods(self.h))

proc minimumUpdateInterval*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): cint =
  fcQGeoPositionInfoSource_minimumUpdateInterval(self.h)

proc sourceName*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): string =
  let v_ms = fcQGeoPositionInfoSource_sourceName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setBackendProperty*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQGeoPositionInfoSource_setBackendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc backendProperty*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGeoPositionInfoSource_backendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc createDefaultSource*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSource_createDefaultSource_QObject(parent.h), owned: false)

proc createDefaultSource*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, parameters: Table[string,gen_qvariant_types.QVariant], parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k in parameters.keys():
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_ctr += 1
  parameters_ctr = 0
  for parameters_v in parameters.values():
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSource_createDefaultSource_QVariantMap_QObject(struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),), parent.h), owned: false)

proc createSource*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, sourceName: openArray[char], parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSource_createSource_QString_QObject(struct_seaqt_string(data: if len(sourceName) > 0: addr sourceName[0] else: nil, len: csize_t(len(sourceName))), parent.h), owned: false)

proc createSource*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, sourceName: openArray[char], parameters: Table[string,gen_qvariant_types.QVariant], parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k in parameters.keys():
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_ctr += 1
  parameters_ctr = 0
  for parameters_v in parameters.values():
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSource_createSource_QString_QVariantMap_QObject(struct_seaqt_string(data: if len(sourceName) > 0: addr sourceName[0] else: nil, len: csize_t(len(sourceName))), struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),), parent.h), owned: false)

proc availableSources*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource): seq[string] =
  var v_ma = fcQGeoPositionInfoSource_availableSources()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc error*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): cint =
  cint(fcQGeoPositionInfoSource_error(self.h))

proc startUpdates*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void =
  fcQGeoPositionInfoSource_startUpdates(self.h)

proc stopUpdates*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void =
  fcQGeoPositionInfoSource_stopUpdates(self.h)

proc requestUpdate*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, timeout: cint): void =
  fcQGeoPositionInfoSource_requestUpdate(self.h, timeout)

proc positionUpdated*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, update: gen_qgeopositioninfo_types.QGeoPositionInfo): void =
  fcQGeoPositionInfoSource_positionUpdated(self.h, update.h)

type QGeoPositionInfoSourcepositionUpdatedSlot* = proc(update: gen_qgeopositioninfo_types.QGeoPositionInfo)
proc fcQGeoPositionInfoSource_slot_callback_positionUpdated(slot: int, update: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGeoPositionInfoSourcepositionUpdatedSlot](cast[pointer](slot))
  let slotval1 = gen_qgeopositioninfo_types.QGeoPositionInfo(h: update, owned: false)

  nimfunc[](slotval1)

proc fcQGeoPositionInfoSource_slot_callback_positionUpdated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoPositionInfoSourcepositionUpdatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPositionUpdated*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, slot: QGeoPositionInfoSourcepositionUpdatedSlot) =
  var tmp = new QGeoPositionInfoSourcepositionUpdatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoPositionInfoSource_connect_positionUpdated(self.h, cast[int](addr tmp[]), fcQGeoPositionInfoSource_slot_callback_positionUpdated, fcQGeoPositionInfoSource_slot_callback_positionUpdated_release)

proc updateTimeout*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void =
  fcQGeoPositionInfoSource_updateTimeout(self.h)

type QGeoPositionInfoSourceupdateTimeoutSlot* = proc()
proc fcQGeoPositionInfoSource_slot_callback_updateTimeout(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGeoPositionInfoSourceupdateTimeoutSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQGeoPositionInfoSource_slot_callback_updateTimeout_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoPositionInfoSourceupdateTimeoutSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUpdateTimeout*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, slot: QGeoPositionInfoSourceupdateTimeoutSlot) =
  var tmp = new QGeoPositionInfoSourceupdateTimeoutSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoPositionInfoSource_connect_updateTimeout(self.h, cast[int](addr tmp[]), fcQGeoPositionInfoSource_slot_callback_updateTimeout, fcQGeoPositionInfoSource_slot_callback_updateTimeout_release)

proc error*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, param1: cint): void =
  fcQGeoPositionInfoSource_error_QGeoPositionInfoSource_Error(self.h, cint(param1))

type QGeoPositionInfoSourceerror_QGeoPositionInfoSource_ErrorSlot* = proc(param1: cint)
proc fcQGeoPositionInfoSource_slot_callback_error_QGeoPositionInfoSource_Error(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGeoPositionInfoSourceerror_QGeoPositionInfoSource_ErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc fcQGeoPositionInfoSource_slot_callback_error_QGeoPositionInfoSource_Error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoPositionInfoSourceerror_QGeoPositionInfoSource_ErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, slot: QGeoPositionInfoSourceerror_QGeoPositionInfoSource_ErrorSlot) =
  var tmp = new QGeoPositionInfoSourceerror_QGeoPositionInfoSource_ErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoPositionInfoSource_connect_error_QGeoPositionInfoSource_Error(self.h, cast[int](addr tmp[]), fcQGeoPositionInfoSource_slot_callback_error_QGeoPositionInfoSource_Error, fcQGeoPositionInfoSource_slot_callback_error_QGeoPositionInfoSource_Error_release)

proc supportedPositioningMethodsChanged*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): void =
  fcQGeoPositionInfoSource_supportedPositioningMethodsChanged(self.h)

type QGeoPositionInfoSourcesupportedPositioningMethodsChangedSlot* = proc()
proc fcQGeoPositionInfoSource_slot_callback_supportedPositioningMethodsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGeoPositionInfoSourcesupportedPositioningMethodsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQGeoPositionInfoSource_slot_callback_supportedPositioningMethodsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoPositionInfoSourcesupportedPositioningMethodsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSupportedPositioningMethodsChanged*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, slot: QGeoPositionInfoSourcesupportedPositioningMethodsChangedSlot) =
  var tmp = new QGeoPositionInfoSourcesupportedPositioningMethodsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoPositionInfoSource_connect_supportedPositioningMethodsChanged(self.h, cast[int](addr tmp[]), fcQGeoPositionInfoSource_slot_callback_supportedPositioningMethodsChanged, fcQGeoPositionInfoSource_slot_callback_supportedPositioningMethodsChanged_release)

proc tr*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, s: cstring, c: cstring): string =
  let v_ms = fcQGeoPositionInfoSource_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGeoPositionInfoSource_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, s: cstring, c: cstring): string =
  let v_ms = fcQGeoPositionInfoSource_trUtf8SC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGeoPositionInfoSource_trUtf8SCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGeoPositionInfoSourcemetaObjectProc* = proc(self: QGeoPositionInfoSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGeoPositionInfoSourcemetacastProc* = proc(self: QGeoPositionInfoSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QGeoPositionInfoSourcemetacallProc* = proc(self: QGeoPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGeoPositionInfoSourcesetUpdateIntervalProc* = proc(self: QGeoPositionInfoSource, msec: cint): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcesetPreferredPositioningMethodsProc* = proc(self: QGeoPositionInfoSource, methods: cint): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcelastKnownPositionProc* = proc(self: QGeoPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo {.raises: [], gcsafe.}
type QGeoPositionInfoSourcesupportedPositioningMethodsProc* = proc(self: QGeoPositionInfoSource): cint {.raises: [], gcsafe.}
type QGeoPositionInfoSourceminimumUpdateIntervalProc* = proc(self: QGeoPositionInfoSource): cint {.raises: [], gcsafe.}
type QGeoPositionInfoSourceerrorProc* = proc(self: QGeoPositionInfoSource): cint {.raises: [], gcsafe.}
type QGeoPositionInfoSourcestartUpdatesProc* = proc(self: QGeoPositionInfoSource): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcestopUpdatesProc* = proc(self: QGeoPositionInfoSource): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcerequestUpdateProc* = proc(self: QGeoPositionInfoSource, timeout: cint): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourceeventProc* = proc(self: QGeoPositionInfoSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGeoPositionInfoSourceeventFilterProc* = proc(self: QGeoPositionInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGeoPositionInfoSourcetimerEventProc* = proc(self: QGeoPositionInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcechildEventProc* = proc(self: QGeoPositionInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcecustomEventProc* = proc(self: QGeoPositionInfoSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourceconnectNotifyProc* = proc(self: QGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGeoPositionInfoSourcedisconnectNotifyProc* = proc(self: QGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QGeoPositionInfoSourceVTable* {.inheritable, pure.} = object
  vtbl: cQGeoPositionInfoSourceVTable
  metaObject*: QGeoPositionInfoSourcemetaObjectProc
  metacast*: QGeoPositionInfoSourcemetacastProc
  metacall*: QGeoPositionInfoSourcemetacallProc
  setUpdateInterval*: QGeoPositionInfoSourcesetUpdateIntervalProc
  setPreferredPositioningMethods*: QGeoPositionInfoSourcesetPreferredPositioningMethodsProc
  lastKnownPosition*: QGeoPositionInfoSourcelastKnownPositionProc
  supportedPositioningMethods*: QGeoPositionInfoSourcesupportedPositioningMethodsProc
  minimumUpdateInterval*: QGeoPositionInfoSourceminimumUpdateIntervalProc
  error*: QGeoPositionInfoSourceerrorProc
  startUpdates*: QGeoPositionInfoSourcestartUpdatesProc
  stopUpdates*: QGeoPositionInfoSourcestopUpdatesProc
  requestUpdate*: QGeoPositionInfoSourcerequestUpdateProc
  event*: QGeoPositionInfoSourceeventProc
  eventFilter*: QGeoPositionInfoSourceeventFilterProc
  timerEvent*: QGeoPositionInfoSourcetimerEventProc
  childEvent*: QGeoPositionInfoSourcechildEventProc
  customEvent*: QGeoPositionInfoSourcecustomEventProc
  connectNotify*: QGeoPositionInfoSourceconnectNotifyProc
  disconnectNotify*: QGeoPositionInfoSourcedisconnectNotifyProc

proc QGeoPositionInfoSourcemetaObject*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoPositionInfoSource_virtualbase_metaObject(self.h), owned: false)

proc QGeoPositionInfoSourcemetacast*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, param1: cstring): pointer =
  fcQGeoPositionInfoSource_virtualbase_metacast(self.h, param1)

proc QGeoPositionInfoSourcemetacall*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQGeoPositionInfoSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGeoPositionInfoSourcesetUpdateInterval*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, msec: cint): void =
  fcQGeoPositionInfoSource_virtualbase_setUpdateInterval(self.h, msec)

proc QGeoPositionInfoSourcesetPreferredPositioningMethods*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, methods: cint): void =
  fcQGeoPositionInfoSource_virtualbase_setPreferredPositioningMethods(self.h, cint(methods))

proc QGeoPositionInfoSourceevent*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQGeoPositionInfoSource_virtualbase_event(self.h, event.h)

proc QGeoPositionInfoSourceeventFilter*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGeoPositionInfoSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QGeoPositionInfoSourcetimerEvent*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGeoPositionInfoSource_virtualbase_timerEvent(self.h, event.h)

proc QGeoPositionInfoSourcechildEvent*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGeoPositionInfoSource_virtualbase_childEvent(self.h, event.h)

proc QGeoPositionInfoSourcecustomEvent*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, event: gen_qcoreevent_types.QEvent): void =
  fcQGeoPositionInfoSource_virtualbase_customEvent(self.h, event.h)

proc QGeoPositionInfoSourceconnectNotify*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGeoPositionInfoSource_virtualbase_connectNotify(self.h, signal.h)

proc QGeoPositionInfoSourcedisconnectNotify*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGeoPositionInfoSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQGeoPositionInfoSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoPositionInfoSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGeoPositionInfoSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGeoPositionInfoSource_vtable_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = msec
  vtbl[].setUpdateInterval(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_setPreferredPositioningMethods(self: pointer, methods: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = cint(methods)
  vtbl[].setPreferredPositioningMethods(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = fromSatellitePositioningMethodsOnly
  var virtualReturn = vtbl[].lastKnownPosition(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoPositionInfoSource_vtable_callback_supportedPositioningMethods(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  var virtualReturn = vtbl[].supportedPositioningMethods(self)
  cint(virtualReturn)

proc fcQGeoPositionInfoSource_vtable_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  var virtualReturn = vtbl[].minimumUpdateInterval(self)
  virtualReturn

proc fcQGeoPositionInfoSource_vtable_callback_error(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  var virtualReturn = vtbl[].error(self)
  cint(virtualReturn)

proc fcQGeoPositionInfoSource_vtable_callback_startUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  vtbl[].startUpdates(self)

proc fcQGeoPositionInfoSource_vtable_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  vtbl[].stopUpdates(self)

proc fcQGeoPositionInfoSource_vtable_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = timeout
  vtbl[].requestUpdate(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGeoPositionInfoSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGeoPositionInfoSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQGeoPositionInfoSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
  let self = QGeoPositionInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGeoPositionInfoSource* {.inheritable.} = ref object of QGeoPositionInfoSource
  vtbl*: cQGeoPositionInfoSourceVTable

method metaObject*(self: VirtualQGeoPositionInfoSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGeoPositionInfoSourcemetaObject(self[])
method metacast*(self: VirtualQGeoPositionInfoSource, param1: cstring): pointer {.base.} =
  QGeoPositionInfoSourcemetacast(self[], param1)
method metacall*(self: VirtualQGeoPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGeoPositionInfoSourcemetacall(self[], param1, param2, param3)
method setUpdateInterval*(self: VirtualQGeoPositionInfoSource, msec: cint): void {.base.} =
  QGeoPositionInfoSourcesetUpdateInterval(self[], msec)
method setPreferredPositioningMethods*(self: VirtualQGeoPositionInfoSource, methods: cint): void {.base.} =
  QGeoPositionInfoSourcesetPreferredPositioningMethods(self[], methods)
method lastKnownPosition*(self: VirtualQGeoPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.lastKnownPosition")
method supportedPositioningMethods*(self: VirtualQGeoPositionInfoSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.supportedPositioningMethods")
method minimumUpdateInterval*(self: VirtualQGeoPositionInfoSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.minimumUpdateInterval")
method error*(self: VirtualQGeoPositionInfoSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.error")
method startUpdates*(self: VirtualQGeoPositionInfoSource): void {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.startUpdates")
method stopUpdates*(self: VirtualQGeoPositionInfoSource): void {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.stopUpdates")
method requestUpdate*(self: VirtualQGeoPositionInfoSource, timeout: cint): void {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSource.requestUpdate")
method event*(self: VirtualQGeoPositionInfoSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGeoPositionInfoSourceevent(self[], event)
method eventFilter*(self: VirtualQGeoPositionInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGeoPositionInfoSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQGeoPositionInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGeoPositionInfoSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQGeoPositionInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGeoPositionInfoSourcechildEvent(self[], event)
method customEvent*(self: VirtualQGeoPositionInfoSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGeoPositionInfoSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGeoPositionInfoSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGeoPositionInfoSourcedisconnectNotify(self[], signal)

proc fcQGeoPositionInfoSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoPositionInfoSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGeoPositionInfoSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGeoPositionInfoSource_method_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = msec
  inst.setUpdateInterval(slotval1)

proc fcQGeoPositionInfoSource_method_callback_setPreferredPositioningMethods(self: pointer, methods: cint): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = cint(methods)
  inst.setPreferredPositioningMethods(slotval1)

proc fcQGeoPositionInfoSource_method_callback_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = fromSatellitePositioningMethodsOnly
  var virtualReturn = inst.lastKnownPosition(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGeoPositionInfoSource_method_callback_supportedPositioningMethods(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.supportedPositioningMethods()
  cint(virtualReturn)

proc fcQGeoPositionInfoSource_method_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.minimumUpdateInterval()
  virtualReturn

proc fcQGeoPositionInfoSource_method_callback_error(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.error()
  cint(virtualReturn)

proc fcQGeoPositionInfoSource_method_callback_startUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  inst.startUpdates()

proc fcQGeoPositionInfoSource_method_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  inst.stopUpdates()

proc fcQGeoPositionInfoSource_method_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = timeout
  inst.requestUpdate(slotval1)

proc fcQGeoPositionInfoSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGeoPositionInfoSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGeoPositionInfoSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQGeoPositionInfoSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQGeoPositionInfoSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQGeoPositionInfoSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQGeoPositionInfoSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSource](fcQGeoPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGeoPositionInfoSource_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource): cint =
  fcQGeoPositionInfoSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, signal: cstring): cint =
  fcQGeoPositionInfoSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgeopositioninfosource_types.QGeoPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGeoPositionInfoSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGeoPositionInfoSourceVTable = nil): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  let vtbl = if vtbl == nil: new QGeoPositionInfoSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGeoPositionInfoSourceVTable](fcQGeoPositionInfoSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGeoPositionInfoSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGeoPositionInfoSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGeoPositionInfoSource_vtable_callback_metacall
  if not isNil(vtbl[].setUpdateInterval):
    vtbl[].vtbl.setUpdateInterval = fcQGeoPositionInfoSource_vtable_callback_setUpdateInterval
  if not isNil(vtbl[].setPreferredPositioningMethods):
    vtbl[].vtbl.setPreferredPositioningMethods = fcQGeoPositionInfoSource_vtable_callback_setPreferredPositioningMethods
  if not isNil(vtbl[].lastKnownPosition):
    vtbl[].vtbl.lastKnownPosition = fcQGeoPositionInfoSource_vtable_callback_lastKnownPosition
  if not isNil(vtbl[].supportedPositioningMethods):
    vtbl[].vtbl.supportedPositioningMethods = fcQGeoPositionInfoSource_vtable_callback_supportedPositioningMethods
  if not isNil(vtbl[].minimumUpdateInterval):
    vtbl[].vtbl.minimumUpdateInterval = fcQGeoPositionInfoSource_vtable_callback_minimumUpdateInterval
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQGeoPositionInfoSource_vtable_callback_error
  if not isNil(vtbl[].startUpdates):
    vtbl[].vtbl.startUpdates = fcQGeoPositionInfoSource_vtable_callback_startUpdates
  if not isNil(vtbl[].stopUpdates):
    vtbl[].vtbl.stopUpdates = fcQGeoPositionInfoSource_vtable_callback_stopUpdates
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQGeoPositionInfoSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGeoPositionInfoSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGeoPositionInfoSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGeoPositionInfoSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGeoPositionInfoSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGeoPositionInfoSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGeoPositionInfoSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGeoPositionInfoSource_vtable_callback_disconnectNotify
  let tmp = gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSource_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQGeoPositionInfoSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQGeoPositionInfoSource_mvtbl = cQGeoPositionInfoSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGeoPositionInfoSource()[])](self.fcQGeoPositionInfoSource_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQGeoPositionInfoSource_method_callback_metaObject,
  metacast: fcQGeoPositionInfoSource_method_callback_metacast,
  metacall: fcQGeoPositionInfoSource_method_callback_metacall,
  setUpdateInterval: fcQGeoPositionInfoSource_method_callback_setUpdateInterval,
  setPreferredPositioningMethods: fcQGeoPositionInfoSource_method_callback_setPreferredPositioningMethods,
  lastKnownPosition: fcQGeoPositionInfoSource_method_callback_lastKnownPosition,
  supportedPositioningMethods: fcQGeoPositionInfoSource_method_callback_supportedPositioningMethods,
  minimumUpdateInterval: fcQGeoPositionInfoSource_method_callback_minimumUpdateInterval,
  error: fcQGeoPositionInfoSource_method_callback_error,
  startUpdates: fcQGeoPositionInfoSource_method_callback_startUpdates,
  stopUpdates: fcQGeoPositionInfoSource_method_callback_stopUpdates,
  requestUpdate: fcQGeoPositionInfoSource_method_callback_requestUpdate,
  event: fcQGeoPositionInfoSource_method_callback_event,
  eventFilter: fcQGeoPositionInfoSource_method_callback_eventFilter,
  timerEvent: fcQGeoPositionInfoSource_method_callback_timerEvent,
  childEvent: fcQGeoPositionInfoSource_method_callback_childEvent,
  customEvent: fcQGeoPositionInfoSource_method_callback_customEvent,
  connectNotify: fcQGeoPositionInfoSource_method_callback_connectNotify,
  disconnectNotify: fcQGeoPositionInfoSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGeoPositionInfoSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGeoPositionInfoSource_new(addr(cQGeoPositionInfoSource_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQGeoPositionInfoSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgeopositioninfosource_types.QGeoPositionInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoPositionInfoSource_staticMetaObject())
