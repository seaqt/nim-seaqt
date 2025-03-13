import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia") & " -fPIC"
{.compile("gen_qmediaplayer.cpp", cflags).}


type QMediaPlayerPlaybackStateEnum* = distinct cint
template StoppedState*(_: type QMediaPlayerPlaybackStateEnum): untyped = 0
template PlayingState*(_: type QMediaPlayerPlaybackStateEnum): untyped = 1
template PausedState*(_: type QMediaPlayerPlaybackStateEnum): untyped = 2


type QMediaPlayerMediaStatusEnum* = distinct cint
template NoMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 0
template LoadingMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 1
template LoadedMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 2
template StalledMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 3
template BufferingMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 4
template BufferedMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 5
template EndOfMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 6
template InvalidMedia*(_: type QMediaPlayerMediaStatusEnum): untyped = 7


type QMediaPlayerErrorEnum* = distinct cint
template NoError*(_: type QMediaPlayerErrorEnum): untyped = 0
template ResourceError*(_: type QMediaPlayerErrorEnum): untyped = 1
template FormatError*(_: type QMediaPlayerErrorEnum): untyped = 2
template NetworkError*(_: type QMediaPlayerErrorEnum): untyped = 3
template AccessDeniedError*(_: type QMediaPlayerErrorEnum): untyped = 4


type QMediaPlayerLoopsEnum* = distinct cint
template Infinite*(_: type QMediaPlayerLoopsEnum): untyped = -1
template Once*(_: type QMediaPlayerLoopsEnum): untyped = 1


import ./gen_qmediaplayer_types
export gen_qmediaplayer_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qaudiooutput_types,
  ./gen_qmediametadata_types,
  ./gen_qmediatimerange_types,
  ./gen_qvideosink_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qaudiooutput_types,
  gen_qmediametadata_types,
  gen_qmediatimerange_types,
  gen_qvideosink_types

type cQMediaPlayer*{.exportc: "QMediaPlayer", incompleteStruct.} = object

proc fcQMediaPlayer_metaObject(self: pointer): pointer {.importc: "QMediaPlayer_metaObject".}
proc fcQMediaPlayer_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_metacast".}
proc fcQMediaPlayer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_metacall".}
proc fcQMediaPlayer_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr".}
proc fcQMediaPlayer_audioTracks(self: pointer): struct_miqt_array {.importc: "QMediaPlayer_audioTracks".}
proc fcQMediaPlayer_videoTracks(self: pointer): struct_miqt_array {.importc: "QMediaPlayer_videoTracks".}
proc fcQMediaPlayer_subtitleTracks(self: pointer): struct_miqt_array {.importc: "QMediaPlayer_subtitleTracks".}
proc fcQMediaPlayer_activeAudioTrack(self: pointer): cint {.importc: "QMediaPlayer_activeAudioTrack".}
proc fcQMediaPlayer_activeVideoTrack(self: pointer): cint {.importc: "QMediaPlayer_activeVideoTrack".}
proc fcQMediaPlayer_activeSubtitleTrack(self: pointer): cint {.importc: "QMediaPlayer_activeSubtitleTrack".}
proc fcQMediaPlayer_setActiveAudioTrack(self: pointer, index: cint): void {.importc: "QMediaPlayer_setActiveAudioTrack".}
proc fcQMediaPlayer_setActiveVideoTrack(self: pointer, index: cint): void {.importc: "QMediaPlayer_setActiveVideoTrack".}
proc fcQMediaPlayer_setActiveSubtitleTrack(self: pointer, index: cint): void {.importc: "QMediaPlayer_setActiveSubtitleTrack".}
proc fcQMediaPlayer_setAudioOutput(self: pointer, output: pointer): void {.importc: "QMediaPlayer_setAudioOutput".}
proc fcQMediaPlayer_audioOutput(self: pointer): pointer {.importc: "QMediaPlayer_audioOutput".}
proc fcQMediaPlayer_setVideoOutput(self: pointer, videoOutput: pointer): void {.importc: "QMediaPlayer_setVideoOutput".}
proc fcQMediaPlayer_videoOutput(self: pointer): pointer {.importc: "QMediaPlayer_videoOutput".}
proc fcQMediaPlayer_setVideoSink(self: pointer, sink: pointer): void {.importc: "QMediaPlayer_setVideoSink".}
proc fcQMediaPlayer_videoSink(self: pointer): pointer {.importc: "QMediaPlayer_videoSink".}
proc fcQMediaPlayer_source(self: pointer): pointer {.importc: "QMediaPlayer_source".}
proc fcQMediaPlayer_sourceDevice(self: pointer): pointer {.importc: "QMediaPlayer_sourceDevice".}
proc fcQMediaPlayer_playbackState(self: pointer): cint {.importc: "QMediaPlayer_playbackState".}
proc fcQMediaPlayer_mediaStatus(self: pointer): cint {.importc: "QMediaPlayer_mediaStatus".}
proc fcQMediaPlayer_duration(self: pointer): clonglong {.importc: "QMediaPlayer_duration".}
proc fcQMediaPlayer_position(self: pointer): clonglong {.importc: "QMediaPlayer_position".}
proc fcQMediaPlayer_hasAudio(self: pointer): bool {.importc: "QMediaPlayer_hasAudio".}
proc fcQMediaPlayer_hasVideo(self: pointer): bool {.importc: "QMediaPlayer_hasVideo".}
proc fcQMediaPlayer_bufferProgress(self: pointer): float32 {.importc: "QMediaPlayer_bufferProgress".}
proc fcQMediaPlayer_bufferedTimeRange(self: pointer): pointer {.importc: "QMediaPlayer_bufferedTimeRange".}
proc fcQMediaPlayer_isSeekable(self: pointer): bool {.importc: "QMediaPlayer_isSeekable".}
proc fcQMediaPlayer_playbackRate(self: pointer): float64 {.importc: "QMediaPlayer_playbackRate".}
proc fcQMediaPlayer_loops(self: pointer): cint {.importc: "QMediaPlayer_loops".}
proc fcQMediaPlayer_setLoops(self: pointer, loops: cint): void {.importc: "QMediaPlayer_setLoops".}
proc fcQMediaPlayer_error(self: pointer): cint {.importc: "QMediaPlayer_error".}
proc fcQMediaPlayer_errorString(self: pointer): struct_miqt_string {.importc: "QMediaPlayer_errorString".}
proc fcQMediaPlayer_isAvailable(self: pointer): bool {.importc: "QMediaPlayer_isAvailable".}
proc fcQMediaPlayer_metaData(self: pointer): pointer {.importc: "QMediaPlayer_metaData".}
proc fcQMediaPlayer_play(self: pointer): void {.importc: "QMediaPlayer_play".}
proc fcQMediaPlayer_pause(self: pointer): void {.importc: "QMediaPlayer_pause".}
proc fcQMediaPlayer_stop(self: pointer): void {.importc: "QMediaPlayer_stop".}
proc fcQMediaPlayer_setPosition(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_setPosition".}
proc fcQMediaPlayer_setPlaybackRate(self: pointer, rate: float64): void {.importc: "QMediaPlayer_setPlaybackRate".}
proc fcQMediaPlayer_setSource(self: pointer, source: pointer): void {.importc: "QMediaPlayer_setSource".}
proc fcQMediaPlayer_setSourceDevice(self: pointer, device: pointer): void {.importc: "QMediaPlayer_setSourceDevice".}
proc fcQMediaPlayer_sourceChanged(self: pointer, media: pointer): void {.importc: "QMediaPlayer_sourceChanged".}
proc fcQMediaPlayer_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int, media: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_sourceChanged".}
proc fcQMediaPlayer_playbackStateChanged(self: pointer, newState: cint): void {.importc: "QMediaPlayer_playbackStateChanged".}
proc fcQMediaPlayer_connect_playbackStateChanged(self: pointer, slot: int, callback: proc (slot: int, newState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_playbackStateChanged".}
proc fcQMediaPlayer_mediaStatusChanged(self: pointer, status: cint): void {.importc: "QMediaPlayer_mediaStatusChanged".}
proc fcQMediaPlayer_connect_mediaStatusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_mediaStatusChanged".}
proc fcQMediaPlayer_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaPlayer_durationChanged".}
proc fcQMediaPlayer_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_durationChanged".}
proc fcQMediaPlayer_positionChanged(self: pointer, position: clonglong): void {.importc: "QMediaPlayer_positionChanged".}
proc fcQMediaPlayer_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int, position: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_positionChanged".}
proc fcQMediaPlayer_hasAudioChanged(self: pointer, available: bool): void {.importc: "QMediaPlayer_hasAudioChanged".}
proc fcQMediaPlayer_connect_hasAudioChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_hasAudioChanged".}
proc fcQMediaPlayer_hasVideoChanged(self: pointer, videoAvailable: bool): void {.importc: "QMediaPlayer_hasVideoChanged".}
proc fcQMediaPlayer_connect_hasVideoChanged(self: pointer, slot: int, callback: proc (slot: int, videoAvailable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_hasVideoChanged".}
proc fcQMediaPlayer_bufferProgressChanged(self: pointer, progress: float32): void {.importc: "QMediaPlayer_bufferProgressChanged".}
proc fcQMediaPlayer_connect_bufferProgressChanged(self: pointer, slot: int, callback: proc (slot: int, progress: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_bufferProgressChanged".}
proc fcQMediaPlayer_seekableChanged(self: pointer, seekable: bool): void {.importc: "QMediaPlayer_seekableChanged".}
proc fcQMediaPlayer_connect_seekableChanged(self: pointer, slot: int, callback: proc (slot: int, seekable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_seekableChanged".}
proc fcQMediaPlayer_playbackRateChanged(self: pointer, rate: float64): void {.importc: "QMediaPlayer_playbackRateChanged".}
proc fcQMediaPlayer_connect_playbackRateChanged(self: pointer, slot: int, callback: proc (slot: int, rate: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_playbackRateChanged".}
proc fcQMediaPlayer_loopsChanged(self: pointer): void {.importc: "QMediaPlayer_loopsChanged".}
proc fcQMediaPlayer_connect_loopsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_loopsChanged".}
proc fcQMediaPlayer_metaDataChanged(self: pointer): void {.importc: "QMediaPlayer_metaDataChanged".}
proc fcQMediaPlayer_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_metaDataChanged".}
proc fcQMediaPlayer_videoOutputChanged(self: pointer): void {.importc: "QMediaPlayer_videoOutputChanged".}
proc fcQMediaPlayer_connect_videoOutputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_videoOutputChanged".}
proc fcQMediaPlayer_audioOutputChanged(self: pointer): void {.importc: "QMediaPlayer_audioOutputChanged".}
proc fcQMediaPlayer_connect_audioOutputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_audioOutputChanged".}
proc fcQMediaPlayer_tracksChanged(self: pointer): void {.importc: "QMediaPlayer_tracksChanged".}
proc fcQMediaPlayer_connect_tracksChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_tracksChanged".}
proc fcQMediaPlayer_activeTracksChanged(self: pointer): void {.importc: "QMediaPlayer_activeTracksChanged".}
proc fcQMediaPlayer_connect_activeTracksChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_activeTracksChanged".}
proc fcQMediaPlayer_errorChanged(self: pointer): void {.importc: "QMediaPlayer_errorChanged".}
proc fcQMediaPlayer_connect_errorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_errorChanged".}
proc fcQMediaPlayer_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaPlayer_errorOccurred".}
proc fcQMediaPlayer_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlayer_connect_errorOccurred".}
proc fcQMediaPlayer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlayer_tr2".}
proc fcQMediaPlayer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlayer_tr3".}
proc fcQMediaPlayer_setSourceDevice2(self: pointer, device: pointer, sourceUrl: pointer): void {.importc: "QMediaPlayer_setSourceDevice2".}
proc fcQMediaPlayer_vtbl(self: pointer): pointer {.importc: "QMediaPlayer_vtbl".}
proc fcQMediaPlayer_vdata(self: pointer): pointer {.importc: "QMediaPlayer_vdata".}
type cQMediaPlayerVTable {.pure.} = object
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
proc fcQMediaPlayer_virtualbase_metaObject(self: pointer): pointer {.importc: "QMediaPlayer_virtualbase_metaObject".}
proc fcQMediaPlayer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlayer_virtualbase_metacast".}
proc fcQMediaPlayer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlayer_virtualbase_metacall".}
proc fcQMediaPlayer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaPlayer_virtualbase_event".}
proc fcQMediaPlayer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaPlayer_virtualbase_eventFilter".}
proc fcQMediaPlayer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaPlayer_virtualbase_timerEvent".}
proc fcQMediaPlayer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaPlayer_virtualbase_childEvent".}
proc fcQMediaPlayer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaPlayer_virtualbase_customEvent".}
proc fcQMediaPlayer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaPlayer_virtualbase_connectNotify".}
proc fcQMediaPlayer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaPlayer_virtualbase_disconnectNotify".}
proc fcQMediaPlayer_protectedbase_sender(self: pointer): pointer {.importc: "QMediaPlayer_protectedbase_sender".}
proc fcQMediaPlayer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaPlayer_protectedbase_senderSignalIndex".}
proc fcQMediaPlayer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaPlayer_protectedbase_receivers".}
proc fcQMediaPlayer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaPlayer_protectedbase_isSignalConnected".}
proc fcQMediaPlayer_new(vtbl, vdata: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new".}
proc fcQMediaPlayer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQMediaPlayer {.importc: "QMediaPlayer_new2".}
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

proc audioTracks*(self: gen_qmediaplayer_types.QMediaPlayer): seq[gen_qmediametadata_types.QMediaMetaData] =
  var v_ma = fcQMediaPlayer_audioTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata_types.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata_types.QMediaMetaData(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc videoTracks*(self: gen_qmediaplayer_types.QMediaPlayer): seq[gen_qmediametadata_types.QMediaMetaData] =
  var v_ma = fcQMediaPlayer_videoTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata_types.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata_types.QMediaMetaData(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc subtitleTracks*(self: gen_qmediaplayer_types.QMediaPlayer): seq[gen_qmediametadata_types.QMediaMetaData] =
  var v_ma = fcQMediaPlayer_subtitleTracks(self.h)
  var vx_ret = newSeq[gen_qmediametadata_types.QMediaMetaData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediametadata_types.QMediaMetaData(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc activeAudioTrack*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_activeAudioTrack(self.h)

proc activeVideoTrack*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_activeVideoTrack(self.h)

proc activeSubtitleTrack*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_activeSubtitleTrack(self.h)

proc setActiveAudioTrack*(self: gen_qmediaplayer_types.QMediaPlayer, index: cint): void =
  fcQMediaPlayer_setActiveAudioTrack(self.h, index)

proc setActiveVideoTrack*(self: gen_qmediaplayer_types.QMediaPlayer, index: cint): void =
  fcQMediaPlayer_setActiveVideoTrack(self.h, index)

proc setActiveSubtitleTrack*(self: gen_qmediaplayer_types.QMediaPlayer, index: cint): void =
  fcQMediaPlayer_setActiveSubtitleTrack(self.h, index)

proc setAudioOutput*(self: gen_qmediaplayer_types.QMediaPlayer, output: gen_qaudiooutput_types.QAudioOutput): void =
  fcQMediaPlayer_setAudioOutput(self.h, output.h)

proc audioOutput*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput(h: fcQMediaPlayer_audioOutput(self.h), owned: false)

proc setVideoOutput*(self: gen_qmediaplayer_types.QMediaPlayer, videoOutput: gen_qobject_types.QObject): void =
  fcQMediaPlayer_setVideoOutput(self.h, videoOutput.h)

proc videoOutput*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaPlayer_videoOutput(self.h), owned: false)

proc setVideoSink*(self: gen_qmediaplayer_types.QMediaPlayer, sink: gen_qvideosink_types.QVideoSink): void =
  fcQMediaPlayer_setVideoSink(self.h, sink.h)

proc videoSink*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink(h: fcQMediaPlayer_videoSink(self.h), owned: false)

proc source*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaPlayer_source(self.h), owned: true)

proc sourceDevice*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQMediaPlayer_sourceDevice(self.h), owned: false)

proc playbackState*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_playbackState(self.h))

proc mediaStatus*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_mediaStatus(self.h))

proc duration*(self: gen_qmediaplayer_types.QMediaPlayer): clonglong =
  fcQMediaPlayer_duration(self.h)

proc position*(self: gen_qmediaplayer_types.QMediaPlayer): clonglong =
  fcQMediaPlayer_position(self.h)

proc hasAudio*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_hasAudio(self.h)

proc hasVideo*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_hasVideo(self.h)

proc bufferProgress*(self: gen_qmediaplayer_types.QMediaPlayer): float32 =
  fcQMediaPlayer_bufferProgress(self.h)

proc bufferedTimeRange*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qmediatimerange_types.QMediaTimeRange =
  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaPlayer_bufferedTimeRange(self.h), owned: true)

proc isSeekable*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_isSeekable(self.h)

proc playbackRate*(self: gen_qmediaplayer_types.QMediaPlayer): float64 =
  fcQMediaPlayer_playbackRate(self.h)

proc loops*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  fcQMediaPlayer_loops(self.h)

proc setLoops*(self: gen_qmediaplayer_types.QMediaPlayer, loops: cint): void =
  fcQMediaPlayer_setLoops(self.h, loops)

proc error*(self: gen_qmediaplayer_types.QMediaPlayer): cint =
  cint(fcQMediaPlayer_error(self.h))

proc errorString*(self: gen_qmediaplayer_types.QMediaPlayer): string =
  let v_ms = fcQMediaPlayer_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qmediaplayer_types.QMediaPlayer): bool =
  fcQMediaPlayer_isAvailable(self.h)

proc metaData*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qmediametadata_types.QMediaMetaData =
  gen_qmediametadata_types.QMediaMetaData(h: fcQMediaPlayer_metaData(self.h), owned: true)

proc play*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_play(self.h)

proc pause*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_pause(self.h)

proc stop*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_stop(self.h)

proc setPosition*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =
  fcQMediaPlayer_setPosition(self.h, position)

proc setPlaybackRate*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =
  fcQMediaPlayer_setPlaybackRate(self.h, rate)

proc setSource*(self: gen_qmediaplayer_types.QMediaPlayer, source: gen_qurl_types.QUrl): void =
  fcQMediaPlayer_setSource(self.h, source.h)

proc setSourceDevice*(self: gen_qmediaplayer_types.QMediaPlayer, device: gen_qiodevice_types.QIODevice): void =
  fcQMediaPlayer_setSourceDevice(self.h, device.h)

proc sourceChanged*(self: gen_qmediaplayer_types.QMediaPlayer, media: gen_qurl_types.QUrl): void =
  fcQMediaPlayer_sourceChanged(self.h, media.h)

type QMediaPlayersourceChangedSlot* = proc(media: gen_qurl_types.QUrl)
proc cQMediaPlayer_slot_callback_sourceChanged(slot: int, media: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayersourceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: media, owned: false)

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayersourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayersourceChangedSlot) =
  var tmp = new QMediaPlayersourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_sourceChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_sourceChanged, cQMediaPlayer_slot_callback_sourceChanged_release)

proc playbackStateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, newState: cint): void =
  fcQMediaPlayer_playbackStateChanged(self.h, cint(newState))

type QMediaPlayerplaybackStateChangedSlot* = proc(newState: cint)
proc cQMediaPlayer_slot_callback_playbackStateChanged(slot: int, newState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerplaybackStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_playbackStateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerplaybackStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onplaybackStateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerplaybackStateChangedSlot) =
  var tmp = new QMediaPlayerplaybackStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_playbackStateChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_playbackStateChanged, cQMediaPlayer_slot_callback_playbackStateChanged_release)

proc mediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, status: cint): void =
  fcQMediaPlayer_mediaStatusChanged(self.h, cint(status))

type QMediaPlayermediaStatusChangedSlot* = proc(status: cint)
proc cQMediaPlayer_slot_callback_mediaStatusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayermediaStatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_mediaStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayermediaStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaStatusChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermediaStatusChangedSlot) =
  var tmp = new QMediaPlayermediaStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_mediaStatusChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_mediaStatusChanged, cQMediaPlayer_slot_callback_mediaStatusChanged_release)

proc durationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, duration: clonglong): void =
  fcQMediaPlayer_durationChanged(self.h, duration)

type QMediaPlayerdurationChangedSlot* = proc(duration: clonglong)
proc cQMediaPlayer_slot_callback_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerdurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerdurationChangedSlot) =
  var tmp = new QMediaPlayerdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_durationChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_durationChanged, cQMediaPlayer_slot_callback_durationChanged_release)

proc positionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, position: clonglong): void =
  fcQMediaPlayer_positionChanged(self.h, position)

type QMediaPlayerpositionChangedSlot* = proc(position: clonglong)
proc cQMediaPlayer_slot_callback_positionChanged(slot: int, position: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerpositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpositionChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerpositionChangedSlot) =
  var tmp = new QMediaPlayerpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_positionChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_positionChanged, cQMediaPlayer_slot_callback_positionChanged_release)

proc hasAudioChanged*(self: gen_qmediaplayer_types.QMediaPlayer, available: bool): void =
  fcQMediaPlayer_hasAudioChanged(self.h, available)

type QMediaPlayerhasAudioChangedSlot* = proc(available: bool)
proc cQMediaPlayer_slot_callback_hasAudioChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerhasAudioChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_hasAudioChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerhasAudioChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhasAudioChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerhasAudioChangedSlot) =
  var tmp = new QMediaPlayerhasAudioChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_hasAudioChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_hasAudioChanged, cQMediaPlayer_slot_callback_hasAudioChanged_release)

proc hasVideoChanged*(self: gen_qmediaplayer_types.QMediaPlayer, videoAvailable: bool): void =
  fcQMediaPlayer_hasVideoChanged(self.h, videoAvailable)

type QMediaPlayerhasVideoChangedSlot* = proc(videoAvailable: bool)
proc cQMediaPlayer_slot_callback_hasVideoChanged(slot: int, videoAvailable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerhasVideoChangedSlot](cast[pointer](slot))
  let slotval1 = videoAvailable

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_hasVideoChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerhasVideoChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhasVideoChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerhasVideoChangedSlot) =
  var tmp = new QMediaPlayerhasVideoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_hasVideoChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_hasVideoChanged, cQMediaPlayer_slot_callback_hasVideoChanged_release)

proc bufferProgressChanged*(self: gen_qmediaplayer_types.QMediaPlayer, progress: float32): void =
  fcQMediaPlayer_bufferProgressChanged(self.h, progress)

type QMediaPlayerbufferProgressChangedSlot* = proc(progress: float32)
proc cQMediaPlayer_slot_callback_bufferProgressChanged(slot: int, progress: float32) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerbufferProgressChangedSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_bufferProgressChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerbufferProgressChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferProgressChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerbufferProgressChangedSlot) =
  var tmp = new QMediaPlayerbufferProgressChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_bufferProgressChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_bufferProgressChanged, cQMediaPlayer_slot_callback_bufferProgressChanged_release)

proc seekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, seekable: bool): void =
  fcQMediaPlayer_seekableChanged(self.h, seekable)

type QMediaPlayerseekableChangedSlot* = proc(seekable: bool)
proc cQMediaPlayer_slot_callback_seekableChanged(slot: int, seekable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerseekableChangedSlot](cast[pointer](slot))
  let slotval1 = seekable

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_seekableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerseekableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onseekableChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerseekableChangedSlot) =
  var tmp = new QMediaPlayerseekableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_seekableChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_seekableChanged, cQMediaPlayer_slot_callback_seekableChanged_release)

proc playbackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, rate: float64): void =
  fcQMediaPlayer_playbackRateChanged(self.h, rate)

type QMediaPlayerplaybackRateChangedSlot* = proc(rate: float64)
proc cQMediaPlayer_slot_callback_playbackRateChanged(slot: int, rate: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerplaybackRateChangedSlot](cast[pointer](slot))
  let slotval1 = rate

  nimfunc[](slotval1)

proc cQMediaPlayer_slot_callback_playbackRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerplaybackRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onplaybackRateChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerplaybackRateChangedSlot) =
  var tmp = new QMediaPlayerplaybackRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_playbackRateChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_playbackRateChanged, cQMediaPlayer_slot_callback_playbackRateChanged_release)

proc loopsChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_loopsChanged(self.h)

type QMediaPlayerloopsChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_loopsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayerloopsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_loopsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayerloopsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloopsChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayerloopsChangedSlot) =
  var tmp = new QMediaPlayerloopsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_loopsChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_loopsChanged, cQMediaPlayer_slot_callback_loopsChanged_release)

proc metaDataChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_metaDataChanged(self.h)

type QMediaPlayermetaDataChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayermetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayermetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayermetaDataChangedSlot) =
  var tmp = new QMediaPlayermetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_metaDataChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_metaDataChanged, cQMediaPlayer_slot_callback_metaDataChanged_release)

proc videoOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_videoOutputChanged(self.h)

type QMediaPlayervideoOutputChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_videoOutputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayervideoOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_videoOutputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayervideoOutputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayervideoOutputChangedSlot) =
  var tmp = new QMediaPlayervideoOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_videoOutputChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_videoOutputChanged, cQMediaPlayer_slot_callback_videoOutputChanged_release)

proc audioOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_audioOutputChanged(self.h)

type QMediaPlayeraudioOutputChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_audioOutputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayeraudioOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_audioOutputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayeraudioOutputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioOutputChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeraudioOutputChangedSlot) =
  var tmp = new QMediaPlayeraudioOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_audioOutputChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_audioOutputChanged, cQMediaPlayer_slot_callback_audioOutputChanged_release)

proc tracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_tracksChanged(self.h)

type QMediaPlayertracksChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_tracksChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayertracksChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_tracksChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayertracksChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayertracksChangedSlot) =
  var tmp = new QMediaPlayertracksChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_tracksChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_tracksChanged, cQMediaPlayer_slot_callback_tracksChanged_release)

proc activeTracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_activeTracksChanged(self.h)

type QMediaPlayeractiveTracksChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_activeTracksChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayeractiveTracksChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_activeTracksChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayeractiveTracksChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveTracksChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayeractiveTracksChangedSlot) =
  var tmp = new QMediaPlayeractiveTracksChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_activeTracksChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_activeTracksChanged, cQMediaPlayer_slot_callback_activeTracksChanged_release)

proc errorChanged*(self: gen_qmediaplayer_types.QMediaPlayer): void =
  fcQMediaPlayer_errorChanged(self.h)

type QMediaPlayererrorChangedSlot* = proc()
proc cQMediaPlayer_slot_callback_errorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayererrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlayer_slot_callback_errorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayererrorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorChanged*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayererrorChangedSlot) =
  var tmp = new QMediaPlayererrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_errorChanged(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_errorChanged, cQMediaPlayer_slot_callback_errorChanged_release)

proc errorOccurred*(self: gen_qmediaplayer_types.QMediaPlayer, error: cint, errorString: openArray[char]): void =
  fcQMediaPlayer_errorOccurred(self.h, cint(error), struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QMediaPlayererrorOccurredSlot* = proc(error: cint, errorString: openArray[char])
proc cQMediaPlayer_slot_callback_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlayererrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc cQMediaPlayer_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlayererrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qmediaplayer_types.QMediaPlayer, slot: QMediaPlayererrorOccurredSlot) =
  var tmp = new QMediaPlayererrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlayer_connect_errorOccurred(self.h, cast[int](addr tmp[]), cQMediaPlayer_slot_callback_errorOccurred, cQMediaPlayer_slot_callback_errorOccurred_release)

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

proc setSourceDevice*(self: gen_qmediaplayer_types.QMediaPlayer, device: gen_qiodevice_types.QIODevice, sourceUrl: gen_qurl_types.QUrl): void =
  fcQMediaPlayer_setSourceDevice2(self.h, device.h, sourceUrl.h)

type QMediaPlayermetaObjectProc* = proc(self: QMediaPlayer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaPlayermetacastProc* = proc(self: QMediaPlayer, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaPlayermetacallProc* = proc(self: QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
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
  event*: QMediaPlayereventProc
  eventFilter*: QMediaPlayereventFilterProc
  timerEvent*: QMediaPlayertimerEventProc
  childEvent*: QMediaPlayerchildEventProc
  customEvent*: QMediaPlayercustomEventProc
  connectNotify*: QMediaPlayerconnectNotifyProc
  disconnectNotify*: QMediaPlayerdisconnectNotifyProc
proc QMediaPlayermetaObject*(self: gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_virtualbase_metaObject(self.h), owned: false)

proc cQMediaPlayer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMediaPlayermetacast*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cstring): pointer =
  fcQMediaPlayer_virtualbase_metacast(self.h, param1)

proc cQMediaPlayer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaPlayermetacall*(self: gen_qmediaplayer_types.QMediaPlayer, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlayer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMediaPlayer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaPlayerevent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaPlayer_virtualbase_event(self.h, event.h)

proc cQMediaPlayer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaPlayereventFilter*(self: gen_qmediaplayer_types.QMediaPlayer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaPlayer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMediaPlayer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaPlayertimerEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaPlayer_virtualbase_timerEvent(self.h, event.h)

proc cQMediaPlayer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMediaPlayerchildEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaPlayer_virtualbase_childEvent(self.h, event.h)

proc cQMediaPlayer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMediaPlayercustomEvent*(self: gen_qmediaplayer_types.QMediaPlayer, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaPlayer_virtualbase_customEvent(self.h, event.h)

proc cQMediaPlayer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMediaPlayerconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaPlayer_virtualbase_connectNotify(self.h, signal.h)

proc cQMediaPlayer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMediaPlayerdisconnectNotify*(self: gen_qmediaplayer_types.QMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaPlayer_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMediaPlayer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlayerVTable](fcQMediaPlayer_vdata(self))
  let self = QMediaPlayer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMediaPlayer* {.inheritable.} = ref object of QMediaPlayer
  vtbl*: cQMediaPlayerVTable
method metaObject*(self: VirtualQMediaPlayer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMediaPlayermetaObject(self[])
proc cQMediaPlayer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMediaPlayer, param1: cstring): pointer {.base.} =
  QMediaPlayermetacast(self[], param1)
proc cQMediaPlayer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMediaPlayer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMediaPlayermetacall(self[], param1, param2, param3)
proc cQMediaPlayer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaPlayerevent(self[], event)
proc cQMediaPlayer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMediaPlayer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaPlayereventFilter(self[], watched, event)
proc cQMediaPlayer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMediaPlayertimerEvent(self[], event)
proc cQMediaPlayer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMediaPlayerchildEvent(self[], event)
proc cQMediaPlayer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMediaPlayer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMediaPlayercustomEvent(self[], event)
proc cQMediaPlayer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaPlayerconnectNotify(self[], signal)
proc cQMediaPlayer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMediaPlayer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaPlayerdisconnectNotify(self[], signal)
proc cQMediaPlayer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlayer](fcQMediaPlayer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

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
    vtbl[].vtbl.metaObject = cQMediaPlayer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaPlayer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaPlayer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaPlayer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaPlayer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaPlayer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaPlayer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaPlayer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaPlayer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaPlayer_vtable_callback_disconnectNotify
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
    vtbl[].vtbl.metaObject = cQMediaPlayer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaPlayer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaPlayer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaPlayer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaPlayer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaPlayer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaPlayer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaPlayer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaPlayer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaPlayer_vtable_callback_disconnectNotify
  gen_qmediaplayer_types.QMediaPlayer(h: fcQMediaPlayer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQMediaPlayer_mvtbl = cQMediaPlayerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMediaPlayer()[])](self.fcQMediaPlayer_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMediaPlayer_method_callback_metaObject,
  metacast: cQMediaPlayer_method_callback_metacast,
  metacall: cQMediaPlayer_method_callback_metacall,
  event: cQMediaPlayer_method_callback_event,
  eventFilter: cQMediaPlayer_method_callback_eventFilter,
  timerEvent: cQMediaPlayer_method_callback_timerEvent,
  childEvent: cQMediaPlayer_method_callback_childEvent,
  customEvent: cQMediaPlayer_method_callback_customEvent,
  connectNotify: cQMediaPlayer_method_callback_connectNotify,
  disconnectNotify: cQMediaPlayer_method_callback_disconnectNotify,
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

proc staticMetaObject*(_: type gen_qmediaplayer_types.QMediaPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlayer_staticMetaObject())
