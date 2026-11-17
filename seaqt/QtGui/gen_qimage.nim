import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qimage.cpp", QtGuiCFlags).}


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

proc fcQImage_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QImage_operatorAssign".}
proc fcQImage_swap(self: pointer, other: pointer): void {.importc: "QImage_swap".}
proc fcQImage_isNull(self: pointer): bool {.importc: "QImage_isNull".}
proc fcQImage_devType(self: pointer): cint {.importc: "QImage_devType".}
proc fcQImage_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QImage_operatorEqual".}
proc fcQImage_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QImage_operatorNotEqual".}
proc fcQImage_ToQVariant(self: pointer): pointer {.importc: "QImage_ToQVariant".}
proc fcQImage_detach(self: pointer): void {.importc: "QImage_detach".}
proc fcQImage_isDetached(self: pointer): bool {.importc: "QImage_isDetached".}
proc fcQImage_copy(self: pointer): pointer {.importc: "QImage_copy".}
proc fcQImage_copyXYWH(self: pointer, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QImage_copy_x_y_w_h".}
proc fcQImage_format(self: pointer): cint {.importc: "QImage_format".}
proc fcQImage_convertToFormatF(self: pointer, f: cint): pointer {.importc: "QImage_convertToFormat_f".}
proc fcQImage_convertToFormatFColorTable(self: pointer, f: cint, colorTable: struct_seaqt_array): pointer {.importc: "QImage_convertToFormat_f_colorTable".}
proc fcQImage_reinterpretAsFormat(self: pointer, f: cint): bool {.importc: "QImage_reinterpretAsFormat".}
proc fcQImage_convertedToF(self: pointer, f: cint): pointer {.importc: "QImage_convertedTo_f".}
proc fcQImage_convertToF(self: pointer, f: cint): void {.importc: "QImage_convertTo_f".}
proc fcQImage_width(self: pointer): cint {.importc: "QImage_width".}
proc fcQImage_height(self: pointer): cint {.importc: "QImage_height".}
proc fcQImage_size(self: pointer): pointer {.importc: "QImage_size".}
proc fcQImage_rect(self: pointer): pointer {.importc: "QImage_rect".}
proc fcQImage_depth(self: pointer): cint {.importc: "QImage_depth".}
proc fcQImage_colorCount(self: pointer): cint {.importc: "QImage_colorCount".}
proc fcQImage_bitPlaneCount(self: pointer): cint {.importc: "QImage_bitPlaneCount".}
proc fcQImage_color(self: pointer, i: cint): cuint {.importc: "QImage_color".}
proc fcQImage_setColor(self: pointer, i: cint, c: cuint): void {.importc: "QImage_setColor".}
proc fcQImage_setColorCount(self: pointer, colorCount: cint): void {.importc: "QImage_setColorCount".}
proc fcQImage_allGray(self: pointer): bool {.importc: "QImage_allGray".}
proc fcQImage_isGrayscale(self: pointer): bool {.importc: "QImage_isGrayscale".}
proc fcQImage_bits(self: pointer): ptr uint8 {.importc: "QImage_bits".}
proc fcQImage_bitsConst(self: pointer): ptr uint8 {.importc: "QImage_bits_const".}
proc fcQImage_constBits(self: pointer): ptr uint8 {.importc: "QImage_constBits".}
proc fcQImage_sizeInBytes(self: pointer): int64 {.importc: "QImage_sizeInBytes".}
proc fcQImage_scanLineInt(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_scanLine_int".}
proc fcQImage_scanLineConstInt(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_scanLine_const_int".}
proc fcQImage_constScanLine(self: pointer, param1: cint): ptr uint8 {.importc: "QImage_constScanLine".}
proc fcQImage_bytesPerLine(self: pointer): int64 {.importc: "QImage_bytesPerLine".}
proc fcQImage_validXY(self: pointer, x: cint, y: cint): bool {.importc: "QImage_valid_x_y".}
proc fcQImage_validPt(self: pointer, pt: pointer): bool {.importc: "QImage_valid_pt".}
proc fcQImage_pixelIndexXY(self: pointer, x: cint, y: cint): cint {.importc: "QImage_pixelIndex_x_y".}
proc fcQImage_pixelIndexPt(self: pointer, pt: pointer): cint {.importc: "QImage_pixelIndex_pt".}
proc fcQImage_pixelXY(self: pointer, x: cint, y: cint): cuint {.importc: "QImage_pixel_x_y".}
proc fcQImage_pixelPt(self: pointer, pt: pointer): cuint {.importc: "QImage_pixel_pt".}
proc fcQImage_setPixelXYIndexOrRgb(self: pointer, x: cint, y: cint, index_or_rgb: cuint): void {.importc: "QImage_setPixel_x_y_index_or_rgb".}
proc fcQImage_setPixelPtIndexOrRgb(self: pointer, pt: pointer, index_or_rgb: cuint): void {.importc: "QImage_setPixel_pt_index_or_rgb".}
proc fcQImage_pixelColorXY(self: pointer, x: cint, y: cint): pointer {.importc: "QImage_pixelColor_x_y".}
proc fcQImage_pixelColorPt(self: pointer, pt: pointer): pointer {.importc: "QImage_pixelColor_pt".}
proc fcQImage_setPixelColorXYC(self: pointer, x: cint, y: cint, c: pointer): void {.importc: "QImage_setPixelColor_x_y_c".}
proc fcQImage_setPixelColorPtC(self: pointer, pt: pointer, c: pointer): void {.importc: "QImage_setPixelColor_pt_c".}
proc fcQImage_colorTable(self: pointer): struct_seaqt_array {.importc: "QImage_colorTable".}
proc fcQImage_setColorTable(self: pointer, colors: struct_seaqt_array): void {.importc: "QImage_setColorTable".}
proc fcQImage_devicePixelRatio(self: pointer): float64 {.importc: "QImage_devicePixelRatio".}
proc fcQImage_setDevicePixelRatio(self: pointer, scaleFactor: float64): void {.importc: "QImage_setDevicePixelRatio".}
proc fcQImage_deviceIndependentSize(self: pointer): pointer {.importc: "QImage_deviceIndependentSize".}
proc fcQImage_fillUint(self: pointer, pixel: cuint): void {.importc: "QImage_fill_uint".}
proc fcQImage_fill_QColor(self: pointer, color: pointer): void {.importc: "QImage_fill_QColor".}
proc fcQImage_fill_Qt_GlobalColor(self: pointer, color: cint): void {.importc: "QImage_fill_Qt_GlobalColor".}
proc fcQImage_hasAlphaChannel(self: pointer): bool {.importc: "QImage_hasAlphaChannel".}
proc fcQImage_setAlphaChannel(self: pointer, alphaChannel: pointer): void {.importc: "QImage_setAlphaChannel".}
proc fcQImage_createAlphaMask(self: pointer): pointer {.importc: "QImage_createAlphaMask".}
proc fcQImage_createHeuristicMask(self: pointer): pointer {.importc: "QImage_createHeuristicMask".}
proc fcQImage_createMaskFromColorColor(self: pointer, color: cuint): pointer {.importc: "QImage_createMaskFromColor_color".}
proc fcQImage_scaledWH(self: pointer, w: cint, h: cint): pointer {.importc: "QImage_scaled_w_h".}
proc fcQImage_scaledS(self: pointer, s: pointer): pointer {.importc: "QImage_scaled_s".}
proc fcQImage_scaledToWidthW(self: pointer, w: cint): pointer {.importc: "QImage_scaledToWidth_w".}
proc fcQImage_scaledToHeightH(self: pointer, h: cint): pointer {.importc: "QImage_scaledToHeight_h".}
proc fcQImage_transformedMatrix(self: pointer, matrix: pointer): pointer {.importc: "QImage_transformed_matrix".}
proc fcQImage_trueMatrix(param1: pointer, w: cint, h: cint): pointer {.importc: "QImage_trueMatrix".}
proc fcQImage_mirrored(self: pointer): pointer {.importc: "QImage_mirrored".}
proc fcQImage_rgbSwapped(self: pointer): pointer {.importc: "QImage_rgbSwapped".}
proc fcQImage_mirror(self: pointer): void {.importc: "QImage_mirror".}
proc fcQImage_rgbSwap(self: pointer): void {.importc: "QImage_rgbSwap".}
proc fcQImage_invertPixels(self: pointer): void {.importc: "QImage_invertPixels".}
proc fcQImage_colorSpace(self: pointer): pointer {.importc: "QImage_colorSpace".}
proc fcQImage_convertedToColorSpace(self: pointer, param1: pointer): pointer {.importc: "QImage_convertedToColorSpace".}
proc fcQImage_convertToColorSpace(self: pointer, param1: pointer): void {.importc: "QImage_convertToColorSpace".}
proc fcQImage_setColorSpace(self: pointer, colorSpace: pointer): void {.importc: "QImage_setColorSpace".}
proc fcQImage_colorTransformed(self: pointer, transform: pointer): pointer {.importc: "QImage_colorTransformed".}
proc fcQImage_applyColorTransform(self: pointer, transform: pointer): void {.importc: "QImage_applyColorTransform".}
proc fcQImage_loadDeviceFormat(self: pointer, device: pointer, format: cstring): bool {.importc: "QImage_load_device_format".}
proc fcQImage_loadFileName(self: pointer, fileName: struct_seaqt_string): bool {.importc: "QImage_load_fileName".}
proc fcQImage_loadFromData_QByteArrayView(self: pointer, data: struct_seaqt_string): bool {.importc: "QImage_loadFromData_QByteArrayView".}
proc fcQImage_loadFromDataUcharInt(self: pointer, buf: ptr uint8, len: cint): bool {.importc: "QImage_loadFromData_uchar_int".}
proc fcQImage_loadFromData_QByteArray(self: pointer, data: struct_seaqt_string): bool {.importc: "QImage_loadFromData_QByteArray".}
proc fcQImage_saveFileName(self: pointer, fileName: struct_seaqt_string): bool {.importc: "QImage_save_fileName".}
proc fcQImage_saveDevice(self: pointer, device: pointer): bool {.importc: "QImage_save_device".}
proc fcQImage_fromData_QByteArrayView(data: struct_seaqt_string): pointer {.importc: "QImage_fromData_QByteArrayView".}
proc fcQImage_fromDataUcharInt(data: ptr uint8, size: cint): pointer {.importc: "QImage_fromData_uchar_int".}
proc fcQImage_fromData_QByteArray(data: struct_seaqt_string): pointer {.importc: "QImage_fromData_QByteArray".}
proc fcQImage_cacheKey(self: pointer): clonglong {.importc: "QImage_cacheKey".}
proc fcQImage_paintEngine(self: pointer): pointer {.importc: "QImage_paintEngine".}
proc fcQImage_dotsPerMeterX(self: pointer): cint {.importc: "QImage_dotsPerMeterX".}
proc fcQImage_dotsPerMeterY(self: pointer): cint {.importc: "QImage_dotsPerMeterY".}
proc fcQImage_setDotsPerMeterX(self: pointer, dotsPerMeterX: cint): void {.importc: "QImage_setDotsPerMeterX".}
proc fcQImage_setDotsPerMeterY(self: pointer, dotsPerMeterY: cint): void {.importc: "QImage_setDotsPerMeterY".}
proc fcQImage_offset(self: pointer): pointer {.importc: "QImage_offset".}
proc fcQImage_setOffset(self: pointer, offset: pointer): void {.importc: "QImage_setOffset".}
proc fcQImage_textKeys(self: pointer): struct_seaqt_array {.importc: "QImage_textKeys".}
proc fcQImage_text(self: pointer): struct_seaqt_string {.importc: "QImage_text".}
proc fcQImage_setText(self: pointer, key: struct_seaqt_string, value: struct_seaqt_string): void {.importc: "QImage_setText".}
proc fcQImage_pixelFormat(self: pointer): pointer {.importc: "QImage_pixelFormat".}
proc fcQImage_toPixelFormat(format: cint): pointer {.importc: "QImage_toPixelFormat".}
proc fcQImage_toImageFormat(format: pointer): cint {.importc: "QImage_toImageFormat".}
proc fcQImage_copyRect(self: pointer, rect: pointer): pointer {.importc: "QImage_copy_rect".}
proc fcQImage_convertToFormatFFlags(self: pointer, f: cint, flags: cint): pointer {.importc: "QImage_convertToFormat_f_flags".}
proc fcQImage_convertToFormatFColorTableFlags(self: pointer, f: cint, colorTable: struct_seaqt_array, flags: cint): pointer {.importc: "QImage_convertToFormat_f_colorTable_flags".}
proc fcQImage_convertedToFFlags(self: pointer, f: cint, flags: cint): pointer {.importc: "QImage_convertedTo_f_flags".}
proc fcQImage_convertToFFlags(self: pointer, f: cint, flags: cint): void {.importc: "QImage_convertTo_f_flags".}
proc fcQImage_createAlphaMaskFlags(self: pointer, flags: cint): pointer {.importc: "QImage_createAlphaMask_flags".}
proc fcQImage_createHeuristicMaskClipTight(self: pointer, clipTight: bool): pointer {.importc: "QImage_createHeuristicMask_clipTight".}
proc fcQImage_createMaskFromColorColorMode(self: pointer, color: cuint, mode: cint): pointer {.importc: "QImage_createMaskFromColor_color_mode".}
proc fcQImage_scaledWHAspectMode(self: pointer, w: cint, h: cint, aspectMode: cint): pointer {.importc: "QImage_scaled_w_h_aspectMode".}
proc fcQImage_scaledWHAspectModeMode(self: pointer, w: cint, h: cint, aspectMode: cint, mode: cint): pointer {.importc: "QImage_scaled_w_h_aspectMode_mode".}
proc fcQImage_scaledSAspectMode(self: pointer, s: pointer, aspectMode: cint): pointer {.importc: "QImage_scaled_s_aspectMode".}
proc fcQImage_scaledSAspectModeMode(self: pointer, s: pointer, aspectMode: cint, mode: cint): pointer {.importc: "QImage_scaled_s_aspectMode_mode".}
proc fcQImage_scaledToWidthWMode(self: pointer, w: cint, mode: cint): pointer {.importc: "QImage_scaledToWidth_w_mode".}
proc fcQImage_scaledToHeightHMode(self: pointer, h: cint, mode: cint): pointer {.importc: "QImage_scaledToHeight_h_mode".}
proc fcQImage_transformedMatrixMode(self: pointer, matrix: pointer, mode: cint): pointer {.importc: "QImage_transformed_matrix_mode".}
proc fcQImage_mirroredHorizontally(self: pointer, horizontally: bool): pointer {.importc: "QImage_mirrored_horizontally".}
proc fcQImage_mirroredHorizontallyVertically(self: pointer, horizontally: bool, vertically: bool): pointer {.importc: "QImage_mirrored_horizontally_vertically".}
proc fcQImage_mirrorHorizontally(self: pointer, horizontally: bool): void {.importc: "QImage_mirror_horizontally".}
proc fcQImage_mirrorHorizontallyVertically(self: pointer, horizontally: bool, vertically: bool): void {.importc: "QImage_mirror_horizontally_vertically".}
proc fcQImage_invertPixels_QImage_InvertMode(self: pointer, param1: cint): void {.importc: "QImage_invertPixels_QImage_InvertMode".}
proc fcQImage_loadFileNameFormat(self: pointer, fileName: struct_seaqt_string, format: cstring): bool {.importc: "QImage_load_fileName_format".}
proc fcQImage_loadFromData_QByteArrayViewChar(self: pointer, data: struct_seaqt_string, format: cstring): bool {.importc: "QImage_loadFromData_QByteArrayView_char".}
proc fcQImage_loadFromDataUcharIntChar(self: pointer, buf: ptr uint8, len: cint, format: cstring): bool {.importc: "QImage_loadFromData_uchar_int_char".}
proc fcQImage_loadFromData_QByteArrayChar(self: pointer, data: struct_seaqt_string, format: cstring): bool {.importc: "QImage_loadFromData_QByteArray_char".}
proc fcQImage_saveFileNameFormat(self: pointer, fileName: struct_seaqt_string, format: cstring): bool {.importc: "QImage_save_fileName_format".}
proc fcQImage_saveFileNameFormatQuality(self: pointer, fileName: struct_seaqt_string, format: cstring, quality: cint): bool {.importc: "QImage_save_fileName_format_quality".}
proc fcQImage_saveDeviceFormat(self: pointer, device: pointer, format: cstring): bool {.importc: "QImage_save_device_format".}
proc fcQImage_saveDeviceFormatQuality(self: pointer, device: pointer, format: cstring, quality: cint): bool {.importc: "QImage_save_device_format_quality".}
proc fcQImage_fromData_QByteArrayViewChar(data: struct_seaqt_string, format: cstring): pointer {.importc: "QImage_fromData_QByteArrayView_char".}
proc fcQImage_fromDataUcharIntChar(data: ptr uint8, size: cint, format: cstring): pointer {.importc: "QImage_fromData_uchar_int_char".}
proc fcQImage_fromData_QByteArrayChar(data: struct_seaqt_string, format: cstring): pointer {.importc: "QImage_fromData_QByteArray_char".}
proc fcQImage_textKey(self: pointer, key: struct_seaqt_string): struct_seaqt_string {.importc: "QImage_text_key".}
proc fcQImage_vdata(self: pointer): ptr pointer {.importc: "QImage_vdata".}
proc fvdata_cQImage(self: pointer): pointer {.importc: "vdata_QImage".}

type cQImageVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, metric: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQImage_virtualbase_devType(self: pointer): cint {.importc: "QImage_virtualbase_devType".}
proc fcQImage_virtualbase_paintEngine(self: pointer): pointer {.importc: "QImage_virtualbase_paintEngine".}
proc fcQImage_virtualbase_metric(self: pointer, metric: cint): cint {.importc: "QImage_virtualbase_metric".}
proc fcQImage_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QImage_virtualbase_initPainter".}
proc fcQImage_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QImage_virtualbase_redirected".}
proc fcQImage_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QImage_virtualbase_sharedPainter".}
proc fcQImage_protectedbase_mirrored_helper(self: pointer, horizontal: bool, vertical: bool): pointer {.importc: "QImage_protectedbase_mirrored_helper".}
proc fcQImage_protectedbase_rgbSwapped_helper(self: pointer): pointer {.importc: "QImage_protectedbase_rgbSwapped_helper".}
proc fcQImage_protectedbase_mirrored_inplace(self: pointer, horizontal: bool, vertical: bool): void {.importc: "QImage_protectedbase_mirrored_inplace".}
proc fcQImage_protectedbase_rgbSwapped_inplace(self: pointer): void {.importc: "QImage_protectedbase_rgbSwapped_inplace".}
proc fcQImage_protectedbase_convertToFormat_helper(self: pointer, format: cint, flags: cint): pointer {.importc: "QImage_protectedbase_convertToFormat_helper".}
proc fcQImage_protectedbase_convertToFormat_inplace(self: pointer, format: cint, flags: cint): bool {.importc: "QImage_protectedbase_convertToFormat_inplace".}
proc fcQImage_protectedbase_smoothScaled(self: pointer, w: cint, h: cint): pointer {.importc: "QImage_protectedbase_smoothScaled".}
proc fcQImage_protectedbase_detachMetadata(self: pointer): void {.importc: "QImage_protectedbase_detachMetadata".}
proc fcQImage_protectedbase_detachMetadata_invalidateCache(self: pointer, invalidateCache: bool): void {.importc: "QImage_protectedbase_detachMetadata_invalidateCache".}
proc fcQImage_new(vtbl: pointer, vdata: csize_t): ptr cQImage {.importc: "QImage_new".}
proc fcQImage_new2(vtbl: pointer, vdata: csize_t, size: pointer, format: cint): ptr cQImage {.importc: "QImage_new_cQSize_QImage_Format".}
proc fcQImage_new3(vtbl: pointer, vdata: csize_t, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new_int_int_QImage_Format".}
proc fcQImage_new4(vtbl: pointer, vdata: csize_t, data: ptr uint8, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new_puchar_int_int_QImage_Format".}
proc fcQImage_new5(vtbl: pointer, vdata: csize_t, data: ptr uint8, width: cint, height: cint, format: cint): ptr cQImage {.importc: "QImage_new_pcuchar_int_int_QImage_Format".}
proc fcQImage_new6(vtbl: pointer, vdata: csize_t, data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint): ptr cQImage {.importc: "QImage_new_puchar_int_int_qsizetype_QImage_Format".}
proc fcQImage_new7(vtbl: pointer, vdata: csize_t, data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint): ptr cQImage {.importc: "QImage_new_pcuchar_int_int_qsizetype_QImage_Format".}
proc fcQImage_new8(vtbl: pointer, vdata: csize_t, fileName: struct_seaqt_string): ptr cQImage {.importc: "QImage_new_cQString".}
proc fcQImage_new9(vtbl: pointer, vdata: csize_t, fromVal: pointer): ptr cQImage {.importc: "QImage_new_cQImage".}
proc fcQImage_new10(vtbl: pointer, vdata: csize_t, fileName: struct_seaqt_string, format: cstring): ptr cQImage {.importc: "QImage_new_cQString_pcchar".}
proc fcQImage_staticMetaObject(): pointer {.importc: "QImage_staticMetaObject".}

proc operatorAssign*(self: gen_qimage_types.QImage, fromVal: gen_qimage_types.QImage): void =
  fcQImage_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qimage_types.QImage, other: gen_qimage_types.QImage): void =
  fcQImage_swap(self.h, other.h)

proc isNull*(self: gen_qimage_types.QImage): bool =
  fcQImage_isNull(self.h)

proc devType*(self: gen_qimage_types.QImage): cint =
  fcQImage_devType(self.h)

proc operatorEqual*(self: gen_qimage_types.QImage, param1: gen_qimage_types.QImage): bool =
  fcQImage_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qimage_types.QImage, param1: gen_qimage_types.QImage): bool =
  fcQImage_operatorNotEqual(self.h, param1.h)

proc ToQVariant*(self: gen_qimage_types.QImage): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImage_ToQVariant(self.h), owned: true)

proc detach*(self: gen_qimage_types.QImage): void =
  fcQImage_detach(self.h)

proc isDetached*(self: gen_qimage_types.QImage): bool =
  fcQImage_isDetached(self.h)

proc copy*(self: gen_qimage_types.QImage): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_copy(self.h), owned: true)

proc copy*(self: gen_qimage_types.QImage, x: cint, y: cint, w: cint, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_copyXYWH(self.h, x, y, w, h), owned: true)

proc format*(self: gen_qimage_types.QImage): cint =
  cint(fcQImage_format(self.h))

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertToFormatF(self.h, cint(f)), owned: true)

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint, colorTable: openArray[cuint]): gen_qimage_types.QImage =
  var colorTable_CArray = newSeq[cuint](len(colorTable))
  for i in 0..<len(colorTable):
    colorTable_CArray[i] = colorTable[i]

  gen_qimage_types.QImage(h: fcQImage_convertToFormatFColorTable(self.h, cint(f), struct_seaqt_array(len: csize_t(len(colorTable)), data: if len(colorTable) == 0: nil else: addr(colorTable_CArray[0]))), owned: true)

proc reinterpretAsFormat*(self: gen_qimage_types.QImage, f: cint): bool =
  fcQImage_reinterpretAsFormat(self.h, cint(f))

proc convertedTo*(self: gen_qimage_types.QImage, f: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertedToF(self.h, cint(f)), owned: true)

proc convertTo*(self: gen_qimage_types.QImage, f: cint): void =
  fcQImage_convertToF(self.h, cint(f))

proc width*(self: gen_qimage_types.QImage): cint =
  fcQImage_width(self.h)

proc height*(self: gen_qimage_types.QImage): cint =
  fcQImage_height(self.h)

proc size*(self: gen_qimage_types.QImage): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQImage_size(self.h), owned: true)

proc rect*(self: gen_qimage_types.QImage): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImage_rect(self.h), owned: true)

proc depth*(self: gen_qimage_types.QImage): cint =
  fcQImage_depth(self.h)

proc colorCount*(self: gen_qimage_types.QImage): cint =
  fcQImage_colorCount(self.h)

proc bitPlaneCount*(self: gen_qimage_types.QImage): cint =
  fcQImage_bitPlaneCount(self.h)

proc color*(self: gen_qimage_types.QImage, i: cint): cuint =
  fcQImage_color(self.h, i)

proc setColor*(self: gen_qimage_types.QImage, i: cint, c: cuint): void =
  fcQImage_setColor(self.h, i, c)

proc setColorCount*(self: gen_qimage_types.QImage, colorCount: cint): void =
  fcQImage_setColorCount(self.h, colorCount)

proc allGray*(self: gen_qimage_types.QImage): bool =
  fcQImage_allGray(self.h)

proc isGrayscale*(self: gen_qimage_types.QImage): bool =
  fcQImage_isGrayscale(self.h)

proc bits*(self: gen_qimage_types.QImage): ptr uint8 =
  fcQImage_bits(self.h)

proc bits2*(self: gen_qimage_types.QImage): ptr uint8 =
  fcQImage_bitsConst(self.h)

proc constBits*(self: gen_qimage_types.QImage): ptr uint8 =
  fcQImage_constBits(self.h)

proc sizeInBytes*(self: gen_qimage_types.QImage): int64 =
  fcQImage_sizeInBytes(self.h)

proc scanLine*(self: gen_qimage_types.QImage, param1: cint): ptr uint8 =
  fcQImage_scanLineInt(self.h, param1)

proc scanLine2*(self: gen_qimage_types.QImage, param1: cint): ptr uint8 =
  fcQImage_scanLineConstInt(self.h, param1)

proc constScanLine*(self: gen_qimage_types.QImage, param1: cint): ptr uint8 =
  fcQImage_constScanLine(self.h, param1)

proc bytesPerLine*(self: gen_qimage_types.QImage): int64 =
  fcQImage_bytesPerLine(self.h)

proc valid*(self: gen_qimage_types.QImage, x: cint, y: cint): bool =
  fcQImage_validXY(self.h, x, y)

proc valid*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): bool =
  fcQImage_validPt(self.h, pt.h)

proc pixelIndex*(self: gen_qimage_types.QImage, x: cint, y: cint): cint =
  fcQImage_pixelIndexXY(self.h, x, y)

proc pixelIndex*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): cint =
  fcQImage_pixelIndexPt(self.h, pt.h)

proc pixel*(self: gen_qimage_types.QImage, x: cint, y: cint): cuint =
  fcQImage_pixelXY(self.h, x, y)

proc pixel*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): cuint =
  fcQImage_pixelPt(self.h, pt.h)

proc setPixel*(self: gen_qimage_types.QImage, x: cint, y: cint, index_or_rgb: cuint): void =
  fcQImage_setPixelXYIndexOrRgb(self.h, x, y, index_or_rgb)

proc setPixel*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint, index_or_rgb: cuint): void =
  fcQImage_setPixelPtIndexOrRgb(self.h, pt.h, index_or_rgb)

proc pixelColor*(self: gen_qimage_types.QImage, x: cint, y: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQImage_pixelColorXY(self.h, x, y), owned: true)

proc pixelColor*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQImage_pixelColorPt(self.h, pt.h), owned: true)

proc setPixelColor*(self: gen_qimage_types.QImage, x: cint, y: cint, c: gen_qcolor_types.QColor): void =
  fcQImage_setPixelColorXYC(self.h, x, y, c.h)

proc setPixelColor*(self: gen_qimage_types.QImage, pt: gen_qpoint_types.QPoint, c: gen_qcolor_types.QColor): void =
  fcQImage_setPixelColorPtC(self.h, pt.h, c.h)

proc colorTable*(self: gen_qimage_types.QImage): seq[cuint] =
  var v_ma = fcQImage_colorTable(self.h)
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setColorTable*(self: gen_qimage_types.QImage, colors: openArray[cuint]): void =
  var colors_CArray = newSeq[cuint](len(colors))
  for i in 0..<len(colors):
    colors_CArray[i] = colors[i]

  fcQImage_setColorTable(self.h, struct_seaqt_array(len: csize_t(len(colors)), data: if len(colors) == 0: nil else: addr(colors_CArray[0])))

proc devicePixelRatio*(self: gen_qimage_types.QImage): float64 =
  fcQImage_devicePixelRatio(self.h)

proc setDevicePixelRatio*(self: gen_qimage_types.QImage, scaleFactor: float64): void =
  fcQImage_setDevicePixelRatio(self.h, scaleFactor)

proc deviceIndependentSize*(self: gen_qimage_types.QImage): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQImage_deviceIndependentSize(self.h), owned: true)

proc fill*(self: gen_qimage_types.QImage, pixel: cuint): void =
  fcQImage_fillUint(self.h, pixel)

proc fill*(self: gen_qimage_types.QImage, color: gen_qcolor_types.QColor): void =
  fcQImage_fill_QColor(self.h, color.h)

proc fill*(self: gen_qimage_types.QImage, color: cint): void =
  fcQImage_fill_Qt_GlobalColor(self.h, cint(color))

proc hasAlphaChannel*(self: gen_qimage_types.QImage): bool =
  fcQImage_hasAlphaChannel(self.h)

proc setAlphaChannel*(self: gen_qimage_types.QImage, alphaChannel: gen_qimage_types.QImage): void =
  fcQImage_setAlphaChannel(self.h, alphaChannel.h)

proc createAlphaMask*(self: gen_qimage_types.QImage): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createAlphaMask(self.h), owned: true)

proc createHeuristicMask*(self: gen_qimage_types.QImage): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createHeuristicMask(self.h), owned: true)

proc createMaskFromColor*(self: gen_qimage_types.QImage, color: cuint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createMaskFromColorColor(self.h, color), owned: true)

proc scaled*(self: gen_qimage_types.QImage, w: cint, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledWH(self.h, w, h), owned: true)

proc scaled*(self: gen_qimage_types.QImage, s: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledS(self.h, s.h), owned: true)

proc scaledToWidth*(self: gen_qimage_types.QImage, w: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToWidthW(self.h, w), owned: true)

proc scaledToHeight*(self: gen_qimage_types.QImage, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToHeightH(self.h, h), owned: true)

proc transformed*(self: gen_qimage_types.QImage, matrix: gen_qtransform_types.QTransform): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_transformedMatrix(self.h, matrix.h), owned: true)

proc trueMatrix*(_: type gen_qimage_types.QImage, param1: gen_qtransform_types.QTransform, w: cint, h: cint): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQImage_trueMatrix(param1.h, w, h), owned: true)

proc mirrored*(self: gen_qimage_types.QImage): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_mirrored(self.h), owned: true)

proc rgbSwapped*(self: gen_qimage_types.QImage): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_rgbSwapped(self.h), owned: true)

proc mirror*(self: gen_qimage_types.QImage): void =
  fcQImage_mirror(self.h)

proc rgbSwap*(self: gen_qimage_types.QImage): void =
  fcQImage_rgbSwap(self.h)

proc invertPixels*(self: gen_qimage_types.QImage): void =
  fcQImage_invertPixels(self.h)

proc colorSpace*(self: gen_qimage_types.QImage): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQImage_colorSpace(self.h), owned: true)

proc convertedToColorSpace*(self: gen_qimage_types.QImage, param1: gen_qcolorspace_types.QColorSpace): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertedToColorSpace(self.h, param1.h), owned: true)

proc convertToColorSpace*(self: gen_qimage_types.QImage, param1: gen_qcolorspace_types.QColorSpace): void =
  fcQImage_convertToColorSpace(self.h, param1.h)

proc setColorSpace*(self: gen_qimage_types.QImage, colorSpace: gen_qcolorspace_types.QColorSpace): void =
  fcQImage_setColorSpace(self.h, colorSpace.h)

proc colorTransformed*(self: gen_qimage_types.QImage, transform: gen_qcolortransform_types.QColorTransform): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_colorTransformed(self.h, transform.h), owned: true)

proc applyColorTransform*(self: gen_qimage_types.QImage, transform: gen_qcolortransform_types.QColorTransform): void =
  fcQImage_applyColorTransform(self.h, transform.h)

proc load*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQImage_loadDeviceFormat(self.h, device.h, format)

proc load*(self: gen_qimage_types.QImage, fileName: openArray[char]): bool =
  fcQImage_loadFileName(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc loadFromData*(self: gen_qimage_types.QImage, data: openArray[byte]): bool =
  fcQImage_loadFromData_QByteArrayView(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc loadFromData*(self: gen_qimage_types.QImage, buf: ptr uint8, len: cint): bool =
  fcQImage_loadFromDataUcharInt(self.h, buf, len)

proc loadFromData2*(self: gen_qimage_types.QImage, data: openArray[byte]): bool =
  fcQImage_loadFromData_QByteArray(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc save*(self: gen_qimage_types.QImage, fileName: openArray[char]): bool =
  fcQImage_saveFileName(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc save*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice): bool =
  fcQImage_saveDevice(self.h, device.h)

proc fromData*(_: type gen_qimage_types.QImage, data: openArray[byte]): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData_QByteArrayView(struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: true)

proc fromData*(_: type gen_qimage_types.QImage, data: ptr uint8, size: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromDataUcharInt(data, size), owned: true)

proc fromData2*(_: type gen_qimage_types.QImage, data: openArray[byte]): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData_QByteArray(struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: true)

proc cacheKey*(self: gen_qimage_types.QImage): clonglong =
  fcQImage_cacheKey(self.h)

proc paintEngine*(self: gen_qimage_types.QImage): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQImage_paintEngine(self.h), owned: false)

proc dotsPerMeterX*(self: gen_qimage_types.QImage): cint =
  fcQImage_dotsPerMeterX(self.h)

proc dotsPerMeterY*(self: gen_qimage_types.QImage): cint =
  fcQImage_dotsPerMeterY(self.h)

proc setDotsPerMeterX*(self: gen_qimage_types.QImage, dotsPerMeterX: cint): void =
  fcQImage_setDotsPerMeterX(self.h, dotsPerMeterX)

proc setDotsPerMeterY*(self: gen_qimage_types.QImage, dotsPerMeterY: cint): void =
  fcQImage_setDotsPerMeterY(self.h, dotsPerMeterY)

proc offset*(self: gen_qimage_types.QImage): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQImage_offset(self.h), owned: true)

proc setOffset*(self: gen_qimage_types.QImage, offset: gen_qpoint_types.QPoint): void =
  fcQImage_setOffset(self.h, offset.h)

proc textKeys*(self: gen_qimage_types.QImage): seq[string] =
  var v_ma = fcQImage_textKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc text*(self: gen_qimage_types.QImage): string =
  let v_ms = fcQImage_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qimage_types.QImage, key: openArray[char], value: openArray[char]): void =
  fcQImage_setText(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), struct_seaqt_string(data: if len(value) > 0: addr value[0] else: nil, len: csize_t(len(value))))

proc pixelFormat*(self: gen_qimage_types.QImage): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQImage_pixelFormat(self.h), owned: true)

proc toPixelFormat*(_: type gen_qimage_types.QImage, format: cint): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQImage_toPixelFormat(cint(format)), owned: true)

proc toImageFormat*(_: type gen_qimage_types.QImage, format: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQImage_toImageFormat(format.h))

proc copy*(self: gen_qimage_types.QImage, rect: gen_qrect_types.QRect): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_copyRect(self.h, rect.h), owned: true)

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertToFormatFFlags(self.h, cint(f), cint(flags)), owned: true)

proc convertToFormat*(self: gen_qimage_types.QImage, f: cint, colorTable: openArray[cuint], flags: cint): gen_qimage_types.QImage =
  var colorTable_CArray = newSeq[cuint](len(colorTable))
  for i in 0..<len(colorTable):
    colorTable_CArray[i] = colorTable[i]

  gen_qimage_types.QImage(h: fcQImage_convertToFormatFColorTableFlags(self.h, cint(f), struct_seaqt_array(len: csize_t(len(colorTable)), data: if len(colorTable) == 0: nil else: addr(colorTable_CArray[0])), cint(flags)), owned: true)

proc convertedTo*(self: gen_qimage_types.QImage, f: cint, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_convertedToFFlags(self.h, cint(f), cint(flags)), owned: true)

proc convertTo*(self: gen_qimage_types.QImage, f: cint, flags: cint): void =
  fcQImage_convertToFFlags(self.h, cint(f), cint(flags))

proc createAlphaMask*(self: gen_qimage_types.QImage, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createAlphaMaskFlags(self.h, cint(flags)), owned: true)

proc createHeuristicMask*(self: gen_qimage_types.QImage, clipTight: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createHeuristicMaskClipTight(self.h, clipTight), owned: true)

proc createMaskFromColor*(self: gen_qimage_types.QImage, color: cuint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_createMaskFromColorColorMode(self.h, color, cint(mode)), owned: true)

proc scaled*(self: gen_qimage_types.QImage, w: cint, h: cint, aspectMode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledWHAspectMode(self.h, w, h, cint(aspectMode)), owned: true)

proc scaled*(self: gen_qimage_types.QImage, w: cint, h: cint, aspectMode: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledWHAspectModeMode(self.h, w, h, cint(aspectMode), cint(mode)), owned: true)

proc scaled*(self: gen_qimage_types.QImage, s: gen_qsize_types.QSize, aspectMode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledSAspectMode(self.h, s.h, cint(aspectMode)), owned: true)

proc scaled*(self: gen_qimage_types.QImage, s: gen_qsize_types.QSize, aspectMode: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledSAspectModeMode(self.h, s.h, cint(aspectMode), cint(mode)), owned: true)

proc scaledToWidth*(self: gen_qimage_types.QImage, w: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToWidthWMode(self.h, w, cint(mode)), owned: true)

proc scaledToHeight*(self: gen_qimage_types.QImage, h: cint, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_scaledToHeightHMode(self.h, h, cint(mode)), owned: true)

proc transformed*(self: gen_qimage_types.QImage, matrix: gen_qtransform_types.QTransform, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_transformedMatrixMode(self.h, matrix.h, cint(mode)), owned: true)

proc mirrored*(self: gen_qimage_types.QImage, horizontally: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_mirroredHorizontally(self.h, horizontally), owned: true)

proc mirrored*(self: gen_qimage_types.QImage, horizontally: bool, vertically: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_mirroredHorizontallyVertically(self.h, horizontally, vertically), owned: true)

proc mirror*(self: gen_qimage_types.QImage, horizontally: bool): void =
  fcQImage_mirrorHorizontally(self.h, horizontally)

proc mirror*(self: gen_qimage_types.QImage, horizontally: bool, vertically: bool): void =
  fcQImage_mirrorHorizontallyVertically(self.h, horizontally, vertically)

proc invertPixels*(self: gen_qimage_types.QImage, param1: cint): void =
  fcQImage_invertPixels_QImage_InvertMode(self.h, cint(param1))

proc load*(self: gen_qimage_types.QImage, fileName: openArray[char], format: cstring): bool =
  fcQImage_loadFileNameFormat(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format)

proc loadFromData*(self: gen_qimage_types.QImage, data: openArray[byte], format: cstring): bool =
  fcQImage_loadFromData_QByteArrayViewChar(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), format)

proc loadFromData*(self: gen_qimage_types.QImage, buf: ptr uint8, len: cint, format: cstring): bool =
  fcQImage_loadFromDataUcharIntChar(self.h, buf, len, format)

proc loadFromData2*(self: gen_qimage_types.QImage, data: openArray[byte], format: cstring): bool =
  fcQImage_loadFromData_QByteArrayChar(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), format)

proc save*(self: gen_qimage_types.QImage, fileName: openArray[char], format: cstring): bool =
  fcQImage_saveFileNameFormat(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format)

proc save*(self: gen_qimage_types.QImage, fileName: openArray[char], format: cstring, quality: cint): bool =
  fcQImage_saveFileNameFormatQuality(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format, quality)

proc save*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQImage_saveDeviceFormat(self.h, device.h, format)

proc save*(self: gen_qimage_types.QImage, device: gen_qiodevice_types.QIODevice, format: cstring, quality: cint): bool =
  fcQImage_saveDeviceFormatQuality(self.h, device.h, format, quality)

proc fromData*(_: type gen_qimage_types.QImage, data: openArray[byte], format: cstring): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData_QByteArrayViewChar(struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), format), owned: true)

proc fromData*(_: type gen_qimage_types.QImage, data: ptr uint8, size: cint, format: cstring): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromDataUcharIntChar(data, size, format), owned: true)

proc fromData2*(_: type gen_qimage_types.QImage, data: openArray[byte], format: cstring): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_fromData_QByteArrayChar(struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), format), owned: true)

proc text*(self: gen_qimage_types.QImage, key: openArray[char]): string =
  let v_ms = fcQImage_textKey(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QImagedevTypeProc* = proc(self: QImage): cint {.raises: [], gcsafe.}
type QImagepaintEngineProc* = proc(self: QImage): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QImagemetricProc* = proc(self: QImage, metric: cint): cint {.raises: [], gcsafe.}
type QImageinitPainterProc* = proc(self: QImage, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QImageredirectedProc* = proc(self: QImage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QImagesharedPainterProc* = proc(self: QImage): gen_qpainter_types.QPainter {.raises: [], gcsafe.}

type QImageVTable* {.inheritable, pure.} = object
  vtbl: cQImageVTable
  devType*: QImagedevTypeProc
  paintEngine*: QImagepaintEngineProc
  metric*: QImagemetricProc
  initPainter*: QImageinitPainterProc
  redirected*: QImageredirectedProc
  sharedPainter*: QImagesharedPainterProc

proc QImagedevType*(self: gen_qimage_types.QImage): cint =
  fcQImage_virtualbase_devType(self.h)

proc QImagepaintEngine*(self: gen_qimage_types.QImage): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQImage_virtualbase_paintEngine(self.h), owned: false)

proc QImagemetric*(self: gen_qimage_types.QImage, metric: cint): cint =
  fcQImage_virtualbase_metric(self.h, cint(metric))

proc QImageinitPainter*(self: gen_qimage_types.QImage, painter: gen_qpainter_types.QPainter): void =
  fcQImage_virtualbase_initPainter(self.h, painter.h)

proc QImageredirected*(self: gen_qimage_types.QImage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQImage_virtualbase_redirected(self.h, offset.h), owned: false)

proc QImagesharedPainter*(self: gen_qimage_types.QImage): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQImage_virtualbase_sharedPainter(self.h), owned: false)


proc fcQImage_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](fcQImage_vdata(self)[])
  let self = QImage(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQImage_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](fcQImage_vdata(self)[])
  let self = QImage(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImage_vtable_callback_metric(self: pointer, metric: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](fcQImage_vdata(self)[])
  let self = QImage(h: self)
  let slotval1 = cint(metric)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQImage_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](fcQImage_vdata(self)[])
  let self = QImage(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQImage_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](fcQImage_vdata(self)[])
  let self = QImage(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImage_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QImageVTable](fcQImage_vdata(self)[])
  let self = QImage(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQImage* {.inheritable.} = ref object of QImage
  vtbl*: cQImageVTable

method devType*(self: VirtualQImage): cint {.base.} =
  QImagedevType(self[])
method paintEngine*(self: VirtualQImage): gen_qpaintengine_types.QPaintEngine {.base.} =
  QImagepaintEngine(self[])
method metric*(self: VirtualQImage, metric: cint): cint {.base.} =
  QImagemetric(self[], metric)
method initPainter*(self: VirtualQImage, painter: gen_qpainter_types.QPainter): void {.base.} =
  QImageinitPainter(self[], painter)
method redirected*(self: VirtualQImage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QImageredirected(self[], offset)
method sharedPainter*(self: VirtualQImage): gen_qpainter_types.QPainter {.base.} =
  QImagesharedPainter(self[])

proc fcQImage_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQImage](fcQImage_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQImage_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQImage](fcQImage_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImage_method_callback_metric(self: pointer, metric: cint): cint {.cdecl.} =
  let inst = cast[VirtualQImage](fcQImage_vdata(self)[])
  let slotval1 = cint(metric)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQImage_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQImage](fcQImage_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQImage_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQImage](fcQImage_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQImage_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQImage](fcQImage_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc mirroredHelper*(self: gen_qimage_types.QImage, horizontal: bool, vertical: bool): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_protectedbase_mirrored_helper(self.h, horizontal, vertical), owned: true)

proc rgbSwappedHelper*(self: gen_qimage_types.QImage): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_protectedbase_rgbSwapped_helper(self.h), owned: true)

proc mirroredInplace*(self: gen_qimage_types.QImage, horizontal: bool, vertical: bool): void =
  fcQImage_protectedbase_mirrored_inplace(self.h, horizontal, vertical)

proc rgbSwappedInplace*(self: gen_qimage_types.QImage): void =
  fcQImage_protectedbase_rgbSwapped_inplace(self.h)

proc convertToFormatHelper*(self: gen_qimage_types.QImage, format: cint, flags: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_protectedbase_convertToFormat_helper(self.h, cint(format), cint(flags)), owned: true)

proc convertToFormatInplace*(self: gen_qimage_types.QImage, format: cint, flags: cint): bool =
  fcQImage_protectedbase_convertToFormat_inplace(self.h, cint(format), cint(flags))

proc smoothScaled*(self: gen_qimage_types.QImage, w: cint, h: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImage_protectedbase_smoothScaled(self.h, w, h), owned: true)

proc detachMetadata*(self: gen_qimage_types.QImage): void =
  fcQImage_protectedbase_detachMetadata(self.h)

proc detachMetadata*(self: gen_qimage_types.QImage, invalidateCache: bool): void =
  fcQImage_protectedbase_detachMetadata_invalidateCache(self.h, invalidateCache)

proc create*(T: type gen_qimage_types.QImage,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    size: gen_qsize_types.QSize, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), size.h, cint(format)), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    width: cint, height: cint, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), width, height, cint(format)), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), data, width, height, cint(format)), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create2*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new5(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), data, width, height, cint(format)), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new6(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), data, width, height, bytesPerLine, cint(format)), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create2*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new7(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), data, width, height, bytesPerLine, cint(format)), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    fileName: openArray[char],
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new8(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    fromVal: gen_qimage_types.QImage,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new9(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), fromVal.h), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qimage_types.QImage,
    fileName: openArray[char], format: cstring,
    vtbl: ref QImageVTable = nil): gen_qimage_types.QImage =
  let vtbl = if vtbl == nil: new QImageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QImageVTable](fcQImage_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQImage_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQImage_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQImage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQImage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQImage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQImage_vtable_callback_sharedPainter
  let tmp = gen_qimage_types.QImage(h: fcQImage_new10(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format), owned: true)
  fcQImage_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQImage_mvtbl = cQImageVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQImage()[])](self.fcQImage_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  devType: fcQImage_method_callback_devType,
  paintEngine: fcQImage_method_callback_paintEngine,
  metric: fcQImage_method_callback_metric,
  initPainter: fcQImage_method_callback_initPainter,
  redirected: fcQImage_method_callback_redirected,
  sharedPainter: fcQImage_method_callback_sharedPainter,
)
proc create*(T: type gen_qimage_types.QImage,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new(addr(cQImage_mvtbl), csize_t(sizeof(pointer)))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    size: gen_qsize_types.QSize, format: cint,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new2(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), size.h, cint(format))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    width: cint, height: cint, format: cint,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new3(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), width, height, cint(format))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, format: cint,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new4(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), data, width, height, cint(format))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create2*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, format: cint,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new5(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), data, width, height, cint(format))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new6(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), data, width, height, bytesPerLine, cint(format))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create2*(T: type gen_qimage_types.QImage,
    data: ptr uint8, width: cint, height: cint, bytesPerLine: int64, format: cint,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new7(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), data, width, height, bytesPerLine, cint(format))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    fileName: openArray[char],
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new8(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    fromVal: gen_qimage_types.QImage,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new9(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), fromVal.h)
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qimage_types.QImage,
    fileName: openArray[char], format: cstring,
    inst: VirtualQImage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQImage_new10(addr(cQImage_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format)
  fcQImage_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qimage_types.QImage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImage_staticMetaObject())
