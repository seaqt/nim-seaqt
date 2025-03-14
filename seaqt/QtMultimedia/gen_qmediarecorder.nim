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


{.compile("gen_qmediarecorder.cpp", QtMultimediaCFlags).}


type QMediaRecorderQualityEnum* = distinct cint
template VeryLowQuality*(_: type QMediaRecorderQualityEnum): untyped = 0
template LowQuality*(_: type QMediaRecorderQualityEnum): untyped = 1
template NormalQuality*(_: type QMediaRecorderQualityEnum): untyped = 2
template HighQuality*(_: type QMediaRecorderQualityEnum): untyped = 3
template VeryHighQuality*(_: type QMediaRecorderQualityEnum): untyped = 4


type QMediaRecorderEncodingModeEnum* = distinct cint
template ConstantQualityEncoding*(_: type QMediaRecorderEncodingModeEnum): untyped = 0
template ConstantBitRateEncoding*(_: type QMediaRecorderEncodingModeEnum): untyped = 1
template AverageBitRateEncoding*(_: type QMediaRecorderEncodingModeEnum): untyped = 2
template TwoPassEncoding*(_: type QMediaRecorderEncodingModeEnum): untyped = 3


type QMediaRecorderRecorderStateEnum* = distinct cint
template StoppedState*(_: type QMediaRecorderRecorderStateEnum): untyped = 0
template RecordingState*(_: type QMediaRecorderRecorderStateEnum): untyped = 1
template PausedState*(_: type QMediaRecorderRecorderStateEnum): untyped = 2


type QMediaRecorderErrorEnum* = distinct cint
template NoError*(_: type QMediaRecorderErrorEnum): untyped = 0
template ResourceError*(_: type QMediaRecorderErrorEnum): untyped = 1
template FormatError*(_: type QMediaRecorderErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QMediaRecorderErrorEnum): untyped = 3
template LocationNotWritable*(_: type QMediaRecorderErrorEnum): untyped = 4


import ./gen_qmediarecorder_types
export gen_qmediarecorder_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ./gen_qmediacapturesession_types,
  ./gen_qmediaformat_types,
  ./gen_qmediametadata_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qmediacapturesession_types,
  gen_qmediaformat_types,
  gen_qmediametadata_types

type cQMediaRecorder*{.exportc: "QMediaRecorder", incompleteStruct.} = object

proc fcQMediaRecorder_metaObject(self: pointer): pointer {.importc: "QMediaRecorder_metaObject".}
proc fcQMediaRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_metacast".}
proc fcQMediaRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_metacall".}
proc fcQMediaRecorder_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr".}
proc fcQMediaRecorder_isAvailable(self: pointer): bool {.importc: "QMediaRecorder_isAvailable".}
proc fcQMediaRecorder_outputLocation(self: pointer): pointer {.importc: "QMediaRecorder_outputLocation".}
proc fcQMediaRecorder_setOutputLocation(self: pointer, location: pointer): void {.importc: "QMediaRecorder_setOutputLocation".}
proc fcQMediaRecorder_actualLocation(self: pointer): pointer {.importc: "QMediaRecorder_actualLocation".}
proc fcQMediaRecorder_recorderState(self: pointer): cint {.importc: "QMediaRecorder_recorderState".}
proc fcQMediaRecorder_error(self: pointer): cint {.importc: "QMediaRecorder_error".}
proc fcQMediaRecorder_errorString(self: pointer): struct_miqt_string {.importc: "QMediaRecorder_errorString".}
proc fcQMediaRecorder_duration(self: pointer): clonglong {.importc: "QMediaRecorder_duration".}
proc fcQMediaRecorder_mediaFormat(self: pointer): pointer {.importc: "QMediaRecorder_mediaFormat".}
proc fcQMediaRecorder_setMediaFormat(self: pointer, format: pointer): void {.importc: "QMediaRecorder_setMediaFormat".}
proc fcQMediaRecorder_encodingMode(self: pointer): cint {.importc: "QMediaRecorder_encodingMode".}
proc fcQMediaRecorder_setEncodingMode(self: pointer, encodingMode: cint): void {.importc: "QMediaRecorder_setEncodingMode".}
proc fcQMediaRecorder_quality(self: pointer): cint {.importc: "QMediaRecorder_quality".}
proc fcQMediaRecorder_setQuality(self: pointer, quality: cint): void {.importc: "QMediaRecorder_setQuality".}
proc fcQMediaRecorder_videoResolution(self: pointer): pointer {.importc: "QMediaRecorder_videoResolution".}
proc fcQMediaRecorder_setVideoResolution(self: pointer, videoResolution: pointer): void {.importc: "QMediaRecorder_setVideoResolution".}
proc fcQMediaRecorder_setVideoResolution2(self: pointer, width: cint, height: cint): void {.importc: "QMediaRecorder_setVideoResolution2".}
proc fcQMediaRecorder_videoFrameRate(self: pointer): float64 {.importc: "QMediaRecorder_videoFrameRate".}
proc fcQMediaRecorder_setVideoFrameRate(self: pointer, frameRate: float64): void {.importc: "QMediaRecorder_setVideoFrameRate".}
proc fcQMediaRecorder_videoBitRate(self: pointer): cint {.importc: "QMediaRecorder_videoBitRate".}
proc fcQMediaRecorder_setVideoBitRate(self: pointer, bitRate: cint): void {.importc: "QMediaRecorder_setVideoBitRate".}
proc fcQMediaRecorder_audioBitRate(self: pointer): cint {.importc: "QMediaRecorder_audioBitRate".}
proc fcQMediaRecorder_setAudioBitRate(self: pointer, bitRate: cint): void {.importc: "QMediaRecorder_setAudioBitRate".}
proc fcQMediaRecorder_audioChannelCount(self: pointer): cint {.importc: "QMediaRecorder_audioChannelCount".}
proc fcQMediaRecorder_setAudioChannelCount(self: pointer, channels: cint): void {.importc: "QMediaRecorder_setAudioChannelCount".}
proc fcQMediaRecorder_audioSampleRate(self: pointer): cint {.importc: "QMediaRecorder_audioSampleRate".}
proc fcQMediaRecorder_setAudioSampleRate(self: pointer, sampleRate: cint): void {.importc: "QMediaRecorder_setAudioSampleRate".}
proc fcQMediaRecorder_metaData(self: pointer): pointer {.importc: "QMediaRecorder_metaData".}
proc fcQMediaRecorder_setMetaData(self: pointer, metaData: pointer): void {.importc: "QMediaRecorder_setMetaData".}
proc fcQMediaRecorder_addMetaData(self: pointer, metaData: pointer): void {.importc: "QMediaRecorder_addMetaData".}
proc fcQMediaRecorder_captureSession(self: pointer): pointer {.importc: "QMediaRecorder_captureSession".}
proc fcQMediaRecorder_record(self: pointer): void {.importc: "QMediaRecorder_record".}
proc fcQMediaRecorder_pause(self: pointer): void {.importc: "QMediaRecorder_pause".}
proc fcQMediaRecorder_stop(self: pointer): void {.importc: "QMediaRecorder_stop".}
proc fcQMediaRecorder_recorderStateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorder_recorderStateChanged".}
proc fcQMediaRecorder_connect_recorderStateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_recorderStateChanged".}
proc fcQMediaRecorder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaRecorder_durationChanged".}
proc fcQMediaRecorder_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_durationChanged".}
proc fcQMediaRecorder_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorder_actualLocationChanged".}
proc fcQMediaRecorder_connect_actualLocationChanged(self: pointer, slot: int, callback: proc (slot: int, location: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_actualLocationChanged".}
proc fcQMediaRecorder_encoderSettingsChanged(self: pointer): void {.importc: "QMediaRecorder_encoderSettingsChanged".}
proc fcQMediaRecorder_connect_encoderSettingsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_encoderSettingsChanged".}
proc fcQMediaRecorder_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaRecorder_errorOccurred".}
proc fcQMediaRecorder_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_errorOccurred".}
proc fcQMediaRecorder_errorChanged(self: pointer): void {.importc: "QMediaRecorder_errorChanged".}
proc fcQMediaRecorder_connect_errorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_errorChanged".}
proc fcQMediaRecorder_metaDataChanged(self: pointer): void {.importc: "QMediaRecorder_metaDataChanged".}
proc fcQMediaRecorder_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_metaDataChanged".}
proc fcQMediaRecorder_mediaFormatChanged(self: pointer): void {.importc: "QMediaRecorder_mediaFormatChanged".}
proc fcQMediaRecorder_connect_mediaFormatChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_mediaFormatChanged".}
proc fcQMediaRecorder_encodingModeChanged(self: pointer): void {.importc: "QMediaRecorder_encodingModeChanged".}
proc fcQMediaRecorder_connect_encodingModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_encodingModeChanged".}
proc fcQMediaRecorder_qualityChanged(self: pointer): void {.importc: "QMediaRecorder_qualityChanged".}
proc fcQMediaRecorder_connect_qualityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_qualityChanged".}
proc fcQMediaRecorder_videoResolutionChanged(self: pointer): void {.importc: "QMediaRecorder_videoResolutionChanged".}
proc fcQMediaRecorder_connect_videoResolutionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_videoResolutionChanged".}
proc fcQMediaRecorder_videoFrameRateChanged(self: pointer): void {.importc: "QMediaRecorder_videoFrameRateChanged".}
proc fcQMediaRecorder_connect_videoFrameRateChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_videoFrameRateChanged".}
proc fcQMediaRecorder_videoBitRateChanged(self: pointer): void {.importc: "QMediaRecorder_videoBitRateChanged".}
proc fcQMediaRecorder_connect_videoBitRateChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_videoBitRateChanged".}
proc fcQMediaRecorder_audioBitRateChanged(self: pointer): void {.importc: "QMediaRecorder_audioBitRateChanged".}
proc fcQMediaRecorder_connect_audioBitRateChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_audioBitRateChanged".}
proc fcQMediaRecorder_audioChannelCountChanged(self: pointer): void {.importc: "QMediaRecorder_audioChannelCountChanged".}
proc fcQMediaRecorder_connect_audioChannelCountChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_audioChannelCountChanged".}
proc fcQMediaRecorder_audioSampleRateChanged(self: pointer): void {.importc: "QMediaRecorder_audioSampleRateChanged".}
proc fcQMediaRecorder_connect_audioSampleRateChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_audioSampleRateChanged".}
proc fcQMediaRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr2".}
proc fcQMediaRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_tr3".}
proc fcQMediaRecorder_vtbl(self: pointer): pointer {.importc: "QMediaRecorder_vtbl".}
proc fcQMediaRecorder_vdata(self: pointer): pointer {.importc: "QMediaRecorder_vdata".}
type cQMediaRecorderVTable {.pure.} = object
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
proc fcQMediaRecorder_virtualbase_metaObject(self: pointer): pointer {.importc: "QMediaRecorder_virtualbase_metaObject".}
proc fcQMediaRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_virtualbase_metacast".}
proc fcQMediaRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_virtualbase_metacall".}
proc fcQMediaRecorder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaRecorder_virtualbase_event".}
proc fcQMediaRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaRecorder_virtualbase_eventFilter".}
proc fcQMediaRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaRecorder_virtualbase_timerEvent".}
proc fcQMediaRecorder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaRecorder_virtualbase_childEvent".}
proc fcQMediaRecorder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaRecorder_virtualbase_customEvent".}
proc fcQMediaRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaRecorder_virtualbase_connectNotify".}
proc fcQMediaRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaRecorder_virtualbase_disconnectNotify".}
proc fcQMediaRecorder_protectedbase_sender(self: pointer): pointer {.importc: "QMediaRecorder_protectedbase_sender".}
proc fcQMediaRecorder_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaRecorder_protectedbase_senderSignalIndex".}
proc fcQMediaRecorder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaRecorder_protectedbase_receivers".}
proc fcQMediaRecorder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaRecorder_protectedbase_isSignalConnected".}
proc fcQMediaRecorder_new(vtbl, vdata: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new".}
proc fcQMediaRecorder_new2(vtbl, vdata: pointer, parent: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new2".}
proc fcQMediaRecorder_staticMetaObject(): pointer {.importc: "QMediaRecorder_staticMetaObject".}

proc metaObject*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =
  fcQMediaRecorder_metacast(self.h, param1)

proc metacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring): string =
  let v_ms = fcQMediaRecorder_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQMediaRecorder_isAvailable(self.h)

proc outputLocation*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorder_outputLocation(self.h), owned: true)

proc setOutputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl_types.QUrl): void =
  fcQMediaRecorder_setOutputLocation(self.h, location.h)

proc actualLocation*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorder_actualLocation(self.h), owned: true)

proc recorderState*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  cint(fcQMediaRecorder_recorderState(self.h))

proc error*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  cint(fcQMediaRecorder_error(self.h))

proc errorString*(self: gen_qmediarecorder_types.QMediaRecorder): string =
  let v_ms = fcQMediaRecorder_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qmediarecorder_types.QMediaRecorder): clonglong =
  fcQMediaRecorder_duration(self.h)

proc mediaFormat*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qmediaformat_types.QMediaFormat =
  gen_qmediaformat_types.QMediaFormat(h: fcQMediaRecorder_mediaFormat(self.h), owned: true)

proc setMediaFormat*(self: gen_qmediarecorder_types.QMediaRecorder, format: gen_qmediaformat_types.QMediaFormat): void =
  fcQMediaRecorder_setMediaFormat(self.h, format.h)

proc encodingMode*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  cint(fcQMediaRecorder_encodingMode(self.h))

proc setEncodingMode*(self: gen_qmediarecorder_types.QMediaRecorder, encodingMode: cint): void =
  fcQMediaRecorder_setEncodingMode(self.h, cint(encodingMode))

proc quality*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  cint(fcQMediaRecorder_quality(self.h))

proc setQuality*(self: gen_qmediarecorder_types.QMediaRecorder, quality: cint): void =
  fcQMediaRecorder_setQuality(self.h, cint(quality))

proc videoResolution*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMediaRecorder_videoResolution(self.h), owned: true)

proc setVideoResolution*(self: gen_qmediarecorder_types.QMediaRecorder, videoResolution: gen_qsize_types.QSize): void =
  fcQMediaRecorder_setVideoResolution(self.h, videoResolution.h)

proc setVideoResolution*(self: gen_qmediarecorder_types.QMediaRecorder, width: cint, height: cint): void =
  fcQMediaRecorder_setVideoResolution2(self.h, width, height)

proc videoFrameRate*(self: gen_qmediarecorder_types.QMediaRecorder): float64 =
  fcQMediaRecorder_videoFrameRate(self.h)

proc setVideoFrameRate*(self: gen_qmediarecorder_types.QMediaRecorder, frameRate: float64): void =
  fcQMediaRecorder_setVideoFrameRate(self.h, frameRate)

proc videoBitRate*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  fcQMediaRecorder_videoBitRate(self.h)

proc setVideoBitRate*(self: gen_qmediarecorder_types.QMediaRecorder, bitRate: cint): void =
  fcQMediaRecorder_setVideoBitRate(self.h, bitRate)

proc audioBitRate*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  fcQMediaRecorder_audioBitRate(self.h)

proc setAudioBitRate*(self: gen_qmediarecorder_types.QMediaRecorder, bitRate: cint): void =
  fcQMediaRecorder_setAudioBitRate(self.h, bitRate)

proc audioChannelCount*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  fcQMediaRecorder_audioChannelCount(self.h)

proc setAudioChannelCount*(self: gen_qmediarecorder_types.QMediaRecorder, channels: cint): void =
  fcQMediaRecorder_setAudioChannelCount(self.h, channels)

proc audioSampleRate*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  fcQMediaRecorder_audioSampleRate(self.h)

proc setAudioSampleRate*(self: gen_qmediarecorder_types.QMediaRecorder, sampleRate: cint): void =
  fcQMediaRecorder_setAudioSampleRate(self.h, sampleRate)

proc metaData*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qmediametadata_types.QMediaMetaData =
  gen_qmediametadata_types.QMediaMetaData(h: fcQMediaRecorder_metaData(self.h), owned: true)

proc setMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQMediaRecorder_setMetaData(self.h, metaData.h)

proc addMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQMediaRecorder_addMetaData(self.h, metaData.h)

proc captureSession*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQMediaRecorder_captureSession(self.h), owned: false)

proc record*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_record(self.h)

proc pause*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_pause(self.h)

proc stop*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_stop(self.h)

proc recorderStateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, state: cint): void =
  fcQMediaRecorder_recorderStateChanged(self.h, cint(state))

type QMediaRecorderrecorderStateChangedSlot* = proc(state: cint)
proc cQMediaRecorder_slot_callback_recorderStateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderrecorderStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc cQMediaRecorder_slot_callback_recorderStateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderrecorderStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecorderStateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderrecorderStateChangedSlot) =
  var tmp = new QMediaRecorderrecorderStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_recorderStateChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_recorderStateChanged, cQMediaRecorder_slot_callback_recorderStateChanged_release)

proc durationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, duration: clonglong): void =
  fcQMediaRecorder_durationChanged(self.h, duration)

type QMediaRecorderdurationChangedSlot* = proc(duration: clonglong)
proc cQMediaRecorder_slot_callback_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc cQMediaRecorder_slot_callback_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderdurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderdurationChangedSlot) =
  var tmp = new QMediaRecorderdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_durationChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_durationChanged, cQMediaRecorder_slot_callback_durationChanged_release)

proc actualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl_types.QUrl): void =
  fcQMediaRecorder_actualLocationChanged(self.h, location.h)

type QMediaRecorderactualLocationChangedSlot* = proc(location: gen_qurl_types.QUrl)
proc cQMediaRecorder_slot_callback_actualLocationChanged(slot: int, location: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderactualLocationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: location, owned: false)

  nimfunc[](slotval1)

proc cQMediaRecorder_slot_callback_actualLocationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderactualLocationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderactualLocationChangedSlot) =
  var tmp = new QMediaRecorderactualLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_actualLocationChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_actualLocationChanged, cQMediaRecorder_slot_callback_actualLocationChanged_release)

proc encoderSettingsChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_encoderSettingsChanged(self.h)

type QMediaRecorderencoderSettingsChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_encoderSettingsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderencoderSettingsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_encoderSettingsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderencoderSettingsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onencoderSettingsChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderencoderSettingsChangedSlot) =
  var tmp = new QMediaRecorderencoderSettingsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_encoderSettingsChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_encoderSettingsChanged, cQMediaRecorder_slot_callback_encoderSettingsChanged_release)

proc errorOccurred*(self: gen_qmediarecorder_types.QMediaRecorder, error: cint, errorString: openArray[char]): void =
  fcQMediaRecorder_errorOccurred(self.h, cint(error), struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QMediaRecordererrorOccurredSlot* = proc(error: cint, errorString: openArray[char])
proc cQMediaRecorder_slot_callback_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordererrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc cQMediaRecorder_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordererrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordererrorOccurredSlot) =
  var tmp = new QMediaRecordererrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_errorOccurred(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_errorOccurred, cQMediaRecorder_slot_callback_errorOccurred_release)

proc errorChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_errorChanged(self.h)

type QMediaRecordererrorChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_errorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordererrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_errorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordererrorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordererrorChangedSlot) =
  var tmp = new QMediaRecordererrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_errorChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_errorChanged, cQMediaRecorder_slot_callback_errorChanged_release)

proc metaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_metaDataChanged(self.h)

type QMediaRecordermetaDataChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaDataChangedSlot) =
  var tmp = new QMediaRecordermetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_metaDataChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_metaDataChanged, cQMediaRecorder_slot_callback_metaDataChanged_release)

proc mediaFormatChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_mediaFormatChanged(self.h)

type QMediaRecordermediaFormatChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_mediaFormatChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermediaFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_mediaFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermediaFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaFormatChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermediaFormatChangedSlot) =
  var tmp = new QMediaRecordermediaFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_mediaFormatChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_mediaFormatChanged, cQMediaRecorder_slot_callback_mediaFormatChanged_release)

proc encodingModeChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_encodingModeChanged(self.h)

type QMediaRecorderencodingModeChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_encodingModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderencodingModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_encodingModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderencodingModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onencodingModeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderencodingModeChangedSlot) =
  var tmp = new QMediaRecorderencodingModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_encodingModeChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_encodingModeChanged, cQMediaRecorder_slot_callback_encodingModeChanged_release)

proc qualityChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_qualityChanged(self.h)

type QMediaRecorderqualityChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_qualityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderqualityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_qualityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderqualityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onqualityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderqualityChangedSlot) =
  var tmp = new QMediaRecorderqualityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_qualityChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_qualityChanged, cQMediaRecorder_slot_callback_qualityChanged_release)

proc videoResolutionChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_videoResolutionChanged(self.h)

type QMediaRecordervideoResolutionChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_videoResolutionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordervideoResolutionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_videoResolutionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordervideoResolutionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoResolutionChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervideoResolutionChangedSlot) =
  var tmp = new QMediaRecordervideoResolutionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_videoResolutionChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_videoResolutionChanged, cQMediaRecorder_slot_callback_videoResolutionChanged_release)

proc videoFrameRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_videoFrameRateChanged(self.h)

type QMediaRecordervideoFrameRateChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_videoFrameRateChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordervideoFrameRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_videoFrameRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordervideoFrameRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoFrameRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervideoFrameRateChangedSlot) =
  var tmp = new QMediaRecordervideoFrameRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_videoFrameRateChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_videoFrameRateChanged, cQMediaRecorder_slot_callback_videoFrameRateChanged_release)

proc videoBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_videoBitRateChanged(self.h)

type QMediaRecordervideoBitRateChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_videoBitRateChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordervideoBitRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_videoBitRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordervideoBitRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervideoBitRateChangedSlot) =
  var tmp = new QMediaRecordervideoBitRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_videoBitRateChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_videoBitRateChanged, cQMediaRecorder_slot_callback_videoBitRateChanged_release)

proc audioBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_audioBitRateChanged(self.h)

type QMediaRecorderaudioBitRateChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_audioBitRateChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderaudioBitRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_audioBitRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderaudioBitRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderaudioBitRateChangedSlot) =
  var tmp = new QMediaRecorderaudioBitRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_audioBitRateChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_audioBitRateChanged, cQMediaRecorder_slot_callback_audioBitRateChanged_release)

proc audioChannelCountChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_audioChannelCountChanged(self.h)

type QMediaRecorderaudioChannelCountChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_audioChannelCountChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderaudioChannelCountChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_audioChannelCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderaudioChannelCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioChannelCountChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderaudioChannelCountChangedSlot) =
  var tmp = new QMediaRecorderaudioChannelCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_audioChannelCountChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_audioChannelCountChanged, cQMediaRecorder_slot_callback_audioChannelCountChanged_release)

proc audioSampleRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaRecorder_audioSampleRateChanged(self.h)

type QMediaRecorderaudioSampleRateChangedSlot* = proc()
proc cQMediaRecorder_slot_callback_audioSampleRateChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderaudioSampleRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaRecorder_slot_callback_audioSampleRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderaudioSampleRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioSampleRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderaudioSampleRateChangedSlot) =
  var tmp = new QMediaRecorderaudioSampleRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_audioSampleRateChanged(self.h, cast[int](addr tmp[]), cQMediaRecorder_slot_callback_audioSampleRateChanged, cQMediaRecorder_slot_callback_audioSampleRateChanged_release)

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQMediaRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QMediaRecordermetaObjectProc* = proc(self: QMediaRecorder): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaRecordermetacastProc* = proc(self: QMediaRecorder, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaRecordermetacallProc* = proc(self: QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMediaRecordereventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaRecordereventFilterProc* = proc(self: QMediaRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaRecordertimerEventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMediaRecorderchildEventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMediaRecordercustomEventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMediaRecorderconnectNotifyProc* = proc(self: QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaRecorderdisconnectNotifyProc* = proc(self: QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaRecorderVTable* {.inheritable, pure.} = object
  vtbl: cQMediaRecorderVTable
  metaObject*: QMediaRecordermetaObjectProc
  metacast*: QMediaRecordermetacastProc
  metacall*: QMediaRecordermetacallProc
  event*: QMediaRecordereventProc
  eventFilter*: QMediaRecordereventFilterProc
  timerEvent*: QMediaRecordertimerEventProc
  childEvent*: QMediaRecorderchildEventProc
  customEvent*: QMediaRecordercustomEventProc
  connectNotify*: QMediaRecorderconnectNotifyProc
  disconnectNotify*: QMediaRecorderdisconnectNotifyProc
proc QMediaRecordermetaObject*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_virtualbase_metaObject(self.h), owned: false)

proc cQMediaRecorder_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMediaRecordermetacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =
  fcQMediaRecorder_virtualbase_metacast(self.h, param1)

proc cQMediaRecorder_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaRecordermetacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMediaRecorder_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaRecorderevent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaRecorder_virtualbase_event(self.h, event.h)

proc cQMediaRecorder_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaRecordereventFilter*(self: gen_qmediarecorder_types.QMediaRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMediaRecorder_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaRecordertimerEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaRecorder_virtualbase_timerEvent(self.h, event.h)

proc cQMediaRecorder_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMediaRecorderchildEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaRecorder_virtualbase_childEvent(self.h, event.h)

proc cQMediaRecorder_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMediaRecordercustomEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaRecorder_virtualbase_customEvent(self.h, event.h)

proc cQMediaRecorder_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMediaRecorderconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaRecorder_virtualbase_connectNotify(self.h, signal.h)

proc cQMediaRecorder_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMediaRecorderdisconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaRecorder_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMediaRecorder_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMediaRecorder* {.inheritable.} = ref object of QMediaRecorder
  vtbl*: cQMediaRecorderVTable
method metaObject*(self: VirtualQMediaRecorder): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMediaRecordermetaObject(self[])
proc cQMediaRecorder_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMediaRecorder, param1: cstring): pointer {.base.} =
  QMediaRecordermetacast(self[], param1)
proc cQMediaRecorder_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMediaRecorder, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMediaRecordermetacall(self[], param1, param2, param3)
proc cQMediaRecorder_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQMediaRecorder, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaRecorderevent(self[], event)
proc cQMediaRecorder_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMediaRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaRecordereventFilter(self[], watched, event)
proc cQMediaRecorder_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMediaRecorder, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMediaRecordertimerEvent(self[], event)
proc cQMediaRecorder_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMediaRecorder, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMediaRecorderchildEvent(self[], event)
proc cQMediaRecorder_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMediaRecorder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMediaRecordercustomEvent(self[], event)
proc cQMediaRecorder_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaRecorderconnectNotify(self[], signal)
proc cQMediaRecorder_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaRecorderdisconnectNotify(self[], signal)
proc cQMediaRecorder_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaRecorder](fcQMediaRecorder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qmediarecorder_types.QMediaRecorder): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaRecorder_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediarecorder_types.QMediaRecorder): cint =
  fcQMediaRecorder_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediarecorder_types.QMediaRecorder, signal: cstring): cint =
  fcQMediaRecorder_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaRecorder_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediarecorder_types.QMediaRecorder,
    vtbl: ref QMediaRecorderVTable = nil): gen_qmediarecorder_types.QMediaRecorder =
  let vtbl = if vtbl == nil: new QMediaRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMediaRecorder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaRecorder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaRecorder_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaRecorder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaRecorder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaRecorder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaRecorder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaRecorder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaRecorder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaRecorder_vtable_callback_disconnectNotify
  gen_qmediarecorder_types.QMediaRecorder(h: fcQMediaRecorder_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmediarecorder_types.QMediaRecorder,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaRecorderVTable = nil): gen_qmediarecorder_types.QMediaRecorder =
  let vtbl = if vtbl == nil: new QMediaRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaRecorderVTable](fcQMediaRecorder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMediaRecorder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaRecorder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaRecorder_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaRecorder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaRecorder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaRecorder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaRecorder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaRecorder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaRecorder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaRecorder_vtable_callback_disconnectNotify
  gen_qmediarecorder_types.QMediaRecorder(h: fcQMediaRecorder_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQMediaRecorder_mvtbl = cQMediaRecorderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMediaRecorder()[])](self.fcQMediaRecorder_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMediaRecorder_method_callback_metaObject,
  metacast: cQMediaRecorder_method_callback_metacast,
  metacall: cQMediaRecorder_method_callback_metacall,
  event: cQMediaRecorder_method_callback_event,
  eventFilter: cQMediaRecorder_method_callback_eventFilter,
  timerEvent: cQMediaRecorder_method_callback_timerEvent,
  childEvent: cQMediaRecorder_method_callback_childEvent,
  customEvent: cQMediaRecorder_method_callback_customEvent,
  connectNotify: cQMediaRecorder_method_callback_connectNotify,
  disconnectNotify: cQMediaRecorder_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmediarecorder_types.QMediaRecorder,
    inst: VirtualQMediaRecorder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaRecorder_new(addr(cQMediaRecorder_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmediarecorder_types.QMediaRecorder,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMediaRecorder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaRecorder_new2(addr(cQMediaRecorder_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmediarecorder_types.QMediaRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_staticMetaObject())
