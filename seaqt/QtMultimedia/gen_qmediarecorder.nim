import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qmediarecorder.cpp", cflags).}


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

proc fcQMediaRecorder_new(): ptr cQMediaRecorder {.importc: "QMediaRecorder_new".}
proc fcQMediaRecorder_new2(parent: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new2".}
proc fcQMediaRecorder_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_metaObject".}
proc fcQMediaRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_metacast".}
proc fcQMediaRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_metacall".}
proc fcQMediaRecorder_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr".}
proc fcQMediaRecorder_isAvailable(self: pointer, ): bool {.importc: "QMediaRecorder_isAvailable".}
proc fcQMediaRecorder_outputLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_outputLocation".}
proc fcQMediaRecorder_setOutputLocation(self: pointer, location: pointer): void {.importc: "QMediaRecorder_setOutputLocation".}
proc fcQMediaRecorder_actualLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_actualLocation".}
proc fcQMediaRecorder_recorderState(self: pointer, ): cint {.importc: "QMediaRecorder_recorderState".}
proc fcQMediaRecorder_error(self: pointer, ): cint {.importc: "QMediaRecorder_error".}
proc fcQMediaRecorder_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaRecorder_errorString".}
proc fcQMediaRecorder_duration(self: pointer, ): clonglong {.importc: "QMediaRecorder_duration".}
proc fcQMediaRecorder_mediaFormat(self: pointer, ): pointer {.importc: "QMediaRecorder_mediaFormat".}
proc fcQMediaRecorder_setMediaFormat(self: pointer, format: pointer): void {.importc: "QMediaRecorder_setMediaFormat".}
proc fcQMediaRecorder_encodingMode(self: pointer, ): cint {.importc: "QMediaRecorder_encodingMode".}
proc fcQMediaRecorder_setEncodingMode(self: pointer, encodingMode: cint): void {.importc: "QMediaRecorder_setEncodingMode".}
proc fcQMediaRecorder_quality(self: pointer, ): cint {.importc: "QMediaRecorder_quality".}
proc fcQMediaRecorder_setQuality(self: pointer, quality: cint): void {.importc: "QMediaRecorder_setQuality".}
proc fcQMediaRecorder_videoResolution(self: pointer, ): pointer {.importc: "QMediaRecorder_videoResolution".}
proc fcQMediaRecorder_setVideoResolution(self: pointer, videoResolution: pointer): void {.importc: "QMediaRecorder_setVideoResolution".}
proc fcQMediaRecorder_setVideoResolution2(self: pointer, width: cint, height: cint): void {.importc: "QMediaRecorder_setVideoResolution2".}
proc fcQMediaRecorder_videoFrameRate(self: pointer, ): float64 {.importc: "QMediaRecorder_videoFrameRate".}
proc fcQMediaRecorder_setVideoFrameRate(self: pointer, frameRate: float64): void {.importc: "QMediaRecorder_setVideoFrameRate".}
proc fcQMediaRecorder_videoBitRate(self: pointer, ): cint {.importc: "QMediaRecorder_videoBitRate".}
proc fcQMediaRecorder_setVideoBitRate(self: pointer, bitRate: cint): void {.importc: "QMediaRecorder_setVideoBitRate".}
proc fcQMediaRecorder_audioBitRate(self: pointer, ): cint {.importc: "QMediaRecorder_audioBitRate".}
proc fcQMediaRecorder_setAudioBitRate(self: pointer, bitRate: cint): void {.importc: "QMediaRecorder_setAudioBitRate".}
proc fcQMediaRecorder_audioChannelCount(self: pointer, ): cint {.importc: "QMediaRecorder_audioChannelCount".}
proc fcQMediaRecorder_setAudioChannelCount(self: pointer, channels: cint): void {.importc: "QMediaRecorder_setAudioChannelCount".}
proc fcQMediaRecorder_audioSampleRate(self: pointer, ): cint {.importc: "QMediaRecorder_audioSampleRate".}
proc fcQMediaRecorder_setAudioSampleRate(self: pointer, sampleRate: cint): void {.importc: "QMediaRecorder_setAudioSampleRate".}
proc fcQMediaRecorder_metaData(self: pointer, ): pointer {.importc: "QMediaRecorder_metaData".}
proc fcQMediaRecorder_setMetaData(self: pointer, metaData: pointer): void {.importc: "QMediaRecorder_setMetaData".}
proc fcQMediaRecorder_addMetaData(self: pointer, metaData: pointer): void {.importc: "QMediaRecorder_addMetaData".}
proc fcQMediaRecorder_captureSession(self: pointer, ): pointer {.importc: "QMediaRecorder_captureSession".}
proc fcQMediaRecorder_record(self: pointer, ): void {.importc: "QMediaRecorder_record".}
proc fcQMediaRecorder_pause(self: pointer, ): void {.importc: "QMediaRecorder_pause".}
proc fcQMediaRecorder_stop(self: pointer, ): void {.importc: "QMediaRecorder_stop".}
proc fcQMediaRecorder_recorderStateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorder_recorderStateChanged".}
proc fcQMediaRecorder_connect_recorderStateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_recorderStateChanged".}
proc fcQMediaRecorder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaRecorder_durationChanged".}
proc fcQMediaRecorder_connect_durationChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_durationChanged".}
proc fcQMediaRecorder_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorder_actualLocationChanged".}
proc fcQMediaRecorder_connect_actualLocationChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_actualLocationChanged".}
proc fcQMediaRecorder_encoderSettingsChanged(self: pointer, ): void {.importc: "QMediaRecorder_encoderSettingsChanged".}
proc fcQMediaRecorder_connect_encoderSettingsChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_encoderSettingsChanged".}
proc fcQMediaRecorder_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaRecorder_errorOccurred".}
proc fcQMediaRecorder_connect_errorOccurred(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_errorOccurred".}
proc fcQMediaRecorder_errorChanged(self: pointer, ): void {.importc: "QMediaRecorder_errorChanged".}
proc fcQMediaRecorder_connect_errorChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_errorChanged".}
proc fcQMediaRecorder_metaDataChanged(self: pointer, ): void {.importc: "QMediaRecorder_metaDataChanged".}
proc fcQMediaRecorder_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_metaDataChanged".}
proc fcQMediaRecorder_mediaFormatChanged(self: pointer, ): void {.importc: "QMediaRecorder_mediaFormatChanged".}
proc fcQMediaRecorder_connect_mediaFormatChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_mediaFormatChanged".}
proc fcQMediaRecorder_encodingModeChanged(self: pointer, ): void {.importc: "QMediaRecorder_encodingModeChanged".}
proc fcQMediaRecorder_connect_encodingModeChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_encodingModeChanged".}
proc fcQMediaRecorder_qualityChanged(self: pointer, ): void {.importc: "QMediaRecorder_qualityChanged".}
proc fcQMediaRecorder_connect_qualityChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_qualityChanged".}
proc fcQMediaRecorder_videoResolutionChanged(self: pointer, ): void {.importc: "QMediaRecorder_videoResolutionChanged".}
proc fcQMediaRecorder_connect_videoResolutionChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_videoResolutionChanged".}
proc fcQMediaRecorder_videoFrameRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_videoFrameRateChanged".}
proc fcQMediaRecorder_connect_videoFrameRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_videoFrameRateChanged".}
proc fcQMediaRecorder_videoBitRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_videoBitRateChanged".}
proc fcQMediaRecorder_connect_videoBitRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_videoBitRateChanged".}
proc fcQMediaRecorder_audioBitRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_audioBitRateChanged".}
proc fcQMediaRecorder_connect_audioBitRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_audioBitRateChanged".}
proc fcQMediaRecorder_audioChannelCountChanged(self: pointer, ): void {.importc: "QMediaRecorder_audioChannelCountChanged".}
proc fcQMediaRecorder_connect_audioChannelCountChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_audioChannelCountChanged".}
proc fcQMediaRecorder_audioSampleRateChanged(self: pointer, ): void {.importc: "QMediaRecorder_audioSampleRateChanged".}
proc fcQMediaRecorder_connect_audioSampleRateChanged(self: pointer, slot: int) {.importc: "QMediaRecorder_connect_audioSampleRateChanged".}
proc fcQMediaRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr2".}
proc fcQMediaRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_tr3".}
proc fQMediaRecorder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaRecorder_virtualbase_metaObject".}
proc fcQMediaRecorder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metaObject".}
proc fQMediaRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaRecorder_virtualbase_metacast".}
proc fcQMediaRecorder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metacast".}
proc fQMediaRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaRecorder_virtualbase_metacall".}
proc fcQMediaRecorder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_metacall".}
proc fQMediaRecorder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaRecorder_virtualbase_event".}
proc fcQMediaRecorder_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_event".}
proc fQMediaRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaRecorder_virtualbase_eventFilter".}
proc fcQMediaRecorder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_eventFilter".}
proc fQMediaRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaRecorder_virtualbase_timerEvent".}
proc fcQMediaRecorder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_timerEvent".}
proc fQMediaRecorder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaRecorder_virtualbase_childEvent".}
proc fcQMediaRecorder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_childEvent".}
proc fQMediaRecorder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaRecorder_virtualbase_customEvent".}
proc fcQMediaRecorder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_customEvent".}
proc fQMediaRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaRecorder_virtualbase_connectNotify".}
proc fcQMediaRecorder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_connectNotify".}
proc fQMediaRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaRecorder_virtualbase_disconnectNotify".}
proc fcQMediaRecorder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaRecorder_override_virtual_disconnectNotify".}
proc fcQMediaRecorder_staticMetaObject(): pointer {.importc: "QMediaRecorder_staticMetaObject".}
proc fcQMediaRecorder_delete(self: pointer) {.importc: "QMediaRecorder_delete".}


func init*(T: type gen_qmediarecorder_types.QMediaRecorder, h: ptr cQMediaRecorder): gen_qmediarecorder_types.QMediaRecorder =
  T(h: h)
proc create*(T: type gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediarecorder_types.QMediaRecorder =
  gen_qmediarecorder_types.QMediaRecorder.init(fcQMediaRecorder_new())

proc create*(T: type gen_qmediarecorder_types.QMediaRecorder, parent: gen_qobject_types.QObject): gen_qmediarecorder_types.QMediaRecorder =
  gen_qmediarecorder_types.QMediaRecorder.init(fcQMediaRecorder_new2(parent.h))

proc metaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_metaObject(self.h))

proc metacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =
  fcQMediaRecorder_metacast(self.h, param1)

proc metacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring): string =
  let v_ms = fcQMediaRecorder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =
  fcQMediaRecorder_isAvailable(self.h)

proc outputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorder_outputLocation(self.h))

proc setOutputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl_types.QUrl): void =
  fcQMediaRecorder_setOutputLocation(self.h, location.h)

proc actualLocation*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorder_actualLocation(self.h))

proc recorderState*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_recorderState(self.h))

proc error*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_error(self.h))

proc errorString*(self: gen_qmediarecorder_types.QMediaRecorder, ): string =
  let v_ms = fcQMediaRecorder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qmediarecorder_types.QMediaRecorder, ): clonglong =
  fcQMediaRecorder_duration(self.h)

proc mediaFormat*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaformat_types.QMediaFormat =
  gen_qmediaformat_types.QMediaFormat(h: fcQMediaRecorder_mediaFormat(self.h))

proc setMediaFormat*(self: gen_qmediarecorder_types.QMediaRecorder, format: gen_qmediaformat_types.QMediaFormat): void =
  fcQMediaRecorder_setMediaFormat(self.h, format.h)

proc encodingMode*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_encodingMode(self.h))

proc setEncodingMode*(self: gen_qmediarecorder_types.QMediaRecorder, encodingMode: cint): void =
  fcQMediaRecorder_setEncodingMode(self.h, cint(encodingMode))

proc quality*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_quality(self.h))

proc setQuality*(self: gen_qmediarecorder_types.QMediaRecorder, quality: cint): void =
  fcQMediaRecorder_setQuality(self.h, cint(quality))

proc videoResolution*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMediaRecorder_videoResolution(self.h))

proc setVideoResolution*(self: gen_qmediarecorder_types.QMediaRecorder, videoResolution: gen_qsize_types.QSize): void =
  fcQMediaRecorder_setVideoResolution(self.h, videoResolution.h)

proc setVideoResolution*(self: gen_qmediarecorder_types.QMediaRecorder, width: cint, height: cint): void =
  fcQMediaRecorder_setVideoResolution2(self.h, width, height)

proc videoFrameRate*(self: gen_qmediarecorder_types.QMediaRecorder, ): float64 =
  fcQMediaRecorder_videoFrameRate(self.h)

proc setVideoFrameRate*(self: gen_qmediarecorder_types.QMediaRecorder, frameRate: float64): void =
  fcQMediaRecorder_setVideoFrameRate(self.h, frameRate)

proc videoBitRate*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  fcQMediaRecorder_videoBitRate(self.h)

proc setVideoBitRate*(self: gen_qmediarecorder_types.QMediaRecorder, bitRate: cint): void =
  fcQMediaRecorder_setVideoBitRate(self.h, bitRate)

proc audioBitRate*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  fcQMediaRecorder_audioBitRate(self.h)

proc setAudioBitRate*(self: gen_qmediarecorder_types.QMediaRecorder, bitRate: cint): void =
  fcQMediaRecorder_setAudioBitRate(self.h, bitRate)

proc audioChannelCount*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  fcQMediaRecorder_audioChannelCount(self.h)

proc setAudioChannelCount*(self: gen_qmediarecorder_types.QMediaRecorder, channels: cint): void =
  fcQMediaRecorder_setAudioChannelCount(self.h, channels)

proc audioSampleRate*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  fcQMediaRecorder_audioSampleRate(self.h)

proc setAudioSampleRate*(self: gen_qmediarecorder_types.QMediaRecorder, sampleRate: cint): void =
  fcQMediaRecorder_setAudioSampleRate(self.h, sampleRate)

proc metaData*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediametadata_types.QMediaMetaData =
  gen_qmediametadata_types.QMediaMetaData(h: fcQMediaRecorder_metaData(self.h))

proc setMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQMediaRecorder_setMetaData(self.h, metaData.h)

proc addMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQMediaRecorder_addMetaData(self.h, metaData.h)

proc captureSession*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQMediaRecorder_captureSession(self.h))

proc record*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_record(self.h)

proc pause*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_pause(self.h)

proc stop*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_stop(self.h)

proc recorderStateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, state: cint): void =
  fcQMediaRecorder_recorderStateChanged(self.h, cint(state))

type QMediaRecorderrecorderStateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QMediaRecorder_recorderStateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderrecorderStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onrecorderStateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderrecorderStateChangedSlot) =
  var tmp = new QMediaRecorderrecorderStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_recorderStateChanged(self.h, cast[int](addr tmp[]))

proc durationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, duration: clonglong): void =
  fcQMediaRecorder_durationChanged(self.h, duration)

type QMediaRecorderdurationChangedSlot* = proc(duration: clonglong)
proc miqt_exec_callback_QMediaRecorder_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc ondurationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderdurationChangedSlot) =
  var tmp = new QMediaRecorderdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_durationChanged(self.h, cast[int](addr tmp[]))

proc actualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl_types.QUrl): void =
  fcQMediaRecorder_actualLocationChanged(self.h, location.h)

type QMediaRecorderactualLocationChangedSlot* = proc(location: gen_qurl_types.QUrl)
proc miqt_exec_callback_QMediaRecorder_actualLocationChanged(slot: int, location: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderactualLocationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: location)

  nimfunc[](slotval1)

proc onactualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderactualLocationChangedSlot) =
  var tmp = new QMediaRecorderactualLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_actualLocationChanged(self.h, cast[int](addr tmp[]))

proc encoderSettingsChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_encoderSettingsChanged(self.h)

type QMediaRecorderencoderSettingsChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_encoderSettingsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderencoderSettingsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onencoderSettingsChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderencoderSettingsChangedSlot) =
  var tmp = new QMediaRecorderencoderSettingsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_encoderSettingsChanged(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qmediarecorder_types.QMediaRecorder, error: cint, errorString: string): void =
  fcQMediaRecorder_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QMediaRecordererrorOccurredSlot* = proc(error: cint, errorString: string)
proc miqt_exec_callback_QMediaRecorder_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordererrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordererrorOccurredSlot) =
  var tmp = new QMediaRecordererrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_errorOccurred(self.h, cast[int](addr tmp[]))

proc errorChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_errorChanged(self.h)

type QMediaRecordererrorChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_errorChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordererrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onerrorChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordererrorChangedSlot) =
  var tmp = new QMediaRecordererrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_errorChanged(self.h, cast[int](addr tmp[]))

proc metaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_metaDataChanged(self.h)

type QMediaRecordermetaDataChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_metaDataChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordermetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmetaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaDataChangedSlot) =
  var tmp = new QMediaRecordermetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_metaDataChanged(self.h, cast[int](addr tmp[]))

proc mediaFormatChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_mediaFormatChanged(self.h)

type QMediaRecordermediaFormatChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_mediaFormatChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordermediaFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmediaFormatChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermediaFormatChangedSlot) =
  var tmp = new QMediaRecordermediaFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_mediaFormatChanged(self.h, cast[int](addr tmp[]))

proc encodingModeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_encodingModeChanged(self.h)

type QMediaRecorderencodingModeChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_encodingModeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderencodingModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onencodingModeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderencodingModeChangedSlot) =
  var tmp = new QMediaRecorderencodingModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_encodingModeChanged(self.h, cast[int](addr tmp[]))

proc qualityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_qualityChanged(self.h)

type QMediaRecorderqualityChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_qualityChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderqualityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onqualityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderqualityChangedSlot) =
  var tmp = new QMediaRecorderqualityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_qualityChanged(self.h, cast[int](addr tmp[]))

proc videoResolutionChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_videoResolutionChanged(self.h)

type QMediaRecordervideoResolutionChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_videoResolutionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordervideoResolutionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvideoResolutionChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervideoResolutionChangedSlot) =
  var tmp = new QMediaRecordervideoResolutionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_videoResolutionChanged(self.h, cast[int](addr tmp[]))

proc videoFrameRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_videoFrameRateChanged(self.h)

type QMediaRecordervideoFrameRateChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_videoFrameRateChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordervideoFrameRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvideoFrameRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervideoFrameRateChangedSlot) =
  var tmp = new QMediaRecordervideoFrameRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_videoFrameRateChanged(self.h, cast[int](addr tmp[]))

proc videoBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_videoBitRateChanged(self.h)

type QMediaRecordervideoBitRateChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_videoBitRateChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecordervideoBitRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvideoBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervideoBitRateChangedSlot) =
  var tmp = new QMediaRecordervideoBitRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_videoBitRateChanged(self.h, cast[int](addr tmp[]))

proc audioBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_audioBitRateChanged(self.h)

type QMediaRecorderaudioBitRateChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_audioBitRateChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderaudioBitRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioBitRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderaudioBitRateChangedSlot) =
  var tmp = new QMediaRecorderaudioBitRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_audioBitRateChanged(self.h, cast[int](addr tmp[]))

proc audioChannelCountChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_audioChannelCountChanged(self.h)

type QMediaRecorderaudioChannelCountChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_audioChannelCountChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderaudioChannelCountChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioChannelCountChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderaudioChannelCountChangedSlot) =
  var tmp = new QMediaRecorderaudioChannelCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_audioChannelCountChanged(self.h, cast[int](addr tmp[]))

proc audioSampleRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_audioSampleRateChanged(self.h)

type QMediaRecorderaudioSampleRateChangedSlot* = proc()
proc miqt_exec_callback_QMediaRecorder_audioSampleRateChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaRecorderaudioSampleRateChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioSampleRateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderaudioSampleRateChangedSlot) =
  var tmp = new QMediaRecorderaudioSampleRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_audioSampleRateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQMediaRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QMediaRecordermetaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMediaRecorder_virtualbase_metaObject(self.h))

type QMediaRecordermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metaObject(self: ptr cQMediaRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_metaObject ".} =
  var nimfunc = cast[ptr QMediaRecordermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaRecordermetacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =
  fQMediaRecorder_virtualbase_metacast(self.h, param1)

type QMediaRecordermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetacastProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metacast(self: ptr cQMediaRecorder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaRecorder_metacast ".} =
  var nimfunc = cast[ptr QMediaRecordermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaRecordermetacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fQMediaRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaRecordermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetacallProc) =
  # TODO check subclass
  var tmp = new QMediaRecordermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_metacall(self: ptr cQMediaRecorder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaRecorder_metacall ".} =
  var nimfunc = cast[ptr QMediaRecordermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaRecorderevent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaRecorder_virtualbase_event(self.h, event.h)

type QMediaRecordereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordereventProc) =
  # TODO check subclass
  var tmp = new QMediaRecordereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_event(self: ptr cQMediaRecorder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_event ".} =
  var nimfunc = cast[ptr QMediaRecordereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaRecordereventFilter*(self: gen_qmediarecorder_types.QMediaRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaRecordereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordereventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaRecordereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_eventFilter(self: ptr cQMediaRecorder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaRecorder_eventFilter ".} =
  var nimfunc = cast[ptr QMediaRecordereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaRecordertimerEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMediaRecorder_virtualbase_timerEvent(self.h, event.h)

type QMediaRecordertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordertimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaRecordertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_timerEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_timerEvent ".} =
  var nimfunc = cast[ptr QMediaRecordertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaRecorderchildEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QChildEvent): void =
  fQMediaRecorder_virtualbase_childEvent(self.h, event.h)

type QMediaRecorderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderchildEventProc) =
  # TODO check subclass
  var tmp = new QMediaRecorderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_childEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_childEvent ".} =
  var nimfunc = cast[ptr QMediaRecorderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaRecordercustomEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QEvent): void =
  fQMediaRecorder_virtualbase_customEvent(self.h, event.h)

type QMediaRecordercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordercustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaRecordercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_customEvent(self: ptr cQMediaRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_customEvent ".} =
  var nimfunc = cast[ptr QMediaRecordercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaRecorderconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaRecorder_virtualbase_connectNotify(self.h, signal.h)

type QMediaRecorderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaRecorderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_connectNotify(self: ptr cQMediaRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_connectNotify ".} =
  var nimfunc = cast[ptr QMediaRecorderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaRecorderdisconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaRecorder_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaRecorderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaRecorderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaRecorder_disconnectNotify(self: ptr cQMediaRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaRecorder_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaRecorderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediarecorder_types.QMediaRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_staticMetaObject())
proc delete*(self: gen_qmediarecorder_types.QMediaRecorder) =
  fcQMediaRecorder_delete(self.h)
