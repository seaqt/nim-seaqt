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


{.compile("gen_qmediaplayer.cpp", QtMultimediaCFlags).}


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

proc fcQMediaPlayer_metaObject(self: pointer): pointer {.importc: "QMediaPlayer_metaObject".}
proc fcQMediaPlayer_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_metacast".}
proc fcQMediaPlayer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_metacall".}
proc fcQMediaPlayer_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr".}
proc fcQMediaPlayer_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_trUtf8".}
proc fcQMediaPlayer_hasSupport(mimeType: struct_miqt_string): cint {.importc: "QMediaPlayer_hasSupport".}
proc fcQMediaPlayer_supportedMimeTypes(): struct_miqt_array {.importc: "QMediaPlayer_supportedMimeTypes".}
proc fcQMediaPlayer_setVideoOutput(self: pointer, surface: pointer): void {.importc: "QMediaPlayer_setVideoOutput".}
proc fcQMediaPlayer_setVideoOutputWithSurfaces(self: pointer, surfaces: struct_miqt_array): void {.importc: "QMediaPlayer_setVideoOutputWithSurfaces".}
proc fcQMediaPlayer_media(self: pointer): pointer {.importc: "QMediaPlayer_media".}
proc fcQMediaPlayer_mediaStream(self: pointer): pointer {.importc: "QMediaPlayer_mediaStream".}
proc fcQMediaPlayer_playlist(self: pointer): pointer {.importc: "QMediaPlayer_playlist".}
proc fcQMediaPlayer_currentMedia(self: pointer): pointer {.importc: "QMediaPlayer_currentMedia".}
proc fcQMediaPlayer_state(self: pointer): cint {.importc: "QMediaPlayer_state".}
proc fcQMediaPlayer_mediaStatus(self: pointer): cint {.importc: "QMediaPlayer_mediaStatus".}
proc fcQMediaPlayer_duration(self: pointer): clonglong {.importc: "QMediaPlayer_duration".}
proc fcQMediaPlayer_position(self: pointer): clonglong {.importc: "QMediaPlayer_position".}
proc fcQMediaPlayer_volume(self: pointer): cint {.importc: "QMediaPlayer_volume".}
proc fcQMediaPlayer_isMuted(self: pointer): bool {.importc: "QMediaPlayer_isMuted".}
proc fcQMediaPlayer_isAudioAvailable(self: pointer): bool {.importc: "QMediaPlayer_isAudioAvailable".}
proc fcQMediaPlayer_isVideoAvailable(self: pointer): bool {.importc: "QMediaPlayer_isVideoAvailable".}
proc fcQMediaPlayer_bufferStatus(self: pointer): cint {.importc: "QMediaPlayer_bufferStatus".}
proc fcQMediaPlayer_isSeekable(self: pointer): bool {.importc: "QMediaPlayer_isSeekable".}
proc fcQMediaPlayer_playbackRate(self: pointer): float64 {.importc: "QMediaPlayer_playbackRate".}
proc fcQMediaPlayer_error(self: pointer): cint {.importc: "QMediaPlayer_error".}
proc fcQMediaPlayer_errorString(self: pointer): struct_miqt_string {.importc: "QMediaPlayer_errorString".}
proc fcQMediaPlayer_currentNetworkConfiguration(self: pointer): pointer {.importc: "QMediaPlayer_currentNetworkConfiguration".}
proc fcQMediaPlayer_availability(self: pointer): cint {.importc: "QMediaPlayer_availability".}
proc fcQMediaPlayer_audioRole(self: pointer): cint {.importc: "QMediaPlayer_audioRole".}
proc fcQMediaPlayer_setAudioRole(self: pointer, audioRole: cint): void {.importc: "QMediaPlayer_setAudioRole".}
proc fcQMediaPlayer_supportedAudioRoles(self: pointer): struct_miqt_array {.importc: "QMediaPlayer_supportedAudioRoles".}
proc fcQMediaPlayer_customAudioRole(self: pointer): struct_miqt_string {.importc: "QMediaPlayer_customAudioRole".}
proc fcQMediaPlayer_setCustomAudioRole(self: pointer, audioRole: struct_miqt_string): void {.importc: "QMediaPlayer_setCustomAudioRole".}
proc fcQMediaPlayer_supportedCustomAudioRoles(self: pointer): struct_miqt_array {.importc: "QMediaPlayer_supportedCustomAudioRoles".}
proc fcQMediaPlayer_play(self: pointer): void {.importc: "QMediaPlayer_play".}
proc fcQMediaPlayer_pause(self: pointer): void {.importc: "QMediaPlayer_pause".}
proc fcQMediaPlayer_stop(self: pointer): void {.importc: "QMediaPlayer_stop".}
proc fcQMediaPlayer_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_setPosition".}
proc fcQMediaPlayer_setVolume(self: pointer, volume: cint): void {.importc: "QMediaPlayer_setVolume".}
proc fcQMediaPlayer_setMuted(self: pointer, muted: bool): void {.importc: "QMediaPlayer_setMuted".}
proc fcQMediaPlayer_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayer_setPlaybackRate".}
proc fcQMediaPlayer_setMedia(self: pointer, media: pointer): void {.importc: "QMediaPlayer_setMedia".}
proc fcQMediaPlayer_setPlaylist(self: pointer, playlist: pointer): void {.importc: "QMediaPlayer_setPlaylist".}
proc fcQMediaPlayer_setNetworkConfigurations(self: pointer, configurations: struct_miqt_array): void {.importc: "QMediaPlayer_setNetworkConfigurations".}
proc fcQMediaPlayer_mediaChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_mediaChanged".}
proc fcQMediaPlayer_connect_mediaChanged(self: pointer, slot: int, callback: proc (slot: int, media: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_mediaChanged".}
proc fcQMediaPlayer_currentMediaChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_currentMediaChanged".}
proc fcQMediaPlayer_connect_currentMediaChanged(self: pointer, slot: int, callback: proc (slot: int, media: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_currentMediaChanged".}
proc fcQMediaPlayer_stateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayer_stateChanged".}
proc fcQMediaPlayer_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, newState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_stateChanged".}
proc fcQMediaPlayer_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayer_mediaStatusChanged".}
proc fcQMediaPlayer_connect_mediaStatusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_mediaStatusChanged".}
proc fcQMediaPlayer_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayer_durationChanged".}
proc fcQMediaPlayer_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_durationChanged".}
proc fcQMediaPlayer_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_positionChanged".}
proc fcQMediaPlayer_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int, position: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_positionChanged".}
proc fcQMediaPlayer_volumeChanged(self: pointer, volume: cint): void {.importc: "QMediaPlayer_volumeChanged".}
proc fcQMediaPlayer_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_volumeChanged".}
proc fcQMediaPlayer_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaPlayer_mutedChanged".}
proc fcQMediaPlayer_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_mutedChanged".}
proc fcQMediaPlayer_audioAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaPlayer_audioAvailableChanged".}
proc fcQMediaPlayer_connect_audioAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_audioAvailableChanged".}
proc fcQMediaPlayer_videoAvailableChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayer_videoAvailableChanged".}
proc fcQMediaPlayer_connect_videoAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, videoAvailable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_videoAvailableChanged".}
proc fcQMediaPlayer_bufferStatusChanged(self: pointer, percentFilled: cint): void {.importc: "QMediaPlayer_bufferStatusChanged".}
proc fcQMediaPlayer_connect_bufferStatusChanged(self: pointer, slot: int, callback: proc (slot: int, percentFilled: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_bufferStatusChanged".}
proc fcQMediaPlayer_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayer_seekableChanged".}
proc fcQMediaPlayer_connect_seekableChanged(self: pointer, slot: int, callback: proc (slot: int, seekable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_seekableChanged".}
proc fcQMediaPlayer_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayer_playbackRateChanged".}
proc fcQMediaPlayer_connect_playbackRateChanged(self: pointer, slot: int, callback: proc (slot: int, rate: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_playbackRateChanged".}
proc fcQMediaPlayer_audioRoleChanged(self: pointer, role: cint): void {.importc: "QMediaPlayer_audioRoleChanged".}
proc fcQMediaPlayer_connect_audioRoleChanged(self: pointer, slot: int, callback: proc (slot: int, role: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_audioRoleChanged".}
proc fcQMediaPlayer_customAudioRoleChanged(self: pointer, role: struct_miqt_string): void {.importc: "QMediaPlayer_customAudioRoleChanged".}
proc fcQMediaPlayer_connect_customAudioRoleChanged(self: pointer, slot: int, callback: proc (slot: int, role: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_customAudioRoleChanged".}
proc fcQMediaPlayer_errorWithError(self: pointer, error: cint): void {.importc: "QMediaPlayer_errorWithError".}
proc fcQMediaPlayer_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_errorWithError".}
proc fcQMediaPlayer_networkConfigurationChanged(self: pointer, configuration: pointer): void {.importc: "QMediaPlayer_networkConfigurationChanged".}
proc fcQMediaPlayer_connect_networkConfigurationChanged(self: pointer, slot: int, callback: proc (slot: int, configuration: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_networkConfigurationChanged".}
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
proc fcQMediaPlayer_vtbl(self: pointer): pointer {.importc: "QMediaPlayer_vtbl".}
proc fcQMediaPlayer_vdata(self: pointer): pointer {.importc: "QMediaPlayer_vdata".}

type cQMediaPlayerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  availability*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  bindX*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  unbind*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  isAvailable*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  service*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMediaPlayer_virtualbase_metaObject(self: pointer): pointer {.importc: "QMediaPlayer_virtualbase_metaObject".}
proc fcQMediaPlayer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_virtualbase_metacast".}
proc fcQMediaPlayer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_virtualbase_metacall".}
proc fcQMediaPlayer_virtualbase_availability(self: pointer): cint {.importc: "QMediaPlayer_virtualbase_availability".}
proc fcQMediaPlayer_virtualbase_bindX(self: pointer, param1: pointer): bool {.importc: "QMediaPlayer_virtualbase_bind".}
proc fcQMediaPlayer_virtualbase_unbind(self: pointer, param1: pointer): void {.importc: "QMediaPlayer_virtualbase_unbind".}
proc fcQMediaPlayer_virtualbase_isAvailable(self: pointer): bool {.importc: "QMediaPlayer_virtualbase_isAvailable".}
proc fcQMediaPlayer_virtualbase_service(self: pointer): pointer {.importc: "QMediaPlayer_virtualbase_service".}
proc fcQMediaPlayer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaPlayer_virtualbase_event".}
proc fcQMediaPlayer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaPlayer_virtualbase_eventFilter".}
proc fcQMediaPlayer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaPlayer_virtualbase_timerEvent".}
proc fcQMediaPlayer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaPlayer_virtualbase_childEvent".}
proc fcQMediaPlayer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaPlayer_virtualbase_customEvent".}
proc fcQMediaPlayer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaPlayer_virtualbase_connectNotify".}
proc fcQMediaPlayer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaPlayer_virtualbase_disconnectNotify".}
proc fcQMediaPlayer_protectedbase_addPropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QMediaPlayer_protectedbase_addPropertyWatch".}
proc fcQMediaPlayer_protectedbase_removePropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QMediaPlayer_protectedbase_removePropertyWatch".}
proc fcQMediaPlayer_protectedbase_sender(self: pointer): pointer {.importc: "QMediaPlayer_protectedbase_sender".}
proc fcQMediaPlayer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaPlayer_protectedbase_senderSignalIndex".}
proc fcQMediaPlayer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaPlayer_protectedbase_receivers".}
proc fcQMediaPlayer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaPlayer_protectedbase_isSignalConnected".}
proc fcQMediaPlayer_new(vtbl, vdata: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new".}
proc fcQMediaPlayer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new2".}
proc fcQMediaPlayer_new3(vtbl, vdata: pointer, parent: pointer, flags: cint): ptr cQMediaPlayer {.importc: "QMediaPlayer_new3".}
proc fcQMediaPlayer_staticMetaObject(): pointer {.importc: "QMediaPlayer_staticMetaObject".}

proc metaObject*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =
  fcQMediaPlayer_metacast(self.h, param1)

proc metacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlayer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring): string =
  let v_ms = fcQMediaPlayer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring): string =
  let v_ms = fcQMediaPlayer_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasSupport*(_: type gen_qmediaplayer_types.QMediaPlayer, mimeType: openArray[char]): cint =
  cint(fcQMediaPlayer_hasSupport(struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType)))))

proc supportedMimeTypes*(_: type gen_qmediaplayer_types.QMediaPlayer): seq[string] =
  var v_ma = fcQMediaPlayer_supportedMimeTypes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setVideoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, surface: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQMediaPlayer_setVideoOutput(self.h, surface.h)

proc setVideoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, surfaces: openArray[gen_qabstractvideosurface_types.QAbstractVideoSurface]): void =
  var surfaces_CArray = newSeq[pointer](len(surfaces))
  for i in 0..<len(surfaces):
    surfaces_CArray[i] = surfaces[i].h

  fcQMediaPlayer_setVideoOutputWithSurfaces(self.h, struct_miqt_array(len: csize_t(len(surfaces)), data: if len(surfaces) == 0: nil else: addr(surfaces_CArray[0])))

proc media*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlayer_media(self.h), owned: true)

proc mediaStream*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQMediaPlayer_mediaStream(self.h), owned: false)

proc playlist*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qmediaplaylist_types.QMediaPlaylist =
  gen_qmediaplaylist_types.QMediaPlaylist(h: fcQMediaPlayer_playlist(self.h), owned: false)

proc currentMedia*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlayer_currentMedia(self.h), owned: true)

proc state*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_state(self.h))

proc mediaStatus*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_mediaStatus(self.h))

proc duration*(self: gen_qmediaplayer_types.QMediaPlayer): clonglong =
  fcQMediaPlayer_duration(self.h)

proc position*(self: gen_qmediaplayer_types.QMediaPlayer): clonglong =
  fcQMediaPlayer_position(self.h)

proc volume*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_volume(self.h)

proc isMuted*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_isMuted(self.h)

proc isAudioAvailable*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_isAudioAvailable(self.h)

proc isVideoAvailable*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_isVideoAvailable(self.h)

proc bufferStatus*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_bufferStatus(self.h)

proc isSeekable*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_isSeekable(self.h)

proc playbackRate*(self: gen_qmediaplayer_types.QMediaPlayer): float64 =
  fcQMediaPlayer_playbackRate(self.h)

proc error*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_error(self.h))

proc errorString*(self: gen_qmediaplayer_types.QMediaPlayer): string =
  let v_ms = fcQMediaPlayer_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentNetworkConfiguration*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQMediaPlayer_currentNetworkConfiguration(self.h), owned: true)

proc availability*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_availability(self.h))

proc audioRole*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_audioRole(self.h))

proc setAudioRole*(self: gen_qmediaplayer_types.QMediaPlayer, audioRole: cint): void =
  fcQMediaPlayer_setAudioRole(self.h, cint(audioRole))

proc supportedAudioRoles*(self: gen_qmediaplayer_types.QMediaPlayer): seq[cint] =
  var v_ma = fcQMediaPlayer_supportedAudioRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc customAudioRole*(self: gen_qmediaplayer_types.QMediaPlayer): string =
  let v_ms = fcQMediaPlayer_customAudioRole(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCustomAudioRole*(self: gen_qmediaplayer_types.QMediaPlayer, audioRole: openArray[char]): void =
  fcQMediaPlayer_setCustomAudioRole(self.h, struct_miqt_string(data: if len(audioRole) > 0: addr audioRole[0] else: nil, len: csize_t(len(audioRole))))

proc supportedCustomAudioRoles*(self: gen_qmediaplayer_types.QMediaPlayer): seq[string] =
  var v_ma = fcQMediaPlayer_supportedCustomAudioRoles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc play*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_play(self.h)

proc pause*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_pause(self.h)

proc stop*(self: gen_qmediaplayer_types.QMediaPlayer): void =
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

proc setNetworkConfigurations*(self: gen_qmediaplayer_types.QMediaPlayer, configurations: openArray[gen_qnetworkconfiguration_types.QNetworkConfiguration]): void =
  var configurations_CArray = newSeq[pointer](len(configurations))
  for i in 0..<len(configurations):
    configurations_CArray[i] = configurations[i].h

  fcQMediaPlayer_setNetworkConfigurations(self.h, struct_miqt_array(len: csize_t(len(configurations)), data: if len(configurations) == 0: nil else: addr(configurations_CArray[0])))

proc mediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlayer_mediaChanged(self.h, media.h)

type QMediaPlayermediaChangedSlot* = proc(media: gen_qmediacontent_types.QMediaContent)
proc fcQMediaPlayer_slot_callback_mediaChanged(slot: int, media: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayermediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: media, owned: false)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_mediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayermediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermediaChangedSlot) =
  var tmp = new QMediaPlayermediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mediaChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_mediaChanged, fcQMediaPlayer_slot_callback_mediaChanged_release)

proc currentMediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlayer_currentMediaChanged(self.h, media.h)

type QMediaPlayercurrentMediaChangedSlot* = proc(media: gen_qmediacontent_types.QMediaContent)
proc fcQMediaPlayer_slot_callback_currentMediaChanged(slot: int, media: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayercurrentMediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: media, owned: false)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_currentMediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayercurrentMediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentMediaChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayercurrentMediaChangedSlot) =
  var tmp = new QMediaPlayercurrentMediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_currentMediaChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_currentMediaChanged, fcQMediaPlayer_slot_callback_currentMediaChanged_release)

proc stateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, newState: cint): void =
  fcQMediaPlayer_stateChanged(self.h, cint(newState))

type QMediaPlayerstateChangedSlot* = proc(newState: cint)
proc fcQMediaPlayer_slot_callback_stateChanged(slot: int, newState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerstateChangedSlot) =
  var tmp = new QMediaPlayerstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_stateChanged, fcQMediaPlayer_slot_callback_stateChanged_release)

proc mediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, status: cint): void =
  fcQMediaPlayer_mediaStatusChanged(self.h, cint(status))

type QMediaPlayermediaStatusChangedSlot* = proc(status: cint)
proc fcQMediaPlayer_slot_callback_mediaStatusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayermediaStatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_mediaStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayermediaStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermediaStatusChangedSlot) =
  var tmp = new QMediaPlayermediaStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_mediaStatusChanged, fcQMediaPlayer_slot_callback_mediaStatusChanged_release)

proc durationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, duration: clonglong): void =
  fcQMediaPlayer_durationChanged(self.h, duration)

type QMediaPlayerdurationChangedSlot* = proc(duration: clonglong)
proc fcQMediaPlayer_slot_callback_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerdurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerdurationChangedSlot) =
  var tmp = new QMediaPlayerdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_durationChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_durationChanged, fcQMediaPlayer_slot_callback_durationChanged_release)

proc positionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =
  fcQMediaPlayer_positionChanged(self.h, position)

type QMediaPlayerpositionChangedSlot* = proc(position: clonglong)
proc fcQMediaPlayer_slot_callback_positionChanged(slot: int, position: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerpositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPositionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerpositionChangedSlot) =
  var tmp = new QMediaPlayerpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_positionChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_positionChanged, fcQMediaPlayer_slot_callback_positionChanged_release)

proc volumeChanged*(self: gen_qmediaplayer_types.QMediaPlayer, volume: cint): void =
  fcQMediaPlayer_volumeChanged(self.h, volume)

type QMediaPlayervolumeChangedSlot* = proc(volume: cint)
proc fcQMediaPlayer_slot_callback_volumeChanged(slot: int, volume: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayervolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayervolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVolumeChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayervolumeChangedSlot) =
  var tmp = new QMediaPlayervolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_volumeChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_volumeChanged, fcQMediaPlayer_slot_callback_volumeChanged_release)

proc mutedChanged*(self: gen_qmediaplayer_types.QMediaPlayer, muted: bool): void =
  fcQMediaPlayer_mutedChanged(self.h, muted)

type QMediaPlayermutedChangedSlot* = proc(muted: bool)
proc fcQMediaPlayer_slot_callback_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayermutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayermutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMutedChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermutedChangedSlot) =
  var tmp = new QMediaPlayermutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mutedChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_mutedChanged, fcQMediaPlayer_slot_callback_mutedChanged_release)

proc audioAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, available: bool): void =
  fcQMediaPlayer_audioAvailableChanged(self.h, available)

type QMediaPlayeraudioAvailableChangedSlot* = proc(available: bool)
proc fcQMediaPlayer_slot_callback_audioAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayeraudioAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_audioAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayeraudioAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAudioAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeraudioAvailableChangedSlot) =
  var tmp = new QMediaPlayeraudioAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_audioAvailableChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_audioAvailableChanged, fcQMediaPlayer_slot_callback_audioAvailableChanged_release)

proc videoAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, videoAvailable: bool): void =
  fcQMediaPlayer_videoAvailableChanged(self.h, videoAvailable)

type QMediaPlayervideoAvailableChangedSlot* = proc(videoAvailable: bool)
proc fcQMediaPlayer_slot_callback_videoAvailableChanged(slot: int, videoAvailable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayervideoAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = videoAvailable

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_videoAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayervideoAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVideoAvailableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayervideoAvailableChangedSlot) =
  var tmp = new QMediaPlayervideoAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_videoAvailableChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_videoAvailableChanged, fcQMediaPlayer_slot_callback_videoAvailableChanged_release)

proc bufferStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, percentFilled: cint): void =
  fcQMediaPlayer_bufferStatusChanged(self.h, percentFilled)

type QMediaPlayerbufferStatusChangedSlot* = proc(percentFilled: cint)
proc fcQMediaPlayer_slot_callback_bufferStatusChanged(slot: int, percentFilled: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerbufferStatusChangedSlot](cast[pointer](slot))
  let slotval1 = percentFilled

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_bufferStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerbufferStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBufferStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerbufferStatusChangedSlot) =
  var tmp = new QMediaPlayerbufferStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_bufferStatusChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_bufferStatusChanged, fcQMediaPlayer_slot_callback_bufferStatusChanged_release)

proc seekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, seekable: bool): void =
  fcQMediaPlayer_seekableChanged(self.h, seekable)

type QMediaPlayerseekableChangedSlot* = proc(seekable: bool)
proc fcQMediaPlayer_slot_callback_seekableChanged(slot: int, seekable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerseekableChangedSlot](cast[pointer](slot))
  let slotval1 = seekable

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_seekableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerseekableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSeekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerseekableChangedSlot) =
  var tmp = new QMediaPlayerseekableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_seekableChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_seekableChanged, fcQMediaPlayer_slot_callback_seekableChanged_release)

proc playbackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =
  fcQMediaPlayer_playbackRateChanged(self.h, rate)

type QMediaPlayerplaybackRateChangedSlot* = proc(rate: float64)
proc fcQMediaPlayer_slot_callback_playbackRateChanged(slot: int, rate: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerplaybackRateChangedSlot](cast[pointer](slot))
  let slotval1 = rate

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_playbackRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerplaybackRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPlaybackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerplaybackRateChangedSlot) =
  var tmp = new QMediaPlayerplaybackRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_playbackRateChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_playbackRateChanged, fcQMediaPlayer_slot_callback_playbackRateChanged_release)

proc audioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, role: cint): void =
  fcQMediaPlayer_audioRoleChanged(self.h, cint(role))

type QMediaPlayeraudioRoleChangedSlot* = proc(role: cint)
proc fcQMediaPlayer_slot_callback_audioRoleChanged(slot: int, role: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayeraudioRoleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(role)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_audioRoleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayeraudioRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAudioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeraudioRoleChangedSlot) =
  var tmp = new QMediaPlayeraudioRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_audioRoleChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_audioRoleChanged, fcQMediaPlayer_slot_callback_audioRoleChanged_release)

proc customAudioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, role: openArray[char]): void =
  fcQMediaPlayer_customAudioRoleChanged(self.h, struct_miqt_string(data: if len(role) > 0: addr role[0] else: nil, len: csize_t(len(role))))

type QMediaPlayercustomAudioRoleChangedSlot* = proc(role: openArray[char])
proc fcQMediaPlayer_slot_callback_customAudioRoleChanged(slot: int, role: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayercustomAudioRoleChangedSlot](cast[pointer](slot))
  let vrole_ms = role
  let vrolex_ret = string.fromBytes(vrole_ms)
  c_free(vrole_ms.data)
  let slotval1 = vrolex_ret

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_customAudioRoleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayercustomAudioRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCustomAudioRoleChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayercustomAudioRoleChangedSlot) =
  var tmp = new QMediaPlayercustomAudioRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_customAudioRoleChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_customAudioRoleChanged, fcQMediaPlayer_slot_callback_customAudioRoleChanged_release)

proc error*(self: gen_qmediaplayer_types.QMediaPlayer, error: cint): void =
  fcQMediaPlayer_errorWithError(self.h, cint(error))

type QMediaPlayererrorWithErrorSlot* = proc(error: cint)
proc fcQMediaPlayer_slot_callback_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayererrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayererrorWithErrorSlot) =
  var tmp = new QMediaPlayererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_errorWithError(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_errorWithError, fcQMediaPlayer_slot_callback_errorWithError_release)

proc networkConfigurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQMediaPlayer_networkConfigurationChanged(self.h, configuration.h)

type QMediaPlayernetworkConfigurationChangedSlot* = proc(configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc fcQMediaPlayer_slot_callback_networkConfigurationChanged(slot: int, configuration: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayernetworkConfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: configuration, owned: false)

  nimfunc[](slotval1)

proc fcQMediaPlayer_slot_callback_networkConfigurationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayernetworkConfigurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNetworkConfigurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayernetworkConfigurationChangedSlot) =
  var tmp = new QMediaPlayernetworkConfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_networkConfigurationChanged(self.h, cast[int](addr tmp[]), fcQMediaPlayer_slot_callback_networkConfigurationChanged, fcQMediaPlayer_slot_callback_networkConfigurationChanged_release)

proc bindX*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): bool =
  fcQMediaPlayer_bindX(self.h, param1.h)

proc unbind*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): void =
  fcQMediaPlayer_unbind(self.h, param1.h)

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlayer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlayer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlayer_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplayer_types.QMediaPlayer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlayer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasSupport*(_: type gen_qmediaplayer_types.QMediaPlayer, mimeType: openArray[char], codecs: openArray[string]): cint =
  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: if len(codecs[i]) > 0: addr codecs[i][0] else: nil, len: csize_t(len(codecs[i])))

  cint(fcQMediaPlayer_hasSupport2(struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0]))))

proc hasSupport*(_: type gen_qmediaplayer_types.QMediaPlayer, mimeType: openArray[char], codecs: openArray[string], flags: cint): cint =
  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: if len(codecs[i]) > 0: addr codecs[i][0] else: nil, len: csize_t(len(codecs[i])))

  cint(fcQMediaPlayer_hasSupport3(struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0])), cint(flags)))

proc supportedMimeTypes*(_: type gen_qmediaplayer_types.QMediaPlayer, flags: cint): seq[string] =
  var v_ma = fcQMediaPlayer_supportedMimeTypes1(cint(flags))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setMedia*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qmediacontent_types.QMediaContent, stream: gen_qiodevice_types.QIODevice): void =
  fcQMediaPlayer_setMedia2(self.h, media.h, stream.h)

type QMediaPlayermetaObjectProc* = proc(self: QMediaPlayer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaPlayermetacastProc* = proc(self: QMediaPlayer, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaPlayermetacallProc* = proc(self: QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMediaPlayeravailabilityProc* = proc(self: QMediaPlayer): cint {.raises: [], gcsafe.}
type QMediaPlayerbindXProc* = proc(self: QMediaPlayer, param1: gen_qobject_types.QObject): bool {.raises: [], gcsafe.}
type QMediaPlayerunbindProc* = proc(self: QMediaPlayer, param1: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QMediaPlayerisAvailableProc* = proc(self: QMediaPlayer): bool {.raises: [], gcsafe.}
type QMediaPlayerserviceProc* = proc(self: QMediaPlayer): gen_qmediaservice_types.QMediaService {.raises: [], gcsafe.}
type QMediaPlayereventProc* = proc(self: QMediaPlayer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaPlayereventFilterProc* = proc(self: QMediaPlayer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaPlayertimerEventProc* = proc(self: QMediaPlayer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMediaPlayerchildEventProc* = proc(self: QMediaPlayer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMediaPlayercustomEventProc* = proc(self: QMediaPlayer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMediaPlayerconnectNotifyProc* = proc(self: QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaPlayerdisconnectNotifyProc* = proc(self: QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QMediaPlayerVTable* {.inheritable, pure.} = object
  vtbl: cQMediaPlayerVTable
  metaObject*: QMediaPlayermetaObjectProc
  metacast*: QMediaPlayermetacastProc
  metacall*: QMediaPlayermetacallProc
  availability*: QMediaPlayeravailabilityProc
  bindX*: QMediaPlayerbindXProc
  unbind*: QMediaPlayerunbindProc
  isAvailable*: QMediaPlayerisAvailableProc
  service*: QMediaPlayerserviceProc
  event*: QMediaPlayereventProc
  eventFilter*: QMediaPlayereventFilterProc
  timerEvent*: QMediaPlayertimerEventProc
  childEvent*: QMediaPlayerchildEventProc
  customEvent*: QMediaPlayercustomEventProc
  connectNotify*: QMediaPlayerconnectNotifyProc
  disconnectNotify*: QMediaPlayerdisconnectNotifyProc

proc QMediaPlayermetaObject*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_virtualbase_metaObject(self.h), owned: false)

proc QMediaPlayermetacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =
  fcQMediaPlayer_virtualbase_metacast(self.h, param1)

proc QMediaPlayermetacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlayer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QMediaPlayeravailability*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_virtualbase_availability(self.h))

proc QMediaPlayerbindX*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): bool =
  fcQMediaPlayer_virtualbase_bindX(self.h, param1.h)

proc QMediaPlayerunbind*(self: gen_qmediaplayer_types.QMediaPlayer, param1: gen_qobject_types.QObject): void =
  fcQMediaPlayer_virtualbase_unbind(self.h, param1.h)

proc QMediaPlayerisAvailable*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_virtualbase_isAvailable(self.h)

proc QMediaPlayerservice*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQMediaPlayer_virtualbase_service(self.h), owned: false)

proc QMediaPlayerevent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaPlayer_virtualbase_event(self.h, event.h)

proc QMediaPlayereventFilter*(self: gen_qmediaplayer_types.QMediaPlayer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaPlayer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QMediaPlayertimerEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaPlayer_virtualbase_timerEvent(self.h, event.h)

proc QMediaPlayerchildEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaPlayer_virtualbase_childEvent(self.h, event.h)

proc QMediaPlayercustomEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaPlayer_virtualbase_customEvent(self.h, event.h)

proc QMediaPlayerconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaPlayer_virtualbase_connectNotify(self.h, signal.h)

proc QMediaPlayerdisconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaPlayer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQMediaPlayer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMediaPlayer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQMediaPlayer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMediaPlayer_vtable_callback_availability(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  var virtualReturn = vtbl[].availability(self)
  cint(virtualReturn)

proc fcQMediaPlayer_vtable_callback_bindX(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  var virtualReturn = vtbl[].bindX(self, slotval1)
  virtualReturn

proc fcQMediaPlayer_vtable_callback_unbind(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  vtbl[].unbind(self, slotval1)

proc fcQMediaPlayer_vtable_callback_isAvailable(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  var virtualReturn = vtbl[].isAvailable(self)
  virtualReturn

proc fcQMediaPlayer_vtable_callback_service(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  var virtualReturn = vtbl[].service(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMediaPlayer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQMediaPlayer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQMediaPlayer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQMediaPlayer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQMediaPlayer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQMediaPlayer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQMediaPlayer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMediaPlayer* {.inheritable.} = ref object of QMediaPlayer
  vtbl*: cQMediaPlayerVTable

method metaObject*(self: VirtualQMediaPlayer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMediaPlayermetaObject(self[])
method metacast*(self: VirtualQMediaPlayer, param1: cstring): pointer {.base.} =
  QMediaPlayermetacast(self[], param1)
method metacall*(self: VirtualQMediaPlayer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMediaPlayermetacall(self[], param1, param2, param3)
method availability*(self: VirtualQMediaPlayer): cint {.base.} =
  QMediaPlayeravailability(self[])
method bindX*(self: VirtualQMediaPlayer, param1: gen_qobject_types.QObject): bool {.base.} =
  QMediaPlayerbindX(self[], param1)
method unbind*(self: VirtualQMediaPlayer, param1: gen_qobject_types.QObject): void {.base.} =
  QMediaPlayerunbind(self[], param1)
method isAvailable*(self: VirtualQMediaPlayer): bool {.base.} =
  QMediaPlayerisAvailable(self[])
method service*(self: VirtualQMediaPlayer): gen_qmediaservice_types.QMediaService {.base.} =
  QMediaPlayerservice(self[])
method event*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaPlayerevent(self[], event)
method eventFilter*(self: VirtualQMediaPlayer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaPlayereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMediaPlayertimerEvent(self[], event)
method childEvent*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMediaPlayerchildEvent(self[], event)
method customEvent*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMediaPlayercustomEvent(self[], event)
method connectNotify*(self: VirtualQMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaPlayerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaPlayerdisconnectNotify(self[], signal)

proc fcQMediaPlayer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMediaPlayer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQMediaPlayer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMediaPlayer_method_callback_availability(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  var virtualReturn = inst.availability()
  cint(virtualReturn)

proc fcQMediaPlayer_method_callback_bindX(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  var virtualReturn = inst.bindX(slotval1)
  virtualReturn

proc fcQMediaPlayer_method_callback_unbind(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  inst.unbind(slotval1)

proc fcQMediaPlayer_method_callback_isAvailable(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  var virtualReturn = inst.isAvailable()
  virtualReturn

proc fcQMediaPlayer_method_callback_service(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  var virtualReturn = inst.service()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMediaPlayer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQMediaPlayer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQMediaPlayer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQMediaPlayer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQMediaPlayer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQMediaPlayer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQMediaPlayer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc addPropertyWatch*(self: gen_qmediaplayer_types.QMediaPlayer, name: openArray[byte]): void =
  fcQMediaPlayer_protectedbase_addPropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc removePropertyWatch*(self: gen_qmediaplayer_types.QMediaPlayer, name: openArray[byte]): void =
  fcQMediaPlayer_protectedbase_removePropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc sender*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaPlayer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaplayer_types.QMediaPlayer, signal: cstring): cint =
  fcQMediaPlayer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaPlayer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer,
    vtbl: ref QMediaPlayerVTable = nil): gen_qmediaplayer_types.QMediaPlayer =
  let vtbl = if vtbl == nil: new QMediaPlayerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMediaPlayer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMediaPlayer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMediaPlayer_vtable_callback_metacall
  if not isNil(vtbl[].availability):
    vtbl[].vtbl.availability = fcQMediaPlayer_vtable_callback_availability
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = fcQMediaPlayer_vtable_callback_bindX
  if not isNil(vtbl[].unbind):
    vtbl[].vtbl.unbind = fcQMediaPlayer_vtable_callback_unbind
  if not isNil(vtbl[].isAvailable):
    vtbl[].vtbl.isAvailable = fcQMediaPlayer_vtable_callback_isAvailable
  if not isNil(vtbl[].service):
    vtbl[].vtbl.service = fcQMediaPlayer_vtable_callback_service
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMediaPlayer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMediaPlayer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMediaPlayer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMediaPlayer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMediaPlayer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMediaPlayer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMediaPlayer_vtable_callback_disconnectNotify
  gen_qmediaplayer_types.QMediaPlayer(h: fcQMediaPlayer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaPlayerVTable = nil): gen_qmediaplayer_types.QMediaPlayer =
  let vtbl = if vtbl == nil: new QMediaPlayerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMediaPlayer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMediaPlayer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMediaPlayer_vtable_callback_metacall
  if not isNil(vtbl[].availability):
    vtbl[].vtbl.availability = fcQMediaPlayer_vtable_callback_availability
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = fcQMediaPlayer_vtable_callback_bindX
  if not isNil(vtbl[].unbind):
    vtbl[].vtbl.unbind = fcQMediaPlayer_vtable_callback_unbind
  if not isNil(vtbl[].isAvailable):
    vtbl[].vtbl.isAvailable = fcQMediaPlayer_vtable_callback_isAvailable
  if not isNil(vtbl[].service):
    vtbl[].vtbl.service = fcQMediaPlayer_vtable_callback_service
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMediaPlayer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMediaPlayer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMediaPlayer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMediaPlayer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMediaPlayer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMediaPlayer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMediaPlayer_vtable_callback_disconnectNotify
  gen_qmediaplayer_types.QMediaPlayer(h: fcQMediaPlayer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer,
    parent: gen_qobject_types.QObject, flags: cint,
    vtbl: ref QMediaPlayerVTable = nil): gen_qmediaplayer_types.QMediaPlayer =
  let vtbl = if vtbl == nil: new QMediaPlayerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMediaPlayer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMediaPlayer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMediaPlayer_vtable_callback_metacall
  if not isNil(vtbl[].availability):
    vtbl[].vtbl.availability = fcQMediaPlayer_vtable_callback_availability
  if not isNil(vtbl[].bindX):
    vtbl[].vtbl.bindX = fcQMediaPlayer_vtable_callback_bindX
  if not isNil(vtbl[].unbind):
    vtbl[].vtbl.unbind = fcQMediaPlayer_vtable_callback_unbind
  if not isNil(vtbl[].isAvailable):
    vtbl[].vtbl.isAvailable = fcQMediaPlayer_vtable_callback_isAvailable
  if not isNil(vtbl[].service):
    vtbl[].vtbl.service = fcQMediaPlayer_vtable_callback_service
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMediaPlayer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMediaPlayer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMediaPlayer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMediaPlayer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMediaPlayer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMediaPlayer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMediaPlayer_vtable_callback_disconnectNotify
  gen_qmediaplayer_types.QMediaPlayer(h: fcQMediaPlayer_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(flags)), owned: true)

const cQMediaPlayer_mvtbl = cQMediaPlayerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMediaPlayer()[])](self.fcQMediaPlayer_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQMediaPlayer_method_callback_metaObject,
  metacast: fcQMediaPlayer_method_callback_metacast,
  metacall: fcQMediaPlayer_method_callback_metacall,
  availability: fcQMediaPlayer_method_callback_availability,
  bindX: fcQMediaPlayer_method_callback_bindX,
  unbind: fcQMediaPlayer_method_callback_unbind,
  isAvailable: fcQMediaPlayer_method_callback_isAvailable,
  service: fcQMediaPlayer_method_callback_service,
  event: fcQMediaPlayer_method_callback_event,
  eventFilter: fcQMediaPlayer_method_callback_eventFilter,
  timerEvent: fcQMediaPlayer_method_callback_timerEvent,
  childEvent: fcQMediaPlayer_method_callback_childEvent,
  customEvent: fcQMediaPlayer_method_callback_customEvent,
  connectNotify: fcQMediaPlayer_method_callback_connectNotify,
  disconnectNotify: fcQMediaPlayer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmediaplayer_types.QMediaPlayer,
    inst: VirtualQMediaPlayer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaPlayer_new(addr(cQMediaPlayer_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMediaPlayer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaPlayer_new2(addr(cQMediaPlayer_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmediaplayer_types.QMediaPlayer,
    parent: gen_qobject_types.QObject, flags: cint,
    inst: VirtualQMediaPlayer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaPlayer_new3(addr(cQMediaPlayer_mvtbl), addr(inst[]), parent.h, cint(flags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_staticMetaObject())
