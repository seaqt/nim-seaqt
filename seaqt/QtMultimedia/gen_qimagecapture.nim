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


{.compile("gen_qimagecapture.cpp", QtMultimediaCFlags).}


type QImageCaptureErrorEnum* = distinct cint
template NoError*(_: type QImageCaptureErrorEnum): untyped = 0
template NotReadyError*(_: type QImageCaptureErrorEnum): untyped = 1
template ResourceError*(_: type QImageCaptureErrorEnum): untyped = 2
template OutOfSpaceError*(_: type QImageCaptureErrorEnum): untyped = 3
template NotSupportedFeatureError*(_: type QImageCaptureErrorEnum): untyped = 4
template FormatError*(_: type QImageCaptureErrorEnum): untyped = 5


type QImageCaptureQualityEnum* = distinct cint
template VeryLowQuality*(_: type QImageCaptureQualityEnum): untyped = 0
template LowQuality*(_: type QImageCaptureQualityEnum): untyped = 1
template NormalQuality*(_: type QImageCaptureQualityEnum): untyped = 2
template HighQuality*(_: type QImageCaptureQualityEnum): untyped = 3
template VeryHighQuality*(_: type QImageCaptureQualityEnum): untyped = 4


type QImageCaptureFileFormatEnum* = distinct cint
template UnspecifiedFormat*(_: type QImageCaptureFileFormatEnum): untyped = 0
template JPEG*(_: type QImageCaptureFileFormatEnum): untyped = 1
template PNG*(_: type QImageCaptureFileFormatEnum): untyped = 2
template WebP*(_: type QImageCaptureFileFormatEnum): untyped = 3
template Tiff*(_: type QImageCaptureFileFormatEnum): untyped = 4
template LastFileFormat*(_: type QImageCaptureFileFormatEnum): untyped = 4


import ./gen_qimagecapture_types
export gen_qimagecapture_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qimage_types,
  ./gen_qmediacapturesession_types,
  ./gen_qmediametadata_types,
  ./gen_qvideoframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qimage_types,
  gen_qmediacapturesession_types,
  gen_qmediametadata_types,
  gen_qvideoframe_types

type cQImageCapture*{.exportc: "QImageCapture", incompleteStruct.} = object

proc fcQImageCapture_metaObject(self: pointer): pointer {.importc: "QImageCapture_metaObject".}
proc fcQImageCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageCapture_metacast".}
proc fcQImageCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageCapture_metacall".}
proc fcQImageCapture_tr(s: cstring): struct_miqt_string {.importc: "QImageCapture_tr".}
proc fcQImageCapture_isAvailable(self: pointer): bool {.importc: "QImageCapture_isAvailable".}
proc fcQImageCapture_captureSession(self: pointer): pointer {.importc: "QImageCapture_captureSession".}
proc fcQImageCapture_error(self: pointer): cint {.importc: "QImageCapture_error".}
proc fcQImageCapture_errorString(self: pointer): struct_miqt_string {.importc: "QImageCapture_errorString".}
proc fcQImageCapture_isReadyForCapture(self: pointer): bool {.importc: "QImageCapture_isReadyForCapture".}
proc fcQImageCapture_fileFormat(self: pointer): cint {.importc: "QImageCapture_fileFormat".}
proc fcQImageCapture_setFileFormat(self: pointer, format: cint): void {.importc: "QImageCapture_setFileFormat".}
proc fcQImageCapture_supportedFormats(): struct_miqt_array {.importc: "QImageCapture_supportedFormats".}
proc fcQImageCapture_fileFormatName(c: cint): struct_miqt_string {.importc: "QImageCapture_fileFormatName".}
proc fcQImageCapture_fileFormatDescription(c: cint): struct_miqt_string {.importc: "QImageCapture_fileFormatDescription".}
proc fcQImageCapture_resolution(self: pointer): pointer {.importc: "QImageCapture_resolution".}
proc fcQImageCapture_setResolution(self: pointer, resolution: pointer): void {.importc: "QImageCapture_setResolution".}
proc fcQImageCapture_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QImageCapture_setResolution2".}
proc fcQImageCapture_quality(self: pointer): cint {.importc: "QImageCapture_quality".}
proc fcQImageCapture_setQuality(self: pointer, quality: cint): void {.importc: "QImageCapture_setQuality".}
proc fcQImageCapture_metaData(self: pointer): pointer {.importc: "QImageCapture_metaData".}
proc fcQImageCapture_setMetaData(self: pointer, metaData: pointer): void {.importc: "QImageCapture_setMetaData".}
proc fcQImageCapture_addMetaData(self: pointer, metaData: pointer): void {.importc: "QImageCapture_addMetaData".}
proc fcQImageCapture_captureToFile(self: pointer): cint {.importc: "QImageCapture_captureToFile".}
proc fcQImageCapture_capture(self: pointer): cint {.importc: "QImageCapture_capture".}
proc fcQImageCapture_errorChanged(self: pointer): void {.importc: "QImageCapture_errorChanged".}
proc fcQImageCapture_connect_errorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_errorChanged".}
proc fcQImageCapture_errorOccurred(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QImageCapture_errorOccurred".}
proc fcQImageCapture_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_errorOccurred".}
proc fcQImageCapture_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QImageCapture_readyForCaptureChanged".}
proc fcQImageCapture_connect_readyForCaptureChanged(self: pointer, slot: int, callback: proc (slot: int, ready: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_readyForCaptureChanged".}
proc fcQImageCapture_metaDataChanged(self: pointer): void {.importc: "QImageCapture_metaDataChanged".}
proc fcQImageCapture_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_metaDataChanged".}
proc fcQImageCapture_fileFormatChanged(self: pointer): void {.importc: "QImageCapture_fileFormatChanged".}
proc fcQImageCapture_connect_fileFormatChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_fileFormatChanged".}
proc fcQImageCapture_qualityChanged(self: pointer): void {.importc: "QImageCapture_qualityChanged".}
proc fcQImageCapture_connect_qualityChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_qualityChanged".}
proc fcQImageCapture_resolutionChanged(self: pointer): void {.importc: "QImageCapture_resolutionChanged".}
proc fcQImageCapture_connect_resolutionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_resolutionChanged".}
proc fcQImageCapture_imageExposed(self: pointer, id: cint): void {.importc: "QImageCapture_imageExposed".}
proc fcQImageCapture_connect_imageExposed(self: pointer, slot: int, callback: proc (slot: int, id: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_imageExposed".}
proc fcQImageCapture_imageCaptured(self: pointer, id: cint, preview: pointer): void {.importc: "QImageCapture_imageCaptured".}
proc fcQImageCapture_connect_imageCaptured(self: pointer, slot: int, callback: proc (slot: int, id: cint, preview: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_imageCaptured".}
proc fcQImageCapture_imageMetadataAvailable(self: pointer, id: cint, metaData: pointer): void {.importc: "QImageCapture_imageMetadataAvailable".}
proc fcQImageCapture_connect_imageMetadataAvailable(self: pointer, slot: int, callback: proc (slot: int, id: cint, metaData: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_imageMetadataAvailable".}
proc fcQImageCapture_imageAvailable(self: pointer, id: cint, frame: pointer): void {.importc: "QImageCapture_imageAvailable".}
proc fcQImageCapture_connect_imageAvailable(self: pointer, slot: int, callback: proc (slot: int, id: cint, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_imageAvailable".}
proc fcQImageCapture_imageSaved(self: pointer, id: cint, fileName: struct_miqt_string): void {.importc: "QImageCapture_imageSaved".}
proc fcQImageCapture_connect_imageSaved(self: pointer, slot: int, callback: proc (slot: int, id: cint, fileName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QImageCapture_connect_imageSaved".}
proc fcQImageCapture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageCapture_tr2".}
proc fcQImageCapture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageCapture_tr3".}
proc fcQImageCapture_captureToFile1(self: pointer, location: struct_miqt_string): cint {.importc: "QImageCapture_captureToFile1".}
proc fcQImageCapture_vtbl(self: pointer): pointer {.importc: "QImageCapture_vtbl".}
proc fcQImageCapture_vdata(self: pointer): pointer {.importc: "QImageCapture_vdata".}

type cQImageCaptureVTable {.pure.} = object
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
proc fcQImageCapture_virtualbase_metaObject(self: pointer): pointer {.importc: "QImageCapture_virtualbase_metaObject".}
proc fcQImageCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageCapture_virtualbase_metacast".}
proc fcQImageCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageCapture_virtualbase_metacall".}
proc fcQImageCapture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QImageCapture_virtualbase_event".}
proc fcQImageCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QImageCapture_virtualbase_eventFilter".}
proc fcQImageCapture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QImageCapture_virtualbase_timerEvent".}
proc fcQImageCapture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QImageCapture_virtualbase_childEvent".}
proc fcQImageCapture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QImageCapture_virtualbase_customEvent".}
proc fcQImageCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QImageCapture_virtualbase_connectNotify".}
proc fcQImageCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QImageCapture_virtualbase_disconnectNotify".}
proc fcQImageCapture_protectedbase_sender(self: pointer): pointer {.importc: "QImageCapture_protectedbase_sender".}
proc fcQImageCapture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QImageCapture_protectedbase_senderSignalIndex".}
proc fcQImageCapture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QImageCapture_protectedbase_receivers".}
proc fcQImageCapture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QImageCapture_protectedbase_isSignalConnected".}
proc fcQImageCapture_new(vtbl, vdata: pointer): ptr cQImageCapture {.importc: "QImageCapture_new".}
proc fcQImageCapture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQImageCapture {.importc: "QImageCapture_new2".}
proc fcQImageCapture_staticMetaObject(): pointer {.importc: "QImageCapture_staticMetaObject".}

proc metaObject*(self: gen_qimagecapture_types.QImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageCapture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qimagecapture_types.QImageCapture, param1: cstring): pointer =
  fcQImageCapture_metacast(self.h, param1)

proc metacall*(self: gen_qimagecapture_types.QImageCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQImageCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qimagecapture_types.QImageCapture, s: cstring): string =
  let v_ms = fcQImageCapture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qimagecapture_types.QImageCapture): bool =
  fcQImageCapture_isAvailable(self.h)

proc captureSession*(self: gen_qimagecapture_types.QImageCapture): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQImageCapture_captureSession(self.h), owned: false)

proc error*(self: gen_qimagecapture_types.QImageCapture): cint =
  cint(fcQImageCapture_error(self.h))

proc errorString*(self: gen_qimagecapture_types.QImageCapture): string =
  let v_ms = fcQImageCapture_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: gen_qimagecapture_types.QImageCapture): bool =
  fcQImageCapture_isReadyForCapture(self.h)

proc fileFormat*(self: gen_qimagecapture_types.QImageCapture): cint =
  cint(fcQImageCapture_fileFormat(self.h))

proc setFileFormat*(self: gen_qimagecapture_types.QImageCapture, format: cint): void =
  fcQImageCapture_setFileFormat(self.h, cint(format))

proc supportedFormats*(_: type gen_qimagecapture_types.QImageCapture): seq[cint] =
  var v_ma = fcQImageCapture_supportedFormats()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc fileFormatName*(_: type gen_qimagecapture_types.QImageCapture, c: cint): string =
  let v_ms = fcQImageCapture_fileFormatName(cint(c))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileFormatDescription*(_: type gen_qimagecapture_types.QImageCapture, c: cint): string =
  let v_ms = fcQImageCapture_fileFormatDescription(cint(c))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc resolution*(self: gen_qimagecapture_types.QImageCapture): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQImageCapture_resolution(self.h), owned: true)

proc setResolution*(self: gen_qimagecapture_types.QImageCapture, resolution: gen_qsize_types.QSize): void =
  fcQImageCapture_setResolution(self.h, resolution.h)

proc setResolution*(self: gen_qimagecapture_types.QImageCapture, width: cint, height: cint): void =
  fcQImageCapture_setResolution2(self.h, width, height)

proc quality*(self: gen_qimagecapture_types.QImageCapture): cint =
  cint(fcQImageCapture_quality(self.h))

proc setQuality*(self: gen_qimagecapture_types.QImageCapture, quality: cint): void =
  fcQImageCapture_setQuality(self.h, cint(quality))

proc metaData*(self: gen_qimagecapture_types.QImageCapture): gen_qmediametadata_types.QMediaMetaData =
  gen_qmediametadata_types.QMediaMetaData(h: fcQImageCapture_metaData(self.h), owned: true)

proc setMetaData*(self: gen_qimagecapture_types.QImageCapture, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQImageCapture_setMetaData(self.h, metaData.h)

proc addMetaData*(self: gen_qimagecapture_types.QImageCapture, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQImageCapture_addMetaData(self.h, metaData.h)

proc captureToFile*(self: gen_qimagecapture_types.QImageCapture): cint =
  fcQImageCapture_captureToFile(self.h)

proc capture*(self: gen_qimagecapture_types.QImageCapture): cint =
  fcQImageCapture_capture(self.h)

proc errorChanged*(self: gen_qimagecapture_types.QImageCapture): void =
  fcQImageCapture_errorChanged(self.h)

type QImageCaptureerrorChangedSlot* = proc()
proc fcQImageCapture_slot_callback_errorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureerrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQImageCapture_slot_callback_errorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureerrorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorChanged*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureerrorChangedSlot) =
  var tmp = new QImageCaptureerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_errorChanged(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_errorChanged, fcQImageCapture_slot_callback_errorChanged_release)

proc errorOccurred*(self: gen_qimagecapture_types.QImageCapture, id: cint, error: cint, errorString: openArray[char]): void =
  fcQImageCapture_errorOccurred(self.h, id, cint(error), struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QImageCaptureerrorOccurredSlot* = proc(id: cint, error: cint, errorString: openArray[char])
proc fcQImageCapture_slot_callback_errorOccurred(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc fcQImageCapture_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorOccurred*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureerrorOccurredSlot) =
  var tmp = new QImageCaptureerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_errorOccurred(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_errorOccurred, fcQImageCapture_slot_callback_errorOccurred_release)

proc readyForCaptureChanged*(self: gen_qimagecapture_types.QImageCapture, ready: bool): void =
  fcQImageCapture_readyForCaptureChanged(self.h, ready)

type QImageCapturereadyForCaptureChangedSlot* = proc(ready: bool)
proc fcQImageCapture_slot_callback_readyForCaptureChanged(slot: int, ready: bool) {.cdecl.} =
  let nimfunc = cast[ptr QImageCapturereadyForCaptureChangedSlot](cast[pointer](slot))
  let slotval1 = ready

  nimfunc[](slotval1)

proc fcQImageCapture_slot_callback_readyForCaptureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCapturereadyForCaptureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReadyForCaptureChanged*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturereadyForCaptureChangedSlot) =
  var tmp = new QImageCapturereadyForCaptureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_readyForCaptureChanged, fcQImageCapture_slot_callback_readyForCaptureChanged_release)

proc metaDataChanged*(self: gen_qimagecapture_types.QImageCapture): void =
  fcQImageCapture_metaDataChanged(self.h)

type QImageCapturemetaDataChangedSlot* = proc()
proc fcQImageCapture_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QImageCapturemetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQImageCapture_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCapturemetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMetaDataChanged*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturemetaDataChangedSlot) =
  var tmp = new QImageCapturemetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_metaDataChanged(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_metaDataChanged, fcQImageCapture_slot_callback_metaDataChanged_release)

proc fileFormatChanged*(self: gen_qimagecapture_types.QImageCapture): void =
  fcQImageCapture_fileFormatChanged(self.h)

type QImageCapturefileFormatChangedSlot* = proc()
proc fcQImageCapture_slot_callback_fileFormatChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QImageCapturefileFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQImageCapture_slot_callback_fileFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCapturefileFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFileFormatChanged*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturefileFormatChangedSlot) =
  var tmp = new QImageCapturefileFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_fileFormatChanged(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_fileFormatChanged, fcQImageCapture_slot_callback_fileFormatChanged_release)

proc qualityChanged*(self: gen_qimagecapture_types.QImageCapture): void =
  fcQImageCapture_qualityChanged(self.h)

type QImageCapturequalityChangedSlot* = proc()
proc fcQImageCapture_slot_callback_qualityChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QImageCapturequalityChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQImageCapture_slot_callback_qualityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCapturequalityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onQualityChanged*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCapturequalityChangedSlot) =
  var tmp = new QImageCapturequalityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_qualityChanged(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_qualityChanged, fcQImageCapture_slot_callback_qualityChanged_release)

proc resolutionChanged*(self: gen_qimagecapture_types.QImageCapture): void =
  fcQImageCapture_resolutionChanged(self.h)

type QImageCaptureresolutionChangedSlot* = proc()
proc fcQImageCapture_slot_callback_resolutionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureresolutionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQImageCapture_slot_callback_resolutionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureresolutionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResolutionChanged*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureresolutionChangedSlot) =
  var tmp = new QImageCaptureresolutionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_resolutionChanged(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_resolutionChanged, fcQImageCapture_slot_callback_resolutionChanged_release)

proc imageExposed*(self: gen_qimagecapture_types.QImageCapture, id: cint): void =
  fcQImageCapture_imageExposed(self.h, id)

type QImageCaptureimageExposedSlot* = proc(id: cint)
proc fcQImageCapture_slot_callback_imageExposed(slot: int, id: cint) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureimageExposedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc fcQImageCapture_slot_callback_imageExposed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureimageExposedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageExposed*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureimageExposedSlot) =
  var tmp = new QImageCaptureimageExposedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_imageExposed(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_imageExposed, fcQImageCapture_slot_callback_imageExposed_release)

proc imageCaptured*(self: gen_qimagecapture_types.QImageCapture, id: cint, preview: gen_qimage_types.QImage): void =
  fcQImageCapture_imageCaptured(self.h, id, preview.h)

type QImageCaptureimageCapturedSlot* = proc(id: cint, preview: gen_qimage_types.QImage)
proc fcQImageCapture_slot_callback_imageCaptured(slot: int, id: cint, preview: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureimageCapturedSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qimage_types.QImage(h: preview, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQImageCapture_slot_callback_imageCaptured_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureimageCapturedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageCaptured*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureimageCapturedSlot) =
  var tmp = new QImageCaptureimageCapturedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_imageCaptured(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_imageCaptured, fcQImageCapture_slot_callback_imageCaptured_release)

proc imageMetadataAvailable*(self: gen_qimagecapture_types.QImageCapture, id: cint, metaData: gen_qmediametadata_types.QMediaMetaData): void =
  fcQImageCapture_imageMetadataAvailable(self.h, id, metaData.h)

type QImageCaptureimageMetadataAvailableSlot* = proc(id: cint, metaData: gen_qmediametadata_types.QMediaMetaData)
proc fcQImageCapture_slot_callback_imageMetadataAvailable(slot: int, id: cint, metaData: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureimageMetadataAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qmediametadata_types.QMediaMetaData(h: metaData, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQImageCapture_slot_callback_imageMetadataAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureimageMetadataAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageMetadataAvailable*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureimageMetadataAvailableSlot) =
  var tmp = new QImageCaptureimageMetadataAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_imageMetadataAvailable, fcQImageCapture_slot_callback_imageMetadataAvailable_release)

proc imageAvailable*(self: gen_qimagecapture_types.QImageCapture, id: cint, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQImageCapture_imageAvailable(self.h, id, frame.h)

type QImageCaptureimageAvailableSlot* = proc(id: cint, frame: gen_qvideoframe_types.QVideoFrame)
proc fcQImageCapture_slot_callback_imageAvailable(slot: int, id: cint, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureimageAvailableSlot](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = gen_qvideoframe_types.QVideoFrame(h: frame, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQImageCapture_slot_callback_imageAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureimageAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageAvailable*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureimageAvailableSlot) =
  var tmp = new QImageCaptureimageAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_imageAvailable(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_imageAvailable, fcQImageCapture_slot_callback_imageAvailable_release)

proc imageSaved*(self: gen_qimagecapture_types.QImageCapture, id: cint, fileName: openArray[char]): void =
  fcQImageCapture_imageSaved(self.h, id, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

type QImageCaptureimageSavedSlot* = proc(id: cint, fileName: openArray[char])
proc fcQImageCapture_slot_callback_imageSaved(slot: int, id: cint, fileName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QImageCaptureimageSavedSlot](cast[pointer](slot))
  let slotval1 = id

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret

  nimfunc[](slotval1, slotval2)

proc fcQImageCapture_slot_callback_imageSaved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QImageCaptureimageSavedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onImageSaved*(self: gen_qimagecapture_types.QImageCapture, slot: QImageCaptureimageSavedSlot) =
  var tmp = new QImageCaptureimageSavedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQImageCapture_connect_imageSaved(self.h, cast[int](addr tmp[]), fcQImageCapture_slot_callback_imageSaved, fcQImageCapture_slot_callback_imageSaved_release)

proc tr*(_: type gen_qimagecapture_types.QImageCapture, s: cstring, c: cstring): string =
  let v_ms = fcQImageCapture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qimagecapture_types.QImageCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageCapture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc captureToFile*(self: gen_qimagecapture_types.QImageCapture, location: openArray[char]): cint =
  fcQImageCapture_captureToFile1(self.h, struct_miqt_string(data: if len(location) > 0: addr location[0] else: nil, len: csize_t(len(location))))

type QImageCapturemetaObjectProc* = proc(self: QImageCapture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QImageCapturemetacastProc* = proc(self: QImageCapture, param1: cstring): pointer {.raises: [], gcsafe.}
type QImageCapturemetacallProc* = proc(self: QImageCapture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QImageCaptureeventProc* = proc(self: QImageCapture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QImageCaptureeventFilterProc* = proc(self: QImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QImageCapturetimerEventProc* = proc(self: QImageCapture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QImageCapturechildEventProc* = proc(self: QImageCapture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QImageCapturecustomEventProc* = proc(self: QImageCapture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QImageCaptureconnectNotifyProc* = proc(self: QImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QImageCapturedisconnectNotifyProc* = proc(self: QImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QImageCaptureVTable* {.inheritable, pure.} = object
  vtbl: cQImageCaptureVTable
  metaObject*: QImageCapturemetaObjectProc
  metacast*: QImageCapturemetacastProc
  metacall*: QImageCapturemetacallProc
  event*: QImageCaptureeventProc
  eventFilter*: QImageCaptureeventFilterProc
  timerEvent*: QImageCapturetimerEventProc
  childEvent*: QImageCapturechildEventProc
  customEvent*: QImageCapturecustomEventProc
  connectNotify*: QImageCaptureconnectNotifyProc
  disconnectNotify*: QImageCapturedisconnectNotifyProc

proc QImageCapturemetaObject*(self: gen_qimagecapture_types.QImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageCapture_virtualbase_metaObject(self.h), owned: false)

proc QImageCapturemetacast*(self: gen_qimagecapture_types.QImageCapture, param1: cstring): pointer =
  fcQImageCapture_virtualbase_metacast(self.h, param1)

proc QImageCapturemetacall*(self: gen_qimagecapture_types.QImageCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQImageCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QImageCaptureevent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent_types.QEvent): bool =
  fcQImageCapture_virtualbase_event(self.h, event.h)

proc QImageCaptureeventFilter*(self: gen_qimagecapture_types.QImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQImageCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QImageCapturetimerEvent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQImageCapture_virtualbase_timerEvent(self.h, event.h)

proc QImageCapturechildEvent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQImageCapture_virtualbase_childEvent(self.h, event.h)

proc QImageCapturecustomEvent*(self: gen_qimagecapture_types.QImageCapture, event: gen_qcoreevent_types.QEvent): void =
  fcQImageCapture_virtualbase_customEvent(self.h, event.h)

proc QImageCaptureconnectNotify*(self: gen_qimagecapture_types.QImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQImageCapture_virtualbase_connectNotify(self.h, signal.h)

proc QImageCapturedisconnectNotify*(self: gen_qimagecapture_types.QImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQImageCapture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQImageCapture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageCapture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQImageCapture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQImageCapture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQImageCapture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQImageCapture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQImageCapture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQImageCapture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQImageCapture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQImageCapture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageCaptureVTable](fcQImageCapture_vdata(self))
  let self = QImageCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQImageCapture* {.inheritable.} = ref object of QImageCapture
  vtbl*: cQImageCaptureVTable

method metaObject*(self: VirtualQImageCapture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QImageCapturemetaObject(self[])
method metacast*(self: VirtualQImageCapture, param1: cstring): pointer {.base.} =
  QImageCapturemetacast(self[], param1)
method metacall*(self: VirtualQImageCapture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QImageCapturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQImageCapture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QImageCaptureevent(self[], event)
method eventFilter*(self: VirtualQImageCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QImageCaptureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQImageCapture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QImageCapturetimerEvent(self[], event)
method childEvent*(self: VirtualQImageCapture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QImageCapturechildEvent(self[], event)
method customEvent*(self: VirtualQImageCapture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QImageCapturecustomEvent(self[], event)
method connectNotify*(self: VirtualQImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QImageCaptureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQImageCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QImageCapturedisconnectNotify(self[], signal)

proc fcQImageCapture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageCapture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQImageCapture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQImageCapture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQImageCapture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQImageCapture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQImageCapture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQImageCapture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQImageCapture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQImageCapture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageCapture](fcQImageCapture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qimagecapture_types.QImageCapture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQImageCapture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qimagecapture_types.QImageCapture): cint =
  fcQImageCapture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qimagecapture_types.QImageCapture, signal: cstring): cint =
  fcQImageCapture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qimagecapture_types.QImageCapture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQImageCapture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qimagecapture_types.QImageCapture,
    vtbl: ref QImageCaptureVTable = nil): gen_qimagecapture_types.QImageCapture =
  let vtbl = if vtbl == nil: new QImageCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageCaptureVTable](fcQImageCapture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQImageCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQImageCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQImageCapture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQImageCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQImageCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQImageCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQImageCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQImageCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQImageCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQImageCapture_vtable_callback_disconnectNotify
  gen_qimagecapture_types.QImageCapture(h: fcQImageCapture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qimagecapture_types.QImageCapture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QImageCaptureVTable = nil): gen_qimagecapture_types.QImageCapture =
  let vtbl = if vtbl == nil: new QImageCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageCaptureVTable](fcQImageCapture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQImageCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQImageCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQImageCapture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQImageCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQImageCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQImageCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQImageCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQImageCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQImageCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQImageCapture_vtable_callback_disconnectNotify
  gen_qimagecapture_types.QImageCapture(h: fcQImageCapture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQImageCapture_mvtbl = cQImageCaptureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQImageCapture()[])](self.fcQImageCapture_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQImageCapture_method_callback_metaObject,
  metacast: fcQImageCapture_method_callback_metacast,
  metacall: fcQImageCapture_method_callback_metacall,
  event: fcQImageCapture_method_callback_event,
  eventFilter: fcQImageCapture_method_callback_eventFilter,
  timerEvent: fcQImageCapture_method_callback_timerEvent,
  childEvent: fcQImageCapture_method_callback_childEvent,
  customEvent: fcQImageCapture_method_callback_customEvent,
  connectNotify: fcQImageCapture_method_callback_connectNotify,
  disconnectNotify: fcQImageCapture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qimagecapture_types.QImageCapture,
    inst: VirtualQImageCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImageCapture_new(addr(cQImageCapture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qimagecapture_types.QImageCapture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQImageCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImageCapture_new2(addr(cQImageCapture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qimagecapture_types.QImageCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageCapture_staticMetaObject())
