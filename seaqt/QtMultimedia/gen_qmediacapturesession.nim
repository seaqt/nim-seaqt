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

proc fcQMediaCaptureSession_new(): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new".}
proc fcQMediaCaptureSession_new2(parent: pointer): ptr cQMediaCaptureSession {.importc: "QMediaCaptureSession_new2".}
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
proc fcQMediaCaptureSession_connect_audioInputChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_audioInputChanged".}
proc fcQMediaCaptureSession_cameraChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_cameraChanged".}
proc fcQMediaCaptureSession_connect_cameraChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_cameraChanged".}
proc fcQMediaCaptureSession_imageCaptureChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_imageCaptureChanged".}
proc fcQMediaCaptureSession_connect_imageCaptureChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_imageCaptureChanged".}
proc fcQMediaCaptureSession_recorderChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_recorderChanged".}
proc fcQMediaCaptureSession_connect_recorderChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_recorderChanged".}
proc fcQMediaCaptureSession_videoOutputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_videoOutputChanged".}
proc fcQMediaCaptureSession_connect_videoOutputChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_videoOutputChanged".}
proc fcQMediaCaptureSession_audioOutputChanged(self: pointer, ): void {.importc: "QMediaCaptureSession_audioOutputChanged".}
proc fcQMediaCaptureSession_connect_audioOutputChanged(self: pointer, slot: int) {.importc: "QMediaCaptureSession_connect_audioOutputChanged".}
proc fcQMediaCaptureSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaCaptureSession_tr2".}
proc fcQMediaCaptureSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaCaptureSession_tr3".}
proc fQMediaCaptureSession_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaCaptureSession_virtualbase_metaObject".}
proc fcQMediaCaptureSession_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_metaObject".}
proc fQMediaCaptureSession_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaCaptureSession_virtualbase_metacast".}
proc fcQMediaCaptureSession_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_metacast".}
proc fQMediaCaptureSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaCaptureSession_virtualbase_metacall".}
proc fcQMediaCaptureSession_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_metacall".}
proc fQMediaCaptureSession_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaCaptureSession_virtualbase_event".}
proc fcQMediaCaptureSession_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_event".}
proc fQMediaCaptureSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaCaptureSession_virtualbase_eventFilter".}
proc fcQMediaCaptureSession_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_eventFilter".}
proc fQMediaCaptureSession_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaCaptureSession_virtualbase_timerEvent".}
proc fcQMediaCaptureSession_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_timerEvent".}
proc fQMediaCaptureSession_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaCaptureSession_virtualbase_childEvent".}
proc fcQMediaCaptureSession_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_childEvent".}
proc fQMediaCaptureSession_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaCaptureSession_virtualbase_customEvent".}
proc fcQMediaCaptureSession_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_customEvent".}
proc fQMediaCaptureSession_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaCaptureSession_virtualbase_connectNotify".}
proc fcQMediaCaptureSession_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_connectNotify".}
proc fQMediaCaptureSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaCaptureSession_virtualbase_disconnectNotify".}
proc fcQMediaCaptureSession_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaCaptureSession_override_virtual_disconnectNotify".}
proc fcQMediaCaptureSession_staticMetaObject(): pointer {.importc: "QMediaCaptureSession_staticMetaObject".}
proc fcQMediaCaptureSession_delete(self: pointer) {.importc: "QMediaCaptureSession_delete".}


func init*(T: type gen_qmediacapturesession_types.QMediaCaptureSession, h: ptr cQMediaCaptureSession): gen_qmediacapturesession_types.QMediaCaptureSession =
  T(h: h)
proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession.init(fcQMediaCaptureSession_new())

proc create*(T: type gen_qmediacapturesession_types.QMediaCaptureSession, parent: gen_qobject_types.QObject): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession.init(fcQMediaCaptureSession_new2(parent.h))

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
proc miqt_exec_callback_QMediaCaptureSession_audioInputChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaCaptureSessionaudioInputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioInputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionaudioInputChangedSlot) =
  var tmp = new QMediaCaptureSessionaudioInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_audioInputChanged(self.h, cast[int](addr tmp[]))

proc cameraChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_cameraChanged(self.h)

type QMediaCaptureSessioncameraChangedSlot* = proc()
proc miqt_exec_callback_QMediaCaptureSession_cameraChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaCaptureSessioncameraChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncameraChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessioncameraChangedSlot) =
  var tmp = new QMediaCaptureSessioncameraChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_cameraChanged(self.h, cast[int](addr tmp[]))

proc imageCaptureChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_imageCaptureChanged(self.h)

type QMediaCaptureSessionimageCaptureChangedSlot* = proc()
proc miqt_exec_callback_QMediaCaptureSession_imageCaptureChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaCaptureSessionimageCaptureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onimageCaptureChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionimageCaptureChangedSlot) =
  var tmp = new QMediaCaptureSessionimageCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_imageCaptureChanged(self.h, cast[int](addr tmp[]))

proc recorderChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_recorderChanged(self.h)

type QMediaCaptureSessionrecorderChangedSlot* = proc()
proc miqt_exec_callback_QMediaCaptureSession_recorderChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaCaptureSessionrecorderChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrecorderChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionrecorderChangedSlot) =
  var tmp = new QMediaCaptureSessionrecorderChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_recorderChanged(self.h, cast[int](addr tmp[]))

proc videoOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_videoOutputChanged(self.h)

type QMediaCaptureSessionvideoOutputChangedSlot* = proc()
proc miqt_exec_callback_QMediaCaptureSession_videoOutputChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaCaptureSessionvideoOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvideoOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionvideoOutputChangedSlot) =
  var tmp = new QMediaCaptureSessionvideoOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_videoOutputChanged(self.h, cast[int](addr tmp[]))

proc audioOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): void =
  fcQMediaCaptureSession_audioOutputChanged(self.h)

type QMediaCaptureSessionaudioOutputChangedSlot* = proc()
proc miqt_exec_callback_QMediaCaptureSession_audioOutputChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaCaptureSessionaudioOutputChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioOutputChanged*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionaudioOutputChangedSlot) =
  var tmp = new QMediaCaptureSessionaudioOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_connect_audioOutputChanged(self.h, cast[int](addr tmp[]))

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

proc QMediaCaptureSessionmetaObject*(self: gen_qmediacapturesession_types.QMediaCaptureSession, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMediaCaptureSession_virtualbase_metaObject(self.h))

type QMediaCaptureSessionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_metaObject(self: ptr cQMediaCaptureSession, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaCaptureSession_metaObject ".} =
  var nimfunc = cast[ptr QMediaCaptureSessionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaCaptureSessionmetacast*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cstring): pointer =
  fQMediaCaptureSession_virtualbase_metacast(self.h, param1)

type QMediaCaptureSessionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionmetacastProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_metacast(self: ptr cQMediaCaptureSession, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaCaptureSession_metacast ".} =
  var nimfunc = cast[ptr QMediaCaptureSessionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaCaptureSessionmetacall*(self: gen_qmediacapturesession_types.QMediaCaptureSession, param1: cint, param2: cint, param3: pointer): cint =
  fQMediaCaptureSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaCaptureSessionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionmetacallProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_metacall(self: ptr cQMediaCaptureSession, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaCaptureSession_metacall ".} =
  var nimfunc = cast[ptr QMediaCaptureSessionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaCaptureSessionevent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaCaptureSession_virtualbase_event(self.h, event.h)

type QMediaCaptureSessioneventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessioneventProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_event(self: ptr cQMediaCaptureSession, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaCaptureSession_event ".} =
  var nimfunc = cast[ptr QMediaCaptureSessioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaCaptureSessioneventFilter*(self: gen_qmediacapturesession_types.QMediaCaptureSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaCaptureSession_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaCaptureSessioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessioneventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_eventFilter(self: ptr cQMediaCaptureSession, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaCaptureSession_eventFilter ".} =
  var nimfunc = cast[ptr QMediaCaptureSessioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaCaptureSessiontimerEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMediaCaptureSession_virtualbase_timerEvent(self.h, event.h)

type QMediaCaptureSessiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessiontimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_timerEvent(self: ptr cQMediaCaptureSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_timerEvent ".} =
  var nimfunc = cast[ptr QMediaCaptureSessiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaCaptureSessionchildEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QChildEvent): void =
  fQMediaCaptureSession_virtualbase_childEvent(self.h, event.h)

type QMediaCaptureSessionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionchildEventProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_childEvent(self: ptr cQMediaCaptureSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_childEvent ".} =
  var nimfunc = cast[ptr QMediaCaptureSessionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaCaptureSessioncustomEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, event: gen_qcoreevent_types.QEvent): void =
  fQMediaCaptureSession_virtualbase_customEvent(self.h, event.h)

type QMediaCaptureSessioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessioncustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_customEvent(self: ptr cQMediaCaptureSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_customEvent ".} =
  var nimfunc = cast[ptr QMediaCaptureSessioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaCaptureSessionconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaCaptureSession_virtualbase_connectNotify(self.h, signal.h)

type QMediaCaptureSessionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_connectNotify(self: ptr cQMediaCaptureSession, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_connectNotify ".} =
  var nimfunc = cast[ptr QMediaCaptureSessionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaCaptureSessiondisconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaCaptureSession_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaCaptureSessiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediacapturesession_types.QMediaCaptureSession, slot: QMediaCaptureSessiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaCaptureSessiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaCaptureSession_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaCaptureSession_disconnectNotify(self: ptr cQMediaCaptureSession, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaCaptureSession_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaCaptureSessiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediacapturesession_types.QMediaCaptureSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaCaptureSession_staticMetaObject())
proc delete*(self: gen_qmediacapturesession_types.QMediaCaptureSession) =
  fcQMediaCaptureSession_delete(self.h)
