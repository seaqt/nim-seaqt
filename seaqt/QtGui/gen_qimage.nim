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
{.compile("gen_qimage.cpp", cflags).}


type QImageInvertModeEnum* = distinct cint
template InvertRgb*(_: type QImageInvertModeEnum): untyped = 0
template InvertRgba*(_: type QImageInvertModeEnum): untyped = 1


type QImageFormatEnum* = distinct cint
template Format_Invalid*(_: type QImageFormatEnum): untyped = 0
template Format_Mono*(_: type QImageFormatEnum): untyped = 1
template Format_MonoLSB*(_: type QImageFormatEnum): untyped = 2
template Format_Indexed8*(_: type QImageFormatEnum): untyped = 3
template Format_RGB32*(_: type QImageFormatEnum): untyped = 4
template Format_ARGB32*(_: type QImageFormatEnum): untyped = 5
template Format_ARGB32_Premultiplied*(_: type QImageFormatEnum): untyped = 6
template Format_RGB16*(_: type QImageFormatEnum): untyped = 7
template Format_ARGB8565_Premultiplied*(_: type QImageFormatEnum): untyped = 8
template Format_RGB666*(_: type QImageFormatEnum): untyped = 9
template Format_ARGB6666_Premultiplied*(_: type QImageFormatEnum): untyped = 10
template Format_RGB555*(_: type QImageFormatEnum): untyped = 11
template Format_ARGB8555_Premultiplied*(_: type QImageFormatEnum): untyped = 12
template Format_RGB888*(_: type QImageFormatEnum): untyped = 13
template Format_RGB444*(_: type QImageFormatEnum): untyped = 14
template Format_ARGB4444_Premultiplied*(_: type QImageFormatEnum): untyped = 15
template Format_RGBX8888*(_: type QImageFormatEnum): untyped = 16
template Format_RGBA8888*(_: type QImageFormatEnum): untyped = 17
template Format_RGBA8888_Premultiplied*(_: type QImageFormatEnum): untyped = 18
template Format_BGR30*(_: type QImageFormatEnum): untyped = 19
template Format_A2BGR30_Premultiplied*(_: type QImageFormatEnum): untyped = 20
template Format_RGB30*(_: type QImageFormatEnum): untyped = 21
template Format_A2RGB30_Premultiplied*(_: type QImageFormatEnum): untyped = 22
template Format_Alpha8*(_: type QImageFormatEnum): untyped = 23
template Format_Grayscale8*(_: type QImageFormatEnum): untyped = 24
template Format_RGBX64*(_: type QImageFormatEnum): untyped = 25
template Format_RGBA64*(_: type QImageFormatEnum): untyped = 26
template Format_RGBA64_Premultiplied*(_: type QImageFormatEnum): untyped = 27
template Format_Grayscale16*(_: type QImageFormatEnum): untyped = 28
template Format_BGR888*(_: type QImageFormatEnum): untyped = 29
template Format_RGBX16FPx4*(_: type QImageFormatEnum): untyped = 30
template Format_RGBA16FPx4*(_: type QImageFormatEnum): untyped = 31
template Format_RGBA16FPx4_Premultiplied*(_: type QImageFormatEnum): untyped = 32
template Format_RGBX32FPx4*(_: type QImageFormatEnum): untyped = 33
template Format_RGBA32FPx4*(_: type QImageFormatEnum): untyped = 34
template Format_RGBA32FPx4_Premultiplied*(_: type QImageFormatEnum): untyped = 35
template NImageFormats*(_: type QImageFormatEnum): untyped = 36


import ./gen_qimage_types
export gen_qimage_types

import
  ../QtCore/gen_qbytearrayview_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qcolor_types,
  ./gen_qcolorspace_types,
  ./gen_qcolortransform_types,
  ./gen_qpaintdevice,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types,
  ./gen_qpixelformat_types,
  ./gen_qtransform_types
export
  gen_qbytearrayview_types,
  gen_qiodevice_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qcolorspace_types,
  gen_qcolortransform_types,
  gen_qpaintdevice,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixelformat_types,
  gen_qtransform_types

type cQImage*{.exportc: "QImage", incompleteStruct.} = object

proc fcQImage_operatorAssign(self: pointer, param1: pointer): void {.importc: "QImage_operatorAssign".}
proc fcQImage_swap(self: pointer, other: pointer): void {.importc: "QImage_swap".}
proc fcQImage_isNull(self: pointer, ): bool {.importc: "QImage_isNull".}
proc fcQImage_devType(self: pointer, ): cint {.importc: "QImage_devType".}
proc fcQImage_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QImage_operatorEqual".}
proc fcQImage_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QImage_operatorNotEqual".}
proc fcQImage_ToQVariant(self: pointer, ): pointer {.importc: "QImage_ToQVariant".}
proc fcQImage_detach(self: pointer, ): void {.importc: "QImage_detach".}
proc fcQImage_isDetached(self: pointer, ): bool {.importc: "QImage_isDetached".}
proc fcQImage_copy(self: pointer, ): pointer {.importc: "QImage_copy".}
proc fcQImage_copy2(self: pointer, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QImage_copy2".}
proc fcQImage_format(self: pointer, ): cint {.importc: "QImage_format".}
proc fcQImage_convertToFormat(self: pointer, f: cint): pointer {.importc: "QImage_convertToFormat".}
proc fcQImage_convertToFormat2(self: pointer, f: cint, colorTable: struct_miqt_array): pointer {.importc: "QImage_convertToFormat2".}
proc fcQImage_reinterpretAsFormat(self: pointer, f: cint): bool {.importc: "QImage_reinterpretAsFormat".}
proc fcQImage_convertedTo(self: pointer, f: cint): pointer {.importc: "QImage_convertedTo".}
proc fcQImage_convertTo(self: pointer, f: cint): void {.importc: "QImage_convertTo".}
proc fcQImage_width(self: pointer, ): cint {.importc: "QImage_width".}
proc fcQImage_height(self: pointer, ): cint {.importc: "QImage_height".}
proc fcQImage_size(self: pointer, ): pointer {.importc: "QImage_size".}
proc fcQImage_rect(self: pointer, ): pointer {.importc: "QImage_rect".}
proc fcQImage_depth(self: pointer, ): cint {.importc: "QImage_depth".}
proc fcQImage_colorCount(self: pointer, ): cint {.importc: "QImage_colorCount".}
proc fcQImage_bitPlaneCount(self: pointer, ): cint {.importc: "QImage_bitPlaneCount".}
proc fcQImage_color(self: pointer, i: cint): cuint {.importc: "QImage_color".}
proc fcQImage_setColor(self: pointer, i: cint, c: cuint): void {.importc: "QImage_setColor".}
proc fcQImage_setColorCount(self: pointer, colorCount: cint): void {.importc: "QImage_setColorCount".}
proc fcQImage_allGray(self: pointer, ): bool {.importc: "QImage_allGray".}
proc fcQImage_isGrayscale(self: pointer, ): bool {.importc: "QImage_isGrayscale".}
proc fcQImage_bits(self: pointer, ): ptr uint8 {.importc: "QImage_bits".}
proc fcQImage_bits2(self: pointer, ): ptr uint8 {.importc: "QImage_bits2".}
proc fcQImage_constBits(self: pointer, ): ptr uint8 {.importc: "QImage_constBits".}
proc fcQImage_sizeInBytes(self: pointer, ): int64 {.importc: "QImage_sizeInBytes".}
proc fcQImage_scanLine(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_scanLine".}
proc fcQImage_scanLineWithInt(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_scanLineWithInt".}
proc fcQImage_constScanLine(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_constScanLine".}
proc fcQImage_bytesPerLine(self: pointer, ): int64 {.importc: "QImage_bytesPerLine".}
proc fcQImage_valid(self: pointer, x: cint, y: cint): bool {.importc: "QImage_valid".}
proc fcQImage_validWithPt(self: pointer, pt: pointer): bool {.importc: "QImage_validWithPt".}
proc fcQImage_pixelIndex(self: pointer, x: cint, y: cint): cint {.importc: "QImage_pixelIndex".}
proc fcQImage_pixelIndexWithPt(self: pointer, pt: pointer): cint {.importc: "QImage_pixelIndexWithPt".}
proc fcQImage_pixel(self: pointer, x: cint, y: cint): cuint {.importc: "QImage_pixel".}
proc fcQImage_pixelWithPt(self: pointer, pt: pointer): cuint {.importc: "QImage_pixelWithPt".}
proc fcQImage_setPixel(self: pointer, x: cint, y: cint, index_or_rgb: cuint): void {.importc: "QImage_setPixel".}
proc fcQImage_setPixel2(self: pointer, pt: pointer, index_or_rgb: cuint): void {.importc: "QImage_setPixel2".}
proc fcQImage_pixelColor(self: pointer, x: cint, y: cint): pointer {.importc: "QImage_pixelColor".}
proc fcQImage_pixelColorWithPt(self: pointer, pt: pointer): pointer {.importc: "QImage_pixelColorWithPt".}
proc fcQImage_setPixelColor(self: pointer, x: cint, y: cint, c: pointer): void {.importc: "QImage_setPixelColor".}
proc fcQImage_setPixelColor2(self: pointer, pt: pointer, c: pointer): void {.importc: "QImage_setPixelColor2".}
proc fcQImage_colorTable(self: pointer, ): struct_miqt_array {.importc: "QImage_colorTable".}
proc fcQImage_setColorTable(self: pointer, colors: struct_miqt_array): void {.importc: "QImage_setColorTable".}
proc fcQImage_devicePixelRatio(self: pointer, ): float64 {.importc: "QImage_devicePixelRatio".}
proc fcQImage_setDevicePixelRatio(self: pointer, scaleFactor: float64): void {.importc: "QImage_setDevicePixelRatio".}
proc fcQImage_deviceIndependentSize(self: pointer, ): pointer {.importc: "QImage_deviceIndependentSize".}
proc fcQImage_fill(self: pointer, pixel: cuint): void {.importc: "QImage_fill".}
proc fcQImage_fillWithColor(self: pointer, color: pointer): void {.importc: "QImage_fillWithColor".}
proc fcQImage_fill2(self: pointer, color: cint): void {.importc: "QImage_fill2".}
proc fcQImage_hasAlphaChannel(self: pointer, ): bool {.importc: "QImage_hasAlphaChannel".}
proc fcQImage_setAlphaChannel(self: pointer, alphaChannel: pointer): void {.importc: "QImage_setAlphaChannel".}
proc fcQImage_createAlphaMask(self: pointer, ): pointer {.importc: "QImage_createAlphaMask".}
proc fcQImage_createHeuristicMask(self: pointer, ): pointer {.importc: "QImage_createHeuristicMask".}
proc fcQImage_createMaskFromColor(self: pointer, color: cuint): pointer {.importc: "QImage_createMaskFromColor".}
proc fcQImage_scaled(self: pointer, w: cint, h: cint): pointer {.importc: "QImage_scaled".}
proc fcQImage_scaledWithQSize(self: pointer, s: pointer): pointer {.importc: "QImage_scaledWithQSize".}
proc fcQImage_scaledToWidth(self: pointer, w: cint): pointer {.importc: "QImage_scaledToWidth".}
proc fcQImage_scaledToHeight(self: pointer, h: cint): pointer {.importc: "QImage_scaledToHeight".}
proc fcQImage_transformed(self: pointer, matrix: pointer): pointer {.importc: "QImage_transformed".}
proc fcQImage_trueMatrix(param1: pointer, w: cint, h: cint): pointer {.importc: "QImage_trueMatrix".}
proc fcQImage_mirrored(self: pointer, ): pointer {.importc: "QImage_mirrored".}
proc fcQImage_rgbSwapped(self: pointer, ): pointer {.importc: "QImage_rgbSwapped".}
proc fcQImage_mirror(self: pointer, ): void {.importc: "QImage_mirror".}
proc fcQImage_rgbSwap(self: pointer, ): void {.importc: "QImage_rgbSwap".}
proc fcQImage_invertPixels(self: pointer, ): void {.importc: "QImage_invertPixels".}
proc fcQImage_colorSpace(self: pointer, ): pointer {.importc: "QImage_colorSpace".}
proc fcQImage_convertedToColorSpace(self: pointer, param1: pointer): pointer {.importc: "QImage_convertedToColorSpace".}
proc fcQImage_convertToColorSpace(self: pointer, param1: pointer): void {.importc: "QImage_convertToColorSpace".}
proc fcQImage_setColorSpace(self: pointer, colorSpace: pointer): void {.importc: "QImage_setColorSpace".}
proc fcQImage_colorTransformed(self: pointer, transform: pointer): pointer {.importc: "QImage_colorTransformed".}
proc fcQImage_applyColorTransform(self: pointer, transform: pointer): void {.importc: "QImage_applyColorTransform".}
proc fcQImage_load(self: pointer, device: pointer, format: cstring): bool {.importc: "QImage_load".}
proc fcQImage_loadWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QImage_loadWithFileName".}
proc fcQImage_loadFromData(self: pointer, data: pointer): bool {.importc: "QImage_loadFromData".}
proc fcQImage_loadFromData2(self: pointer, buf: ptr uint8, len: cint): bool {.importc: "QImage_loadFromData2".}
proc fcQImage_loadFromDataWithData(self: pointer, data: struct_miqt_string): bool {.importc: "QImage_loadFromDataWithData".}
proc fcQImage_save(self: pointer, fileName: struct_miqt_string): bool {.importc: "QImage_save".}
proc fcQImage_saveWithDevice(self: pointer, device: pointer): bool {.importc: "QImage_saveWithDevice".}
proc fcQImage_fromData(data: pointer): pointer {.importc: "QImage_fromData".}
proc fcQImage_fromData2(data: ptr uint8, size: cint): pointer {.importc: "QImage_fromData2".}
proc fcQImage_fromDataWithData(data: struct_miqt_string): pointer {.importc: "QImage_fromDataWithData".}
proc fcQImage_cacheKey(self: pointer, ): clonglong {.importc: "QImage_cacheKey".}
proc fcQImage_paintEngine(self: pointer, ): pointer {.importc: "QImage_paintEngine".}
proc fcQImage_dotsPerMeterX(self: pointer, ): cint {.importc: "QImage_dotsPerMeterX".}
proc fcQImage_dotsPerMeterY(self: pointer, ): cint {.importc: "QImage_dotsPerMeterY".}
proc fcQImage_setDotsPerMeterX(self: pointer, dotsPerMeterX: cint): void {.importc: "QImage_setDotsPerMeterX".}
proc fcQImage_setDotsPerMeterY(self: pointer, dotsPerMeterY: cint): void {.importc: "QImage_setDotsPerMeterY".}
proc fcQImage_offset(self: pointer, ): pointer {.importc: "QImage_offset".}
proc fcQImage_setOffset(self: pointer, offset: pointer): void {.importc: "QImage_setOffset".}
proc fcQImage_textKeys(self: pointer, ): struct_miqt_array {.importc: "QImage_textKeys".}
proc fcQImage_text(self: pointer, ): struct_miqt_string {.importc: "QImage_text".}
proc fcQImage_setText(self: pointer, key: struct_miqt_string, value: struct_miqt_string): void {.importc: "QImage_setText".}
proc fcQImage_pixelFormat(self: pointer, ): pointer {.importc: "QImage_pixelFormat".}
proc fcQImage_toPixelFormat(format: cint): pointer {.importc: "QImage_toPixelFormat".}
proc fcQImage_toImageFormat(format: pointer): cint {.importc: "QImage_toImageFormat".}
proc fcQImage_copy1(self: pointer, rect: pointer): pointer {.importc: "QImage_copy1".}
proc fcQImage_convertToFormat22(self: pointer, f: cint, flags: cint): pointer {.importc: "QImage_convertToFormat22".}
proc fcQImage_convertToFormat3(self: pointer, f: cint, colorTable: struct_miqt_array, flags: cint): pointer {.importc: "QImage_convertToFormat3".}
proc fcQImage_convertedTo2(self: pointer, f: cint, flags: cint): pointer {.importc: "QImage_convertedTo2".}
proc fcQImage_convertTo2(self: pointer, f: cint, flags: cint): void {.importc: "QImage_convertTo2".}
proc fcQImage_createAlphaMask1(self: pointer, flags: cint): pointer {.importc: "QImage_createAlphaMask1".}
proc fcQImage_createHeuristicMask1(self: pointer, clipTight: bool): pointer {.importc: "QImage_createHeuristicMask1".}
proc fcQImage_createMaskFromColor2(self: pointer, color: cuint, mode: cint): pointer {.importc: "QImage_createMaskFromColor2".}
proc fcQImage_scaled3(self: pointer, w: cint, h: cint, aspectMode: cint): pointer {.importc: "QImage_scaled3".}
proc fcQImage_scaled4(self: pointer, w: cint, h: cint, aspectMode: cint, mode: cint): pointer {.importc: "QImage_scaled4".}
proc fcQImage_scaled2(self: pointer, s: pointer, aspectMode: cint): pointer {.importc: "QImage_scaled2".}
proc fcQImage_scaled32(self: pointer, s: pointer, aspectMode: cint, mode: cint): pointer {.importc: "QImage_scaled32".}
proc fcQImage_scaledToWidth2(self: pointer, w: cint, mode: cint): pointer {.importc: "QImage_scaledToWidth2".}
proc fcQImage_scaledToHeight2(self: pointer, h: cint, mode: cint): pointer {.importc: "QImage_scaledToHeight2".}
proc fcQImage_transformed2(self: pointer, matrix: pointer, mode: cint): pointer {.importc: "QImage_transformed2".}
proc fcQImage_mirrored1(self: pointer, horizontally: bool): pointer {.importc: "QImage_mirrored1".}
proc fcQImage_mirrored2(self: pointer, horizontally: bool, vertically: bool): pointer {.importc: "QImage_mirrored2".}
proc fcQImage_mirror1(self: pointer, horizontally: bool): void {.importc: "QImage_mirror1".}
proc fcQImage_mirror2(self: pointer, horizontally: bool, vertically: bool): void {.importc: "QImage_mirror2".}
proc fcQImage_invertPixels1(self: pointer, param1: cint): void {.importc: "QImage_invertPixels1".}
proc fcQImage_load2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QImage_load2".}
proc fcQImage_loadFromData22(self: pointer, data: pointer, format: cstring): bool {.importc: "QImage_loadFromData22".}
proc fcQImage_loadFromData3(self: pointer, buf: ptr uint8, len: cint, format: cstring): bool {.importc: "QImage_loadFromData3".}
proc fcQImage_loadFromData23(self: pointer, data: struct_miqt_string, format: cstring): bool {.importc: "QImage_loadFromData23".}
proc fcQImage_save2(self: pointer, fileName: struct_miqt_string, format: cstring): bool {.importc: "QImage_save2".}
proc fcQImage_save3(self: pointer, fileName: struct_miqt_string, format: cstring, quality: cint): bool {.importc: "QImage_save3".}
proc fcQImage_save22(self: pointer, device: pointer, format: cstring): bool {.importc: "QImage_save22".}
proc fcQImage_save32(self: pointer, device: pointer, format: cstring, quality: cint): bool {.importc: "QImage_save32".}
proc fcQImage_fromData22(data: pointer, format: cstring): pointer {.importc: "QImage_fromData22".}
proc fcQImage_fromData3(data: ptr uint8, size: cint, format: cstring): pointer {.importc: "QImage_fromData3".}
proc fcQImage_fromData23(data: struct_miqt_string, format: cstring): pointer {.importc: "QImage_fromData23".}
proc fcQImage_text1(self: pointer, key: struct_miqt_string): struct_miqt_string {.importc: "QImage_text1".}
type cQImageVTable = object
  destructor*: proc(vtbl: ptr cQImageVTable, self: ptr cQImage) {.cdecl, raises:[], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, metric: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQImage_virtualbase_devType(self: pointer, ): cint {.importc: "QImage_virtualbase_devType".}
proc fcQImage_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QImage_virtualbase_paintEngine".}
proc fcQImage_virtualbase_metric(self: pointer, metric: cint): cint {.importc: "QImage_virtualbase_metric".}
proc fcQImage_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QImage_virtualbase_initPainter".}
proc fcQImage_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QImage_virtualbase_redirected".}
proc fcQImage_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QImage_virtualbase_sharedPainter".}
proc fcQImage_new(vtbl: pointer, ): ptr cQImage {.importc: "QImage_new".}
proc fcQImage_new2(vtbl: pointer, size: pointer, format: cint): ptr cQImage {.importc: "QImage_new2".}
proc fcQImage_new3(vtbl: pointer, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new3".}
proc fcQImage_new4(vtbl: pointer, data: ptr uint8, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new4".}
proc fcQImage_new5(vtbl: pointer, data: ptr uint8, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new5".}
proc fcQImage_new6(vtbl: pointer, data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint): ptr cQImage {.importc: "QImage_new6".}
proc fcQImage_new7(vtbl: pointer, data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint): ptr cQImage {.importc: "QImage_new7".}
proc fcQImage_new8(vtbl: pointer, fileName: struct_miqt_string): ptr cQImage {.importc: "QImage_new8".}
proc fcQImage_new9(vtbl: pointer, param1: pointer): ptr cQImage {.importc: "QImage_new9".}
proc fcQImage_new10(vtbl: pointer, fileName: struct_miqt_string, format: cstring): ptr cQImage {.importc: "QImage_new10".}
proc fcQImage_staticMetaObject(): pointer {.importc: "QImage_staticMetaObject".}
proc fcQImage_delete(self: pointer) {.importc: "QImage_delete".}

proc operatorAssign*(self: gen_qimage_types.QImage, param1: gen_qimage_types.QImage): void =
  fcQImage_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qimage_types.QImage, other: gen_qimage_types.QImage): void =
  fcQImage_swap(self.h, other.h)

proc isNull*(self: gen_qimage_types.QImage, ): bool =
  fcQImage_isNull(self.h)

proc devType*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_devType(self.h)

proc operatorEqual*(self: gen_qimage_types.QImage, param1: gen_qimage_types.QImage): bool =
  fcQImage_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qimage_types.QImage, param1: gen_qimage_types.QImage): bool =
  fcQImage_operatorNotEqual(self.h, param1.h)

proc ToQVariant*(self: gen_qimage_types.QImage, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImage_ToQVariant(self.h))

proc detach*(self: gen_qimage_types.QImage, ): void =
  fcQImage_detach(self.h)

proc isDetached*(self: gen_qimage_types.QImage, ): bool =
  fcQImage_isDetached(self.h)

proc copy*(self: gen_qimage_types.QImage, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_copy(self.h))

proc copy*(self: gen_qimage_types.QImage, x: cint, y: cint, w: cint, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_copy2(self.h, x, y, w, h))

proc format*(self: gen_qimage_types.QImage, ): cint =
  cint(fcQImage_format(self.h))

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertToFormat(self.h, cint(f)))

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint, colorTable: seq[cuint]): gen_qimage_types.QImage =
  var colorTable_CArray = newSeq[cuint](len(colorTable))
  for i in 0..<len(colorTable):
    colorTable_CArray[i] = colorTable[i]

  gen_qimage_types.QImage(h: fcQImage_convertToFormat2(self.h, cint(f), struct_miqt_array(len: csize_t(len(colorTable)), data: if len(colorTable) == 0: nil else: addr(colorTable_CArray[0]))))

proc reinterpretAsFormat*(self: gen_qimage_types.QImage, f: cint): bool =
  fcQImage_reinterpretAsFormat(self.h, cint(f))

proc convertedTo*(self: gen_qimage_types.QImage, f: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertedTo(self.h, cint(f)))

proc convertTo*(self: gen_qimage_types.QImage, f: cint): void =
  fcQImage_convertTo(self.h, cint(f))

proc width*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_width(self.h)

proc height*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_height(self.h)

proc size*(self: gen_qimage_types.QImage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQImage_size(self.h))

proc rect*(self: gen_qimage_types.QImage, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImage_rect(self.h))

proc depth*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_depth(self.h)

proc colorCount*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_colorCount(self.h)

proc bitPlaneCount*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_bitPlaneCount(self.h)

proc color*(self: gen_qimage_types.QImage, i: cint): cuint =
  fcQImage_color(self.h, i)

proc setColor*(self: gen_qimage_types.QImage, i: cint, c: cuint): void =
  fcQImage_setColor(self.h, i, c)

proc setColorCount*(self: gen_qimage_types.QImage, colorCount: cint): void =
  fcQImage_setColorCount(self.h, colorCount)

proc allGray*(self: gen_qimage_types.QImage, ): bool =
  fcQImage_allGray(self.h)

proc isGrayscale*(self: gen_qimage_types.QImage, ): bool =
  fcQImage_isGrayscale(self.h)

proc bits*(self: gen_qimage_types.QImage, ): ptr uint8 =
  fcQImage_bits(self.h)

proc bits2*(self: gen_qimage_types.QImage, ): ptr uint8 =
  fcQImage_bits2(self.h)

proc constBits*(self: gen_qimage_types.QImage, ): ptr uint8 =
  fcQImage_constBits(self.h)

proc sizeInBytes*(self: gen_qimage_types.QImage, ): int64 =
  fcQImage_sizeInBytes(self.h)

proc scanLine*(self: gen_qimage_types.QImage, param1: cint): ptr uint8 =
  fcQImage_scanLine(self.h, param1)

proc scanLine2*(self: gen_qimage_types.QImage, param1: cint): ptr uint8 =
  fcQImage_scanLineWithInt(self.h, param1)

proc constScanLine*(self: gen_qimage_types.QImage, param1: cint): ptr uint8 =
  fcQImage_constScanLine(self.h, param1)

proc bytesPerLine*(self: gen_qimage_types.QImage, ): int64 =
  fcQImage_bytesPerLine(self.h)

proc valid*(self: gen_qimage_types.QImage, x: cint, y: cint): bool =
  fcQImage_valid(self.h, x, y)

proc valid*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): bool =
  fcQImage_validWithPt(self.h, pt.h)

proc pixelIndex*(self: gen_qimage_types.QImage, x: cint, y: cint): cint =
  fcQImage_pixelIndex(self.h, x, y)

proc pixelIndex*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): cint =
  fcQImage_pixelIndexWithPt(self.h, pt.h)

proc pixel*(self: gen_qimage_types.QImage, x: cint, y: cint): cuint =
  fcQImage_pixel(self.h, x, y)

proc pixel*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): cuint =
  fcQImage_pixelWithPt(self.h, pt.h)

proc setPixel*(self: gen_qimage_types.QImage, x: cint, y: cint, index_or_rgb: cuint): void =
  fcQImage_setPixel(self.h, x, y, index_or_rgb)

proc setPixel*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint, index_or_rgb: cuint): void =
  fcQImage_setPixel2(self.h, pt.h, index_or_rgb)

proc pixelColor*(self: gen_qimage_types.QImage, x: cint, y: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQImage_pixelColor(self.h, x, y))

proc pixelColor*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQImage_pixelColorWithPt(self.h, pt.h))

proc setPixelColor*(self: gen_qimage_types.QImage, x: cint, y: cint, c: gen_qcolor_types.QColor): void =
  fcQImage_setPixelColor(self.h, x, y, c.h)

proc setPixelColor*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint, c: gen_qcolor_types.QColor): void =
  fcQImage_setPixelColor2(self.h, pt.h, c.h)

proc colorTable*(self: gen_qimage_types.QImage, ): seq[cuint] =
  var v_ma = fcQImage_colorTable(self.h)
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setColorTable*(self: gen_qimage_types.QImage, colors: seq[cuint]): void =
  var colors_CArray = newSeq[cuint](len(colors))
  for i in 0..<len(colors):
    colors_CArray[i] = colors[i]

  fcQImage_setColorTable(self.h, struct_miqt_array(len: csize_t(len(colors)), data: if len(colors) == 0: nil else: addr(colors_CArray[0])))

proc devicePixelRatio*(self: gen_qimage_types.QImage, ): float64 =
  fcQImage_devicePixelRatio(self.h)

proc setDevicePixelRatio*(self: gen_qimage_types.QImage, scaleFactor: float64): void =
  fcQImage_setDevicePixelRatio(self.h, scaleFactor)

proc deviceIndependentSize*(self: gen_qimage_types.QImage, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQImage_deviceIndependentSize(self.h))

proc fill*(self: gen_qimage_types.QImage, pixel: cuint): void =
  fcQImage_fill(self.h, pixel)

proc fill*(self: gen_qimage_types.QImage, color: gen_qcolor_types.QColor): void =
  fcQImage_fillWithColor(self.h, color.h)

proc fill*(self: gen_qimage_types.QImage, color: cint): void =
  fcQImage_fill2(self.h, cint(color))

proc hasAlphaChannel*(self: gen_qimage_types.QImage, ): bool =
  fcQImage_hasAlphaChannel(self.h)

proc setAlphaChannel*(self: gen_qimage_types.QImage, alphaChannel: gen_qimage_types.QImage): void =
  fcQImage_setAlphaChannel(self.h, alphaChannel.h)

proc createAlphaMask*(self: gen_qimage_types.QImage, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createAlphaMask(self.h))

proc createHeuristicMask*(self: gen_qimage_types.QImage, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createHeuristicMask(self.h))

proc createMaskFromColor*(self: gen_qimage_types.QImage, color: cuint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createMaskFromColor(self.h, color))

proc scaled*(self: gen_qimage_types.QImage, w: cint, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaled(self.h, w, h))

proc scaled*(self: gen_qimage_types.QImage, s: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledWithQSize(self.h, s.h))

proc scaledToWidth*(self: gen_qimage_types.QImage, w: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToWidth(self.h, w))

proc scaledToHeight*(self: gen_qimage_types.QImage, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToHeight(self.h, h))

proc transformed*(self: gen_qimage_types.QImage, matrix: gen_qtransform_types.QTransform): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_transformed(self.h, matrix.h))

proc trueMatrix*(_: type gen_qimage_types.QImage, param1: gen_qtransform_types.QTransform, w: cint, h: cint): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQImage_trueMatrix(param1.h, w, h))

proc mirrored*(self: gen_qimage_types.QImage, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_mirrored(self.h))

proc rgbSwapped*(self: gen_qimage_types.QImage, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_rgbSwapped(self.h))

proc mirror*(self: gen_qimage_types.QImage, ): void =
  fcQImage_mirror(self.h)

proc rgbSwap*(self: gen_qimage_types.QImage, ): void =
  fcQImage_rgbSwap(self.h)

proc invertPixels*(self: gen_qimage_types.QImage, ): void =
  fcQImage_invertPixels(self.h)

proc colorSpace*(self: gen_qimage_types.QImage, ): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQImage_colorSpace(self.h))

proc convertedToColorSpace*(self: gen_qimage_types.QImage, param1: gen_qcolorspace_types.QColorSpace): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertedToColorSpace(self.h, param1.h))

proc convertToColorSpace*(self: gen_qimage_types.QImage, param1: gen_qcolorspace_types.QColorSpace): void =
  fcQImage_convertToColorSpace(self.h, param1.h)

proc setColorSpace*(self: gen_qimage_types.QImage, colorSpace: gen_qcolorspace_types.QColorSpace): void =
  fcQImage_setColorSpace(self.h, colorSpace.h)

proc colorTransformed*(self: gen_qimage_types.QImage, transform: gen_qcolortransform_types.QColorTransform): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_colorTransformed(self.h, transform.h))

proc applyColorTransform*(self: gen_qimage_types.QImage, transform: gen_qcolortransform_types.QColorTransform): void =
  fcQImage_applyColorTransform(self.h, transform.h)

proc load*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQImage_load(self.h, device.h, format)

proc load*(self: gen_qimage_types.QImage, fileName: string): bool =
  fcQImage_loadWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc loadFromData*(self: gen_qimage_types.QImage, data: gen_qbytearrayview_types.QByteArrayView): bool =
  fcQImage_loadFromData(self.h, data.h)

proc loadFromData*(self: gen_qimage_types.QImage, buf: ptr uint8, len: cint): bool =
  fcQImage_loadFromData2(self.h, buf, len)

proc loadFromData*(self: gen_qimage_types.QImage, data: seq[byte]): bool =
  fcQImage_loadFromDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc save*(self: gen_qimage_types.QImage, fileName: string): bool =
  fcQImage_save(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc save*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice): bool =
  fcQImage_saveWithDevice(self.h, device.h)

proc fromData*(_: type gen_qimage_types.QImage, data: gen_qbytearrayview_types.QByteArrayView): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData(data.h))

proc fromData*(_: type gen_qimage_types.QImage, data: ptr uint8, size: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData2(data, size))

proc fromData*(_: type gen_qimage_types.QImage, data: seq[byte]): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromDataWithData(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc cacheKey*(self: gen_qimage_types.QImage, ): clonglong =
  fcQImage_cacheKey(self.h)

proc paintEngine*(self: gen_qimage_types.QImage, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQImage_paintEngine(self.h))

proc dotsPerMeterX*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_dotsPerMeterX(self.h)

proc dotsPerMeterY*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_dotsPerMeterY(self.h)

proc setDotsPerMeterX*(self: gen_qimage_types.QImage, dotsPerMeterX: cint): void =
  fcQImage_setDotsPerMeterX(self.h, dotsPerMeterX)

proc setDotsPerMeterY*(self: gen_qimage_types.QImage, dotsPerMeterY: cint): void =
  fcQImage_setDotsPerMeterY(self.h, dotsPerMeterY)

proc offset*(self: gen_qimage_types.QImage, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQImage_offset(self.h))

proc setOffset*(self: gen_qimage_types.QImage, offset: gen_qpoint_types.QPoint): void =
  fcQImage_setOffset(self.h, offset.h)

proc textKeys*(self: gen_qimage_types.QImage, ): seq[string] =
  var v_ma = fcQImage_textKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc text*(self: gen_qimage_types.QImage, ): string =
  let v_ms = fcQImage_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qimage_types.QImage, key: string, value: string): void =
  fcQImage_setText(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc pixelFormat*(self: gen_qimage_types.QImage, ): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQImage_pixelFormat(self.h))

proc toPixelFormat*(_: type gen_qimage_types.QImage, format: cint): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQImage_toPixelFormat(cint(format)))

proc toImageFormat*(_: type gen_qimage_types.QImage, format: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQImage_toImageFormat(format.h))

proc copy*(self: gen_qimage_types.QImage, rect: gen_qrect_types.QRect): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_copy1(self.h, rect.h))

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertToFormat22(self.h, cint(f), cint(flags)))

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint, colorTable: seq[cuint], flags: cint): gen_qimage_types.QImage =
  var colorTable_CArray = newSeq[cuint](len(colorTable))
  for i in 0..<len(colorTable):
    colorTable_CArray[i] = colorTable[i]

  gen_qimage_types.QImage(h: fcQImage_convertToFormat3(self.h, cint(f), struct_miqt_array(len: csize_t(len(colorTable)), data: if len(colorTable) == 0: nil else: addr(colorTable_CArray[0])), cint(flags)))

proc convertedTo*(self: gen_qimage_types.QImage, f: cint, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertedTo2(self.h, cint(f), cint(flags)))

proc convertTo*(self: gen_qimage_types.QImage, f: cint, flags: cint): void =
  fcQImage_convertTo2(self.h, cint(f), cint(flags))

proc createAlphaMask*(self: gen_qimage_types.QImage, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createAlphaMask1(self.h, cint(flags)))

proc createHeuristicMask*(self: gen_qimage_types.QImage, clipTight: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createHeuristicMask1(self.h, clipTight))

proc createMaskFromColor*(self: gen_qimage_types.QImage, color: cuint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createMaskFromColor2(self.h, color, cint(mode)))

proc scaled*(self: gen_qimage_types.QImage, w: cint, h: cint, aspectMode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaled3(self.h, w, h, cint(aspectMode)))

proc scaled*(self: gen_qimage_types.QImage, w: cint, h: cint, aspectMode: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaled4(self.h, w, h, cint(aspectMode), cint(mode)))

proc scaled*(self: gen_qimage_types.QImage, s: gen_qsize_types.QSize, aspectMode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaled2(self.h, s.h, cint(aspectMode)))

proc scaled*(self: gen_qimage_types.QImage, s: gen_qsize_types.QSize, aspectMode: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaled32(self.h, s.h, cint(aspectMode), cint(mode)))

proc scaledToWidth*(self: gen_qimage_types.QImage, w: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToWidth2(self.h, w, cint(mode)))

proc scaledToHeight*(self: gen_qimage_types.QImage, h: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToHeight2(self.h, h, cint(mode)))

proc transformed*(self: gen_qimage_types.QImage, matrix: gen_qtransform_types.QTransform, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_transformed2(self.h, matrix.h, cint(mode)))

proc mirrored*(self: gen_qimage_types.QImage, horizontally: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_mirrored1(self.h, horizontally))

proc mirrored*(self: gen_qimage_types.QImage, horizontally: bool, vertically: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_mirrored2(self.h, horizontally, vertically))

proc mirror*(self: gen_qimage_types.QImage, horizontally: bool): void =
  fcQImage_mirror1(self.h, horizontally)

proc mirror*(self: gen_qimage_types.QImage, horizontally: bool, vertically: bool): void =
  fcQImage_mirror2(self.h, horizontally, vertically)

proc invertPixels*(self: gen_qimage_types.QImage, param1: cint): void =
  fcQImage_invertPixels1(self.h, cint(param1))

proc load*(self: gen_qimage_types.QImage, fileName: string, format: cstring): bool =
  fcQImage_load2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc loadFromData*(self: gen_qimage_types.QImage, data: gen_qbytearrayview_types.QByteArrayView, format: cstring): bool =
  fcQImage_loadFromData22(self.h, data.h, format)

proc loadFromData*(self: gen_qimage_types.QImage, buf: ptr uint8, len: cint, format: cstring): bool =
  fcQImage_loadFromData3(self.h, buf, len, format)

proc loadFromData*(self: gen_qimage_types.QImage, data: seq[byte], format: cstring): bool =
  fcQImage_loadFromData23(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format)

proc save*(self: gen_qimage_types.QImage, fileName: string, format: cstring): bool =
  fcQImage_save2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)

proc save*(self: gen_qimage_types.QImage, fileName: string, format: cstring, quality: cint): bool =
  fcQImage_save3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format, quality)

proc save*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQImage_save22(self.h, device.h, format)

proc save*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice, format: cstring, quality: cint): bool =
  fcQImage_save32(self.h, device.h, format, quality)

proc fromData*(_: type gen_qimage_types.QImage, data: gen_qbytearrayview_types.QByteArrayView, format: cstring): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData22(data.h, format))

proc fromData*(_: type gen_qimage_types.QImage, data: ptr uint8, size: cint, format: cstring): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData3(data, size, format))

proc fromData*(_: type gen_qimage_types.QImage, data: seq[byte], format: cstring): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData23(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format))

proc text*(self: gen_qimage_types.QImage, key: string): string =
  let v_ms = fcQImage_text1(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QImagedevTypeProc* = proc(self: QImage): cint {.raises: [], gcsafe.}
type QImagepaintEngineProc* = proc(self: QImage): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QImagemetricProc* = proc(self: QImage, metric: cint): cint {.raises: [], gcsafe.}
type QImageinitPainterProc* = proc(self: QImage, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QImageredirectedProc* = proc(self: QImage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QImagesharedPainterProc* = proc(self: QImage): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QImageVTable* = object
  vtbl: cQImageVTable
  devType*: QImagedevTypeProc
  paintEngine*: QImagepaintEngineProc
  metric*: QImagemetricProc
  initPainter*: QImageinitPainterProc
  redirected*: QImageredirectedProc
  sharedPainter*: QImagesharedPainterProc
proc QImagedevType*(self: gen_qimage_types.QImage, ): cint =
  fcQImage_virtualbase_devType(self.h)

proc miqt_exec_callback_cQImage_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](vtbl)
  let self = QImage(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QImagepaintEngine*(self: gen_qimage_types.QImage, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQImage_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQImage_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](vtbl)
  let self = QImage(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QImagemetric*(self: gen_qimage_types.QImage, metric: cint): cint =
  fcQImage_virtualbase_metric(self.h, cint(metric))

proc miqt_exec_callback_cQImage_metric(vtbl: pointer, self: pointer, metric: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](vtbl)
  let self = QImage(h: self)
  let slotval1 = cint(metric)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QImageinitPainter*(self: gen_qimage_types.QImage, painter: gen_qpainter_types.QPainter): void =
  fcQImage_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQImage_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](vtbl)
  let self = QImage(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QImageredirected*(self: gen_qimage_types.QImage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQImage_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQImage_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](vtbl)
  let self = QImage(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QImagesharedPainter*(self: gen_qimage_types.QImage, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQImage_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQImage_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](vtbl)
  let self = QImage(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc create*(T: type gen_qimage_types.QImage,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new(addr(vtbl[]), ))

proc create*(T: type gen_qimage_types.QImage,
    size: gen_qsize_types.QSize, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new2(addr(vtbl[]), size.h, cint(format)))

proc create*(T: type gen_qimage_types.QImage,
    width: cint, height: cint, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new3(addr(vtbl[]), width, height, cint(format)))

proc create*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new4(addr(vtbl[]), data, width, height, cint(format)))

proc create2*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new5(addr(vtbl[]), data, width, height, cint(format)))

proc create*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new6(addr(vtbl[]), data, width, height, bytesPerLine, cint(format)))

proc create2*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new7(addr(vtbl[]), data, width, height, bytesPerLine, cint(format)))

proc create*(T: type gen_qimage_types.QImage,
    fileName: string,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new8(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qimage_types.QImage,
    param1: gen_qimage_types.QImage,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new9(addr(vtbl[]), param1.h))

proc create*(T: type gen_qimage_types.QImage,
    fileName: string, format: cstring,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQImageVTable, _: ptr cQImage) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQImage_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQImage_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQImage_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQImage_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQImage_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQImage_sharedPainter
  gen_qimage_types.QImage(h: fcQImage_new10(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))

proc staticMetaObject*(_: type gen_qimage_types.QImage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImage_staticMetaObject())
proc delete*(self: gen_qimage_types.QImage) =
  fcQImage_delete(self.h)
