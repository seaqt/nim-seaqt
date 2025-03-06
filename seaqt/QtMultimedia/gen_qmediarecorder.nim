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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmediarecorder.cpp", cflags).}


type QMediaRecorderStateEnum* = distinct cint
template StoppedState*(_: type QMediaRecorderStateEnum): untyped = 0
template RecordingState*(_: type QMediaRecorderStateEnum): untyped = 1
template PausedState*(_: type QMediaRecorderStateEnum): untyped = 2


type QMediaRecorderStatusEnum* = distinct cint
template UnavailableStatus*(_: type QMediaRecorderStatusEnum): untyped = 0
template UnloadedStatus*(_: type QMediaRecorderStatusEnum): untyped = 1
template LoadingStatus*(_: type QMediaRecorderStatusEnum): untyped = 2
template LoadedStatus*(_: type QMediaRecorderStatusEnum): untyped = 3
template StartingStatus*(_: type QMediaRecorderStatusEnum): untyped = 4
template RecordingStatus*(_: type QMediaRecorderStatusEnum): untyped = 5
template PausedStatus*(_: type QMediaRecorderStatusEnum): untyped = 6
template FinalizingStatus*(_: type QMediaRecorderStatusEnum): untyped = 7


type QMediaRecorderErrorEnum* = distinct cint
template NoError*(_: type QMediaRecorderErrorEnum): untyped = 0
template ResourceError*(_: type QMediaRecorderErrorEnum): untyped = 1
template FormatError*(_: type QMediaRecorderErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QMediaRecorderErrorEnum): untyped = 3


import ./gen_qmediarecorder_types
export gen_qmediarecorder_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qmediaencodersettings_types,
  ./gen_qmediaobject_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qmediaencodersettings_types,
  gen_qmediaobject_types

type cQMediaRecorder*{.exportc: "QMediaRecorder", incompleteStruct.} = object

proc fcQMediaRecorder_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_metaObject".}
proc fcQMediaRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_metacast".}
proc fcQMediaRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_metacall".}
proc fcQMediaRecorder_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr".}
proc fcQMediaRecorder_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaRecorder_trUtf8".}
proc fcQMediaRecorder_mediaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_mediaObject".}
proc fcQMediaRecorder_isAvailable(self: pointer, ): bool {.importc: "QMediaRecorder_isAvailable".}
proc fcQMediaRecorder_availability(self: pointer, ): cint {.importc: "QMediaRecorder_availability".}
proc fcQMediaRecorder_outputLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_outputLocation".}
proc fcQMediaRecorder_setOutputLocation(self: pointer, location: pointer): bool {.importc: "QMediaRecorder_setOutputLocation".}
proc fcQMediaRecorder_actualLocation(self: pointer, ): pointer {.importc: "QMediaRecorder_actualLocation".}
proc fcQMediaRecorder_state(self: pointer, ): cint {.importc: "QMediaRecorder_state".}
proc fcQMediaRecorder_status(self: pointer, ): cint {.importc: "QMediaRecorder_status".}
proc fcQMediaRecorder_error(self: pointer, ): cint {.importc: "QMediaRecorder_error".}
proc fcQMediaRecorder_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaRecorder_errorString".}
proc fcQMediaRecorder_duration(self: pointer, ): clonglong {.importc: "QMediaRecorder_duration".}
proc fcQMediaRecorder_isMuted(self: pointer, ): bool {.importc: "QMediaRecorder_isMuted".}
proc fcQMediaRecorder_volume(self: pointer, ): float64 {.importc: "QMediaRecorder_volume".}
proc fcQMediaRecorder_supportedContainers(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedContainers".}
proc fcQMediaRecorder_containerDescription(self: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QMediaRecorder_containerDescription".}
proc fcQMediaRecorder_supportedAudioCodecs(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioCodecs".}
proc fcQMediaRecorder_audioCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QMediaRecorder_audioCodecDescription".}
proc fcQMediaRecorder_supportedAudioSampleRates(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioSampleRates".}
proc fcQMediaRecorder_supportedVideoCodecs(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedVideoCodecs".}
proc fcQMediaRecorder_videoCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QMediaRecorder_videoCodecDescription".}
proc fcQMediaRecorder_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedResolutions".}
proc fcQMediaRecorder_supportedFrameRates(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_supportedFrameRates".}
proc fcQMediaRecorder_audioSettings(self: pointer, ): pointer {.importc: "QMediaRecorder_audioSettings".}
proc fcQMediaRecorder_videoSettings(self: pointer, ): pointer {.importc: "QMediaRecorder_videoSettings".}
proc fcQMediaRecorder_containerFormat(self: pointer, ): struct_miqt_string {.importc: "QMediaRecorder_containerFormat".}
proc fcQMediaRecorder_setAudioSettings(self: pointer, audioSettings: pointer): void {.importc: "QMediaRecorder_setAudioSettings".}
proc fcQMediaRecorder_setVideoSettings(self: pointer, videoSettings: pointer): void {.importc: "QMediaRecorder_setVideoSettings".}
proc fcQMediaRecorder_setContainerFormat(self: pointer, container: struct_miqt_string): void {.importc: "QMediaRecorder_setContainerFormat".}
proc fcQMediaRecorder_setEncodingSettings(self: pointer, audioSettings: pointer): void {.importc: "QMediaRecorder_setEncodingSettings".}
proc fcQMediaRecorder_isMetaDataAvailable(self: pointer, ): bool {.importc: "QMediaRecorder_isMetaDataAvailable".}
proc fcQMediaRecorder_isMetaDataWritable(self: pointer, ): bool {.importc: "QMediaRecorder_isMetaDataWritable".}
proc fcQMediaRecorder_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMediaRecorder_metaData".}
proc fcQMediaRecorder_setMetaData(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMediaRecorder_setMetaData".}
proc fcQMediaRecorder_availableMetaData(self: pointer, ): struct_miqt_array {.importc: "QMediaRecorder_availableMetaData".}
proc fcQMediaRecorder_record(self: pointer, ): void {.importc: "QMediaRecorder_record".}
proc fcQMediaRecorder_pause(self: pointer, ): void {.importc: "QMediaRecorder_pause".}
proc fcQMediaRecorder_stop(self: pointer, ): void {.importc: "QMediaRecorder_stop".}
proc fcQMediaRecorder_setMuted(self: pointer, muted: bool): void {.importc: "QMediaRecorder_setMuted".}
proc fcQMediaRecorder_setVolume(self: pointer, volume: float64): void {.importc: "QMediaRecorder_setVolume".}
proc fcQMediaRecorder_stateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorder_stateChanged".}
proc fcQMediaRecorder_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_stateChanged".}
proc fcQMediaRecorder_statusChanged(self: pointer, status: cint): void {.importc: "QMediaRecorder_statusChanged".}
proc fcQMediaRecorder_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_statusChanged".}
proc fcQMediaRecorder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QMediaRecorder_durationChanged".}
proc fcQMediaRecorder_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_durationChanged".}
proc fcQMediaRecorder_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaRecorder_mutedChanged".}
proc fcQMediaRecorder_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_mutedChanged".}
proc fcQMediaRecorder_volumeChanged(self: pointer, volume: float64): void {.importc: "QMediaRecorder_volumeChanged".}
proc fcQMediaRecorder_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_volumeChanged".}
proc fcQMediaRecorder_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorder_actualLocationChanged".}
proc fcQMediaRecorder_connect_actualLocationChanged(self: pointer, slot: int, callback: proc (slot: int, location: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_actualLocationChanged".}
proc fcQMediaRecorder_errorWithError(self: pointer, error: cint): void {.importc: "QMediaRecorder_errorWithError".}
proc fcQMediaRecorder_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_errorWithError".}
proc fcQMediaRecorder_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaRecorder_metaDataAvailableChanged".}
proc fcQMediaRecorder_connect_metaDataAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_metaDataAvailableChanged".}
proc fcQMediaRecorder_metaDataWritableChanged(self: pointer, writable: bool): void {.importc: "QMediaRecorder_metaDataWritableChanged".}
proc fcQMediaRecorder_connect_metaDataWritableChanged(self: pointer, slot: int, callback: proc (slot: int, writable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_metaDataWritableChanged".}
proc fcQMediaRecorder_metaDataChanged(self: pointer, ): void {.importc: "QMediaRecorder_metaDataChanged".}
proc fcQMediaRecorder_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_metaDataChanged".}
proc fcQMediaRecorder_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMediaRecorder_metaDataChanged2".}
proc fcQMediaRecorder_connect_metaDataChanged2(self: pointer, slot: int, callback: proc (slot: int, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_metaDataChanged2".}
proc fcQMediaRecorder_availabilityChanged(self: pointer, available: bool): void {.importc: "QMediaRecorder_availabilityChanged".}
proc fcQMediaRecorder_connect_availabilityChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_availabilityChanged".}
proc fcQMediaRecorder_availabilityChangedWithAvailability(self: pointer, availability: cint): void {.importc: "QMediaRecorder_availabilityChangedWithAvailability".}
proc fcQMediaRecorder_connect_availabilityChangedWithAvailability(self: pointer, slot: int, callback: proc (slot: int, availability: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorder_connect_availabilityChangedWithAvailability".}
proc fcQMediaRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_tr2".}
proc fcQMediaRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_tr3".}
proc fcQMediaRecorder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorder_trUtf82".}
proc fcQMediaRecorder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorder_trUtf83".}
proc fcQMediaRecorder_supportedAudioSampleRates1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioSampleRates1".}
proc fcQMediaRecorder_supportedAudioSampleRates2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QMediaRecorder_supportedAudioSampleRates2".}
proc fcQMediaRecorder_supportedResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QMediaRecorder_supportedResolutions1".}
proc fcQMediaRecorder_supportedResolutions2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QMediaRecorder_supportedResolutions2".}
proc fcQMediaRecorder_supportedFrameRates1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QMediaRecorder_supportedFrameRates1".}
proc fcQMediaRecorder_supportedFrameRates2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QMediaRecorder_supportedFrameRates2".}
proc fcQMediaRecorder_setEncodingSettings2(self: pointer, audioSettings: pointer, videoSettings: pointer): void {.importc: "QMediaRecorder_setEncodingSettings2".}
proc fcQMediaRecorder_setEncodingSettings3(self: pointer, audioSettings: pointer, videoSettings: pointer, containerMimeType: struct_miqt_string): void {.importc: "QMediaRecorder_setEncodingSettings3".}
type cQMediaRecorderVTable = object
  destructor*: proc(vtbl: ptr cQMediaRecorderVTable, self: ptr cQMediaRecorder) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(vtbl, self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMediaRecorder_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_virtualbase_metaObject".}
proc fcQMediaRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorder_virtualbase_metacast".}
proc fcQMediaRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorder_virtualbase_metacall".}
proc fcQMediaRecorder_virtualbase_mediaObject(self: pointer, ): pointer {.importc: "QMediaRecorder_virtualbase_mediaObject".}
proc fcQMediaRecorder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QMediaRecorder_virtualbase_setMediaObject".}
proc fcQMediaRecorder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaRecorder_virtualbase_event".}
proc fcQMediaRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaRecorder_virtualbase_eventFilter".}
proc fcQMediaRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaRecorder_virtualbase_timerEvent".}
proc fcQMediaRecorder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaRecorder_virtualbase_childEvent".}
proc fcQMediaRecorder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaRecorder_virtualbase_customEvent".}
proc fcQMediaRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaRecorder_virtualbase_connectNotify".}
proc fcQMediaRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaRecorder_virtualbase_disconnectNotify".}
proc fcQMediaRecorder_protectedbase_sender(self: pointer, ): pointer {.importc: "QMediaRecorder_protectedbase_sender".}
proc fcQMediaRecorder_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMediaRecorder_protectedbase_senderSignalIndex".}
proc fcQMediaRecorder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaRecorder_protectedbase_receivers".}
proc fcQMediaRecorder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaRecorder_protectedbase_isSignalConnected".}
proc fcQMediaRecorder_new(vtbl: pointer, mediaObject: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new".}
proc fcQMediaRecorder_new2(vtbl: pointer, mediaObject: pointer, parent: pointer): ptr cQMediaRecorder {.importc: "QMediaRecorder_new2".}
proc fcQMediaRecorder_staticMetaObject(): pointer {.importc: "QMediaRecorder_staticMetaObject".}
proc fcQMediaRecorder_delete(self: pointer) {.importc: "QMediaRecorder_delete".}

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

proc trUtf8*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring): string =
  let v_ms = fcQMediaRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQMediaRecorder_mediaObject(self.h))

proc isAvailable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =
  fcQMediaRecorder_isAvailable(self.h)

proc availability*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_availability(self.h))

proc outputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorder_outputLocation(self.h))

proc setOutputLocation*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl_types.QUrl): bool =
  fcQMediaRecorder_setOutputLocation(self.h, location.h)

proc actualLocation*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorder_actualLocation(self.h))

proc state*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_state(self.h))

proc status*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_status(self.h))

proc error*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  cint(fcQMediaRecorder_error(self.h))

proc errorString*(self: gen_qmediarecorder_types.QMediaRecorder, ): string =
  let v_ms = fcQMediaRecorder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qmediarecorder_types.QMediaRecorder, ): clonglong =
  fcQMediaRecorder_duration(self.h)

proc isMuted*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =
  fcQMediaRecorder_isMuted(self.h)

proc volume*(self: gen_qmediarecorder_types.QMediaRecorder, ): float64 =
  fcQMediaRecorder_volume(self.h)

proc supportedContainers*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =
  var v_ma = fcQMediaRecorder_supportedContainers(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc containerDescription*(self: gen_qmediarecorder_types.QMediaRecorder, format: string): string =
  let v_ms = fcQMediaRecorder_containerDescription(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioCodecs*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =
  var v_ma = fcQMediaRecorder_supportedAudioCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc audioCodecDescription*(self: gen_qmediarecorder_types.QMediaRecorder, codecName: string): string =
  let v_ms = fcQMediaRecorder_audioCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioSampleRates*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[cint] =
  var v_ma = fcQMediaRecorder_supportedAudioSampleRates(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedVideoCodecs*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =
  var v_ma = fcQMediaRecorder_supportedVideoCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc videoCodecDescription*(self: gen_qmediarecorder_types.QMediaRecorder, codecName: string): string =
  let v_ms = fcQMediaRecorder_videoCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[gen_qsize_types.QSize] =
  var v_ma = fcQMediaRecorder_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc supportedFrameRates*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[float64] =
  var v_ma = fcQMediaRecorder_supportedFrameRates(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc audioSettings*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaencodersettings_types.QAudioEncoderSettings =
  gen_qmediaencodersettings_types.QAudioEncoderSettings(h: fcQMediaRecorder_audioSettings(self.h))

proc videoSettings*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaencodersettings_types.QVideoEncoderSettings =
  gen_qmediaencodersettings_types.QVideoEncoderSettings(h: fcQMediaRecorder_videoSettings(self.h))

proc containerFormat*(self: gen_qmediarecorder_types.QMediaRecorder, ): string =
  let v_ms = fcQMediaRecorder_containerFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAudioSettings*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings_types.QAudioEncoderSettings): void =
  fcQMediaRecorder_setAudioSettings(self.h, audioSettings.h)

proc setVideoSettings*(self: gen_qmediarecorder_types.QMediaRecorder, videoSettings: gen_qmediaencodersettings_types.QVideoEncoderSettings): void =
  fcQMediaRecorder_setVideoSettings(self.h, videoSettings.h)

proc setContainerFormat*(self: gen_qmediarecorder_types.QMediaRecorder, container: string): void =
  fcQMediaRecorder_setContainerFormat(self.h, struct_miqt_string(data: container, len: csize_t(len(container))))

proc setEncodingSettings*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings_types.QAudioEncoderSettings): void =
  fcQMediaRecorder_setEncodingSettings(self.h, audioSettings.h)

proc isMetaDataAvailable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =
  fcQMediaRecorder_isMetaDataAvailable(self.h)

proc isMetaDataWritable*(self: gen_qmediarecorder_types.QMediaRecorder, ): bool =
  fcQMediaRecorder_isMetaDataWritable(self.h)

proc metaData*(self: gen_qmediarecorder_types.QMediaRecorder, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaRecorder_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMediaRecorder_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc availableMetaData*(self: gen_qmediarecorder_types.QMediaRecorder, ): seq[string] =
  var v_ma = fcQMediaRecorder_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc record*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_record(self.h)

proc pause*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_pause(self.h)

proc stop*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_stop(self.h)

proc setMuted*(self: gen_qmediarecorder_types.QMediaRecorder, muted: bool): void =
  fcQMediaRecorder_setMuted(self.h, muted)

proc setVolume*(self: gen_qmediarecorder_types.QMediaRecorder, volume: float64): void =
  fcQMediaRecorder_setVolume(self.h, volume)

proc stateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, state: cint): void =
  fcQMediaRecorder_stateChanged(self.h, cint(state))

type QMediaRecorderstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQMediaRecorder_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderstateChangedSlot) =
  var tmp = new QMediaRecorderstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_stateChanged, miqt_exec_callback_cQMediaRecorder_stateChanged_release)

proc statusChanged*(self: gen_qmediarecorder_types.QMediaRecorder, status: cint): void =
  fcQMediaRecorder_statusChanged(self.h, cint(status))

type QMediaRecorderstatusChangedSlot* = proc(status: cint)
proc miqt_exec_callback_cQMediaRecorder_statusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderstatusChangedSlot) =
  var tmp = new QMediaRecorderstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_statusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_statusChanged, miqt_exec_callback_cQMediaRecorder_statusChanged_release)

proc durationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, duration: clonglong): void =
  fcQMediaRecorder_durationChanged(self.h, duration)

type QMediaRecorderdurationChangedSlot* = proc(duration: clonglong)
proc miqt_exec_callback_cQMediaRecorder_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderdurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderdurationChangedSlot) =
  var tmp = new QMediaRecorderdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_durationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_durationChanged, miqt_exec_callback_cQMediaRecorder_durationChanged_release)

proc mutedChanged*(self: gen_qmediarecorder_types.QMediaRecorder, muted: bool): void =
  fcQMediaRecorder_mutedChanged(self.h, muted)

type QMediaRecordermutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQMediaRecorder_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermutedChangedSlot) =
  var tmp = new QMediaRecordermutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_mutedChanged, miqt_exec_callback_cQMediaRecorder_mutedChanged_release)

proc volumeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, volume: float64): void =
  fcQMediaRecorder_volumeChanged(self.h, volume)

type QMediaRecordervolumeChangedSlot* = proc(volume: float64)
proc miqt_exec_callback_cQMediaRecorder_volumeChanged(slot: int, volume: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordervolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordervolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordervolumeChangedSlot) =
  var tmp = new QMediaRecordervolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_volumeChanged, miqt_exec_callback_cQMediaRecorder_volumeChanged_release)

proc actualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, location: gen_qurl_types.QUrl): void =
  fcQMediaRecorder_actualLocationChanged(self.h, location.h)

type QMediaRecorderactualLocationChangedSlot* = proc(location: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQMediaRecorder_actualLocationChanged(slot: int, location: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderactualLocationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: location)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_actualLocationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderactualLocationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactualLocationChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderactualLocationChangedSlot) =
  var tmp = new QMediaRecorderactualLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_actualLocationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_actualLocationChanged, miqt_exec_callback_cQMediaRecorder_actualLocationChanged_release)

proc error*(self: gen_qmediarecorder_types.QMediaRecorder, error: cint): void =
  fcQMediaRecorder_errorWithError(self.h, cint(error))

type QMediaRecordererrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_cQMediaRecorder_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordererrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordererrorWithErrorSlot) =
  var tmp = new QMediaRecordererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_errorWithError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_errorWithError, miqt_exec_callback_cQMediaRecorder_errorWithError_release)

proc metaDataAvailableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, available: bool): void =
  fcQMediaRecorder_metaDataAvailableChanged(self.h, available)

type QMediaRecordermetaDataAvailableChangedSlot* = proc(available: bool)
proc miqt_exec_callback_cQMediaRecorder_metaDataAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermetaDataAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_metaDataAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermetaDataAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataAvailableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaDataAvailableChangedSlot) =
  var tmp = new QMediaRecordermetaDataAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_metaDataAvailableChanged, miqt_exec_callback_cQMediaRecorder_metaDataAvailableChanged_release)

proc metaDataWritableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, writable: bool): void =
  fcQMediaRecorder_metaDataWritableChanged(self.h, writable)

type QMediaRecordermetaDataWritableChangedSlot* = proc(writable: bool)
proc miqt_exec_callback_cQMediaRecorder_metaDataWritableChanged(slot: int, writable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermetaDataWritableChangedSlot](cast[pointer](slot))
  let slotval1 = writable

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_metaDataWritableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermetaDataWritableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataWritableChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaDataWritableChangedSlot) =
  var tmp = new QMediaRecordermetaDataWritableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_metaDataWritableChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_metaDataWritableChanged, miqt_exec_callback_cQMediaRecorder_metaDataWritableChanged_release)

proc metaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, ): void =
  fcQMediaRecorder_metaDataChanged(self.h)

type QMediaRecordermetaDataChangedSlot* = proc()
proc miqt_exec_callback_cQMediaRecorder_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaRecorder_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaDataChangedSlot) =
  var tmp = new QMediaRecordermetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_metaDataChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_metaDataChanged, miqt_exec_callback_cQMediaRecorder_metaDataChanged_release)

proc metaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMediaRecorder_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QMediaRecordermetaDataChanged2Slot* = proc(key: string, value: gen_qvariant_types.QVariant)
proc miqt_exec_callback_cQMediaRecorder_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecordermetaDataChanged2Slot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQMediaRecorder_metaDataChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecordermetaDataChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecordermetaDataChanged2Slot) =
  var tmp = new QMediaRecordermetaDataChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_metaDataChanged2(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_metaDataChanged2, miqt_exec_callback_cQMediaRecorder_metaDataChanged2_release)

proc availabilityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, available: bool): void =
  fcQMediaRecorder_availabilityChanged(self.h, available)

type QMediaRecorderavailabilityChangedSlot* = proc(available: bool)
proc miqt_exec_callback_cQMediaRecorder_availabilityChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderavailabilityChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_availabilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderavailabilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailabilityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderavailabilityChangedSlot) =
  var tmp = new QMediaRecorderavailabilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_availabilityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_availabilityChanged, miqt_exec_callback_cQMediaRecorder_availabilityChanged_release)

proc availabilityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, availability: cint): void =
  fcQMediaRecorder_availabilityChangedWithAvailability(self.h, cint(availability))

type QMediaRecorderavailabilityChangedWithAvailabilitySlot* = proc(availability: cint)
proc miqt_exec_callback_cQMediaRecorder_availabilityChangedWithAvailability(slot: int, availability: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderavailabilityChangedWithAvailabilitySlot](cast[pointer](slot))
  let slotval1 = cint(availability)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorder_availabilityChangedWithAvailability_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderavailabilityChangedWithAvailabilitySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailabilityChanged*(self: gen_qmediarecorder_types.QMediaRecorder, slot: QMediaRecorderavailabilityChangedWithAvailabilitySlot) =
  var tmp = new QMediaRecorderavailabilityChangedWithAvailabilitySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorder_connect_availabilityChangedWithAvailability(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorder_availabilityChangedWithAvailability, miqt_exec_callback_cQMediaRecorder_availabilityChangedWithAvailability_release)

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

proc trUtf8*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQMediaRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediarecorder_types.QMediaRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioSampleRates*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings_types.QAudioEncoderSettings): seq[cint] =
  var v_ma = fcQMediaRecorder_supportedAudioSampleRates1(self.h, settings.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedAudioSampleRates*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings_types.QAudioEncoderSettings, continuous: ptr bool): seq[cint] =
  var v_ma = fcQMediaRecorder_supportedAudioSampleRates2(self.h, settings.h, continuous)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedResolutions*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings): seq[gen_qsize_types.QSize] =
  var v_ma = fcQMediaRecorder_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc supportedResolutions*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings, continuous: ptr bool): seq[gen_qsize_types.QSize] =
  var v_ma = fcQMediaRecorder_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc supportedFrameRates*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings): seq[float64] =
  var v_ma = fcQMediaRecorder_supportedFrameRates1(self.h, settings.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedFrameRates*(self: gen_qmediarecorder_types.QMediaRecorder, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings, continuous: ptr bool): seq[float64] =
  var v_ma = fcQMediaRecorder_supportedFrameRates2(self.h, settings.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setEncodingSettings*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings_types.QAudioEncoderSettings, videoSettings: gen_qmediaencodersettings_types.QVideoEncoderSettings): void =
  fcQMediaRecorder_setEncodingSettings2(self.h, audioSettings.h, videoSettings.h)

proc setEncodingSettings*(self: gen_qmediarecorder_types.QMediaRecorder, audioSettings: gen_qmediaencodersettings_types.QAudioEncoderSettings, videoSettings: gen_qmediaencodersettings_types.QVideoEncoderSettings, containerMimeType: string): void =
  fcQMediaRecorder_setEncodingSettings3(self.h, audioSettings.h, videoSettings.h, struct_miqt_string(data: containerMimeType, len: csize_t(len(containerMimeType))))

type QMediaRecordermetaObjectProc* = proc(self: QMediaRecorder): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaRecordermetacastProc* = proc(self: QMediaRecorder, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaRecordermetacallProc* = proc(self: QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMediaRecordermediaObjectProc* = proc(self: QMediaRecorder): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QMediaRecordersetMediaObjectProc* = proc(self: QMediaRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QMediaRecordereventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaRecordereventFilterProc* = proc(self: QMediaRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaRecordertimerEventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMediaRecorderchildEventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMediaRecordercustomEventProc* = proc(self: QMediaRecorder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMediaRecorderconnectNotifyProc* = proc(self: QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaRecorderdisconnectNotifyProc* = proc(self: QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaRecorderVTable* = object
  vtbl: cQMediaRecorderVTable
  metaObject*: QMediaRecordermetaObjectProc
  metacast*: QMediaRecordermetacastProc
  metacall*: QMediaRecordermetacallProc
  mediaObject*: QMediaRecordermediaObjectProc
  setMediaObject*: QMediaRecordersetMediaObjectProc
  event*: QMediaRecordereventProc
  eventFilter*: QMediaRecordereventFilterProc
  timerEvent*: QMediaRecordertimerEventProc
  childEvent*: QMediaRecorderchildEventProc
  customEvent*: QMediaRecordercustomEventProc
  connectNotify*: QMediaRecorderconnectNotifyProc
  disconnectNotify*: QMediaRecorderdisconnectNotifyProc
proc QMediaRecordermetaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMediaRecorder_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMediaRecordermetacast*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cstring): pointer =
  fcQMediaRecorder_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMediaRecorder_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaRecordermetacall*(self: gen_qmediarecorder_types.QMediaRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMediaRecorder_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaRecordermediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQMediaRecorder_virtualbase_mediaObject(self.h))

proc miqt_exec_callback_cQMediaRecorder_mediaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.h

proc QMediaRecordersetMediaObject*(self: gen_qmediarecorder_types.QMediaRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQMediaRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

proc miqt_exec_callback_cQMediaRecorder_setMediaObject(vtbl: pointer, self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QMediaRecorderevent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaRecorder_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQMediaRecorder_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaRecordereventFilter*(self: gen_qmediarecorder_types.QMediaRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQMediaRecorder_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaRecordertimerEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaRecorder_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaRecorder_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QMediaRecorderchildEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaRecorder_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaRecorder_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QMediaRecordercustomEvent*(self: gen_qmediarecorder_types.QMediaRecorder, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaRecorder_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaRecorder_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMediaRecorderconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaRecorder_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMediaRecorder_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMediaRecorderdisconnectNotify*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaRecorder_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMediaRecorder_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaRecorderVTable](vtbl)
  let self = QMediaRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qmediarecorder_types.QMediaRecorder, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaRecorder_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmediarecorder_types.QMediaRecorder, ): cint =
  fcQMediaRecorder_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediarecorder_types.QMediaRecorder, signal: cstring): cint =
  fcQMediaRecorder_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediarecorder_types.QMediaRecorder, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaRecorder_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediarecorder_types.QMediaRecorder,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    vtbl: ref QMediaRecorderVTable = nil): gen_qmediarecorder_types.QMediaRecorder =
  let vtbl = if vtbl == nil: new QMediaRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMediaRecorderVTable, _: ptr cQMediaRecorder) {.cdecl.} =
    let vtbl = cast[ref QMediaRecorderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMediaRecorder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMediaRecorder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMediaRecorder_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQMediaRecorder_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQMediaRecorder_setMediaObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMediaRecorder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMediaRecorder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMediaRecorder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMediaRecorder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMediaRecorder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMediaRecorder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMediaRecorder_disconnectNotify
  gen_qmediarecorder_types.QMediaRecorder(h: fcQMediaRecorder_new(addr(vtbl[]), mediaObject.h))

proc create*(T: type gen_qmediarecorder_types.QMediaRecorder,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    vtbl: ref QMediaRecorderVTable = nil): gen_qmediarecorder_types.QMediaRecorder =
  let vtbl = if vtbl == nil: new QMediaRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMediaRecorderVTable, _: ptr cQMediaRecorder) {.cdecl.} =
    let vtbl = cast[ref QMediaRecorderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMediaRecorder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMediaRecorder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMediaRecorder_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQMediaRecorder_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQMediaRecorder_setMediaObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMediaRecorder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMediaRecorder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMediaRecorder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMediaRecorder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMediaRecorder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMediaRecorder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMediaRecorder_disconnectNotify
  gen_qmediarecorder_types.QMediaRecorder(h: fcQMediaRecorder_new2(addr(vtbl[]), mediaObject.h, parent.h))

proc staticMetaObject*(_: type gen_qmediarecorder_types.QMediaRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorder_staticMetaObject())
proc delete*(self: gen_qmediarecorder_types.QMediaRecorder) =
  fcQMediaRecorder_delete(self.h)
