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


{.compile("gen_qmediacapturesession.cpp", QtMultimediaCFlags).}


import ./gen_qmediacapturesession_types
export gen_qmediacapturesession_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudioinput_types,
  ./gen_qaudiooutput_types,
  ./gen_qcamera_types,
  ./gen_qimagecapture_types,
  ./gen_qmediarecorder_types,
  ./gen_qvideosink_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudioinput_types,
  gen_qaudiooutput_types,
  gen_qcamera_types,
  gen_qimagecapture_types,
  gen_qmediarecorder_types,
  gen_qvideosink_types

type cQMediaCaptureSession*{.exportc: "QMediaCaptureSession", incompleteStruct.} = object

proc fcQMediaCaptureSession_metaObject(self: pointer): pointer {.importc: "QMediaCaptureSession_metaObject".}
proc fcQMediaCaptureSession_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaCaptureSession_metacast".}
proc fcQMediaCaptureSession_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaCaptureSession_metacall".}
proc fcQMediaCaptureSession_tr(s: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr".}
proc fcQMediaCaptureSession_audioInput(self: pointer): pointer {.importc: "QMediaCaptureSession_audioInput".}
proc fcQMediaCaptureSession_setAudioInput(self: pointer, input: pointer): void {.importc: "QMediaCaptureSession_setAudioInput".}
proc fcQMediaCaptureSession_camera(self: pointer): pointer {.importc: "QMediaCaptureSession_camera".}
proc fcQMediaCaptureSession_setCamera(self: pointer, camera: pointer): void {.importc: "QMediaCaptureSession_setCamera".}
proc fcQMediaCaptureSession_imageCapture(self: pointer): pointer {.importc: "QMediaCaptureSession_imageCapture".}
proc fcQMediaCaptureSession_setImageCapture(self: pointer, imageCapture: pointer): void {.importc: "QMediaCaptureSession_setImageCapture".}
proc fcQMediaCaptureSession_recorder(self: pointer): pointer {.importc: "QMediaCaptureSession_recorder".}
proc fcQMediaCaptureSession_setRecorder(self: pointer, recorder: pointer): void {.importc: "QMediaCaptureSession_setRecorder".}
proc fcQMediaCaptureSession_setVideoOutput(self: pointer, output: pointer): void {.importc: "QMediaCaptureSession_setVideoOutput".}
proc fcQMediaCaptureSession_videoOutput(self: pointer): pointer {.importc: "QMediaCaptureSession_videoOutput".}
proc fcQMediaCaptureSession_setVideoSink(self: pointer, sink: pointer): void {.importc: "QMediaCaptureSession_setVideoSink".}
proc fcQMediaCaptureSession_videoSink(self: pointer): pointer {.importc: "QMediaCaptureSession_videoSink".}
proc fcQMediaCaptureSession_setAudioOutput(self: pointer, output: pointer): void {.importc: "QMediaCaptureSession_setAudioOutput".}
proc fcQMediaCaptureSession_audioOutput(self: pointer): pointer {.importc: "QMediaCaptureSession_audioOutput".}
proc fcQMediaCaptureSession_audioInputChanged(self: pointer): void {.importc: "QMediaCaptureSession_audioInputChanged".}
proc fcQMediaCaptureSession_connect_audioInputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_audioInputChanged".}
proc fcQMediaCaptureSession_cameraChanged(self: pointer): void {.importc: "QMediaCaptureSession_cameraChanged".}
proc fcQMediaCaptureSession_connect_cameraChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_cameraChanged".}
proc fcQMediaCaptureSession_imageCaptureChanged(self: pointer): void {.importc: "QMediaCaptureSession_imageCaptureChanged".}
proc fcQMediaCaptureSession_connect_imageCaptureChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_imageCaptureChanged".}
proc fcQMediaCaptureSession_recorderChanged(self: pointer): void {.importc: "QMediaCaptureSession_recorderChanged".}
proc fcQMediaCaptureSession_connect_recorderChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_recorderChanged".}
proc fcQMediaCaptureSession_videoOutputChanged(self: pointer): void {.importc: "QMediaCaptureSession_videoOutputChanged".}
proc fcQMediaCaptureSession_connect_videoOutputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_videoOutputChanged".}
proc fcQMediaCaptureSession_audioOutputChanged(self: pointer): void {.importc: "QMediaCaptureSession_audioOutputChanged".}
proc fcQMediaCaptureSession_connect_audioOutputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_audioOutputChanged".}
proc fcQMediaCaptureSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr2".}
proc fcQMediaCaptureSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaCaptureSession_tr3".}
proc fcQMediaCaptureSession_vtbl(self: pointer): pointer {.importc: "QMediaCaptureSession_vtbl".}
proc fcQMediaCaptureSession_vdata(self: pointer): pointer {.importc: "QMediaCaptureSession_vdata".}

type cQMediaCaptureSessionVTable {.pure.} = object
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
proc fcQMediaCaptureSession_virtualbase_metaObject(self: pointer): pointer {.importc: "QMediaCaptureSession_virtualbase_metaObject".}
proc fcQMediaCaptureSession_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaCaptureSession_virtualbase_metacast".}
proc fcQMediaCaptureSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaCaptureSession_virtualbase_metacall".}
proc fcQMediaCaptureSession_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaCaptureSession_virtualbase_event".}
proc fcQMediaCaptureSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaCaptureSession_virtualbase_eventFilter".}
proc fcQMediaCaptureSession_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaCaptureSession_virtualbase_timerEvent".}
proc fcQMediaCaptureSession_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaCaptureSession_virtualbase_childEvent".}
proc fcQMediaCaptureSession_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaCaptureSession_virtualbase_customEvent".}
proc fcQMediaCaptureSession_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaCaptureSession_virtualbase_connectNotify".}
proc fcQMediaCaptureSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaCaptureSession_virtualbase_disconnectNotify".}
proc fcQMediaCaptureSession_protectedbase_sender(self: pointer): pointer {.importc: "QMediaCaptureSession_protectedbase_sender".}
proc fcQMediaCaptureSession_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaCaptureSession_protectedbase_senderSignalIndex".}
proc fcQMediaCaptureSession_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaCaptureSession_protectedbase_receivers".}
proc fcQMediaCaptureSession_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaCaptureSession_protectedbase_isSignalConnected".}
proc fcQMediaCaptureSession_new(vtbl, vdata: pointer): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new".}
proc fcQMediaCaptureSession_new2(vtbl, vdata: pointer, parent: pointer): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new2".}
proc fcQMediaCaptureSession_staticMetaObject(): pointer {.importc: "QMediaCaptureSession_staticMetaObject".}

proc metaObject*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cstring): pointer =
  fcQMediaCaptureSession_metacast(self.h, param1)

proc metacall*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaCaptureSession_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediacapturesession_types.QMediaCaptureSession, s: cstring): string =
  let v_ms = fcQMediaCaptureSession_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qaudioinput_types.QAudioInput =
  gen_qaudioinput_types.QAudioInput(h: fcQMediaCaptureSession_audioInput(self.h), owned: false)

proc setAudioInput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, input: gen_qaudioinput_types.QAudioInput): void =
  fcQMediaCaptureSession_setAudioInput(self.h, input.h)

proc camera*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera(h: fcQMediaCaptureSession_camera(self.h), owned: false)

proc setCamera*(self: gen_qmediacapturesession_types.QMediaCaptureSession, camera: gen_qcamera_types.QCamera): void =
  fcQMediaCaptureSession_setCamera(self.h, camera.h)

proc imageCapture*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qimagecapture_types.QImageCapture =
  gen_qimagecapture_types.QImageCapture(h: fcQMediaCaptureSession_imageCapture(self.h), owned: false)

proc setImageCapture*(self: gen_qmediacapturesession_types.QMediaCaptureSession, imageCapture: gen_qimagecapture_types.QImageCapture): void =
  fcQMediaCaptureSession_setImageCapture(self.h, imageCapture.h)

proc recorder*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qmediarecorder_types.QMediaRecorder =
  gen_qmediarecorder_types.QMediaRecorder(h: fcQMediaCaptureSession_recorder(self.h), owned: false)

proc setRecorder*(self: gen_qmediacapturesession_types.QMediaCaptureSession, recorder: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaCaptureSession_setRecorder(self.h, recorder.h)

proc setVideoOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, output: gen_qobject_types.QObject): void =
  fcQMediaCaptureSession_setVideoOutput(self.h, output.h)

proc videoOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaCaptureSession_videoOutput(self.h), owned: false)

proc setVideoSink*(self: gen_qmediacapturesession_types.QMediaCaptureSession, sink: gen_qvideosink_types.QVideoSink): void =
  fcQMediaCaptureSession_setVideoSink(self.h, sink.h)

proc videoSink*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink(h: fcQMediaCaptureSession_videoSink(self.h), owned: false)

proc setAudioOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, output: gen_qaudiooutput_types.QAudioOutput): void =
  fcQMediaCaptureSession_setAudioOutput(self.h, output.h)

proc audioOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput(h: fcQMediaCaptureSession_audioOutput(self.h), owned: false)

proc audioInputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession): void =
  fcQMediaCaptureSession_audioInputChanged(self.h)

type QMediaCaptureSessionaudioInputChangedSlot* = proc()
proc fcQMediaCaptureSession_slot_callback_audioInputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionaudioInputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaCaptureSession_slot_callback_audioInputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionaudioInputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAudioInputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionaudioInputChangedSlot) =
  var tmp = new QMediaCaptureSessionaudioInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_audioInputChanged(self.h, cast[int](addr tmp[]), fcQMediaCaptureSession_slot_callback_audioInputChanged, fcQMediaCaptureSession_slot_callback_audioInputChanged_release)

proc cameraChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession): void =
  fcQMediaCaptureSession_cameraChanged(self.h)

type QMediaCaptureSessioncameraChangedSlot* = proc()
proc fcQMediaCaptureSession_slot_callback_cameraChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessioncameraChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaCaptureSession_slot_callback_cameraChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessioncameraChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCameraChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessioncameraChangedSlot) =
  var tmp = new QMediaCaptureSessioncameraChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_cameraChanged(self.h, cast[int](addr tmp[]), fcQMediaCaptureSession_slot_callback_cameraChanged, fcQMediaCaptureSession_slot_callback_cameraChanged_release)

proc imageCaptureChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession): void =
  fcQMediaCaptureSession_imageCaptureChanged(self.h)

type QMediaCaptureSessionimageCaptureChangedSlot* = proc()
proc fcQMediaCaptureSession_slot_callback_imageCaptureChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionimageCaptureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaCaptureSession_slot_callback_imageCaptureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionimageCaptureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageCaptureChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionimageCaptureChangedSlot) =
  var tmp = new QMediaCaptureSessionimageCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_imageCaptureChanged(self.h, cast[int](addr tmp[]), fcQMediaCaptureSession_slot_callback_imageCaptureChanged, fcQMediaCaptureSession_slot_callback_imageCaptureChanged_release)

proc recorderChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession): void =
  fcQMediaCaptureSession_recorderChanged(self.h)

type QMediaCaptureSessionrecorderChangedSlot* = proc()
proc fcQMediaCaptureSession_slot_callback_recorderChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionrecorderChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaCaptureSession_slot_callback_recorderChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionrecorderChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRecorderChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionrecorderChangedSlot) =
  var tmp = new QMediaCaptureSessionrecorderChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_recorderChanged(self.h, cast[int](addr tmp[]), fcQMediaCaptureSession_slot_callback_recorderChanged, fcQMediaCaptureSession_slot_callback_recorderChanged_release)

proc videoOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession): void =
  fcQMediaCaptureSession_videoOutputChanged(self.h)

type QMediaCaptureSessionvideoOutputChangedSlot* = proc()
proc fcQMediaCaptureSession_slot_callback_videoOutputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionvideoOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaCaptureSession_slot_callback_videoOutputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionvideoOutputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVideoOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionvideoOutputChangedSlot) =
  var tmp = new QMediaCaptureSessionvideoOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_videoOutputChanged(self.h, cast[int](addr tmp[]), fcQMediaCaptureSession_slot_callback_videoOutputChanged, fcQMediaCaptureSession_slot_callback_videoOutputChanged_release)

proc audioOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession): void =
  fcQMediaCaptureSession_audioOutputChanged(self.h)

type QMediaCaptureSessionaudioOutputChangedSlot* = proc()
proc fcQMediaCaptureSession_slot_callback_audioOutputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionaudioOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaCaptureSession_slot_callback_audioOutputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionaudioOutputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAudioOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionaudioOutputChangedSlot) =
  var tmp = new QMediaCaptureSessionaudioOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_audioOutputChanged(self.h, cast[int](addr tmp[]), fcQMediaCaptureSession_slot_callback_audioOutputChanged, fcQMediaCaptureSession_slot_callback_audioOutputChanged_release)

proc tr*(_: type gen_qmediacapturesession_types.QMediaCaptureSession, s: cstring, c: cstring): string =
  let v_ms = fcQMediaCaptureSession_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacapturesession_types.QMediaCaptureSession, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaCaptureSession_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QMediaCaptureSessionmetaObjectProc* = proc(self: QMediaCaptureSession): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaCaptureSessionmetacastProc* = proc(self: QMediaCaptureSession, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaCaptureSessionmetacallProc* = proc(self: QMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMediaCaptureSessioneventProc* = proc(self: QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaCaptureSessioneventFilterProc* = proc(self: QMediaCaptureSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaCaptureSessiontimerEventProc* = proc(self: QMediaCaptureSession, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMediaCaptureSessionchildEventProc* = proc(self: QMediaCaptureSession, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMediaCaptureSessioncustomEventProc* = proc(self: QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMediaCaptureSessionconnectNotifyProc* = proc(self: QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaCaptureSessiondisconnectNotifyProc* = proc(self: QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QMediaCaptureSessionVTable* {.inheritable, pure.} = object
  vtbl: cQMediaCaptureSessionVTable
  metaObject*: QMediaCaptureSessionmetaObjectProc
  metacast*: QMediaCaptureSessionmetacastProc
  metacall*: QMediaCaptureSessionmetacallProc
  event*: QMediaCaptureSessioneventProc
  eventFilter*: QMediaCaptureSessioneventFilterProc
  timerEvent*: QMediaCaptureSessiontimerEventProc
  childEvent*: QMediaCaptureSessionchildEventProc
  customEvent*: QMediaCaptureSessioncustomEventProc
  connectNotify*: QMediaCaptureSessionconnectNotifyProc
  disconnectNotify*: QMediaCaptureSessiondisconnectNotifyProc

proc QMediaCaptureSessionmetaObject*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_virtualbase_metaObject(self.h), owned: false)

proc QMediaCaptureSessionmetacast*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cstring): pointer =
  fcQMediaCaptureSession_virtualbase_metacast(self.h, param1)

proc QMediaCaptureSessionmetacall*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaCaptureSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QMediaCaptureSessionevent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaCaptureSession_virtualbase_event(self.h, event.h)

proc QMediaCaptureSessioneventFilter*(self: gen_qmediacapturesession_types.QMediaCaptureSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaCaptureSession_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QMediaCaptureSessiontimerEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaCaptureSession_virtualbase_timerEvent(self.h, event.h)

proc QMediaCaptureSessionchildEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaCaptureSession_virtualbase_childEvent(self.h, event.h)

proc QMediaCaptureSessioncustomEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaCaptureSession_virtualbase_customEvent(self.h, event.h)

proc QMediaCaptureSessionconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaCaptureSession_virtualbase_connectNotify(self.h, signal.h)

proc QMediaCaptureSessiondisconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaCaptureSession_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQMediaCaptureSession_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMediaCaptureSession_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQMediaCaptureSession_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMediaCaptureSession_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQMediaCaptureSession_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQMediaCaptureSession_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQMediaCaptureSession_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQMediaCaptureSession_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQMediaCaptureSession_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQMediaCaptureSession_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMediaCaptureSession* {.inheritable.} = ref object of QMediaCaptureSession
  vtbl*: cQMediaCaptureSessionVTable

method metaObject*(self: VirtualQMediaCaptureSession): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMediaCaptureSessionmetaObject(self[])
method metacast*(self: VirtualQMediaCaptureSession, param1: cstring): pointer {.base.} =
  QMediaCaptureSessionmetacast(self[], param1)
method metacall*(self: VirtualQMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMediaCaptureSessionmetacall(self[], param1, param2, param3)
method event*(self: VirtualQMediaCaptureSession, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaCaptureSessionevent(self[], event)
method eventFilter*(self: VirtualQMediaCaptureSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaCaptureSessioneventFilter(self[], watched, event)
method timerEvent*(self: VirtualQMediaCaptureSession, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMediaCaptureSessiontimerEvent(self[], event)
method childEvent*(self: VirtualQMediaCaptureSession, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMediaCaptureSessionchildEvent(self[], event)
method customEvent*(self: VirtualQMediaCaptureSession, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMediaCaptureSessioncustomEvent(self[], event)
method connectNotify*(self: VirtualQMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaCaptureSessionconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaCaptureSessiondisconnectNotify(self[], signal)

proc fcQMediaCaptureSession_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMediaCaptureSession_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQMediaCaptureSession_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMediaCaptureSession_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQMediaCaptureSession_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQMediaCaptureSession_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQMediaCaptureSession_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQMediaCaptureSession_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQMediaCaptureSession_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQMediaCaptureSession_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaCaptureSession](fcQMediaCaptureSession_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaCaptureSession_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediacapturesession_types.QMediaCaptureSession): cint =
  fcQMediaCaptureSession_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: cstring): cint =
  fcQMediaCaptureSession_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaCaptureSession_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession,
    vtbl: ref QMediaCaptureSessionVTable = nil): gen_qmediacapturesession_types.QMediaCaptureSession =
  let vtbl = if vtbl == nil: new QMediaCaptureSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMediaCaptureSession_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMediaCaptureSession_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMediaCaptureSession_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMediaCaptureSession_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMediaCaptureSession_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMediaCaptureSession_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMediaCaptureSession_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMediaCaptureSession_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMediaCaptureSession_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMediaCaptureSession_vtable_callback_disconnectNotify
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQMediaCaptureSession_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaCaptureSessionVTable = nil): gen_qmediacapturesession_types.QMediaCaptureSession =
  let vtbl = if vtbl == nil: new QMediaCaptureSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaCaptureSessionVTable](fcQMediaCaptureSession_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMediaCaptureSession_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMediaCaptureSession_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMediaCaptureSession_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMediaCaptureSession_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMediaCaptureSession_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMediaCaptureSession_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMediaCaptureSession_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMediaCaptureSession_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMediaCaptureSession_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMediaCaptureSession_vtable_callback_disconnectNotify
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQMediaCaptureSession_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQMediaCaptureSession_mvtbl = cQMediaCaptureSessionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMediaCaptureSession()[])](self.fcQMediaCaptureSession_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQMediaCaptureSession_method_callback_metaObject,
  metacast: fcQMediaCaptureSession_method_callback_metacast,
  metacall: fcQMediaCaptureSession_method_callback_metacall,
  event: fcQMediaCaptureSession_method_callback_event,
  eventFilter: fcQMediaCaptureSession_method_callback_eventFilter,
  timerEvent: fcQMediaCaptureSession_method_callback_timerEvent,
  childEvent: fcQMediaCaptureSession_method_callback_childEvent,
  customEvent: fcQMediaCaptureSession_method_callback_customEvent,
  connectNotify: fcQMediaCaptureSession_method_callback_connectNotify,
  disconnectNotify: fcQMediaCaptureSession_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession,
    inst: VirtualQMediaCaptureSession) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaCaptureSession_new(addr(cQMediaCaptureSession_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMediaCaptureSession) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaCaptureSession_new2(addr(cQMediaCaptureSession_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_staticMetaObject())
