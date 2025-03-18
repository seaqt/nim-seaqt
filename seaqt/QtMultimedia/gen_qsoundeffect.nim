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


{.compile("gen_qsoundeffect.cpp", QtMultimediaCFlags).}


type QSoundEffectLoopEnum* = distinct cint
template Infinite*(_: type QSoundEffectLoopEnum): untyped = -2


type QSoundEffectStatusEnum* = distinct cint
template Null*(_: type QSoundEffectStatusEnum): untyped = 0
template Loading*(_: type QSoundEffectStatusEnum): untyped = 1
template Ready*(_: type QSoundEffectStatusEnum): untyped = 2
template Error*(_: type QSoundEffectStatusEnum): untyped = 3


import ./gen_qsoundeffect_types
export gen_qsoundeffect_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qaudiodevice_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qaudiodevice_types

type cQSoundEffect*{.exportc: "QSoundEffect", incompleteStruct.} = object

proc fcQSoundEffect_metaObject(self: pointer): pointer {.importc: "QSoundEffect_metaObject".}
proc fcQSoundEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QSoundEffect_metacast".}
proc fcQSoundEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSoundEffect_metacall".}
proc fcQSoundEffect_tr(s: cstring): struct_miqt_string {.importc: "QSoundEffect_tr".}
proc fcQSoundEffect_supportedMimeTypes(): struct_miqt_array {.importc: "QSoundEffect_supportedMimeTypes".}
proc fcQSoundEffect_source(self: pointer): pointer {.importc: "QSoundEffect_source".}
proc fcQSoundEffect_setSource(self: pointer, url: pointer): void {.importc: "QSoundEffect_setSource".}
proc fcQSoundEffect_loopCount(self: pointer): cint {.importc: "QSoundEffect_loopCount".}
proc fcQSoundEffect_loopsRemaining(self: pointer): cint {.importc: "QSoundEffect_loopsRemaining".}
proc fcQSoundEffect_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QSoundEffect_setLoopCount".}
proc fcQSoundEffect_audioDevice(self: pointer): pointer {.importc: "QSoundEffect_audioDevice".}
proc fcQSoundEffect_setAudioDevice(self: pointer, device: pointer): void {.importc: "QSoundEffect_setAudioDevice".}
proc fcQSoundEffect_volume(self: pointer): float32 {.importc: "QSoundEffect_volume".}
proc fcQSoundEffect_setVolume(self: pointer, volume: float32): void {.importc: "QSoundEffect_setVolume".}
proc fcQSoundEffect_isMuted(self: pointer): bool {.importc: "QSoundEffect_isMuted".}
proc fcQSoundEffect_setMuted(self: pointer, muted: bool): void {.importc: "QSoundEffect_setMuted".}
proc fcQSoundEffect_isLoaded(self: pointer): bool {.importc: "QSoundEffect_isLoaded".}
proc fcQSoundEffect_isPlaying(self: pointer): bool {.importc: "QSoundEffect_isPlaying".}
proc fcQSoundEffect_status(self: pointer): cint {.importc: "QSoundEffect_status".}
proc fcQSoundEffect_sourceChanged(self: pointer): void {.importc: "QSoundEffect_sourceChanged".}
proc fcQSoundEffect_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_sourceChanged".}
proc fcQSoundEffect_loopCountChanged(self: pointer): void {.importc: "QSoundEffect_loopCountChanged".}
proc fcQSoundEffect_connect_loopCountChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_loopCountChanged".}
proc fcQSoundEffect_loopsRemainingChanged(self: pointer): void {.importc: "QSoundEffect_loopsRemainingChanged".}
proc fcQSoundEffect_connect_loopsRemainingChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_loopsRemainingChanged".}
proc fcQSoundEffect_volumeChanged(self: pointer): void {.importc: "QSoundEffect_volumeChanged".}
proc fcQSoundEffect_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_volumeChanged".}
proc fcQSoundEffect_mutedChanged(self: pointer): void {.importc: "QSoundEffect_mutedChanged".}
proc fcQSoundEffect_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_mutedChanged".}
proc fcQSoundEffect_loadedChanged(self: pointer): void {.importc: "QSoundEffect_loadedChanged".}
proc fcQSoundEffect_connect_loadedChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_loadedChanged".}
proc fcQSoundEffect_playingChanged(self: pointer): void {.importc: "QSoundEffect_playingChanged".}
proc fcQSoundEffect_connect_playingChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_playingChanged".}
proc fcQSoundEffect_statusChanged(self: pointer): void {.importc: "QSoundEffect_statusChanged".}
proc fcQSoundEffect_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_statusChanged".}
proc fcQSoundEffect_audioDeviceChanged(self: pointer): void {.importc: "QSoundEffect_audioDeviceChanged".}
proc fcQSoundEffect_connect_audioDeviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_audioDeviceChanged".}
proc fcQSoundEffect_play(self: pointer): void {.importc: "QSoundEffect_play".}
proc fcQSoundEffect_stop(self: pointer): void {.importc: "QSoundEffect_stop".}
proc fcQSoundEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSoundEffect_tr2".}
proc fcQSoundEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSoundEffect_tr3".}
proc fcQSoundEffect_vtbl(self: pointer): pointer {.importc: "QSoundEffect_vtbl".}
proc fcQSoundEffect_vdata(self: pointer): pointer {.importc: "QSoundEffect_vdata".}

type cQSoundEffectVTable {.pure.} = object
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
proc fcQSoundEffect_virtualbase_metaObject(self: pointer): pointer {.importc: "QSoundEffect_virtualbase_metaObject".}
proc fcQSoundEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSoundEffect_virtualbase_metacast".}
proc fcQSoundEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSoundEffect_virtualbase_metacall".}
proc fcQSoundEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSoundEffect_virtualbase_event".}
proc fcQSoundEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSoundEffect_virtualbase_eventFilter".}
proc fcQSoundEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSoundEffect_virtualbase_timerEvent".}
proc fcQSoundEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSoundEffect_virtualbase_childEvent".}
proc fcQSoundEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSoundEffect_virtualbase_customEvent".}
proc fcQSoundEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSoundEffect_virtualbase_connectNotify".}
proc fcQSoundEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSoundEffect_virtualbase_disconnectNotify".}
proc fcQSoundEffect_protectedbase_sender(self: pointer): pointer {.importc: "QSoundEffect_protectedbase_sender".}
proc fcQSoundEffect_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSoundEffect_protectedbase_senderSignalIndex".}
proc fcQSoundEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSoundEffect_protectedbase_receivers".}
proc fcQSoundEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSoundEffect_protectedbase_isSignalConnected".}
proc fcQSoundEffect_new(vtbl, vdata: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new".}
proc fcQSoundEffect_new2(vtbl, vdata: pointer, audioDevice: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new2".}
proc fcQSoundEffect_new3(vtbl, vdata: pointer, parent: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new3".}
proc fcQSoundEffect_new4(vtbl, vdata: pointer, audioDevice: pointer, parent: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new4".}
proc fcQSoundEffect_staticMetaObject(): pointer {.importc: "QSoundEffect_staticMetaObject".}

proc metaObject*(self: gen_qsoundeffect_types.QSoundEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSoundEffect_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsoundeffect_types.QSoundEffect, param1: cstring): pointer =
  fcQSoundEffect_metacast(self.h, param1)

proc metacall*(self: gen_qsoundeffect_types.QSoundEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQSoundEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring): string =
  let v_ms = fcQSoundEffect_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supportedMimeTypes*(_: type gen_qsoundeffect_types.QSoundEffect): seq[string] =
  var v_ma = fcQSoundEffect_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc source*(self: gen_qsoundeffect_types.QSoundEffect): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQSoundEffect_source(self.h), owned: true)

proc setSource*(self: gen_qsoundeffect_types.QSoundEffect, url: gen_qurl_types.QUrl): void =
  fcQSoundEffect_setSource(self.h, url.h)

proc loopCount*(self: gen_qsoundeffect_types.QSoundEffect): cint =
  fcQSoundEffect_loopCount(self.h)

proc loopsRemaining*(self: gen_qsoundeffect_types.QSoundEffect): cint =
  fcQSoundEffect_loopsRemaining(self.h)

proc setLoopCount*(self: gen_qsoundeffect_types.QSoundEffect, loopCount: cint): void =
  fcQSoundEffect_setLoopCount(self.h, loopCount)

proc audioDevice*(self: gen_qsoundeffect_types.QSoundEffect): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQSoundEffect_audioDevice(self.h), owned: true)

proc setAudioDevice*(self: gen_qsoundeffect_types.QSoundEffect, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQSoundEffect_setAudioDevice(self.h, device.h)

proc volume*(self: gen_qsoundeffect_types.QSoundEffect): float32 =
  fcQSoundEffect_volume(self.h)

proc setVolume*(self: gen_qsoundeffect_types.QSoundEffect, volume: float32): void =
  fcQSoundEffect_setVolume(self.h, volume)

proc isMuted*(self: gen_qsoundeffect_types.QSoundEffect): bool =
  fcQSoundEffect_isMuted(self.h)

proc setMuted*(self: gen_qsoundeffect_types.QSoundEffect, muted: bool): void =
  fcQSoundEffect_setMuted(self.h, muted)

proc isLoaded*(self: gen_qsoundeffect_types.QSoundEffect): bool =
  fcQSoundEffect_isLoaded(self.h)

proc isPlaying*(self: gen_qsoundeffect_types.QSoundEffect): bool =
  fcQSoundEffect_isPlaying(self.h)

proc status*(self: gen_qsoundeffect_types.QSoundEffect): cint =
  cint(fcQSoundEffect_status(self.h))

proc sourceChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_sourceChanged(self.h)

type QSoundEffectsourceChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectsourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSourceChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectsourceChangedSlot) =
  var tmp = new QSoundEffectsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_sourceChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_sourceChanged, fcQSoundEffect_slot_callback_sourceChanged_release)

proc loopCountChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_loopCountChanged(self.h)

type QSoundEffectloopCountChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_loopCountChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectloopCountChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_loopCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectloopCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onLoopCountChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectloopCountChangedSlot) =
  var tmp = new QSoundEffectloopCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_loopCountChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_loopCountChanged, fcQSoundEffect_slot_callback_loopCountChanged_release)

proc loopsRemainingChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_loopsRemainingChanged(self.h)

type QSoundEffectloopsRemainingChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_loopsRemainingChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectloopsRemainingChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_loopsRemainingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectloopsRemainingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onLoopsRemainingChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectloopsRemainingChangedSlot) =
  var tmp = new QSoundEffectloopsRemainingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_loopsRemainingChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_loopsRemainingChanged, fcQSoundEffect_slot_callback_loopsRemainingChanged_release)

proc volumeChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_volumeChanged(self.h)

type QSoundEffectvolumeChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_volumeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectvolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVolumeChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectvolumeChangedSlot) =
  var tmp = new QSoundEffectvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_volumeChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_volumeChanged, fcQSoundEffect_slot_callback_volumeChanged_release)

proc mutedChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_mutedChanged(self.h)

type QSoundEffectmutedChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_mutedChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectmutedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMutedChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectmutedChangedSlot) =
  var tmp = new QSoundEffectmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_mutedChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_mutedChanged, fcQSoundEffect_slot_callback_mutedChanged_release)

proc loadedChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_loadedChanged(self.h)

type QSoundEffectloadedChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_loadedChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectloadedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_loadedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectloadedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onLoadedChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectloadedChangedSlot) =
  var tmp = new QSoundEffectloadedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_loadedChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_loadedChanged, fcQSoundEffect_slot_callback_loadedChanged_release)

proc playingChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_playingChanged(self.h)

type QSoundEffectplayingChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_playingChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectplayingChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_playingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectplayingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPlayingChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectplayingChangedSlot) =
  var tmp = new QSoundEffectplayingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_playingChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_playingChanged, fcQSoundEffect_slot_callback_playingChanged_release)

proc statusChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_statusChanged(self.h)

type QSoundEffectstatusChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_statusChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectstatusChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStatusChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectstatusChangedSlot) =
  var tmp = new QSoundEffectstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_statusChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_statusChanged, fcQSoundEffect_slot_callback_statusChanged_release)

proc audioDeviceChanged*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_audioDeviceChanged(self.h)

type QSoundEffectaudioDeviceChangedSlot* = proc()
proc fcQSoundEffect_slot_callback_audioDeviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectaudioDeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQSoundEffect_slot_callback_audioDeviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectaudioDeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAudioDeviceChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectaudioDeviceChangedSlot) =
  var tmp = new QSoundEffectaudioDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_audioDeviceChanged(self.h, cast[int](addr tmp[]), fcQSoundEffect_slot_callback_audioDeviceChanged, fcQSoundEffect_slot_callback_audioDeviceChanged_release)

proc play*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_play(self.h)

proc stop*(self: gen_qsoundeffect_types.QSoundEffect): void =
  fcQSoundEffect_stop(self.h)

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring, c: cstring): string =
  let v_ms = fcQSoundEffect_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSoundEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSoundEffectmetaObjectProc* = proc(self: QSoundEffect): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSoundEffectmetacastProc* = proc(self: QSoundEffect, param1: cstring): pointer {.raises: [], gcsafe.}
type QSoundEffectmetacallProc* = proc(self: QSoundEffect, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSoundEffecteventProc* = proc(self: QSoundEffect, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSoundEffecteventFilterProc* = proc(self: QSoundEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSoundEffecttimerEventProc* = proc(self: QSoundEffect, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSoundEffectchildEventProc* = proc(self: QSoundEffect, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSoundEffectcustomEventProc* = proc(self: QSoundEffect, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSoundEffectconnectNotifyProc* = proc(self: QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSoundEffectdisconnectNotifyProc* = proc(self: QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSoundEffectVTable* {.inheritable, pure.} = object
  vtbl: cQSoundEffectVTable
  metaObject*: QSoundEffectmetaObjectProc
  metacast*: QSoundEffectmetacastProc
  metacall*: QSoundEffectmetacallProc
  event*: QSoundEffecteventProc
  eventFilter*: QSoundEffecteventFilterProc
  timerEvent*: QSoundEffecttimerEventProc
  childEvent*: QSoundEffectchildEventProc
  customEvent*: QSoundEffectcustomEventProc
  connectNotify*: QSoundEffectconnectNotifyProc
  disconnectNotify*: QSoundEffectdisconnectNotifyProc

proc QSoundEffectmetaObject*(self: gen_qsoundeffect_types.QSoundEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSoundEffect_virtualbase_metaObject(self.h), owned: false)

proc QSoundEffectmetacast*(self: gen_qsoundeffect_types.QSoundEffect, param1: cstring): pointer =
  fcQSoundEffect_virtualbase_metacast(self.h, param1)

proc QSoundEffectmetacall*(self: gen_qsoundeffect_types.QSoundEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQSoundEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSoundEffectevent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQSoundEffect_virtualbase_event(self.h, event.h)

proc QSoundEffecteventFilter*(self: gen_qsoundeffect_types.QSoundEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSoundEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSoundEffecttimerEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSoundEffect_virtualbase_timerEvent(self.h, event.h)

proc QSoundEffectchildEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSoundEffect_virtualbase_childEvent(self.h, event.h)

proc QSoundEffectcustomEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQSoundEffect_virtualbase_customEvent(self.h, event.h)

proc QSoundEffectconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSoundEffect_virtualbase_connectNotify(self.h, signal.h)

proc QSoundEffectdisconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSoundEffect_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSoundEffect_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSoundEffect_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSoundEffect_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSoundEffect_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSoundEffect_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSoundEffect_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSoundEffect_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSoundEffect_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSoundEffect_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSoundEffect_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](fcQSoundEffect_vdata(self))
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSoundEffect* {.inheritable.} = ref object of QSoundEffect
  vtbl*: cQSoundEffectVTable

method metaObject*(self: VirtualQSoundEffect): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSoundEffectmetaObject(self[])
method metacast*(self: VirtualQSoundEffect, param1: cstring): pointer {.base.} =
  QSoundEffectmetacast(self[], param1)
method metacall*(self: VirtualQSoundEffect, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSoundEffectmetacall(self[], param1, param2, param3)
method event*(self: VirtualQSoundEffect, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSoundEffectevent(self[], event)
method eventFilter*(self: VirtualQSoundEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSoundEffecteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSoundEffect, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSoundEffecttimerEvent(self[], event)
method childEvent*(self: VirtualQSoundEffect, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSoundEffectchildEvent(self[], event)
method customEvent*(self: VirtualQSoundEffect, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSoundEffectcustomEvent(self[], event)
method connectNotify*(self: VirtualQSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSoundEffectconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSoundEffectdisconnectNotify(self[], signal)

proc fcQSoundEffect_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSoundEffect_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSoundEffect_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSoundEffect_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSoundEffect_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSoundEffect_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSoundEffect_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSoundEffect_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSoundEffect_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSoundEffect_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSoundEffect](fcQSoundEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qsoundeffect_types.QSoundEffect): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSoundEffect_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsoundeffect_types.QSoundEffect): cint =
  fcQSoundEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsoundeffect_types.QSoundEffect, signal: cstring): cint =
  fcQSoundEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSoundEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](fcQSoundEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSoundEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSoundEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSoundEffect_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSoundEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSoundEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSoundEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSoundEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSoundEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSoundEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSoundEffect_vtable_callback_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    audioDevice: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](fcQSoundEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSoundEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSoundEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSoundEffect_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSoundEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSoundEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSoundEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSoundEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSoundEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSoundEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSoundEffect_vtable_callback_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new2(addr(vtbl[].vtbl), addr(vtbl[]), audioDevice.h), owned: true)

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](fcQSoundEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSoundEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSoundEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSoundEffect_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSoundEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSoundEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSoundEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSoundEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSoundEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSoundEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSoundEffect_vtable_callback_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    audioDevice: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](fcQSoundEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSoundEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSoundEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSoundEffect_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSoundEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSoundEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSoundEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSoundEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSoundEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSoundEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSoundEffect_vtable_callback_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new4(addr(vtbl[].vtbl), addr(vtbl[]), audioDevice.h, parent.h), owned: true)

const cQSoundEffect_mvtbl = cQSoundEffectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSoundEffect()[])](self.fcQSoundEffect_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSoundEffect_method_callback_metaObject,
  metacast: fcQSoundEffect_method_callback_metacast,
  metacall: fcQSoundEffect_method_callback_metacall,
  event: fcQSoundEffect_method_callback_event,
  eventFilter: fcQSoundEffect_method_callback_eventFilter,
  timerEvent: fcQSoundEffect_method_callback_timerEvent,
  childEvent: fcQSoundEffect_method_callback_childEvent,
  customEvent: fcQSoundEffect_method_callback_customEvent,
  connectNotify: fcQSoundEffect_method_callback_connectNotify,
  disconnectNotify: fcQSoundEffect_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    inst: VirtualQSoundEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSoundEffect_new(addr(cQSoundEffect_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    audioDevice: gen_qaudiodevice_types.QAudioDevice,
    inst: VirtualQSoundEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSoundEffect_new2(addr(cQSoundEffect_mvtbl), addr(inst[]), audioDevice.h)
  inst[].owned = true

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSoundEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSoundEffect_new3(addr(cQSoundEffect_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    audioDevice: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    inst: VirtualQSoundEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSoundEffect_new4(addr(cQSoundEffect_mvtbl), addr(inst[]), audioDevice.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsoundeffect_types.QSoundEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSoundEffect_staticMetaObject())
