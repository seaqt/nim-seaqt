import ./qtgui_pkg

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


type QImageIOHandlerImageOptionEnum* = distinct cint
template Size*(_: type QImageIOHandlerImageOptionEnum): untyped = 0
template ClipRect*(_: type QImageIOHandlerImageOptionEnum): untyped = 1
template Description*(_: type QImageIOHandlerImageOptionEnum): untyped = 2
template ScaledClipRect*(_: type QImageIOHandlerImageOptionEnum): untyped = 3
template ScaledSize*(_: type QImageIOHandlerImageOptionEnum): untyped = 4
template CompressionRatio*(_: type QImageIOHandlerImageOptionEnum): untyped = 5
template Gamma*(_: type QImageIOHandlerImageOptionEnum): untyped = 6
template Quality*(_: type QImageIOHandlerImageOptionEnum): untyped = 7
template Name*(_: type QImageIOHandlerImageOptionEnum): untyped = 8
template SubType*(_: type QImageIOHandlerImageOptionEnum): untyped = 9
template IncrementalReading*(_: type QImageIOHandlerImageOptionEnum): untyped = 10
template Endianness*(_: type QImageIOHandlerImageOptionEnum): untyped = 11
template Animation*(_: type QImageIOHandlerImageOptionEnum): untyped = 12
template BackgroundColor*(_: type QImageIOHandlerImageOptionEnum): untyped = 13
template ImageFormat*(_: type QImageIOHandlerImageOptionEnum): untyped = 14
template SupportedSubTypes*(_: type QImageIOHandlerImageOptionEnum): untyped = 15
template OptimizedWrite*(_: type QImageIOHandlerImageOptionEnum): untyped = 16
template ProgressiveScanWrite*(_: type QImageIOHandlerImageOptionEnum): untyped = 17
template ImageTransformation*(_: type QImageIOHandlerImageOptionEnum): untyped = 18
template TransformedByDefault*(_: type QImageIOHandlerImageOptionEnum): untyped = 19


type QImageIOHandlerTransformationEnum* = distinct cint
template TransformationNone*(_: type QImageIOHandlerTransformationEnum): untyped = 0
template TransformationMirror*(_: type QImageIOHandlerTransformationEnum): untyped = 1
template TransformationFlip*(_: type QImageIOHandlerTransformationEnum): untyped = 2
template TransformationRotate180*(_: type QImageIOHandlerTransformationEnum): untyped = 3
template TransformationRotate90*(_: type QImageIOHandlerTransformationEnum): untyped = 4
template TransformationMirrorAndRotate90*(_: type QImageIOHandlerTransformationEnum): untyped = 5
template TransformationFlipAndRotate90*(_: type QImageIOHandlerTransformationEnum): untyped = 6
template TransformationRotate270*(_: type QImageIOHandlerTransformationEnum): untyped = 7


type QImageIOPluginCapabilityEnum* = distinct cint
template CanRead*(_: type QImageIOPluginCapabilityEnum): untyped = 1
template CanWrite*(_: type QImageIOPluginCapabilityEnum): untyped = 2
template CanReadIncremental*(_: type QImageIOPluginCapabilityEnum): untyped = 4


import ./gen_qimageiohandler_types
export gen_qimageiohandler_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qimage_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qimage_types

type cQImageIOHandler*{.exportc: "QImageIOHandler", incompleteStruct.} = object
type cQImageIOPlugin*{.exportc: "QImageIOPlugin", incompleteStruct.} = object

proc fcQImageIOHandler_setDevice(self: pointer, device: pointer): void {.importc: "QImageIOHandler_setDevice".}
proc fcQImageIOHandler_device(self: pointer): pointer {.importc: "QImageIOHandler_device".}
proc fcQImageIOHandler_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormat".}
proc fcQImageIOHandler_setFormatWithFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormatWithFormat".}
proc fcQImageIOHandler_format(self: pointer): struct_miqt_string {.importc: "QImageIOHandler_format".}
proc fcQImageIOHandler_name(self: pointer): struct_miqt_string {.importc: "QImageIOHandler_name".}
proc fcQImageIOHandler_canRead(self: pointer): bool {.importc: "QImageIOHandler_canRead".}
proc fcQImageIOHandler_read(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_read".}
proc fcQImageIOHandler_write(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_write".}
proc fcQImageIOHandler_option(self: pointer, option: cint): pointer {.importc: "QImageIOHandler_option".}
proc fcQImageIOHandler_setOption(self: pointer, option: cint, value: pointer): void {.importc: "QImageIOHandler_setOption".}
proc fcQImageIOHandler_supportsOption(self: pointer, option: cint): bool {.importc: "QImageIOHandler_supportsOption".}
proc fcQImageIOHandler_jumpToNextImage(self: pointer): bool {.importc: "QImageIOHandler_jumpToNextImage".}
proc fcQImageIOHandler_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageIOHandler_jumpToImage".}
proc fcQImageIOHandler_loopCount(self: pointer): cint {.importc: "QImageIOHandler_loopCount".}
proc fcQImageIOHandler_imageCount(self: pointer): cint {.importc: "QImageIOHandler_imageCount".}
proc fcQImageIOHandler_nextImageDelay(self: pointer): cint {.importc: "QImageIOHandler_nextImageDelay".}
proc fcQImageIOHandler_currentImageNumber(self: pointer): cint {.importc: "QImageIOHandler_currentImageNumber".}
proc fcQImageIOHandler_currentImageRect(self: pointer): pointer {.importc: "QImageIOHandler_currentImageRect".}
proc fcQImageIOHandler_vtbl(self: pointer): pointer {.importc: "QImageIOHandler_vtbl".}
proc fcQImageIOHandler_vdata(self: pointer): pointer {.importc: "QImageIOHandler_vdata".}

type cQImageIOHandlerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  name*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  canRead*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(self: pointer, image: pointer): bool {.cdecl, raises: [], gcsafe.}
  write*: proc(self: pointer, image: pointer): bool {.cdecl, raises: [], gcsafe.}
  option*: proc(self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  setOption*: proc(self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  supportsOption*: proc(self: pointer, option: cint): bool {.cdecl, raises: [], gcsafe.}
  jumpToNextImage*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  jumpToImage*: proc(self: pointer, imageNumber: cint): bool {.cdecl, raises: [], gcsafe.}
  loopCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  imageCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  nextImageDelay*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  currentImageNumber*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  currentImageRect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQImageIOHandler_virtualbase_name(self: pointer): struct_miqt_string {.importc: "QImageIOHandler_virtualbase_name".}
proc fcQImageIOHandler_virtualbase_write(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_virtualbase_write".}
proc fcQImageIOHandler_virtualbase_option(self: pointer, option: cint): pointer {.importc: "QImageIOHandler_virtualbase_option".}
proc fcQImageIOHandler_virtualbase_setOption(self: pointer, option: cint, value: pointer): void {.importc: "QImageIOHandler_virtualbase_setOption".}
proc fcQImageIOHandler_virtualbase_supportsOption(self: pointer, option: cint): bool {.importc: "QImageIOHandler_virtualbase_supportsOption".}
proc fcQImageIOHandler_virtualbase_jumpToNextImage(self: pointer): bool {.importc: "QImageIOHandler_virtualbase_jumpToNextImage".}
proc fcQImageIOHandler_virtualbase_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageIOHandler_virtualbase_jumpToImage".}
proc fcQImageIOHandler_virtualbase_loopCount(self: pointer): cint {.importc: "QImageIOHandler_virtualbase_loopCount".}
proc fcQImageIOHandler_virtualbase_imageCount(self: pointer): cint {.importc: "QImageIOHandler_virtualbase_imageCount".}
proc fcQImageIOHandler_virtualbase_nextImageDelay(self: pointer): cint {.importc: "QImageIOHandler_virtualbase_nextImageDelay".}
proc fcQImageIOHandler_virtualbase_currentImageNumber(self: pointer): cint {.importc: "QImageIOHandler_virtualbase_currentImageNumber".}
proc fcQImageIOHandler_virtualbase_currentImageRect(self: pointer): pointer {.importc: "QImageIOHandler_virtualbase_currentImageRect".}
proc fcQImageIOHandler_new(vtbl, vdata: pointer): ptr cQImageIOHandler {.importc: "QImageIOHandler_new".}
proc fcQImageIOPlugin_metaObject(self: pointer): pointer {.importc: "QImageIOPlugin_metaObject".}
proc fcQImageIOPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageIOPlugin_metacast".}
proc fcQImageIOPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageIOPlugin_metacall".}
proc fcQImageIOPlugin_tr(s: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr".}
proc fcQImageIOPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QImageIOPlugin_trUtf8".}
proc fcQImageIOPlugin_capabilities(self: pointer, device: pointer, format: struct_miqt_string): cint {.importc: "QImageIOPlugin_capabilities".}
proc fcQImageIOPlugin_createX(self: pointer, device: pointer, format: struct_miqt_string): pointer {.importc: "QImageIOPlugin_create".}
proc fcQImageIOPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr2".}
proc fcQImageIOPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageIOPlugin_tr3".}
proc fcQImageIOPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageIOPlugin_trUtf82".}
proc fcQImageIOPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageIOPlugin_trUtf83".}
proc fcQImageIOPlugin_vtbl(self: pointer): pointer {.importc: "QImageIOPlugin_vtbl".}
proc fcQImageIOPlugin_vdata(self: pointer): pointer {.importc: "QImageIOPlugin_vdata".}

type cQImageIOPluginVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  capabilities*: proc(self: pointer, device: pointer, format: struct_miqt_string): cint {.cdecl, raises: [], gcsafe.}
  createX*: proc(self: pointer, device: pointer, format: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQImageIOPlugin_virtualbase_metaObject(self: pointer): pointer {.importc: "QImageIOPlugin_virtualbase_metaObject".}
proc fcQImageIOPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageIOPlugin_virtualbase_metacast".}
proc fcQImageIOPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageIOPlugin_virtualbase_metacall".}
proc fcQImageIOPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QImageIOPlugin_virtualbase_event".}
proc fcQImageIOPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QImageIOPlugin_virtualbase_eventFilter".}
proc fcQImageIOPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QImageIOPlugin_virtualbase_timerEvent".}
proc fcQImageIOPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QImageIOPlugin_virtualbase_childEvent".}
proc fcQImageIOPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QImageIOPlugin_virtualbase_customEvent".}
proc fcQImageIOPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QImageIOPlugin_virtualbase_connectNotify".}
proc fcQImageIOPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QImageIOPlugin_virtualbase_disconnectNotify".}
proc fcQImageIOPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QImageIOPlugin_protectedbase_sender".}
proc fcQImageIOPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QImageIOPlugin_protectedbase_senderSignalIndex".}
proc fcQImageIOPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QImageIOPlugin_protectedbase_receivers".}
proc fcQImageIOPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QImageIOPlugin_protectedbase_isSignalConnected".}
proc fcQImageIOPlugin_new(vtbl, vdata: pointer): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new".}
proc fcQImageIOPlugin_new2(vtbl, vdata: pointer, parent: pointer): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new2".}
proc fcQImageIOPlugin_staticMetaObject(): pointer {.importc: "QImageIOPlugin_staticMetaObject".}

proc setDevice*(self: gen_qimageiohandler_types.QImageIOHandler, device: gen_qiodevice_types.QIODevice): void =
  fcQImageIOHandler_setDevice(self.h, device.h)

proc device*(self: gen_qimageiohandler_types.QImageIOHandler): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQImageIOHandler_device(self.h), owned: false)

proc setFormat*(self: gen_qimageiohandler_types.QImageIOHandler, format: openArray[byte]): void =
  fcQImageIOHandler_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc setFormat2*(self: gen_qimageiohandler_types.QImageIOHandler, format: openArray[byte]): void =
  fcQImageIOHandler_setFormatWithFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qimageiohandler_types.QImageIOHandler): seq[byte] =
  var v_bytearray = fcQImageIOHandler_format(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc name*(self: gen_qimageiohandler_types.QImageIOHandler): seq[byte] =
  var v_bytearray = fcQImageIOHandler_name(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc canRead*(self: gen_qimageiohandler_types.QImageIOHandler): bool =
  fcQImageIOHandler_canRead(self.h)

proc read*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_read(self.h, image.h)

proc write*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_write(self.h, image.h)

proc option*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImageIOHandler_option(self.h, cint(option)), owned: true)

proc setOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQImageIOHandler_setOption(self.h, cint(option), value.h)

proc supportsOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): bool =
  fcQImageIOHandler_supportsOption(self.h, cint(option))

proc jumpToNextImage*(self: gen_qimageiohandler_types.QImageIOHandler): bool =
  fcQImageIOHandler_jumpToNextImage(self.h)

proc jumpToImage*(self: gen_qimageiohandler_types.QImageIOHandler, imageNumber: cint): bool =
  fcQImageIOHandler_jumpToImage(self.h, imageNumber)

proc loopCount*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_loopCount(self.h)

proc imageCount*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_imageCount(self.h)

proc nextImageDelay*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_nextImageDelay(self.h)

proc currentImageNumber*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_currentImageNumber(self.h)

proc currentImageRect*(self: gen_qimageiohandler_types.QImageIOHandler): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageIOHandler_currentImageRect(self.h), owned: true)

type QImageIOHandlernameProc* = proc(self: QImageIOHandler): seq[byte] {.raises: [], gcsafe.}
type QImageIOHandlercanReadProc* = proc(self: QImageIOHandler): bool {.raises: [], gcsafe.}
type QImageIOHandlerreadProc* = proc(self: QImageIOHandler, image: gen_qimage_types.QImage): bool {.raises: [], gcsafe.}
type QImageIOHandlerwriteProc* = proc(self: QImageIOHandler, image: gen_qimage_types.QImage): bool {.raises: [], gcsafe.}
type QImageIOHandleroptionProc* = proc(self: QImageIOHandler, option: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QImageIOHandlersetOptionProc* = proc(self: QImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QImageIOHandlersupportsOptionProc* = proc(self: QImageIOHandler, option: cint): bool {.raises: [], gcsafe.}
type QImageIOHandlerjumpToNextImageProc* = proc(self: QImageIOHandler): bool {.raises: [], gcsafe.}
type QImageIOHandlerjumpToImageProc* = proc(self: QImageIOHandler, imageNumber: cint): bool {.raises: [], gcsafe.}
type QImageIOHandlerloopCountProc* = proc(self: QImageIOHandler): cint {.raises: [], gcsafe.}
type QImageIOHandlerimageCountProc* = proc(self: QImageIOHandler): cint {.raises: [], gcsafe.}
type QImageIOHandlernextImageDelayProc* = proc(self: QImageIOHandler): cint {.raises: [], gcsafe.}
type QImageIOHandlercurrentImageNumberProc* = proc(self: QImageIOHandler): cint {.raises: [], gcsafe.}
type QImageIOHandlercurrentImageRectProc* = proc(self: QImageIOHandler): gen_qrect_types.QRect {.raises: [], gcsafe.}

type QImageIOHandlerVTable* {.inheritable, pure.} = object
  vtbl: cQImageIOHandlerVTable
  name*: QImageIOHandlernameProc
  canRead*: QImageIOHandlercanReadProc
  read*: QImageIOHandlerreadProc
  write*: QImageIOHandlerwriteProc
  option*: QImageIOHandleroptionProc
  setOption*: QImageIOHandlersetOptionProc
  supportsOption*: QImageIOHandlersupportsOptionProc
  jumpToNextImage*: QImageIOHandlerjumpToNextImageProc
  jumpToImage*: QImageIOHandlerjumpToImageProc
  loopCount*: QImageIOHandlerloopCountProc
  imageCount*: QImageIOHandlerimageCountProc
  nextImageDelay*: QImageIOHandlernextImageDelayProc
  currentImageNumber*: QImageIOHandlercurrentImageNumberProc
  currentImageRect*: QImageIOHandlercurrentImageRectProc

proc QImageIOHandlername*(self: gen_qimageiohandler_types.QImageIOHandler): seq[byte] =
  var v_bytearray = fcQImageIOHandler_virtualbase_name(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc QImageIOHandlerwrite*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_virtualbase_write(self.h, image.h)

proc QImageIOHandleroption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImageIOHandler_virtualbase_option(self.h, cint(option)), owned: true)

proc QImageIOHandlersetOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQImageIOHandler_virtualbase_setOption(self.h, cint(option), value.h)

proc QImageIOHandlersupportsOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): bool =
  fcQImageIOHandler_virtualbase_supportsOption(self.h, cint(option))

proc QImageIOHandlerjumpToNextImage*(self: gen_qimageiohandler_types.QImageIOHandler): bool =
  fcQImageIOHandler_virtualbase_jumpToNextImage(self.h)

proc QImageIOHandlerjumpToImage*(self: gen_qimageiohandler_types.QImageIOHandler, imageNumber: cint): bool =
  fcQImageIOHandler_virtualbase_jumpToImage(self.h, imageNumber)

proc QImageIOHandlerloopCount*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_virtualbase_loopCount(self.h)

proc QImageIOHandlerimageCount*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_virtualbase_imageCount(self.h)

proc QImageIOHandlernextImageDelay*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_virtualbase_nextImageDelay(self.h)

proc QImageIOHandlercurrentImageNumber*(self: gen_qimageiohandler_types.QImageIOHandler): cint =
  fcQImageIOHandler_virtualbase_currentImageNumber(self.h)

proc QImageIOHandlercurrentImageRect*(self: gen_qimageiohandler_types.QImageIOHandler): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageIOHandler_virtualbase_currentImageRect(self.h), owned: true)


proc fcQImageIOHandler_vtable_callback_name(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].name(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQImageIOHandler_vtable_callback_canRead(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].canRead(self)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_read(self: pointer, image: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  let slotval1 = gen_qimage_types.QImage(h: image, owned: false)
  var virtualReturn = vtbl[].read(self, slotval1)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_write(self: pointer, image: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  let slotval1 = gen_qimage_types.QImage(h: image, owned: false)
  var virtualReturn = vtbl[].write(self, slotval1)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_option(self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].option(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageIOHandler_vtable_callback_setOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setOption(self, slotval1, slotval2)

proc fcQImageIOHandler_vtable_callback_supportsOption(self: pointer, option: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].supportsOption(self, slotval1)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_jumpToNextImage(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].jumpToNextImage(self)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_jumpToImage(self: pointer, imageNumber: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  let slotval1 = imageNumber
  var virtualReturn = vtbl[].jumpToImage(self, slotval1)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_loopCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].loopCount(self)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_imageCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].imageCount(self)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_nextImageDelay(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].nextImageDelay(self)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_currentImageNumber(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].currentImageNumber(self)
  virtualReturn

proc fcQImageIOHandler_vtable_callback_currentImageRect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].currentImageRect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQImageIOHandler* {.inheritable.} = ref object of QImageIOHandler
  vtbl*: cQImageIOHandlerVTable

method name*(self: VirtualQImageIOHandler): seq[byte] {.base.} =
  QImageIOHandlername(self[])
method canRead*(self: VirtualQImageIOHandler): bool {.base.} =
  raiseAssert("missing implementation of QImageIOHandler.canRead")
method read*(self: VirtualQImageIOHandler, image: gen_qimage_types.QImage): bool {.base.} =
  raiseAssert("missing implementation of QImageIOHandler.read")
method write*(self: VirtualQImageIOHandler, image: gen_qimage_types.QImage): bool {.base.} =
  QImageIOHandlerwrite(self[], image)
method option*(self: VirtualQImageIOHandler, option: cint): gen_qvariant_types.QVariant {.base.} =
  QImageIOHandleroption(self[], option)
method setOption*(self: VirtualQImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QImageIOHandlersetOption(self[], option, value)
method supportsOption*(self: VirtualQImageIOHandler, option: cint): bool {.base.} =
  QImageIOHandlersupportsOption(self[], option)
method jumpToNextImage*(self: VirtualQImageIOHandler): bool {.base.} =
  QImageIOHandlerjumpToNextImage(self[])
method jumpToImage*(self: VirtualQImageIOHandler, imageNumber: cint): bool {.base.} =
  QImageIOHandlerjumpToImage(self[], imageNumber)
method loopCount*(self: VirtualQImageIOHandler): cint {.base.} =
  QImageIOHandlerloopCount(self[])
method imageCount*(self: VirtualQImageIOHandler): cint {.base.} =
  QImageIOHandlerimageCount(self[])
method nextImageDelay*(self: VirtualQImageIOHandler): cint {.base.} =
  QImageIOHandlernextImageDelay(self[])
method currentImageNumber*(self: VirtualQImageIOHandler): cint {.base.} =
  QImageIOHandlercurrentImageNumber(self[])
method currentImageRect*(self: VirtualQImageIOHandler): gen_qrect_types.QRect {.base.} =
  QImageIOHandlercurrentImageRect(self[])

proc fcQImageIOHandler_method_callback_name(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.name()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQImageIOHandler_method_callback_canRead(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.canRead()
  virtualReturn

proc fcQImageIOHandler_method_callback_read(self: pointer, image: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  let slotval1 = gen_qimage_types.QImage(h: image, owned: false)
  var virtualReturn = inst.read(slotval1)
  virtualReturn

proc fcQImageIOHandler_method_callback_write(self: pointer, image: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  let slotval1 = gen_qimage_types.QImage(h: image, owned: false)
  var virtualReturn = inst.write(slotval1)
  virtualReturn

proc fcQImageIOHandler_method_callback_option(self: pointer, option: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.option(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageIOHandler_method_callback_setOption(self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setOption(slotval1, slotval2)

proc fcQImageIOHandler_method_callback_supportsOption(self: pointer, option: cint): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  let slotval1 = cint(option)
  var virtualReturn = inst.supportsOption(slotval1)
  virtualReturn

proc fcQImageIOHandler_method_callback_jumpToNextImage(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.jumpToNextImage()
  virtualReturn

proc fcQImageIOHandler_method_callback_jumpToImage(self: pointer, imageNumber: cint): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  let slotval1 = imageNumber
  var virtualReturn = inst.jumpToImage(slotval1)
  virtualReturn

proc fcQImageIOHandler_method_callback_loopCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.loopCount()
  virtualReturn

proc fcQImageIOHandler_method_callback_imageCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.imageCount()
  virtualReturn

proc fcQImageIOHandler_method_callback_nextImageDelay(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.nextImageDelay()
  virtualReturn

proc fcQImageIOHandler_method_callback_currentImageNumber(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.currentImageNumber()
  virtualReturn

proc fcQImageIOHandler_method_callback_currentImageRect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQImageIOHandler](fcQImageIOHandler_vdata(self))
  var virtualReturn = inst.currentImageRect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qimageiohandler_types.QImageIOHandler,
    vtbl: ref QImageIOHandlerVTable = nil): gen_qimageiohandler_types.QImageIOHandler =
  let vtbl = if vtbl == nil: new QImageIOHandlerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageIOHandlerVTable](fcQImageIOHandler_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].name):
    vtbl[].vtbl.name = fcQImageIOHandler_vtable_callback_name
  if not isNil(vtbl[].canRead):
    vtbl[].vtbl.canRead = fcQImageIOHandler_vtable_callback_canRead
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = fcQImageIOHandler_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = fcQImageIOHandler_vtable_callback_write
  if not isNil(vtbl[].option):
    vtbl[].vtbl.option = fcQImageIOHandler_vtable_callback_option
  if not isNil(vtbl[].setOption):
    vtbl[].vtbl.setOption = fcQImageIOHandler_vtable_callback_setOption
  if not isNil(vtbl[].supportsOption):
    vtbl[].vtbl.supportsOption = fcQImageIOHandler_vtable_callback_supportsOption
  if not isNil(vtbl[].jumpToNextImage):
    vtbl[].vtbl.jumpToNextImage = fcQImageIOHandler_vtable_callback_jumpToNextImage
  if not isNil(vtbl[].jumpToImage):
    vtbl[].vtbl.jumpToImage = fcQImageIOHandler_vtable_callback_jumpToImage
  if not isNil(vtbl[].loopCount):
    vtbl[].vtbl.loopCount = fcQImageIOHandler_vtable_callback_loopCount
  if not isNil(vtbl[].imageCount):
    vtbl[].vtbl.imageCount = fcQImageIOHandler_vtable_callback_imageCount
  if not isNil(vtbl[].nextImageDelay):
    vtbl[].vtbl.nextImageDelay = fcQImageIOHandler_vtable_callback_nextImageDelay
  if not isNil(vtbl[].currentImageNumber):
    vtbl[].vtbl.currentImageNumber = fcQImageIOHandler_vtable_callback_currentImageNumber
  if not isNil(vtbl[].currentImageRect):
    vtbl[].vtbl.currentImageRect = fcQImageIOHandler_vtable_callback_currentImageRect
  gen_qimageiohandler_types.QImageIOHandler(h: fcQImageIOHandler_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQImageIOHandler_mvtbl = cQImageIOHandlerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQImageIOHandler()[])](self.fcQImageIOHandler_vtbl())
    inst[].h = nil
    inst[].owned = false,

  name: fcQImageIOHandler_method_callback_name,
  canRead: fcQImageIOHandler_method_callback_canRead,
  read: fcQImageIOHandler_method_callback_read,
  write: fcQImageIOHandler_method_callback_write,
  option: fcQImageIOHandler_method_callback_option,
  setOption: fcQImageIOHandler_method_callback_setOption,
  supportsOption: fcQImageIOHandler_method_callback_supportsOption,
  jumpToNextImage: fcQImageIOHandler_method_callback_jumpToNextImage,
  jumpToImage: fcQImageIOHandler_method_callback_jumpToImage,
  loopCount: fcQImageIOHandler_method_callback_loopCount,
  imageCount: fcQImageIOHandler_method_callback_imageCount,
  nextImageDelay: fcQImageIOHandler_method_callback_nextImageDelay,
  currentImageNumber: fcQImageIOHandler_method_callback_currentImageNumber,
  currentImageRect: fcQImageIOHandler_method_callback_currentImageRect,
)
proc create*(T: type gen_qimageiohandler_types.QImageIOHandler,
    inst: VirtualQImageIOHandler) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImageIOHandler_new(addr(cQImageIOHandler_mvtbl), addr(inst[]))
  inst[].owned = true

proc metaObject*(self: gen_qimageiohandler_types.QImageIOPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cstring): pointer =
  fcQImageIOPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQImageIOPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring): string =
  let v_ms = fcQImageIOPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring): string =
  let v_ms = fcQImageIOPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc capabilities*(self: gen_qimageiohandler_types.QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: openArray[byte]): cint =
  cint(fcQImageIOPlugin_capabilities(self.h, device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc createX*(self: gen_qimageiohandler_types.QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: openArray[byte]): gen_qimageiohandler_types.QImageIOHandler =
  gen_qimageiohandler_types.QImageIOHandler(h: fcQImageIOPlugin_createX(self.h, device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: false)

proc tr*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQImageIOPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageIOPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQImageIOPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageIOPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QImageIOPluginmetaObjectProc* = proc(self: QImageIOPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QImageIOPluginmetacastProc* = proc(self: QImageIOPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QImageIOPluginmetacallProc* = proc(self: QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QImageIOPlugincapabilitiesProc* = proc(self: QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: openArray[byte]): cint {.raises: [], gcsafe.}
type QImageIOPlugincreateXProc* = proc(self: QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: openArray[byte]): gen_qimageiohandler_types.QImageIOHandler {.raises: [], gcsafe.}
type QImageIOPlugineventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QImageIOPlugineventFilterProc* = proc(self: QImageIOPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QImageIOPlugintimerEventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QImageIOPluginchildEventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QImageIOPlugincustomEventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QImageIOPluginconnectNotifyProc* = proc(self: QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QImageIOPlugindisconnectNotifyProc* = proc(self: QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QImageIOPluginVTable* {.inheritable, pure.} = object
  vtbl: cQImageIOPluginVTable
  metaObject*: QImageIOPluginmetaObjectProc
  metacast*: QImageIOPluginmetacastProc
  metacall*: QImageIOPluginmetacallProc
  capabilities*: QImageIOPlugincapabilitiesProc
  createX*: QImageIOPlugincreateXProc
  event*: QImageIOPlugineventProc
  eventFilter*: QImageIOPlugineventFilterProc
  timerEvent*: QImageIOPlugintimerEventProc
  childEvent*: QImageIOPluginchildEventProc
  customEvent*: QImageIOPlugincustomEventProc
  connectNotify*: QImageIOPluginconnectNotifyProc
  disconnectNotify*: QImageIOPlugindisconnectNotifyProc

proc QImageIOPluginmetaObject*(self: gen_qimageiohandler_types.QImageIOPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_virtualbase_metaObject(self.h), owned: false)

proc QImageIOPluginmetacast*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cstring): pointer =
  fcQImageIOPlugin_virtualbase_metacast(self.h, param1)

proc QImageIOPluginmetacall*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQImageIOPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QImageIOPluginevent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQImageIOPlugin_virtualbase_event(self.h, event.h)

proc QImageIOPlugineventFilter*(self: gen_qimageiohandler_types.QImageIOPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQImageIOPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QImageIOPlugintimerEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQImageIOPlugin_virtualbase_timerEvent(self.h, event.h)

proc QImageIOPluginchildEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQImageIOPlugin_virtualbase_childEvent(self.h, event.h)

proc QImageIOPlugincustomEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQImageIOPlugin_virtualbase_customEvent(self.h, event.h)

proc QImageIOPluginconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQImageIOPlugin_virtualbase_connectNotify(self.h, signal.h)

proc QImageIOPlugindisconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQImageIOPlugin_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQImageIOPlugin_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageIOPlugin_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQImageIOPlugin_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQImageIOPlugin_vtable_callback_capabilities(self: pointer, device: pointer, format: struct_miqt_string): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: device, owned: false)
  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vformat_bytearray.data), 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret
  var virtualReturn = vtbl[].capabilities(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQImageIOPlugin_vtable_callback_createX(self: pointer, device: pointer, format: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: device, owned: false)
  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vformat_bytearray.data), 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret
  var virtualReturn = vtbl[].createX(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageIOPlugin_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQImageIOPlugin_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQImageIOPlugin_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQImageIOPlugin_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQImageIOPlugin_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQImageIOPlugin_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQImageIOPlugin_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQImageIOPlugin* {.inheritable.} = ref object of QImageIOPlugin
  vtbl*: cQImageIOPluginVTable

method metaObject*(self: VirtualQImageIOPlugin): gen_qobjectdefs_types.QMetaObject {.base.} =
  QImageIOPluginmetaObject(self[])
method metacast*(self: VirtualQImageIOPlugin, param1: cstring): pointer {.base.} =
  QImageIOPluginmetacast(self[], param1)
method metacall*(self: VirtualQImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QImageIOPluginmetacall(self[], param1, param2, param3)
method capabilities*(self: VirtualQImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: openArray[byte]): cint {.base.} =
  raiseAssert("missing implementation of QImageIOPlugin.capabilities")
method createX*(self: VirtualQImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: openArray[byte]): gen_qimageiohandler_types.QImageIOHandler {.base.} =
  raiseAssert("missing implementation of QImageIOPlugin.createX")
method event*(self: VirtualQImageIOPlugin, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QImageIOPluginevent(self[], event)
method eventFilter*(self: VirtualQImageIOPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QImageIOPlugineventFilter(self[], watched, event)
method timerEvent*(self: VirtualQImageIOPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QImageIOPlugintimerEvent(self[], event)
method childEvent*(self: VirtualQImageIOPlugin, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QImageIOPluginchildEvent(self[], event)
method customEvent*(self: VirtualQImageIOPlugin, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QImageIOPlugincustomEvent(self[], event)
method connectNotify*(self: VirtualQImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QImageIOPluginconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QImageIOPlugindisconnectNotify(self[], signal)

proc fcQImageIOPlugin_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageIOPlugin_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQImageIOPlugin_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQImageIOPlugin_method_callback_capabilities(self: pointer, device: pointer, format: struct_miqt_string): cint {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qiodevice_types.QIODevice(h: device, owned: false)
  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vformat_bytearray.data), 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret
  var virtualReturn = inst.capabilities(slotval1, slotval2)
  cint(virtualReturn)

proc fcQImageIOPlugin_method_callback_createX(self: pointer, device: pointer, format: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qiodevice_types.QIODevice(h: device, owned: false)
  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vformat_bytearray.data), 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret
  var virtualReturn = inst.createX(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImageIOPlugin_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQImageIOPlugin_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQImageIOPlugin_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQImageIOPlugin_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQImageIOPlugin_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQImageIOPlugin_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQImageIOPlugin_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImageIOPlugin](fcQImageIOPlugin_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qimageiohandler_types.QImageIOPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQImageIOPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qimageiohandler_types.QImageIOPlugin): cint =
  fcQImageIOPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: cstring): cint =
  fcQImageIOPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQImageIOPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin,
    vtbl: ref QImageIOPluginVTable = nil): gen_qimageiohandler_types.QImageIOPlugin =
  let vtbl = if vtbl == nil: new QImageIOPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQImageIOPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQImageIOPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQImageIOPlugin_vtable_callback_metacall
  if not isNil(vtbl[].capabilities):
    vtbl[].vtbl.capabilities = fcQImageIOPlugin_vtable_callback_capabilities
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQImageIOPlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQImageIOPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQImageIOPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQImageIOPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQImageIOPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQImageIOPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQImageIOPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQImageIOPlugin_vtable_callback_disconnectNotify
  gen_qimageiohandler_types.QImageIOPlugin(h: fcQImageIOPlugin_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QImageIOPluginVTable = nil): gen_qimageiohandler_types.QImageIOPlugin =
  let vtbl = if vtbl == nil: new QImageIOPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageIOPluginVTable](fcQImageIOPlugin_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQImageIOPlugin_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQImageIOPlugin_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQImageIOPlugin_vtable_callback_metacall
  if not isNil(vtbl[].capabilities):
    vtbl[].vtbl.capabilities = fcQImageIOPlugin_vtable_callback_capabilities
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQImageIOPlugin_vtable_callback_createX
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQImageIOPlugin_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQImageIOPlugin_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQImageIOPlugin_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQImageIOPlugin_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQImageIOPlugin_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQImageIOPlugin_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQImageIOPlugin_vtable_callback_disconnectNotify
  gen_qimageiohandler_types.QImageIOPlugin(h: fcQImageIOPlugin_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQImageIOPlugin_mvtbl = cQImageIOPluginVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQImageIOPlugin()[])](self.fcQImageIOPlugin_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQImageIOPlugin_method_callback_metaObject,
  metacast: fcQImageIOPlugin_method_callback_metacast,
  metacall: fcQImageIOPlugin_method_callback_metacall,
  capabilities: fcQImageIOPlugin_method_callback_capabilities,
  createX: fcQImageIOPlugin_method_callback_createX,
  event: fcQImageIOPlugin_method_callback_event,
  eventFilter: fcQImageIOPlugin_method_callback_eventFilter,
  timerEvent: fcQImageIOPlugin_method_callback_timerEvent,
  childEvent: fcQImageIOPlugin_method_callback_childEvent,
  customEvent: fcQImageIOPlugin_method_callback_customEvent,
  connectNotify: fcQImageIOPlugin_method_callback_connectNotify,
  disconnectNotify: fcQImageIOPlugin_method_callback_disconnectNotify,
)
proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin,
    inst: VirtualQImageIOPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImageIOPlugin_new(addr(cQImageIOPlugin_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin,
    parent: gen_qobject_types.QObject,
    inst: VirtualQImageIOPlugin) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImageIOPlugin_new2(addr(cQImageIOPlugin_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qimageiohandler_types.QImageIOPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_staticMetaObject())
