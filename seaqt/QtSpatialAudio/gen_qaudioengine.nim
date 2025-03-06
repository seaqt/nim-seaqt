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

proc fcQAudioEngine_new(): ptr cQAudioEngine {.importc: "QAudioEngine_new".}
proc fcQAudioEngine_new2(parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new2".}
proc fcQAudioEngine_new3(sampleRate: cint): ptr cQAudioEngine {.importc: "QAudioEngine_new3".}
proc fcQAudioEngine_new4(sampleRate: cint, parent: pointer): ptr cQAudioEngine {.importc: "QAudioEngine_new4".}
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
proc fQAudioEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioEngine_virtualbase_metaObject".}
proc fcQAudioEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_metaObject".}
proc fQAudioEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioEngine_virtualbase_metacast".}
proc fcQAudioEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_metacast".}
proc fQAudioEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioEngine_virtualbase_metacall".}
proc fcQAudioEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_metacall".}
proc fQAudioEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioEngine_virtualbase_event".}
proc fcQAudioEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_event".}
proc fQAudioEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioEngine_virtualbase_eventFilter".}
proc fcQAudioEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_eventFilter".}
proc fQAudioEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioEngine_virtualbase_timerEvent".}
proc fcQAudioEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_timerEvent".}
proc fQAudioEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioEngine_virtualbase_childEvent".}
proc fcQAudioEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_childEvent".}
proc fQAudioEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioEngine_virtualbase_customEvent".}
proc fcQAudioEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_customEvent".}
proc fQAudioEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioEngine_virtualbase_connectNotify".}
proc fcQAudioEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_connectNotify".}
proc fQAudioEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioEngine_virtualbase_disconnectNotify".}
proc fcQAudioEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioEngine_override_virtual_disconnectNotify".}
proc fcQAudioEngine_staticMetaObject(): pointer {.importc: "QAudioEngine_staticMetaObject".}
proc fcQAudioEngine_delete(self: pointer) {.importc: "QAudioEngine_delete".}


func init*(T: type gen_qaudioengine_types.QAudioEngine, h: ptr cQAudioEngine): gen_qaudioengine_types.QAudioEngine =
  T(h: h)
proc create*(T: type gen_qaudioengine_types.QAudioEngine, ): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine.init(fcQAudioEngine_new())

proc create*(T: type gen_qaudioengine_types.QAudioEngine, parent: gen_qobject_types.QObject): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine.init(fcQAudioEngine_new2(parent.h))

proc create*(T: type gen_qaudioengine_types.QAudioEngine, sampleRate: cint): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine.init(fcQAudioEngine_new3(sampleRate))

proc create*(T: type gen_qaudioengine_types.QAudioEngine, sampleRate: cint, parent: gen_qobject_types.QObject): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine.init(fcQAudioEngine_new4(sampleRate, parent.h))

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
proc miqt_exec_callback_QAudioEngine_outputModeChanged(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAudioEngine_outputDeviceChanged(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAudioEngine_masterVolumeChanged(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAudioEngine_pausedChanged(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAudioEngine_distanceScaleChanged(slot: int) {.exportc.} =
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

proc QAudioEnginemetaObject*(self: gen_qaudioengine_types.QAudioEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAudioEngine_virtualbase_metaObject(self.h))

type QAudioEnginemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginemetaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioEnginemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_metaObject(self: ptr cQAudioEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioEngine_metaObject ".} =
  var nimfunc = cast[ptr QAudioEnginemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioEnginemetacast*(self: gen_qaudioengine_types.QAudioEngine, param1: cstring): pointer =
  fQAudioEngine_virtualbase_metacast(self.h, param1)

type QAudioEnginemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginemetacastProc) =
  # TODO check subclass
  var tmp = new QAudioEnginemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_metacast(self: ptr cQAudioEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioEngine_metacast ".} =
  var nimfunc = cast[ptr QAudioEnginemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioEnginemetacall*(self: gen_qaudioengine_types.QAudioEngine, param1: cint, param2: cint, param3: pointer): cint =
  fQAudioEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioEnginemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginemetacallProc) =
  # TODO check subclass
  var tmp = new QAudioEnginemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_metacall(self: ptr cQAudioEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioEngine_metacall ".} =
  var nimfunc = cast[ptr QAudioEnginemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAudioEngineevent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioEngine_virtualbase_event(self.h, event.h)

type QAudioEngineeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineeventProc) =
  # TODO check subclass
  var tmp = new QAudioEngineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_event(self: ptr cQAudioEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioEngine_event ".} =
  var nimfunc = cast[ptr QAudioEngineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioEngineeventFilter*(self: gen_qaudioengine_types.QAudioEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioEngineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineeventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioEngineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_eventFilter(self: ptr cQAudioEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioEngine_eventFilter ".} =
  var nimfunc = cast[ptr QAudioEngineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioEnginetimerEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioEngine_virtualbase_timerEvent(self.h, event.h)

type QAudioEnginetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginetimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioEnginetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_timerEvent(self: ptr cQAudioEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_timerEvent ".} =
  var nimfunc = cast[ptr QAudioEnginetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioEnginechildEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioEngine_virtualbase_childEvent(self.h, event.h)

type QAudioEnginechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginechildEventProc) =
  # TODO check subclass
  var tmp = new QAudioEnginechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_childEvent(self: ptr cQAudioEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_childEvent ".} =
  var nimfunc = cast[ptr QAudioEnginechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioEnginecustomEvent*(self: gen_qaudioengine_types.QAudioEngine, event: gen_qcoreevent_types.QEvent): void =
  fQAudioEngine_virtualbase_customEvent(self.h, event.h)

type QAudioEnginecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginecustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioEnginecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_customEvent(self: ptr cQAudioEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_customEvent ".} =
  var nimfunc = cast[ptr QAudioEnginecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioEngineconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioEngine_virtualbase_connectNotify(self.h, signal.h)

type QAudioEngineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEngineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioEngineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_connectNotify(self: ptr cQAudioEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_connectNotify ".} =
  var nimfunc = cast[ptr QAudioEngineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioEnginedisconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioEnginedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudioengine_types.QAudioEngine, slot: QAudioEnginedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioEnginedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioEngine_disconnectNotify(self: ptr cQAudioEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioEngine_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioEnginedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qaudioengine_types.QAudioEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEngine_staticMetaObject())
proc delete*(self: gen_qaudioengine_types.QAudioEngine) =
  fcQAudioEngine_delete(self.h)
