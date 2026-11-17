import ./qtpositioning_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_qnmeasatelliteinfosource.cpp", QtPositioningCFlags).}


type QNmeaSatelliteInfoSourceUpdateModeEnum* = distinct cint
template RealTimeMode*(_: type QNmeaSatelliteInfoSourceUpdateModeEnum): untyped = 1
template SimulationMode*(_: type QNmeaSatelliteInfoSourceUpdateModeEnum): untyped = 2


type QNmeaSatelliteInfoSourceSatelliteInfoParseStatusEnum* = distinct cint
template NotParsed*(_: type QNmeaSatelliteInfoSourceSatelliteInfoParseStatusEnum): untyped = 0
template PartiallyParsed*(_: type QNmeaSatelliteInfoSourceSatelliteInfoParseStatusEnum): untyped = 1
template FullyParsed*(_: type QNmeaSatelliteInfoSourceSatelliteInfoParseStatusEnum): untyped = 2


import ./gen_qnmeasatelliteinfosource_types
export gen_qnmeasatelliteinfosource_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeosatelliteinfo_types,
  ./gen_qgeosatelliteinfosource
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qgeosatelliteinfo_types,
  gen_qgeosatelliteinfosource

type cQNmeaSatelliteInfoSource*{.exportc: "QNmeaSatelliteInfoSource", incompleteStruct.} = object

proc fcQNmeaSatelliteInfoSource_metaObject(self: pointer): pointer {.importc: "QNmeaSatelliteInfoSource_metaObject".}
proc fcQNmeaSatelliteInfoSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QNmeaSatelliteInfoSource_metacast".}
proc fcQNmeaSatelliteInfoSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNmeaSatelliteInfoSource_metacall".}
proc fcQNmeaSatelliteInfoSource_tr(s: cstring): struct_seaqt_string {.importc: "QNmeaSatelliteInfoSource_tr".}
proc fcQNmeaSatelliteInfoSource_updateMode(self: pointer): cint {.importc: "QNmeaSatelliteInfoSource_updateMode".}
proc fcQNmeaSatelliteInfoSource_setDevice(self: pointer, source: pointer): void {.importc: "QNmeaSatelliteInfoSource_setDevice".}
proc fcQNmeaSatelliteInfoSource_device(self: pointer): pointer {.importc: "QNmeaSatelliteInfoSource_device".}
proc fcQNmeaSatelliteInfoSource_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QNmeaSatelliteInfoSource_setUpdateInterval".}
proc fcQNmeaSatelliteInfoSource_minimumUpdateInterval(self: pointer): cint {.importc: "QNmeaSatelliteInfoSource_minimumUpdateInterval".}
proc fcQNmeaSatelliteInfoSource_error(self: pointer): cint {.importc: "QNmeaSatelliteInfoSource_error".}
proc fcQNmeaSatelliteInfoSource_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.importc: "QNmeaSatelliteInfoSource_setBackendProperty".}
proc fcQNmeaSatelliteInfoSource_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.importc: "QNmeaSatelliteInfoSource_backendProperty".}
proc fcQNmeaSatelliteInfoSource_startUpdates(self: pointer): void {.importc: "QNmeaSatelliteInfoSource_startUpdates".}
proc fcQNmeaSatelliteInfoSource_stopUpdates(self: pointer): void {.importc: "QNmeaSatelliteInfoSource_stopUpdates".}
proc fcQNmeaSatelliteInfoSource_requestUpdate(self: pointer, timeout: cint): void {.importc: "QNmeaSatelliteInfoSource_requestUpdate".}
proc fcQNmeaSatelliteInfoSource_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QNmeaSatelliteInfoSource_tr2".}
proc fcQNmeaSatelliteInfoSource_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QNmeaSatelliteInfoSource_tr3".}
proc fcQNmeaSatelliteInfoSource_vdata(self: pointer): ptr pointer {.importc: "QNmeaSatelliteInfoSource_vdata".}
proc fvdata_cQNmeaSatelliteInfoSource(self: pointer): pointer {.importc: "vdata_QNmeaSatelliteInfoSource".}

type cQNmeaSatelliteInfoSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setUpdateInterval*: proc(self: pointer, msec: cint): void {.cdecl, raises: [], gcsafe.}
  minimumUpdateInterval*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  error*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setBackendProperty*: proc(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl, raises: [], gcsafe.}
  backendProperty*: proc(self: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  startUpdates*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stopUpdates*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  requestUpdate*: proc(self: pointer, timeout: cint): void {.cdecl, raises: [], gcsafe.}
  parseSatellitesInUseFromNmea*: proc(self: pointer, data: cstring, size: cint, pnrsInUse: struct_seaqt_array): cint {.cdecl, raises: [], gcsafe.}
  parseSatelliteInfoFromNmea*: proc(self: pointer, data: cstring, size: cint, infos: struct_seaqt_array, system: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNmeaSatelliteInfoSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QNmeaSatelliteInfoSource_virtualbase_metaObject".}
proc fcQNmeaSatelliteInfoSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNmeaSatelliteInfoSource_virtualbase_metacast".}
proc fcQNmeaSatelliteInfoSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNmeaSatelliteInfoSource_virtualbase_metacall".}
proc fcQNmeaSatelliteInfoSource_virtualbase_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_setUpdateInterval".}
proc fcQNmeaSatelliteInfoSource_virtualbase_minimumUpdateInterval(self: pointer): cint {.importc: "QNmeaSatelliteInfoSource_virtualbase_minimumUpdateInterval".}
proc fcQNmeaSatelliteInfoSource_virtualbase_error(self: pointer): cint {.importc: "QNmeaSatelliteInfoSource_virtualbase_error".}
proc fcQNmeaSatelliteInfoSource_virtualbase_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.importc: "QNmeaSatelliteInfoSource_virtualbase_setBackendProperty".}
proc fcQNmeaSatelliteInfoSource_virtualbase_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.importc: "QNmeaSatelliteInfoSource_virtualbase_backendProperty".}
proc fcQNmeaSatelliteInfoSource_virtualbase_startUpdates(self: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_startUpdates".}
proc fcQNmeaSatelliteInfoSource_virtualbase_stopUpdates(self: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_stopUpdates".}
proc fcQNmeaSatelliteInfoSource_virtualbase_requestUpdate(self: pointer, timeout: cint): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_requestUpdate".}
proc fcQNmeaSatelliteInfoSource_virtualbase_parseSatellitesInUseFromNmea(self: pointer, data: cstring, size: cint, pnrsInUse: struct_seaqt_array): cint {.importc: "QNmeaSatelliteInfoSource_virtualbase_parseSatellitesInUseFromNmea".}
proc fcQNmeaSatelliteInfoSource_virtualbase_parseSatelliteInfoFromNmea(self: pointer, data: cstring, size: cint, infos: struct_seaqt_array, system: ptr cint): cint {.importc: "QNmeaSatelliteInfoSource_virtualbase_parseSatelliteInfoFromNmea".}
proc fcQNmeaSatelliteInfoSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNmeaSatelliteInfoSource_virtualbase_event".}
proc fcQNmeaSatelliteInfoSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNmeaSatelliteInfoSource_virtualbase_eventFilter".}
proc fcQNmeaSatelliteInfoSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_timerEvent".}
proc fcQNmeaSatelliteInfoSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_childEvent".}
proc fcQNmeaSatelliteInfoSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_customEvent".}
proc fcQNmeaSatelliteInfoSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_connectNotify".}
proc fcQNmeaSatelliteInfoSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNmeaSatelliteInfoSource_virtualbase_disconnectNotify".}
proc fcQNmeaSatelliteInfoSource_protectedbase_setError(self: pointer, satelliteError: cint): void {.importc: "QNmeaSatelliteInfoSource_protectedbase_setError".}
proc fcQNmeaSatelliteInfoSource_protectedbase_sender(self: pointer): pointer {.importc: "QNmeaSatelliteInfoSource_protectedbase_sender".}
proc fcQNmeaSatelliteInfoSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNmeaSatelliteInfoSource_protectedbase_senderSignalIndex".}
proc fcQNmeaSatelliteInfoSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNmeaSatelliteInfoSource_protectedbase_receivers".}
proc fcQNmeaSatelliteInfoSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNmeaSatelliteInfoSource_protectedbase_isSignalConnected".}
proc fcQNmeaSatelliteInfoSource_new(vtbl: pointer, vdata: csize_t, mode: cint): ptr cQNmeaSatelliteInfoSource {.importc: "QNmeaSatelliteInfoSource_new".}
proc fcQNmeaSatelliteInfoSource_new2(vtbl: pointer, vdata: csize_t, mode: cint, parent: pointer): ptr cQNmeaSatelliteInfoSource {.importc: "QNmeaSatelliteInfoSource_new2".}
proc fcQNmeaSatelliteInfoSource_staticMetaObject(): pointer {.importc: "QNmeaSatelliteInfoSource_staticMetaObject".}
proc fcQNmeaSatelliteInfoSource_delete(self: pointer) {.importc: "QNmeaSatelliteInfoSource_delete".}

proc metaObject*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNmeaSatelliteInfoSource_metaObject(self.h))

proc metacast*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, param1: cstring): pointer =
  fcQNmeaSatelliteInfoSource_metacast(self.h, param1)

proc metacall*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQNmeaSatelliteInfoSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, s: cstring): string =
  let v_ms = fcQNmeaSatelliteInfoSource_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc updateMode*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): cint =
  cint(fcQNmeaSatelliteInfoSource_updateMode(self.h))

proc setDevice*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, source: gen_qiodevice_types.QIODevice): void =
  fcQNmeaSatelliteInfoSource_setDevice(self.h, source.h)

proc device*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNmeaSatelliteInfoSource_device(self.h))

proc setUpdateInterval*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, msec: cint): void =
  fcQNmeaSatelliteInfoSource_setUpdateInterval(self.h, msec)

proc minimumUpdateInterval*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): cint =
  fcQNmeaSatelliteInfoSource_minimumUpdateInterval(self.h)

proc error*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): cint =
  cint(fcQNmeaSatelliteInfoSource_error(self.h))

proc setBackendProperty*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQNmeaSatelliteInfoSource_setBackendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc backendProperty*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNmeaSatelliteInfoSource_backendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc startUpdates*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): void =
  fcQNmeaSatelliteInfoSource_startUpdates(self.h)

proc stopUpdates*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): void =
  fcQNmeaSatelliteInfoSource_stopUpdates(self.h)

proc requestUpdate*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, timeout: cint): void =
  fcQNmeaSatelliteInfoSource_requestUpdate(self.h, timeout)

proc tr*(_: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, s: cstring, c: cstring): string =
  let v_ms = fcQNmeaSatelliteInfoSource_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNmeaSatelliteInfoSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QNmeaSatelliteInfoSourcemetaObjectProc* = proc(self: QNmeaSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcemetacastProc* = proc(self: QNmeaSatelliteInfoSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcemetacallProc* = proc(self: QNmeaSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcesetUpdateIntervalProc* = proc(self: QNmeaSatelliteInfoSource, msec: cint): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceminimumUpdateIntervalProc* = proc(self: QNmeaSatelliteInfoSource): cint {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceerrorProc* = proc(self: QNmeaSatelliteInfoSource): cint {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcesetBackendPropertyProc* = proc(self: QNmeaSatelliteInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcebackendPropertyProc* = proc(self: QNmeaSatelliteInfoSource, name: openArray[char]): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcestartUpdatesProc* = proc(self: QNmeaSatelliteInfoSource): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcestopUpdatesProc* = proc(self: QNmeaSatelliteInfoSource): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcerequestUpdateProc* = proc(self: QNmeaSatelliteInfoSource, timeout: cint): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceparseSatellitesInUseFromNmeaProc* = proc(self: QNmeaSatelliteInfoSource, data: cstring, size: cint, pnrsInUse: openArray[cint]): cint {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceparseSatelliteInfoFromNmeaProc* = proc(self: QNmeaSatelliteInfoSource, data: cstring, size: cint, infos: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo], system: ptr cint): cint {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceeventProc* = proc(self: QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceeventFilterProc* = proc(self: QNmeaSatelliteInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcetimerEventProc* = proc(self: QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcechildEventProc* = proc(self: QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcecustomEventProc* = proc(self: QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceconnectNotifyProc* = proc(self: QNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourcedisconnectNotifyProc* = proc(self: QNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNmeaSatelliteInfoSourceVTable* = object
  vtbl: cQNmeaSatelliteInfoSourceVTable
  metaObject*: QNmeaSatelliteInfoSourcemetaObjectProc
  metacast*: QNmeaSatelliteInfoSourcemetacastProc
  metacall*: QNmeaSatelliteInfoSourcemetacallProc
  setUpdateInterval*: QNmeaSatelliteInfoSourcesetUpdateIntervalProc
  minimumUpdateInterval*: QNmeaSatelliteInfoSourceminimumUpdateIntervalProc
  error*: QNmeaSatelliteInfoSourceerrorProc
  setBackendProperty*: QNmeaSatelliteInfoSourcesetBackendPropertyProc
  backendProperty*: QNmeaSatelliteInfoSourcebackendPropertyProc
  startUpdates*: QNmeaSatelliteInfoSourcestartUpdatesProc
  stopUpdates*: QNmeaSatelliteInfoSourcestopUpdatesProc
  requestUpdate*: QNmeaSatelliteInfoSourcerequestUpdateProc
  parseSatellitesInUseFromNmea*: QNmeaSatelliteInfoSourceparseSatellitesInUseFromNmeaProc
  parseSatelliteInfoFromNmea*: QNmeaSatelliteInfoSourceparseSatelliteInfoFromNmeaProc
  event*: QNmeaSatelliteInfoSourceeventProc
  eventFilter*: QNmeaSatelliteInfoSourceeventFilterProc
  timerEvent*: QNmeaSatelliteInfoSourcetimerEventProc
  childEvent*: QNmeaSatelliteInfoSourcechildEventProc
  customEvent*: QNmeaSatelliteInfoSourcecustomEventProc
  connectNotify*: QNmeaSatelliteInfoSourceconnectNotifyProc
  disconnectNotify*: QNmeaSatelliteInfoSourcedisconnectNotifyProc

proc QNmeaSatelliteInfoSourcemetaObject*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNmeaSatelliteInfoSource_virtualbase_metaObject(self.h))

proc QNmeaSatelliteInfoSourcemetacast*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, param1: cstring): pointer =
  fcQNmeaSatelliteInfoSource_virtualbase_metacast(self.h, param1)

proc QNmeaSatelliteInfoSourcemetacall*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQNmeaSatelliteInfoSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QNmeaSatelliteInfoSourcesetUpdateInterval*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, msec: cint): void =
  fcQNmeaSatelliteInfoSource_virtualbase_setUpdateInterval(self.h, msec)

proc QNmeaSatelliteInfoSourceminimumUpdateInterval*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): cint =
  fcQNmeaSatelliteInfoSource_virtualbase_minimumUpdateInterval(self.h)

proc QNmeaSatelliteInfoSourceerror*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): cint =
  cint(fcQNmeaSatelliteInfoSource_virtualbase_error(self.h))

proc QNmeaSatelliteInfoSourcesetBackendProperty*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQNmeaSatelliteInfoSource_virtualbase_setBackendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc QNmeaSatelliteInfoSourcebackendProperty*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNmeaSatelliteInfoSource_virtualbase_backendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QNmeaSatelliteInfoSourcestartUpdates*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): void =
  fcQNmeaSatelliteInfoSource_virtualbase_startUpdates(self.h)

proc QNmeaSatelliteInfoSourcestopUpdates*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): void =
  fcQNmeaSatelliteInfoSource_virtualbase_stopUpdates(self.h)

proc QNmeaSatelliteInfoSourcerequestUpdate*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, timeout: cint): void =
  fcQNmeaSatelliteInfoSource_virtualbase_requestUpdate(self.h, timeout)

proc QNmeaSatelliteInfoSourceparseSatellitesInUseFromNmea*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, data: cstring, size: cint, pnrsInUse: openArray[cint]): cint =
  var pnrsInUse_CArray = newSeq[cint](len(pnrsInUse))
  for i in 0..<len(pnrsInUse):
    pnrsInUse_CArray[i] = pnrsInUse[i]

  cint(fcQNmeaSatelliteInfoSource_virtualbase_parseSatellitesInUseFromNmea(self.h, data, size, struct_seaqt_array(len: csize_t(len(pnrsInUse)), data: if len(pnrsInUse) == 0: nil else: addr(pnrsInUse_CArray[0]))))

proc QNmeaSatelliteInfoSourceparseSatelliteInfoFromNmea*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, data: cstring, size: cint, infos: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo], system: ptr cint): cint =
  var infos_CArray = newSeq[pointer](len(infos))
  for i in 0..<len(infos):
    infos_CArray[i] = infos[i].h

  cint(fcQNmeaSatelliteInfoSource_virtualbase_parseSatelliteInfoFromNmea(self.h, data, size, struct_seaqt_array(len: csize_t(len(infos)), data: if len(infos) == 0: nil else: addr(infos_CArray[0])), system))

proc QNmeaSatelliteInfoSourceevent*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQNmeaSatelliteInfoSource_virtualbase_event(self.h, event.h)

proc QNmeaSatelliteInfoSourceeventFilter*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNmeaSatelliteInfoSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QNmeaSatelliteInfoSourcetimerEvent*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNmeaSatelliteInfoSource_virtualbase_timerEvent(self.h, event.h)

proc QNmeaSatelliteInfoSourcechildEvent*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNmeaSatelliteInfoSource_virtualbase_childEvent(self.h, event.h)

proc QNmeaSatelliteInfoSourcecustomEvent*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): void =
  fcQNmeaSatelliteInfoSource_virtualbase_customEvent(self.h, event.h)

proc QNmeaSatelliteInfoSourceconnectNotify*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNmeaSatelliteInfoSource_virtualbase_connectNotify(self.h, signal.h)

proc QNmeaSatelliteInfoSourcedisconnectNotify*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNmeaSatelliteInfoSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQNmeaSatelliteInfoSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQNmeaSatelliteInfoSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_vtable_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = msec
  vtbl[].setUpdateInterval(self, slotval1)

proc fcQNmeaSatelliteInfoSource_vtable_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  var virtualReturn = vtbl[].minimumUpdateInterval(self)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_vtable_callback_error(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  var virtualReturn = vtbl[].error(self)
  cint(virtualReturn)

proc fcQNmeaSatelliteInfoSource_vtable_callback_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].setBackendProperty(self, slotval1, slotval2)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_vtable_callback_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].backendProperty(self, slotval1)
  virtualReturn.h

proc fcQNmeaSatelliteInfoSource_vtable_callback_startUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  vtbl[].startUpdates(self)

proc fcQNmeaSatelliteInfoSource_vtable_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  vtbl[].stopUpdates(self)

proc fcQNmeaSatelliteInfoSource_vtable_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = timeout
  vtbl[].requestUpdate(self, slotval1)

proc fcQNmeaSatelliteInfoSource_vtable_callback_parseSatellitesInUseFromNmea(self: pointer, data: cstring, size: cint, pnrsInUse: struct_seaqt_array): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = (data)
  let slotval2 = size
  var vpnrsInUse_ma = pnrsInUse
  var vpnrsInUsex_ret = newSeq[cint](int(vpnrsInUse_ma.len))
  let vpnrsInUse_outCast = cast[ptr UncheckedArray[cint]](vpnrsInUse_ma.data)
  for i in 0 ..< vpnrsInUse_ma.len:
    vpnrsInUsex_ret[i] = vpnrsInUse_outCast[i]
  c_free(vpnrsInUse_ma.data)
  let slotval3 = vpnrsInUsex_ret
  var virtualReturn = vtbl[].parseSatellitesInUseFromNmea(self, slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc fcQNmeaSatelliteInfoSource_vtable_callback_parseSatelliteInfoFromNmea(self: pointer, data: cstring, size: cint, infos: struct_seaqt_array, system: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = (data)
  let slotval2 = size
  var vinfos_ma = infos
  var vinfosx_ret = newSeq[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo](int(vinfos_ma.len))
  let vinfos_outCast = cast[ptr UncheckedArray[pointer]](vinfos_ma.data)
  for i in 0 ..< vinfos_ma.len:
    vinfosx_ret[i] = gen_qgeosatelliteinfo_types.QGeoSatelliteInfo(h: vinfos_outCast[i])
  c_free(vinfos_ma.data)
  let slotval3 = vinfosx_ret
  let slotval4 = system
  var virtualReturn = vtbl[].parseSatelliteInfoFromNmea(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc fcQNmeaSatelliteInfoSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQNmeaSatelliteInfoSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQNmeaSatelliteInfoSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQNmeaSatelliteInfoSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQNmeaSatelliteInfoSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let self = QNmeaSatelliteInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQNmeaSatelliteInfoSource* {.inheritable.} = ref object of QNmeaSatelliteInfoSource
  vtbl*: cQNmeaSatelliteInfoSourceVTable

method metaObject*(self: VirtualQNmeaSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QNmeaSatelliteInfoSourcemetaObject(self[])
method metacast*(self: VirtualQNmeaSatelliteInfoSource, param1: cstring): pointer {.base.} =
  QNmeaSatelliteInfoSourcemetacast(self[], param1)
method metacall*(self: VirtualQNmeaSatelliteInfoSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QNmeaSatelliteInfoSourcemetacall(self[], param1, param2, param3)
method setUpdateInterval*(self: VirtualQNmeaSatelliteInfoSource, msec: cint): void {.base.} =
  QNmeaSatelliteInfoSourcesetUpdateInterval(self[], msec)
method minimumUpdateInterval*(self: VirtualQNmeaSatelliteInfoSource): cint {.base.} =
  QNmeaSatelliteInfoSourceminimumUpdateInterval(self[])
method error*(self: VirtualQNmeaSatelliteInfoSource): cint {.base.} =
  QNmeaSatelliteInfoSourceerror(self[])
method setBackendProperty*(self: VirtualQNmeaSatelliteInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool {.base.} =
  QNmeaSatelliteInfoSourcesetBackendProperty(self[], name, value)
method backendProperty*(self: VirtualQNmeaSatelliteInfoSource, name: openArray[char]): gen_qvariant_types.QVariant {.base.} =
  QNmeaSatelliteInfoSourcebackendProperty(self[], name)
method startUpdates*(self: VirtualQNmeaSatelliteInfoSource): void {.base.} =
  QNmeaSatelliteInfoSourcestartUpdates(self[])
method stopUpdates*(self: VirtualQNmeaSatelliteInfoSource): void {.base.} =
  QNmeaSatelliteInfoSourcestopUpdates(self[])
method requestUpdate*(self: VirtualQNmeaSatelliteInfoSource, timeout: cint): void {.base.} =
  QNmeaSatelliteInfoSourcerequestUpdate(self[], timeout)
method parseSatellitesInUseFromNmea*(self: VirtualQNmeaSatelliteInfoSource, data: cstring, size: cint, pnrsInUse: openArray[cint]): cint {.base.} =
  QNmeaSatelliteInfoSourceparseSatellitesInUseFromNmea(self[], data, size, pnrsInUse)
method parseSatelliteInfoFromNmea*(self: VirtualQNmeaSatelliteInfoSource, data: cstring, size: cint, infos: openArray[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo], system: ptr cint): cint {.base.} =
  QNmeaSatelliteInfoSourceparseSatelliteInfoFromNmea(self[], data, size, infos, system)
method event*(self: VirtualQNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNmeaSatelliteInfoSourceevent(self[], event)
method eventFilter*(self: VirtualQNmeaSatelliteInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNmeaSatelliteInfoSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QNmeaSatelliteInfoSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QNmeaSatelliteInfoSourcechildEvent(self[], event)
method customEvent*(self: VirtualQNmeaSatelliteInfoSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QNmeaSatelliteInfoSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNmeaSatelliteInfoSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNmeaSatelliteInfoSourcedisconnectNotify(self[], signal)

proc fcQNmeaSatelliteInfoSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQNmeaSatelliteInfoSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_method_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = msec
  inst.setUpdateInterval(slotval1)

proc fcQNmeaSatelliteInfoSource_method_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  var virtualReturn = inst.minimumUpdateInterval()
  virtualReturn

proc fcQNmeaSatelliteInfoSource_method_callback_error(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  var virtualReturn = inst.error()
  cint(virtualReturn)

proc fcQNmeaSatelliteInfoSource_method_callback_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = inst.setBackendProperty(slotval1, slotval2)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_method_callback_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.backendProperty(slotval1)
  virtualReturn.h

proc fcQNmeaSatelliteInfoSource_method_callback_startUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  inst.startUpdates()

proc fcQNmeaSatelliteInfoSource_method_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  inst.stopUpdates()

proc fcQNmeaSatelliteInfoSource_method_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = timeout
  inst.requestUpdate(slotval1)

proc fcQNmeaSatelliteInfoSource_method_callback_parseSatellitesInUseFromNmea(self: pointer, data: cstring, size: cint, pnrsInUse: struct_seaqt_array): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = size
  var vpnrsInUse_ma = pnrsInUse
  var vpnrsInUsex_ret = newSeq[cint](int(vpnrsInUse_ma.len))
  let vpnrsInUse_outCast = cast[ptr UncheckedArray[cint]](vpnrsInUse_ma.data)
  for i in 0 ..< vpnrsInUse_ma.len:
    vpnrsInUsex_ret[i] = vpnrsInUse_outCast[i]
  c_free(vpnrsInUse_ma.data)
  let slotval3 = vpnrsInUsex_ret
  var virtualReturn = inst.parseSatellitesInUseFromNmea(slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc fcQNmeaSatelliteInfoSource_method_callback_parseSatelliteInfoFromNmea(self: pointer, data: cstring, size: cint, infos: struct_seaqt_array, system: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = size
  var vinfos_ma = infos
  var vinfosx_ret = newSeq[gen_qgeosatelliteinfo_types.QGeoSatelliteInfo](int(vinfos_ma.len))
  let vinfos_outCast = cast[ptr UncheckedArray[pointer]](vinfos_ma.data)
  for i in 0 ..< vinfos_ma.len:
    vinfosx_ret[i] = gen_qgeosatelliteinfo_types.QGeoSatelliteInfo(h: vinfos_outCast[i])
  c_free(vinfos_ma.data)
  let slotval3 = vinfosx_ret
  let slotval4 = system
  var virtualReturn = inst.parseSatelliteInfoFromNmea(slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc fcQNmeaSatelliteInfoSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQNmeaSatelliteInfoSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQNmeaSatelliteInfoSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQNmeaSatelliteInfoSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQNmeaSatelliteInfoSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQNmeaSatelliteInfoSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaSatelliteInfoSource](fcQNmeaSatelliteInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc setError*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, satelliteError: cint): void =
  fcQNmeaSatelliteInfoSource_protectedbase_setError(self.h, cint(satelliteError))

proc sender*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNmeaSatelliteInfoSource_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): cint =
  fcQNmeaSatelliteInfoSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, signal: cstring): cint =
  fcQNmeaSatelliteInfoSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNmeaSatelliteInfoSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource,
    mode: cint,
    vtbl: ref QNmeaSatelliteInfoSourceVTable = nil): gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource =
  let vtbl = if vtbl == nil: new QNmeaSatelliteInfoSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNmeaSatelliteInfoSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNmeaSatelliteInfoSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNmeaSatelliteInfoSource_vtable_callback_metacall
  if not isNil(vtbl[].setUpdateInterval):
    vtbl[].vtbl.setUpdateInterval = fcQNmeaSatelliteInfoSource_vtable_callback_setUpdateInterval
  if not isNil(vtbl[].minimumUpdateInterval):
    vtbl[].vtbl.minimumUpdateInterval = fcQNmeaSatelliteInfoSource_vtable_callback_minimumUpdateInterval
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQNmeaSatelliteInfoSource_vtable_callback_error
  if not isNil(vtbl[].setBackendProperty):
    vtbl[].vtbl.setBackendProperty = fcQNmeaSatelliteInfoSource_vtable_callback_setBackendProperty
  if not isNil(vtbl[].backendProperty):
    vtbl[].vtbl.backendProperty = fcQNmeaSatelliteInfoSource_vtable_callback_backendProperty
  if not isNil(vtbl[].startUpdates):
    vtbl[].vtbl.startUpdates = fcQNmeaSatelliteInfoSource_vtable_callback_startUpdates
  if not isNil(vtbl[].stopUpdates):
    vtbl[].vtbl.stopUpdates = fcQNmeaSatelliteInfoSource_vtable_callback_stopUpdates
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQNmeaSatelliteInfoSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].parseSatellitesInUseFromNmea):
    vtbl[].vtbl.parseSatellitesInUseFromNmea = fcQNmeaSatelliteInfoSource_vtable_callback_parseSatellitesInUseFromNmea
  if not isNil(vtbl[].parseSatelliteInfoFromNmea):
    vtbl[].vtbl.parseSatelliteInfoFromNmea = fcQNmeaSatelliteInfoSource_vtable_callback_parseSatelliteInfoFromNmea
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNmeaSatelliteInfoSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNmeaSatelliteInfoSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNmeaSatelliteInfoSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNmeaSatelliteInfoSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNmeaSatelliteInfoSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNmeaSatelliteInfoSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNmeaSatelliteInfoSource_vtable_callback_disconnectNotify
  let tmp = gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource(h: fcQNmeaSatelliteInfoSource_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), cint(mode)))
  fcQNmeaSatelliteInfoSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource,
    mode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QNmeaSatelliteInfoSourceVTable = nil): gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource =
  let vtbl = if vtbl == nil: new QNmeaSatelliteInfoSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNmeaSatelliteInfoSourceVTable](fcQNmeaSatelliteInfoSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNmeaSatelliteInfoSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNmeaSatelliteInfoSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNmeaSatelliteInfoSource_vtable_callback_metacall
  if not isNil(vtbl[].setUpdateInterval):
    vtbl[].vtbl.setUpdateInterval = fcQNmeaSatelliteInfoSource_vtable_callback_setUpdateInterval
  if not isNil(vtbl[].minimumUpdateInterval):
    vtbl[].vtbl.minimumUpdateInterval = fcQNmeaSatelliteInfoSource_vtable_callback_minimumUpdateInterval
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQNmeaSatelliteInfoSource_vtable_callback_error
  if not isNil(vtbl[].setBackendProperty):
    vtbl[].vtbl.setBackendProperty = fcQNmeaSatelliteInfoSource_vtable_callback_setBackendProperty
  if not isNil(vtbl[].backendProperty):
    vtbl[].vtbl.backendProperty = fcQNmeaSatelliteInfoSource_vtable_callback_backendProperty
  if not isNil(vtbl[].startUpdates):
    vtbl[].vtbl.startUpdates = fcQNmeaSatelliteInfoSource_vtable_callback_startUpdates
  if not isNil(vtbl[].stopUpdates):
    vtbl[].vtbl.stopUpdates = fcQNmeaSatelliteInfoSource_vtable_callback_stopUpdates
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQNmeaSatelliteInfoSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].parseSatellitesInUseFromNmea):
    vtbl[].vtbl.parseSatellitesInUseFromNmea = fcQNmeaSatelliteInfoSource_vtable_callback_parseSatellitesInUseFromNmea
  if not isNil(vtbl[].parseSatelliteInfoFromNmea):
    vtbl[].vtbl.parseSatelliteInfoFromNmea = fcQNmeaSatelliteInfoSource_vtable_callback_parseSatelliteInfoFromNmea
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNmeaSatelliteInfoSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNmeaSatelliteInfoSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNmeaSatelliteInfoSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNmeaSatelliteInfoSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNmeaSatelliteInfoSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNmeaSatelliteInfoSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNmeaSatelliteInfoSource_vtable_callback_disconnectNotify
  let tmp = gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource(h: fcQNmeaSatelliteInfoSource_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), cint(mode), parent.h))
  fcQNmeaSatelliteInfoSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQNmeaSatelliteInfoSource_mvtbl = cQNmeaSatelliteInfoSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNmeaSatelliteInfoSource()[])](self.fcQNmeaSatelliteInfoSource_vdata()[])
    inst[].h = nil,

  metaObject: fcQNmeaSatelliteInfoSource_method_callback_metaObject,
  metacast: fcQNmeaSatelliteInfoSource_method_callback_metacast,
  metacall: fcQNmeaSatelliteInfoSource_method_callback_metacall,
  setUpdateInterval: fcQNmeaSatelliteInfoSource_method_callback_setUpdateInterval,
  minimumUpdateInterval: fcQNmeaSatelliteInfoSource_method_callback_minimumUpdateInterval,
  error: fcQNmeaSatelliteInfoSource_method_callback_error,
  setBackendProperty: fcQNmeaSatelliteInfoSource_method_callback_setBackendProperty,
  backendProperty: fcQNmeaSatelliteInfoSource_method_callback_backendProperty,
  startUpdates: fcQNmeaSatelliteInfoSource_method_callback_startUpdates,
  stopUpdates: fcQNmeaSatelliteInfoSource_method_callback_stopUpdates,
  requestUpdate: fcQNmeaSatelliteInfoSource_method_callback_requestUpdate,
  parseSatellitesInUseFromNmea: fcQNmeaSatelliteInfoSource_method_callback_parseSatellitesInUseFromNmea,
  parseSatelliteInfoFromNmea: fcQNmeaSatelliteInfoSource_method_callback_parseSatelliteInfoFromNmea,
  event: fcQNmeaSatelliteInfoSource_method_callback_event,
  eventFilter: fcQNmeaSatelliteInfoSource_method_callback_eventFilter,
  timerEvent: fcQNmeaSatelliteInfoSource_method_callback_timerEvent,
  childEvent: fcQNmeaSatelliteInfoSource_method_callback_childEvent,
  customEvent: fcQNmeaSatelliteInfoSource_method_callback_customEvent,
  connectNotify: fcQNmeaSatelliteInfoSource_method_callback_connectNotify,
  disconnectNotify: fcQNmeaSatelliteInfoSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource,
    mode: cint,
    inst: VirtualQNmeaSatelliteInfoSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNmeaSatelliteInfoSource_new(addr(cQNmeaSatelliteInfoSource_mvtbl), csize_t(sizeof(pointer)), cint(mode))
  fcQNmeaSatelliteInfoSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource,
    mode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQNmeaSatelliteInfoSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNmeaSatelliteInfoSource_new2(addr(cQNmeaSatelliteInfoSource_mvtbl), csize_t(sizeof(pointer)), cint(mode), parent.h)
  fcQNmeaSatelliteInfoSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNmeaSatelliteInfoSource_staticMetaObject())
proc delete*(self: gen_qnmeasatelliteinfosource_types.QNmeaSatelliteInfoSource) =
  fcQNmeaSatelliteInfoSource_delete(self.h)
