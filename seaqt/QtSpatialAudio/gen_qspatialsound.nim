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
{.compile("gen_qspatialsound.cpp", cflags).}


type QSpatialSoundLoopsEnum* = distinct cint
template Infinite*(_: type QSpatialSoundLoopsEnum): untyped = -1
template Once*(_: type QSpatialSoundLoopsEnum): untyped = 1


type QSpatialSoundDistanceModelEnum* = distinct cint
template Logarithmic*(_: type QSpatialSoundDistanceModelEnum): untyped = 0
template Linear*(_: type QSpatialSoundDistanceModelEnum): untyped = 1
template ManualAttenuation*(_: type QSpatialSoundDistanceModelEnum): untyped = 2


import ./gen_qspatialsound_types
export gen_qspatialsound_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtGui/gen_qquaternion_types,
  ../QtGui/gen_qvectornd_types,
  ./gen_qaudioengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qquaternion_types,
  gen_qvectornd_types,
  gen_qaudioengine_types

type cQSpatialSound*{.exportc: "QSpatialSound", incompleteStruct.} = object

proc fcQSpatialSound_metaObject(self: pointer, ): pointer {.importc: "QSpatialSound_metaObject".}
proc fcQSpatialSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpatialSound_metacast".}
proc fcQSpatialSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpatialSound_metacall".}
proc fcQSpatialSound_tr(s: cstring): struct_miqt_string {.importc: "QSpatialSound_tr".}
proc fcQSpatialSound_setSource(self: pointer, url: pointer): void {.importc: "QSpatialSound_setSource".}
proc fcQSpatialSound_source(self: pointer, ): pointer {.importc: "QSpatialSound_source".}
proc fcQSpatialSound_loops(self: pointer, ): cint {.importc: "QSpatialSound_loops".}
proc fcQSpatialSound_setLoops(self: pointer, loops: cint): void {.importc: "QSpatialSound_setLoops".}
proc fcQSpatialSound_autoPlay(self: pointer, ): bool {.importc: "QSpatialSound_autoPlay".}
proc fcQSpatialSound_setAutoPlay(self: pointer, autoPlay: bool): void {.importc: "QSpatialSound_setAutoPlay".}
proc fcQSpatialSound_setPosition(self: pointer, pos: pointer): void {.importc: "QSpatialSound_setPosition".}
proc fcQSpatialSound_position(self: pointer, ): pointer {.importc: "QSpatialSound_position".}
proc fcQSpatialSound_setRotation(self: pointer, q: pointer): void {.importc: "QSpatialSound_setRotation".}
proc fcQSpatialSound_rotation(self: pointer, ): pointer {.importc: "QSpatialSound_rotation".}
proc fcQSpatialSound_setVolume(self: pointer, volume: float32): void {.importc: "QSpatialSound_setVolume".}
proc fcQSpatialSound_volume(self: pointer, ): float32 {.importc: "QSpatialSound_volume".}
proc fcQSpatialSound_setDistanceModel(self: pointer, model: cint): void {.importc: "QSpatialSound_setDistanceModel".}
proc fcQSpatialSound_distanceModel(self: pointer, ): cint {.importc: "QSpatialSound_distanceModel".}
proc fcQSpatialSound_setSize(self: pointer, size: float32): void {.importc: "QSpatialSound_setSize".}
proc fcQSpatialSound_size(self: pointer, ): float32 {.importc: "QSpatialSound_size".}
proc fcQSpatialSound_setDistanceCutoff(self: pointer, cutoff: float32): void {.importc: "QSpatialSound_setDistanceCutoff".}
proc fcQSpatialSound_distanceCutoff(self: pointer, ): float32 {.importc: "QSpatialSound_distanceCutoff".}
proc fcQSpatialSound_setManualAttenuation(self: pointer, attenuation: float32): void {.importc: "QSpatialSound_setManualAttenuation".}
proc fcQSpatialSound_manualAttenuation(self: pointer, ): float32 {.importc: "QSpatialSound_manualAttenuation".}
proc fcQSpatialSound_setOcclusionIntensity(self: pointer, occlusion: float32): void {.importc: "QSpatialSound_setOcclusionIntensity".}
proc fcQSpatialSound_occlusionIntensity(self: pointer, ): float32 {.importc: "QSpatialSound_occlusionIntensity".}
proc fcQSpatialSound_setDirectivity(self: pointer, alpha: float32): void {.importc: "QSpatialSound_setDirectivity".}
proc fcQSpatialSound_directivity(self: pointer, ): float32 {.importc: "QSpatialSound_directivity".}
proc fcQSpatialSound_setDirectivityOrder(self: pointer, alpha: float32): void {.importc: "QSpatialSound_setDirectivityOrder".}
proc fcQSpatialSound_directivityOrder(self: pointer, ): float32 {.importc: "QSpatialSound_directivityOrder".}
proc fcQSpatialSound_setNearFieldGain(self: pointer, gain: float32): void {.importc: "QSpatialSound_setNearFieldGain".}
proc fcQSpatialSound_nearFieldGain(self: pointer, ): float32 {.importc: "QSpatialSound_nearFieldGain".}
proc fcQSpatialSound_engine(self: pointer, ): pointer {.importc: "QSpatialSound_engine".}
proc fcQSpatialSound_sourceChanged(self: pointer, ): void {.importc: "QSpatialSound_sourceChanged".}
proc fcQSpatialSound_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_sourceChanged".}
proc fcQSpatialSound_loopsChanged(self: pointer, ): void {.importc: "QSpatialSound_loopsChanged".}
proc fcQSpatialSound_connect_loopsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_loopsChanged".}
proc fcQSpatialSound_autoPlayChanged(self: pointer, ): void {.importc: "QSpatialSound_autoPlayChanged".}
proc fcQSpatialSound_connect_autoPlayChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_autoPlayChanged".}
proc fcQSpatialSound_positionChanged(self: pointer, ): void {.importc: "QSpatialSound_positionChanged".}
proc fcQSpatialSound_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_positionChanged".}
proc fcQSpatialSound_rotationChanged(self: pointer, ): void {.importc: "QSpatialSound_rotationChanged".}
proc fcQSpatialSound_connect_rotationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_rotationChanged".}
proc fcQSpatialSound_volumeChanged(self: pointer, ): void {.importc: "QSpatialSound_volumeChanged".}
proc fcQSpatialSound_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_volumeChanged".}
proc fcQSpatialSound_distanceModelChanged(self: pointer, ): void {.importc: "QSpatialSound_distanceModelChanged".}
proc fcQSpatialSound_connect_distanceModelChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_distanceModelChanged".}
proc fcQSpatialSound_sizeChanged(self: pointer, ): void {.importc: "QSpatialSound_sizeChanged".}
proc fcQSpatialSound_connect_sizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_sizeChanged".}
proc fcQSpatialSound_distanceCutoffChanged(self: pointer, ): void {.importc: "QSpatialSound_distanceCutoffChanged".}
proc fcQSpatialSound_connect_distanceCutoffChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_distanceCutoffChanged".}
proc fcQSpatialSound_manualAttenuationChanged(self: pointer, ): void {.importc: "QSpatialSound_manualAttenuationChanged".}
proc fcQSpatialSound_connect_manualAttenuationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_manualAttenuationChanged".}
proc fcQSpatialSound_occlusionIntensityChanged(self: pointer, ): void {.importc: "QSpatialSound_occlusionIntensityChanged".}
proc fcQSpatialSound_connect_occlusionIntensityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_occlusionIntensityChanged".}
proc fcQSpatialSound_directivityChanged(self: pointer, ): void {.importc: "QSpatialSound_directivityChanged".}
proc fcQSpatialSound_connect_directivityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_directivityChanged".}
proc fcQSpatialSound_directivityOrderChanged(self: pointer, ): void {.importc: "QSpatialSound_directivityOrderChanged".}
proc fcQSpatialSound_connect_directivityOrderChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_directivityOrderChanged".}
proc fcQSpatialSound_nearFieldGainChanged(self: pointer, ): void {.importc: "QSpatialSound_nearFieldGainChanged".}
proc fcQSpatialSound_connect_nearFieldGainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSpatialSound_connect_nearFieldGainChanged".}
proc fcQSpatialSound_play(self: pointer, ): void {.importc: "QSpatialSound_play".}
proc fcQSpatialSound_pause(self: pointer, ): void {.importc: "QSpatialSound_pause".}
proc fcQSpatialSound_stop(self: pointer, ): void {.importc: "QSpatialSound_stop".}
proc fcQSpatialSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSpatialSound_tr2".}
proc fcQSpatialSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSpatialSound_tr3".}
type cQSpatialSoundVTable = object
  destructor*: proc(vtbl: ptr cQSpatialSoundVTable, self: ptr cQSpatialSound) {.cdecl, raises:[], gcsafe.}
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
proc fcQSpatialSound_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSpatialSound_virtualbase_metaObject".}
proc fcQSpatialSound_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSpatialSound_virtualbase_metacast".}
proc fcQSpatialSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSpatialSound_virtualbase_metacall".}
proc fcQSpatialSound_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSpatialSound_virtualbase_event".}
proc fcQSpatialSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSpatialSound_virtualbase_eventFilter".}
proc fcQSpatialSound_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSpatialSound_virtualbase_timerEvent".}
proc fcQSpatialSound_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSpatialSound_virtualbase_childEvent".}
proc fcQSpatialSound_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSpatialSound_virtualbase_customEvent".}
proc fcQSpatialSound_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSpatialSound_virtualbase_connectNotify".}
proc fcQSpatialSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSpatialSound_virtualbase_disconnectNotify".}
proc fcQSpatialSound_new(vtbl: pointer, engine: pointer): ptr cQSpatialSound {.importc: "QSpatialSound_new".}
proc fcQSpatialSound_staticMetaObject(): pointer {.importc: "QSpatialSound_staticMetaObject".}
proc fcQSpatialSound_delete(self: pointer) {.importc: "QSpatialSound_delete".}

proc metaObject*(self: gen_qspatialsound_types.QSpatialSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpatialSound_metaObject(self.h))

proc metacast*(self: gen_qspatialsound_types.QSpatialSound, param1: cstring): pointer =
  fcQSpatialSound_metacast(self.h, param1)

proc metacall*(self: gen_qspatialsound_types.QSpatialSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSpatialSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qspatialsound_types.QSpatialSound, s: cstring): string =
  let v_ms = fcQSpatialSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qspatialsound_types.QSpatialSound, url: gen_qurl_types.QUrl): void =
  fcQSpatialSound_setSource(self.h, url.h)

proc source*(self: gen_qspatialsound_types.QSpatialSound, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQSpatialSound_source(self.h))

proc loops*(self: gen_qspatialsound_types.QSpatialSound, ): cint =
  fcQSpatialSound_loops(self.h)

proc setLoops*(self: gen_qspatialsound_types.QSpatialSound, loops: cint): void =
  fcQSpatialSound_setLoops(self.h, loops)

proc autoPlay*(self: gen_qspatialsound_types.QSpatialSound, ): bool =
  fcQSpatialSound_autoPlay(self.h)

proc setAutoPlay*(self: gen_qspatialsound_types.QSpatialSound, autoPlay: bool): void =
  fcQSpatialSound_setAutoPlay(self.h, autoPlay)

proc setPosition*(self: gen_qspatialsound_types.QSpatialSound, pos: gen_qvectornd_types.QVector3D): void =
  fcQSpatialSound_setPosition(self.h, pos.h)

proc position*(self: gen_qspatialsound_types.QSpatialSound, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQSpatialSound_position(self.h))

proc setRotation*(self: gen_qspatialsound_types.QSpatialSound, q: gen_qquaternion_types.QQuaternion): void =
  fcQSpatialSound_setRotation(self.h, q.h)

proc rotation*(self: gen_qspatialsound_types.QSpatialSound, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQSpatialSound_rotation(self.h))

proc setVolume*(self: gen_qspatialsound_types.QSpatialSound, volume: float32): void =
  fcQSpatialSound_setVolume(self.h, volume)

proc volume*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_volume(self.h)

proc setDistanceModel*(self: gen_qspatialsound_types.QSpatialSound, model: cint): void =
  fcQSpatialSound_setDistanceModel(self.h, cint(model))

proc distanceModel*(self: gen_qspatialsound_types.QSpatialSound, ): cint =
  cint(fcQSpatialSound_distanceModel(self.h))

proc setSize*(self: gen_qspatialsound_types.QSpatialSound, size: float32): void =
  fcQSpatialSound_setSize(self.h, size)

proc size*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_size(self.h)

proc setDistanceCutoff*(self: gen_qspatialsound_types.QSpatialSound, cutoff: float32): void =
  fcQSpatialSound_setDistanceCutoff(self.h, cutoff)

proc distanceCutoff*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_distanceCutoff(self.h)

proc setManualAttenuation*(self: gen_qspatialsound_types.QSpatialSound, attenuation: float32): void =
  fcQSpatialSound_setManualAttenuation(self.h, attenuation)

proc manualAttenuation*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_manualAttenuation(self.h)

proc setOcclusionIntensity*(self: gen_qspatialsound_types.QSpatialSound, occlusion: float32): void =
  fcQSpatialSound_setOcclusionIntensity(self.h, occlusion)

proc occlusionIntensity*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_occlusionIntensity(self.h)

proc setDirectivity*(self: gen_qspatialsound_types.QSpatialSound, alpha: float32): void =
  fcQSpatialSound_setDirectivity(self.h, alpha)

proc directivity*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_directivity(self.h)

proc setDirectivityOrder*(self: gen_qspatialsound_types.QSpatialSound, alpha: float32): void =
  fcQSpatialSound_setDirectivityOrder(self.h, alpha)

proc directivityOrder*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_directivityOrder(self.h)

proc setNearFieldGain*(self: gen_qspatialsound_types.QSpatialSound, gain: float32): void =
  fcQSpatialSound_setNearFieldGain(self.h, gain)

proc nearFieldGain*(self: gen_qspatialsound_types.QSpatialSound, ): float32 =
  fcQSpatialSound_nearFieldGain(self.h)

proc engine*(self: gen_qspatialsound_types.QSpatialSound, ): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine(h: fcQSpatialSound_engine(self.h))

proc sourceChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_sourceChanged(self.h)

type QSpatialSoundsourceChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundsourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundsourceChangedSlot) =
  var tmp = new QSpatialSoundsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_sourceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_sourceChanged, miqt_exec_callback_cQSpatialSound_sourceChanged_release)

proc loopsChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_loopsChanged(self.h)

type QSpatialSoundloopsChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_loopsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundloopsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_loopsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundloopsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloopsChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundloopsChangedSlot) =
  var tmp = new QSpatialSoundloopsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_loopsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_loopsChanged, miqt_exec_callback_cQSpatialSound_loopsChanged_release)

proc autoPlayChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_autoPlayChanged(self.h)

type QSpatialSoundautoPlayChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_autoPlayChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundautoPlayChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_autoPlayChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundautoPlayChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onautoPlayChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundautoPlayChangedSlot) =
  var tmp = new QSpatialSoundautoPlayChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_autoPlayChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_autoPlayChanged, miqt_exec_callback_cQSpatialSound_autoPlayChanged_release)

proc positionChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_positionChanged(self.h)

type QSpatialSoundpositionChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_positionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundpositionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundpositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpositionChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundpositionChangedSlot) =
  var tmp = new QSpatialSoundpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_positionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_positionChanged, miqt_exec_callback_cQSpatialSound_positionChanged_release)

proc rotationChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_rotationChanged(self.h)

type QSpatialSoundrotationChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_rotationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_rotationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundrotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrotationChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundrotationChangedSlot) =
  var tmp = new QSpatialSoundrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_rotationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_rotationChanged, miqt_exec_callback_cQSpatialSound_rotationChanged_release)

proc volumeChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_volumeChanged(self.h)

type QSpatialSoundvolumeChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_volumeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundvolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundvolumeChangedSlot) =
  var tmp = new QSpatialSoundvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_volumeChanged, miqt_exec_callback_cQSpatialSound_volumeChanged_release)

proc distanceModelChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_distanceModelChanged(self.h)

type QSpatialSounddistanceModelChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_distanceModelChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSounddistanceModelChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_distanceModelChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSounddistanceModelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondistanceModelChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSounddistanceModelChangedSlot) =
  var tmp = new QSpatialSounddistanceModelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_distanceModelChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_distanceModelChanged, miqt_exec_callback_cQSpatialSound_distanceModelChanged_release)

proc sizeChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_sizeChanged(self.h)

type QSpatialSoundsizeChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_sizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundsizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_sizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundsizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsizeChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundsizeChangedSlot) =
  var tmp = new QSpatialSoundsizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_sizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_sizeChanged, miqt_exec_callback_cQSpatialSound_sizeChanged_release)

proc distanceCutoffChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_distanceCutoffChanged(self.h)

type QSpatialSounddistanceCutoffChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_distanceCutoffChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSounddistanceCutoffChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_distanceCutoffChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSounddistanceCutoffChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondistanceCutoffChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSounddistanceCutoffChangedSlot) =
  var tmp = new QSpatialSounddistanceCutoffChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_distanceCutoffChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_distanceCutoffChanged, miqt_exec_callback_cQSpatialSound_distanceCutoffChanged_release)

proc manualAttenuationChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_manualAttenuationChanged(self.h)

type QSpatialSoundmanualAttenuationChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_manualAttenuationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundmanualAttenuationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_manualAttenuationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundmanualAttenuationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmanualAttenuationChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundmanualAttenuationChangedSlot) =
  var tmp = new QSpatialSoundmanualAttenuationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_manualAttenuationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_manualAttenuationChanged, miqt_exec_callback_cQSpatialSound_manualAttenuationChanged_release)

proc occlusionIntensityChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_occlusionIntensityChanged(self.h)

type QSpatialSoundocclusionIntensityChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_occlusionIntensityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundocclusionIntensityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_occlusionIntensityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundocclusionIntensityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onocclusionIntensityChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundocclusionIntensityChangedSlot) =
  var tmp = new QSpatialSoundocclusionIntensityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_occlusionIntensityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_occlusionIntensityChanged, miqt_exec_callback_cQSpatialSound_occlusionIntensityChanged_release)

proc directivityChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_directivityChanged(self.h)

type QSpatialSounddirectivityChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_directivityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSounddirectivityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_directivityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSounddirectivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectivityChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSounddirectivityChangedSlot) =
  var tmp = new QSpatialSounddirectivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_directivityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_directivityChanged, miqt_exec_callback_cQSpatialSound_directivityChanged_release)

proc directivityOrderChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_directivityOrderChanged(self.h)

type QSpatialSounddirectivityOrderChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_directivityOrderChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSounddirectivityOrderChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_directivityOrderChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSounddirectivityOrderChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondirectivityOrderChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSounddirectivityOrderChangedSlot) =
  var tmp = new QSpatialSounddirectivityOrderChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_directivityOrderChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_directivityOrderChanged, miqt_exec_callback_cQSpatialSound_directivityOrderChanged_release)

proc nearFieldGainChanged*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_nearFieldGainChanged(self.h)

type QSpatialSoundnearFieldGainChangedSlot* = proc()
proc miqt_exec_callback_cQSpatialSound_nearFieldGainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSpatialSoundnearFieldGainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSpatialSound_nearFieldGainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSpatialSoundnearFieldGainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnearFieldGainChanged*(self: gen_qspatialsound_types.QSpatialSound, slot: QSpatialSoundnearFieldGainChangedSlot) =
  var tmp = new QSpatialSoundnearFieldGainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSpatialSound_connect_nearFieldGainChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSpatialSound_nearFieldGainChanged, miqt_exec_callback_cQSpatialSound_nearFieldGainChanged_release)

proc play*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_play(self.h)

proc pause*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_pause(self.h)

proc stop*(self: gen_qspatialsound_types.QSpatialSound, ): void =
  fcQSpatialSound_stop(self.h)

proc tr*(_: type gen_qspatialsound_types.QSpatialSound, s: cstring, c: cstring): string =
  let v_ms = fcQSpatialSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qspatialsound_types.QSpatialSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSpatialSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSpatialSoundmetaObjectProc* = proc(self: QSpatialSound): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSpatialSoundmetacastProc* = proc(self: QSpatialSound, param1: cstring): pointer {.raises: [], gcsafe.}
type QSpatialSoundmetacallProc* = proc(self: QSpatialSound, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSpatialSoundeventProc* = proc(self: QSpatialSound, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSpatialSoundeventFilterProc* = proc(self: QSpatialSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSpatialSoundtimerEventProc* = proc(self: QSpatialSound, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSpatialSoundchildEventProc* = proc(self: QSpatialSound, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSpatialSoundcustomEventProc* = proc(self: QSpatialSound, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSpatialSoundconnectNotifyProc* = proc(self: QSpatialSound, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSpatialSounddisconnectNotifyProc* = proc(self: QSpatialSound, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSpatialSoundVTable* = object
  vtbl: cQSpatialSoundVTable
  metaObject*: QSpatialSoundmetaObjectProc
  metacast*: QSpatialSoundmetacastProc
  metacall*: QSpatialSoundmetacallProc
  event*: QSpatialSoundeventProc
  eventFilter*: QSpatialSoundeventFilterProc
  timerEvent*: QSpatialSoundtimerEventProc
  childEvent*: QSpatialSoundchildEventProc
  customEvent*: QSpatialSoundcustomEventProc
  connectNotify*: QSpatialSoundconnectNotifyProc
  disconnectNotify*: QSpatialSounddisconnectNotifyProc
proc QSpatialSoundmetaObject*(self: gen_qspatialsound_types.QSpatialSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpatialSound_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSpatialSound_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSpatialSoundmetacast*(self: gen_qspatialsound_types.QSpatialSound, param1: cstring): pointer =
  fcQSpatialSound_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSpatialSound_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSpatialSoundmetacall*(self: gen_qspatialsound_types.QSpatialSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSpatialSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSpatialSound_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSpatialSoundevent*(self: gen_qspatialsound_types.QSpatialSound, event: gen_qcoreevent_types.QEvent): bool =
  fcQSpatialSound_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSpatialSound_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSpatialSoundeventFilter*(self: gen_qspatialsound_types.QSpatialSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSpatialSound_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSpatialSound_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSpatialSoundtimerEvent*(self: gen_qspatialsound_types.QSpatialSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSpatialSound_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSpatialSound_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSpatialSoundchildEvent*(self: gen_qspatialsound_types.QSpatialSound, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSpatialSound_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSpatialSound_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSpatialSoundcustomEvent*(self: gen_qspatialsound_types.QSpatialSound, event: gen_qcoreevent_types.QEvent): void =
  fcQSpatialSound_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSpatialSound_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSpatialSoundconnectNotify*(self: gen_qspatialsound_types.QSpatialSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSpatialSound_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSpatialSound_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSpatialSounddisconnectNotify*(self: gen_qspatialsound_types.QSpatialSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSpatialSound_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSpatialSound_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpatialSoundVTable](vtbl)
  let self = QSpatialSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qspatialsound_types.QSpatialSound,
    engine: gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QSpatialSoundVTable = nil): gen_qspatialsound_types.QSpatialSound =
  let vtbl = if vtbl == nil: new QSpatialSoundVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpatialSoundVTable, _: ptr cQSpatialSound) {.cdecl.} =
    let vtbl = cast[ref QSpatialSoundVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSpatialSound_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSpatialSound_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSpatialSound_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSpatialSound_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSpatialSound_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSpatialSound_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSpatialSound_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSpatialSound_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSpatialSound_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSpatialSound_disconnectNotify
  gen_qspatialsound_types.QSpatialSound(h: fcQSpatialSound_new(addr(vtbl[]), engine.h))

proc staticMetaObject*(_: type gen_qspatialsound_types.QSpatialSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSpatialSound_staticMetaObject())
proc delete*(self: gen_qspatialsound_types.QSpatialSound) =
  fcQSpatialSound_delete(self.h)
