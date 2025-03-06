import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
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
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qimage_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qimage_types

type cQImageIOHandler*{.exportc: "QImageIOHandler", incompleteStruct.} = object
type cQImageIOPlugin*{.exportc: "QImageIOPlugin", incompleteStruct.} = object

proc fcQImageIOHandler_new(): ptr cQImageIOHandler {.importc: "QImageIOHandler_new".}
proc fcQImageIOHandler_setDevice(self: pointer, device: pointer): void {.importc: "QImageIOHandler_setDevice".}
proc fcQImageIOHandler_device(self: pointer, ): pointer {.importc: "QImageIOHandler_device".}
proc fcQImageIOHandler_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormat".}
proc fcQImageIOHandler_setFormatWithFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageIOHandler_setFormatWithFormat".}
proc fcQImageIOHandler_format(self: pointer, ): struct_miqt_string {.importc: "QImageIOHandler_format".}
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
proc fcQImageIOHandler_allocateImage(size: pointer, format: cint, image: pointer): bool {.importc: "QImageIOHandler_allocateImage".}
proc fcQImageIOHandler_override_virtual_canRead(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_canRead".}
proc fcQImageIOHandler_override_virtual_read(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_read".}
proc fQImageIOHandler_virtualbase_write(self: pointer, image: pointer): bool{.importc: "QImageIOHandler_virtualbase_write".}
proc fcQImageIOHandler_override_virtual_write(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_write".}
proc fQImageIOHandler_virtualbase_option(self: pointer, option: cint): pointer{.importc: "QImageIOHandler_virtualbase_option".}
proc fcQImageIOHandler_override_virtual_option(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_option".}
proc fQImageIOHandler_virtualbase_setOption(self: pointer, option: cint, value: pointer): void{.importc: "QImageIOHandler_virtualbase_setOption".}
proc fcQImageIOHandler_override_virtual_setOption(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_setOption".}
proc fQImageIOHandler_virtualbase_supportsOption(self: pointer, option: cint): bool{.importc: "QImageIOHandler_virtualbase_supportsOption".}
proc fcQImageIOHandler_override_virtual_supportsOption(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_supportsOption".}
proc fQImageIOHandler_virtualbase_jumpToNextImage(self: pointer, ): bool{.importc: "QImageIOHandler_virtualbase_jumpToNextImage".}
proc fcQImageIOHandler_override_virtual_jumpToNextImage(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_jumpToNextImage".}
proc fQImageIOHandler_virtualbase_jumpToImage(self: pointer, imageNumber: cint): bool{.importc: "QImageIOHandler_virtualbase_jumpToImage".}
proc fcQImageIOHandler_override_virtual_jumpToImage(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_jumpToImage".}
proc fQImageIOHandler_virtualbase_loopCount(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_loopCount".}
proc fcQImageIOHandler_override_virtual_loopCount(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_loopCount".}
proc fQImageIOHandler_virtualbase_imageCount(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_imageCount".}
proc fcQImageIOHandler_override_virtual_imageCount(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_imageCount".}
proc fQImageIOHandler_virtualbase_nextImageDelay(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_nextImageDelay".}
proc fcQImageIOHandler_override_virtual_nextImageDelay(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_nextImageDelay".}
proc fQImageIOHandler_virtualbase_currentImageNumber(self: pointer, ): cint{.importc: "QImageIOHandler_virtualbase_currentImageNumber".}
proc fcQImageIOHandler_override_virtual_currentImageNumber(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_currentImageNumber".}
proc fQImageIOHandler_virtualbase_currentImageRect(self: pointer, ): pointer{.importc: "QImageIOHandler_virtualbase_currentImageRect".}
proc fcQImageIOHandler_override_virtual_currentImageRect(self: pointer, slot: int) {.importc: "QImageIOHandler_override_virtual_currentImageRect".}
proc fcQImageIOHandler_delete(self: pointer) {.importc: "QImageIOHandler_delete".}
proc fcQImageIOPlugin_new(): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new".}
proc fcQImageIOPlugin_new2(parent: pointer): ptr cQImageIOPlugin {.importc: "QImageIOPlugin_new2".}
proc fcQImageIOPlugin_metaObject(self: pointer, ): pointer {.importc: "QImageIOPlugin_metaObject".}
proc fcQImageIOPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageIOPlugin_metacast".}
proc fcQImageIOPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QImageIOPlugin_metacall".}
proc fcQImageIOPlugin_tr(s: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr".}
proc fcQImageIOPlugin_capabilities(self: pointer, device: pointer, format: struct_miqt_string): cint {.importc: "QImageIOPlugin_capabilities".}
proc fcQImageIOPlugin_create(self: pointer, device: pointer, format: struct_miqt_string): pointer {.importc: "QImageIOPlugin_create".}
proc fcQImageIOPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageIOPlugin_tr2".}
proc fcQImageIOPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageIOPlugin_tr3".}
proc fQImageIOPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QImageIOPlugin_virtualbase_metaObject".}
proc fcQImageIOPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_metaObject".}
proc fQImageIOPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QImageIOPlugin_virtualbase_metacast".}
proc fcQImageIOPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_metacast".}
proc fQImageIOPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QImageIOPlugin_virtualbase_metacall".}
proc fcQImageIOPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_metacall".}
proc fcQImageIOPlugin_override_virtual_capabilities(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_capabilities".}
proc fcQImageIOPlugin_override_virtual_create(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_create".}
proc fQImageIOPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QImageIOPlugin_virtualbase_event".}
proc fcQImageIOPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_event".}
proc fQImageIOPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QImageIOPlugin_virtualbase_eventFilter".}
proc fcQImageIOPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_eventFilter".}
proc fQImageIOPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QImageIOPlugin_virtualbase_timerEvent".}
proc fcQImageIOPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_timerEvent".}
proc fQImageIOPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QImageIOPlugin_virtualbase_childEvent".}
proc fcQImageIOPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_childEvent".}
proc fQImageIOPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QImageIOPlugin_virtualbase_customEvent".}
proc fcQImageIOPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_customEvent".}
proc fQImageIOPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QImageIOPlugin_virtualbase_connectNotify".}
proc fcQImageIOPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_connectNotify".}
proc fQImageIOPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QImageIOPlugin_virtualbase_disconnectNotify".}
proc fcQImageIOPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QImageIOPlugin_override_virtual_disconnectNotify".}
proc fcQImageIOPlugin_staticMetaObject(): pointer {.importc: "QImageIOPlugin_staticMetaObject".}
proc fcQImageIOPlugin_delete(self: pointer) {.importc: "QImageIOPlugin_delete".}


func init*(T: type gen_qimageiohandler_types.QImageIOHandler, h: ptr cQImageIOHandler): gen_qimageiohandler_types.QImageIOHandler =
  T(h: h)
proc create*(T: type gen_qimageiohandler_types.QImageIOHandler, ): gen_qimageiohandler_types.QImageIOHandler =
  gen_qimageiohandler_types.QImageIOHandler.init(fcQImageIOHandler_new())

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

proc allocateImage*(_: type gen_qimageiohandler_types.QImageIOHandler, size: gen_qsize_types.QSize, format: cint, image: gen_qimage_types.QImage): bool =
  fcQImageIOHandler_allocateImage(size.h, cint(format), image.h)

type QImageIOHandlercanReadProc* = proc(): bool
proc oncanRead*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlercanReadProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlercanReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_canRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_canRead(self: ptr cQImageIOHandler, slot: int): bool {.exportc: "miqt_exec_callback_QImageIOHandler_canRead ".} =
  var nimfunc = cast[ptr QImageIOHandlercanReadProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QImageIOHandlerreadProc* = proc(image: gen_qimage_types.QImage): bool
proc onread*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlerreadProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlerreadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_read(self: ptr cQImageIOHandler, slot: int, image: pointer): bool {.exportc: "miqt_exec_callback_QImageIOHandler_read ".} =
  var nimfunc = cast[ptr QImageIOHandlerreadProc](cast[pointer](slot))
  let slotval1 = gen_qimage_types.QImage(h: image)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageIOHandlerwrite*(self: gen_qimageiohandler_types.QImageIOHandler, image: gen_qimage_types.QImage): bool =
  fQImageIOHandler_virtualbase_write(self.h, image.h)

type QImageIOHandlerwriteProc* = proc(image: gen_qimage_types.QImage): bool
proc onwrite*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlerwriteProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlerwriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_write(self: ptr cQImageIOHandler, slot: int, image: pointer): bool {.exportc: "miqt_exec_callback_QImageIOHandler_write ".} =
  var nimfunc = cast[ptr QImageIOHandlerwriteProc](cast[pointer](slot))
  let slotval1 = gen_qimage_types.QImage(h: image)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageIOHandleroption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQImageIOHandler_virtualbase_option(self.h, cint(option)))

type QImageIOHandleroptionProc* = proc(option: cint): gen_qvariant_types.QVariant
proc onoption*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandleroptionProc) =
  # TODO check subclass
  var tmp = new QImageIOHandleroptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_option(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_option(self: ptr cQImageIOHandler, slot: int, option: cint): pointer {.exportc: "miqt_exec_callback_QImageIOHandler_option ".} =
  var nimfunc = cast[ptr QImageIOHandleroptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QImageIOHandlersetOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint, value: gen_qvariant_types.QVariant): void =
  fQImageIOHandler_virtualbase_setOption(self.h, cint(option), value.h)

type QImageIOHandlersetOptionProc* = proc(option: cint, value: gen_qvariant_types.QVariant): void
proc onsetOption*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlersetOptionProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlersetOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_setOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_setOption(self: ptr cQImageIOHandler, slot: int, option: cint, value: pointer): void {.exportc: "miqt_exec_callback_QImageIOHandler_setOption ".} =
  var nimfunc = cast[ptr QImageIOHandlersetOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QImageIOHandlersupportsOption*(self: gen_qimageiohandler_types.QImageIOHandler, option: cint): bool =
  fQImageIOHandler_virtualbase_supportsOption(self.h, cint(option))

type QImageIOHandlersupportsOptionProc* = proc(option: cint): bool
proc onsupportsOption*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlersupportsOptionProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlersupportsOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_supportsOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_supportsOption(self: ptr cQImageIOHandler, slot: int, option: cint): bool {.exportc: "miqt_exec_callback_QImageIOHandler_supportsOption ".} =
  var nimfunc = cast[ptr QImageIOHandlersupportsOptionProc](cast[pointer](slot))
  let slotval1 = cint(option)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageIOHandlerjumpToNextImage*(self: gen_qimageiohandler_types.QImageIOHandler, ): bool =
  fQImageIOHandler_virtualbase_jumpToNextImage(self.h)

type QImageIOHandlerjumpToNextImageProc* = proc(): bool
proc onjumpToNextImage*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlerjumpToNextImageProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlerjumpToNextImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_jumpToNextImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_jumpToNextImage(self: ptr cQImageIOHandler, slot: int): bool {.exportc: "miqt_exec_callback_QImageIOHandler_jumpToNextImage ".} =
  var nimfunc = cast[ptr QImageIOHandlerjumpToNextImageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QImageIOHandlerjumpToImage*(self: gen_qimageiohandler_types.QImageIOHandler, imageNumber: cint): bool =
  fQImageIOHandler_virtualbase_jumpToImage(self.h, imageNumber)

type QImageIOHandlerjumpToImageProc* = proc(imageNumber: cint): bool
proc onjumpToImage*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlerjumpToImageProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlerjumpToImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_jumpToImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_jumpToImage(self: ptr cQImageIOHandler, slot: int, imageNumber: cint): bool {.exportc: "miqt_exec_callback_QImageIOHandler_jumpToImage ".} =
  var nimfunc = cast[ptr QImageIOHandlerjumpToImageProc](cast[pointer](slot))
  let slotval1 = imageNumber


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageIOHandlerloopCount*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fQImageIOHandler_virtualbase_loopCount(self.h)

type QImageIOHandlerloopCountProc* = proc(): cint
proc onloopCount*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlerloopCountProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlerloopCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_loopCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_loopCount(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_loopCount ".} =
  var nimfunc = cast[ptr QImageIOHandlerloopCountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QImageIOHandlerimageCount*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fQImageIOHandler_virtualbase_imageCount(self.h)

type QImageIOHandlerimageCountProc* = proc(): cint
proc onimageCount*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlerimageCountProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlerimageCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_imageCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_imageCount(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_imageCount ".} =
  var nimfunc = cast[ptr QImageIOHandlerimageCountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QImageIOHandlernextImageDelay*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fQImageIOHandler_virtualbase_nextImageDelay(self.h)

type QImageIOHandlernextImageDelayProc* = proc(): cint
proc onnextImageDelay*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlernextImageDelayProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlernextImageDelayProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_nextImageDelay(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_nextImageDelay(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_nextImageDelay ".} =
  var nimfunc = cast[ptr QImageIOHandlernextImageDelayProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QImageIOHandlercurrentImageNumber*(self: gen_qimageiohandler_types.QImageIOHandler, ): cint =
  fQImageIOHandler_virtualbase_currentImageNumber(self.h)

type QImageIOHandlercurrentImageNumberProc* = proc(): cint
proc oncurrentImageNumber*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlercurrentImageNumberProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlercurrentImageNumberProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_currentImageNumber(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_currentImageNumber(self: ptr cQImageIOHandler, slot: int): cint {.exportc: "miqt_exec_callback_QImageIOHandler_currentImageNumber ".} =
  var nimfunc = cast[ptr QImageIOHandlercurrentImageNumberProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QImageIOHandlercurrentImageRect*(self: gen_qimageiohandler_types.QImageIOHandler, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQImageIOHandler_virtualbase_currentImageRect(self.h))

type QImageIOHandlercurrentImageRectProc* = proc(): gen_qrect_types.QRect
proc oncurrentImageRect*(self: gen_qimageiohandler_types.QImageIOHandler, slot: QImageIOHandlercurrentImageRectProc) =
  # TODO check subclass
  var tmp = new QImageIOHandlercurrentImageRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOHandler_override_virtual_currentImageRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOHandler_currentImageRect(self: ptr cQImageIOHandler, slot: int): pointer {.exportc: "miqt_exec_callback_QImageIOHandler_currentImageRect ".} =
  var nimfunc = cast[ptr QImageIOHandlercurrentImageRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qimageiohandler_types.QImageIOHandler) =
  fcQImageIOHandler_delete(self.h)

func init*(T: type gen_qimageiohandler_types.QImageIOPlugin, h: ptr cQImageIOPlugin): gen_qimageiohandler_types.QImageIOPlugin =
  T(h: h)
proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin, ): gen_qimageiohandler_types.QImageIOPlugin =
  gen_qimageiohandler_types.QImageIOPlugin.init(fcQImageIOPlugin_new())

proc create*(T: type gen_qimageiohandler_types.QImageIOPlugin, parent: gen_qobject_types.QObject): gen_qimageiohandler_types.QImageIOPlugin =
  gen_qimageiohandler_types.QImageIOPlugin.init(fcQImageIOPlugin_new2(parent.h))

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

proc QImageIOPluginmetaObject*(self: gen_qimageiohandler_types.QImageIOPlugin, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQImageIOPlugin_virtualbase_metaObject(self.h))

type QImageIOPluginmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPluginmetaObjectProc) =
  # TODO check subclass
  var tmp = new QImageIOPluginmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_metaObject(self: ptr cQImageIOPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QImageIOPlugin_metaObject ".} =
  var nimfunc = cast[ptr QImageIOPluginmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QImageIOPluginmetacast*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cstring): pointer =
  fQImageIOPlugin_virtualbase_metacast(self.h, param1)

type QImageIOPluginmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPluginmetacastProc) =
  # TODO check subclass
  var tmp = new QImageIOPluginmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_metacast(self: ptr cQImageIOPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QImageIOPlugin_metacast ".} =
  var nimfunc = cast[ptr QImageIOPluginmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageIOPluginmetacall*(self: gen_qimageiohandler_types.QImageIOPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fQImageIOPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QImageIOPluginmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPluginmetacallProc) =
  # TODO check subclass
  var tmp = new QImageIOPluginmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_metacall(self: ptr cQImageIOPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QImageIOPlugin_metacall ".} =
  var nimfunc = cast[ptr QImageIOPluginmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QImageIOPlugincapabilitiesProc* = proc(device: gen_qiodevice_types.QIODevice, format: seq[byte]): cint
proc oncapabilities*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugincapabilitiesProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugincapabilitiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_capabilities(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_capabilities(self: ptr cQImageIOPlugin, slot: int, device: pointer, format: struct_miqt_string): cint {.exportc: "miqt_exec_callback_QImageIOPlugin_capabilities ".} =
  var nimfunc = cast[ptr QImageIOPlugincapabilitiesProc](cast[pointer](slot))
  let slotval1 = gen_qiodevice_types.QIODevice(h: device)

  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArrayByte(vformat_bytearray.data, 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
type QImageIOPlugincreateProc* = proc(device: gen_qiodevice_types.QIODevice, format: seq[byte]): gen_qimageiohandler_types.QImageIOHandler
proc oncreate*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugincreateProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugincreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_create(self: ptr cQImageIOPlugin, slot: int, device: pointer, format: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QImageIOPlugin_create ".} =
  var nimfunc = cast[ptr QImageIOPlugincreateProc](cast[pointer](slot))
  let slotval1 = gen_qiodevice_types.QIODevice(h: device)

  var vformat_bytearray = format
  var vformatx_ret = @(toOpenArrayByte(vformat_bytearray.data, 0, int(vformat_bytearray.len)-1))
  c_free(vformat_bytearray.data)
  let slotval2 = vformatx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QImageIOPluginevent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QEvent): bool =
  fQImageIOPlugin_virtualbase_event(self.h, event.h)

type QImageIOPlugineventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugineventProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugineventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_event(self: ptr cQImageIOPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QImageIOPlugin_event ".} =
  var nimfunc = cast[ptr QImageIOPlugineventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QImageIOPlugineventFilter*(self: gen_qimageiohandler_types.QImageIOPlugin, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQImageIOPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QImageIOPlugineventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugineventFilterProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugineventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_eventFilter(self: ptr cQImageIOPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QImageIOPlugin_eventFilter ".} =
  var nimfunc = cast[ptr QImageIOPlugineventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QImageIOPlugintimerEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QTimerEvent): void =
  fQImageIOPlugin_virtualbase_timerEvent(self.h, event.h)

type QImageIOPlugintimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugintimerEventProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugintimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_timerEvent(self: ptr cQImageIOPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_timerEvent ".} =
  var nimfunc = cast[ptr QImageIOPlugintimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QImageIOPluginchildEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QChildEvent): void =
  fQImageIOPlugin_virtualbase_childEvent(self.h, event.h)

type QImageIOPluginchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPluginchildEventProc) =
  # TODO check subclass
  var tmp = new QImageIOPluginchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_childEvent(self: ptr cQImageIOPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_childEvent ".} =
  var nimfunc = cast[ptr QImageIOPluginchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QImageIOPlugincustomEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, event: gen_qcoreevent_types.QEvent): void =
  fQImageIOPlugin_virtualbase_customEvent(self.h, event.h)

type QImageIOPlugincustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugincustomEventProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugincustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_customEvent(self: ptr cQImageIOPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_customEvent ".} =
  var nimfunc = cast[ptr QImageIOPlugincustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QImageIOPluginconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQImageIOPlugin_virtualbase_connectNotify(self.h, signal.h)

type QImageIOPluginconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPluginconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QImageIOPluginconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_connectNotify(self: ptr cQImageIOPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_connectNotify ".} =
  var nimfunc = cast[ptr QImageIOPluginconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QImageIOPlugindisconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQImageIOPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QImageIOPlugindisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qimageiohandler_types.QImageIOPlugin, slot: QImageIOPlugindisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QImageIOPlugindisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQImageIOPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QImageIOPlugin_disconnectNotify(self: ptr cQImageIOPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QImageIOPlugin_disconnectNotify ".} =
  var nimfunc = cast[ptr QImageIOPlugindisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qimageiohandler_types.QImageIOPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageIOPlugin_staticMetaObject())
proc delete*(self: gen_qimageiohandler_types.QImageIOPlugin) =
  fcQImageIOPlugin_delete(self.h)
