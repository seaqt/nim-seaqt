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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmediaplayercontrol.cpp", cflags).}


import ./gen_qmediaplayercontrol_types
export gen_qmediaplayercontrol_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontent_types,
  ./gen_qmediacontrol,
  ./gen_qmediatimerange_types
export
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontent_types,
  gen_qmediacontrol,
  gen_qmediatimerange_types

type cQMediaPlayerControl*{.exportc: "QMediaPlayerControl", incompleteStruct.} = object

proc fcQMediaPlayerControl_metaObject(self: pointer): pointer {.importc: "QMediaPlayerControl_metaObject".}
proc fcQMediaPlayerControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayerControl_metacast".}
proc fcQMediaPlayerControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayerControl_metacall".}
proc fcQMediaPlayerControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_tr".}
proc fcQMediaPlayerControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_trUtf8".}
proc fcQMediaPlayerControl_state(self: pointer): cint {.importc: "QMediaPlayerControl_state".}
proc fcQMediaPlayerControl_mediaStatus(self: pointer): cint {.importc: "QMediaPlayerControl_mediaStatus".}
proc fcQMediaPlayerControl_duration(self: pointer): clonglong {.importc: "QMediaPlayerControl_duration".}
proc fcQMediaPlayerControl_position(self: pointer): clonglong {.importc: "QMediaPlayerControl_position".}
proc fcQMediaPlayerControl_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayerControl_setPosition".}
proc fcQMediaPlayerControl_volume(self: pointer): cint {.importc: "QMediaPlayerControl_volume".}
proc fcQMediaPlayerControl_setVolume(self: pointer, volume: cint): void {.importc: "QMediaPlayerControl_setVolume".}
proc fcQMediaPlayerControl_isMuted(self: pointer): bool {.importc: "QMediaPlayerControl_isMuted".}
proc fcQMediaPlayerControl_setMuted(self: pointer, mute: bool): void {.importc: "QMediaPlayerControl_setMuted".}
proc fcQMediaPlayerControl_bufferStatus(self: pointer): cint {.importc: "QMediaPlayerControl_bufferStatus".}
proc fcQMediaPlayerControl_isAudioAvailable(self: pointer): bool {.importc: "QMediaPlayerControl_isAudioAvailable".}
proc fcQMediaPlayerControl_isVideoAvailable(self: pointer): bool {.importc: "QMediaPlayerControl_isVideoAvailable".}
proc fcQMediaPlayerControl_isSeekable(self: pointer): bool {.importc: "QMediaPlayerControl_isSeekable".}
proc fcQMediaPlayerControl_availablePlaybackRanges(self: pointer): pointer {.importc: "QMediaPlayerControl_availablePlaybackRanges".}
proc fcQMediaPlayerControl_playbackRate(self: pointer): float64 {.importc: "QMediaPlayerControl_playbackRate".}
proc fcQMediaPlayerControl_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayerControl_setPlaybackRate".}
proc fcQMediaPlayerControl_media(self: pointer): pointer {.importc: "QMediaPlayerControl_media".}
proc fcQMediaPlayerControl_mediaStream(self: pointer): pointer {.importc: "QMediaPlayerControl_mediaStream".}
proc fcQMediaPlayerControl_setMedia(self: pointer, media: pointer, stream: pointer): void {.importc: "QMediaPlayerControl_setMedia".}
proc fcQMediaPlayerControl_play(self: pointer): void {.importc: "QMediaPlayerControl_play".}
proc fcQMediaPlayerControl_pause(self: pointer): void {.importc: "QMediaPlayerControl_pause".}
proc fcQMediaPlayerControl_stop(self: pointer): void {.importc: "QMediaPlayerControl_stop".}
proc fcQMediaPlayerControl_mediaChanged(self: pointer, content: pointer): void {.importc: "QMediaPlayerControl_mediaChanged".}
proc fcQMediaPlayerControl_connect_mediaChanged(self: pointer, slot: int, callback: proc (slot: int, content: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_mediaChanged".}
proc fcQMediaPlayerControl_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayerControl_durationChanged".}
proc fcQMediaPlayerControl_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_durationChanged".}
proc fcQMediaPlayerControl_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayerControl_positionChanged".}
proc fcQMediaPlayerControl_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int, position: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_positionChanged".}
proc fcQMediaPlayerControl_stateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayerControl_stateChanged".}
proc fcQMediaPlayerControl_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, newState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_stateChanged".}
proc fcQMediaPlayerControl_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayerControl_mediaStatusChanged".}
proc fcQMediaPlayerControl_connect_mediaStatusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_mediaStatusChanged".}
proc fcQMediaPlayerControl_volumeChanged(self: pointer, volume: cint): void {.importc: "QMediaPlayerControl_volumeChanged".}
proc fcQMediaPlayerControl_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_volumeChanged".}
proc fcQMediaPlayerControl_mutedChanged(self: pointer, mute: bool): void {.importc: "QMediaPlayerControl_mutedChanged".}
proc fcQMediaPlayerControl_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, mute: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_mutedChanged".}
proc fcQMediaPlayerControl_audioAvailableChanged(self: pointer, audioAvailable: bool): void {.importc: "QMediaPlayerControl_audioAvailableChanged".}
proc fcQMediaPlayerControl_connect_audioAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, audioAvailable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_audioAvailableChanged".}
proc fcQMediaPlayerControl_videoAvailableChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayerControl_videoAvailableChanged".}
proc fcQMediaPlayerControl_connect_videoAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, videoAvailable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_videoAvailableChanged".}
proc fcQMediaPlayerControl_bufferStatusChanged(self: pointer, percentFilled: cint): void {.importc: "QMediaPlayerControl_bufferStatusChanged".}
proc fcQMediaPlayerControl_connect_bufferStatusChanged(self: pointer, slot: int, callback: proc (slot: int, percentFilled: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_bufferStatusChanged".}
proc fcQMediaPlayerControl_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayerControl_seekableChanged".}
proc fcQMediaPlayerControl_connect_seekableChanged(self: pointer, slot: int, callback: proc (slot: int, seekable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_seekableChanged".}
proc fcQMediaPlayerControl_availablePlaybackRangesChanged(self: pointer, ranges: pointer): void {.importc: "QMediaPlayerControl_availablePlaybackRangesChanged".}
proc fcQMediaPlayerControl_connect_availablePlaybackRangesChanged(self: pointer, slot: int, callback: proc (slot: int, ranges: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_availablePlaybackRangesChanged".}
proc fcQMediaPlayerControl_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayerControl_playbackRateChanged".}
proc fcQMediaPlayerControl_connect_playbackRateChanged(self: pointer, slot: int, callback: proc (slot: int, rate: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_playbackRateChanged".}
proc fcQMediaPlayerControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaPlayerControl_error".}
proc fcQMediaPlayerControl_connect_error(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayerControl_connect_error".}
proc fcQMediaPlayerControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_tr2".}
proc fcQMediaPlayerControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayerControl_tr3".}
proc fcQMediaPlayerControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayerControl_trUtf82".}
proc fcQMediaPlayerControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayerControl_trUtf83".}
proc fcQMediaPlayerControl_protectedbase_sender(self: pointer): pointer {.importc: "QMediaPlayerControl_protectedbase_sender".}
proc fcQMediaPlayerControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaPlayerControl_protectedbase_senderSignalIndex".}
proc fcQMediaPlayerControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaPlayerControl_protectedbase_receivers".}
proc fcQMediaPlayerControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaPlayerControl_protectedbase_isSignalConnected".}
proc fcQMediaPlayerControl_staticMetaObject(): pointer {.importc: "QMediaPlayerControl_staticMetaObject".}

proc metaObject*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayerControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, param1: cstring): pointer =
  fcQMediaPlayerControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlayerControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl, s: cstring): string =
  let v_ms = fcQMediaPlayerControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl, s: cstring): string =
  let v_ms = fcQMediaPlayerControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): cint =
  cint(fcQMediaPlayerControl_state(self.h))

proc mediaStatus*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): cint =
  cint(fcQMediaPlayerControl_mediaStatus(self.h))

proc duration*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): clonglong =
  fcQMediaPlayerControl_duration(self.h)

proc position*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): clonglong =
  fcQMediaPlayerControl_position(self.h)

proc setPosition*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, position: clonglong): void =
  fcQMediaPlayerControl_setPosition(self.h, position)

proc volume*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): cint =
  fcQMediaPlayerControl_volume(self.h)

proc setVolume*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, volume: cint): void =
  fcQMediaPlayerControl_setVolume(self.h, volume)

proc isMuted*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): bool =
  fcQMediaPlayerControl_isMuted(self.h)

proc setMuted*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, mute: bool): void =
  fcQMediaPlayerControl_setMuted(self.h, mute)

proc bufferStatus*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): cint =
  fcQMediaPlayerControl_bufferStatus(self.h)

proc isAudioAvailable*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): bool =
  fcQMediaPlayerControl_isAudioAvailable(self.h)

proc isVideoAvailable*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): bool =
  fcQMediaPlayerControl_isVideoAvailable(self.h)

proc isSeekable*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): bool =
  fcQMediaPlayerControl_isSeekable(self.h)

proc availablePlaybackRanges*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaPlayerControl_availablePlaybackRanges(self.h), owned: true)

proc playbackRate*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): float64 =
  fcQMediaPlayerControl_playbackRate(self.h)

proc setPlaybackRate*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, rate: float64): void =
  fcQMediaPlayerControl_setPlaybackRate(self.h, rate)

proc media*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlayerControl_media(self.h), owned: true)

proc mediaStream*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQMediaPlayerControl_mediaStream(self.h), owned: false)

proc setMedia*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, media: gen_qmediacontent_types.QMediaContent, stream: gen_qiodevice_types.QIODevice): void =
  fcQMediaPlayerControl_setMedia(self.h, media.h, stream.h)

proc play*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): void =
  fcQMediaPlayerControl_play(self.h)

proc pause*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): void =
  fcQMediaPlayerControl_pause(self.h)

proc stop*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): void =
  fcQMediaPlayerControl_stop(self.h)

proc mediaChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, content: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlayerControl_mediaChanged(self.h, content.h)

type QMediaPlayerControlmediaChangedSlot* = proc(content: gen_qmediacontent_types.QMediaContent)
proc cQMediaPlayerControl_slot_callback_mediaChanged(slot: int, content: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlmediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: content, owned: false)

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_mediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlmediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlmediaChangedSlot) =
  var tmp = new QMediaPlayerControlmediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_mediaChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_mediaChanged, cQMediaPlayerControl_slot_callback_mediaChanged_release)

proc durationChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, duration: clonglong): void =
  fcQMediaPlayerControl_durationChanged(self.h, duration)

type QMediaPlayerControldurationChangedSlot* = proc(duration: clonglong)
proc cQMediaPlayerControl_slot_callback_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControldurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControldurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControldurationChangedSlot) =
  var tmp = new QMediaPlayerControldurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_durationChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_durationChanged, cQMediaPlayerControl_slot_callback_durationChanged_release)

proc positionChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, position: clonglong): void =
  fcQMediaPlayerControl_positionChanged(self.h, position)

type QMediaPlayerControlpositionChangedSlot* = proc(position: clonglong)
proc cQMediaPlayerControl_slot_callback_positionChanged(slot: int, position: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlpositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpositionChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlpositionChangedSlot) =
  var tmp = new QMediaPlayerControlpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_positionChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_positionChanged, cQMediaPlayerControl_slot_callback_positionChanged_release)

proc stateChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, newState: cint): void =
  fcQMediaPlayerControl_stateChanged(self.h, cint(newState))

type QMediaPlayerControlstateChangedSlot* = proc(newState: cint)
proc cQMediaPlayerControl_slot_callback_stateChanged(slot: int, newState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlstateChangedSlot) =
  var tmp = new QMediaPlayerControlstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_stateChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_stateChanged, cQMediaPlayerControl_slot_callback_stateChanged_release)

proc mediaStatusChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, status: cint): void =
  fcQMediaPlayerControl_mediaStatusChanged(self.h, cint(status))

type QMediaPlayerControlmediaStatusChangedSlot* = proc(status: cint)
proc cQMediaPlayerControl_slot_callback_mediaStatusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlmediaStatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_mediaStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlmediaStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaStatusChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlmediaStatusChangedSlot) =
  var tmp = new QMediaPlayerControlmediaStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_mediaStatusChanged, cQMediaPlayerControl_slot_callback_mediaStatusChanged_release)

proc volumeChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, volume: cint): void =
  fcQMediaPlayerControl_volumeChanged(self.h, volume)

type QMediaPlayerControlvolumeChangedSlot* = proc(volume: cint)
proc cQMediaPlayerControl_slot_callback_volumeChanged(slot: int, volume: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlvolumeChangedSlot) =
  var tmp = new QMediaPlayerControlvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_volumeChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_volumeChanged, cQMediaPlayerControl_slot_callback_volumeChanged_release)

proc mutedChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, mute: bool): void =
  fcQMediaPlayerControl_mutedChanged(self.h, mute)

type QMediaPlayerControlmutedChangedSlot* = proc(mute: bool)
proc cQMediaPlayerControl_slot_callback_mutedChanged(slot: int, mute: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlmutedChangedSlot](cast[pointer](slot))
  let slotval1 = mute

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlmutedChangedSlot) =
  var tmp = new QMediaPlayerControlmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_mutedChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_mutedChanged, cQMediaPlayerControl_slot_callback_mutedChanged_release)

proc audioAvailableChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, audioAvailable: bool): void =
  fcQMediaPlayerControl_audioAvailableChanged(self.h, audioAvailable)

type QMediaPlayerControlaudioAvailableChangedSlot* = proc(audioAvailable: bool)
proc cQMediaPlayerControl_slot_callback_audioAvailableChanged(slot: int, audioAvailable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlaudioAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = audioAvailable

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_audioAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlaudioAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioAvailableChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlaudioAvailableChangedSlot) =
  var tmp = new QMediaPlayerControlaudioAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_audioAvailableChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_audioAvailableChanged, cQMediaPlayerControl_slot_callback_audioAvailableChanged_release)

proc videoAvailableChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, videoAvailable: bool): void =
  fcQMediaPlayerControl_videoAvailableChanged(self.h, videoAvailable)

type QMediaPlayerControlvideoAvailableChangedSlot* = proc(videoAvailable: bool)
proc cQMediaPlayerControl_slot_callback_videoAvailableChanged(slot: int, videoAvailable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlvideoAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = videoAvailable

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_videoAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlvideoAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoAvailableChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlvideoAvailableChangedSlot) =
  var tmp = new QMediaPlayerControlvideoAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_videoAvailableChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_videoAvailableChanged, cQMediaPlayerControl_slot_callback_videoAvailableChanged_release)

proc bufferStatusChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, percentFilled: cint): void =
  fcQMediaPlayerControl_bufferStatusChanged(self.h, percentFilled)

type QMediaPlayerControlbufferStatusChangedSlot* = proc(percentFilled: cint)
proc cQMediaPlayerControl_slot_callback_bufferStatusChanged(slot: int, percentFilled: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlbufferStatusChangedSlot](cast[pointer](slot))
  let slotval1 = percentFilled

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_bufferStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlbufferStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferStatusChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlbufferStatusChangedSlot) =
  var tmp = new QMediaPlayerControlbufferStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_bufferStatusChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_bufferStatusChanged, cQMediaPlayerControl_slot_callback_bufferStatusChanged_release)

proc seekableChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, seekable: bool): void =
  fcQMediaPlayerControl_seekableChanged(self.h, seekable)

type QMediaPlayerControlseekableChangedSlot* = proc(seekable: bool)
proc cQMediaPlayerControl_slot_callback_seekableChanged(slot: int, seekable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlseekableChangedSlot](cast[pointer](slot))
  let slotval1 = seekable

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_seekableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlseekableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onseekableChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlseekableChangedSlot) =
  var tmp = new QMediaPlayerControlseekableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_seekableChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_seekableChanged, cQMediaPlayerControl_slot_callback_seekableChanged_release)

proc availablePlaybackRangesChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, ranges: gen_qmediatimerange_types.QMediaTimeRange): void =
  fcQMediaPlayerControl_availablePlaybackRangesChanged(self.h, ranges.h)

type QMediaPlayerControlavailablePlaybackRangesChangedSlot* = proc(ranges: gen_qmediatimerange_types.QMediaTimeRange)
proc cQMediaPlayerControl_slot_callback_availablePlaybackRangesChanged(slot: int, ranges: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlavailablePlaybackRangesChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediatimerange_types.QMediaTimeRange(h: ranges, owned: false)

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_availablePlaybackRangesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlavailablePlaybackRangesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailablePlaybackRangesChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlavailablePlaybackRangesChangedSlot) =
  var tmp = new QMediaPlayerControlavailablePlaybackRangesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_availablePlaybackRangesChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_availablePlaybackRangesChanged, cQMediaPlayerControl_slot_callback_availablePlaybackRangesChanged_release)

proc playbackRateChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, rate: float64): void =
  fcQMediaPlayerControl_playbackRateChanged(self.h, rate)

type QMediaPlayerControlplaybackRateChangedSlot* = proc(rate: float64)
proc cQMediaPlayerControl_slot_callback_playbackRateChanged(slot: int, rate: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlplaybackRateChangedSlot](cast[pointer](slot))
  let slotval1 = rate

  nimfunc[](slotval1)

proc cQMediaPlayerControl_slot_callback_playbackRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlplaybackRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onplaybackRateChanged*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlplaybackRateChangedSlot) =
  var tmp = new QMediaPlayerControlplaybackRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_playbackRateChanged(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_playbackRateChanged, cQMediaPlayerControl_slot_callback_playbackRateChanged_release)

proc error*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, error: cint, errorString: string): void =
  fcQMediaPlayerControl_error(self.h, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QMediaPlayerControlerrorSlot* = proc(error: cint, errorString: string)
proc cQMediaPlayerControl_slot_callback_error(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerControlerrorSlot](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc cQMediaPlayerControl_slot_callback_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerControlerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, slot: QMediaPlayerControlerrorSlot) =
  var tmp = new QMediaPlayerControlerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayerControl_connect_error(self.h, cast[int](addr tmp[]), cQMediaPlayerControl_slot_callback_error, cQMediaPlayerControl_slot_callback_error_release)

proc tr*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlayerControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlayerControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlayerControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlayerControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaPlayerControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl): cint =
  fcQMediaPlayerControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, signal: cstring): cint =
  fcQMediaPlayerControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaplayercontrol_types.QMediaPlayerControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaPlayerControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediaplayercontrol_types.QMediaPlayerControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayerControl_staticMetaObject())
