import ./qtmultimedia_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qradiotuner.cpp", QtMultimediaCFlags).}


type QRadioTunerStateEnum* = distinct cint
template ActiveState*(_: type QRadioTunerStateEnum): untyped = 0
template StoppedState*(_: type QRadioTunerStateEnum): untyped = 1


type QRadioTunerBandEnum* = distinct cint
template AM*(_: type QRadioTunerBandEnum): untyped = 0
template FM*(_: type QRadioTunerBandEnum): untyped = 1
template SW*(_: type QRadioTunerBandEnum): untyped = 2
template LW*(_: type QRadioTunerBandEnum): untyped = 3
template FM2*(_: type QRadioTunerBandEnum): untyped = 4


type QRadioTunerErrorEnum* = distinct cint
template NoError*(_: type QRadioTunerErrorEnum): untyped = 0
template ResourceError*(_: type QRadioTunerErrorEnum): untyped = 1
template OpenError*(_: type QRadioTunerErrorEnum): untyped = 2
template OutOfRangeError*(_: type QRadioTunerErrorEnum): untyped = 3


type QRadioTunerStereoModeEnum* = distinct cint
template ForceStereo*(_: type QRadioTunerStereoModeEnum): untyped = 0
template ForceMono*(_: type QRadioTunerStereoModeEnum): untyped = 1
template Auto*(_: type QRadioTunerStereoModeEnum): untyped = 2


type QRadioTunerSearchModeEnum* = distinct cint
template SearchFast*(_: type QRadioTunerSearchModeEnum): untyped = 0
template SearchGetStationId*(_: type QRadioTunerSearchModeEnum): untyped = 1


import ./gen_qradiotuner_types
export gen_qradiotuner_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaobject,
  ./gen_qmediaservice_types,
  ./gen_qradiodata_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediaobject,
  gen_qmediaservice_types,
  gen_qradiodata_types

type cQRadioTuner*{.exportc: "QRadioTuner", incompleteStruct.} = object

proc fcQRadioTuner_metaObject(self: pointer): pointer {.importc: "QRadioTuner_metaObject".}
proc fcQRadioTuner_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTuner_metacast".}
proc fcQRadioTuner_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTuner_metacall".}
proc fcQRadioTuner_tr(s: cstring): struct_miqt_string {.importc: "QRadioTuner_tr".}
proc fcQRadioTuner_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioTuner_trUtf8".}
proc fcQRadioTuner_availability(self: pointer): cint {.importc: "QRadioTuner_availability".}
proc fcQRadioTuner_state(self: pointer): cint {.importc: "QRadioTuner_state".}
proc fcQRadioTuner_band(self: pointer): cint {.importc: "QRadioTuner_band".}
proc fcQRadioTuner_isBandSupported(self: pointer, b: cint): bool {.importc: "QRadioTuner_isBandSupported".}
proc fcQRadioTuner_frequency(self: pointer): cint {.importc: "QRadioTuner_frequency".}
proc fcQRadioTuner_frequencyStep(self: pointer, band: cint): cint {.importc: "QRadioTuner_frequencyStep".}
proc fcQRadioTuner_frequencyRange(self: pointer, band: cint): struct_miqt_map {.importc: "QRadioTuner_frequencyRange".}
proc fcQRadioTuner_isStereo(self: pointer): bool {.importc: "QRadioTuner_isStereo".}
proc fcQRadioTuner_setStereoMode(self: pointer, mode: cint): void {.importc: "QRadioTuner_setStereoMode".}
proc fcQRadioTuner_stereoMode(self: pointer): cint {.importc: "QRadioTuner_stereoMode".}
proc fcQRadioTuner_signalStrength(self: pointer): cint {.importc: "QRadioTuner_signalStrength".}
proc fcQRadioTuner_volume(self: pointer): cint {.importc: "QRadioTuner_volume".}
proc fcQRadioTuner_isMuted(self: pointer): bool {.importc: "QRadioTuner_isMuted".}
proc fcQRadioTuner_isSearching(self: pointer): bool {.importc: "QRadioTuner_isSearching".}
proc fcQRadioTuner_isAntennaConnected(self: pointer): bool {.importc: "QRadioTuner_isAntennaConnected".}
proc fcQRadioTuner_error(self: pointer): cint {.importc: "QRadioTuner_error".}
proc fcQRadioTuner_errorString(self: pointer): struct_miqt_string {.importc: "QRadioTuner_errorString".}
proc fcQRadioTuner_radioData(self: pointer): pointer {.importc: "QRadioTuner_radioData".}
proc fcQRadioTuner_searchForward(self: pointer): void {.importc: "QRadioTuner_searchForward".}
proc fcQRadioTuner_searchBackward(self: pointer): void {.importc: "QRadioTuner_searchBackward".}
proc fcQRadioTuner_searchAllStations(self: pointer): void {.importc: "QRadioTuner_searchAllStations".}
proc fcQRadioTuner_cancelSearch(self: pointer): void {.importc: "QRadioTuner_cancelSearch".}
proc fcQRadioTuner_setBand(self: pointer, band: cint): void {.importc: "QRadioTuner_setBand".}
proc fcQRadioTuner_setFrequency(self: pointer, frequency: cint): void {.importc: "QRadioTuner_setFrequency".}
proc fcQRadioTuner_setVolume(self: pointer, volume: cint): void {.importc: "QRadioTuner_setVolume".}
proc fcQRadioTuner_setMuted(self: pointer, muted: bool): void {.importc: "QRadioTuner_setMuted".}
proc fcQRadioTuner_start(self: pointer): void {.importc: "QRadioTuner_start".}
proc fcQRadioTuner_stop(self: pointer): void {.importc: "QRadioTuner_stop".}
proc fcQRadioTuner_stateChanged(self: pointer, state: cint): void {.importc: "QRadioTuner_stateChanged".}
proc fcQRadioTuner_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_stateChanged".}
proc fcQRadioTuner_bandChanged(self: pointer, band: cint): void {.importc: "QRadioTuner_bandChanged".}
proc fcQRadioTuner_connect_bandChanged(self: pointer, slot: int, callback: proc (slot: int, band: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_bandChanged".}
proc fcQRadioTuner_frequencyChanged(self: pointer, frequency: cint): void {.importc: "QRadioTuner_frequencyChanged".}
proc fcQRadioTuner_connect_frequencyChanged(self: pointer, slot: int, callback: proc (slot: int, frequency: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_frequencyChanged".}
proc fcQRadioTuner_stereoStatusChanged(self: pointer, stereo: bool): void {.importc: "QRadioTuner_stereoStatusChanged".}
proc fcQRadioTuner_connect_stereoStatusChanged(self: pointer, slot: int, callback: proc (slot: int, stereo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_stereoStatusChanged".}
proc fcQRadioTuner_searchingChanged(self: pointer, searching: bool): void {.importc: "QRadioTuner_searchingChanged".}
proc fcQRadioTuner_connect_searchingChanged(self: pointer, slot: int, callback: proc (slot: int, searching: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_searchingChanged".}
proc fcQRadioTuner_signalStrengthChanged(self: pointer, signalStrength: cint): void {.importc: "QRadioTuner_signalStrengthChanged".}
proc fcQRadioTuner_connect_signalStrengthChanged(self: pointer, slot: int, callback: proc (slot: int, signalStrength: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_signalStrengthChanged".}
proc fcQRadioTuner_volumeChanged(self: pointer, volume: cint): void {.importc: "QRadioTuner_volumeChanged".}
proc fcQRadioTuner_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_volumeChanged".}
proc fcQRadioTuner_mutedChanged(self: pointer, muted: bool): void {.importc: "QRadioTuner_mutedChanged".}
proc fcQRadioTuner_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_mutedChanged".}
proc fcQRadioTuner_stationFound(self: pointer, frequency: cint, stationId: struct_miqt_string): void {.importc: "QRadioTuner_stationFound".}
proc fcQRadioTuner_connect_stationFound(self: pointer, slot: int, callback: proc (slot: int, frequency: cint, stationId: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_stationFound".}
proc fcQRadioTuner_antennaConnectedChanged(self: pointer, connectionStatus: bool): void {.importc: "QRadioTuner_antennaConnectedChanged".}
proc fcQRadioTuner_connect_antennaConnectedChanged(self: pointer, slot: int, callback: proc (slot: int, connectionStatus: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_antennaConnectedChanged".}
proc fcQRadioTuner_errorWithError(self: pointer, error: cint): void {.importc: "QRadioTuner_errorWithError".}
proc fcQRadioTuner_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTuner_connect_errorWithError".}
proc fcQRadioTuner_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTuner_tr2".}
proc fcQRadioTuner_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTuner_tr3".}
proc fcQRadioTuner_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTuner_trUtf82".}
proc fcQRadioTuner_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTuner_trUtf83".}
proc fcQRadioTuner_searchAllStations1(self: pointer, searchMode: cint): void {.importc: "QRadioTuner_searchAllStations1".}
proc fcQRadioTuner_vtbl(self: pointer): pointer {.importc: "QRadioTuner_vtbl".}
proc fcQRadioTuner_vdata(self: pointer): pointer {.importc: "QRadioTuner_vdata".}

type cQRadioTunerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  availability*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  isAvailable*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  service*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  unbind*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRadioTuner_virtualbase_metaObject(self: pointer): pointer {.importc: "QRadioTuner_virtualbase_metaObject".}
proc fcQRadioTuner_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTuner_virtualbase_metacast".}
proc fcQRadioTuner_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTuner_virtualbase_metacall".}
proc fcQRadioTuner_virtualbase_availability(self: pointer): cint {.importc: "QRadioTuner_virtualbase_availability".}
proc fcQRadioTuner_virtualbase_isAvailable(self: pointer): bool {.importc: "QRadioTuner_virtualbase_isAvailable".}
proc fcQRadioTuner_virtualbase_service(self: pointer): pointer {.importc: "QRadioTuner_virtualbase_service".}
proc fcQRadioTuner_virtualbase_bindX(self: pointer, param1: pointer): bool {.importc: "QRadioTuner_virtualbase_bind".}
proc fcQRadioTuner_virtualbase_unbind(self: pointer, param1: pointer): void {.importc: "QRadioTuner_virtualbase_unbind".}
proc fcQRadioTuner_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRadioTuner_virtualbase_event".}
proc fcQRadioTuner_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRadioTuner_virtualbase_eventFilter".}
proc fcQRadioTuner_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRadioTuner_virtualbase_timerEvent".}
proc fcQRadioTuner_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRadioTuner_virtualbase_childEvent".}
proc fcQRadioTuner_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRadioTuner_virtualbase_customEvent".}
proc fcQRadioTuner_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRadioTuner_virtualbase_connectNotify".}
proc fcQRadioTuner_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRadioTuner_virtualbase_disconnectNotify".}
proc fcQRadioTuner_protectedbase_addPropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QRadioTuner_protectedbase_addPropertyWatch".}
proc fcQRadioTuner_protectedbase_removePropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QRadioTuner_protectedbase_removePropertyWatch".}
proc fcQRadioTuner_protectedbase_sender(self: pointer): pointer {.importc: "QRadioTuner_protectedbase_sender".}
proc fcQRadioTuner_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRadioTuner_protectedbase_senderSignalIndex".}
proc fcQRadioTuner_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioTuner_protectedbase_receivers".}
proc fcQRadioTuner_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioTuner_protectedbase_isSignalConnected".}
proc fcQRadioTuner_new(vtbl, vdata: pointer): ptr cQRadioTuner {.importc: "QRadioTuner_new".}
proc fcQRadioTuner_new2(vtbl, vdata: pointer, parent: pointer): ptr cQRadioTuner {.importc: "QRadioTuner_new2".}
proc fcQRadioTuner_staticMetaObject(): pointer {.importc: "QRadioTuner_staticMetaObject".}

proc metaObject*(self: gen_qradiotuner_types.QRadioTuner): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_metaObject(self.h), owned: false)

proc metacast*(self: gen_qradiotuner_types.QRadioTuner, param1: cstring): pointer =
  fcQRadioTuner_metacast(self.h, param1)

proc metacall*(self: gen_qradiotuner_types.QRadioTuner, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioTuner_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring): string =
  let v_ms = fcQRadioTuner_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring): string =
  let v_ms = fcQRadioTuner_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qradiotuner_types.QRadioTuner): cint =
  cint(fcQRadioTuner_availability(self.h))

proc state*(self: gen_qradiotuner_types.QRadioTuner): cint =
  cint(fcQRadioTuner_state(self.h))

proc band*(self: gen_qradiotuner_types.QRadioTuner): cint =
  cint(fcQRadioTuner_band(self.h))

proc isBandSupported*(self: gen_qradiotuner_types.QRadioTuner, b: cint): bool =
  fcQRadioTuner_isBandSupported(self.h, cint(b))

proc frequency*(self: gen_qradiotuner_types.QRadioTuner): cint =
  fcQRadioTuner_frequency(self.h)

proc frequencyStep*(self: gen_qradiotuner_types.QRadioTuner, band: cint): cint =
  fcQRadioTuner_frequencyStep(self.h, cint(band))

proc frequencyRange*(self: gen_qradiotuner_types.QRadioTuner, band: cint): tuple[first: cint, second: cint] =
  var v_mm = fcQRadioTuner_frequencyRange(self.h, cint(band))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc isStereo*(self: gen_qradiotuner_types.QRadioTuner): bool =
  fcQRadioTuner_isStereo(self.h)

proc setStereoMode*(self: gen_qradiotuner_types.QRadioTuner, mode: cint): void =
  fcQRadioTuner_setStereoMode(self.h, cint(mode))

proc stereoMode*(self: gen_qradiotuner_types.QRadioTuner): cint =
  cint(fcQRadioTuner_stereoMode(self.h))

proc signalStrength*(self: gen_qradiotuner_types.QRadioTuner): cint =
  fcQRadioTuner_signalStrength(self.h)

proc volume*(self: gen_qradiotuner_types.QRadioTuner): cint =
  fcQRadioTuner_volume(self.h)

proc isMuted*(self: gen_qradiotuner_types.QRadioTuner): bool =
  fcQRadioTuner_isMuted(self.h)

proc isSearching*(self: gen_qradiotuner_types.QRadioTuner): bool =
  fcQRadioTuner_isSearching(self.h)

proc isAntennaConnected*(self: gen_qradiotuner_types.QRadioTuner): bool =
  fcQRadioTuner_isAntennaConnected(self.h)

proc error*(self: gen_qradiotuner_types.QRadioTuner): cint =
  cint(fcQRadioTuner_error(self.h))

proc errorString*(self: gen_qradiotuner_types.QRadioTuner): string =
  let v_ms = fcQRadioTuner_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc radioData*(self: gen_qradiotuner_types.QRadioTuner): gen_qradiodata_types.QRadioData =
  gen_qradiodata_types.QRadioData(h: fcQRadioTuner_radioData(self.h), owned: false)

proc searchForward*(self: gen_qradiotuner_types.QRadioTuner): void =
  fcQRadioTuner_searchForward(self.h)

proc searchBackward*(self: gen_qradiotuner_types.QRadioTuner): void =
  fcQRadioTuner_searchBackward(self.h)

proc searchAllStations*(self: gen_qradiotuner_types.QRadioTuner): void =
  fcQRadioTuner_searchAllStations(self.h)

proc cancelSearch*(self: gen_qradiotuner_types.QRadioTuner): void =
  fcQRadioTuner_cancelSearch(self.h)

proc setBand*(self: gen_qradiotuner_types.QRadioTuner, band: cint): void =
  fcQRadioTuner_setBand(self.h, cint(band))

proc setFrequency*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint): void =
  fcQRadioTuner_setFrequency(self.h, frequency)

proc setVolume*(self: gen_qradiotuner_types.QRadioTuner, volume: cint): void =
  fcQRadioTuner_setVolume(self.h, volume)

proc setMuted*(self: gen_qradiotuner_types.QRadioTuner, muted: bool): void =
  fcQRadioTuner_setMuted(self.h, muted)

proc start*(self: gen_qradiotuner_types.QRadioTuner): void =
  fcQRadioTuner_start(self.h)

proc stop*(self: gen_qradiotuner_types.QRadioTuner): void =
  fcQRadioTuner_stop(self.h)

proc stateChanged*(self: gen_qradiotuner_types.QRadioTuner, state: cint): void =
  fcQRadioTuner_stateChanged(self.h, cint(state))

type QRadioTunerstateChangedSlot* = proc(state: cint)
proc fcQRadioTuner_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstateChangedSlot) =
  var tmp = new QRadioTunerstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_stateChanged, fcQRadioTuner_slot_callback_stateChanged_release)

proc bandChanged*(self: gen_qradiotuner_types.QRadioTuner, band: cint): void =
  fcQRadioTuner_bandChanged(self.h, cint(band))

type QRadioTunerbandChangedSlot* = proc(band: cint)
proc fcQRadioTuner_slot_callback_bandChanged(slot: int, band: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerbandChangedSlot](cast[pointer](slot))
  let slotval1 = cint(band)

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_bandChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerbandChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBandChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerbandChangedSlot) =
  var tmp = new QRadioTunerbandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_bandChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_bandChanged, fcQRadioTuner_slot_callback_bandChanged_release)

proc frequencyChanged*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint): void =
  fcQRadioTuner_frequencyChanged(self.h, frequency)

type QRadioTunerfrequencyChangedSlot* = proc(frequency: cint)
proc fcQRadioTuner_slot_callback_frequencyChanged(slot: int, frequency: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerfrequencyChangedSlot](cast[pointer](slot))
  let slotval1 = frequency

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_frequencyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerfrequencyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFrequencyChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerfrequencyChangedSlot) =
  var tmp = new QRadioTunerfrequencyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_frequencyChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_frequencyChanged, fcQRadioTuner_slot_callback_frequencyChanged_release)

proc stereoStatusChanged*(self: gen_qradiotuner_types.QRadioTuner, stereo: bool): void =
  fcQRadioTuner_stereoStatusChanged(self.h, stereo)

type QRadioTunerstereoStatusChangedSlot* = proc(stereo: bool)
proc fcQRadioTuner_slot_callback_stereoStatusChanged(slot: int, stereo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerstereoStatusChangedSlot](cast[pointer](slot))
  let slotval1 = stereo

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_stereoStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerstereoStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStereoStatusChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstereoStatusChangedSlot) =
  var tmp = new QRadioTunerstereoStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_stereoStatusChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_stereoStatusChanged, fcQRadioTuner_slot_callback_stereoStatusChanged_release)

proc searchingChanged*(self: gen_qradiotuner_types.QRadioTuner, searching: bool): void =
  fcQRadioTuner_searchingChanged(self.h, searching)

type QRadioTunersearchingChangedSlot* = proc(searching: bool)
proc fcQRadioTuner_slot_callback_searchingChanged(slot: int, searching: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunersearchingChangedSlot](cast[pointer](slot))
  let slotval1 = searching

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_searchingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunersearchingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSearchingChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunersearchingChangedSlot) =
  var tmp = new QRadioTunersearchingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_searchingChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_searchingChanged, fcQRadioTuner_slot_callback_searchingChanged_release)

proc signalStrengthChanged*(self: gen_qradiotuner_types.QRadioTuner, signalStrength: cint): void =
  fcQRadioTuner_signalStrengthChanged(self.h, signalStrength)

type QRadioTunersignalStrengthChangedSlot* = proc(signalStrength: cint)
proc fcQRadioTuner_slot_callback_signalStrengthChanged(slot: int, signalStrength: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunersignalStrengthChangedSlot](cast[pointer](slot))
  let slotval1 = signalStrength

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_signalStrengthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunersignalStrengthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSignalStrengthChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunersignalStrengthChangedSlot) =
  var tmp = new QRadioTunersignalStrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_signalStrengthChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_signalStrengthChanged, fcQRadioTuner_slot_callback_signalStrengthChanged_release)

proc volumeChanged*(self: gen_qradiotuner_types.QRadioTuner, volume: cint): void =
  fcQRadioTuner_volumeChanged(self.h, volume)

type QRadioTunervolumeChangedSlot* = proc(volume: cint)
proc fcQRadioTuner_slot_callback_volumeChanged(slot: int, volume: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunervolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunervolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVolumeChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunervolumeChangedSlot) =
  var tmp = new QRadioTunervolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_volumeChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_volumeChanged, fcQRadioTuner_slot_callback_volumeChanged_release)

proc mutedChanged*(self: gen_qradiotuner_types.QRadioTuner, muted: bool): void =
  fcQRadioTuner_mutedChanged(self.h, muted)

type QRadioTunermutedChangedSlot* = proc(muted: bool)
proc fcQRadioTuner_slot_callback_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunermutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunermutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMutedChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunermutedChangedSlot) =
  var tmp = new QRadioTunermutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_mutedChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_mutedChanged, fcQRadioTuner_slot_callback_mutedChanged_release)

proc stationFound*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint, stationId: openArray[char]): void =
  fcQRadioTuner_stationFound(self.h, frequency, struct_miqt_string(data: if len(stationId) > 0: addr stationId[0] else: nil, len: csize_t(len(stationId))))

type QRadioTunerstationFoundSlot* = proc(frequency: cint, stationId: openArray[char])
proc fcQRadioTuner_slot_callback_stationFound(slot: int, frequency: cint, stationId: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerstationFoundSlot](cast[pointer](slot))
  let slotval1 = frequency

  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(vstationId_ms)
  c_free(vstationId_ms.data)
  let slotval2 = vstationIdx_ret

  nimfunc[](slotval1, slotval2)

proc fcQRadioTuner_slot_callback_stationFound_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerstationFoundSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStationFound*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstationFoundSlot) =
  var tmp = new QRadioTunerstationFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_stationFound(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_stationFound, fcQRadioTuner_slot_callback_stationFound_release)

proc antennaConnectedChanged*(self: gen_qradiotuner_types.QRadioTuner, connectionStatus: bool): void =
  fcQRadioTuner_antennaConnectedChanged(self.h, connectionStatus)

type QRadioTunerantennaConnectedChangedSlot* = proc(connectionStatus: bool)
proc fcQRadioTuner_slot_callback_antennaConnectedChanged(slot: int, connectionStatus: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerantennaConnectedChangedSlot](cast[pointer](slot))
  let slotval1 = connectionStatus

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_antennaConnectedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerantennaConnectedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAntennaConnectedChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerantennaConnectedChangedSlot) =
  var tmp = new QRadioTunerantennaConnectedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_antennaConnectedChanged(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_antennaConnectedChanged, fcQRadioTuner_slot_callback_antennaConnectedChanged_release)

proc error*(self: gen_qradiotuner_types.QRadioTuner, error: cint): void =
  fcQRadioTuner_errorWithError(self.h, cint(error))

type QRadioTunererrorWithErrorSlot* = proc(error: cint)
proc fcQRadioTuner_slot_callback_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc fcQRadioTuner_slot_callback_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunererrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunererrorWithErrorSlot) =
  var tmp = new QRadioTunererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_errorWithError(self.h, cast[int](addr tmp[]), fcQRadioTuner_slot_callback_errorWithError, fcQRadioTuner_slot_callback_errorWithError_release)

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTuner_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTuner_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTuner_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTuner_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc searchAllStations*(self: gen_qradiotuner_types.QRadioTuner, searchMode: cint): void =
  fcQRadioTuner_searchAllStations1(self.h, cint(searchMode))

type QRadioTunermetaObjectProc* = proc(self: QRadioTuner): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRadioTunermetacastProc* = proc(self: QRadioTuner, param1: cstring): pointer {.raises: [], gcsafe.}
type QRadioTunermetacallProc* = proc(self: QRadioTuner, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRadioTuneravailabilityProc* = proc(self: QRadioTuner): cint {.raises: [], gcsafe.}
type QRadioTunerisAvailableProc* = proc(self: QRadioTuner): bool {.raises: [], gcsafe.}
type QRadioTunerserviceProc* = proc(self: QRadioTuner): gen_qmediaservice_types.QMediaService {.raises: [], gcsafe.}
type QRadioTunerbindXProc* = proc(self: QRadioTuner, param1: gen_qobject_types.QObject): bool {.raises: [], gcsafe.}
type QRadioTunerunbindProc* = proc(self: QRadioTuner, param1: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QRadioTunereventProc* = proc(self: QRadioTuner, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRadioTunereventFilterProc* = proc(self: QRadioTuner, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRadioTunertimerEventProc* = proc(self: QRadioTuner, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRadioTunerchildEventProc* = proc(self: QRadioTuner, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRadioTunercustomEventProc* = proc(self: QRadioTuner, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRadioTunerconnectNotifyProc* = proc(self: QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRadioTunerdisconnectNotifyProc* = proc(self: QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRadioTunerVTable* {.inheritable, pure.} = object
  vtbl: cQRadioTunerVTable
  metaObject*: QRadioTunermetaObjectProc
  metacast*: QRadioTunermetacastProc
  metacall*: QRadioTunermetacallProc
  availability*: QRadioTuneravailabilityProc
  isAvailable*: QRadioTunerisAvailableProc
  service*: QRadioTunerserviceProc
  bindX*: QRadioTunerbindXProc
  unbind*: QRadioTunerunbindProc
  event*: QRadioTunereventProc
  eventFilter*: QRadioTunereventFilterProc
  timerEvent*: QRadioTunertimerEventProc
  childEvent*: QRadioTunerchildEventProc
  customEvent*: QRadioTunercustomEventProc
  connectNotify*: QRadioTunerconnectNotifyProc
  disconnectNotify*: QRadioTunerdisconnectNotifyProc

proc QRadioTunermetaObject*(self: gen_qradiotuner_types.QRadioTuner): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_virtualbase_metaObject(self.h), owned: false)

proc QRadioTunermetacast*(self: gen_qradiotuner_types.QRadioTuner, param1: cstring): pointer =
  fcQRadioTuner_virtualbase_metacast(self.h, param1)

proc QRadioTunermetacall*(self: gen_qradiotuner_types.QRadioTuner, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioTuner_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRadioTuneravailability*(self: gen_qradiotuner_types.QRadioTuner): cint =
  cint(fcQRadioTuner_virtualbase_availability(self.h))

proc QRadioTunerisAvailable*(self: gen_qradiotuner_types.QRadioTuner): bool =
  fcQRadioTuner_virtualbase_isAvailable(self.h)

proc QRadioTunerservice*(self: gen_qradiotuner_types.QRadioTuner): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQRadioTuner_virtualbase_service(self.h), owned: false)

proc QRadioTunerbindX*(self: gen_qradiotuner_types.QRadioTuner, param1: gen_qobject_types.QObject): bool =
  fcQRadioTuner_virtualbase_bindX(self.h, param1.h)

proc QRadioTunerunbind*(self: gen_qradiotuner_types.QRadioTuner, param1: gen_qobject_types.QObject): void =
  fcQRadioTuner_virtualbase_unbind(self.h, param1.h)

proc QRadioTunerevent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioTuner_virtualbase_event(self.h, event.h)

proc QRadioTunereventFilter*(self: gen_qradiotuner_types.QRadioTuner, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioTuner_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRadioTunertimerEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRadioTuner_virtualbase_timerEvent(self.h, event.h)

proc QRadioTunerchildEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRadioTuner_virtualbase_childEvent(self.h, event.h)

proc QRadioTunercustomEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioTuner_virtualbase_customEvent(self.h, event.h)

proc QRadioTunerconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioTuner_virtualbase_connectNotify(self.h, signal.h)

proc QRadioTunerdisconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioTuner_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRadioTuner_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioTuner_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRadioTuner_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioTuner_vtable_callback_availability(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].availability(self)
  cint(virtualReturn)

proc fcQRadioTuner_vtable_callback_isAvailable(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].isAvailable(self)
  virtualReturn

proc fcQRadioTuner_vtable_callback_service(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].service(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioTuner_vtable_callback_bindX(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  var virtualReturn = vtbl[].bindX(self, slotval1)
  virtualReturn

proc fcQRadioTuner_vtable_callback_unbind(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  vtbl[].unbind(self, slotval1)

proc fcQRadioTuner_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRadioTuner_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRadioTuner_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRadioTuner_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRadioTuner_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRadioTuner_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRadioTuner_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](fcQRadioTuner_vdata(self))
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRadioTuner* {.inheritable.} = ref object of QRadioTuner
  vtbl*: cQRadioTunerVTable

method metaObject*(self: VirtualQRadioTuner): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRadioTunermetaObject(self[])
method metacast*(self: VirtualQRadioTuner, param1: cstring): pointer {.base.} =
  QRadioTunermetacast(self[], param1)
method metacall*(self: VirtualQRadioTuner, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRadioTunermetacall(self[], param1, param2, param3)
method availability*(self: VirtualQRadioTuner): cint {.base.} =
  QRadioTuneravailability(self[])
method isAvailable*(self: VirtualQRadioTuner): bool {.base.} =
  QRadioTunerisAvailable(self[])
method service*(self: VirtualQRadioTuner): gen_qmediaservice_types.QMediaService {.base.} =
  QRadioTunerservice(self[])
method bindX*(self: VirtualQRadioTuner, param1: gen_qobject_types.QObject): bool {.base.} =
  QRadioTunerbindX(self[], param1)
method unbind*(self: VirtualQRadioTuner, param1: gen_qobject_types.QObject): void {.base.} =
  QRadioTunerunbind(self[], param1)
method event*(self: VirtualQRadioTuner, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRadioTunerevent(self[], event)
method eventFilter*(self: VirtualQRadioTuner, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRadioTunereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRadioTuner, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRadioTunertimerEvent(self[], event)
method childEvent*(self: VirtualQRadioTuner, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRadioTunerchildEvent(self[], event)
method customEvent*(self: VirtualQRadioTuner, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRadioTunercustomEvent(self[], event)
method connectNotify*(self: VirtualQRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRadioTunerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRadioTunerdisconnectNotify(self[], signal)

proc fcQRadioTuner_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioTuner_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRadioTuner_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRadioTuner_method_callback_availability(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  var virtualReturn = inst.availability()
  cint(virtualReturn)

proc fcQRadioTuner_method_callback_isAvailable(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  var virtualReturn = inst.isAvailable()
  virtualReturn

proc fcQRadioTuner_method_callback_service(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  var virtualReturn = inst.service()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRadioTuner_method_callback_bindX(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  var virtualReturn = inst.bindX(slotval1)
  virtualReturn

proc fcQRadioTuner_method_callback_unbind(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  inst.unbind(slotval1)

proc fcQRadioTuner_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRadioTuner_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRadioTuner_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRadioTuner_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRadioTuner_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRadioTuner_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRadioTuner_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRadioTuner](fcQRadioTuner_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc addPropertyWatch*(self: gen_qradiotuner_types.QRadioTuner, name: openArray[byte]): void =
  fcQRadioTuner_protectedbase_addPropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc removePropertyWatch*(self: gen_qradiotuner_types.QRadioTuner, name: openArray[byte]): void =
  fcQRadioTuner_protectedbase_removePropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc sender*(self: gen_qradiotuner_types.QRadioTuner): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioTuner_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qradiotuner_types.QRadioTuner): cint =
  fcQRadioTuner_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qradiotuner_types.QRadioTuner, signal: cstring): cint =
  fcQRadioTuner_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRadioTuner_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qradiotuner_types.QRadioTuner,
    vtbl: ref QRadioTunerVTable = nil): gen_qradiotuner_types.QRadioTuner =
  let vtbl = if vtbl == nil: new QRadioTunerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioTunerVTable](fcQRadioTuner_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioTuner_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioTuner_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioTuner_vtable_callback_metacall
  if not isNil(vtbl[].availability):
    vtbl[].vtbl.availability = fcQRadioTuner_vtable_callback_availability
  if not isNil(vtbl[].isAvailable):
    vtbl[].vtbl.isAvailable = fcQRadioTuner_vtable_callback_isAvailable
  if not isNil(vtbl[].service):
    vtbl[].vtbl.service = fcQRadioTuner_vtable_callback_service
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = fcQRadioTuner_vtable_callback_bindX
  if not isNil(vtbl[].unbind):
    vtbl[].vtbl.unbind = fcQRadioTuner_vtable_callback_unbind
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioTuner_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioTuner_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioTuner_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioTuner_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioTuner_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioTuner_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioTuner_vtable_callback_disconnectNotify
  gen_qradiotuner_types.QRadioTuner(h: fcQRadioTuner_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qradiotuner_types.QRadioTuner,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRadioTunerVTable = nil): gen_qradiotuner_types.QRadioTuner =
  let vtbl = if vtbl == nil: new QRadioTunerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRadioTunerVTable](fcQRadioTuner_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRadioTuner_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRadioTuner_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRadioTuner_vtable_callback_metacall
  if not isNil(vtbl[].availability):
    vtbl[].vtbl.availability = fcQRadioTuner_vtable_callback_availability
  if not isNil(vtbl[].isAvailable):
    vtbl[].vtbl.isAvailable = fcQRadioTuner_vtable_callback_isAvailable
  if not isNil(vtbl[].service):
    vtbl[].vtbl.service = fcQRadioTuner_vtable_callback_service
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = fcQRadioTuner_vtable_callback_bindX
  if not isNil(vtbl[].unbind):
    vtbl[].vtbl.unbind = fcQRadioTuner_vtable_callback_unbind
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRadioTuner_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRadioTuner_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRadioTuner_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRadioTuner_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRadioTuner_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRadioTuner_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRadioTuner_vtable_callback_disconnectNotify
  gen_qradiotuner_types.QRadioTuner(h: fcQRadioTuner_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQRadioTuner_mvtbl = cQRadioTunerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRadioTuner()[])](self.fcQRadioTuner_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRadioTuner_method_callback_metaObject,
  metacast: fcQRadioTuner_method_callback_metacast,
  metacall: fcQRadioTuner_method_callback_metacall,
  availability: fcQRadioTuner_method_callback_availability,
  isAvailable: fcQRadioTuner_method_callback_isAvailable,
  service: fcQRadioTuner_method_callback_service,
  bindX: fcQRadioTuner_method_callback_bindX,
  unbind: fcQRadioTuner_method_callback_unbind,
  event: fcQRadioTuner_method_callback_event,
  eventFilter: fcQRadioTuner_method_callback_eventFilter,
  timerEvent: fcQRadioTuner_method_callback_timerEvent,
  childEvent: fcQRadioTuner_method_callback_childEvent,
  customEvent: fcQRadioTuner_method_callback_customEvent,
  connectNotify: fcQRadioTuner_method_callback_connectNotify,
  disconnectNotify: fcQRadioTuner_method_callback_disconnectNotify,
)
proc create*(T: type gen_qradiotuner_types.QRadioTuner,
    inst: VirtualQRadioTuner) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioTuner_new(addr(cQRadioTuner_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qradiotuner_types.QRadioTuner,
    parent: gen_qobject_types.QObject,
    inst: VirtualQRadioTuner) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRadioTuner_new2(addr(cQRadioTuner_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qradiotuner_types.QRadioTuner): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_staticMetaObject())
