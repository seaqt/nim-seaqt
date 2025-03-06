import ./Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config --cflags Qt6SpatialAudio")  & " -fPIC"
{.compile("gen_qaudioengine.cpp", cflags).}


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

proc fcQAudioEngine_metaObject(self: pointer, ): pointer {.importc: "QAudioEngine_metaObject".}
proc fcQAudioEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioEngine_metacast".}
proc fcQAudioEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioEngine_metacall".}
proc fcQAudioEngine_tr(s: cstring): struct_miqt_string {.importc: "QAudioEngine_tr".}
proc fcQAudioEngine_setOutputMode(self: pointer, mode: cint): void {.importc: "QAudioEngine_setOutputMode".}
proc fcQAudioEngine_outputMode(self: pointer, ): cint {.importc: "QAudioEngine_outputMode".}
proc fcQAudioEngine_sampleRate(self: pointer, ): cint {.importc: "QAudioEngine_sampleRate".}
proc fcQAudioEngine_setOutputDevice(self: pointer, device: pointer): void {.importc: "QAudioEngine_setOutputDevice".}
proc fcQAudioEngine_outputDevice(self: pointer, ): pointer {.importc: "QAudioEngine_outputDevice".}
proc fcQAudioEngine_setMasterVolume(self: pointer, volume: float32): void {.importc: "QAudioEngine_setMasterVolume".}
proc fcQAudioEngine_masterVolume(self: pointer, ): float32 {.importc: "QAudioEngine_masterVolume".}
proc fcQAudioEngine_setPaused(self: pointer, paused: bool): void {.importc: "QAudioEngine_setPaused".}
proc fcQAudioEngine_paused(self: pointer, ): bool {.importc: "QAudioEngine_paused".}
proc fcQAudioEngine_setRoomEffectsEnabled(self: pointer, enabled: bool): void {.importc: "QAudioEngine_setRoomEffectsEnabled".}
proc fcQAudioEngine_roomEffectsEnabled(self: pointer, ): bool {.importc: "QAudioEngine_roomEffectsEnabled".}
proc fcQAudioEngine_setDistanceScale(self: pointer, scale: float32): void {.importc: "QAudioEngine_setDistanceScale".}
proc fcQAudioEngine_distanceScale(self: pointer, ): float32 {.importc: "QAudioEngine_distanceScale".}
proc fcQAudioEngine_outputModeChanged(self: pointer, ): void {.importc: "QAudioEngine_outputModeChanged".}
proc fcQAudioEngine_connect_outputModeChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_outputModeChanged".}
proc fcQAudioEngine_outputDeviceChanged(self: pointer, ): void {.importc: "QAudioEngine_outputDeviceChanged".}
proc fcQAudioEngine_connect_outputDeviceChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_outputDeviceChanged".}
proc fcQAudioEngine_masterVolumeChanged(self: pointer, ): void {.importc: "QAudioEngine_masterVolumeChanged".}
proc fcQAudioEngine_connect_masterVolumeChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_masterVolumeChanged".}
proc fcQAudioEngine_pausedChanged(self: pointer, ): void {.importc: "QAudioEngine_pausedChanged".}
proc fcQAudioEngine_connect_pausedChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_pausedChanged".}
proc fcQAudioEngine_distanceScaleChanged(self: pointer, ): void {.importc: "QAudioEngine_distanceScaleChanged".}
proc fcQAudioEngine_connect_distanceScaleChanged(self: pointer, slot: int) {.importc: "QAudioEngine_connect_distanceScaleChanged".}
proc fcQAudioEngine_start(self: pointer, ): void {.importc: "QAudioEngine_start".}
proc fcQAudioEngine_stop(self: pointer, ): void {.importc: "QAudioEngine_stop".}
proc fcQAudioEngine_pause(self: pointer, ): void {.importc: "QAudioEngine_pause".}
proc fcQAudioEngine_resume(self: pointer, ): void {.importc: "QAudioEngine_resume".}
proc fcQAudioEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioEngine_tr2".}
proc fcQAudioEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioEngine_tr3".}
type cQAudioEngineVTable = object
  destructor*: proc(vtbl: ptr cQAudioEngineVTable, self: ptr cQAudioEngine) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioEngine_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioEngine_virtualbase_metaObject".}
proc fcQAudioEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioEngine_virtualbase_metacast".}
proc fcQAudioEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioEngine_virtualbase_metacall".}
proc fcQAudioEngine_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioEngine_virtualbase_event".}
proc fcQAudioEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioEngine_virtualbase_eventFilter".}
proc fcQAudioEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioEngine_virtualbase_timerEvent".}
proc fcQAudioEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioEngine_virtualbase_childEvent".}
proc fcQAudioEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioEngine_virtualbase_customEvent".}
proc fcQAudioEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioEngine_virtualbase_connectNotify".}
proc fcQAudioEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioEngine_virtualbase_disconnectNotify".}
proc fcQAudioEngine_new(vtbl: pointer, ): ptr cQAudioEngine {.importc: "QAudioEngine_new".}
proc fcQAudioEngine_new2(vtbl: pointer, parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new2".}
proc fcQAudioEngine_new3(vtbl: pointer, sampleRate: cint): ptr cQAudioEngine {.importc: "QAudioEngine_new3".}
proc fcQAudioEngine_new4(vtbl: pointer, sampleRate: cint, parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new4".}
proc fcQAudioEngine_staticMetaObject(): pointer {.importc: "QAudioEngine_staticMetaObject".}
proc fcQAudioEngine_delete(self: pointer) {.importc: "QAudioEngine_delete".}

proc metaObject*(self: gen_qaudioengine_types.QAudioEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_metaObject(self.h))

proc metacast*(self: gen_qaudioengine_types.QAudioEngine, param1: cstring): pointer =
  fcQAudioEngine_metacast(self.h, param1)

proc metacall*(self: gen_qaudioengine_types.QAudioEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioengine_types.QAudioEngine, s: cstring): string =
  let v_ms = fcQAudioEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOutputMode*(self: gen_qaudioengine_types.QAudioEngine, mode: cint): void =
  fcQAudioEngine_setOutputMode(self.h, cint(mode))

proc outputMode*(self: gen_qaudioengine_types.QAudioEngine, ): cint =
  cint(fcQAudioEngine_outputMode(self.h))

proc sampleRate*(self: gen_qaudioengine_types.QAudioEngine, ): cint =
  fcQAudioEngine_sampleRate(self.h)

proc setOutputDevice*(self: gen_qaudioengine_types.QAudioEngine, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioEngine_setOutputDevice(self.h, device.h)

proc outputDevice*(self: gen_qaudioengine_types.QAudioEngine, ): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioEngine_outputDevice(self.h))

proc setMasterVolume*(self: gen_qaudioengine_types.QAudioEngine, volume: float32): void =
  fcQAudioEngine_setMasterVolume(self.h, volume)

proc masterVolume*(self: gen_qaudioengine_types.QAudioEngine, ): float32 =
  fcQAudioEngine_masterVolume(self.h)

proc setPaused*(self: gen_qaudioengine_types.QAudioEngine, paused: bool): void =
  fcQAudioEngine_setPaused(self.h, paused)

proc paused*(self: gen_qaudioengine_types.QAudioEngine, ): bool =
  fcQAudioEngine_paused(self.h)

proc setRoomEffectsEnabled*(self: gen_qaudioengine_types.QAudioEngine, enabled: bool): void =
  fcQAudioEngine_setRoomEffectsEnabled(self.h, enabled)

proc roomEffectsEnabled*(self: gen_qaudioengine_types.QAudioEngine, ): bool =
  fcQAudioEngine_roomEffectsEnabled(self.h)

proc setDistanceScale*(self: gen_qaudioengine_types.QAudioEngine, scale: float32): void =
  fcQAudioEngine_setDistanceScale(self.h, scale)

proc distanceScale*(self: gen_qaudioengine_types.QAudioEngine, ): float32 =
  fcQAudioEngine_distanceScale(self.h)

proc outputModeChanged*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_outputModeChanged(self.h)

type QAudioEngineoutputModeChangedSlot* = proc()
proc miqt_exec_callback_cQAudioEngine_outputModeChanged(slot: int) {.exportc: "miqt_exec_callback_QAudioEngine_outputModeChanged".} =
  let nimfunc = cast[ptr QAudioEngineoutputModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onoutputModeChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineoutputModeChangedSlot) =
  var tmp = new QAudioEngineoutputModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_outputModeChanged(self.h, cast[int](addr tmp[]))

proc outputDeviceChanged*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_outputDeviceChanged(self.h)

type QAudioEngineoutputDeviceChangedSlot* = proc()
proc miqt_exec_callback_cQAudioEngine_outputDeviceChanged(slot: int) {.exportc: "miqt_exec_callback_QAudioEngine_outputDeviceChanged".} =
  let nimfunc = cast[ptr QAudioEngineoutputDeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onoutputDeviceChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineoutputDeviceChangedSlot) =
  var tmp = new QAudioEngineoutputDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_outputDeviceChanged(self.h, cast[int](addr tmp[]))

proc masterVolumeChanged*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_masterVolumeChanged(self.h)

type QAudioEnginemasterVolumeChangedSlot* = proc()
proc miqt_exec_callback_cQAudioEngine_masterVolumeChanged(slot: int) {.exportc: "miqt_exec_callback_QAudioEngine_masterVolumeChanged".} =
  let nimfunc = cast[ptr QAudioEnginemasterVolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmasterVolumeChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginemasterVolumeChangedSlot) =
  var tmp = new QAudioEnginemasterVolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_masterVolumeChanged(self.h, cast[int](addr tmp[]))

proc pausedChanged*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_pausedChanged(self.h)

type QAudioEnginepausedChangedSlot* = proc()
proc miqt_exec_callback_cQAudioEngine_pausedChanged(slot: int) {.exportc: "miqt_exec_callback_QAudioEngine_pausedChanged".} =
  let nimfunc = cast[ptr QAudioEnginepausedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpausedChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginepausedChangedSlot) =
  var tmp = new QAudioEnginepausedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_pausedChanged(self.h, cast[int](addr tmp[]))

proc distanceScaleChanged*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_distanceScaleChanged(self.h)

type QAudioEnginedistanceScaleChangedSlot* = proc()
proc miqt_exec_callback_cQAudioEngine_distanceScaleChanged(slot: int) {.exportc: "miqt_exec_callback_QAudioEngine_distanceScaleChanged".} =
  let nimfunc = cast[ptr QAudioEnginedistanceScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondistanceScaleChanged*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginedistanceScaleChangedSlot) =
  var tmp = new QAudioEnginedistanceScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_connect_distanceScaleChanged(self.h, cast[int](addr tmp[]))

proc start*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_start(self.h)

proc stop*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_stop(self.h)

proc pause*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_pause(self.h)

proc resume*(self: gen_qaudioengine_types.QAudioEngine, ): void =
  fcQAudioEngine_resume(self.h)

proc tr*(_: type gen_qaudioengine_types.QAudioEngine, s: cstring, c: cstring): string =
  let v_ms = fcQAudioEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioengine_types.QAudioEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QAudioEngineVTable* = object
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
proc QAudioEnginemetaObject*(self: gen_qaudioengine_types.QAudioEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioEngine_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioEnginemetacast*(self: gen_qaudioengine_types.QAudioEngine, param1: cstring): pointer =
  fcQAudioEngine_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioEngine_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioEnginemetacall*(self: gen_qaudioengine_types.QAudioEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioEngine_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioEngineevent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioEngine_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioEngine_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioEngineeventFilter*(self: gen_qaudioengine_types.QAudioEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioEngine_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioEnginetimerEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioEngine_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioEngine_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioEnginechildEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioEngine_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioEngine_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioEnginecustomEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioEngine_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioEngine_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioEngineconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioEngine_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioEngine_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioEnginedisconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioEngine_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioEngineVTable](vtbl)
  let self = QAudioEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioEngineVTable, _: ptr cQAudioEngine) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioEngine_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioEngineVTable, _: ptr cQAudioEngine) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioEngine_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new2(addr(vtbl[]), parent.h))

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    sampleRate: cint,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioEngineVTable, _: ptr cQAudioEngine) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioEngine_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new3(addr(vtbl[]), sampleRate))

proc create*(T: type gen_qaudioengine_types.QAudioEngine,
    sampleRate: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioEngineVTable = nil): gen_qaudioengine_types.QAudioEngine =
  let vtbl = if vtbl == nil: new QAudioEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioEngineVTable, _: ptr cQAudioEngine) {.cdecl.} =
    let vtbl = cast[ref QAudioEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioEngine_disconnectNotify
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioEngine_new4(addr(vtbl[]), sampleRate, parent.h))

proc staticMetaObject*(_: type gen_qaudioengine_types.QAudioEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_staticMetaObject())
proc delete*(self: gen_qaudioengine_types.QAudioEngine) =
  fcQAudioEngine_delete(self.h)
