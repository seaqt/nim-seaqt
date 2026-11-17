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


{.compile("gen_qnmeapositioninfosource.cpp", QtPositioningCFlags).}


type QNmeaPositionInfoSourceUpdateModeEnum* = distinct cint
template RealTimeMode*(_: type QNmeaPositionInfoSourceUpdateModeEnum): untyped = 1
template SimulationMode*(_: type QNmeaPositionInfoSourceUpdateModeEnum): untyped = 2


import ./gen_qnmeapositioninfosource_types
export gen_qnmeapositioninfosource_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeopositioninfo_types,
  ./gen_qgeopositioninfosource
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qgeopositioninfo_types,
  gen_qgeopositioninfosource

type cQNmeaPositionInfoSource*{.exportc: "QNmeaPositionInfoSource", incompleteStruct.} = object

proc fcQNmeaPositionInfoSource_metaObject(self: pointer): pointer {.importc: "QNmeaPositionInfoSource_metaObject".}
proc fcQNmeaPositionInfoSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QNmeaPositionInfoSource_metacast".}
proc fcQNmeaPositionInfoSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNmeaPositionInfoSource_metacall".}
proc fcQNmeaPositionInfoSource_tr(s: cstring): struct_seaqt_string {.importc: "QNmeaPositionInfoSource_tr".}
proc fcQNmeaPositionInfoSource_setUserEquivalentRangeError(self: pointer, uere: float64): void {.importc: "QNmeaPositionInfoSource_setUserEquivalentRangeError".}
proc fcQNmeaPositionInfoSource_userEquivalentRangeError(self: pointer): float64 {.importc: "QNmeaPositionInfoSource_userEquivalentRangeError".}
proc fcQNmeaPositionInfoSource_updateMode(self: pointer): cint {.importc: "QNmeaPositionInfoSource_updateMode".}
proc fcQNmeaPositionInfoSource_setDevice(self: pointer, source: pointer): void {.importc: "QNmeaPositionInfoSource_setDevice".}
proc fcQNmeaPositionInfoSource_device(self: pointer): pointer {.importc: "QNmeaPositionInfoSource_device".}
proc fcQNmeaPositionInfoSource_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QNmeaPositionInfoSource_setUpdateInterval".}
proc fcQNmeaPositionInfoSource_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.importc: "QNmeaPositionInfoSource_lastKnownPosition".}
proc fcQNmeaPositionInfoSource_supportedPositioningMethods(self: pointer): cint {.importc: "QNmeaPositionInfoSource_supportedPositioningMethods".}
proc fcQNmeaPositionInfoSource_minimumUpdateInterval(self: pointer): cint {.importc: "QNmeaPositionInfoSource_minimumUpdateInterval".}
proc fcQNmeaPositionInfoSource_error(self: pointer): cint {.importc: "QNmeaPositionInfoSource_error".}
proc fcQNmeaPositionInfoSource_startUpdates(self: pointer): void {.importc: "QNmeaPositionInfoSource_startUpdates".}
proc fcQNmeaPositionInfoSource_stopUpdates(self: pointer): void {.importc: "QNmeaPositionInfoSource_stopUpdates".}
proc fcQNmeaPositionInfoSource_requestUpdate(self: pointer, timeout: cint): void {.importc: "QNmeaPositionInfoSource_requestUpdate".}
proc fcQNmeaPositionInfoSource_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QNmeaPositionInfoSource_tr2".}
proc fcQNmeaPositionInfoSource_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QNmeaPositionInfoSource_tr3".}
proc fcQNmeaPositionInfoSource_vdata(self: pointer): ptr pointer {.importc: "QNmeaPositionInfoSource_vdata".}
proc fvdata_cQNmeaPositionInfoSource(self: pointer): pointer {.importc: "vdata_QNmeaPositionInfoSource".}

type cQNmeaPositionInfoSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setUpdateInterval*: proc(self: pointer, msec: cint): void {.cdecl, raises: [], gcsafe.}
  lastKnownPosition*: proc(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.cdecl, raises: [], gcsafe.}
  supportedPositioningMethods*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumUpdateInterval*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  error*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  startUpdates*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stopUpdates*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  requestUpdate*: proc(self: pointer, timeout: cint): void {.cdecl, raises: [], gcsafe.}
  parsePosInfoFromNmeaData*: proc(self: pointer, data: cstring, size: cint, posInfo: pointer, hasFix: ptr bool): bool {.cdecl, raises: [], gcsafe.}
  setPreferredPositioningMethods*: proc(self: pointer, methods: cint): void {.cdecl, raises: [], gcsafe.}
  setBackendProperty*: proc(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl, raises: [], gcsafe.}
  backendProperty*: proc(self: pointer, name: struct_seaqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNmeaPositionInfoSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QNmeaPositionInfoSource_virtualbase_metaObject".}
proc fcQNmeaPositionInfoSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNmeaPositionInfoSource_virtualbase_metacast".}
proc fcQNmeaPositionInfoSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNmeaPositionInfoSource_virtualbase_metacall".}
proc fcQNmeaPositionInfoSource_virtualbase_setUpdateInterval(self: pointer, msec: cint): void {.importc: "QNmeaPositionInfoSource_virtualbase_setUpdateInterval".}
proc fcQNmeaPositionInfoSource_virtualbase_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.importc: "QNmeaPositionInfoSource_virtualbase_lastKnownPosition".}
proc fcQNmeaPositionInfoSource_virtualbase_supportedPositioningMethods(self: pointer): cint {.importc: "QNmeaPositionInfoSource_virtualbase_supportedPositioningMethods".}
proc fcQNmeaPositionInfoSource_virtualbase_minimumUpdateInterval(self: pointer): cint {.importc: "QNmeaPositionInfoSource_virtualbase_minimumUpdateInterval".}
proc fcQNmeaPositionInfoSource_virtualbase_error(self: pointer): cint {.importc: "QNmeaPositionInfoSource_virtualbase_error".}
proc fcQNmeaPositionInfoSource_virtualbase_startUpdates(self: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_startUpdates".}
proc fcQNmeaPositionInfoSource_virtualbase_stopUpdates(self: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_stopUpdates".}
proc fcQNmeaPositionInfoSource_virtualbase_requestUpdate(self: pointer, timeout: cint): void {.importc: "QNmeaPositionInfoSource_virtualbase_requestUpdate".}
proc fcQNmeaPositionInfoSource_virtualbase_parsePosInfoFromNmeaData(self: pointer, data: cstring, size: cint, posInfo: pointer, hasFix: ptr bool): bool {.importc: "QNmeaPositionInfoSource_virtualbase_parsePosInfoFromNmeaData".}
proc fcQNmeaPositionInfoSource_virtualbase_setPreferredPositioningMethods(self: pointer, methods: cint): void {.importc: "QNmeaPositionInfoSource_virtualbase_setPreferredPositioningMethods".}
proc fcQNmeaPositionInfoSource_virtualbase_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.importc: "QNmeaPositionInfoSource_virtualbase_setBackendProperty".}
proc fcQNmeaPositionInfoSource_virtualbase_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.importc: "QNmeaPositionInfoSource_virtualbase_backendProperty".}
proc fcQNmeaPositionInfoSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNmeaPositionInfoSource_virtualbase_event".}
proc fcQNmeaPositionInfoSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNmeaPositionInfoSource_virtualbase_eventFilter".}
proc fcQNmeaPositionInfoSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_timerEvent".}
proc fcQNmeaPositionInfoSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_childEvent".}
proc fcQNmeaPositionInfoSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_customEvent".}
proc fcQNmeaPositionInfoSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_connectNotify".}
proc fcQNmeaPositionInfoSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNmeaPositionInfoSource_virtualbase_disconnectNotify".}
proc fcQNmeaPositionInfoSource_protectedbase_setError(self: pointer, positionError: cint): void {.importc: "QNmeaPositionInfoSource_protectedbase_setError".}
proc fcQNmeaPositionInfoSource_protectedbase_sender(self: pointer): pointer {.importc: "QNmeaPositionInfoSource_protectedbase_sender".}
proc fcQNmeaPositionInfoSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNmeaPositionInfoSource_protectedbase_senderSignalIndex".}
proc fcQNmeaPositionInfoSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNmeaPositionInfoSource_protectedbase_receivers".}
proc fcQNmeaPositionInfoSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNmeaPositionInfoSource_protectedbase_isSignalConnected".}
proc fcQNmeaPositionInfoSource_new(vtbl: pointer, vdata: csize_t, updateMode: cint): ptr cQNmeaPositionInfoSource {.importc: "QNmeaPositionInfoSource_new".}
proc fcQNmeaPositionInfoSource_new2(vtbl: pointer, vdata: csize_t, updateMode: cint, parent: pointer): ptr cQNmeaPositionInfoSource {.importc: "QNmeaPositionInfoSource_new2".}
proc fcQNmeaPositionInfoSource_staticMetaObject(): pointer {.importc: "QNmeaPositionInfoSource_staticMetaObject".}
proc fcQNmeaPositionInfoSource_delete(self: pointer) {.importc: "QNmeaPositionInfoSource_delete".}

proc metaObject*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNmeaPositionInfoSource_metaObject(self.h))

proc metacast*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, param1: cstring): pointer =
  fcQNmeaPositionInfoSource_metacast(self.h, param1)

proc metacall*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQNmeaPositionInfoSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, s: cstring): string =
  let v_ms = fcQNmeaPositionInfoSource_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUserEquivalentRangeError*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, uere: float64): void =
  fcQNmeaPositionInfoSource_setUserEquivalentRangeError(self.h, uere)

proc userEquivalentRangeError*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): float64 =
  fcQNmeaPositionInfoSource_userEquivalentRangeError(self.h)

proc updateMode*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  cint(fcQNmeaPositionInfoSource_updateMode(self.h))

proc setDevice*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, source: gen_qiodevice_types.QIODevice): void =
  fcQNmeaPositionInfoSource_setDevice(self.h, source.h)

proc device*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNmeaPositionInfoSource_device(self.h))

proc setUpdateInterval*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, msec: cint): void =
  fcQNmeaPositionInfoSource_setUpdateInterval(self.h, msec)

proc lastKnownPosition*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo =
  gen_qgeopositioninfo_types.QGeoPositionInfo(h: fcQNmeaPositionInfoSource_lastKnownPosition(self.h, fromSatellitePositioningMethodsOnly))

proc supportedPositioningMethods*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  cint(fcQNmeaPositionInfoSource_supportedPositioningMethods(self.h))

proc minimumUpdateInterval*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  fcQNmeaPositionInfoSource_minimumUpdateInterval(self.h)

proc error*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  cint(fcQNmeaPositionInfoSource_error(self.h))

proc startUpdates*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): void =
  fcQNmeaPositionInfoSource_startUpdates(self.h)

proc stopUpdates*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): void =
  fcQNmeaPositionInfoSource_stopUpdates(self.h)

proc requestUpdate*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, timeout: cint): void =
  fcQNmeaPositionInfoSource_requestUpdate(self.h, timeout)

proc tr*(_: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, s: cstring, c: cstring): string =
  let v_ms = fcQNmeaPositionInfoSource_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNmeaPositionInfoSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QNmeaPositionInfoSourcemetaObjectProc* = proc(self: QNmeaPositionInfoSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcemetacastProc* = proc(self: QNmeaPositionInfoSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcemetacallProc* = proc(self: QNmeaPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcesetUpdateIntervalProc* = proc(self: QNmeaPositionInfoSource, msec: cint): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcelastKnownPositionProc* = proc(self: QNmeaPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcesupportedPositioningMethodsProc* = proc(self: QNmeaPositionInfoSource): cint {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceminimumUpdateIntervalProc* = proc(self: QNmeaPositionInfoSource): cint {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceerrorProc* = proc(self: QNmeaPositionInfoSource): cint {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcestartUpdatesProc* = proc(self: QNmeaPositionInfoSource): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcestopUpdatesProc* = proc(self: QNmeaPositionInfoSource): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcerequestUpdateProc* = proc(self: QNmeaPositionInfoSource, timeout: cint): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceparsePosInfoFromNmeaDataProc* = proc(self: QNmeaPositionInfoSource, data: cstring, size: cint, posInfo: gen_qgeopositioninfo_types.QGeoPositionInfo, hasFix: ptr bool): bool {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcesetPreferredPositioningMethodsProc* = proc(self: QNmeaPositionInfoSource, methods: cint): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcesetBackendPropertyProc* = proc(self: QNmeaPositionInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcebackendPropertyProc* = proc(self: QNmeaPositionInfoSource, name: openArray[char]): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceeventProc* = proc(self: QNmeaPositionInfoSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceeventFilterProc* = proc(self: QNmeaPositionInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcetimerEventProc* = proc(self: QNmeaPositionInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcechildEventProc* = proc(self: QNmeaPositionInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcecustomEventProc* = proc(self: QNmeaPositionInfoSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceconnectNotifyProc* = proc(self: QNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourcedisconnectNotifyProc* = proc(self: QNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNmeaPositionInfoSourceVTable* = object
  vtbl: cQNmeaPositionInfoSourceVTable
  metaObject*: QNmeaPositionInfoSourcemetaObjectProc
  metacast*: QNmeaPositionInfoSourcemetacastProc
  metacall*: QNmeaPositionInfoSourcemetacallProc
  setUpdateInterval*: QNmeaPositionInfoSourcesetUpdateIntervalProc
  lastKnownPosition*: QNmeaPositionInfoSourcelastKnownPositionProc
  supportedPositioningMethods*: QNmeaPositionInfoSourcesupportedPositioningMethodsProc
  minimumUpdateInterval*: QNmeaPositionInfoSourceminimumUpdateIntervalProc
  error*: QNmeaPositionInfoSourceerrorProc
  startUpdates*: QNmeaPositionInfoSourcestartUpdatesProc
  stopUpdates*: QNmeaPositionInfoSourcestopUpdatesProc
  requestUpdate*: QNmeaPositionInfoSourcerequestUpdateProc
  parsePosInfoFromNmeaData*: QNmeaPositionInfoSourceparsePosInfoFromNmeaDataProc
  setPreferredPositioningMethods*: QNmeaPositionInfoSourcesetPreferredPositioningMethodsProc
  setBackendProperty*: QNmeaPositionInfoSourcesetBackendPropertyProc
  backendProperty*: QNmeaPositionInfoSourcebackendPropertyProc
  event*: QNmeaPositionInfoSourceeventProc
  eventFilter*: QNmeaPositionInfoSourceeventFilterProc
  timerEvent*: QNmeaPositionInfoSourcetimerEventProc
  childEvent*: QNmeaPositionInfoSourcechildEventProc
  customEvent*: QNmeaPositionInfoSourcecustomEventProc
  connectNotify*: QNmeaPositionInfoSourceconnectNotifyProc
  disconnectNotify*: QNmeaPositionInfoSourcedisconnectNotifyProc

proc QNmeaPositionInfoSourcemetaObject*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNmeaPositionInfoSource_virtualbase_metaObject(self.h))

proc QNmeaPositionInfoSourcemetacast*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, param1: cstring): pointer =
  fcQNmeaPositionInfoSource_virtualbase_metacast(self.h, param1)

proc QNmeaPositionInfoSourcemetacall*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQNmeaPositionInfoSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QNmeaPositionInfoSourcesetUpdateInterval*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, msec: cint): void =
  fcQNmeaPositionInfoSource_virtualbase_setUpdateInterval(self.h, msec)

proc QNmeaPositionInfoSourcelastKnownPosition*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo =
  gen_qgeopositioninfo_types.QGeoPositionInfo(h: fcQNmeaPositionInfoSource_virtualbase_lastKnownPosition(self.h, fromSatellitePositioningMethodsOnly))

proc QNmeaPositionInfoSourcesupportedPositioningMethods*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  cint(fcQNmeaPositionInfoSource_virtualbase_supportedPositioningMethods(self.h))

proc QNmeaPositionInfoSourceminimumUpdateInterval*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  fcQNmeaPositionInfoSource_virtualbase_minimumUpdateInterval(self.h)

proc QNmeaPositionInfoSourceerror*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  cint(fcQNmeaPositionInfoSource_virtualbase_error(self.h))

proc QNmeaPositionInfoSourcestartUpdates*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): void =
  fcQNmeaPositionInfoSource_virtualbase_startUpdates(self.h)

proc QNmeaPositionInfoSourcestopUpdates*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): void =
  fcQNmeaPositionInfoSource_virtualbase_stopUpdates(self.h)

proc QNmeaPositionInfoSourcerequestUpdate*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, timeout: cint): void =
  fcQNmeaPositionInfoSource_virtualbase_requestUpdate(self.h, timeout)

proc QNmeaPositionInfoSourceparsePosInfoFromNmeaData*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, data: cstring, size: cint, posInfo: gen_qgeopositioninfo_types.QGeoPositionInfo, hasFix: ptr bool): bool =
  fcQNmeaPositionInfoSource_virtualbase_parsePosInfoFromNmeaData(self.h, data, size, posInfo.h, hasFix)

proc QNmeaPositionInfoSourcesetPreferredPositioningMethods*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, methods: cint): void =
  fcQNmeaPositionInfoSource_virtualbase_setPreferredPositioningMethods(self.h, cint(methods))

proc QNmeaPositionInfoSourcesetBackendProperty*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool =
  fcQNmeaPositionInfoSource_virtualbase_setBackendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc QNmeaPositionInfoSourcebackendProperty*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNmeaPositionInfoSource_virtualbase_backendProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc QNmeaPositionInfoSourceevent*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQNmeaPositionInfoSource_virtualbase_event(self.h, event.h)

proc QNmeaPositionInfoSourceeventFilter*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNmeaPositionInfoSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QNmeaPositionInfoSourcetimerEvent*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNmeaPositionInfoSource_virtualbase_timerEvent(self.h, event.h)

proc QNmeaPositionInfoSourcechildEvent*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNmeaPositionInfoSource_virtualbase_childEvent(self.h, event.h)

proc QNmeaPositionInfoSourcecustomEvent*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, event: gen_qcoreevent_types.QEvent): void =
  fcQNmeaPositionInfoSource_virtualbase_customEvent(self.h, event.h)

proc QNmeaPositionInfoSourceconnectNotify*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNmeaPositionInfoSource_virtualbase_connectNotify(self.h, signal.h)

proc QNmeaPositionInfoSourcedisconnectNotify*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNmeaPositionInfoSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQNmeaPositionInfoSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQNmeaPositionInfoSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = msec
  vtbl[].setUpdateInterval(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = fromSatellitePositioningMethodsOnly
  var virtualReturn = vtbl[].lastKnownPosition(self, slotval1)
  virtualReturn.h

proc fcQNmeaPositionInfoSource_vtable_callback_supportedPositioningMethods(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  var virtualReturn = vtbl[].supportedPositioningMethods(self)
  cint(virtualReturn)

proc fcQNmeaPositionInfoSource_vtable_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  var virtualReturn = vtbl[].minimumUpdateInterval(self)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_error(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  var virtualReturn = vtbl[].error(self)
  cint(virtualReturn)

proc fcQNmeaPositionInfoSource_vtable_callback_startUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  vtbl[].startUpdates(self)

proc fcQNmeaPositionInfoSource_vtable_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  vtbl[].stopUpdates(self)

proc fcQNmeaPositionInfoSource_vtable_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = timeout
  vtbl[].requestUpdate(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_parsePosInfoFromNmeaData(self: pointer, data: cstring, size: cint, posInfo: pointer, hasFix: ptr bool): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = (data)
  let slotval2 = size
  let slotval3 = gen_qgeopositioninfo_types.QGeoPositionInfo(h: posInfo)
  let slotval4 = hasFix
  var virtualReturn = vtbl[].parsePosInfoFromNmeaData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_setPreferredPositioningMethods(self: pointer, methods: cint): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = cint(methods)
  vtbl[].setPreferredPositioningMethods(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = vtbl[].setBackendProperty(self, slotval1, slotval2)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].backendProperty(self, slotval1)
  virtualReturn.h

proc fcQNmeaPositionInfoSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQNmeaPositionInfoSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQNmeaPositionInfoSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
  let self = QNmeaPositionInfoSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQNmeaPositionInfoSource* {.inheritable.} = ref object of QNmeaPositionInfoSource
  vtbl*: cQNmeaPositionInfoSourceVTable

method metaObject*(self: VirtualQNmeaPositionInfoSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QNmeaPositionInfoSourcemetaObject(self[])
method metacast*(self: VirtualQNmeaPositionInfoSource, param1: cstring): pointer {.base.} =
  QNmeaPositionInfoSourcemetacast(self[], param1)
method metacall*(self: VirtualQNmeaPositionInfoSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QNmeaPositionInfoSourcemetacall(self[], param1, param2, param3)
method setUpdateInterval*(self: VirtualQNmeaPositionInfoSource, msec: cint): void {.base.} =
  QNmeaPositionInfoSourcesetUpdateInterval(self[], msec)
method lastKnownPosition*(self: VirtualQNmeaPositionInfoSource, fromSatellitePositioningMethodsOnly: bool): gen_qgeopositioninfo_types.QGeoPositionInfo {.base.} =
  QNmeaPositionInfoSourcelastKnownPosition(self[], fromSatellitePositioningMethodsOnly)
method supportedPositioningMethods*(self: VirtualQNmeaPositionInfoSource): cint {.base.} =
  QNmeaPositionInfoSourcesupportedPositioningMethods(self[])
method minimumUpdateInterval*(self: VirtualQNmeaPositionInfoSource): cint {.base.} =
  QNmeaPositionInfoSourceminimumUpdateInterval(self[])
method error*(self: VirtualQNmeaPositionInfoSource): cint {.base.} =
  QNmeaPositionInfoSourceerror(self[])
method startUpdates*(self: VirtualQNmeaPositionInfoSource): void {.base.} =
  QNmeaPositionInfoSourcestartUpdates(self[])
method stopUpdates*(self: VirtualQNmeaPositionInfoSource): void {.base.} =
  QNmeaPositionInfoSourcestopUpdates(self[])
method requestUpdate*(self: VirtualQNmeaPositionInfoSource, timeout: cint): void {.base.} =
  QNmeaPositionInfoSourcerequestUpdate(self[], timeout)
method parsePosInfoFromNmeaData*(self: VirtualQNmeaPositionInfoSource, data: cstring, size: cint, posInfo: gen_qgeopositioninfo_types.QGeoPositionInfo, hasFix: ptr bool): bool {.base.} =
  QNmeaPositionInfoSourceparsePosInfoFromNmeaData(self[], data, size, posInfo, hasFix)
method setPreferredPositioningMethods*(self: VirtualQNmeaPositionInfoSource, methods: cint): void {.base.} =
  QNmeaPositionInfoSourcesetPreferredPositioningMethods(self[], methods)
method setBackendProperty*(self: VirtualQNmeaPositionInfoSource, name: openArray[char], value: gen_qvariant_types.QVariant): bool {.base.} =
  QNmeaPositionInfoSourcesetBackendProperty(self[], name, value)
method backendProperty*(self: VirtualQNmeaPositionInfoSource, name: openArray[char]): gen_qvariant_types.QVariant {.base.} =
  QNmeaPositionInfoSourcebackendProperty(self[], name)
method event*(self: VirtualQNmeaPositionInfoSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNmeaPositionInfoSourceevent(self[], event)
method eventFilter*(self: VirtualQNmeaPositionInfoSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNmeaPositionInfoSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQNmeaPositionInfoSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QNmeaPositionInfoSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQNmeaPositionInfoSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QNmeaPositionInfoSourcechildEvent(self[], event)
method customEvent*(self: VirtualQNmeaPositionInfoSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QNmeaPositionInfoSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNmeaPositionInfoSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNmeaPositionInfoSourcedisconnectNotify(self[], signal)

proc fcQNmeaPositionInfoSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQNmeaPositionInfoSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_setUpdateInterval(self: pointer, msec: cint): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = msec
  inst.setUpdateInterval(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_lastKnownPosition(self: pointer, fromSatellitePositioningMethodsOnly: bool): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = fromSatellitePositioningMethodsOnly
  var virtualReturn = inst.lastKnownPosition(slotval1)
  virtualReturn.h

proc fcQNmeaPositionInfoSource_method_callback_supportedPositioningMethods(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.supportedPositioningMethods()
  cint(virtualReturn)

proc fcQNmeaPositionInfoSource_method_callback_minimumUpdateInterval(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.minimumUpdateInterval()
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_error(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  var virtualReturn = inst.error()
  cint(virtualReturn)

proc fcQNmeaPositionInfoSource_method_callback_startUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  inst.startUpdates()

proc fcQNmeaPositionInfoSource_method_callback_stopUpdates(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  inst.stopUpdates()

proc fcQNmeaPositionInfoSource_method_callback_requestUpdate(self: pointer, timeout: cint): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = timeout
  inst.requestUpdate(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_parsePosInfoFromNmeaData(self: pointer, data: cstring, size: cint, posInfo: pointer, hasFix: ptr bool): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = size
  let slotval3 = gen_qgeopositioninfo_types.QGeoPositionInfo(h: posInfo)
  let slotval4 = hasFix
  var virtualReturn = inst.parsePosInfoFromNmeaData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_setPreferredPositioningMethods(self: pointer, methods: cint): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = cint(methods)
  inst.setPreferredPositioningMethods(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_setBackendProperty(self: pointer, name: struct_seaqt_string, value: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  var virtualReturn = inst.setBackendProperty(slotval1, slotval2)
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_backendProperty(self: pointer, name: struct_seaqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.backendProperty(slotval1)
  virtualReturn.h

proc fcQNmeaPositionInfoSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQNmeaPositionInfoSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQNmeaPositionInfoSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNmeaPositionInfoSource](fcQNmeaPositionInfoSource_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc setError*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, positionError: cint): void =
  fcQNmeaPositionInfoSource_protectedbase_setError(self.h, cint(positionError))

proc sender*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNmeaPositionInfoSource_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): cint =
  fcQNmeaPositionInfoSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, signal: cstring): cint =
  fcQNmeaPositionInfoSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNmeaPositionInfoSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource,
    updateMode: cint,
    vtbl: ref QNmeaPositionInfoSourceVTable = nil): gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource =
  let vtbl = if vtbl == nil: new QNmeaPositionInfoSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNmeaPositionInfoSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNmeaPositionInfoSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNmeaPositionInfoSource_vtable_callback_metacall
  if not isNil(vtbl[].setUpdateInterval):
    vtbl[].vtbl.setUpdateInterval = fcQNmeaPositionInfoSource_vtable_callback_setUpdateInterval
  if not isNil(vtbl[].lastKnownPosition):
    vtbl[].vtbl.lastKnownPosition = fcQNmeaPositionInfoSource_vtable_callback_lastKnownPosition
  if not isNil(vtbl[].supportedPositioningMethods):
    vtbl[].vtbl.supportedPositioningMethods = fcQNmeaPositionInfoSource_vtable_callback_supportedPositioningMethods
  if not isNil(vtbl[].minimumUpdateInterval):
    vtbl[].vtbl.minimumUpdateInterval = fcQNmeaPositionInfoSource_vtable_callback_minimumUpdateInterval
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQNmeaPositionInfoSource_vtable_callback_error
  if not isNil(vtbl[].startUpdates):
    vtbl[].vtbl.startUpdates = fcQNmeaPositionInfoSource_vtable_callback_startUpdates
  if not isNil(vtbl[].stopUpdates):
    vtbl[].vtbl.stopUpdates = fcQNmeaPositionInfoSource_vtable_callback_stopUpdates
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQNmeaPositionInfoSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].parsePosInfoFromNmeaData):
    vtbl[].vtbl.parsePosInfoFromNmeaData = fcQNmeaPositionInfoSource_vtable_callback_parsePosInfoFromNmeaData
  if not isNil(vtbl[].setPreferredPositioningMethods):
    vtbl[].vtbl.setPreferredPositioningMethods = fcQNmeaPositionInfoSource_vtable_callback_setPreferredPositioningMethods
  if not isNil(vtbl[].setBackendProperty):
    vtbl[].vtbl.setBackendProperty = fcQNmeaPositionInfoSource_vtable_callback_setBackendProperty
  if not isNil(vtbl[].backendProperty):
    vtbl[].vtbl.backendProperty = fcQNmeaPositionInfoSource_vtable_callback_backendProperty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNmeaPositionInfoSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNmeaPositionInfoSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNmeaPositionInfoSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNmeaPositionInfoSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNmeaPositionInfoSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNmeaPositionInfoSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNmeaPositionInfoSource_vtable_callback_disconnectNotify
  let tmp = gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource(h: fcQNmeaPositionInfoSource_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), cint(updateMode)))
  fcQNmeaPositionInfoSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource,
    updateMode: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QNmeaPositionInfoSourceVTable = nil): gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource =
  let vtbl = if vtbl == nil: new QNmeaPositionInfoSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNmeaPositionInfoSourceVTable](fcQNmeaPositionInfoSource_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNmeaPositionInfoSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNmeaPositionInfoSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNmeaPositionInfoSource_vtable_callback_metacall
  if not isNil(vtbl[].setUpdateInterval):
    vtbl[].vtbl.setUpdateInterval = fcQNmeaPositionInfoSource_vtable_callback_setUpdateInterval
  if not isNil(vtbl[].lastKnownPosition):
    vtbl[].vtbl.lastKnownPosition = fcQNmeaPositionInfoSource_vtable_callback_lastKnownPosition
  if not isNil(vtbl[].supportedPositioningMethods):
    vtbl[].vtbl.supportedPositioningMethods = fcQNmeaPositionInfoSource_vtable_callback_supportedPositioningMethods
  if not isNil(vtbl[].minimumUpdateInterval):
    vtbl[].vtbl.minimumUpdateInterval = fcQNmeaPositionInfoSource_vtable_callback_minimumUpdateInterval
  if not isNil(vtbl[].error):
    vtbl[].vtbl.error = fcQNmeaPositionInfoSource_vtable_callback_error
  if not isNil(vtbl[].startUpdates):
    vtbl[].vtbl.startUpdates = fcQNmeaPositionInfoSource_vtable_callback_startUpdates
  if not isNil(vtbl[].stopUpdates):
    vtbl[].vtbl.stopUpdates = fcQNmeaPositionInfoSource_vtable_callback_stopUpdates
  if not isNil(vtbl[].requestUpdate):
    vtbl[].vtbl.requestUpdate = fcQNmeaPositionInfoSource_vtable_callback_requestUpdate
  if not isNil(vtbl[].parsePosInfoFromNmeaData):
    vtbl[].vtbl.parsePosInfoFromNmeaData = fcQNmeaPositionInfoSource_vtable_callback_parsePosInfoFromNmeaData
  if not isNil(vtbl[].setPreferredPositioningMethods):
    vtbl[].vtbl.setPreferredPositioningMethods = fcQNmeaPositionInfoSource_vtable_callback_setPreferredPositioningMethods
  if not isNil(vtbl[].setBackendProperty):
    vtbl[].vtbl.setBackendProperty = fcQNmeaPositionInfoSource_vtable_callback_setBackendProperty
  if not isNil(vtbl[].backendProperty):
    vtbl[].vtbl.backendProperty = fcQNmeaPositionInfoSource_vtable_callback_backendProperty
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNmeaPositionInfoSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNmeaPositionInfoSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNmeaPositionInfoSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNmeaPositionInfoSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNmeaPositionInfoSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNmeaPositionInfoSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNmeaPositionInfoSource_vtable_callback_disconnectNotify
  let tmp = gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource(h: fcQNmeaPositionInfoSource_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), cint(updateMode), parent.h))
  fcQNmeaPositionInfoSource_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQNmeaPositionInfoSource_mvtbl = cQNmeaPositionInfoSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNmeaPositionInfoSource()[])](self.fcQNmeaPositionInfoSource_vdata()[])
    inst[].h = nil,

  metaObject: fcQNmeaPositionInfoSource_method_callback_metaObject,
  metacast: fcQNmeaPositionInfoSource_method_callback_metacast,
  metacall: fcQNmeaPositionInfoSource_method_callback_metacall,
  setUpdateInterval: fcQNmeaPositionInfoSource_method_callback_setUpdateInterval,
  lastKnownPosition: fcQNmeaPositionInfoSource_method_callback_lastKnownPosition,
  supportedPositioningMethods: fcQNmeaPositionInfoSource_method_callback_supportedPositioningMethods,
  minimumUpdateInterval: fcQNmeaPositionInfoSource_method_callback_minimumUpdateInterval,
  error: fcQNmeaPositionInfoSource_method_callback_error,
  startUpdates: fcQNmeaPositionInfoSource_method_callback_startUpdates,
  stopUpdates: fcQNmeaPositionInfoSource_method_callback_stopUpdates,
  requestUpdate: fcQNmeaPositionInfoSource_method_callback_requestUpdate,
  parsePosInfoFromNmeaData: fcQNmeaPositionInfoSource_method_callback_parsePosInfoFromNmeaData,
  setPreferredPositioningMethods: fcQNmeaPositionInfoSource_method_callback_setPreferredPositioningMethods,
  setBackendProperty: fcQNmeaPositionInfoSource_method_callback_setBackendProperty,
  backendProperty: fcQNmeaPositionInfoSource_method_callback_backendProperty,
  event: fcQNmeaPositionInfoSource_method_callback_event,
  eventFilter: fcQNmeaPositionInfoSource_method_callback_eventFilter,
  timerEvent: fcQNmeaPositionInfoSource_method_callback_timerEvent,
  childEvent: fcQNmeaPositionInfoSource_method_callback_childEvent,
  customEvent: fcQNmeaPositionInfoSource_method_callback_customEvent,
  connectNotify: fcQNmeaPositionInfoSource_method_callback_connectNotify,
  disconnectNotify: fcQNmeaPositionInfoSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource,
    updateMode: cint,
    inst: VirtualQNmeaPositionInfoSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNmeaPositionInfoSource_new(addr(cQNmeaPositionInfoSource_mvtbl), csize_t(sizeof(pointer)), cint(updateMode))
  fcQNmeaPositionInfoSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource,
    updateMode: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQNmeaPositionInfoSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNmeaPositionInfoSource_new2(addr(cQNmeaPositionInfoSource_mvtbl), csize_t(sizeof(pointer)), cint(updateMode), parent.h)
  fcQNmeaPositionInfoSource_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNmeaPositionInfoSource_staticMetaObject())
proc delete*(self: gen_qnmeapositioninfosource_types.QNmeaPositionInfoSource) =
  fcQNmeaPositionInfoSource_delete(self.h)
