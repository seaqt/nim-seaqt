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


{.compile("gen_qcameraimagecapture.cpp", QtMultimediaCFlags).}


type QCameraImageCaptureErrorEnum* = distinct cint
template NoError*(_: type QCameraImageCaptureErrorEnum): untyped = 0
template NotReadyError*(_: type QCameraImageCaptureErrorEnum): untyped = 1
template ResourceError*(_: type QCameraImageCaptureErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QCameraImageCaptureErrorEnum): untyped = 3
template NotSupportedFeatureError*(_: type QCameraImageCaptureErrorEnum): untyped = 4
template FormatError*(_: type QCameraImageCaptureErrorEnum): untyped = 5


type QCameraImageCaptureDriveModeEnum* = distinct cint
template SingleImageCapture*(_: type QCameraImageCaptureDriveModeEnum): untyped = 0


type QCameraImageCaptureCaptureDestinationEnum* = distinct cint
template CaptureToFile*(_: type QCameraImageCaptureCaptureDestinationEnum): untyped = 1
template CaptureToBuffer*(_: type QCameraImageCaptureCaptureDestinationEnum): untyped = 2


import ./gen_qcameraimagecapture_types
export gen_qcameraimagecapture_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qimage_types,
  ./gen_qmediaencodersettings_types,
  ./gen_qmediaobject_types,
  ./gen_qvideoframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qimage_types,
  gen_qmediaencodersettings_types,
  gen_qmediaobject_types,
  gen_qvideoframe_types

type cQCameraImageCapture*{.exportc: "QCameraImageCapture", incompleteStruct.} = object

proc fcQCameraImageCapture_metaObject(self: pointer): pointer {.importc: "QCameraImageCapture_metaObject".}
proc fcQCameraImageCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCapture_metacast".}
proc fcQCameraImageCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCapture_metacall".}
proc fcQCameraImageCapture_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageCapture_tr".}
proc fcQCameraImageCapture_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageCapture_trUtf8".}
proc fcQCameraImageCapture_isAvailable(self: pointer): bool {.importc: "QCameraImageCapture_isAvailable".}
proc fcQCameraImageCapture_availability(self: pointer): cint {.importc: "QCameraImageCapture_availability".}
proc fcQCameraImageCapture_mediaObject(self: pointer): pointer {.importc: "QCameraImageCapture_mediaObject".}
proc fcQCameraImageCapture_error(self: pointer): cint {.importc: "QCameraImageCapture_error".}
proc fcQCameraImageCapture_errorString(self: pointer): struct_miqt_string {.importc: "QCameraImageCapture_errorString".}
proc fcQCameraImageCapture_isReadyForCapture(self: pointer): bool {.importc: "QCameraImageCapture_isReadyForCapture".}
proc fcQCameraImageCapture_supportedImageCodecs(self: pointer): struct_miqt_array {.importc: "QCameraImageCapture_supportedImageCodecs".}
proc fcQCameraImageCapture_imageCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QCameraImageCapture_imageCodecDescription".}
proc fcQCameraImageCapture_supportedResolutions(self: pointer): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions".}
proc fcQCameraImageCapture_encodingSettings(self: pointer): pointer {.importc: "QCameraImageCapture_encodingSettings".}
proc fcQCameraImageCapture_setEncodingSettings(self: pointer, settings: pointer): void {.importc: "QCameraImageCapture_setEncodingSettings".}
proc fcQCameraImageCapture_supportedBufferFormats(self: pointer): struct_miqt_array {.importc: "QCameraImageCapture_supportedBufferFormats".}
proc fcQCameraImageCapture_bufferFormat(self: pointer): cint {.importc: "QCameraImageCapture_bufferFormat".}
proc fcQCameraImageCapture_setBufferFormat(self: pointer, format: cint): void {.importc: "QCameraImageCapture_setBufferFormat".}
proc fcQCameraImageCapture_isCaptureDestinationSupported(self: pointer, destination: cint): bool {.importc: "QCameraImageCapture_isCaptureDestinationSupported".}
proc fcQCameraImageCapture_captureDestination(self: pointer): cint {.importc: "QCameraImageCapture_captureDestination".}
proc fcQCameraImageCapture_setCaptureDestination(self: pointer, destination: cint): void {.importc: "QCameraImageCapture_setCaptureDestination".}
proc fcQCameraImageCapture_capture(self: pointer): cint {.importc: "QCameraImageCapture_capture".}
proc fcQCameraImageCapture_cancelCapture(self: pointer): void {.importc: "QCameraImageCapture_cancelCapture".}
proc fcQCameraImageCapture_error2(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QCameraImageCapture_error2".}
proc fcQCameraImageCapture_connect_error2(self: pointer, slot: int, callback: proc (slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_error2".}
proc fcQCameraImageCapture_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QCameraImageCapture_readyForCaptureChanged".}
proc fcQCameraImageCapture_connect_readyForCaptureChanged(self: pointer, slot: int, callback: proc (slot: int, ready: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_readyForCaptureChanged".}
proc fcQCameraImageCapture_bufferFormatChanged(self: pointer, format: cint): void {.importc: "QCameraImageCapture_bufferFormatChanged".}
proc fcQCameraImageCapture_connect_bufferFormatChanged(self: pointer, slot: int, callback: proc (slot: int, format: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_bufferFormatChanged".}
proc fcQCameraImageCapture_captureDestinationChanged(self: pointer, destination: cint): void {.importc: "QCameraImageCapture_captureDestinationChanged".}
proc fcQCameraImageCapture_connect_captureDestinationChanged(self: pointer, slot: int, callback: proc (slot: int, destination: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_captureDestinationChanged".}
proc fcQCameraImageCapture_imageExposed(self: pointer, id: cint): void {.importc: "QCameraImageCapture_imageExposed".}
proc fcQCameraImageCapture_connect_imageExposed(self: pointer, slot: int, callback: proc (slot: int, id: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_imageExposed".}
proc fcQCameraImageCapture_imageCaptured(self: pointer, id: cint, preview: pointer): void {.importc: "QCameraImageCapture_imageCaptured".}
proc fcQCameraImageCapture_connect_imageCaptured(self: pointer, slot: int, callback: proc (slot: int, id: cint, preview: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_imageCaptured".}
proc fcQCameraImageCapture_imageMetadataAvailable(self: pointer, id: cint, key: struct_miqt_string, value: pointer): void {.importc: "QCameraImageCapture_imageMetadataAvailable".}
proc fcQCameraImageCapture_connect_imageMetadataAvailable(self: pointer, slot: int, callback: proc (slot: int, id: cint, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_imageMetadataAvailable".}
proc fcQCameraImageCapture_imageAvailable(self: pointer, id: cint, frame: pointer): void {.importc: "QCameraImageCapture_imageAvailable".}
proc fcQCameraImageCapture_connect_imageAvailable(self: pointer, slot: int, callback: proc (slot: int, id: cint, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_imageAvailable".}
proc fcQCameraImageCapture_imageSaved(self: pointer, id: cint, fileName: struct_miqt_string): void {.importc: "QCameraImageCapture_imageSaved".}
proc fcQCameraImageCapture_connect_imageSaved(self: pointer, slot: int, callback: proc (slot: int, id: cint, fileName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraImageCapture_connect_imageSaved".}
proc fcQCameraImageCapture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCapture_tr2".}
proc fcQCameraImageCapture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCapture_tr3".}
proc fcQCameraImageCapture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCapture_trUtf82".}
proc fcQCameraImageCapture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCapture_trUtf83".}
proc fcQCameraImageCapture_supportedResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions1".}
proc fcQCameraImageCapture_supportedResolutions2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions2".}
proc fcQCameraImageCapture_capture1(self: pointer, location: struct_miqt_string): cint {.importc: "QCameraImageCapture_capture1".}
proc fcQCameraImageCapture_vtbl(self: pointer): pointer {.importc: "QCameraImageCapture_vtbl".}
proc fcQCameraImageCapture_vdata(self: pointer): pointer {.importc: "QCameraImageCapture_vdata".}

type cQCameraImageCaptureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(self: pointer, mediaObject: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCameraImageCapture_virtualbase_metaObject(self: pointer): pointer {.importc: "QCameraImageCapture_virtualbase_metaObject".}
proc fcQCameraImageCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCapture_virtualbase_metacast".}
proc fcQCameraImageCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCapture_virtualbase_metacall".}
proc fcQCameraImageCapture_virtualbase_mediaObject(self: pointer): pointer {.importc: "QCameraImageCapture_virtualbase_mediaObject".}
proc fcQCameraImageCapture_virtualbase_setMediaObject(self: pointer, mediaObject: pointer): bool {.importc: "QCameraImageCapture_virtualbase_setMediaObject".}
proc fcQCameraImageCapture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCameraImageCapture_virtualbase_event".}
proc fcQCameraImageCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCameraImageCapture_virtualbase_eventFilter".}
proc fcQCameraImageCapture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCameraImageCapture_virtualbase_timerEvent".}
proc fcQCameraImageCapture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCameraImageCapture_virtualbase_childEvent".}
proc fcQCameraImageCapture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCameraImageCapture_virtualbase_customEvent".}
proc fcQCameraImageCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCameraImageCapture_virtualbase_connectNotify".}
proc fcQCameraImageCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCameraImageCapture_virtualbase_disconnectNotify".}
proc fcQCameraImageCapture_protectedbase_sender(self: pointer): pointer {.importc: "QCameraImageCapture_protectedbase_sender".}
proc fcQCameraImageCapture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCameraImageCapture_protectedbase_senderSignalIndex".}
proc fcQCameraImageCapture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraImageCapture_protectedbase_receivers".}
proc fcQCameraImageCapture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraImageCapture_protectedbase_isSignalConnected".}
proc fcQCameraImageCapture_new(vtbl, vdata: pointer, mediaObject: pointer): ptr cQCameraImageCapture {.importc: "QCameraImageCapture_new".}
proc fcQCameraImageCapture_new2(vtbl, vdata: pointer, mediaObject: pointer, parent: pointer): ptr cQCameraImageCapture {.importc: "QCameraImageCapture_new2".}
proc fcQCameraImageCapture_staticMetaObject(): pointer {.importc: "QCameraImageCapture_staticMetaObject".}

proc metaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCapture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cstring): pointer =
  fcQCameraImageCapture_metacast(self.h, param1)

proc metacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring): string =
  let v_ms = fcQCameraImageCapture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring): string =
  let v_ms = fcQCameraImageCapture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture): bool =
  fcQCameraImageCapture_isAvailable(self.h)

proc availability*(self: gen_qcameraimagecapture_types.QCameraImageCapture): cint =
  cint(fcQCameraImageCapture_availability(self.h))

proc mediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraImageCapture_mediaObject(self.h), owned: false)

proc error*(self: gen_qcameraimagecapture_types.QCameraImageCapture): cint =
  cint(fcQCameraImageCapture_error(self.h))

proc errorString*(self: gen_qcameraimagecapture_types.QCameraImageCapture): string =
  let v_ms = fcQCameraImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: gen_qcameraimagecapture_types.QCameraImageCapture): bool =
  fcQCameraImageCapture_isReadyForCapture(self.h)

proc supportedImageCodecs*(self: gen_qcameraimagecapture_types.QCameraImageCapture): seq[string] =
  var v_ma = fcQCameraImageCapture_supportedImageCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc imageCodecDescription*(self: gen_qcameraimagecapture_types.QCameraImageCapture, codecName: openArray[char]): string =
  let v_ms = fcQCameraImageCapture_imageCodecDescription(self.h, struct_miqt_string(data: if len(codecName) > 0: addr codecName[0] else: nil, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraImageCapture_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc encodingSettings*(self: gen_qcameraimagecapture_types.QCameraImageCapture): gen_qmediaencodersettings_types.QImageEncoderSettings =
  gen_qmediaencodersettings_types.QImageEncoderSettings(h: fcQCameraImageCapture_encodingSettings(self.h), owned: true)

proc setEncodingSettings*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings_types.QImageEncoderSettings): void =
  fcQCameraImageCapture_setEncodingSettings(self.h, settings.h)

proc supportedBufferFormats*(self: gen_qcameraimagecapture_types.QCameraImageCapture): seq[cint] =
  var v_ma = fcQCameraImageCapture_supportedBufferFormats(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc bufferFormat*(self: gen_qcameraimagecapture_types.QCameraImageCapture): cint =
  cint(fcQCameraImageCapture_bufferFormat(self.h))

proc setBufferFormat*(self: gen_qcameraimagecapture_types.QCameraImageCapture, format: cint): void =
  fcQCameraImageCapture_setBufferFormat(self.h, cint(format))

proc isCaptureDestinationSupported*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): bool =
  fcQCameraImageCapture_isCaptureDestinationSupported(self.h, cint(destination))

proc captureDestination*(self: gen_qcameraimagecapture_types.QCameraImageCapture): cint =
  cint(fcQCameraImageCapture_captureDestination(self.h))

proc setCaptureDestination*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): void =
  fcQCameraImageCapture_setCaptureDestination(self.h, cint(destination))

proc capture*(self: gen_qcameraimagecapture_types.QCameraImageCapture): cint =
  fcQCameraImageCapture_capture(self.h)

proc cancelCapture*(self: gen_qcameraimagecapture_types.QCameraImageCapture): void =
  fcQCameraImageCapture_cancelCapture(self.h)

proc error*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, error: cint, errorString: openArray[char]): void =
  fcQCameraImageCapture_error2(self.h, id, cint(error), struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QCameraImageCaptureerror2Slot* = proc(id: cint, error: cint, errorString: openArray[char])
proc fcQCameraImageCapture_slot_callback_error2(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureerror2Slot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc fcQCameraImageCapture_slot_callback_error2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureerror2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureerror2Slot) =
  var tmp = new QCameraImageCaptureerror2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_error2(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_error2, fcQCameraImageCapture_slot_callback_error2_release)

proc readyForCaptureChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ready: bool): void =
  fcQCameraImageCapture_readyForCaptureChanged(self.h, ready)

type QCameraImageCapturereadyForCaptureChangedSlot* = proc(ready: bool)
proc fcQCameraImageCapture_slot_callback_readyForCaptureChanged(slot: int, ready: bool) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCapturereadyForCaptureChangedSlot](cast[pointer](slot))
  let slotval1 = ready

  nimfunc[](slotval1)

proc fcQCameraImageCapture_slot_callback_readyForCaptureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCapturereadyForCaptureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReadyForCaptureChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturereadyForCaptureChangedSlot) =
  var tmp = new QCameraImageCapturereadyForCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_readyForCaptureChanged, fcQCameraImageCapture_slot_callback_readyForCaptureChanged_release)

proc bufferFormatChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, format: cint): void =
  fcQCameraImageCapture_bufferFormatChanged(self.h, cint(format))

type QCameraImageCapturebufferFormatChangedSlot* = proc(format: cint)
proc fcQCameraImageCapture_slot_callback_bufferFormatChanged(slot: int, format: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCapturebufferFormatChangedSlot](cast[pointer](slot))
  let slotval1 = cint(format)

  nimfunc[](slotval1)

proc fcQCameraImageCapture_slot_callback_bufferFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCapturebufferFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onBufferFormatChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturebufferFormatChangedSlot) =
  var tmp = new QCameraImageCapturebufferFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_bufferFormatChanged(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_bufferFormatChanged, fcQCameraImageCapture_slot_callback_bufferFormatChanged_release)

proc captureDestinationChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): void =
  fcQCameraImageCapture_captureDestinationChanged(self.h, cint(destination))

type QCameraImageCapturecaptureDestinationChangedSlot* = proc(destination: cint)
proc fcQCameraImageCapture_slot_callback_captureDestinationChanged(slot: int, destination: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCapturecaptureDestinationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(destination)

  nimfunc[](slotval1)

proc fcQCameraImageCapture_slot_callback_captureDestinationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCapturecaptureDestinationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCaptureDestinationChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturecaptureDestinationChangedSlot) =
  var tmp = new QCameraImageCapturecaptureDestinationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_captureDestinationChanged(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_captureDestinationChanged, fcQCameraImageCapture_slot_callback_captureDestinationChanged_release)

proc imageExposed*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint): void =
  fcQCameraImageCapture_imageExposed(self.h, id)

type QCameraImageCaptureimageExposedSlot* = proc(id: cint)
proc fcQCameraImageCapture_slot_callback_imageExposed(slot: int, id: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureimageExposedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc fcQCameraImageCapture_slot_callback_imageExposed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureimageExposedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageExposed*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageExposedSlot) =
  var tmp = new QCameraImageCaptureimageExposedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_imageExposed, fcQCameraImageCapture_slot_callback_imageExposed_release)

proc imageCaptured*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, preview: gen_qimage_types.QImage): void =
  fcQCameraImageCapture_imageCaptured(self.h, id, preview.h)

type QCameraImageCaptureimageCapturedSlot* = proc(id: cint, preview: gen_qimage_types.QImage)
proc fcQCameraImageCapture_slot_callback_imageCaptured(slot: int, id: cint, preview: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureimageCapturedSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage_types.QImage(h: preview, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQCameraImageCapture_slot_callback_imageCaptured_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureimageCapturedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageCaptured*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageCapturedSlot) =
  var tmp = new QCameraImageCaptureimageCapturedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_imageCaptured, fcQCameraImageCapture_slot_callback_imageCaptured_release)

proc imageMetadataAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQCameraImageCapture_imageMetadataAvailable(self.h, id, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

type QCameraImageCaptureimageMetadataAvailableSlot* = proc(id: cint, key: openArray[char], value: gen_qvariant_types.QVariant)
proc fcQCameraImageCapture_slot_callback_imageMetadataAvailable(slot: int, id: cint, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureimageMetadataAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval2 = vkeyx_ret

  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)

  nimfunc[](slotval1, slotval2, slotval3)

proc fcQCameraImageCapture_slot_callback_imageMetadataAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureimageMetadataAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageMetadataAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageMetadataAvailableSlot) =
  var tmp = new QCameraImageCaptureimageMetadataAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_imageMetadataAvailable, fcQCameraImageCapture_slot_callback_imageMetadataAvailable_release)

proc imageAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQCameraImageCapture_imageAvailable(self.h, id, frame.h)

type QCameraImageCaptureimageAvailableSlot* = proc(id: cint, frame: gen_qvideoframe_types.QVideoFrame)
proc fcQCameraImageCapture_slot_callback_imageAvailable(slot: int, id: cint, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureimageAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe_types.QVideoFrame(h: frame, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQCameraImageCapture_slot_callback_imageAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureimageAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageAvailableSlot) =
  var tmp = new QCameraImageCaptureimageAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_imageAvailable, fcQCameraImageCapture_slot_callback_imageAvailable_release)

proc imageSaved*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, fileName: openArray[char]): void =
  fcQCameraImageCapture_imageSaved(self.h, id, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

type QCameraImageCaptureimageSavedSlot* = proc(id: cint, fileName: openArray[char])
proc fcQCameraImageCapture_slot_callback_imageSaved(slot: int, id: cint, fileName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCameraImageCaptureimageSavedSlot](cast[pointer](slot))
  let slotval1 = id

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret

  nimfunc[](slotval1, slotval2)

proc fcQCameraImageCapture_slot_callback_imageSaved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraImageCaptureimageSavedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageSaved*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageSavedSlot) =
  var tmp = new QCameraImageCaptureimageSavedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]), fcQCameraImageCapture_slot_callback_imageSaved, fcQCameraImageCapture_slot_callback_imageSaved_release)

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageCapture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageCapture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings_types.QImageEncoderSettings): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraImageCapture_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings_types.QImageEncoderSettings, continuous: ptr bool): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraImageCapture_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc capture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, location: openArray[char]): cint =
  fcQCameraImageCapture_capture1(self.h, struct_miqt_string(data: if len(location) > 0: addr location[0] else: nil, len: csize_t(len(location))))

type QCameraImageCapturemetaObjectProc* = proc(self: QCameraImageCapture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCameraImageCapturemetacastProc* = proc(self: QCameraImageCapture, param1: cstring): pointer {.raises: [], gcsafe.}
type QCameraImageCapturemetacallProc* = proc(self: QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCameraImageCapturemediaObjectProc* = proc(self: QCameraImageCapture): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QCameraImageCapturesetMediaObjectProc* = proc(self: QCameraImageCapture, mediaObject: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QCameraImageCaptureeventProc* = proc(self: QCameraImageCapture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameraImageCaptureeventFilterProc* = proc(self: QCameraImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameraImageCapturetimerEventProc* = proc(self: QCameraImageCapture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCameraImageCapturechildEventProc* = proc(self: QCameraImageCapture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCameraImageCapturecustomEventProc* = proc(self: QCameraImageCapture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraImageCaptureconnectNotifyProc* = proc(self: QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCameraImageCapturedisconnectNotifyProc* = proc(self: QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QCameraImageCaptureVTable* {.inheritable, pure.} = object
  vtbl: cQCameraImageCaptureVTable
  metaObject*: QCameraImageCapturemetaObjectProc
  metacast*: QCameraImageCapturemetacastProc
  metacall*: QCameraImageCapturemetacallProc
  mediaObject*: QCameraImageCapturemediaObjectProc
  setMediaObject*: QCameraImageCapturesetMediaObjectProc
  event*: QCameraImageCaptureeventProc
  eventFilter*: QCameraImageCaptureeventFilterProc
  timerEvent*: QCameraImageCapturetimerEventProc
  childEvent*: QCameraImageCapturechildEventProc
  customEvent*: QCameraImageCapturecustomEventProc
  connectNotify*: QCameraImageCaptureconnectNotifyProc
  disconnectNotify*: QCameraImageCapturedisconnectNotifyProc

proc QCameraImageCapturemetaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCapture_virtualbase_metaObject(self.h), owned: false)

proc QCameraImageCapturemetacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cstring): pointer =
  fcQCameraImageCapture_virtualbase_metacast(self.h, param1)

proc QCameraImageCapturemetacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QCameraImageCapturemediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraImageCapture_virtualbase_mediaObject(self.h), owned: false)

proc QCameraImageCapturesetMediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, mediaObject: gen_qmediaobject_types.QMediaObject): bool =
  fcQCameraImageCapture_virtualbase_setMediaObject(self.h, mediaObject.h)

proc QCameraImageCaptureevent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraImageCapture_virtualbase_event(self.h, event.h)

proc QCameraImageCaptureeventFilter*(self: gen_qcameraimagecapture_types.QCameraImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QCameraImageCapturetimerEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCameraImageCapture_virtualbase_timerEvent(self.h, event.h)

proc QCameraImageCapturechildEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCameraImageCapture_virtualbase_childEvent(self.h, event.h)

proc QCameraImageCapturecustomEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraImageCapture_virtualbase_customEvent(self.h, event.h)

proc QCameraImageCaptureconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraImageCapture_virtualbase_connectNotify(self.h, signal.h)

proc QCameraImageCapturedisconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraImageCapture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQCameraImageCapture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraImageCapture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQCameraImageCapture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCameraImageCapture_vtable_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraImageCapture_vtable_callback_setMediaObject(self: pointer, mediaObject: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: mediaObject, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc fcQCameraImageCapture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQCameraImageCapture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQCameraImageCapture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQCameraImageCapture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQCameraImageCapture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQCameraImageCapture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQCameraImageCapture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCameraImageCapture* {.inheritable.} = ref object of QCameraImageCapture
  vtbl*: cQCameraImageCaptureVTable

method metaObject*(self: VirtualQCameraImageCapture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCameraImageCapturemetaObject(self[])
method metacast*(self: VirtualQCameraImageCapture, param1: cstring): pointer {.base.} =
  QCameraImageCapturemetacast(self[], param1)
method metacall*(self: VirtualQCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCameraImageCapturemetacall(self[], param1, param2, param3)
method mediaObject*(self: VirtualQCameraImageCapture): gen_qmediaobject_types.QMediaObject {.base.} =
  QCameraImageCapturemediaObject(self[])
method setMediaObject*(self: VirtualQCameraImageCapture, mediaObject: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QCameraImageCapturesetMediaObject(self[], mediaObject)
method event*(self: VirtualQCameraImageCapture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCameraImageCaptureevent(self[], event)
method eventFilter*(self: VirtualQCameraImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCameraImageCaptureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQCameraImageCapture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCameraImageCapturetimerEvent(self[], event)
method childEvent*(self: VirtualQCameraImageCapture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCameraImageCapturechildEvent(self[], event)
method customEvent*(self: VirtualQCameraImageCapture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCameraImageCapturecustomEvent(self[], event)
method connectNotify*(self: VirtualQCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCameraImageCaptureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCameraImageCapturedisconnectNotify(self[], signal)

proc fcQCameraImageCapture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraImageCapture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQCameraImageCapture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCameraImageCapture_method_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  var virtualReturn = inst.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraImageCapture_method_callback_setMediaObject(self: pointer, mediaObject: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: mediaObject, owned: false)
  var virtualReturn = inst.setMediaObject(slotval1)
  virtualReturn

proc fcQCameraImageCapture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQCameraImageCapture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQCameraImageCapture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQCameraImageCapture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQCameraImageCapture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQCameraImageCapture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQCameraImageCapture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraImageCapture](fcQCameraImageCapture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qcameraimagecapture_types.QCameraImageCapture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraImageCapture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcameraimagecapture_types.QCameraImageCapture): cint =
  fcQCameraImageCapture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: cstring): cint =
  fcQCameraImageCapture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraImageCapture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    vtbl: ref QCameraImageCaptureVTable = nil): gen_qcameraimagecapture_types.QCameraImageCapture =
  let vtbl = if vtbl == nil: new QCameraImageCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCameraImageCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCameraImageCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCameraImageCapture_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQCameraImageCapture_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQCameraImageCapture_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCameraImageCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCameraImageCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCameraImageCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCameraImageCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCameraImageCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCameraImageCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCameraImageCapture_vtable_callback_disconnectNotify
  gen_qcameraimagecapture_types.QCameraImageCapture(h: fcQCameraImageCapture_new(addr(vtbl[].vtbl), addr(vtbl[]), mediaObject.h), owned: true)

proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    vtbl: ref QCameraImageCaptureVTable = nil): gen_qcameraimagecapture_types.QCameraImageCapture =
  let vtbl = if vtbl == nil: new QCameraImageCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCameraImageCaptureVTable](fcQCameraImageCapture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCameraImageCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCameraImageCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCameraImageCapture_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQCameraImageCapture_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQCameraImageCapture_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCameraImageCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCameraImageCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCameraImageCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCameraImageCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCameraImageCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCameraImageCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCameraImageCapture_vtable_callback_disconnectNotify
  gen_qcameraimagecapture_types.QCameraImageCapture(h: fcQCameraImageCapture_new2(addr(vtbl[].vtbl), addr(vtbl[]), mediaObject.h, parent.h), owned: true)

const cQCameraImageCapture_mvtbl = cQCameraImageCaptureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCameraImageCapture()[])](self.fcQCameraImageCapture_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQCameraImageCapture_method_callback_metaObject,
  metacast: fcQCameraImageCapture_method_callback_metacast,
  metacall: fcQCameraImageCapture_method_callback_metacall,
  mediaObject: fcQCameraImageCapture_method_callback_mediaObject,
  setMediaObject: fcQCameraImageCapture_method_callback_setMediaObject,
  event: fcQCameraImageCapture_method_callback_event,
  eventFilter: fcQCameraImageCapture_method_callback_eventFilter,
  timerEvent: fcQCameraImageCapture_method_callback_timerEvent,
  childEvent: fcQCameraImageCapture_method_callback_childEvent,
  customEvent: fcQCameraImageCapture_method_callback_customEvent,
  connectNotify: fcQCameraImageCapture_method_callback_connectNotify,
  disconnectNotify: fcQCameraImageCapture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    inst: VirtualQCameraImageCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCameraImageCapture_new(addr(cQCameraImageCapture_mvtbl), addr(inst[]), mediaObject.h)
  inst[].owned = true

proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    inst: VirtualQCameraImageCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCameraImageCapture_new2(addr(cQCameraImageCapture_mvtbl), addr(inst[]), mediaObject.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcameraimagecapture_types.QCameraImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCapture_staticMetaObject())
