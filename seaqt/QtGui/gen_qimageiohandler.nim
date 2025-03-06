import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qimageiohandler.cpp", cflags).}


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
proc fcQImageIOHandler_device(self: pointer, ): pointer {.importc: "QImageIOHandler_device".}
proc fcQImageIOHandler_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormat".}
proc fcQImageIOHandler_setFormatWithFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormatWithFormat".}
proc fcQImageIOHandler_format(self: pointer, ): struct_miqt_string {.importc: "QImageIOHandler_format".}
proc fcQImageIOHandler_name(self: pointer, ): struct_miqt_string {.importc: "QImageIOHandler_name".}
proc fcQImageIOHandler_canRead(self: pointer, ): bool {.importc: "QImageIOHandler_canRead".}
proc fcQImageIOHandler_read(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_read".}
proc fcQImageIOHandler_write(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_write".}
proc fcQImageIOHandler_option(self: pointer, option: cint): pointer {.importc: "QImageIOHandler_option".}
proc fcQImageIOHandler_setOption(self: pointer, option: cint, value: pointer): void {.importc: "QImageIOHandler_setOption".}
proc fcQImageIOHandler_supportsOption(self: pointer, option: cint): bool {.importc: "QImageIOHandler_supportsOption".}
proc fcQImageIOHandler_jumpToNextImage(self: pointer, ): bool {.importc: "QImageIOHandler_jumpToNextImage".}
proc fcQImageIOHandler_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageIOHandler_jumpToImage".}
proc fcQImageIOHandler_loopCount(self: pointer, ): cint {.importc: "QImageIOHandler_loopCount".}
proc fcQImageIOHandler_imageCount(self: pointer, ): cint {.importc: "QImageIOHandler_imageCount".}
proc fcQImageIOHandler_nextImageDelay(self: pointer, ): cint {.importc: "QImageIOHandler_nextImageDelay".}
proc fcQImageIOHandler_currentImageNumber(self: pointer, ): cint {.importc: "QImageIOHandler_currentImageNumber".}
proc fcQImageIOHandler_currentImageRect(self: pointer, ): pointer {.importc: "QImageIOHandler_currentImageRect".}
type cQImageIOHandlerVTable = object
  destructor*: proc(vtbl: ptr cQImageIOHandlerVTable, self: ptr cQImageIOHandler) {.cdecl, raises:[], gcsafe.}
  name*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  canRead*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(vtbl, self: pointer, image: pointer): bool {.cdecl, raises: [], gcsafe.}
  write*: proc(vtbl, self: pointer, image: pointer): bool {.cdecl, raises: [], gcsafe.}
  option*: proc(vtbl, self: pointer, option: cint): pointer {.cdecl, raises: [], gcsafe.}
  setOption*: proc(vtbl, self: pointer, option: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  supportsOption*: proc(vtbl, self: pointer, option: cint): bool {.cdecl, raises: [], gcsafe.}
  jumpToNextImage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  jumpToImage*: proc(vtbl, self: pointer, imageNumber: cint): bool {.cdecl, raises: [], gcsafe.}
  loopCount*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  imageCount*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  nextImageDelay*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  currentImageNumber*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  currentImageRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQImageIOHandler_virtualbase_name(self: pointer, ): struct_miqt_string {.importc: "QImageIOHandler_virtualbase_name".}
proc fcQImageIOHandler_virtualbase_write(self: pointer, image: pointer): bool {.importc: "QImageIOHandler_virtualbase_write".}
proc fcQImageIOHandler_virtualbase_option(self: pointer, option: cint): pointer {.importc: "QImageIOHandler_virtualbase_option".}
proc fcQImageIOHandler_virtualbase_setOption(self: pointer, option: cint, value: pointer): void {.importc: "QImageIOHandler_virtualbase_setOption".}
proc fcQImageIOHandler_virtualbase_supportsOption(self: pointer, option: cint): bool {.importc: "QImageIOHandler_virtualbase_supportsOption".}
proc fcQImageIOHandler_virtualbase_jumpToNextImage(self: pointer, ): bool {.importc: "QImageIOHandler_virtualbase_jumpToNextImage".}
proc fcQImageIOHandler_virtualbase_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageIOHandler_virtualbase_jumpToImage".}
proc fcQImageIOHandler_virtualbase_loopCount(self: pointer, ): cint {.importc: "QImageIOHandler_virtualbase_loopCount".}
proc fcQImageIOHandler_virtualbase_imageCount(self: pointer, ): cint {.importc: "QImageIOHandler_virtualbase_imageCount".}
proc fcQImageIOHandler_virtualbase_nextImageDelay(self: pointer, ): cint {.importc: "QImageIOHandler_virtualbase_nextImageDelay".}
proc fcQImageIOHandler_virtualbase_currentImageNumber(self: pointer, ): cint {.importc: "QImageIOHandler_virtualbase_currentImageNumber".}
proc fcQImageIOHandler_virtualbase_currentImageRect(self: pointer, ): pointer {.importc: "QImageIOHandler_virtualbase_currentImageRect".}
proc fcQImageIOHandler_new(vtbl: pointer, ): ptr cQImageIOHandler {.importc: "QImageIOHandler_new".}
proc fcQImageIOHandler_delete(self: pointer) {.importc: "QImageIOHandler_delete".}
proc fcQImageIOPlugin_metaObject(self: pointer, ): pointer {.importc: "QImageIOPlugin_metaObject".}
proc fcQImageIOPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageIOPlugin_metacast".}
proc fcQImageIOPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageIOPlugin_metacall".}
proc fcQImageIOPlugin_tr(s: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr".}
proc fcQImageIOPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QImageIOPlugin_trUtf8".}
proc fcQImageIOPlugin_capabilities(self: pointer, device: pointer, format: struct_miqt_string): cint {.importc: "QImageIOPlugin_capabilities".}
proc fcQImageIOPlugin_create(self: pointer, device: pointer, format: struct_miqt_string): pointer {.importc: "QImageIOPlugin_create".}
proc fcQImageIOPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr2".}
proc fcQImageIOPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageIOPlugin_tr3".}
proc fcQImageIOPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageIOPlugin_trUtf82".}
proc fcQImageIOPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageIOPlugin_trUtf83".}
type cQImageIOPluginVTable = object
  destructor*: proc(vtbl: ptr cQImageIOPluginVTable, self: ptr cQImageIOPlugin) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  capabilities*: proc(vtbl, self: pointer, device: pointer, format: struct_miqt_string): cint {.cdecl, raises: [], gcsafe.}
  create*: proc(vtbl, self: pointer, device: pointer, format: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQImageIOPlugin_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QImageIOPlugin_virtualbase_metaObject".}
proc fcQImageIOPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageIOPlugin_virtualbase_metacast".}
proc fcQImageIOPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageIOPlugin_virtualbase_metacall".}
proc fcQImageIOPlugin_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QImageIOPlugin_virtualbase_event".}
proc fcQImageIOPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QImageIOPlugin_virtualbase_eventFilter".}
proc fcQImageIOPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QImageIOPlugin_virtualbase_timerEvent".}
proc fcQImageIOPlugin_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QImageIOPlugin_virtualbase_childEvent".}
proc fcQImageIOPlugin_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QImageIOPlugin_virtualbase_customEvent".}
proc fcQImageIOPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QImageIOPlugin_virtualbase_connectNotify".}
proc fcQImageIOPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QImageIOPlugin_virtualbase_disconnectNotify".}
proc fcQImageIOPlugin_protectedbase_sender(self: pointer, ): pointer {.importc: "QImageIOPlugin_protectedbase_sender".}
proc fcQImageIOPlugin_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QImageIOPlugin_protectedbase_senderSignalIndex".}
proc fcQImageIOPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QImageIOPlugin_protectedbase_receivers".}
proc fcQImageIOPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QImageIOPlugin_protectedbase_isSignalConnected".}
proc fcQImageIOPlugin_new(vtbl: pointer, ): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new".}
proc fcQImageIOPlugin_new2(vtbl: pointer, parent: pointer): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new2".}
proc fcQImageIOPlugin_staticMetaObject(): pointer {.importc: "QImageIOPlugin_staticMetaObject".}
proc fcQImageIOPlugin_delete(self: pointer) {.importc: "QImageIOPlugin_delete".}

proc setDevice*(self: gen_qimageiohandler_types.QImageIOHandler, device: gen_qiodevice_types.QIODevice): void =
  fcQImageIOHandler_setDevice(self.h, device.h)

proc device*(self: gen_qimageiohandler_types.QImageIOHandler, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQImageIOHandler_device(self.h))

proc setFormat*(self: gen_qimageiohandler_types.QImageIOHandler, format: seq[byte]): void =
  fcQImageIOHandler_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc setFormat2*(self: gen_qimageiohandler_types.QImageIOHandler, format: seq[byte]): void =
  fcQImageIOHandler_setFormatWithFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qimageiohandler_types.QImageIOHandler, ): seq[byte] =
  var v_bytearray = fcQImageIOHandler_format(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc name*(self: gen_qimageiohandler_types.QImageIOHandler, ): seq[byte] =
  var v_bytearray = fcQImageIOHandler_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc canRead*(self: gen_qimageiohandler_types.QImageIOHandler, ): bool =
  fcQImageIOHandler_canRead(self.h)

proc read*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_read(self.h, image.h)

proc write*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_write(self.h, image.h)

proc option*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImageIOHandler_option(self.h, cint(option)))

proc setOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQImageIOHandler_setOption(self.h, cint(option), value.h)

proc supportsOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): bool =
  fcQImageIOHandler_supportsOption(self.h, cint(option))

proc jumpToNextImage*(self: gen_qimageiohandler_types.QImageIOHandler, ): bool =
  fcQImageIOHandler_jumpToNextImage(self.h)

proc jumpToImage*(self: gen_qimageiohandler_types.QImageIOHandler, imageNumber: cint): bool =
  fcQImageIOHandler_jumpToImage(self.h, imageNumber)

proc loopCount*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_loopCount(self.h)

proc imageCount*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_imageCount(self.h)

proc nextImageDelay*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_nextImageDelay(self.h)

proc currentImageNumber*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_currentImageNumber(self.h)

proc currentImageRect*(self: gen_qimageiohandler_types.QImageIOHandler, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageIOHandler_currentImageRect(self.h))

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
type QImageIOHandlerVTable* = object
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
proc QImageIOHandlername*(self: gen_qimageiohandler_types.QImageIOHandler, ): seq[byte] =
  var v_bytearray = fcQImageIOHandler_virtualbase_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc miqt_exec_callback_cQImageIOHandler_name(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].name(self)
  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))

proc miqt_exec_callback_cQImageIOHandler_canRead(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].canRead(self)
  virtualReturn

proc miqt_exec_callback_cQImageIOHandler_read(vtbl: pointer, self: pointer, image: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  let slotval1 = gen_qimage_types.QImage(h: image)
  var virtualReturn = vtbl[].read(self, slotval1)
  virtualReturn

proc QImageIOHandlerwrite*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_virtualbase_write(self.h, image.h)

proc miqt_exec_callback_cQImageIOHandler_write(vtbl: pointer, self: pointer, image: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  let slotval1 = gen_qimage_types.QImage(h: image)
  var virtualReturn = vtbl[].write(self, slotval1)
  virtualReturn

proc QImageIOHandleroption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImageIOHandler_virtualbase_option(self.h, cint(option)))

proc miqt_exec_callback_cQImageIOHandler_option(vtbl: pointer, self: pointer, option: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].option(self, slotval1)
  virtualReturn.h

proc QImageIOHandlersetOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void =
  fcQImageIOHandler_virtualbase_setOption(self.h, cint(option), value.h)

proc miqt_exec_callback_cQImageIOHandler_setOption(vtbl: pointer, self: pointer, option: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  let slotval1 = cint(option)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setOption(self, slotval1, slotval2)

proc QImageIOHandlersupportsOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): bool =
  fcQImageIOHandler_virtualbase_supportsOption(self.h, cint(option))

proc miqt_exec_callback_cQImageIOHandler_supportsOption(vtbl: pointer, self: pointer, option: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  let slotval1 = cint(option)
  var virtualReturn = vtbl[].supportsOption(self, slotval1)
  virtualReturn

proc QImageIOHandlerjumpToNextImage*(self: gen_qimageiohandler_types.QImageIOHandler, ): bool =
  fcQImageIOHandler_virtualbase_jumpToNextImage(self.h)

proc miqt_exec_callback_cQImageIOHandler_jumpToNextImage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].jumpToNextImage(self)
  virtualReturn

proc QImageIOHandlerjumpToImage*(self: gen_qimageiohandler_types.QImageIOHandler, imageNumber: cint): bool =
  fcQImageIOHandler_virtualbase_jumpToImage(self.h, imageNumber)

proc miqt_exec_callback_cQImageIOHandler_jumpToImage(vtbl: pointer, self: pointer, imageNumber: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  let slotval1 = imageNumber
  var virtualReturn = vtbl[].jumpToImage(self, slotval1)
  virtualReturn

proc QImageIOHandlerloopCount*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_virtualbase_loopCount(self.h)

proc miqt_exec_callback_cQImageIOHandler_loopCount(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].loopCount(self)
  virtualReturn

proc QImageIOHandlerimageCount*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_virtualbase_imageCount(self.h)

proc miqt_exec_callback_cQImageIOHandler_imageCount(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].imageCount(self)
  virtualReturn

proc QImageIOHandlernextImageDelay*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_virtualbase_nextImageDelay(self.h)

proc miqt_exec_callback_cQImageIOHandler_nextImageDelay(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].nextImageDelay(self)
  virtualReturn

proc QImageIOHandlercurrentImageNumber*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fcQImageIOHandler_virtualbase_currentImageNumber(self.h)

proc miqt_exec_callback_cQImageIOHandler_currentImageNumber(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].currentImageNumber(self)
  virtualReturn

proc QImageIOHandlercurrentImageRect*(self: gen_qimageiohandler_types.QImageIOHandler, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageIOHandler_virtualbase_currentImageRect(self.h))

proc miqt_exec_callback_cQImageIOHandler_currentImageRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOHandlerVTable](vtbl)
  let self = QImageIOHandler(h: self)
  var virtualReturn = vtbl[].currentImageRect(self)
  virtualReturn.h

proc create*(T: type gen_qimageiohandler_types.QImageIOHandler,
    vtbl: ref QImageIOHandlerVTable = nil): gen_qimageiohandler_types.QImageIOHandler =
  let vtbl = if vtbl == nil: new QImageIOHandlerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageIOHandlerVTable, _: ptr cQImageIOHandler) {.cdecl.} =
    let vtbl = cast[ref QImageIOHandlerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.name):
    vtbl[].vtbl.name = miqt_exec_callback_cQImageIOHandler_name
  if not isNil(vtbl.canRead):
    vtbl[].vtbl.canRead = miqt_exec_callback_cQImageIOHandler_canRead
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQImageIOHandler_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQImageIOHandler_write
  if not isNil(vtbl.option):
    vtbl[].vtbl.option = miqt_exec_callback_cQImageIOHandler_option
  if not isNil(vtbl.setOption):
    vtbl[].vtbl.setOption = miqt_exec_callback_cQImageIOHandler_setOption
  if not isNil(vtbl.supportsOption):
    vtbl[].vtbl.supportsOption = miqt_exec_callback_cQImageIOHandler_supportsOption
  if not isNil(vtbl.jumpToNextImage):
    vtbl[].vtbl.jumpToNextImage = miqt_exec_callback_cQImageIOHandler_jumpToNextImage
  if not isNil(vtbl.jumpToImage):
    vtbl[].vtbl.jumpToImage = miqt_exec_callback_cQImageIOHandler_jumpToImage
  if not isNil(vtbl.loopCount):
    vtbl[].vtbl.loopCount = miqt_exec_callback_cQImageIOHandler_loopCount
  if not isNil(vtbl.imageCount):
    vtbl[].vtbl.imageCount = miqt_exec_callback_cQImageIOHandler_imageCount
  if not isNil(vtbl.nextImageDelay):
    vtbl[].vtbl.nextImageDelay = miqt_exec_callback_cQImageIOHandler_nextImageDelay
  if not isNil(vtbl.currentImageNumber):
    vtbl[].vtbl.currentImageNumber = miqt_exec_callback_cQImageIOHandler_currentImageNumber
  if not isNil(vtbl.currentImageRect):
    vtbl[].vtbl.currentImageRect = miqt_exec_callback_cQImageIOHandler_currentImageRect
  gen_qimageiohandler_types.QImageIOHandler(h: fcQImageIOHandler_new(addr(vtbl[]), ))

proc delete*(self: gen_qimageiohandler_types.QImageIOHandler) =
  fcQImageIOHandler_delete(self.h)
proc metaObject*(self: gen_qimageiohandler_types.QImageIOPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_metaObject(self.h))

proc metacast*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cstring): pointer =
  fcQImageIOPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQImageIOPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring): string =
  let v_ms = fcQImageIOPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring): string =
  let v_ms = fcQImageIOPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capabilities*(self: gen_qimageiohandler_types.QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: seq[byte]): cint =
  cint(fcQImageIOPlugin_capabilities(self.h, device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc create*(self: gen_qimageiohandler_types.QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: seq[byte]): gen_qimageiohandler_types.QImageIOHandler =
  gen_qimageiohandler_types.QImageIOHandler(h: fcQImageIOPlugin_create(self.h, device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc tr*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQImageIOPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageIOPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQImageIOPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageiohandler_types.QImageIOPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageIOPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QImageIOPluginmetaObjectProc* = proc(self: QImageIOPlugin): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QImageIOPluginmetacastProc* = proc(self: QImageIOPlugin, param1: cstring): pointer {.raises: [], gcsafe.}
type QImageIOPluginmetacallProc* = proc(self: QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QImageIOPlugincapabilitiesProc* = proc(self: QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: seq[byte]): cint {.raises: [], gcsafe.}
type QImageIOPlugincreateProc* = proc(self: QImageIOPlugin, device: gen_qiodevice_types.QIODevice, format: seq[byte]): gen_qimageiohandler_types.QImageIOHandler {.raises: [], gcsafe.}
type QImageIOPlugineventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QImageIOPlugineventFilterProc* = proc(self: QImageIOPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QImageIOPlugintimerEventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QImageIOPluginchildEventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QImageIOPlugincustomEventProc* = proc(self: QImageIOPlugin, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QImageIOPluginconnectNotifyProc* = proc(self: QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QImageIOPlugindisconnectNotifyProc* = proc(self: QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QImageIOPluginVTable* = object
  vtbl: cQImageIOPluginVTable
  metaObject*: QImageIOPluginmetaObjectProc
  metacast*: QImageIOPluginmetacastProc
  metacall*: QImageIOPluginmetacallProc
  capabilities*: QImageIOPlugincapabilitiesProc
  create*: QImageIOPlugincreateProc
  event*: QImageIOPlugineventProc
  eventFilter*: QImageIOPlugineventFilterProc
  timerEvent*: QImageIOPlugintimerEventProc
  childEvent*: QImageIOPluginchildEventProc
  customEvent*: QImageIOPlugincustomEventProc
  connectNotify*: QImageIOPluginconnectNotifyProc
  disconnectNotify*: QImageIOPlugindisconnectNotifyProc
proc QImageIOPluginmetaObject*(self: gen_qimageiohandler_types.QImageIOPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQImageIOPlugin_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QImageIOPluginmetacast*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cstring): pointer =
  fcQImageIOPlugin_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQImageIOPlugin_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QImageIOPluginmetacall*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQImageIOPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQImageIOPlugin_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQImageIOPlugin_capabilities(vtbl: pointer, self: pointer, device: pointer, format: struct_miqt_string): cint {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: device)
  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArrayByte(vformat_bytearray.data, 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret
  var virtualReturn = vtbl[].capabilities(self, slotval1, slotval2)
  cint(virtualReturn)

proc miqt_exec_callback_cQImageIOPlugin_create(vtbl: pointer, self: pointer, device: pointer, format: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: device)
  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArrayByte(vformat_bytearray.data, 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret
  var virtualReturn = vtbl[].create(self, slotval1, slotval2)
  virtualReturn.h

proc QImageIOPluginevent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fcQImageIOPlugin_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQImageIOPlugin_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QImageIOPlugineventFilter*(self: gen_qimageiohandler_types.QImageIOPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQImageIOPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQImageIOPlugin_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QImageIOPlugintimerEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQImageIOPlugin_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQImageIOPlugin_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QImageIOPluginchildEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fcQImageIOPlugin_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQImageIOPlugin_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QImageIOPlugincustomEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QEvent): void =
  fcQImageIOPlugin_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQImageIOPlugin_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QImageIOPluginconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQImageIOPlugin_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQImageIOPlugin_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QImageIOPlugindisconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQImageIOPlugin_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQImageIOPlugin_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageIOPluginVTable](vtbl)
  let self = QImageIOPlugin(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qimageiohandler_types.QImageIOPlugin, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQImageIOPlugin_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qimageiohandler_types.QImageIOPlugin, ): cint =
  fcQImageIOPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: cstring): cint =
  fcQImageIOPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQImageIOPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin,
    vtbl: ref QImageIOPluginVTable = nil): gen_qimageiohandler_types.QImageIOPlugin =
  let vtbl = if vtbl == nil: new QImageIOPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageIOPluginVTable, _: ptr cQImageIOPlugin) {.cdecl.} =
    let vtbl = cast[ref QImageIOPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQImageIOPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQImageIOPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQImageIOPlugin_metacall
  if not isNil(vtbl.capabilities):
    vtbl[].vtbl.capabilities = miqt_exec_callback_cQImageIOPlugin_capabilities
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQImageIOPlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQImageIOPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQImageIOPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQImageIOPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQImageIOPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQImageIOPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQImageIOPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQImageIOPlugin_disconnectNotify
  gen_qimageiohandler_types.QImageIOPlugin(h: fcQImageIOPlugin_new(addr(vtbl[]), ))

proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin,
    parent: gen_qobject_types.QObject,
    vtbl: ref QImageIOPluginVTable = nil): gen_qimageiohandler_types.QImageIOPlugin =
  let vtbl = if vtbl == nil: new QImageIOPluginVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageIOPluginVTable, _: ptr cQImageIOPlugin) {.cdecl.} =
    let vtbl = cast[ref QImageIOPluginVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQImageIOPlugin_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQImageIOPlugin_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQImageIOPlugin_metacall
  if not isNil(vtbl.capabilities):
    vtbl[].vtbl.capabilities = miqt_exec_callback_cQImageIOPlugin_capabilities
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQImageIOPlugin_create
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQImageIOPlugin_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQImageIOPlugin_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQImageIOPlugin_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQImageIOPlugin_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQImageIOPlugin_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQImageIOPlugin_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQImageIOPlugin_disconnectNotify
  gen_qimageiohandler_types.QImageIOPlugin(h: fcQImageIOPlugin_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qimageiohandler_types.QImageIOPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_staticMetaObject())
proc delete*(self: gen_qimageiohandler_types.QImageIOPlugin) =
  fcQImageIOPlugin_delete(self.h)
