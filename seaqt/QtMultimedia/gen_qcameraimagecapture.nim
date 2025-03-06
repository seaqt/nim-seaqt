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
{.compile("gen_qcameraimagecapture.cpp", cflags).}


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

proc fcQCameraImageCapture_metaObject(self: pointer, ): pointer {.importc: "QCameraImageCapture_metaObject".}
proc fcQCameraImageCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCapture_metacast".}
proc fcQCameraImageCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCapture_metacall".}
proc fcQCameraImageCapture_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageCapture_tr".}
proc fcQCameraImageCapture_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageCapture_trUtf8".}
proc fcQCameraImageCapture_isAvailable(self: pointer, ): bool {.importc: "QCameraImageCapture_isAvailable".}
proc fcQCameraImageCapture_availability(self: pointer, ): cint {.importc: "QCameraImageCapture_availability".}
proc fcQCameraImageCapture_mediaObject(self: pointer, ): pointer {.importc: "QCameraImageCapture_mediaObject".}
proc fcQCameraImageCapture_error(self: pointer, ): cint {.importc: "QCameraImageCapture_error".}
proc fcQCameraImageCapture_errorString(self: pointer, ): struct_miqt_string {.importc: "QCameraImageCapture_errorString".}
proc fcQCameraImageCapture_isReadyForCapture(self: pointer, ): bool {.importc: "QCameraImageCapture_isReadyForCapture".}
proc fcQCameraImageCapture_supportedImageCodecs(self: pointer, ): struct_miqt_array {.importc: "QCameraImageCapture_supportedImageCodecs".}
proc fcQCameraImageCapture_imageCodecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QCameraImageCapture_imageCodecDescription".}
proc fcQCameraImageCapture_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions".}
proc fcQCameraImageCapture_encodingSettings(self: pointer, ): pointer {.importc: "QCameraImageCapture_encodingSettings".}
proc fcQCameraImageCapture_setEncodingSettings(self: pointer, settings: pointer): void {.importc: "QCameraImageCapture_setEncodingSettings".}
proc fcQCameraImageCapture_supportedBufferFormats(self: pointer, ): struct_miqt_array {.importc: "QCameraImageCapture_supportedBufferFormats".}
proc fcQCameraImageCapture_bufferFormat(self: pointer, ): cint {.importc: "QCameraImageCapture_bufferFormat".}
proc fcQCameraImageCapture_setBufferFormat(self: pointer, format: cint): void {.importc: "QCameraImageCapture_setBufferFormat".}
proc fcQCameraImageCapture_isCaptureDestinationSupported(self: pointer, destination: cint): bool {.importc: "QCameraImageCapture_isCaptureDestinationSupported".}
proc fcQCameraImageCapture_captureDestination(self: pointer, ): cint {.importc: "QCameraImageCapture_captureDestination".}
proc fcQCameraImageCapture_setCaptureDestination(self: pointer, destination: cint): void {.importc: "QCameraImageCapture_setCaptureDestination".}
proc fcQCameraImageCapture_capture(self: pointer, ): cint {.importc: "QCameraImageCapture_capture".}
proc fcQCameraImageCapture_cancelCapture(self: pointer, ): void {.importc: "QCameraImageCapture_cancelCapture".}
proc fcQCameraImageCapture_error2(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QCameraImageCapture_error2".}
proc fcQCameraImageCapture_connect_error2(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_error2".}
proc fcQCameraImageCapture_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QCameraImageCapture_readyForCaptureChanged".}
proc fcQCameraImageCapture_connect_readyForCaptureChanged(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_readyForCaptureChanged".}
proc fcQCameraImageCapture_bufferFormatChanged(self: pointer, format: cint): void {.importc: "QCameraImageCapture_bufferFormatChanged".}
proc fcQCameraImageCapture_connect_bufferFormatChanged(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_bufferFormatChanged".}
proc fcQCameraImageCapture_captureDestinationChanged(self: pointer, destination: cint): void {.importc: "QCameraImageCapture_captureDestinationChanged".}
proc fcQCameraImageCapture_connect_captureDestinationChanged(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_captureDestinationChanged".}
proc fcQCameraImageCapture_imageExposed(self: pointer, id: cint): void {.importc: "QCameraImageCapture_imageExposed".}
proc fcQCameraImageCapture_connect_imageExposed(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageExposed".}
proc fcQCameraImageCapture_imageCaptured(self: pointer, id: cint, preview: pointer): void {.importc: "QCameraImageCapture_imageCaptured".}
proc fcQCameraImageCapture_connect_imageCaptured(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageCaptured".}
proc fcQCameraImageCapture_imageMetadataAvailable(self: pointer, id: cint, key: struct_miqt_string, value: pointer): void {.importc: "QCameraImageCapture_imageMetadataAvailable".}
proc fcQCameraImageCapture_connect_imageMetadataAvailable(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageMetadataAvailable".}
proc fcQCameraImageCapture_imageAvailable(self: pointer, id: cint, frame: pointer): void {.importc: "QCameraImageCapture_imageAvailable".}
proc fcQCameraImageCapture_connect_imageAvailable(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageAvailable".}
proc fcQCameraImageCapture_imageSaved(self: pointer, id: cint, fileName: struct_miqt_string): void {.importc: "QCameraImageCapture_imageSaved".}
proc fcQCameraImageCapture_connect_imageSaved(self: pointer, slot: int) {.importc: "QCameraImageCapture_connect_imageSaved".}
proc fcQCameraImageCapture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCapture_tr2".}
proc fcQCameraImageCapture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCapture_tr3".}
proc fcQCameraImageCapture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCapture_trUtf82".}
proc fcQCameraImageCapture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCapture_trUtf83".}
proc fcQCameraImageCapture_supportedResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions1".}
proc fcQCameraImageCapture_supportedResolutions2(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraImageCapture_supportedResolutions2".}
proc fcQCameraImageCapture_capture1(self: pointer, location: struct_miqt_string): cint {.importc: "QCameraImageCapture_capture1".}
type cQCameraImageCaptureVTable = object
  destructor*: proc(vtbl: ptr cQCameraImageCaptureVTable, self: ptr cQCameraImageCapture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(vtbl, self: pointer, mediaObject: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCameraImageCapture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCameraImageCapture_virtualbase_metaObject".}
proc fcQCameraImageCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCapture_virtualbase_metacast".}
proc fcQCameraImageCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCapture_virtualbase_metacall".}
proc fcQCameraImageCapture_virtualbase_mediaObject(self: pointer, ): pointer {.importc: "QCameraImageCapture_virtualbase_mediaObject".}
proc fcQCameraImageCapture_virtualbase_setMediaObject(self: pointer, mediaObject: pointer): bool {.importc: "QCameraImageCapture_virtualbase_setMediaObject".}
proc fcQCameraImageCapture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCameraImageCapture_virtualbase_event".}
proc fcQCameraImageCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCameraImageCapture_virtualbase_eventFilter".}
proc fcQCameraImageCapture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCameraImageCapture_virtualbase_timerEvent".}
proc fcQCameraImageCapture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCameraImageCapture_virtualbase_childEvent".}
proc fcQCameraImageCapture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCameraImageCapture_virtualbase_customEvent".}
proc fcQCameraImageCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCameraImageCapture_virtualbase_connectNotify".}
proc fcQCameraImageCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCameraImageCapture_virtualbase_disconnectNotify".}
proc fcQCameraImageCapture_new(vtbl: pointer, mediaObject: pointer): ptr cQCameraImageCapture {.importc: "QCameraImageCapture_new".}
proc fcQCameraImageCapture_new2(vtbl: pointer, mediaObject: pointer, parent: pointer): ptr cQCameraImageCapture {.importc: "QCameraImageCapture_new2".}
proc fcQCameraImageCapture_staticMetaObject(): pointer {.importc: "QCameraImageCapture_staticMetaObject".}
proc fcQCameraImageCapture_delete(self: pointer) {.importc: "QCameraImageCapture_delete".}

proc metaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCapture_metaObject(self.h))

proc metacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cstring): pointer =
  fcQCameraImageCapture_metacast(self.h, param1)

proc metacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring): string =
  let v_ms = fcQCameraImageCapture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring): string =
  let v_ms = fcQCameraImageCapture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): bool =
  fcQCameraImageCapture_isAvailable(self.h)

proc availability*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =
  cint(fcQCameraImageCapture_availability(self.h))

proc mediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraImageCapture_mediaObject(self.h))

proc error*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =
  cint(fcQCameraImageCapture_error(self.h))

proc errorString*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): string =
  let v_ms = fcQCameraImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): bool =
  fcQCameraImageCapture_isReadyForCapture(self.h)

proc supportedImageCodecs*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): seq[string] =
  var v_ma = fcQCameraImageCapture_supportedImageCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageCodecDescription*(self: gen_qcameraimagecapture_types.QCameraImageCapture, codecName: string): string =
  let v_ms = fcQCameraImageCapture_imageCodecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraImageCapture_supportedResolutions(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc encodingSettings*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qmediaencodersettings_types.QImageEncoderSettings =
  gen_qmediaencodersettings_types.QImageEncoderSettings(h: fcQCameraImageCapture_encodingSettings(self.h))

proc setEncodingSettings*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings_types.QImageEncoderSettings): void =
  fcQCameraImageCapture_setEncodingSettings(self.h, settings.h)

proc supportedBufferFormats*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): seq[cint] =
  var v_ma = fcQCameraImageCapture_supportedBufferFormats(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc bufferFormat*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =
  cint(fcQCameraImageCapture_bufferFormat(self.h))

proc setBufferFormat*(self: gen_qcameraimagecapture_types.QCameraImageCapture, format: cint): void =
  fcQCameraImageCapture_setBufferFormat(self.h, cint(format))

proc isCaptureDestinationSupported*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): bool =
  fcQCameraImageCapture_isCaptureDestinationSupported(self.h, cint(destination))

proc captureDestination*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =
  cint(fcQCameraImageCapture_captureDestination(self.h))

proc setCaptureDestination*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): void =
  fcQCameraImageCapture_setCaptureDestination(self.h, cint(destination))

proc capture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): cint =
  fcQCameraImageCapture_capture(self.h)

proc cancelCapture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): void =
  fcQCameraImageCapture_cancelCapture(self.h)

proc error*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, error: cint, errorString: string): void =
  fcQCameraImageCapture_error2(self.h, id, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QCameraImageCaptureerror2Slot* = proc(id: cint, error: cint, errorString: string)
proc miqt_exec_callback_cQCameraImageCapture_error2(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.exportc: "miqt_exec_callback_QCameraImageCapture_error2".} =
  let nimfunc = cast[ptr QCameraImageCaptureerror2Slot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc onerror*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureerror2Slot) =
  var tmp = new QCameraImageCaptureerror2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_error2(self.h, cast[int](addr tmp[]))

proc readyForCaptureChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ready: bool): void =
  fcQCameraImageCapture_readyForCaptureChanged(self.h, ready)

type QCameraImageCapturereadyForCaptureChangedSlot* = proc(ready: bool)
proc miqt_exec_callback_cQCameraImageCapture_readyForCaptureChanged(slot: int, ready: bool) {.exportc: "miqt_exec_callback_QCameraImageCapture_readyForCaptureChanged".} =
  let nimfunc = cast[ptr QCameraImageCapturereadyForCaptureChangedSlot](cast[pointer](slot))
  let slotval1 = ready

  nimfunc[](slotval1)

proc onreadyForCaptureChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturereadyForCaptureChangedSlot) =
  var tmp = new QCameraImageCapturereadyForCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]))

proc bufferFormatChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, format: cint): void =
  fcQCameraImageCapture_bufferFormatChanged(self.h, cint(format))

type QCameraImageCapturebufferFormatChangedSlot* = proc(format: cint)
proc miqt_exec_callback_cQCameraImageCapture_bufferFormatChanged(slot: int, format: cint) {.exportc: "miqt_exec_callback_QCameraImageCapture_bufferFormatChanged".} =
  let nimfunc = cast[ptr QCameraImageCapturebufferFormatChangedSlot](cast[pointer](slot))
  let slotval1 = cint(format)

  nimfunc[](slotval1)

proc onbufferFormatChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturebufferFormatChangedSlot) =
  var tmp = new QCameraImageCapturebufferFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_bufferFormatChanged(self.h, cast[int](addr tmp[]))

proc captureDestinationChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, destination: cint): void =
  fcQCameraImageCapture_captureDestinationChanged(self.h, cint(destination))

type QCameraImageCapturecaptureDestinationChangedSlot* = proc(destination: cint)
proc miqt_exec_callback_cQCameraImageCapture_captureDestinationChanged(slot: int, destination: cint) {.exportc: "miqt_exec_callback_QCameraImageCapture_captureDestinationChanged".} =
  let nimfunc = cast[ptr QCameraImageCapturecaptureDestinationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(destination)

  nimfunc[](slotval1)

proc oncaptureDestinationChanged*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCapturecaptureDestinationChangedSlot) =
  var tmp = new QCameraImageCapturecaptureDestinationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_captureDestinationChanged(self.h, cast[int](addr tmp[]))

proc imageExposed*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint): void =
  fcQCameraImageCapture_imageExposed(self.h, id)

type QCameraImageCaptureimageExposedSlot* = proc(id: cint)
proc miqt_exec_callback_cQCameraImageCapture_imageExposed(slot: int, id: cint) {.exportc: "miqt_exec_callback_QCameraImageCapture_imageExposed".} =
  let nimfunc = cast[ptr QCameraImageCaptureimageExposedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc onimageExposed*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageExposedSlot) =
  var tmp = new QCameraImageCaptureimageExposedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]))

proc imageCaptured*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, preview: gen_qimage_types.QImage): void =
  fcQCameraImageCapture_imageCaptured(self.h, id, preview.h)

type QCameraImageCaptureimageCapturedSlot* = proc(id: cint, preview: gen_qimage_types.QImage)
proc miqt_exec_callback_cQCameraImageCapture_imageCaptured(slot: int, id: cint, preview: pointer) {.exportc: "miqt_exec_callback_QCameraImageCapture_imageCaptured".} =
  let nimfunc = cast[ptr QCameraImageCaptureimageCapturedSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage_types.QImage(h: preview)

  nimfunc[](slotval1, slotval2)

proc onimageCaptured*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageCapturedSlot) =
  var tmp = new QCameraImageCaptureimageCapturedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]))

proc imageMetadataAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, key: string, value: gen_qvariant_types.QVariant): void =
  fcQCameraImageCapture_imageMetadataAvailable(self.h, id, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QCameraImageCaptureimageMetadataAvailableSlot* = proc(id: cint, key: string, value: gen_qvariant_types.QVariant)
proc miqt_exec_callback_cQCameraImageCapture_imageMetadataAvailable(slot: int, id: cint, key: struct_miqt_string, value: pointer) {.exportc: "miqt_exec_callback_QCameraImageCapture_imageMetadataAvailable".} =
  let nimfunc = cast[ptr QCameraImageCaptureimageMetadataAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval2 = vkeyx_ret

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2, slotval3)

proc onimageMetadataAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageMetadataAvailableSlot) =
  var tmp = new QCameraImageCaptureimageMetadataAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]))

proc imageAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQCameraImageCapture_imageAvailable(self.h, id, frame.h)

type QCameraImageCaptureimageAvailableSlot* = proc(id: cint, frame: gen_qvideoframe_types.QVideoFrame)
proc miqt_exec_callback_cQCameraImageCapture_imageAvailable(slot: int, id: cint, frame: pointer) {.exportc: "miqt_exec_callback_QCameraImageCapture_imageAvailable".} =
  let nimfunc = cast[ptr QCameraImageCaptureimageAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe_types.QVideoFrame(h: frame)

  nimfunc[](slotval1, slotval2)

proc onimageAvailable*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageAvailableSlot) =
  var tmp = new QCameraImageCaptureimageAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]))

proc imageSaved*(self: gen_qcameraimagecapture_types.QCameraImageCapture, id: cint, fileName: string): void =
  fcQCameraImageCapture_imageSaved(self.h, id, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

type QCameraImageCaptureimageSavedSlot* = proc(id: cint, fileName: string)
proc miqt_exec_callback_cQCameraImageCapture_imageSaved(slot: int, id: cint, fileName: struct_miqt_string) {.exportc: "miqt_exec_callback_QCameraImageCapture_imageSaved".} =
  let nimfunc = cast[ptr QCameraImageCaptureimageSavedSlot](cast[pointer](slot))
  let slotval1 = id

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret

  nimfunc[](slotval1, slotval2)

proc onimageSaved*(self: gen_qcameraimagecapture_types.QCameraImageCapture, slot: QCameraImageCaptureimageSavedSlot) =
  var tmp = new QCameraImageCaptureimageSavedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageCapture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimagecapture_types.QCameraImageCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageCapture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings_types.QImageEncoderSettings): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraImageCapture_supportedResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc supportedResolutions*(self: gen_qcameraimagecapture_types.QCameraImageCapture, settings: gen_qmediaencodersettings_types.QImageEncoderSettings, continuous: ptr bool): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraImageCapture_supportedResolutions2(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc capture*(self: gen_qcameraimagecapture_types.QCameraImageCapture, location: string): cint =
  fcQCameraImageCapture_capture1(self.h, struct_miqt_string(data: location, len: csize_t(len(location))))

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
type QCameraImageCaptureVTable* = object
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
proc QCameraImageCapturemetaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCapture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQCameraImageCapture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QCameraImageCapturemetacast*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cstring): pointer =
  fcQCameraImageCapture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCameraImageCapture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCameraImageCapturemetacall*(self: gen_qcameraimagecapture_types.QCameraImageCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCameraImageCapture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCameraImageCapturemediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraImageCapture_virtualbase_mediaObject(self.h))

proc miqt_exec_callback_cQCameraImageCapture_mediaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.h

proc QCameraImageCapturesetMediaObject*(self: gen_qcameraimagecapture_types.QCameraImageCapture, mediaObject: gen_qmediaobject_types.QMediaObject): bool =
  fcQCameraImageCapture_virtualbase_setMediaObject(self.h, mediaObject.h)

proc miqt_exec_callback_cQCameraImageCapture_setMediaObject(vtbl: pointer, self: pointer, mediaObject: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: mediaObject)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QCameraImageCaptureevent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraImageCapture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQCameraImageCapture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCameraImageCaptureeventFilter*(self: gen_qcameraimagecapture_types.QCameraImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCameraImageCapture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCameraImageCapturetimerEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCameraImageCapture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraImageCapture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QCameraImageCapturechildEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCameraImageCapture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraImageCapture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QCameraImageCapturecustomEvent*(self: gen_qcameraimagecapture_types.QCameraImageCapture, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraImageCapture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraImageCapture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QCameraImageCaptureconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraImageCapture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCameraImageCapture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QCameraImageCapturedisconnectNotify*(self: gen_qcameraimagecapture_types.QCameraImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraImageCapture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCameraImageCapture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraImageCaptureVTable](vtbl)
  let self = QCameraImageCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture,
    mediaObject: gen_qmediaobject_types.QMediaObject,
    vtbl: ref QCameraImageCaptureVTable = nil): gen_qcameraimagecapture_types.QCameraImageCapture =
  let vtbl = if vtbl == nil: new QCameraImageCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraImageCaptureVTable, _: ptr cQCameraImageCapture) {.cdecl.} =
    let vtbl = cast[ref QCameraImageCaptureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCameraImageCapture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCameraImageCapture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCameraImageCapture_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQCameraImageCapture_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQCameraImageCapture_setMediaObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCameraImageCapture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCameraImageCapture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCameraImageCapture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCameraImageCapture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCameraImageCapture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCameraImageCapture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCameraImageCapture_disconnectNotify
  gen_qcameraimagecapture_types.QCameraImageCapture(h: fcQCameraImageCapture_new(addr(vtbl[]), mediaObject.h))

proc create*(T: type gen_qcameraimagecapture_types.QCameraImageCapture,
    mediaObject: gen_qmediaobject_types.QMediaObject, parent: gen_qobject_types.QObject,
    vtbl: ref QCameraImageCaptureVTable = nil): gen_qcameraimagecapture_types.QCameraImageCapture =
  let vtbl = if vtbl == nil: new QCameraImageCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraImageCaptureVTable, _: ptr cQCameraImageCapture) {.cdecl.} =
    let vtbl = cast[ref QCameraImageCaptureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCameraImageCapture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCameraImageCapture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCameraImageCapture_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQCameraImageCapture_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQCameraImageCapture_setMediaObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCameraImageCapture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCameraImageCapture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCameraImageCapture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCameraImageCapture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCameraImageCapture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCameraImageCapture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCameraImageCapture_disconnectNotify
  gen_qcameraimagecapture_types.QCameraImageCapture(h: fcQCameraImageCapture_new2(addr(vtbl[]), mediaObject.h, parent.h))

proc staticMetaObject*(_: type gen_qcameraimagecapture_types.QCameraImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageCapture_staticMetaObject())
proc delete*(self: gen_qcameraimagecapture_types.QCameraImageCapture) =
  fcQCameraImageCapture_delete(self.h)
