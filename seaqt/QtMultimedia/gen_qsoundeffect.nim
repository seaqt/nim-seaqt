import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qsoundeffect.cpp", cflags).}


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

proc fcQSoundEffect_metaObject(self: pointer, ): pointer {.importc: "QSoundEffect_metaObject".}
proc fcQSoundEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QSoundEffect_metacast".}
proc fcQSoundEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSoundEffect_metacall".}
proc fcQSoundEffect_tr(s: cstring): struct_miqt_string {.importc: "QSoundEffect_tr".}
proc fcQSoundEffect_supportedMimeTypes(): struct_miqt_array {.importc: "QSoundEffect_supportedMimeTypes".}
proc fcQSoundEffect_source(self: pointer, ): pointer {.importc: "QSoundEffect_source".}
proc fcQSoundEffect_setSource(self: pointer, url: pointer): void {.importc: "QSoundEffect_setSource".}
proc fcQSoundEffect_loopCount(self: pointer, ): cint {.importc: "QSoundEffect_loopCount".}
proc fcQSoundEffect_loopsRemaining(self: pointer, ): cint {.importc: "QSoundEffect_loopsRemaining".}
proc fcQSoundEffect_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QSoundEffect_setLoopCount".}
proc fcQSoundEffect_audioDevice(self: pointer, ): pointer {.importc: "QSoundEffect_audioDevice".}
proc fcQSoundEffect_setAudioDevice(self: pointer, device: pointer): void {.importc: "QSoundEffect_setAudioDevice".}
proc fcQSoundEffect_volume(self: pointer, ): float32 {.importc: "QSoundEffect_volume".}
proc fcQSoundEffect_setVolume(self: pointer, volume: float32): void {.importc: "QSoundEffect_setVolume".}
proc fcQSoundEffect_isMuted(self: pointer, ): bool {.importc: "QSoundEffect_isMuted".}
proc fcQSoundEffect_setMuted(self: pointer, muted: bool): void {.importc: "QSoundEffect_setMuted".}
proc fcQSoundEffect_isLoaded(self: pointer, ): bool {.importc: "QSoundEffect_isLoaded".}
proc fcQSoundEffect_isPlaying(self: pointer, ): bool {.importc: "QSoundEffect_isPlaying".}
proc fcQSoundEffect_status(self: pointer, ): cint {.importc: "QSoundEffect_status".}
proc fcQSoundEffect_sourceChanged(self: pointer, ): void {.importc: "QSoundEffect_sourceChanged".}
proc fcQSoundEffect_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_sourceChanged".}
proc fcQSoundEffect_loopCountChanged(self: pointer, ): void {.importc: "QSoundEffect_loopCountChanged".}
proc fcQSoundEffect_connect_loopCountChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_loopCountChanged".}
proc fcQSoundEffect_loopsRemainingChanged(self: pointer, ): void {.importc: "QSoundEffect_loopsRemainingChanged".}
proc fcQSoundEffect_connect_loopsRemainingChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_loopsRemainingChanged".}
proc fcQSoundEffect_volumeChanged(self: pointer, ): void {.importc: "QSoundEffect_volumeChanged".}
proc fcQSoundEffect_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_volumeChanged".}
proc fcQSoundEffect_mutedChanged(self: pointer, ): void {.importc: "QSoundEffect_mutedChanged".}
proc fcQSoundEffect_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_mutedChanged".}
proc fcQSoundEffect_loadedChanged(self: pointer, ): void {.importc: "QSoundEffect_loadedChanged".}
proc fcQSoundEffect_connect_loadedChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_loadedChanged".}
proc fcQSoundEffect_playingChanged(self: pointer, ): void {.importc: "QSoundEffect_playingChanged".}
proc fcQSoundEffect_connect_playingChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_playingChanged".}
proc fcQSoundEffect_statusChanged(self: pointer, ): void {.importc: "QSoundEffect_statusChanged".}
proc fcQSoundEffect_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_statusChanged".}
proc fcQSoundEffect_audioDeviceChanged(self: pointer, ): void {.importc: "QSoundEffect_audioDeviceChanged".}
proc fcQSoundEffect_connect_audioDeviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSoundEffect_connect_audioDeviceChanged".}
proc fcQSoundEffect_play(self: pointer, ): void {.importc: "QSoundEffect_play".}
proc fcQSoundEffect_stop(self: pointer, ): void {.importc: "QSoundEffect_stop".}
proc fcQSoundEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSoundEffect_tr2".}
proc fcQSoundEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSoundEffect_tr3".}
type cQSoundEffectVTable = object
  destructor*: proc(vtbl: ptr cQSoundEffectVTable, self: ptr cQSoundEffect) {.cdecl, raises:[], gcsafe.}
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
proc fcQSoundEffect_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSoundEffect_virtualbase_metaObject".}
proc fcQSoundEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSoundEffect_virtualbase_metacast".}
proc fcQSoundEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSoundEffect_virtualbase_metacall".}
proc fcQSoundEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSoundEffect_virtualbase_event".}
proc fcQSoundEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSoundEffect_virtualbase_eventFilter".}
proc fcQSoundEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSoundEffect_virtualbase_timerEvent".}
proc fcQSoundEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSoundEffect_virtualbase_childEvent".}
proc fcQSoundEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSoundEffect_virtualbase_customEvent".}
proc fcQSoundEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSoundEffect_virtualbase_connectNotify".}
proc fcQSoundEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSoundEffect_virtualbase_disconnectNotify".}
proc fcQSoundEffect_protectedbase_sender(self: pointer, ): pointer {.importc: "QSoundEffect_protectedbase_sender".}
proc fcQSoundEffect_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSoundEffect_protectedbase_senderSignalIndex".}
proc fcQSoundEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSoundEffect_protectedbase_receivers".}
proc fcQSoundEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSoundEffect_protectedbase_isSignalConnected".}
proc fcQSoundEffect_new(vtbl: pointer, ): ptr cQSoundEffect {.importc: "QSoundEffect_new".}
proc fcQSoundEffect_new2(vtbl: pointer, audioDevice: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new2".}
proc fcQSoundEffect_new3(vtbl: pointer, parent: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new3".}
proc fcQSoundEffect_new4(vtbl: pointer, audioDevice: pointer, parent: pointer): ptr cQSoundEffect {.importc: "QSoundEffect_new4".}
proc fcQSoundEffect_staticMetaObject(): pointer {.importc: "QSoundEffect_staticMetaObject".}
proc fcQSoundEffect_delete(self: pointer) {.importc: "QSoundEffect_delete".}

proc metaObject*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSoundEffect_metaObject(self.h))

proc metacast*(self: gen_qsoundeffect_types.QSoundEffect, param1: cstring): pointer =
  fcQSoundEffect_metacast(self.h, param1)

proc metacall*(self: gen_qsoundeffect_types.QSoundEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQSoundEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring): string =
  let v_ms = fcQSoundEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedMimeTypes*(_: type gen_qsoundeffect_types.QSoundEffect, ): seq[string] =
  var v_ma = fcQSoundEffect_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc source*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQSoundEffect_source(self.h))

proc setSource*(self: gen_qsoundeffect_types.QSoundEffect, url: gen_qurl_types.QUrl): void =
  fcQSoundEffect_setSource(self.h, url.h)

proc loopCount*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =
  fcQSoundEffect_loopCount(self.h)

proc loopsRemaining*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =
  fcQSoundEffect_loopsRemaining(self.h)

proc setLoopCount*(self: gen_qsoundeffect_types.QSoundEffect, loopCount: cint): void =
  fcQSoundEffect_setLoopCount(self.h, loopCount)

proc audioDevice*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQSoundEffect_audioDevice(self.h))

proc setAudioDevice*(self: gen_qsoundeffect_types.QSoundEffect, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQSoundEffect_setAudioDevice(self.h, device.h)

proc volume*(self: gen_qsoundeffect_types.QSoundEffect, ): float32 =
  fcQSoundEffect_volume(self.h)

proc setVolume*(self: gen_qsoundeffect_types.QSoundEffect, volume: float32): void =
  fcQSoundEffect_setVolume(self.h, volume)

proc isMuted*(self: gen_qsoundeffect_types.QSoundEffect, ): bool =
  fcQSoundEffect_isMuted(self.h)

proc setMuted*(self: gen_qsoundeffect_types.QSoundEffect, muted: bool): void =
  fcQSoundEffect_setMuted(self.h, muted)

proc isLoaded*(self: gen_qsoundeffect_types.QSoundEffect, ): bool =
  fcQSoundEffect_isLoaded(self.h)

proc isPlaying*(self: gen_qsoundeffect_types.QSoundEffect, ): bool =
  fcQSoundEffect_isPlaying(self.h)

proc status*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =
  cint(fcQSoundEffect_status(self.h))

proc sourceChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_sourceChanged(self.h)

type QSoundEffectsourceChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectsourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectsourceChangedSlot) =
  var tmp = new QSoundEffectsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_sourceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_sourceChanged, miqt_exec_callback_cQSoundEffect_sourceChanged_release)

proc loopCountChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_loopCountChanged(self.h)

type QSoundEffectloopCountChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_loopCountChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectloopCountChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_loopCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectloopCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloopCountChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectloopCountChangedSlot) =
  var tmp = new QSoundEffectloopCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_loopCountChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_loopCountChanged, miqt_exec_callback_cQSoundEffect_loopCountChanged_release)

proc loopsRemainingChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_loopsRemainingChanged(self.h)

type QSoundEffectloopsRemainingChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_loopsRemainingChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectloopsRemainingChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_loopsRemainingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectloopsRemainingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloopsRemainingChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectloopsRemainingChangedSlot) =
  var tmp = new QSoundEffectloopsRemainingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_loopsRemainingChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_loopsRemainingChanged, miqt_exec_callback_cQSoundEffect_loopsRemainingChanged_release)

proc volumeChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_volumeChanged(self.h)

type QSoundEffectvolumeChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_volumeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectvolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectvolumeChangedSlot) =
  var tmp = new QSoundEffectvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_volumeChanged, miqt_exec_callback_cQSoundEffect_volumeChanged_release)

proc mutedChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_mutedChanged(self.h)

type QSoundEffectmutedChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_mutedChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectmutedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectmutedChangedSlot) =
  var tmp = new QSoundEffectmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_mutedChanged, miqt_exec_callback_cQSoundEffect_mutedChanged_release)

proc loadedChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_loadedChanged(self.h)

type QSoundEffectloadedChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_loadedChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectloadedChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_loadedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectloadedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadedChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectloadedChangedSlot) =
  var tmp = new QSoundEffectloadedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_loadedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_loadedChanged, miqt_exec_callback_cQSoundEffect_loadedChanged_release)

proc playingChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_playingChanged(self.h)

type QSoundEffectplayingChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_playingChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectplayingChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_playingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectplayingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onplayingChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectplayingChangedSlot) =
  var tmp = new QSoundEffectplayingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_playingChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_playingChanged, miqt_exec_callback_cQSoundEffect_playingChanged_release)

proc statusChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_statusChanged(self.h)

type QSoundEffectstatusChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_statusChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectstatusChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectstatusChangedSlot) =
  var tmp = new QSoundEffectstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_statusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_statusChanged, miqt_exec_callback_cQSoundEffect_statusChanged_release)

proc audioDeviceChanged*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_audioDeviceChanged(self.h)

type QSoundEffectaudioDeviceChangedSlot* = proc()
proc miqt_exec_callback_cQSoundEffect_audioDeviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSoundEffectaudioDeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSoundEffect_audioDeviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSoundEffectaudioDeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioDeviceChanged*(self: gen_qsoundeffect_types.QSoundEffect, slot: QSoundEffectaudioDeviceChangedSlot) =
  var tmp = new QSoundEffectaudioDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSoundEffect_connect_audioDeviceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSoundEffect_audioDeviceChanged, miqt_exec_callback_cQSoundEffect_audioDeviceChanged_release)

proc play*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_play(self.h)

proc stop*(self: gen_qsoundeffect_types.QSoundEffect, ): void =
  fcQSoundEffect_stop(self.h)

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring, c: cstring): string =
  let v_ms = fcQSoundEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsoundeffect_types.QSoundEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSoundEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QSoundEffectVTable* = object
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
proc QSoundEffectmetaObject*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSoundEffect_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSoundEffect_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSoundEffectmetacast*(self: gen_qsoundeffect_types.QSoundEffect, param1: cstring): pointer =
  fcQSoundEffect_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSoundEffect_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSoundEffectmetacall*(self: gen_qsoundeffect_types.QSoundEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQSoundEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSoundEffect_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSoundEffectevent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQSoundEffect_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSoundEffect_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSoundEffecteventFilter*(self: gen_qsoundeffect_types.QSoundEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSoundEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSoundEffect_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSoundEffecttimerEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSoundEffect_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSoundEffect_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSoundEffectchildEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSoundEffect_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSoundEffect_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSoundEffectcustomEvent*(self: gen_qsoundeffect_types.QSoundEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQSoundEffect_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSoundEffect_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSoundEffectconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSoundEffect_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSoundEffect_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSoundEffectdisconnectNotify*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSoundEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSoundEffect_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundEffectVTable](vtbl)
  let self = QSoundEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsoundeffect_types.QSoundEffect, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSoundEffect_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsoundeffect_types.QSoundEffect, ): cint =
  fcQSoundEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsoundeffect_types.QSoundEffect, signal: cstring): cint =
  fcQSoundEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsoundeffect_types.QSoundEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSoundEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSoundEffectVTable, _: ptr cQSoundEffect) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSoundEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSoundEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSoundEffect_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSoundEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSoundEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSoundEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSoundEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSoundEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSoundEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSoundEffect_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new(addr(vtbl[]), ))

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    audioDevice: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSoundEffectVTable, _: ptr cQSoundEffect) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSoundEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSoundEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSoundEffect_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSoundEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSoundEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSoundEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSoundEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSoundEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSoundEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSoundEffect_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new2(addr(vtbl[]), audioDevice.h))

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSoundEffectVTable, _: ptr cQSoundEffect) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSoundEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSoundEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSoundEffect_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSoundEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSoundEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSoundEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSoundEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSoundEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSoundEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSoundEffect_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsoundeffect_types.QSoundEffect,
    audioDevice: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    vtbl: ref QSoundEffectVTable = nil): gen_qsoundeffect_types.QSoundEffect =
  let vtbl = if vtbl == nil: new QSoundEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSoundEffectVTable, _: ptr cQSoundEffect) {.cdecl.} =
    let vtbl = cast[ref QSoundEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSoundEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSoundEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSoundEffect_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSoundEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSoundEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSoundEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSoundEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSoundEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSoundEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSoundEffect_disconnectNotify
  gen_qsoundeffect_types.QSoundEffect(h: fcQSoundEffect_new4(addr(vtbl[]), audioDevice.h, parent.h))

proc staticMetaObject*(_: type gen_qsoundeffect_types.QSoundEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSoundEffect_staticMetaObject())
proc delete*(self: gen_qsoundeffect_types.QSoundEffect) =
  fcQSoundEffect_delete(self.h)
