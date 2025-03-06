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
{.compile("gen_qmediacapturesession.cpp", cflags).}


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

proc fcQMediaCaptureSession_metaObject(self: pointer, ): pointer {.importc: "QMediaCaptureSession_metaObject".}
proc fcQMediaCaptureSession_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaCaptureSession_metacast".}
proc fcQMediaCaptureSession_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaCaptureSession_metacall".}
proc fcQMediaCaptureSession_tr(s: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr".}
proc fcQMediaCaptureSession_audioInput(self: pointer, ): pointer {.importc: "QMediaCaptureSession_audioInput".}
proc fcQMediaCaptureSession_setAudioInput(self: pointer, input: pointer): void {.importc: "QMediaCaptureSession_setAudioInput".}
proc fcQMediaCaptureSession_camera(self: pointer, ): pointer {.importc: "QMediaCaptureSession_camera".}
proc fcQMediaCaptureSession_setCamera(self: pointer, camera: pointer): void {.importc: "QMediaCaptureSession_setCamera".}
proc fcQMediaCaptureSession_imageCapture(self: pointer, ): pointer {.importc: "QMediaCaptureSession_imageCapture".}
proc fcQMediaCaptureSession_setImageCapture(self: pointer, imageCapture: pointer): void {.importc: "QMediaCaptureSession_setImageCapture".}
proc fcQMediaCaptureSession_recorder(self: pointer, ): pointer {.importc: "QMediaCaptureSession_recorder".}
proc fcQMediaCaptureSession_setRecorder(self: pointer, recorder: pointer): void {.importc: "QMediaCaptureSession_setRecorder".}
proc fcQMediaCaptureSession_setVideoOutput(self: pointer, output: pointer): void {.importc: "QMediaCaptureSession_setVideoOutput".}
proc fcQMediaCaptureSession_videoOutput(self: pointer, ): pointer {.importc: "QMediaCaptureSession_videoOutput".}
proc fcQMediaCaptureSession_setVideoSink(self: pointer, sink: pointer): void {.importc: "QMediaCaptureSession_setVideoSink".}
proc fcQMediaCaptureSession_videoSink(self: pointer, ): pointer {.importc: "QMediaCaptureSession_videoSink".}
proc fcQMediaCaptureSession_setAudioOutput(self: pointer, output: pointer): void {.importc: "QMediaCaptureSession_setAudioOutput".}
proc fcQMediaCaptureSession_audioOutput(self: pointer, ): pointer {.importc: "QMediaCaptureSession_audioOutput".}
proc fcQMediaCaptureSession_audioInputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_audioInputChanged".}
proc fcQMediaCaptureSession_connect_audioInputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_audioInputChanged".}
proc fcQMediaCaptureSession_cameraChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_cameraChanged".}
proc fcQMediaCaptureSession_connect_cameraChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_cameraChanged".}
proc fcQMediaCaptureSession_imageCaptureChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_imageCaptureChanged".}
proc fcQMediaCaptureSession_connect_imageCaptureChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_imageCaptureChanged".}
proc fcQMediaCaptureSession_recorderChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_recorderChanged".}
proc fcQMediaCaptureSession_connect_recorderChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_recorderChanged".}
proc fcQMediaCaptureSession_videoOutputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_videoOutputChanged".}
proc fcQMediaCaptureSession_connect_videoOutputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_videoOutputChanged".}
proc fcQMediaCaptureSession_audioOutputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_audioOutputChanged".}
proc fcQMediaCaptureSession_connect_audioOutputChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaCaptureSession_connect_audioOutputChanged".}
proc fcQMediaCaptureSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr2".}
proc fcQMediaCaptureSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaCaptureSession_tr3".}
type cQMediaCaptureSessionVTable = object
  destructor*: proc(vtbl: ptr cQMediaCaptureSessionVTable, self: ptr cQMediaCaptureSession) {.cdecl, raises:[], gcsafe.}
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
proc fcQMediaCaptureSession_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMediaCaptureSession_virtualbase_metaObject".}
proc fcQMediaCaptureSession_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaCaptureSession_virtualbase_metacast".}
proc fcQMediaCaptureSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaCaptureSession_virtualbase_metacall".}
proc fcQMediaCaptureSession_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaCaptureSession_virtualbase_event".}
proc fcQMediaCaptureSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaCaptureSession_virtualbase_eventFilter".}
proc fcQMediaCaptureSession_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaCaptureSession_virtualbase_timerEvent".}
proc fcQMediaCaptureSession_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaCaptureSession_virtualbase_childEvent".}
proc fcQMediaCaptureSession_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaCaptureSession_virtualbase_customEvent".}
proc fcQMediaCaptureSession_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaCaptureSession_virtualbase_connectNotify".}
proc fcQMediaCaptureSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaCaptureSession_virtualbase_disconnectNotify".}
proc fcQMediaCaptureSession_protectedbase_sender(self: pointer, ): pointer {.importc: "QMediaCaptureSession_protectedbase_sender".}
proc fcQMediaCaptureSession_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMediaCaptureSession_protectedbase_senderSignalIndex".}
proc fcQMediaCaptureSession_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaCaptureSession_protectedbase_receivers".}
proc fcQMediaCaptureSession_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaCaptureSession_protectedbase_isSignalConnected".}
proc fcQMediaCaptureSession_new(vtbl: pointer, ): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new".}
proc fcQMediaCaptureSession_new2(vtbl: pointer, parent: pointer): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new2".}
proc fcQMediaCaptureSession_staticMetaObject(): pointer {.importc: "QMediaCaptureSession_staticMetaObject".}
proc fcQMediaCaptureSession_delete(self: pointer) {.importc: "QMediaCaptureSession_delete".}

proc metaObject*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_metaObject(self.h))

proc metacast*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cstring): pointer =
  fcQMediaCaptureSession_metacast(self.h, param1)

proc metacall*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaCaptureSession_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediacapturesession_types.QMediaCaptureSession, s: cstring): string =
  let v_ms = fcQMediaCaptureSession_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qaudioinput_types.QAudioInput =
  gen_qaudioinput_types.QAudioInput(h: fcQMediaCaptureSession_audioInput(self.h))

proc setAudioInput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, input: gen_qaudioinput_types.QAudioInput): void =
  fcQMediaCaptureSession_setAudioInput(self.h, input.h)

proc camera*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera(h: fcQMediaCaptureSession_camera(self.h))

proc setCamera*(self: gen_qmediacapturesession_types.QMediaCaptureSession, camera: gen_qcamera_types.QCamera): void =
  fcQMediaCaptureSession_setCamera(self.h, camera.h)

proc imageCapture*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qimagecapture_types.QImageCapture =
  gen_qimagecapture_types.QImageCapture(h: fcQMediaCaptureSession_imageCapture(self.h))

proc setImageCapture*(self: gen_qmediacapturesession_types.QMediaCaptureSession, imageCapture: gen_qimagecapture_types.QImageCapture): void =
  fcQMediaCaptureSession_setImageCapture(self.h, imageCapture.h)

proc recorder*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qmediarecorder_types.QMediaRecorder =
  gen_qmediarecorder_types.QMediaRecorder(h: fcQMediaCaptureSession_recorder(self.h))

proc setRecorder*(self: gen_qmediacapturesession_types.QMediaCaptureSession, recorder: gen_qmediarecorder_types.QMediaRecorder): void =
  fcQMediaCaptureSession_setRecorder(self.h, recorder.h)

proc setVideoOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, output: gen_qobject_types.QObject): void =
  fcQMediaCaptureSession_setVideoOutput(self.h, output.h)

proc videoOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaCaptureSession_videoOutput(self.h))

proc setVideoSink*(self: gen_qmediacapturesession_types.QMediaCaptureSession, sink: gen_qvideosink_types.QVideoSink): void =
  fcQMediaCaptureSession_setVideoSink(self.h, sink.h)

proc videoSink*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qvideosink_types.QVideoSink =
  gen_qvideosink_types.QVideoSink(h: fcQMediaCaptureSession_videoSink(self.h))

proc setAudioOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, output: gen_qaudiooutput_types.QAudioOutput): void =
  fcQMediaCaptureSession_setAudioOutput(self.h, output.h)

proc audioOutput*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput(h: fcQMediaCaptureSession_audioOutput(self.h))

proc audioInputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_audioInputChanged(self.h)

type QMediaCaptureSessionaudioInputChangedSlot* = proc()
proc miqt_exec_callback_cQMediaCaptureSession_audioInputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionaudioInputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaCaptureSession_audioInputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionaudioInputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioInputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionaudioInputChangedSlot) =
  var tmp = new QMediaCaptureSessionaudioInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_audioInputChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaCaptureSession_audioInputChanged, miqt_exec_callback_cQMediaCaptureSession_audioInputChanged_release)

proc cameraChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_cameraChanged(self.h)

type QMediaCaptureSessioncameraChangedSlot* = proc()
proc miqt_exec_callback_cQMediaCaptureSession_cameraChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessioncameraChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaCaptureSession_cameraChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessioncameraChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncameraChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessioncameraChangedSlot) =
  var tmp = new QMediaCaptureSessioncameraChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_cameraChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaCaptureSession_cameraChanged, miqt_exec_callback_cQMediaCaptureSession_cameraChanged_release)

proc imageCaptureChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_imageCaptureChanged(self.h)

type QMediaCaptureSessionimageCaptureChangedSlot* = proc()
proc miqt_exec_callback_cQMediaCaptureSession_imageCaptureChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionimageCaptureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaCaptureSession_imageCaptureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionimageCaptureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onimageCaptureChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionimageCaptureChangedSlot) =
  var tmp = new QMediaCaptureSessionimageCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_imageCaptureChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaCaptureSession_imageCaptureChanged, miqt_exec_callback_cQMediaCaptureSession_imageCaptureChanged_release)

proc recorderChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_recorderChanged(self.h)

type QMediaCaptureSessionrecorderChangedSlot* = proc()
proc miqt_exec_callback_cQMediaCaptureSession_recorderChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionrecorderChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaCaptureSession_recorderChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionrecorderChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecorderChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionrecorderChangedSlot) =
  var tmp = new QMediaCaptureSessionrecorderChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_recorderChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaCaptureSession_recorderChanged, miqt_exec_callback_cQMediaCaptureSession_recorderChanged_release)

proc videoOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_videoOutputChanged(self.h)

type QMediaCaptureSessionvideoOutputChangedSlot* = proc()
proc miqt_exec_callback_cQMediaCaptureSession_videoOutputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionvideoOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaCaptureSession_videoOutputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionvideoOutputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionvideoOutputChangedSlot) =
  var tmp = new QMediaCaptureSessionvideoOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_videoOutputChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaCaptureSession_videoOutputChanged, miqt_exec_callback_cQMediaCaptureSession_videoOutputChanged_release)

proc audioOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_audioOutputChanged(self.h)

type QMediaCaptureSessionaudioOutputChangedSlot* = proc()
proc miqt_exec_callback_cQMediaCaptureSession_audioOutputChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaCaptureSessionaudioOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaCaptureSession_audioOutputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaCaptureSessionaudioOutputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionaudioOutputChangedSlot) =
  var tmp = new QMediaCaptureSessionaudioOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_audioOutputChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaCaptureSession_audioOutputChanged, miqt_exec_callback_cQMediaCaptureSession_audioOutputChanged_release)

proc tr*(_: type gen_qmediacapturesession_types.QMediaCaptureSession, s: cstring, c: cstring): string =
  let v_ms = fcQMediaCaptureSession_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacapturesession_types.QMediaCaptureSession, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaCaptureSession_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QMediaCaptureSessionVTable* = object
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
proc QMediaCaptureSessionmetaObject*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMediaCaptureSession_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMediaCaptureSessionmetacast*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cstring): pointer =
  fcQMediaCaptureSession_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMediaCaptureSession_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaCaptureSessionmetacall*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaCaptureSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMediaCaptureSession_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaCaptureSessionevent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaCaptureSession_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQMediaCaptureSession_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaCaptureSessioneventFilter*(self: gen_qmediacapturesession_types.QMediaCaptureSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaCaptureSession_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQMediaCaptureSession_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaCaptureSessiontimerEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaCaptureSession_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaCaptureSession_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QMediaCaptureSessionchildEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaCaptureSession_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaCaptureSession_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QMediaCaptureSessioncustomEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaCaptureSession_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaCaptureSession_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMediaCaptureSessionconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaCaptureSession_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMediaCaptureSession_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMediaCaptureSessiondisconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaCaptureSession_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMediaCaptureSession_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaCaptureSessionVTable](vtbl)
  let self = QMediaCaptureSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaCaptureSession_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): cint =
  fcQMediaCaptureSession_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: cstring): cint =
  fcQMediaCaptureSession_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaCaptureSession_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession,
    vtbl: ref QMediaCaptureSessionVTable = nil): gen_qmediacapturesession_types.QMediaCaptureSession =
  let vtbl = if vtbl == nil: new QMediaCaptureSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMediaCaptureSessionVTable, _: ptr cQMediaCaptureSession) {.cdecl.} =
    let vtbl = cast[ref QMediaCaptureSessionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMediaCaptureSession_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMediaCaptureSession_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMediaCaptureSession_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMediaCaptureSession_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMediaCaptureSession_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMediaCaptureSession_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMediaCaptureSession_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMediaCaptureSession_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMediaCaptureSession_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMediaCaptureSession_disconnectNotify
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQMediaCaptureSession_new(addr(vtbl[]), ))

proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaCaptureSessionVTable = nil): gen_qmediacapturesession_types.QMediaCaptureSession =
  let vtbl = if vtbl == nil: new QMediaCaptureSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMediaCaptureSessionVTable, _: ptr cQMediaCaptureSession) {.cdecl.} =
    let vtbl = cast[ref QMediaCaptureSessionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMediaCaptureSession_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMediaCaptureSession_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMediaCaptureSession_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMediaCaptureSession_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMediaCaptureSession_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMediaCaptureSession_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMediaCaptureSession_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMediaCaptureSession_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMediaCaptureSession_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMediaCaptureSession_disconnectNotify
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQMediaCaptureSession_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_staticMetaObject())
proc delete*(self: gen_qmediacapturesession_types.QMediaCaptureSession) =
  fcQMediaCaptureSession_delete(self.h)
