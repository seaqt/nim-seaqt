import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qradiotuner.cpp", cflags).}


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

proc fcQRadioTuner_metaObject(self: pointer, ): pointer {.importc: "QRadioTuner_metaObject".}
proc fcQRadioTuner_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTuner_metacast".}
proc fcQRadioTuner_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTuner_metacall".}
proc fcQRadioTuner_tr(s: cstring): struct_miqt_string {.importc: "QRadioTuner_tr".}
proc fcQRadioTuner_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioTuner_trUtf8".}
proc fcQRadioTuner_availability(self: pointer, ): cint {.importc: "QRadioTuner_availability".}
proc fcQRadioTuner_state(self: pointer, ): cint {.importc: "QRadioTuner_state".}
proc fcQRadioTuner_band(self: pointer, ): cint {.importc: "QRadioTuner_band".}
proc fcQRadioTuner_isBandSupported(self: pointer, b: cint): bool {.importc: "QRadioTuner_isBandSupported".}
proc fcQRadioTuner_frequency(self: pointer, ): cint {.importc: "QRadioTuner_frequency".}
proc fcQRadioTuner_frequencyStep(self: pointer, band: cint): cint {.importc: "QRadioTuner_frequencyStep".}
proc fcQRadioTuner_frequencyRange(self: pointer, band: cint): struct_miqt_map {.importc: "QRadioTuner_frequencyRange".}
proc fcQRadioTuner_isStereo(self: pointer, ): bool {.importc: "QRadioTuner_isStereo".}
proc fcQRadioTuner_setStereoMode(self: pointer, mode: cint): void {.importc: "QRadioTuner_setStereoMode".}
proc fcQRadioTuner_stereoMode(self: pointer, ): cint {.importc: "QRadioTuner_stereoMode".}
proc fcQRadioTuner_signalStrength(self: pointer, ): cint {.importc: "QRadioTuner_signalStrength".}
proc fcQRadioTuner_volume(self: pointer, ): cint {.importc: "QRadioTuner_volume".}
proc fcQRadioTuner_isMuted(self: pointer, ): bool {.importc: "QRadioTuner_isMuted".}
proc fcQRadioTuner_isSearching(self: pointer, ): bool {.importc: "QRadioTuner_isSearching".}
proc fcQRadioTuner_isAntennaConnected(self: pointer, ): bool {.importc: "QRadioTuner_isAntennaConnected".}
proc fcQRadioTuner_error(self: pointer, ): cint {.importc: "QRadioTuner_error".}
proc fcQRadioTuner_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioTuner_errorString".}
proc fcQRadioTuner_radioData(self: pointer, ): pointer {.importc: "QRadioTuner_radioData".}
proc fcQRadioTuner_searchForward(self: pointer, ): void {.importc: "QRadioTuner_searchForward".}
proc fcQRadioTuner_searchBackward(self: pointer, ): void {.importc: "QRadioTuner_searchBackward".}
proc fcQRadioTuner_searchAllStations(self: pointer, ): void {.importc: "QRadioTuner_searchAllStations".}
proc fcQRadioTuner_cancelSearch(self: pointer, ): void {.importc: "QRadioTuner_cancelSearch".}
proc fcQRadioTuner_setBand(self: pointer, band: cint): void {.importc: "QRadioTuner_setBand".}
proc fcQRadioTuner_setFrequency(self: pointer, frequency: cint): void {.importc: "QRadioTuner_setFrequency".}
proc fcQRadioTuner_setVolume(self: pointer, volume: cint): void {.importc: "QRadioTuner_setVolume".}
proc fcQRadioTuner_setMuted(self: pointer, muted: bool): void {.importc: "QRadioTuner_setMuted".}
proc fcQRadioTuner_start(self: pointer, ): void {.importc: "QRadioTuner_start".}
proc fcQRadioTuner_stop(self: pointer, ): void {.importc: "QRadioTuner_stop".}
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
type cQRadioTunerVTable = object
  destructor*: proc(vtbl: ptr cQRadioTunerVTable, self: ptr cQRadioTuner) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  availability*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isAvailable*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  service*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  unbind*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRadioTuner_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QRadioTuner_virtualbase_metaObject".}
proc fcQRadioTuner_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTuner_virtualbase_metacast".}
proc fcQRadioTuner_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTuner_virtualbase_metacall".}
proc fcQRadioTuner_virtualbase_availability(self: pointer, ): cint {.importc: "QRadioTuner_virtualbase_availability".}
proc fcQRadioTuner_virtualbase_isAvailable(self: pointer, ): bool {.importc: "QRadioTuner_virtualbase_isAvailable".}
proc fcQRadioTuner_virtualbase_service(self: pointer, ): pointer {.importc: "QRadioTuner_virtualbase_service".}
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
proc fcQRadioTuner_protectedbase_sender(self: pointer, ): pointer {.importc: "QRadioTuner_protectedbase_sender".}
proc fcQRadioTuner_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QRadioTuner_protectedbase_senderSignalIndex".}
proc fcQRadioTuner_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioTuner_protectedbase_receivers".}
proc fcQRadioTuner_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioTuner_protectedbase_isSignalConnected".}
proc fcQRadioTuner_new(vtbl: pointer, ): ptr cQRadioTuner {.importc: "QRadioTuner_new".}
proc fcQRadioTuner_new2(vtbl: pointer, parent: pointer): ptr cQRadioTuner {.importc: "QRadioTuner_new2".}
proc fcQRadioTuner_staticMetaObject(): pointer {.importc: "QRadioTuner_staticMetaObject".}
proc fcQRadioTuner_delete(self: pointer) {.importc: "QRadioTuner_delete".}

proc metaObject*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_metaObject(self.h))

proc metacast*(self: gen_qradiotuner_types.QRadioTuner, param1: cstring): pointer =
  fcQRadioTuner_metacast(self.h, param1)

proc metacall*(self: gen_qradiotuner_types.QRadioTuner, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioTuner_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring): string =
  let v_ms = fcQRadioTuner_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring): string =
  let v_ms = fcQRadioTuner_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_availability(self.h))

proc state*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_state(self.h))

proc band*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_band(self.h))

proc isBandSupported*(self: gen_qradiotuner_types.QRadioTuner, b: cint): bool =
  fcQRadioTuner_isBandSupported(self.h, cint(b))

proc frequency*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_frequency(self.h)

proc frequencyStep*(self: gen_qradiotuner_types.QRadioTuner, band: cint): cint =
  fcQRadioTuner_frequencyStep(self.h, cint(band))

proc frequencyRange*(self: gen_qradiotuner_types.QRadioTuner, band: cint): tuple[first: cint, second: cint] =
  var v_mm = fcQRadioTuner_frequencyRange(self.h, cint(band))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc isStereo*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isStereo(self.h)

proc setStereoMode*(self: gen_qradiotuner_types.QRadioTuner, mode: cint): void =
  fcQRadioTuner_setStereoMode(self.h, cint(mode))

proc stereoMode*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_stereoMode(self.h))

proc signalStrength*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_signalStrength(self.h)

proc volume*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_volume(self.h)

proc isMuted*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isMuted(self.h)

proc isSearching*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isSearching(self.h)

proc isAntennaConnected*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_isAntennaConnected(self.h)

proc error*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_error(self.h))

proc errorString*(self: gen_qradiotuner_types.QRadioTuner, ): string =
  let v_ms = fcQRadioTuner_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc radioData*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qradiodata_types.QRadioData =
  gen_qradiodata_types.QRadioData(h: fcQRadioTuner_radioData(self.h))

proc searchForward*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_searchForward(self.h)

proc searchBackward*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_searchBackward(self.h)

proc searchAllStations*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_searchAllStations(self.h)

proc cancelSearch*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_cancelSearch(self.h)

proc setBand*(self: gen_qradiotuner_types.QRadioTuner, band: cint): void =
  fcQRadioTuner_setBand(self.h, cint(band))

proc setFrequency*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint): void =
  fcQRadioTuner_setFrequency(self.h, frequency)

proc setVolume*(self: gen_qradiotuner_types.QRadioTuner, volume: cint): void =
  fcQRadioTuner_setVolume(self.h, volume)

proc setMuted*(self: gen_qradiotuner_types.QRadioTuner, muted: bool): void =
  fcQRadioTuner_setMuted(self.h, muted)

proc start*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_start(self.h)

proc stop*(self: gen_qradiotuner_types.QRadioTuner, ): void =
  fcQRadioTuner_stop(self.h)

proc stateChanged*(self: gen_qradiotuner_types.QRadioTuner, state: cint): void =
  fcQRadioTuner_stateChanged(self.h, cint(state))

type QRadioTunerstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQRadioTuner_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstateChangedSlot) =
  var tmp = new QRadioTunerstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_stateChanged, miqt_exec_callback_cQRadioTuner_stateChanged_release)

proc bandChanged*(self: gen_qradiotuner_types.QRadioTuner, band: cint): void =
  fcQRadioTuner_bandChanged(self.h, cint(band))

type QRadioTunerbandChangedSlot* = proc(band: cint)
proc miqt_exec_callback_cQRadioTuner_bandChanged(slot: int, band: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerbandChangedSlot](cast[pointer](slot))
  let slotval1 = cint(band)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_bandChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerbandChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbandChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerbandChangedSlot) =
  var tmp = new QRadioTunerbandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_bandChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_bandChanged, miqt_exec_callback_cQRadioTuner_bandChanged_release)

proc frequencyChanged*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint): void =
  fcQRadioTuner_frequencyChanged(self.h, frequency)

type QRadioTunerfrequencyChangedSlot* = proc(frequency: cint)
proc miqt_exec_callback_cQRadioTuner_frequencyChanged(slot: int, frequency: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerfrequencyChangedSlot](cast[pointer](slot))
  let slotval1 = frequency

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_frequencyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerfrequencyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfrequencyChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerfrequencyChangedSlot) =
  var tmp = new QRadioTunerfrequencyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_frequencyChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_frequencyChanged, miqt_exec_callback_cQRadioTuner_frequencyChanged_release)

proc stereoStatusChanged*(self: gen_qradiotuner_types.QRadioTuner, stereo: bool): void =
  fcQRadioTuner_stereoStatusChanged(self.h, stereo)

type QRadioTunerstereoStatusChangedSlot* = proc(stereo: bool)
proc miqt_exec_callback_cQRadioTuner_stereoStatusChanged(slot: int, stereo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerstereoStatusChangedSlot](cast[pointer](slot))
  let slotval1 = stereo

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_stereoStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerstereoStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstereoStatusChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstereoStatusChangedSlot) =
  var tmp = new QRadioTunerstereoStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_stereoStatusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_stereoStatusChanged, miqt_exec_callback_cQRadioTuner_stereoStatusChanged_release)

proc searchingChanged*(self: gen_qradiotuner_types.QRadioTuner, searching: bool): void =
  fcQRadioTuner_searchingChanged(self.h, searching)

type QRadioTunersearchingChangedSlot* = proc(searching: bool)
proc miqt_exec_callback_cQRadioTuner_searchingChanged(slot: int, searching: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunersearchingChangedSlot](cast[pointer](slot))
  let slotval1 = searching

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_searchingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunersearchingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsearchingChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunersearchingChangedSlot) =
  var tmp = new QRadioTunersearchingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_searchingChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_searchingChanged, miqt_exec_callback_cQRadioTuner_searchingChanged_release)

proc signalStrengthChanged*(self: gen_qradiotuner_types.QRadioTuner, signalStrength: cint): void =
  fcQRadioTuner_signalStrengthChanged(self.h, signalStrength)

type QRadioTunersignalStrengthChangedSlot* = proc(signalStrength: cint)
proc miqt_exec_callback_cQRadioTuner_signalStrengthChanged(slot: int, signalStrength: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunersignalStrengthChangedSlot](cast[pointer](slot))
  let slotval1 = signalStrength

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_signalStrengthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunersignalStrengthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsignalStrengthChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunersignalStrengthChangedSlot) =
  var tmp = new QRadioTunersignalStrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_signalStrengthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_signalStrengthChanged, miqt_exec_callback_cQRadioTuner_signalStrengthChanged_release)

proc volumeChanged*(self: gen_qradiotuner_types.QRadioTuner, volume: cint): void =
  fcQRadioTuner_volumeChanged(self.h, volume)

type QRadioTunervolumeChangedSlot* = proc(volume: cint)
proc miqt_exec_callback_cQRadioTuner_volumeChanged(slot: int, volume: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunervolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunervolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunervolumeChangedSlot) =
  var tmp = new QRadioTunervolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_volumeChanged, miqt_exec_callback_cQRadioTuner_volumeChanged_release)

proc mutedChanged*(self: gen_qradiotuner_types.QRadioTuner, muted: bool): void =
  fcQRadioTuner_mutedChanged(self.h, muted)

type QRadioTunermutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQRadioTuner_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunermutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunermutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunermutedChangedSlot) =
  var tmp = new QRadioTunermutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_mutedChanged, miqt_exec_callback_cQRadioTuner_mutedChanged_release)

proc stationFound*(self: gen_qradiotuner_types.QRadioTuner, frequency: cint, stationId: string): void =
  fcQRadioTuner_stationFound(self.h, frequency, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

type QRadioTunerstationFoundSlot* = proc(frequency: cint, stationId: string)
proc miqt_exec_callback_cQRadioTuner_stationFound(slot: int, frequency: cint, stationId: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerstationFoundSlot](cast[pointer](slot))
  let slotval1 = frequency

  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval2 = vstationIdx_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQRadioTuner_stationFound_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerstationFoundSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstationFound*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerstationFoundSlot) =
  var tmp = new QRadioTunerstationFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_stationFound(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_stationFound, miqt_exec_callback_cQRadioTuner_stationFound_release)

proc antennaConnectedChanged*(self: gen_qradiotuner_types.QRadioTuner, connectionStatus: bool): void =
  fcQRadioTuner_antennaConnectedChanged(self.h, connectionStatus)

type QRadioTunerantennaConnectedChangedSlot* = proc(connectionStatus: bool)
proc miqt_exec_callback_cQRadioTuner_antennaConnectedChanged(slot: int, connectionStatus: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerantennaConnectedChangedSlot](cast[pointer](slot))
  let slotval1 = connectionStatus

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_antennaConnectedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerantennaConnectedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onantennaConnectedChanged*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunerantennaConnectedChangedSlot) =
  var tmp = new QRadioTunerantennaConnectedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_antennaConnectedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_antennaConnectedChanged, miqt_exec_callback_cQRadioTuner_antennaConnectedChanged_release)

proc error*(self: gen_qradiotuner_types.QRadioTuner, error: cint): void =
  fcQRadioTuner_errorWithError(self.h, cint(error))

type QRadioTunererrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_cQRadioTuner_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTuner_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunererrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qradiotuner_types.QRadioTuner, slot: QRadioTunererrorWithErrorSlot) =
  var tmp = new QRadioTunererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTuner_connect_errorWithError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTuner_errorWithError, miqt_exec_callback_cQRadioTuner_errorWithError_release)

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTuner_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTuner_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTuner_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotuner_types.QRadioTuner, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTuner_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QRadioTunerVTable* = object
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
proc QRadioTunermetaObject*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQRadioTuner_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QRadioTunermetacast*(self: gen_qradiotuner_types.QRadioTuner, param1: cstring): pointer =
  fcQRadioTuner_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQRadioTuner_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRadioTunermetacall*(self: gen_qradiotuner_types.QRadioTuner, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioTuner_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQRadioTuner_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRadioTuneravailability*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  cint(fcQRadioTuner_virtualbase_availability(self.h))

proc miqt_exec_callback_cQRadioTuner_availability(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].availability(self)
  cint(virtualReturn)

proc QRadioTunerisAvailable*(self: gen_qradiotuner_types.QRadioTuner, ): bool =
  fcQRadioTuner_virtualbase_isAvailable(self.h)

proc miqt_exec_callback_cQRadioTuner_isAvailable(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].isAvailable(self)
  virtualReturn

proc QRadioTunerservice*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQRadioTuner_virtualbase_service(self.h))

proc miqt_exec_callback_cQRadioTuner_service(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  var virtualReturn = vtbl[].service(self)
  virtualReturn.h

proc QRadioTunerbindX*(self: gen_qradiotuner_types.QRadioTuner, param1: gen_qobject_types.QObject): bool =
  fcQRadioTuner_virtualbase_bindX(self.h, param1.h)

proc miqt_exec_callback_cQRadioTuner_bindX(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  var virtualReturn = vtbl[].bindX(self, slotval1)
  virtualReturn

proc QRadioTunerunbind*(self: gen_qradiotuner_types.QRadioTuner, param1: gen_qobject_types.QObject): void =
  fcQRadioTuner_virtualbase_unbind(self.h, param1.h)

proc miqt_exec_callback_cQRadioTuner_unbind(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  vtbl[].unbind(self, slotval1)

proc QRadioTunerevent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioTuner_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQRadioTuner_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRadioTunereventFilter*(self: gen_qradiotuner_types.QRadioTuner, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRadioTuner_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQRadioTuner_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRadioTunertimerEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRadioTuner_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioTuner_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QRadioTunerchildEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRadioTuner_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioTuner_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QRadioTunercustomEvent*(self: gen_qradiotuner_types.QRadioTuner, event: gen_qcoreevent_types.QEvent): void =
  fcQRadioTuner_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQRadioTuner_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QRadioTunerconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioTuner_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRadioTuner_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QRadioTunerdisconnectNotify*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRadioTuner_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRadioTuner_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRadioTunerVTable](vtbl)
  let self = QRadioTuner(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc addPropertyWatch*(self: gen_qradiotuner_types.QRadioTuner, name: seq[byte]): void =
  fcQRadioTuner_protectedbase_addPropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc removePropertyWatch*(self: gen_qradiotuner_types.QRadioTuner, name: seq[byte]): void =
  fcQRadioTuner_protectedbase_removePropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc sender*(self: gen_qradiotuner_types.QRadioTuner, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioTuner_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qradiotuner_types.QRadioTuner, ): cint =
  fcQRadioTuner_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qradiotuner_types.QRadioTuner, signal: cstring): cint =
  fcQRadioTuner_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qradiotuner_types.QRadioTuner, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRadioTuner_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qradiotuner_types.QRadioTuner,
    vtbl: ref QRadioTunerVTable = nil): gen_qradiotuner_types.QRadioTuner =
  let vtbl = if vtbl == nil: new QRadioTunerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioTunerVTable, _: ptr cQRadioTuner) {.cdecl.} =
    let vtbl = cast[ref QRadioTunerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioTuner_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioTuner_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioTuner_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQRadioTuner_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQRadioTuner_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQRadioTuner_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQRadioTuner_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQRadioTuner_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioTuner_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioTuner_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioTuner_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioTuner_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioTuner_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioTuner_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioTuner_disconnectNotify
  gen_qradiotuner_types.QRadioTuner(h: fcQRadioTuner_new(addr(vtbl[]), ))

proc create*(T: type gen_qradiotuner_types.QRadioTuner,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRadioTunerVTable = nil): gen_qradiotuner_types.QRadioTuner =
  let vtbl = if vtbl == nil: new QRadioTunerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRadioTunerVTable, _: ptr cQRadioTuner) {.cdecl.} =
    let vtbl = cast[ref QRadioTunerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRadioTuner_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRadioTuner_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRadioTuner_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQRadioTuner_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQRadioTuner_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQRadioTuner_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQRadioTuner_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQRadioTuner_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRadioTuner_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRadioTuner_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRadioTuner_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRadioTuner_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRadioTuner_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRadioTuner_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRadioTuner_disconnectNotify
  gen_qradiotuner_types.QRadioTuner(h: fcQRadioTuner_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qradiotuner_types.QRadioTuner): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTuner_staticMetaObject())
proc delete*(self: gen_qradiotuner_types.QRadioTuner) =
  fcQRadioTuner_delete(self.h)
