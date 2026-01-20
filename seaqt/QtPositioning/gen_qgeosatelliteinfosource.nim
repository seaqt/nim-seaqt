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


{.compile("gen_qgeosatelliteinfosource.cpp", QtPositioningCFlags).}


type QGeoSatelliteInfoSourceErrorEnum* = distinct cint
template AccessError*(_: type QGeoSatelliteInfoSourceErrorEnum): untyped = 0
template ClosedError*(_: type QGeoSatelliteInfoSourceErrorEnum): untyped = 1
template NoError*(_: type QGeoSatelliteInfoSourceErrorEnum): untyped = 2
template UnknownSourceError*(_: type QGeoSatelliteInfoSourceErrorEnum): untyped = -1


import ./gen_qgeosatelliteinfosource_types
export gen_qgeosatelliteinfosource_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeosatelliteinfo_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qgeosatelliteinfo_types

type cQGeoSatelliteInfoSource*{.exportc: "QGeoSatelliteInfoSource", incompleteStruct.} = object

proc fcQGeoSatelliteInfoSource_metaObject(self: pointer): pointer {.importc: "QGeoSatelliteInfoSource_metaObject".}
proc fcQGeoSatelliteInfoSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QGeoSatelliteInfoSource_metacast".}
proc fcQGeoSatelliteInfoSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGeoSatelliteInfoSource_metacall".}
proc fcQGeoSatelliteInfoSource_tr(s: cstring): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_tr".}
proc fcQGeoSatelliteInfoSource_trUtf8(s: cstring): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_trUtf8".}
proc fcQGeoSatelliteInfoSource_createDefaultSource(parent: pointer): pointer {.importc: "QGeoSatelliteInfoSource_createDefaultSource".}
proc fcQGeoSatelliteInfoSource_createSource(sourceName: struct_seaqt_string, parent: pointer): pointer {.importc: "QGeoSatelliteInfoSource_createSource".}
proc fcQGeoSatelliteInfoSource_createDefaultSource2(parameters: struct_seaqt_map, parent: pointer): pointer {.importc: "QGeoSatelliteInfoSource_createDefaultSource2".}
proc fcQGeoSatelliteInfoSource_createSource2(sourceName: struct_seaqt_string, parameters: struct_seaqt_map, parent: pointer): pointer {.importc: "QGeoSatelliteInfoSource_createSource2".}
proc fcQGeoSatelliteInfoSource_availableSources(): struct_seaqt_array {.importc: "QGeoSatelliteInfoSource_availableSources".}
proc fcQGeoSatelliteInfoSource_sourceName(self: pointer): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_sourceName".}
proc fcQGeoSatelliteInfoSource_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QGeoSatelliteInfoSource_setUpdateInterval".}
proc fcQGeoSatelliteInfoSource_updateInterval(self: pointer): cint {.importc: "QGeoSatelliteInfoSource_updateInterval".}
proc fcQGeoSatelliteInfoSource_minimumUpdateInterval(self: pointer): cint {.importc: "QGeoSatelliteInfoSource_minimumUpdateInterval".}
proc fcQGeoSatelliteInfoSource_error(self: pointer): cint {.importc: "QGeoSatelliteInfoSource_error".}
proc fcQGeoSatelliteInfoSource_startUpdates(self: pointer): void {.importc: "QGeoSatelliteInfoSource_startUpdates".}
proc fcQGeoSatelliteInfoSource_stopUpdates(self: pointer): void {.importc: "QGeoSatelliteInfoSource_stopUpdates".}
proc fcQGeoSatelliteInfoSource_requestUpdate(self: pointer, timeout: cint): void {.importc: "QGeoSatelliteInfoSource_requestUpdate".}
proc fcQGeoSatelliteInfoSource_satellitesInViewUpdated(self: pointer, satellites: struct_seaqt_array): void {.importc: "QGeoSatelliteInfoSource_satellitesInViewUpdated".}
proc fcQGeoSatelliteInfoSource_connect_satellitesInViewUpdated(self: pointer, slot: int, callback: proc (slot: int, satellites: struct_seaqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoSatelliteInfoSource_connect_satellitesInViewUpdated".}
proc fcQGeoSatelliteInfoSource_satellitesInUseUpdated(self: pointer, satellites: struct_seaqt_array): void {.importc: "QGeoSatelliteInfoSource_satellitesInUseUpdated".}
proc fcQGeoSatelliteInfoSource_connect_satellitesInUseUpdated(self: pointer, slot: int, callback: proc (slot: int, satellites: struct_seaqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoSatelliteInfoSource_connect_satellitesInUseUpdated".}
proc fcQGeoSatelliteInfoSource_requestTimeout(self: pointer): void {.importc: "QGeoSatelliteInfoSource_requestTimeout".}
proc fcQGeoSatelliteInfoSource_connect_requestTimeout(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoSatelliteInfoSource_connect_requestTimeout".}
proc fcQGeoSatelliteInfoSource_errorWithQGeoSatelliteInfoSourceError(self: pointer, param1: cint): void {.importc: "QGeoSatelliteInfoSource_errorWithQGeoSatelliteInfoSourceError".}
proc fcQGeoSatelliteInfoSource_connect_errorWithQGeoSatelliteInfoSourceError(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGeoSatelliteInfoSource_connect_errorWithQGeoSatelliteInfoSourceError".}
proc fcQGeoSatelliteInfoSource_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_tr2".}
proc fcQGeoSatelliteInfoSource_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_tr3".}
proc fcQGeoSatelliteInfoSource_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_trUtf82".}
proc fcQGeoSatelliteInfoSource_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QGeoSatelliteInfoSource_trUtf83".}
proc fcQGeoSatelliteInfoSource_vdata(self: pointer): ptr pointer {.importc: "QGeoSatelliteInfoSource_vdata".}
proc fvdata_cQGeoSatelliteInfoSource(self: pointer): pointer {.importc: "vdata_QGeoSatelliteInfoSource".}

type cQGeoSatelliteInfoSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setUpdateInterval*: proc(self: pointer, msec: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQGeoSatelliteInfoSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QGeoSatelliteInfoSource_virtualbase_metaObject".}
proc fcQGeoSatelliteInfoSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGeoSatelliteInfoSource_virtualbase_metacast".}
proc fcQGeoSatelliteInfoSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGeoSatelliteInfoSource_virtualbase_metacall".}
proc fcQGeoSatelliteInfoSource_virtualbase_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QGeoSatelliteInfoSource_virtualbase_setUpdateInterval".}
proc fcQGeoSatelliteInfoSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGeoSatelliteInfoSource_virtualbase_event".}
proc fcQGeoSatelliteInfoSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGeoSatelliteInfoSource_virtualbase_eventFilter".}
proc fcQGeoSatelliteInfoSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGeoSatelliteInfoSource_virtualbase_timerEvent".}
proc fcQGeoSatelliteInfoSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGeoSatelliteInfoSource_virtualbase_childEvent".}
proc fcQGeoSatelliteInfoSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGeoSatelliteInfoSource_virtualbase_customEvent".}
proc fcQGeoSatelliteInfoSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGeoSatelliteInfoSource_virtualbase_connectNotify".}
proc fcQGeoSatelliteInfoSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGeoSatelliteInfoSource_virtualbase_disconnectNotify".}
proc fcQGeoSatelliteInfoSource_protectedbase_sender(self: pointer): pointer {.importc: "QGeoSatelliteInfoSource_protectedbase_sender".}
proc fcQGeoSatelliteInfoSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGeoSatelliteInfoSource_protectedbase_senderSignalIndex".}
proc fcQGeoSatelliteInfoSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGeoSatelliteInfoSource_protectedbase_receivers".}
proc fcQGeoSatelliteInfoSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGeoSatelliteInfoSource_protectedbase_isSignalConnected".}
proc fcQGeoSatelliteInfoSource_new(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQGeoSatelliteInfoSource {.importc: "QGeoSatelliteInfoSource_new".}
proc fcQGeoSatelliteInfoSource_staticMetaObject(): pointer {.importc: "QGeoSatelliteInfoSource_staticMetaObject".}
proc fcQGeoSatelliteInfoSource_delete(self: pointer) {.importc: "QGeoSatelliteInfoSource_delete".}

proc metaObject*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoSatelliteInfoSource_metaObject(self.h))

proc metacast*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, param1: cstring): pointer =
  fcQGeoSatelliteInfoSource_metacast(self.h, param1)

proc metacall*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQGeoSatelliteInfoSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, s: cstring): string =
  let v_ms = fcQGeoSatelliteInfoSource_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, s: cstring): string =
  let v_ms = fcQGeoSatelliteInfoSource_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createDefaultSource*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoSatelliteInfoSource_createDefaultSource(parent.h))

proc createSource*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, sourceName: openArray[char], parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoSatelliteInfoSource_createSource(struct_seaqt_string(data: if len(sourceName) > 0: addr sourceName[0] else: nil, len: csize_t(len(sourceName))), parent.h))

proc createDefaultSource*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, parameters: Table[string,gen_qvariant_types.QVariant], parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k, parameters_v in parameters:
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoSatelliteInfoSource_createDefaultSource2(struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),), parent.h))

proc createSource*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, sourceName: openArray[char], parameters: Table[string,gen_qvariant_types.QVariant], parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k, parameters_v in parameters:
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoSatelliteInfoSource_createSource2(struct_seaqt_string(data: if len(sourceName) > 0: addr sourceName[0] else: nil, len: csize_t(len(sourceName))), struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),), parent.h))

proc availableSources*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): seq[string] =
  var v_ma = fcQGeoSatelliteInfoSource_availableSources()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc sourceName*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): string =
  let v_ms = fcQGeoSatelliteInfoSource_sourceName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUpdateInterval*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, msec: cint): void =
  fcQGeoSatelliteInfoSource_setUpdateInterval(self.h, msec)

proc updateInterval*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): cint =
  fcQGeoSatelliteInfoSource_updateInterval(self.h)

proc minimumUpdateInterval*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): cint =
  fcQGeoSatelliteInfoSource_minimumUpdateInterval(self.h)

proc error*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): cint =
  cint(fcQGeoSatelliteInfoSource_error(self.h))

proc startUpdates*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): void =
  fcQGeoSatelliteInfoSource_startUpdates(self.h)

proc stopUpdates*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): void =
  fcQGeoSatelliteInfoSource_stopUpdates(self.h)

proc requestUpdate*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, timeout: cint): void =
  fcQGeoSatelliteInfoSource_requestUpdate(self.h, timeout)

proc satellitesInViewUpdated*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, satellites: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo]): void =
  var satellites_CArray = newSeq[pointer](len(satellites))
  for i in 0..<len(satellites):
    satellites_CArray[i] = satellites[i].h

  fcQGeoSatelliteInfoSource_satellitesInViewUpdated(self.h, struct_seaqt_array(len: csize_t(len(satellites)), data: if len(satellites) == 0: nil else: addr(satellites_CArray[0])))

type QGeoSatelliteInfoSourcesatellitesInViewUpdatedSlot* = proc(satellites: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo])
proc fcQGeoSatelliteInfoSource_slot_callback_satellitesInViewUpdated(slot: int, satellites: struct_seaqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QGeoSatelliteInfoSourcesatellitesInViewUpdatedSlot](cast[pointer](slot))
  var vsatellites_ma = satellites
  var vsatellitesx_ret = newSeq[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo](int(vsatellites_ma.len))
  let vsatellites_outCast = cast[ptr UncheckedArray[pointer]](vsatellites_ma.data)
  for i in 0 ..< vsatellites_ma.len:
    vsatellitesx_ret[i] = gen_qgeosatelliteinfo_types.QGeoSatelliteInfo(h: vsatellites_outCast[i])
  c_free(vsatellites_ma.data)
  let slotval1 = vsatellitesx_ret

  nimfunc[](slotval1)

proc fcQGeoSatelliteInfoSource_slot_callback_satellitesInViewUpdated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoSatelliteInfoSourcesatellitesInViewUpdatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSatellitesInViewUpdated*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, slot: QGeoSatelliteInfoSourcesatellitesInViewUpdatedSlot) =
  var tmp = new QGeoSatelliteInfoSourcesatellitesInViewUpdatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoSatelliteInfoSource_connect_satellitesInViewUpdated(self.h, cast[int](addr tmp[]), fcQGeoSatelliteInfoSource_slot_callback_satellitesInViewUpdated, fcQGeoSatelliteInfoSource_slot_callback_satellitesInViewUpdated_release)

proc satellitesInUseUpdated*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, satellites: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo]): void =
  var satellites_CArray = newSeq[pointer](len(satellites))
  for i in 0..<len(satellites):
    satellites_CArray[i] = satellites[i].h

  fcQGeoSatelliteInfoSource_satellitesInUseUpdated(self.h, struct_seaqt_array(len: csize_t(len(satellites)), data: if len(satellites) == 0: nil else: addr(satellites_CArray[0])))

type QGeoSatelliteInfoSourcesatellitesInUseUpdatedSlot* = proc(satellites: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo])
proc fcQGeoSatelliteInfoSource_slot_callback_satellitesInUseUpdated(slot: int, satellites: struct_seaqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QGeoSatelliteInfoSourcesatellitesInUseUpdatedSlot](cast[pointer](slot))
  var vsatellites_ma = satellites
  var vsatellitesx_ret = newSeq[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo](int(vsatellites_ma.len))
  let vsatellites_outCast = cast[ptr UncheckedArray[pointer]](vsatellites_ma.data)
  for i in 0 ..< vsatellites_ma.len:
    vsatellitesx_ret[i] = gen_qgeosatelliteinfo_types.QGeoSatelliteInfo(h: vsatellites_outCast[i])
  c_free(vsatellites_ma.data)
  let slotval1 = vsatellitesx_ret

  nimfunc[](slotval1)

proc fcQGeoSatelliteInfoSource_slot_callback_satellitesInUseUpdated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoSatelliteInfoSourcesatellitesInUseUpdatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSatellitesInUseUpdated*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, slot: QGeoSatelliteInfoSourcesatellitesInUseUpdatedSlot) =
  var tmp = new QGeoSatelliteInfoSourcesatellitesInUseUpdatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoSatelliteInfoSource_connect_satellitesInUseUpdated(self.h, cast[int](addr tmp[]), fcQGeoSatelliteInfoSource_slot_callback_satellitesInUseUpdated, fcQGeoSatelliteInfoSource_slot_callback_satellitesInUseUpdated_release)

proc requestTimeout*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): void =
  fcQGeoSatelliteInfoSource_requestTimeout(self.h)

type QGeoSatelliteInfoSourcerequestTimeoutSlot* = proc()
proc fcQGeoSatelliteInfoSource_slot_callback_requestTimeout(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGeoSatelliteInfoSourcerequestTimeoutSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQGeoSatelliteInfoSource_slot_callback_requestTimeout_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoSatelliteInfoSourcerequestTimeoutSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRequestTimeout*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, slot: QGeoSatelliteInfoSourcerequestTimeoutSlot) =
  var tmp = new QGeoSatelliteInfoSourcerequestTimeoutSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoSatelliteInfoSource_connect_requestTimeout(self.h, cast[int](addr tmp[]), fcQGeoSatelliteInfoSource_slot_callback_requestTimeout, fcQGeoSatelliteInfoSource_slot_callback_requestTimeout_release)

proc error*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, param1: cint): void =
  fcQGeoSatelliteInfoSource_errorWithQGeoSatelliteInfoSourceError(self.h, cint(param1))

type QGeoSatelliteInfoSourceerrorWithQGeoSatelliteInfoSourceErrorSlot* = proc(param1: cint)
proc fcQGeoSatelliteInfoSource_slot_callback_errorWithQGeoSatelliteInfoSourceError(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGeoSatelliteInfoSourceerrorWithQGeoSatelliteInfoSourceErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc fcQGeoSatelliteInfoSource_slot_callback_errorWithQGeoSatelliteInfoSourceError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGeoSatelliteInfoSourceerrorWithQGeoSatelliteInfoSourceErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, slot: QGeoSatelliteInfoSourceerrorWithQGeoSatelliteInfoSourceErrorSlot) =
  var tmp = new QGeoSatelliteInfoSourceerrorWithQGeoSatelliteInfoSourceErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGeoSatelliteInfoSource_connect_errorWithQGeoSatelliteInfoSourceError(self.h, cast[int](addr tmp[]), fcQGeoSatelliteInfoSource_slot_callback_errorWithQGeoSatelliteInfoSourceError, fcQGeoSatelliteInfoSource_slot_callback_errorWithQGeoSatelliteInfoSourceError_release)

proc tr*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, s: cstring, c: cstring): string =
  let v_ms = fcQGeoSatelliteInfoSource_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGeoSatelliteInfoSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, s: cstring, c: cstring): string =
  let v_ms = fcQGeoSatelliteInfoSource_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGeoSatelliteInfoSource_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGeoSatelliteInfoSourcemetaObjectProc* = proc(self: QGeoSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcemetacastProc* = proc(self: QGeoSatelliteInfoSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcemetacallProc* = proc(self: QGeoSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcesetUpdateIntervalProc* = proc(self: QGeoSatelliteInfoSource, msec: cint): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourceminimumUpdateIntervalProc* = proc(self: QGeoSatelliteInfoSource): cint {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourceerrorProc* = proc(self: QGeoSatelliteInfoSource): cint {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcestartUpdatesProc* = proc(self: QGeoSatelliteInfoSource): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcestopUpdatesProc* = proc(self: QGeoSatelliteInfoSource): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcerequestUpdateProc* = proc(self: QGeoSatelliteInfoSource, timeout: cint): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourceeventProc* = proc(self: QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourceeventFilterProc* = proc(self: QGeoSatelliteInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcetimerEventProc* = proc(self: QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcechildEventProc* = proc(self: QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcecustomEventProc* = proc(self: QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourceconnectNotifyProc* = proc(self: QGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourcedisconnectNotifyProc* = proc(self: QGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGeoSatelliteInfoSourceVTable* = object
  vtbl: cQGeoSatelliteInfoSourceVTable
  metaObject*: QGeoSatelliteInfoSourcemetaObjectProc
  metacast*: QGeoSatelliteInfoSourcemetacastProc
  metacall*: QGeoSatelliteInfoSourcemetacallProc
  setUpdateInterval*: QGeoSatelliteInfoSourcesetUpdateIntervalProc
  minimumUpdateInterval*: QGeoSatelliteInfoSourceminimumUpdateIntervalProc
  error*: QGeoSatelliteInfoSourceerrorProc
  startUpdates*: QGeoSatelliteInfoSourcestartUpdatesProc
  stopUpdates*: QGeoSatelliteInfoSourcestopUpdatesProc
  requestUpdate*: QGeoSatelliteInfoSourcerequestUpdateProc
  event*: QGeoSatelliteInfoSourceeventProc
  eventFilter*: QGeoSatelliteInfoSourceeventFilterProc
  timerEvent*: QGeoSatelliteInfoSourcetimerEventProc
  childEvent*: QGeoSatelliteInfoSourcechildEventProc
  customEvent*: QGeoSatelliteInfoSourcecustomEventProc
  connectNotify*: QGeoSatelliteInfoSourceconnectNotifyProc
  disconnectNotify*: QGeoSatelliteInfoSourcedisconnectNotifyProc

proc QGeoSatelliteInfoSourcemetaObject*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoSatelliteInfoSource_virtualbase_metaObject(self.h))

proc QGeoSatelliteInfoSourcemetacast*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, param1: cstring): pointer =
  fcQGeoSatelliteInfoSource_virtualbase_metacast(self.h, param1)

proc QGeoSatelliteInfoSourcemetacall*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQGeoSatelliteInfoSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGeoSatelliteInfoSourcesetUpdateInterval*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, msec: cint): void =
  fcQGeoSatelliteInfoSource_virtualbase_setUpdateInterval(self.h, msec)

proc QGeoSatelliteInfoSourceevent*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQGeoSatelliteInfoSource_virtualbase_event(self.h, event.h)

proc QGeoSatelliteInfoSourceeventFilter*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGeoSatelliteInfoSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QGeoSatelliteInfoSourcetimerEvent*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGeoSatelliteInfoSource_virtualbase_timerEvent(self.h, event.h)

proc QGeoSatelliteInfoSourcechildEvent*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGeoSatelliteInfoSource_virtualbase_childEvent(self.h, event.h)

proc QGeoSatelliteInfoSourcecustomEvent*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): void =
  fcQGeoSatelliteInfoSource_virtualbase_customEvent(self.h, event.h)

proc QGeoSatelliteInfoSourceconnectNotify*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGeoSatelliteInfoSource_virtualbase_connectNotify(self.h, signal.h)

proc QGeoSatelliteInfoSourcedisconnectNotify*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGeoSatelliteInfoSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQGeoSatelliteInfoSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQGeoSatelliteInfoSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGeoSatelliteInfoSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGeoSatelliteInfoSource_vtable_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = msec
  vtbl[].setUpdateInterval(self, slotval1)

proc fcQGeoSatelliteInfoSource_vtable_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  var virtualReturn = vtbl[].minimumUpdateInterval(self)
  virtualReturn

proc fcQGeoSatelliteInfoSource_vtable_callback_error(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  var virtualReturn = vtbl[].error(self)
  cint(virtualReturn)

proc fcQGeoSatelliteInfoSource_vtable_callback_startUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  vtbl[].startUpdates(self)

proc fcQGeoSatelliteInfoSource_vtable_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  vtbl[].stopUpdates(self)

proc fcQGeoSatelliteInfoSource_vtable_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = timeout
  vtbl[].requestUpdate(self, slotval1)

proc fcQGeoSatelliteInfoSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGeoSatelliteInfoSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGeoSatelliteInfoSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQGeoSatelliteInfoSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQGeoSatelliteInfoSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQGeoSatelliteInfoSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQGeoSatelliteInfoSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
  let self = QGeoSatelliteInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGeoSatelliteInfoSource* {.inheritable.} = ref object of QGeoSatelliteInfoSource
  vtbl*: cQGeoSatelliteInfoSourceVTable

method metaObject*(self: VirtualQGeoSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGeoSatelliteInfoSourcemetaObject(self[])
method metacast*(self: VirtualQGeoSatelliteInfoSource, param1: cstring): pointer {.base.} =
  QGeoSatelliteInfoSourcemetacast(self[], param1)
method metacall*(self: VirtualQGeoSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGeoSatelliteInfoSourcemetacall(self[], param1, param2, param3)
method setUpdateInterval*(self: VirtualQGeoSatelliteInfoSource, msec: cint): void {.base.} =
  QGeoSatelliteInfoSourcesetUpdateInterval(self[], msec)
method minimumUpdateInterval*(self: VirtualQGeoSatelliteInfoSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoSatelliteInfoSource.minimumUpdateInterval")
method error*(self: VirtualQGeoSatelliteInfoSource): cint {.base.} =
  raiseAssert("missing implementation of QGeoSatelliteInfoSource.error")
method startUpdates*(self: VirtualQGeoSatelliteInfoSource): void {.base.} =
  raiseAssert("missing implementation of QGeoSatelliteInfoSource.startUpdates")
method stopUpdates*(self: VirtualQGeoSatelliteInfoSource): void {.base.} =
  raiseAssert("missing implementation of QGeoSatelliteInfoSource.stopUpdates")
method requestUpdate*(self: VirtualQGeoSatelliteInfoSource, timeout: cint): void {.base.} =
  raiseAssert("missing implementation of QGeoSatelliteInfoSource.requestUpdate")
method event*(self: VirtualQGeoSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGeoSatelliteInfoSourceevent(self[], event)
method eventFilter*(self: VirtualQGeoSatelliteInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGeoSatelliteInfoSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQGeoSatelliteInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGeoSatelliteInfoSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQGeoSatelliteInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGeoSatelliteInfoSourcechildEvent(self[], event)
method customEvent*(self: VirtualQGeoSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGeoSatelliteInfoSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGeoSatelliteInfoSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGeoSatelliteInfoSourcedisconnectNotify(self[], signal)

proc fcQGeoSatelliteInfoSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQGeoSatelliteInfoSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGeoSatelliteInfoSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGeoSatelliteInfoSource_method_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = msec
  inst.setUpdateInterval(slotval1)

proc fcQGeoSatelliteInfoSource_method_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  var virtualReturn = inst.minimumUpdateInterval()
  virtualReturn

proc fcQGeoSatelliteInfoSource_method_callback_error(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  var virtualReturn = inst.error()
  cint(virtualReturn)

proc fcQGeoSatelliteInfoSource_method_callback_startUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  inst.startUpdates()

proc fcQGeoSatelliteInfoSource_method_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  inst.stopUpdates()

proc fcQGeoSatelliteInfoSource_method_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = timeout
  inst.requestUpdate(slotval1)

proc fcQGeoSatelliteInfoSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGeoSatelliteInfoSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGeoSatelliteInfoSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQGeoSatelliteInfoSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQGeoSatelliteInfoSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQGeoSatelliteInfoSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQGeoSatelliteInfoSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGeoSatelliteInfoSource](fcQGeoSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGeoSatelliteInfoSource_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): cint =
  fcQGeoSatelliteInfoSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, signal: cstring): cint =
  fcQGeoSatelliteInfoSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGeoSatelliteInfoSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGeoSatelliteInfoSourceVTable = nil): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  let vtbl = if vtbl == nil: new QGeoSatelliteInfoSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGeoSatelliteInfoSourceVTable](fcQGeoSatelliteInfoSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGeoSatelliteInfoSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGeoSatelliteInfoSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGeoSatelliteInfoSource_vtable_callback_metacall
  if not isNil(vtbl[].setUpdateInterval):
    vtbl[].vtbl.setUpdateInterval = fcQGeoSatelliteInfoSource_vtable_callback_setUpdateInterval
  if not isNil(vtbl[].minimumUpdateInterval):
    vtbl[].vtbl.minimumUpdateInterval = fcQGeoSatelliteInfoSource_vtable_callback_minimumUpdateInterval
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQGeoSatelliteInfoSource_vtable_callback_error
  if not isNil(vtbl[].startUpdates):
    vtbl[].vtbl.startUpdates = fcQGeoSatelliteInfoSource_vtable_callback_startUpdates
  if not isNil(vtbl[].stopUpdates):
    vtbl[].vtbl.stopUpdates = fcQGeoSatelliteInfoSource_vtable_callback_stopUpdates
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQGeoSatelliteInfoSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGeoSatelliteInfoSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGeoSatelliteInfoSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGeoSatelliteInfoSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGeoSatelliteInfoSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGeoSatelliteInfoSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGeoSatelliteInfoSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGeoSatelliteInfoSource_vtable_callback_disconnectNotify
  let tmp = gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoSatelliteInfoSource_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQGeoSatelliteInfoSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQGeoSatelliteInfoSource_mvtbl = cQGeoSatelliteInfoSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGeoSatelliteInfoSource()[])](self.fcQGeoSatelliteInfoSource_vdata()[])
    inst[].h = nil,

  metaObject: fcQGeoSatelliteInfoSource_method_callback_metaObject,
  metacast: fcQGeoSatelliteInfoSource_method_callback_metacast,
  metacall: fcQGeoSatelliteInfoSource_method_callback_metacall,
  setUpdateInterval: fcQGeoSatelliteInfoSource_method_callback_setUpdateInterval,
  minimumUpdateInterval: fcQGeoSatelliteInfoSource_method_callback_minimumUpdateInterval,
  error: fcQGeoSatelliteInfoSource_method_callback_error,
  startUpdates: fcQGeoSatelliteInfoSource_method_callback_startUpdates,
  stopUpdates: fcQGeoSatelliteInfoSource_method_callback_stopUpdates,
  requestUpdate: fcQGeoSatelliteInfoSource_method_callback_requestUpdate,
  event: fcQGeoSatelliteInfoSource_method_callback_event,
  eventFilter: fcQGeoSatelliteInfoSource_method_callback_eventFilter,
  timerEvent: fcQGeoSatelliteInfoSource_method_callback_timerEvent,
  childEvent: fcQGeoSatelliteInfoSource_method_callback_childEvent,
  customEvent: fcQGeoSatelliteInfoSource_method_callback_customEvent,
  connectNotify: fcQGeoSatelliteInfoSource_method_callback_connectNotify,
  disconnectNotify: fcQGeoSatelliteInfoSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGeoSatelliteInfoSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGeoSatelliteInfoSource_new(addr(cQGeoSatelliteInfoSource_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQGeoSatelliteInfoSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGeoSatelliteInfoSource_staticMetaObject())
proc delete*(self: gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource) =
  fcQGeoSatelliteInfoSource_delete(self.h)
