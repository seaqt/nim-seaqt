import ./qtspatialaudio_pkg

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


{.compile("gen_qaudioengine.cpp", QtSpatialAudioCFlags).}


type QAudioEngineOutputModeEnum* = distinct cint
template Surround*(_: type QAudioEngineOutputModeEnum): untyped = 0
template Stereo*(_: type QAudioEngineOutputModeEnum): untyped = 1
template Headphone*(_: type QAudioEngineOutputModeEnum): untyped = 2


import ./gen_qaudioengine_types
export gen_qaudioengine_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtMultimedia/gen_qaudiodevice_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiodevice_types

type cQAudioEngine*{.exportc: "QAudioEngine", incompleteStruct.} = object

proc fcQAudioEngine_metaObject(self: pointer): pointer {.importc: "QAudioEngine_metaObject".}
proc fcQAudioEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioEngine_metacast".}
proc fcQAudioEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioEngine_metacall".}
proc fcQAudioEngine_tr(s: cstring): struct_miqt_string {.importc: "QAudioEngine_tr".}
proc fcQAudioEngine_setOutputMode(self: pointer, mode: cint): void {.importc: "QAudioEngine_setOutputMode".}
proc fcQAudioEngine_outputMode(self: pointer): cint {.importc: "QAudioEngine_outputMode".}
proc fcQAudioEngine_sampleRate(self: pointer): cint {.importc: "QAudioEngine_sampleRate".}
proc fcQAudioEngine_setOutputDevice(self: pointer, device: pointer): void {.importc: "QAudioEngine_setOutputDevice".}
proc fcQAudioEngine_outputDevice(self: pointer): pointer {.importc: "QAudioEngine_outputDevice".}
proc fcQAudioEngine_setMasterVolume(self: pointer, volume: float32): void {.importc: "QAudioEngine_setMasterVolume".}
proc fcQAudioEngine_masterVolume(self: pointer): float32 {.importc: "QAudioEngine_masterVolume".}
proc fcQAudioEngine_setPaused(self: pointer, paused: bool): void {.importc: "QAudioEngine_setPaused".}
proc fcQAudioEngine_paused(self: pointer): bool {.importc: "QAudioEngine_paused".}
proc fcQAudioEngine_setRoomEffectsEnabled(self: pointer, enabled: bool): void {.importc: "QAudioEngine_setRoomEffectsEnabled".}
proc fcQAudioEngine_roomEffectsEnabled(self: pointer): bool {.importc: "QAudioEngine_roomEffectsEnabled".}
proc fcQAudioEngine_setDistanceScale(self: pointer, scale: float32): void {.importc: "QAudioEngine_setDistanceScale".}
proc fcQAudioEngine_distanceScale(self: pointer): float32 {.importc: "QAudioEngine_distanceScale".}
proc fcQAudioEngine_outputModeChanged(self: pointer): void {.importc: "QAudioEngine_outputModeChanged".}
proc fcQAudioEngine_connect_outputModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioEngine_connect_outputModeChanged".}
proc fcQAudioEngine_outputDeviceChanged(self: pointer): void {.importc: "QAudioEngine_outputDeviceChanged".}
proc fcQAudioEngine_connect_outputDeviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioEngine_connect_outputDeviceChanged".}
proc fcQAudioEngine_masterVolumeChanged(self: pointer): void {.importc: "QAudioEngine_masterVolumeChanged".}
proc fcQAudioEngine_connect_masterVolumeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioEngine_connect_masterVolumeChanged".}
proc fcQAudioEngine_pausedChanged(self: pointer): void {.importc: "QAudioEngine_pausedChanged".}
proc fcQAudioEngine_connect_pausedChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioEngine_connect_pausedChanged".}
proc fcQAudioEngine_distanceScaleChanged(self: pointer): void {.importc: "QAudioEngine_distanceScaleChanged".}
proc fcQAudioEngine_connect_distanceScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioEngine_connect_distanceScaleChanged".}
proc fcQAudioEngine_start(self: pointer): void {.importc: "QAudioEngine_start".}
proc fcQAudioEngine_stop(self: pointer): void {.importc: "QAudioEngine_stop".}
proc fcQAudioEngine_pause(self: pointer): void {.importc: "QAudioEngine_pause".}
proc fcQAudioEngine_resume(self: pointer): void {.importc: "QAudioEngine_resume".}
proc fcQAudioEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioEngine_tr2".}
proc fcQAudioEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioEngine_tr3".}
proc fcQAudioEngine_vtbl(self: pointer): pointer {.importc: "QAudioEngine_vtbl".}
proc fcQAudioEngine_vdata(self: pointer): pointer {.importc: "QAudioEngine_vdata".}

type cQAudioEngineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioEngine_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioEngine_virtualbase_metaObject".}
proc fcQAudioEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioEngine_virtualbase_metacast".}
proc fcQAudioEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioEngine_virtualbase_metacall".}
proc fcQAudioEngine_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioEngine_virtualbase_event".}
proc fcQAudioEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioEngine_virtualbase_eventFilter".}
proc fcQAudioEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioEngine_virtualbase_timerEvent".}
proc fcQAudioEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioEngine_virtualbase_childEvent".}
proc fcQAudioEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioEngine_virtualbase_customEvent".}
proc fcQAudioEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioEngine_virtualbase_connectNotify".}
proc fcQAudioEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioEngine_virtualbase_disconnectNotify".}
proc fcQAudioEngine_protectedbase_sender(self: pointer): pointer {.importc: "QAudioEngine_protectedbase_sender".}
proc fcQAudioEngine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioEngine_protectedbase_senderSignalIndex".}
proc fcQAudioEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioEngine_protectedbase_receivers".}
proc fcQAudioEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioEngine_protectedbase_isSignalConnected".}
proc fcQAudioEngine_new(vtbl, vdata: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new".}
proc fcQAudioEngine_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new2".}
proc fcQAudioEngine_new3(vtbl, vdata: pointer, sampleRate: cint): ptr cQAudioEngine {.importc: "QAudioEngine_new3".}
proc fcQAudioEngine_new4(vtbl, vdata: pointer, sampleRate: cint, parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new4".}
proc fcQAudioEngine_staticMetaObject(): pointer {.importc: "QAudioEngine_staticMetaObject".}

proc metaObject*(self: gen_qaudioengine_types.QAudioEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudioengine_types.QAudioEngine, param1: cstring): pointer =
  fcQAudioEngine_metacast(self.h, param1)

proc metacall*(self: gen_qaudioengine_types.QAudioEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioengine_types.QAudioEngine, s: cstring): string =
  let v_ms = fcQAudioEngine_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOutputMode*(self: gen_qaudioengine_types.QAudioEngine, mode: cint): void =
  fcQAudioEngine_setOutputMode(self.h, cint(mode))

proc outputMode*(self: gen_qaudioengine_types.QAudioEngine): cint =
  cint(fcQAudioEngine_outputMode(self.h))

proc sampleRate*(self: gen_qaudioengine_types.QAudioEngine): cint =
  fcQAudioEngine_sampleRate(self.h)

proc setOutputDevice*(self: gen_qaudioengine_types.QAudioEngine, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioEngine_setOutputDevice(self.h, device.h)

proc outputDevice*(self: gen_qaudioengine_types.QAudioEngine): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioEngine_outputDevice(self.h), owned: true)

proc setMasterVolume*(self: gen_qaudioengine_types.QAudioEngine, volume: float32): void =
  fcQAudioEngine_setMasterVolume(self.h, volume)

proc masterVolume*(self: gen_qaudioengine_types.QAudioEngine): float32 =
  fcQAudioEngine_masterVolume(self.h)

proc setPaused*(self: gen_qaudioengine_types.QAudioEngine, paused: bool): void =
  fcQAudioEngine_setPaused(self.h, paused)

proc paused*(self: gen_qaudioengine_types.QAudioEngine): bool =
  fcQAudioEngine_paused(self.h)

proc setRoomEffectsEnabled*(self: gen_qaudioengine_types.QAudioEngine, enabled: bool): void =
  fcQAudioEngine_setRoomEffectsEnabled(self.h, enabled)

proc roomEffectsEnabled*(self: gen_qaudioengine_types.QAudioEngine): bool =
  fcQAudioEngine_roomEffectsEnabled(self.h)

proc setDistanceScale*(self: gen_qaudioengine_types.QAudioEngine, scale: float32): void =
  fcQAudioEngine_setDistanceScale(self.h, scale)

proc distanceScale*(self: gen_qaudioengine_types.QAudioEngine): float32 =
  fcQAudioEngine_distanceScale(self.h)

proc outputModeChanged*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_outputModeChanged(self.h)

type QAudioEngineoutputModeChangedSlot* = proc()
proc fcQAudioEngine_slot_callback_outputModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioEngineoutputModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioEngine_slot_callback_outputModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioEngineoutputModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onOutputModeChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineoutputModeChangedSlot) =
  var tmp = new QAudioEngineoutputModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_outputModeChanged(self.h, cast[int](addr tmp[]), fcQAudioEngine_slot_callback_outputModeChanged, fcQAudioEngine_slot_callback_outputModeChanged_release)

proc outputDeviceChanged*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_outputDeviceChanged(self.h)

type QAudioEngineoutputDeviceChangedSlot* = proc()
proc fcQAudioEngine_slot_callback_outputDeviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioEngineoutputDeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioEngine_slot_callback_outputDeviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioEngineoutputDeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onOutputDeviceChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineoutputDeviceChangedSlot) =
  var tmp = new QAudioEngineoutputDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_outputDeviceChanged(self.h, cast[int](addr tmp[]), fcQAudioEngine_slot_callback_outputDeviceChanged, fcQAudioEngine_slot_callback_outputDeviceChanged_release)

proc masterVolumeChanged*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_masterVolumeChanged(self.h)

type QAudioEnginemasterVolumeChangedSlot* = proc()
proc fcQAudioEngine_slot_callback_masterVolumeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioEnginemasterVolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioEngine_slot_callback_masterVolumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioEnginemasterVolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMasterVolumeChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginemasterVolumeChangedSlot) =
  var tmp = new QAudioEnginemasterVolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_masterVolumeChanged(self.h, cast[int](addr tmp[]), fcQAudioEngine_slot_callback_masterVolumeChanged, fcQAudioEngine_slot_callback_masterVolumeChanged_release)

proc pausedChanged*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_pausedChanged(self.h)

type QAudioEnginepausedChangedSlot* = proc()
proc fcQAudioEngine_slot_callback_pausedChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioEnginepausedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioEngine_slot_callback_pausedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioEnginepausedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPausedChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginepausedChangedSlot) =
  var tmp = new QAudioEnginepausedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_pausedChanged(self.h, cast[int](addr tmp[]), fcQAudioEngine_slot_callback_pausedChanged, fcQAudioEngine_slot_callback_pausedChanged_release)

proc distanceScaleChanged*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_distanceScaleChanged(self.h)

type QAudioEnginedistanceScaleChangedSlot* = proc()
proc fcQAudioEngine_slot_callback_distanceScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioEnginedistanceScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioEngine_slot_callback_distanceScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioEnginedistanceScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDistanceScaleChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginedistanceScaleChangedSlot) =
  var tmp = new QAudioEnginedistanceScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_distanceScaleChanged(self.h, cast[int](addr tmp[]), fcQAudioEngine_slot_callback_distanceScaleChanged, fcQAudioEngine_slot_callback_distanceScaleChanged_release)

proc start*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_start(self.h)

proc stop*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_stop(self.h)

proc pause*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_pause(self.h)

proc resume*(self: gen_qaudioengine_types.QAudioEngine): void =
  fcQAudioEngine_resume(self.h)

proc tr*(_: type gen_qaudioengine_types.QAudioEngine, s: cstring, c: cstring): string =
  let v_ms = fcQAudioEngine_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioengine_types.QAudioEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioEnginemetaObjectProc* = proc(self: QAudioEngine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioEnginemetacastProc* = proc(self: QAudioEngine, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioEnginemetacallProc* = proc(self: QAudioEngine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioEngineeventProc* = proc(self: QAudioEngine, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioEngineeventFilterProc* = proc(self: QAudioEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioEnginetimerEventProc* = proc(self: QAudioEngine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioEnginechildEventProc* = proc(self: QAudioEngine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioEnginecustomEventProc* = proc(self: QAudioEngine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioEngineconnectNotifyProc* = proc(self: QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioEnginedisconnectNotifyProc* = proc(self: QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioEngineVTable* {.inheritable, pure.} = object
  vtbl: cQAudioEngineVTable
  metaObject*: QAudioEnginemetaObjectProc
  metacast*: QAudioEnginemetacastProc
  metacall*: QAudioEnginemetacallProc
  event*: QAudioEngineeventProc
  eventFilter*: QAudioEngineeventFilterProc
  timerEvent*: QAudioEnginetimerEventProc
  childEvent*: QAudioEnginechildEventProc
  customEvent*: QAudioEnginecustomEventProc
  connectNotify*: QAudioEngineconnectNotifyProc
  disconnectNotify*: QAudioEnginedisconnectNotifyProc

proc QAudioEnginemetaObject*(self: gen_qaudioengine_types.QAudioEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_virtualbase_metaObject(self.h), owned: false)

proc QAudioEnginemetacast*(self: gen_qaudioengine_types.QAudioEngine, param1: cstring): pointer =
  fcQAudioEngine_virtualbase_metacast(self.h, param1)

proc QAudioEnginemetacall*(self: gen_qaudioengine_types.QAudioEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioEngineevent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioEngine_virtualbase_event(self.h, event.h)

proc QAudioEngineeventFilter*(self: gen_qaudioengine_types.QAudioEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioEnginetimerEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioEngine_virtualbase_timerEvent(self.h, event.h)

proc QAudioEnginechildEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioEngine_virtualbase_childEvent(self.h, event.h)

proc QAudioEnginecustomEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioEngine_virtualbase_customEvent(self.h, event.h)

proc QAudioEngineconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioEngine_virtualbase_connectNotify(self.h, signal.h)

proc QAudioEnginedisconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioEngine_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioEngine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioEngine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioEngine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioEngine_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioEngine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioEngine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioEngine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioEngine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioEngine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioEngine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](fcQAudioEngine_vdata(self))
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioEngine* {.inheritable.} = ref object of QAudioEngine
  vtbl*: cQAudioEngineVTable

method metaObject*(self: VirtualQAudioEngine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioEnginemetaObject(self[])
method metacast*(self: VirtualQAudioEngine, param1: cstring): pointer {.base.} =
  QAudioEnginemetacast(self[], param1)
method metacall*(self: VirtualQAudioEngine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioEnginemetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioEngine, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioEngineevent(self[], event)
method eventFilter*(self: VirtualQAudioEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioEngineeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioEngine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioEnginetimerEvent(self[], event)
method childEvent*(self: VirtualQAudioEngine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioEnginechildEvent(self[], event)
method customEvent*(self: VirtualQAudioEngine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioEnginecustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioEngineconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioEnginedisconnectNotify(self[], signal)

proc fcQAudioEngine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioEngine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioEngine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioEngine_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioEngine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioEngine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioEngine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioEngine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioEngine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioEngine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioEngine](fcQAudioEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudioengine_types.QAudioEngine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioEngine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudioengine_types.QAudioEngine): cint =
  fcQAudioEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudioengine_types.QAudioEngine, signal: cstring): cint =
  fcQAudioEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](fcQAudioEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioEngine_vtable_callback_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](fcQAudioEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioEngine_vtable_callback_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    sampleRate: cint,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](fcQAudioEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioEngine_vtable_callback_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new3(addr(vtbl[].vtbl), addr(vtbl[]), sampleRate), owned: true)

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    sampleRate: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](fcQAudioEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioEngine_vtable_callback_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new4(addr(vtbl[].vtbl), addr(vtbl[]), sampleRate, parent.h), owned: true)

const cQAudioEngine_mvtbl = cQAudioEngineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioEngine()[])](self.fcQAudioEngine_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioEngine_method_callback_metaObject,
  metacast: fcQAudioEngine_method_callback_metacast,
  metacall: fcQAudioEngine_method_callback_metacall,
  event: fcQAudioEngine_method_callback_event,
  eventFilter: fcQAudioEngine_method_callback_eventFilter,
  timerEvent: fcQAudioEngine_method_callback_timerEvent,
  childEvent: fcQAudioEngine_method_callback_childEvent,
  customEvent: fcQAudioEngine_method_callback_customEvent,
  connectNotify: fcQAudioEngine_method_callback_connectNotify,
  disconnectNotify: fcQAudioEngine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    inst: VirtualQAudioEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioEngine_new(addr(cQAudioEngine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioEngine_new2(addr(cQAudioEngine_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    sampleRate: cint,
    inst: VirtualQAudioEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioEngine_new3(addr(cQAudioEngine_mvtbl), addr(inst[]), sampleRate)
  inst[].owned = true

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    sampleRate: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioEngine_new4(addr(cQAudioEngine_mvtbl), addr(inst[]), sampleRate, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudioengine_types.QAudioEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_staticMetaObject())
