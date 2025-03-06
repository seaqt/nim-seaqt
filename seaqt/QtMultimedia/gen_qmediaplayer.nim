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
{.compile("gen_qmediaplayer.cpp", cflags).}


type QMediaPlayerStateEnum* = distinct cint
template StoppedState*(_: type QMediaPlayerStateEnum): untyped = 0
template PlayingState*(_: type QMediaPlayerStateEnum): untyped = 1
template PausedState*(_: type QMediaPlayerStateEnum): untyped = 2


type QMediaPlayerMediaStatusEnum* = distinct cint
template UnknownMediaStatus*(_: type QMediaPlayerMediaStatusEnum): untyped = 0
template NoMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 1
template LoadingMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 2
template LoadedMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 3
template StalledMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 4
template BufferingMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 5
template BufferedMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 6
template EndOfMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 7
template InvalidMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 8


type QMediaPlayerFlagEnum* = distinct cint
template LowLatency*(_: type QMediaPlayerFlagEnum): untyped = 1
template StreamPlayback*(_: type QMediaPlayerFlagEnum): untyped = 2
template VideoSurface*(_: type QMediaPlayerFlagEnum): untyped = 4


type QMediaPlayerErrorEnum* = distinct cint
template NoError*(_: type QMediaPlayerErrorEnum): untyped = 0
template ResourceError*(_: type QMediaPlayerErrorEnum): untyped = 1
template FormatError*(_: type QMediaPlayerErrorEnum): untyped = 2
template NetworkError*(_: type QMediaPlayerErrorEnum): untyped = 3
template AccessDeniedError*(_: type QMediaPlayerErrorEnum): untyped = 4
template ServiceMissingError*(_: type QMediaPlayerErrorEnum): untyped = 5
template MediaIsPlaylist*(_: type QMediaPlayerErrorEnum): untyped = 6


import ./gen_qmediaplayer_types
export gen_qmediaplayer_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtNetwork/gen_qnetworkconfiguration_types,
  ./gen_qabstractvideosurface_types,
  ./gen_qmediacontent_types,
  ./gen_qmediaobject,
  ./gen_qmediaplaylist_types,
  ./gen_qmediaservice_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qnetworkconfiguration_types,
  gen_qabstractvideosurface_types,
  gen_qmediacontent_types,
  gen_qmediaobject,
  gen_qmediaplaylist_types,
  gen_qmediaservice_types

type cQMediaPlayer*{.exportc: "QMediaPlayer", incompleteStruct.} = object

proc fcQMediaPlayer_new(): ptr cQMediaPlayer {.importc: "QMediaPlayer_new".}
proc fcQMediaPlayer_new2(parent: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new2".}
proc fcQMediaPlayer_new3(parent: pointer, flags: cint): ptr cQMediaPlayer {.importc: "QMediaPlayer_new3".}
proc fcQMediaPlayer_metaObject(self: pointer, ): pointer {.importc: "QMediaPlayer_metaObject".}
proc fcQMediaPlayer_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_metacast".}
proc fcQMediaPlayer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_metacall".}
proc fcQMediaPlayer_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr".}
proc fcQMediaPlayer_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_trUtf8".}
proc fcQMediaPlayer_hasSupport(mimeType: struct_miqt_string): cint {.importc: "QMediaPlayer_hasSupport".}
proc fcQMediaPlayer_supportedMimeTypes(): struct_miqt_array {.importc: "QMediaPlayer_supportedMimeTypes".}
proc fcQMediaPlayer_setVideoOutput(self: pointer, surface: pointer): void {.importc: "QMediaPlayer_setVideoOutput".}
proc fcQMediaPlayer_setVideoOutputWithSurfaces(self: pointer, surfaces: struct_miqt_array): void {.importc: "QMediaPlayer_setVideoOutputWithSurfaces".}
proc fcQMediaPlayer_media(self: pointer, ): pointer {.importc: "QMediaPlayer_media".}
proc fcQMediaPlayer_mediaStream(self: pointer, ): pointer {.importc: "QMediaPlayer_mediaStream".}
proc fcQMediaPlayer_playlist(self: pointer, ): pointer {.importc: "QMediaPlayer_playlist".}
proc fcQMediaPlayer_currentMedia(self: pointer, ): pointer {.importc: "QMediaPlayer_currentMedia".}
proc fcQMediaPlayer_state(self: pointer, ): cint {.importc: "QMediaPlayer_state".}
proc fcQMediaPlayer_mediaStatus(self: pointer, ): cint {.importc: "QMediaPlayer_mediaStatus".}
proc fcQMediaPlayer_duration(self: pointer, ): clonglong {.importc: "QMediaPlayer_duration".}
proc fcQMediaPlayer_position(self: pointer, ): clonglong {.importc: "QMediaPlayer_position".}
proc fcQMediaPlayer_volume(self: pointer, ): cint {.importc: "QMediaPlayer_volume".}
proc fcQMediaPlayer_isMuted(self: pointer, ): bool {.importc: "QMediaPlayer_isMuted".}
proc fcQMediaPlayer_isAudioAvailable(self: pointer, ): bool {.importc: "QMediaPlayer_isAudioAvailable".}
proc fcQMediaPlayer_isVideoAvailable(self: pointer, ): bool {.importc: "QMediaPlayer_isVideoAvailable".}
proc fcQMediaPlayer_bufferStatus(self: pointer, ): cint {.importc: "QMediaPlayer_bufferStatus".}
proc fcQMediaPlayer_isSeekable(self: pointer, ): bool {.importc: "QMediaPlayer_isSeekable".}
proc fcQMediaPlayer_playbackRate(self: pointer, ): float64 {.importc: "QMediaPlayer_playbackRate".}
proc fcQMediaPlayer_error(self: pointer, ): cint {.importc: "QMediaPlayer_error".}
proc fcQMediaPlayer_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaPlayer_errorString".}
proc fcQMediaPlayer_currentNetworkConfiguration(self: pointer, ): pointer {.importc: "QMediaPlayer_currentNetworkConfiguration".}
proc fcQMediaPlayer_availability(self: pointer, ): cint {.importc: "QMediaPlayer_availability".}
proc fcQMediaPlayer_audioRole(self: pointer, ): cint {.importc: "QMediaPlayer_audioRole".}
proc fcQMediaPlayer_setAudioRole(self: pointer, audioRole: cint): void {.importc: "QMediaPlayer_setAudioRole".}
proc fcQMediaPlayer_supportedAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_supportedAudioRoles".}
proc fcQMediaPlayer_customAudioRole(self: pointer, ): struct_miqt_string {.importc: "QMediaPlayer_customAudioRole".}
proc fcQMediaPlayer_setCustomAudioRole(self: pointer, audioRole: struct_miqt_string): void {.importc: "QMediaPlayer_setCustomAudioRole".}
proc fcQMediaPlayer_supportedCustomAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QMediaPlayer_supportedCustomAudioRoles".}
proc fcQMediaPlayer_play(self: pointer, ): void {.importc: "QMediaPlayer_play".}
proc fcQMediaPlayer_pause(self: pointer, ): void {.importc: "QMediaPlayer_pause".}
proc fcQMediaPlayer_stop(self: pointer, ): void {.importc: "QMediaPlayer_stop".}
proc fcQMediaPlayer_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_setPosition".}
proc fcQMediaPlayer_setVolume(self: pointer, volume: cint): void {.importc: "QMediaPlayer_setVolume".}
proc fcQMediaPlayer_setMuted(self: pointer, muted: bool): void {.importc: "QMediaPlayer_setMuted".}
proc fcQMediaPlayer_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayer_setPlaybackRate".}
proc fcQMediaPlayer_setMedia(self: pointer, media: pointer): void {.importc: "QMediaPlayer_setMedia".}
proc fcQMediaPlayer_setPlaylist(self: pointer, playlist: pointer): void {.importc: "QMediaPlayer_setPlaylist".}
proc fcQMediaPlayer_setNetworkConfigurations(self: pointer, configurations: struct_miqt_array): void {.importc: "QMediaPlayer_setNetworkConfigurations".}
proc fcQMediaPlayer_mediaChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_mediaChanged".}
proc fcQMediaPlayer_connect_mediaChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mediaChanged".}
proc fcQMediaPlayer_currentMediaChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_currentMediaChanged".}
proc fcQMediaPlayer_connect_currentMediaChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_currentMediaChanged".}
proc fcQMediaPlayer_stateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayer_stateChanged".}
proc fcQMediaPlayer_connect_stateChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_stateChanged".}
proc fcQMediaPlayer_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayer_mediaStatusChanged".}
proc fcQMediaPlayer_connect_mediaStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mediaStatusChanged".}
proc fcQMediaPlayer_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayer_durationChanged".}
proc fcQMediaPlayer_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_durationChanged".}
proc fcQMediaPlayer_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_positionChanged".}
proc fcQMediaPlayer_connect_positionChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_positionChanged".}
proc fcQMediaPlayer_volumeChanged(self: pointer, volume: cint): void {.importc: "QMediaPlayer_volumeChanged".}
proc fcQMediaPlayer_connect_volumeChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_volumeChanged".}
proc fcQMediaPlayer_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaPlayer_mutedChanged".}
proc fcQMediaPlayer_connect_mutedChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_mutedChanged".}
proc fcQMediaPlayer_audioAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaPlayer_audioAvailableChanged".}
proc fcQMediaPlayer_connect_audioAvailableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_audioAvailableChanged".}
proc fcQMediaPlayer_videoAvailableChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayer_videoAvailableChanged".}
proc fcQMediaPlayer_connect_videoAvailableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_videoAvailableChanged".}
proc fcQMediaPlayer_bufferStatusChanged(self: pointer, percentFilled: cint): void {.importc: "QMediaPlayer_bufferStatusChanged".}
proc fcQMediaPlayer_connect_bufferStatusChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_bufferStatusChanged".}
proc fcQMediaPlayer_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayer_seekableChanged".}
proc fcQMediaPlayer_connect_seekableChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_seekableChanged".}
proc fcQMediaPlayer_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayer_playbackRateChanged".}
proc fcQMediaPlayer_connect_playbackRateChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_playbackRateChanged".}
proc fcQMediaPlayer_audioRoleChanged(self: pointer, role: cint): void {.importc: "QMediaPlayer_audioRoleChanged".}
proc fcQMediaPlayer_connect_audioRoleChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_audioRoleChanged".}
proc fcQMediaPlayer_customAudioRoleChanged(self: pointer, role: struct_miqt_string): void {.importc: "QMediaPlayer_customAudioRoleChanged".}
proc fcQMediaPlayer_connect_customAudioRoleChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_customAudioRoleChanged".}
proc fcQMediaPlayer_errorWithError(self: pointer, error: cint): void {.importc: "QMediaPlayer_errorWithError".}
proc fcQMediaPlayer_connect_errorWithError(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_errorWithError".}
proc fcQMediaPlayer_networkConfigurationChanged(self: pointer, configuration: pointer): void {.importc: "QMediaPlayer_networkConfigurationChanged".}
proc fcQMediaPlayer_connect_networkConfigurationChanged(self: pointer, slot: int) {.importc: "QMediaPlayer_connect_networkConfigurationChanged".}
proc fcQMediaPlayer_bindX(self: pointer, param1: pointer): bool {.importc: "QMediaPlayer_bind".}
proc fcQMediaPlayer_unbind(self: pointer, param1: pointer): void {.importc: "QMediaPlayer_unbind".}
proc fcQMediaPlayer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr2".}
proc fcQMediaPlayer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayer_tr3".}
proc fcQMediaPlayer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayer_trUtf82".}
proc fcQMediaPlayer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayer_trUtf83".}
proc fcQMediaPlayer_hasSupport2(mimeType: struct_miqt_string, codecs: struct_miqt_array): cint {.importc: "QMediaPlayer_hasSupport2".}
proc fcQMediaPlayer_hasSupport3(mimeType: struct_miqt_string, codecs: struct_miqt_array, flags: cint): cint {.importc: "QMediaPlayer_hasSupport3".}
proc fcQMediaPlayer_supportedMimeTypes1(flags: cint): struct_miqt_array {.importc: "QMediaPlayer_supportedMimeTypes1".}
proc fcQMediaPlayer_setMedia2(self: pointer, media: pointer, stream: pointer): void {.importc: "QMediaPlayer_setMedia2".}
proc fQMediaPlayer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaPlayer_virtualbase_metaObject".}
proc fcQMediaPlayer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metaObject".}
proc fQMediaPlayer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaPlayer_virtualbase_metacast".}
proc fcQMediaPlayer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metacast".}
proc fQMediaPlayer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaPlayer_virtualbase_metacall".}
proc fcQMediaPlayer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_metacall".}
proc fQMediaPlayer_virtualbase_availability(self: pointer, ): cint{.importc: "QMediaPlayer_virtualbase_availability".}
proc fcQMediaPlayer_override_virtual_availability(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_availability".}
proc fQMediaPlayer_virtualbase_bind(self: pointer, param1: pointer): bool{.importc: "QMediaPlayer_virtualbase_bind".}
proc fcQMediaPlayer_override_virtual_bindX(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_bind".}
proc fQMediaPlayer_virtualbase_unbind(self: pointer, param1: pointer): void{.importc: "QMediaPlayer_virtualbase_unbind".}
proc fcQMediaPlayer_override_virtual_unbind(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_unbind".}
proc fQMediaPlayer_virtualbase_isAvailable(self: pointer, ): bool{.importc: "QMediaPlayer_virtualbase_isAvailable".}
proc fcQMediaPlayer_override_virtual_isAvailable(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_isAvailable".}
proc fQMediaPlayer_virtualbase_service(self: pointer, ): pointer{.importc: "QMediaPlayer_virtualbase_service".}
proc fcQMediaPlayer_override_virtual_service(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_service".}
proc fQMediaPlayer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaPlayer_virtualbase_event".}
proc fcQMediaPlayer_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_event".}
proc fQMediaPlayer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaPlayer_virtualbase_eventFilter".}
proc fcQMediaPlayer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_eventFilter".}
proc fQMediaPlayer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaPlayer_virtualbase_timerEvent".}
proc fcQMediaPlayer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_timerEvent".}
proc fQMediaPlayer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaPlayer_virtualbase_childEvent".}
proc fcQMediaPlayer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_childEvent".}
proc fQMediaPlayer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaPlayer_virtualbase_customEvent".}
proc fcQMediaPlayer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_customEvent".}
proc fQMediaPlayer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlayer_virtualbase_connectNotify".}
proc fcQMediaPlayer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_connectNotify".}
proc fQMediaPlayer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlayer_virtualbase_disconnectNotify".}
proc fcQMediaPlayer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaPlayer_override_virtual_disconnectNotify".}
proc fcQMediaPlayer_staticMetaObject(): pointer {.importc: "QMediaPlayer_staticMetaObject".}
proc fcQMediaPlayer_delete(self: pointer) {.importc: "QMediaPlayer_delete".}


func init*(T: type gen_qmediaplayer_types.QMediaPlayer, h: ptr cQMediaPlayer): gen_qmediaplayer_types.QMediaPlayer =
  T(h: h)
proc create*(T: type gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediaplayer_types.QMediaPlayer =
  gen_qmediaplayer_types.QMediaPlayer.init(fcQMediaPlayer_new())

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer, parent: gen_qobject_types.QObject): gen_qmediaplayer_types.QMediaPlayer =
  gen_qmediaplayer_types.QMediaPlayer.init(fcQMediaPlayer_new2(parent.h))

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer, parent: gen_qobject_types.QObject, flags: cint): gen_qmediaplayer_types.QMediaPlayer =
  gen_qmediaplayer_types.QMediaPlayer.init(fcQMediaPlayer_new3(parent.h, cint(flags)))

proc metaObject*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_metaObject(self.h))

proc metacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =
  fcQMediaPlayer_metacast(self.h, param1)

proc metacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlayer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring): string =
  let v_ms = fcQMediaPlayer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring): string =
  let v_ms = fcQMediaPlayer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasSupport*(_: type gen_qmediaplayer_types.QMediaPlayer, mimeType: string): cint =
  cint(fcQMediaPlayer_hasSupport(struct_miqt_string(data: mimeType, len: csize_t(len(mimeType)))))

proc supportedMimeTypes*(_: type gen_qmediaplayer_types.QMediaPlayer, ): seq[string] =
  var v_ma = fcQMediaPlayer_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setVideoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, surface: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQMediaPlayer_setVideoOutput(self.h, surface.h)

proc setVideoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, surfaces: seq[gen_qabstractvideosurface_types.QAbstractVideoSurface]): void =
  var surfaces_CArray = newSeq[pointer](len(surfaces))
  for i in 0..<len(surfaces):
    surfaces_CArray[i] = surfaces[i].h

  fcQMediaPlayer_setVideoOutputWithSurfaces(self.h, struct_miqt_array(len: csize_t(len(surfaces)), data: if len(surfaces) == 0: nil else: addr(surfaces_CArray[0])))

proc media*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlayer_media(self.h))

proc mediaStream*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQMediaPlayer_mediaStream(self.h))

proc playlist*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediaplaylist_types.QMediaPlaylist =
  gen_qmediaplaylist_types.QMediaPlaylist(h: fcQMediaPlayer_playlist(self.h))

proc currentMedia*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlayer_currentMedia(self.h))

proc state*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  cint(fcQMediaPlayer_state(self.h))

proc mediaStatus*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  cint(fcQMediaPlayer_mediaStatus(self.h))

proc duration*(self: gen_qmediaplayer_types.QMediaPlayer, ): clonglong =
  fcQMediaPlayer_duration(self.h)

proc position*(self: gen_qmediaplayer_types.QMediaPlayer, ): clonglong =
  fcQMediaPlayer_position(self.h)

proc volume*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  fcQMediaPlayer_volume(self.h)

proc isMuted*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =
  fcQMediaPlayer_isMuted(self.h)

proc isAudioAvailable*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =
  fcQMediaPlayer_isAudioAvailable(self.h)

proc isVideoAvailable*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =
  fcQMediaPlayer_isVideoAvailable(self.h)

proc bufferStatus*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  fcQMediaPlayer_bufferStatus(self.h)

proc isSeekable*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =
  fcQMediaPlayer_isSeekable(self.h)

proc playbackRate*(self: gen_qmediaplayer_types.QMediaPlayer, ): float64 =
  fcQMediaPlayer_playbackRate(self.h)

proc error*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  cint(fcQMediaPlayer_error(self.h))

proc errorString*(self: gen_qmediaplayer_types.QMediaPlayer, ): string =
  let v_ms = fcQMediaPlayer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentNetworkConfiguration*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQMediaPlayer_currentNetworkConfiguration(self.h))

proc availability*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  cint(fcQMediaPlayer_availability(self.h))

proc audioRole*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  cint(fcQMediaPlayer_audioRole(self.h))

proc setAudioRole*(self: gen_qmediaplayer_types.QMediaPlayer, audioRole: cint): void =
  fcQMediaPlayer_setAudioRole(self.h, cint(audioRole))

proc supportedAudioRoles*(self: gen_qmediaplayer_types.QMediaPlayer, ): seq[cint] =
  var v_ma = fcQMediaPlayer_supportedAudioRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc customAudioRole*(self: gen_qmediaplayer_types.QMediaPlayer, ): string =
  let v_ms = fcQMediaPlayer_customAudioRole(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCustomAudioRole*(self: gen_qmediaplayer_types.QMediaPlayer, audioRole: string): void =
  fcQMediaPlayer_setCustomAudioRole(self.h, struct_miqt_string(data: audioRole, len: csize_t(len(audioRole))))

proc supportedCustomAudioRoles*(self: gen_qmediaplayer_types.QMediaPlayer, ): seq[string] =
  var v_ma = fcQMediaPlayer_supportedCustomAudioRoles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc play*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =
  fcQMediaPlayer_play(self.h)

proc pause*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =
  fcQMediaPlayer_pause(self.h)

proc stop*(self: gen_qmediaplayer_types.QMediaPlayer, ): void =
  fcQMediaPlayer_stop(self.h)

proc setPosition*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =
  fcQMediaPlayer_setPosition(self.h, position)

proc setVolume*(self: gen_qmediaplayer_types.QMediaPlayer, volume: cint): void =
  fcQMediaPlayer_setVolume(self.h, volume)

proc setMuted*(self: gen_qmediaplayer_types.QMediaPlayer, muted: bool): void =
  fcQMediaPlayer_setMuted(self.h, muted)

proc setPlaybackRate*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =
  fcQMediaPlayer_setPlaybackRate(self.h, rate)

proc setMedia*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlayer_setMedia(self.h, media.h)

proc setPlaylist*(self: gen_qmediaplayer_types.QMediaPlayer, playlist: gen_qmediaplaylist_types.QMediaPlaylist): void =
  fcQMediaPlayer_setPlaylist(self.h, playlist.h)

proc setNetworkConfigurations*(self: gen_qmediaplayer_types.QMediaPlayer, configurations: seq[gen_qnetworkconfiguration_types.QNetworkConfiguration]): void =
  var configurations_CArray = newSeq[pointer](len(configurations))
  for i in 0..<len(configurations):
    configurations_CArray[i] = configurations[i].h

  fcQMediaPlayer_setNetworkConfigurations(self.h, struct_miqt_array(len: csize_t(len(configurations)), data: if len(configurations) == 0: nil else: addr(configurations_CArray[0])))

proc mediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlayer_mediaChanged(self.h, media.h)

type QMediaPlayermediaChangedSlot* = proc(media: gen_qmediacontent_types.QMediaContent)
proc miqt_exec_callback_QMediaPlayer_mediaChanged(slot: int, media: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayermediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: media)

  nimfunc[](slotval1)

proc onmediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermediaChangedSlot) =
  var tmp = new QMediaPlayermediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mediaChanged(self.h, cast[int](addr tmp[]))

proc currentMediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlayer_currentMediaChanged(self.h, media.h)

type QMediaPlayercurrentMediaChangedSlot* = proc(media: gen_qmediacontent_types.QMediaContent)
proc miqt_exec_callback_QMediaPlayer_currentMediaChanged(slot: int, media: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayercurrentMediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: media)

  nimfunc[](slotval1)

proc oncurrentMediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayercurrentMediaChangedSlot) =
  var tmp = new QMediaPlayercurrentMediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_currentMediaChanged(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, newState: cint): void =
  fcQMediaPlayer_stateChanged(self.h, cint(newState))

type QMediaPlayerstateChangedSlot* = proc(newState: cint)
proc miqt_exec_callback_QMediaPlayer_stateChanged(slot: int, newState: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayerstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerstateChangedSlot) =
  var tmp = new QMediaPlayerstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc mediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, status: cint): void =
  fcQMediaPlayer_mediaStatusChanged(self.h, cint(status))

type QMediaPlayermediaStatusChangedSlot* = proc(status: cint)
proc miqt_exec_callback_QMediaPlayer_mediaStatusChanged(slot: int, status: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayermediaStatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc onmediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermediaStatusChangedSlot) =
  var tmp = new QMediaPlayermediaStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]))

proc durationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, duration: clonglong): void =
  fcQMediaPlayer_durationChanged(self.h, duration)

type QMediaPlayerdurationChangedSlot* = proc(duration: clonglong)
proc miqt_exec_callback_QMediaPlayer_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayerdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc ondurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerdurationChangedSlot) =
  var tmp = new QMediaPlayerdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_durationChanged(self.h, cast[int](addr tmp[]))

proc positionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =
  fcQMediaPlayer_positionChanged(self.h, position)

type QMediaPlayerpositionChangedSlot* = proc(position: clonglong)
proc miqt_exec_callback_QMediaPlayer_positionChanged(slot: int, position: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayerpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc onpositionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerpositionChangedSlot) =
  var tmp = new QMediaPlayerpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_positionChanged(self.h, cast[int](addr tmp[]))

proc volumeChanged*(self: gen_qmediaplayer_types.QMediaPlayer, volume: cint): void =
  fcQMediaPlayer_volumeChanged(self.h, volume)

type QMediaPlayervolumeChangedSlot* = proc(volume: cint)
proc miqt_exec_callback_QMediaPlayer_volumeChanged(slot: int, volume: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayervolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc onvolumeChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayervolumeChangedSlot) =
  var tmp = new QMediaPlayervolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_volumeChanged(self.h, cast[int](addr tmp[]))

proc mutedChanged*(self: gen_qmediaplayer_types.QMediaPlayer, muted: bool): void =
  fcQMediaPlayer_mutedChanged(self.h, muted)

type QMediaPlayermutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_QMediaPlayer_mutedChanged(slot: int, muted: bool) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayermutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc onmutedChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermutedChangedSlot) =
  var tmp = new QMediaPlayermutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mutedChanged(self.h, cast[int](addr tmp[]))

proc audioAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, available: bool): void =
  fcQMediaPlayer_audioAvailableChanged(self.h, available)

type QMediaPlayeraudioAvailableChangedSlot* = proc(available: bool)
proc miqt_exec_callback_QMediaPlayer_audioAvailableChanged(slot: int, available: bool) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayeraudioAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc onaudioAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeraudioAvailableChangedSlot) =
  var tmp = new QMediaPlayeraudioAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_audioAvailableChanged(self.h, cast[int](addr tmp[]))

proc videoAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, videoAvailable: bool): void =
  fcQMediaPlayer_videoAvailableChanged(self.h, videoAvailable)

type QMediaPlayervideoAvailableChangedSlot* = proc(videoAvailable: bool)
proc miqt_exec_callback_QMediaPlayer_videoAvailableChanged(slot: int, videoAvailable: bool) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayervideoAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = videoAvailable

  nimfunc[](slotval1)

proc onvideoAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayervideoAvailableChangedSlot) =
  var tmp = new QMediaPlayervideoAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_videoAvailableChanged(self.h, cast[int](addr tmp[]))

proc bufferStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, percentFilled: cint): void =
  fcQMediaPlayer_bufferStatusChanged(self.h, percentFilled)

type QMediaPlayerbufferStatusChangedSlot* = proc(percentFilled: cint)
proc miqt_exec_callback_QMediaPlayer_bufferStatusChanged(slot: int, percentFilled: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayerbufferStatusChangedSlot](cast[pointer](slot))
  let slotval1 = percentFilled

  nimfunc[](slotval1)

proc onbufferStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerbufferStatusChangedSlot) =
  var tmp = new QMediaPlayerbufferStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_bufferStatusChanged(self.h, cast[int](addr tmp[]))

proc seekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, seekable: bool): void =
  fcQMediaPlayer_seekableChanged(self.h, seekable)

type QMediaPlayerseekableChangedSlot* = proc(seekable: bool)
proc miqt_exec_callback_QMediaPlayer_seekableChanged(slot: int, seekable: bool) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayerseekableChangedSlot](cast[pointer](slot))
  let slotval1 = seekable

  nimfunc[](slotval1)

proc onseekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerseekableChangedSlot) =
  var tmp = new QMediaPlayerseekableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_seekableChanged(self.h, cast[int](addr tmp[]))

proc playbackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =
  fcQMediaPlayer_playbackRateChanged(self.h, rate)

type QMediaPlayerplaybackRateChangedSlot* = proc(rate: float64)
proc miqt_exec_callback_QMediaPlayer_playbackRateChanged(slot: int, rate: float64) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayerplaybackRateChangedSlot](cast[pointer](slot))
  let slotval1 = rate

  nimfunc[](slotval1)

proc onplaybackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerplaybackRateChangedSlot) =
  var tmp = new QMediaPlayerplaybackRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_playbackRateChanged(self.h, cast[int](addr tmp[]))

proc audioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, role: cint): void =
  fcQMediaPlayer_audioRoleChanged(self.h, cint(role))

type QMediaPlayeraudioRoleChangedSlot* = proc(role: cint)
proc miqt_exec_callback_QMediaPlayer_audioRoleChanged(slot: int, role: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayeraudioRoleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(role)

  nimfunc[](slotval1)

proc onaudioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeraudioRoleChangedSlot) =
  var tmp = new QMediaPlayeraudioRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_audioRoleChanged(self.h, cast[int](addr tmp[]))

proc customAudioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, role: string): void =
  fcQMediaPlayer_customAudioRoleChanged(self.h, struct_miqt_string(data: role, len: csize_t(len(role))))

type QMediaPlayercustomAudioRoleChangedSlot* = proc(role: string)
proc miqt_exec_callback_QMediaPlayer_customAudioRoleChanged(slot: int, role: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayercustomAudioRoleChangedSlot](cast[pointer](slot))
  let vrole_ms = role
  let vrolex_ret = string.fromBytes(toOpenArrayByte(vrole_ms.data, 0, int(vrole_ms.len)-1))
  c_free(vrole_ms.data)
  let slotval1 = vrolex_ret

  nimfunc[](slotval1)

proc oncustomAudioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayercustomAudioRoleChangedSlot) =
  var tmp = new QMediaPlayercustomAudioRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_customAudioRoleChanged(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qmediaplayer_types.QMediaPlayer, error: cint): void =
  fcQMediaPlayer_errorWithError(self.h, cint(error))

type QMediaPlayererrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_QMediaPlayer_errorWithError(slot: int, error: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerror*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayererrorWithErrorSlot) =
  var tmp = new QMediaPlayererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_errorWithError(self.h, cast[int](addr tmp[]))

proc networkConfigurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQMediaPlayer_networkConfigurationChanged(self.h, configuration.h)

type QMediaPlayernetworkConfigurationChangedSlot* = proc(configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_QMediaPlayer_networkConfigurationChanged(slot: int, configuration: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlayernetworkConfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: configuration)

  nimfunc[](slotval1)

proc onnetworkConfigurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayernetworkConfigurationChangedSlot) =
  var tmp = new QMediaPlayernetworkConfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_networkConfigurationChanged(self.h, cast[int](addr tmp[]))

proc bindX*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): bool =
  fcQMediaPlayer_bindX(self.h, param1.h)

proc unbind*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): void =
  fcQMediaPlayer_unbind(self.h, param1.h)

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlayer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlayer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlayer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlayer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasSupport*(_: type gen_qmediaplayer_types.QMediaPlayer, mimeType: string, codecs: seq[string]): cint =
  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: codecs[i], len: csize_t(len(codecs[i])))

  cint(fcQMediaPlayer_hasSupport2(struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0]))))

proc hasSupport*(_: type gen_qmediaplayer_types.QMediaPlayer, mimeType: string, codecs: seq[string], flags: cint): cint =
  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: codecs[i], len: csize_t(len(codecs[i])))

  cint(fcQMediaPlayer_hasSupport3(struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0])), cint(flags)))

proc supportedMimeTypes*(_: type gen_qmediaplayer_types.QMediaPlayer, flags: cint): seq[string] =
  var v_ma = fcQMediaPlayer_supportedMimeTypes1(cint(flags))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setMedia*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent, stream: gen_qiodevice_types.QIODevice): void =
  fcQMediaPlayer_setMedia2(self.h, media.h, stream.h)

proc QMediaPlayermetaObject*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMediaPlayer_virtualbase_metaObject(self.h))

type QMediaPlayermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaPlayermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metaObject(self: ptr cQMediaPlayer, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlayer_metaObject ".} =
  var nimfunc = cast[ptr QMediaPlayermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaPlayermetacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =
  fQMediaPlayer_virtualbase_metacast(self.h, param1)

type QMediaPlayermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetacastProc) =
  # TODO check subclass
  var tmp = new QMediaPlayermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metacast(self: ptr cQMediaPlayer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaPlayer_metacast ".} =
  var nimfunc = cast[ptr QMediaPlayermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlayermetacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =
  fQMediaPlayer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaPlayermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetacallProc) =
  # TODO check subclass
  var tmp = new QMediaPlayermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_metacall(self: ptr cQMediaPlayer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaPlayer_metacall ".} =
  var nimfunc = cast[ptr QMediaPlayermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaPlayeravailability*(self: gen_qmediaplayer_types.QMediaPlayer, ): cint =
  cint(fQMediaPlayer_virtualbase_availability(self.h))

type QMediaPlayeravailabilityProc* = proc(): cint
proc onavailability*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeravailabilityProc) =
  # TODO check subclass
  var tmp = new QMediaPlayeravailabilityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_availability(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_availability(self: ptr cQMediaPlayer, slot: int): cint {.exportc: "miqt_exec_callback_QMediaPlayer_availability ".} =
  var nimfunc = cast[ptr QMediaPlayeravailabilityProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QMediaPlayerbindX*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): bool =
  fQMediaPlayer_virtualbase_bind(self.h, param1.h)

type QMediaPlayerbindXProc* = proc(param1: gen_qobject_types.QObject): bool
proc onbindX*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerbindXProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerbindXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_bind(self: ptr cQMediaPlayer, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_bind ".} =
  var nimfunc = cast[ptr QMediaPlayerbindXProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlayerunbind*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): void =
  fQMediaPlayer_virtualbase_unbind(self.h, param1.h)

type QMediaPlayerunbindProc* = proc(param1: gen_qobject_types.QObject): void
proc onunbind*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerunbindProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerunbindProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_unbind(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_unbind(self: ptr cQMediaPlayer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_unbind ".} =
  var nimfunc = cast[ptr QMediaPlayerunbindProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)


  nimfunc[](slotval1)
proc QMediaPlayerisAvailable*(self: gen_qmediaplayer_types.QMediaPlayer, ): bool =
  fQMediaPlayer_virtualbase_isAvailable(self.h)

type QMediaPlayerisAvailableProc* = proc(): bool
proc onisAvailable*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerisAvailableProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerisAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_isAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_isAvailable(self: ptr cQMediaPlayer, slot: int): bool {.exportc: "miqt_exec_callback_QMediaPlayer_isAvailable ".} =
  var nimfunc = cast[ptr QMediaPlayerisAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMediaPlayerservice*(self: gen_qmediaplayer_types.QMediaPlayer, ): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fQMediaPlayer_virtualbase_service(self.h))

type QMediaPlayerserviceProc* = proc(): gen_qmediaservice_types.QMediaService
proc onservice*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerserviceProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerserviceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_service(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_service(self: ptr cQMediaPlayer, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlayer_service ".} =
  var nimfunc = cast[ptr QMediaPlayerserviceProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaPlayerevent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaPlayer_virtualbase_event(self.h, event.h)

type QMediaPlayereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayereventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_event(self: ptr cQMediaPlayer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_event ".} =
  var nimfunc = cast[ptr QMediaPlayereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlayereventFilter*(self: gen_qmediaplayer_types.QMediaPlayer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaPlayer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaPlayereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayereventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaPlayereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_eventFilter(self: ptr cQMediaPlayer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlayer_eventFilter ".} =
  var nimfunc = cast[ptr QMediaPlayereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaPlayertimerEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMediaPlayer_virtualbase_timerEvent(self.h, event.h)

type QMediaPlayertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayertimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_timerEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_timerEvent ".} =
  var nimfunc = cast[ptr QMediaPlayertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlayerchildEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QChildEvent): void =
  fQMediaPlayer_virtualbase_childEvent(self.h, event.h)

type QMediaPlayerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerchildEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_childEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_childEvent ".} =
  var nimfunc = cast[ptr QMediaPlayerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlayercustomEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QEvent): void =
  fQMediaPlayer_virtualbase_customEvent(self.h, event.h)

type QMediaPlayercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayercustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlayercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_customEvent(self: ptr cQMediaPlayer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_customEvent ".} =
  var nimfunc = cast[ptr QMediaPlayercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlayerconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaPlayer_virtualbase_connectNotify(self.h, signal.h)

type QMediaPlayerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_connectNotify(self: ptr cQMediaPlayer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_connectNotify ".} =
  var nimfunc = cast[ptr QMediaPlayerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaPlayerdisconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaPlayer_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaPlayerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaPlayerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlayer_disconnectNotify(self: ptr cQMediaPlayer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlayer_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaPlayerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_staticMetaObject())
proc delete*(self: gen_qmediaplayer_types.QMediaPlayer) =
  fcQMediaPlayer_delete(self.h)
