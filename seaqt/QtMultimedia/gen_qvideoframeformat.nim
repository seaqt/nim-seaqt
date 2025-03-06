import ./Qt6Multimedia_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
{.compile("gen_qvideoframeformat.cpp", cflags).}


type QVideoFrameFormatPixelFormatEnum* = distinct cint
template Format_Invalid*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 0
template Format_ARGB8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 1
template Format_ARGB8888_Premultiplied*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 2
template Format_XRGB8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 3
template Format_BGRA8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 4
template Format_BGRA8888_Premultiplied*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 5
template Format_BGRX8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 6
template Format_ABGR8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 7
template Format_XBGR8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 8
template Format_RGBA8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 9
template Format_RGBX8888*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 10
template Format_AYUV*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 11
template Format_AYUV_Premultiplied*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 12
template Format_YUV420P*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 13
template Format_YUV422P*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 14
template Format_YV12*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 15
template Format_UYVY*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 16
template Format_YUYV*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 17
template Format_NV12*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 18
template Format_NV21*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 19
template Format_IMC1*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 20
template Format_IMC2*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 21
template Format_IMC3*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 22
template Format_IMC4*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 23
template Format_Y8*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 24
template Format_Y16*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 25
template Format_P010*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 26
template Format_P016*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 27
template Format_SamplerExternalOES*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 28
template Format_Jpeg*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 29
template Format_SamplerRect*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 30
template Format_YUV420P10*(_: type QVideoFrameFormatPixelFormatEnum): untyped = 31


type QVideoFrameFormatDirectionEnum* = distinct cint
template TopToBottom*(_: type QVideoFrameFormatDirectionEnum): untyped = 0
template BottomToTop*(_: type QVideoFrameFormatDirectionEnum): untyped = 1


type QVideoFrameFormatYCbCrColorSpaceEnum* = distinct cint
template YCbCr_Undefined*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 0
template YCbCr_BT601*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 1
template YCbCr_BT709*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 2
template YCbCr_xvYCC601*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 3
template YCbCr_xvYCC709*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 4
template YCbCr_JPEG*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 5
template YCbCr_BT2020*(_: type QVideoFrameFormatYCbCrColorSpaceEnum): untyped = 6


type QVideoFrameFormatColorSpaceEnum* = distinct cint
template ColorSpace_Undefined*(_: type QVideoFrameFormatColorSpaceEnum): untyped = 0
template ColorSpace_BT601*(_: type QVideoFrameFormatColorSpaceEnum): untyped = 1
template ColorSpace_BT709*(_: type QVideoFrameFormatColorSpaceEnum): untyped = 2
template ColorSpace_AdobeRgb*(_: type QVideoFrameFormatColorSpaceEnum): untyped = 5
template ColorSpace_BT2020*(_: type QVideoFrameFormatColorSpaceEnum): untyped = 6


type QVideoFrameFormatColorTransferEnum* = distinct cint
template ColorTransfer_Unknown*(_: type QVideoFrameFormatColorTransferEnum): untyped = 0
template ColorTransfer_BT709*(_: type QVideoFrameFormatColorTransferEnum): untyped = 1
template ColorTransfer_BT601*(_: type QVideoFrameFormatColorTransferEnum): untyped = 2
template ColorTransfer_Linear*(_: type QVideoFrameFormatColorTransferEnum): untyped = 3
template ColorTransfer_Gamma22*(_: type QVideoFrameFormatColorTransferEnum): untyped = 4
template ColorTransfer_Gamma28*(_: type QVideoFrameFormatColorTransferEnum): untyped = 5
template ColorTransfer_ST2084*(_: type QVideoFrameFormatColorTransferEnum): untyped = 6
template ColorTransfer_STD_B67*(_: type QVideoFrameFormatColorTransferEnum): untyped = 7


type QVideoFrameFormatColorRangeEnum* = distinct cint
template ColorRange_Unknown*(_: type QVideoFrameFormatColorRangeEnum): untyped = 0
template ColorRange_Video*(_: type QVideoFrameFormatColorRangeEnum): untyped = 1
template ColorRange_Full*(_: type QVideoFrameFormatColorRangeEnum): untyped = 2


import ./gen_qvideoframeformat_types
export gen_qvideoframeformat_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types
export
  gen_qrect_types,
  gen_qsize_types

type cQVideoFrameFormat*{.exportc: "QVideoFrameFormat", incompleteStruct.} = object

proc fcQVideoFrameFormat_swap(self: pointer, other: pointer): void {.importc: "QVideoFrameFormat_swap".}
proc fcQVideoFrameFormat_detach(self: pointer, ): void {.importc: "QVideoFrameFormat_detach".}
proc fcQVideoFrameFormat_operatorAssign(self: pointer, format: pointer): void {.importc: "QVideoFrameFormat_operatorAssign".}
proc fcQVideoFrameFormat_operatorEqual(self: pointer, format: pointer): bool {.importc: "QVideoFrameFormat_operatorEqual".}
proc fcQVideoFrameFormat_operatorNotEqual(self: pointer, format: pointer): bool {.importc: "QVideoFrameFormat_operatorNotEqual".}
proc fcQVideoFrameFormat_isValid(self: pointer, ): bool {.importc: "QVideoFrameFormat_isValid".}
proc fcQVideoFrameFormat_pixelFormat(self: pointer, ): cint {.importc: "QVideoFrameFormat_pixelFormat".}
proc fcQVideoFrameFormat_frameSize(self: pointer, ): pointer {.importc: "QVideoFrameFormat_frameSize".}
proc fcQVideoFrameFormat_setFrameSize(self: pointer, size: pointer): void {.importc: "QVideoFrameFormat_setFrameSize".}
proc fcQVideoFrameFormat_setFrameSize2(self: pointer, width: cint, height: cint): void {.importc: "QVideoFrameFormat_setFrameSize2".}
proc fcQVideoFrameFormat_frameWidth(self: pointer, ): cint {.importc: "QVideoFrameFormat_frameWidth".}
proc fcQVideoFrameFormat_frameHeight(self: pointer, ): cint {.importc: "QVideoFrameFormat_frameHeight".}
proc fcQVideoFrameFormat_planeCount(self: pointer, ): cint {.importc: "QVideoFrameFormat_planeCount".}
proc fcQVideoFrameFormat_viewport(self: pointer, ): pointer {.importc: "QVideoFrameFormat_viewport".}
proc fcQVideoFrameFormat_setViewport(self: pointer, viewport: pointer): void {.importc: "QVideoFrameFormat_setViewport".}
proc fcQVideoFrameFormat_scanLineDirection(self: pointer, ): cint {.importc: "QVideoFrameFormat_scanLineDirection".}
proc fcQVideoFrameFormat_setScanLineDirection(self: pointer, direction: cint): void {.importc: "QVideoFrameFormat_setScanLineDirection".}
proc fcQVideoFrameFormat_frameRate(self: pointer, ): float64 {.importc: "QVideoFrameFormat_frameRate".}
proc fcQVideoFrameFormat_setFrameRate(self: pointer, rate: float64): void {.importc: "QVideoFrameFormat_setFrameRate".}
proc fcQVideoFrameFormat_yCbCrColorSpace(self: pointer, ): cint {.importc: "QVideoFrameFormat_yCbCrColorSpace".}
proc fcQVideoFrameFormat_setYCbCrColorSpace(self: pointer, colorSpace: cint): void {.importc: "QVideoFrameFormat_setYCbCrColorSpace".}
proc fcQVideoFrameFormat_colorSpace(self: pointer, ): cint {.importc: "QVideoFrameFormat_colorSpace".}
proc fcQVideoFrameFormat_setColorSpace(self: pointer, colorSpace: cint): void {.importc: "QVideoFrameFormat_setColorSpace".}
proc fcQVideoFrameFormat_colorTransfer(self: pointer, ): cint {.importc: "QVideoFrameFormat_colorTransfer".}
proc fcQVideoFrameFormat_setColorTransfer(self: pointer, colorTransfer: cint): void {.importc: "QVideoFrameFormat_setColorTransfer".}
proc fcQVideoFrameFormat_colorRange(self: pointer, ): cint {.importc: "QVideoFrameFormat_colorRange".}
proc fcQVideoFrameFormat_setColorRange(self: pointer, range: cint): void {.importc: "QVideoFrameFormat_setColorRange".}
proc fcQVideoFrameFormat_isMirrored(self: pointer, ): bool {.importc: "QVideoFrameFormat_isMirrored".}
proc fcQVideoFrameFormat_setMirrored(self: pointer, mirrored: bool): void {.importc: "QVideoFrameFormat_setMirrored".}
proc fcQVideoFrameFormat_vertexShaderFileName(self: pointer, ): struct_miqt_string {.importc: "QVideoFrameFormat_vertexShaderFileName".}
proc fcQVideoFrameFormat_fragmentShaderFileName(self: pointer, ): struct_miqt_string {.importc: "QVideoFrameFormat_fragmentShaderFileName".}
proc fcQVideoFrameFormat_maxLuminance(self: pointer, ): float32 {.importc: "QVideoFrameFormat_maxLuminance".}
proc fcQVideoFrameFormat_setMaxLuminance(self: pointer, lum: float32): void {.importc: "QVideoFrameFormat_setMaxLuminance".}
proc fcQVideoFrameFormat_pixelFormatFromImageFormat(format: cint): cint {.importc: "QVideoFrameFormat_pixelFormatFromImageFormat".}
proc fcQVideoFrameFormat_imageFormatFromPixelFormat(format: cint): cint {.importc: "QVideoFrameFormat_imageFormatFromPixelFormat".}
proc fcQVideoFrameFormat_pixelFormatToString(pixelFormat: cint): struct_miqt_string {.importc: "QVideoFrameFormat_pixelFormatToString".}
proc fcQVideoFrameFormat_new(): ptr cQVideoFrameFormat {.importc: "QVideoFrameFormat_new".}
proc fcQVideoFrameFormat_new2(size: pointer, pixelFormat: cint): ptr cQVideoFrameFormat {.importc: "QVideoFrameFormat_new2".}
proc fcQVideoFrameFormat_new3(format: pointer): ptr cQVideoFrameFormat {.importc: "QVideoFrameFormat_new3".}
proc fcQVideoFrameFormat_delete(self: pointer) {.importc: "QVideoFrameFormat_delete".}

proc swap*(self: gen_qvideoframeformat_types.QVideoFrameFormat, other: gen_qvideoframeformat_types.QVideoFrameFormat): void =
  fcQVideoFrameFormat_swap(self.h, other.h)

proc detach*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): void =
  fcQVideoFrameFormat_detach(self.h)

proc operatorAssign*(self: gen_qvideoframeformat_types.QVideoFrameFormat, format: gen_qvideoframeformat_types.QVideoFrameFormat): void =
  fcQVideoFrameFormat_operatorAssign(self.h, format.h)

proc operatorEqual*(self: gen_qvideoframeformat_types.QVideoFrameFormat, format: gen_qvideoframeformat_types.QVideoFrameFormat): bool =
  fcQVideoFrameFormat_operatorEqual(self.h, format.h)

proc operatorNotEqual*(self: gen_qvideoframeformat_types.QVideoFrameFormat, format: gen_qvideoframeformat_types.QVideoFrameFormat): bool =
  fcQVideoFrameFormat_operatorNotEqual(self.h, format.h)

proc isValid*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): bool =
  fcQVideoFrameFormat_isValid(self.h)

proc pixelFormat*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  cint(fcQVideoFrameFormat_pixelFormat(self.h))

proc frameSize*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoFrameFormat_frameSize(self.h))

proc setFrameSize*(self: gen_qvideoframeformat_types.QVideoFrameFormat, size: gen_qsize_types.QSize): void =
  fcQVideoFrameFormat_setFrameSize(self.h, size.h)

proc setFrameSize*(self: gen_qvideoframeformat_types.QVideoFrameFormat, width: cint, height: cint): void =
  fcQVideoFrameFormat_setFrameSize2(self.h, width, height)

proc frameWidth*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  fcQVideoFrameFormat_frameWidth(self.h)

proc frameHeight*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  fcQVideoFrameFormat_frameHeight(self.h)

proc planeCount*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  fcQVideoFrameFormat_planeCount(self.h)

proc viewport*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVideoFrameFormat_viewport(self.h))

proc setViewport*(self: gen_qvideoframeformat_types.QVideoFrameFormat, viewport: gen_qrect_types.QRect): void =
  fcQVideoFrameFormat_setViewport(self.h, viewport.h)

proc scanLineDirection*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  cint(fcQVideoFrameFormat_scanLineDirection(self.h))

proc setScanLineDirection*(self: gen_qvideoframeformat_types.QVideoFrameFormat, direction: cint): void =
  fcQVideoFrameFormat_setScanLineDirection(self.h, cint(direction))

proc frameRate*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): float64 =
  fcQVideoFrameFormat_frameRate(self.h)

proc setFrameRate*(self: gen_qvideoframeformat_types.QVideoFrameFormat, rate: float64): void =
  fcQVideoFrameFormat_setFrameRate(self.h, rate)

proc yCbCrColorSpace*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  cint(fcQVideoFrameFormat_yCbCrColorSpace(self.h))

proc setYCbCrColorSpace*(self: gen_qvideoframeformat_types.QVideoFrameFormat, colorSpace: cint): void =
  fcQVideoFrameFormat_setYCbCrColorSpace(self.h, cint(colorSpace))

proc colorSpace*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  cint(fcQVideoFrameFormat_colorSpace(self.h))

proc setColorSpace*(self: gen_qvideoframeformat_types.QVideoFrameFormat, colorSpace: cint): void =
  fcQVideoFrameFormat_setColorSpace(self.h, cint(colorSpace))

proc colorTransfer*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  cint(fcQVideoFrameFormat_colorTransfer(self.h))

proc setColorTransfer*(self: gen_qvideoframeformat_types.QVideoFrameFormat, colorTransfer: cint): void =
  fcQVideoFrameFormat_setColorTransfer(self.h, cint(colorTransfer))

proc colorRange*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): cint =
  cint(fcQVideoFrameFormat_colorRange(self.h))

proc setColorRange*(self: gen_qvideoframeformat_types.QVideoFrameFormat, range: cint): void =
  fcQVideoFrameFormat_setColorRange(self.h, cint(range))

proc isMirrored*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): bool =
  fcQVideoFrameFormat_isMirrored(self.h)

proc setMirrored*(self: gen_qvideoframeformat_types.QVideoFrameFormat, mirrored: bool): void =
  fcQVideoFrameFormat_setMirrored(self.h, mirrored)

proc vertexShaderFileName*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): string =
  let v_ms = fcQVideoFrameFormat_vertexShaderFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fragmentShaderFileName*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): string =
  let v_ms = fcQVideoFrameFormat_fragmentShaderFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc maxLuminance*(self: gen_qvideoframeformat_types.QVideoFrameFormat, ): float32 =
  fcQVideoFrameFormat_maxLuminance(self.h)

proc setMaxLuminance*(self: gen_qvideoframeformat_types.QVideoFrameFormat, lum: float32): void =
  fcQVideoFrameFormat_setMaxLuminance(self.h, lum)

proc pixelFormatFromImageFormat*(_: type gen_qvideoframeformat_types.QVideoFrameFormat, format: cint): cint =
  cint(fcQVideoFrameFormat_pixelFormatFromImageFormat(cint(format)))

proc imageFormatFromPixelFormat*(_: type gen_qvideoframeformat_types.QVideoFrameFormat, format: cint): cint =
  cint(fcQVideoFrameFormat_imageFormatFromPixelFormat(cint(format)))

proc pixelFormatToString*(_: type gen_qvideoframeformat_types.QVideoFrameFormat, pixelFormat: cint): string =
  let v_ms = fcQVideoFrameFormat_pixelFormatToString(cint(pixelFormat))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qvideoframeformat_types.QVideoFrameFormat): gen_qvideoframeformat_types.QVideoFrameFormat =
  gen_qvideoframeformat_types.QVideoFrameFormat(h: fcQVideoFrameFormat_new())

proc create*(T: type gen_qvideoframeformat_types.QVideoFrameFormat,
    size: gen_qsize_types.QSize, pixelFormat: cint): gen_qvideoframeformat_types.QVideoFrameFormat =
  gen_qvideoframeformat_types.QVideoFrameFormat(h: fcQVideoFrameFormat_new2(size.h, cint(pixelFormat)))

proc create*(T: type gen_qvideoframeformat_types.QVideoFrameFormat,
    format: gen_qvideoframeformat_types.QVideoFrameFormat): gen_qvideoframeformat_types.QVideoFrameFormat =
  gen_qvideoframeformat_types.QVideoFrameFormat(h: fcQVideoFrameFormat_new3(format.h))

proc delete*(self: gen_qvideoframeformat_types.QVideoFrameFormat) =
  fcQVideoFrameFormat_delete(self.h)
