import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qradiotunercontrol.cpp", cflags).}


import ./gen_qradiotunercontrol_types
export gen_qradiotunercontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQRadioTunerControl*{.exportc: "QRadioTunerControl", incompleteStruct.} = object

proc fcQRadioTunerControl_metaObject(self: pointer, ): pointer {.importc: "QRadioTunerControl_metaObject".}
proc fcQRadioTunerControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioTunerControl_metacast".}
proc fcQRadioTunerControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioTunerControl_metacall".}
proc fcQRadioTunerControl_tr(s: cstring): struct_miqt_string {.importc: "QRadioTunerControl_tr".}
proc fcQRadioTunerControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioTunerControl_trUtf8".}
proc fcQRadioTunerControl_state(self: pointer, ): cint {.importc: "QRadioTunerControl_state".}
proc fcQRadioTunerControl_band(self: pointer, ): cint {.importc: "QRadioTunerControl_band".}
proc fcQRadioTunerControl_setBand(self: pointer, b: cint): void {.importc: "QRadioTunerControl_setBand".}
proc fcQRadioTunerControl_isBandSupported(self: pointer, b: cint): bool {.importc: "QRadioTunerControl_isBandSupported".}
proc fcQRadioTunerControl_frequency(self: pointer, ): cint {.importc: "QRadioTunerControl_frequency".}
proc fcQRadioTunerControl_frequencyStep(self: pointer, b: cint): cint {.importc: "QRadioTunerControl_frequencyStep".}
proc fcQRadioTunerControl_frequencyRange(self: pointer, b: cint): struct_miqt_map {.importc: "QRadioTunerControl_frequencyRange".}
proc fcQRadioTunerControl_setFrequency(self: pointer, frequency: cint): void {.importc: "QRadioTunerControl_setFrequency".}
proc fcQRadioTunerControl_isStereo(self: pointer, ): bool {.importc: "QRadioTunerControl_isStereo".}
proc fcQRadioTunerControl_stereoMode(self: pointer, ): cint {.importc: "QRadioTunerControl_stereoMode".}
proc fcQRadioTunerControl_setStereoMode(self: pointer, mode: cint): void {.importc: "QRadioTunerControl_setStereoMode".}
proc fcQRadioTunerControl_signalStrength(self: pointer, ): cint {.importc: "QRadioTunerControl_signalStrength".}
proc fcQRadioTunerControl_volume(self: pointer, ): cint {.importc: "QRadioTunerControl_volume".}
proc fcQRadioTunerControl_setVolume(self: pointer, volume: cint): void {.importc: "QRadioTunerControl_setVolume".}
proc fcQRadioTunerControl_isMuted(self: pointer, ): bool {.importc: "QRadioTunerControl_isMuted".}
proc fcQRadioTunerControl_setMuted(self: pointer, muted: bool): void {.importc: "QRadioTunerControl_setMuted".}
proc fcQRadioTunerControl_isSearching(self: pointer, ): bool {.importc: "QRadioTunerControl_isSearching".}
proc fcQRadioTunerControl_isAntennaConnected(self: pointer, ): bool {.importc: "QRadioTunerControl_isAntennaConnected".}
proc fcQRadioTunerControl_searchForward(self: pointer, ): void {.importc: "QRadioTunerControl_searchForward".}
proc fcQRadioTunerControl_searchBackward(self: pointer, ): void {.importc: "QRadioTunerControl_searchBackward".}
proc fcQRadioTunerControl_searchAllStations(self: pointer, searchMode: cint): void {.importc: "QRadioTunerControl_searchAllStations".}
proc fcQRadioTunerControl_cancelSearch(self: pointer, ): void {.importc: "QRadioTunerControl_cancelSearch".}
proc fcQRadioTunerControl_start(self: pointer, ): void {.importc: "QRadioTunerControl_start".}
proc fcQRadioTunerControl_stop(self: pointer, ): void {.importc: "QRadioTunerControl_stop".}
proc fcQRadioTunerControl_error(self: pointer, ): cint {.importc: "QRadioTunerControl_error".}
proc fcQRadioTunerControl_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioTunerControl_errorString".}
proc fcQRadioTunerControl_stateChanged(self: pointer, state: cint): void {.importc: "QRadioTunerControl_stateChanged".}
proc fcQRadioTunerControl_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_stateChanged".}
proc fcQRadioTunerControl_bandChanged(self: pointer, band: cint): void {.importc: "QRadioTunerControl_bandChanged".}
proc fcQRadioTunerControl_connect_bandChanged(self: pointer, slot: int, callback: proc (slot: int, band: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_bandChanged".}
proc fcQRadioTunerControl_frequencyChanged(self: pointer, frequency: cint): void {.importc: "QRadioTunerControl_frequencyChanged".}
proc fcQRadioTunerControl_connect_frequencyChanged(self: pointer, slot: int, callback: proc (slot: int, frequency: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_frequencyChanged".}
proc fcQRadioTunerControl_stereoStatusChanged(self: pointer, stereo: bool): void {.importc: "QRadioTunerControl_stereoStatusChanged".}
proc fcQRadioTunerControl_connect_stereoStatusChanged(self: pointer, slot: int, callback: proc (slot: int, stereo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_stereoStatusChanged".}
proc fcQRadioTunerControl_searchingChanged(self: pointer, searching: bool): void {.importc: "QRadioTunerControl_searchingChanged".}
proc fcQRadioTunerControl_connect_searchingChanged(self: pointer, slot: int, callback: proc (slot: int, searching: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_searchingChanged".}
proc fcQRadioTunerControl_signalStrengthChanged(self: pointer, signalStrength: cint): void {.importc: "QRadioTunerControl_signalStrengthChanged".}
proc fcQRadioTunerControl_connect_signalStrengthChanged(self: pointer, slot: int, callback: proc (slot: int, signalStrength: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_signalStrengthChanged".}
proc fcQRadioTunerControl_volumeChanged(self: pointer, volume: cint): void {.importc: "QRadioTunerControl_volumeChanged".}
proc fcQRadioTunerControl_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_volumeChanged".}
proc fcQRadioTunerControl_mutedChanged(self: pointer, muted: bool): void {.importc: "QRadioTunerControl_mutedChanged".}
proc fcQRadioTunerControl_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_mutedChanged".}
proc fcQRadioTunerControl_errorWithErr(self: pointer, err: cint): void {.importc: "QRadioTunerControl_errorWithErr".}
proc fcQRadioTunerControl_connect_errorWithErr(self: pointer, slot: int, callback: proc (slot: int, err: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_errorWithErr".}
proc fcQRadioTunerControl_stationFound(self: pointer, frequency: cint, stationId: struct_miqt_string): void {.importc: "QRadioTunerControl_stationFound".}
proc fcQRadioTunerControl_connect_stationFound(self: pointer, slot: int, callback: proc (slot: int, frequency: cint, stationId: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_stationFound".}
proc fcQRadioTunerControl_antennaConnectedChanged(self: pointer, connectionStatus: bool): void {.importc: "QRadioTunerControl_antennaConnectedChanged".}
proc fcQRadioTunerControl_connect_antennaConnectedChanged(self: pointer, slot: int, callback: proc (slot: int, connectionStatus: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QRadioTunerControl_connect_antennaConnectedChanged".}
proc fcQRadioTunerControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTunerControl_tr2".}
proc fcQRadioTunerControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTunerControl_tr3".}
proc fcQRadioTunerControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioTunerControl_trUtf82".}
proc fcQRadioTunerControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioTunerControl_trUtf83".}
proc fcQRadioTunerControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QRadioTunerControl_protectedbase_sender".}
proc fcQRadioTunerControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QRadioTunerControl_protectedbase_senderSignalIndex".}
proc fcQRadioTunerControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRadioTunerControl_protectedbase_receivers".}
proc fcQRadioTunerControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRadioTunerControl_protectedbase_isSignalConnected".}
proc fcQRadioTunerControl_staticMetaObject(): pointer {.importc: "QRadioTunerControl_staticMetaObject".}
proc fcQRadioTunerControl_delete(self: pointer) {.importc: "QRadioTunerControl_delete".}

proc metaObject*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTunerControl_metaObject(self.h))

proc metacast*(self: gen_qradiotunercontrol_types.QRadioTunerControl, param1: cstring): pointer =
  fcQRadioTunerControl_metacast(self.h, param1)

proc metacall*(self: gen_qradiotunercontrol_types.QRadioTunerControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQRadioTunerControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qradiotunercontrol_types.QRadioTunerControl, s: cstring): string =
  let v_ms = fcQRadioTunerControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotunercontrol_types.QRadioTunerControl, s: cstring): string =
  let v_ms = fcQRadioTunerControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  cint(fcQRadioTunerControl_state(self.h))

proc band*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  cint(fcQRadioTunerControl_band(self.h))

proc setBand*(self: gen_qradiotunercontrol_types.QRadioTunerControl, b: cint): void =
  fcQRadioTunerControl_setBand(self.h, cint(b))

proc isBandSupported*(self: gen_qradiotunercontrol_types.QRadioTunerControl, b: cint): bool =
  fcQRadioTunerControl_isBandSupported(self.h, cint(b))

proc frequency*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  fcQRadioTunerControl_frequency(self.h)

proc frequencyStep*(self: gen_qradiotunercontrol_types.QRadioTunerControl, b: cint): cint =
  fcQRadioTunerControl_frequencyStep(self.h, cint(b))

proc frequencyRange*(self: gen_qradiotunercontrol_types.QRadioTunerControl, b: cint): tuple[first: cint, second: cint] =
  var v_mm = fcQRadioTunerControl_frequencyRange(self.h, cint(b))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc setFrequency*(self: gen_qradiotunercontrol_types.QRadioTunerControl, frequency: cint): void =
  fcQRadioTunerControl_setFrequency(self.h, frequency)

proc isStereo*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): bool =
  fcQRadioTunerControl_isStereo(self.h)

proc stereoMode*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  cint(fcQRadioTunerControl_stereoMode(self.h))

proc setStereoMode*(self: gen_qradiotunercontrol_types.QRadioTunerControl, mode: cint): void =
  fcQRadioTunerControl_setStereoMode(self.h, cint(mode))

proc signalStrength*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  fcQRadioTunerControl_signalStrength(self.h)

proc volume*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  fcQRadioTunerControl_volume(self.h)

proc setVolume*(self: gen_qradiotunercontrol_types.QRadioTunerControl, volume: cint): void =
  fcQRadioTunerControl_setVolume(self.h, volume)

proc isMuted*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): bool =
  fcQRadioTunerControl_isMuted(self.h)

proc setMuted*(self: gen_qradiotunercontrol_types.QRadioTunerControl, muted: bool): void =
  fcQRadioTunerControl_setMuted(self.h, muted)

proc isSearching*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): bool =
  fcQRadioTunerControl_isSearching(self.h)

proc isAntennaConnected*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): bool =
  fcQRadioTunerControl_isAntennaConnected(self.h)

proc searchForward*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): void =
  fcQRadioTunerControl_searchForward(self.h)

proc searchBackward*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): void =
  fcQRadioTunerControl_searchBackward(self.h)

proc searchAllStations*(self: gen_qradiotunercontrol_types.QRadioTunerControl, searchMode: cint): void =
  fcQRadioTunerControl_searchAllStations(self.h, cint(searchMode))

proc cancelSearch*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): void =
  fcQRadioTunerControl_cancelSearch(self.h)

proc start*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): void =
  fcQRadioTunerControl_start(self.h)

proc stop*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): void =
  fcQRadioTunerControl_stop(self.h)

proc error*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  cint(fcQRadioTunerControl_error(self.h))

proc errorString*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): string =
  let v_ms = fcQRadioTunerControl_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stateChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, state: cint): void =
  fcQRadioTunerControl_stateChanged(self.h, cint(state))

type QRadioTunerControlstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQRadioTunerControl_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlstateChangedSlot) =
  var tmp = new QRadioTunerControlstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_stateChanged, miqt_exec_callback_cQRadioTunerControl_stateChanged_release)

proc bandChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, band: cint): void =
  fcQRadioTunerControl_bandChanged(self.h, cint(band))

type QRadioTunerControlbandChangedSlot* = proc(band: cint)
proc miqt_exec_callback_cQRadioTunerControl_bandChanged(slot: int, band: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlbandChangedSlot](cast[pointer](slot))
  let slotval1 = cint(band)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_bandChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlbandChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbandChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlbandChangedSlot) =
  var tmp = new QRadioTunerControlbandChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_bandChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_bandChanged, miqt_exec_callback_cQRadioTunerControl_bandChanged_release)

proc frequencyChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, frequency: cint): void =
  fcQRadioTunerControl_frequencyChanged(self.h, frequency)

type QRadioTunerControlfrequencyChangedSlot* = proc(frequency: cint)
proc miqt_exec_callback_cQRadioTunerControl_frequencyChanged(slot: int, frequency: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlfrequencyChangedSlot](cast[pointer](slot))
  let slotval1 = frequency

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_frequencyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlfrequencyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfrequencyChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlfrequencyChangedSlot) =
  var tmp = new QRadioTunerControlfrequencyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_frequencyChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_frequencyChanged, miqt_exec_callback_cQRadioTunerControl_frequencyChanged_release)

proc stereoStatusChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, stereo: bool): void =
  fcQRadioTunerControl_stereoStatusChanged(self.h, stereo)

type QRadioTunerControlstereoStatusChangedSlot* = proc(stereo: bool)
proc miqt_exec_callback_cQRadioTunerControl_stereoStatusChanged(slot: int, stereo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlstereoStatusChangedSlot](cast[pointer](slot))
  let slotval1 = stereo

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_stereoStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlstereoStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstereoStatusChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlstereoStatusChangedSlot) =
  var tmp = new QRadioTunerControlstereoStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_stereoStatusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_stereoStatusChanged, miqt_exec_callback_cQRadioTunerControl_stereoStatusChanged_release)

proc searchingChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, searching: bool): void =
  fcQRadioTunerControl_searchingChanged(self.h, searching)

type QRadioTunerControlsearchingChangedSlot* = proc(searching: bool)
proc miqt_exec_callback_cQRadioTunerControl_searchingChanged(slot: int, searching: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlsearchingChangedSlot](cast[pointer](slot))
  let slotval1 = searching

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_searchingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlsearchingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsearchingChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlsearchingChangedSlot) =
  var tmp = new QRadioTunerControlsearchingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_searchingChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_searchingChanged, miqt_exec_callback_cQRadioTunerControl_searchingChanged_release)

proc signalStrengthChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, signalStrength: cint): void =
  fcQRadioTunerControl_signalStrengthChanged(self.h, signalStrength)

type QRadioTunerControlsignalStrengthChangedSlot* = proc(signalStrength: cint)
proc miqt_exec_callback_cQRadioTunerControl_signalStrengthChanged(slot: int, signalStrength: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlsignalStrengthChangedSlot](cast[pointer](slot))
  let slotval1 = signalStrength

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_signalStrengthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlsignalStrengthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsignalStrengthChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlsignalStrengthChangedSlot) =
  var tmp = new QRadioTunerControlsignalStrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_signalStrengthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_signalStrengthChanged, miqt_exec_callback_cQRadioTunerControl_signalStrengthChanged_release)

proc volumeChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, volume: cint): void =
  fcQRadioTunerControl_volumeChanged(self.h, volume)

type QRadioTunerControlvolumeChangedSlot* = proc(volume: cint)
proc miqt_exec_callback_cQRadioTunerControl_volumeChanged(slot: int, volume: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlvolumeChangedSlot) =
  var tmp = new QRadioTunerControlvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_volumeChanged, miqt_exec_callback_cQRadioTunerControl_volumeChanged_release)

proc mutedChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, muted: bool): void =
  fcQRadioTunerControl_mutedChanged(self.h, muted)

type QRadioTunerControlmutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQRadioTunerControl_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlmutedChangedSlot) =
  var tmp = new QRadioTunerControlmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_mutedChanged, miqt_exec_callback_cQRadioTunerControl_mutedChanged_release)

proc error*(self: gen_qradiotunercontrol_types.QRadioTunerControl, err: cint): void =
  fcQRadioTunerControl_errorWithErr(self.h, cint(err))

type QRadioTunerControlerrorWithErrSlot* = proc(err: cint)
proc miqt_exec_callback_cQRadioTunerControl_errorWithErr(slot: int, err: cint) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlerrorWithErrSlot](cast[pointer](slot))
  let slotval1 = cint(err)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_errorWithErr_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlerrorWithErrSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlerrorWithErrSlot) =
  var tmp = new QRadioTunerControlerrorWithErrSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_errorWithErr(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_errorWithErr, miqt_exec_callback_cQRadioTunerControl_errorWithErr_release)

proc stationFound*(self: gen_qradiotunercontrol_types.QRadioTunerControl, frequency: cint, stationId: string): void =
  fcQRadioTunerControl_stationFound(self.h, frequency, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

type QRadioTunerControlstationFoundSlot* = proc(frequency: cint, stationId: string)
proc miqt_exec_callback_cQRadioTunerControl_stationFound(slot: int, frequency: cint, stationId: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlstationFoundSlot](cast[pointer](slot))
  let slotval1 = frequency

  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval2 = vstationIdx_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQRadioTunerControl_stationFound_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlstationFoundSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstationFound*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlstationFoundSlot) =
  var tmp = new QRadioTunerControlstationFoundSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_stationFound(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_stationFound, miqt_exec_callback_cQRadioTunerControl_stationFound_release)

proc antennaConnectedChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, connectionStatus: bool): void =
  fcQRadioTunerControl_antennaConnectedChanged(self.h, connectionStatus)

type QRadioTunerControlantennaConnectedChangedSlot* = proc(connectionStatus: bool)
proc miqt_exec_callback_cQRadioTunerControl_antennaConnectedChanged(slot: int, connectionStatus: bool) {.cdecl.} =
  let nimfunc = cast[ptr QRadioTunerControlantennaConnectedChangedSlot](cast[pointer](slot))
  let slotval1 = connectionStatus

  nimfunc[](slotval1)

proc miqt_exec_callback_cQRadioTunerControl_antennaConnectedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QRadioTunerControlantennaConnectedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onantennaConnectedChanged*(self: gen_qradiotunercontrol_types.QRadioTunerControl, slot: QRadioTunerControlantennaConnectedChangedSlot) =
  var tmp = new QRadioTunerControlantennaConnectedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioTunerControl_connect_antennaConnectedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQRadioTunerControl_antennaConnectedChanged, miqt_exec_callback_cQRadioTunerControl_antennaConnectedChanged_release)

proc tr*(_: type gen_qradiotunercontrol_types.QRadioTunerControl, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTunerControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiotunercontrol_types.QRadioTunerControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTunerControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotunercontrol_types.QRadioTunerControl, s: cstring, c: cstring): string =
  let v_ms = fcQRadioTunerControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiotunercontrol_types.QRadioTunerControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioTunerControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRadioTunerControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qradiotunercontrol_types.QRadioTunerControl, ): cint =
  fcQRadioTunerControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qradiotunercontrol_types.QRadioTunerControl, signal: cstring): cint =
  fcQRadioTunerControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qradiotunercontrol_types.QRadioTunerControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRadioTunerControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qradiotunercontrol_types.QRadioTunerControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioTunerControl_staticMetaObject())
proc delete*(self: gen_qradiotunercontrol_types.QRadioTunerControl) =
  fcQRadioTunerControl_delete(self.h)
