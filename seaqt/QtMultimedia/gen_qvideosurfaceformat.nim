import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qvideosurfaceformat.cpp", cflags).}


type QVideoSurfaceFormatDirectionEnum* = distinct cint
template TopToBottom*(_: type QVideoSurfaceFormatDirectionEnum): untyped = 0
template BottomToTop*(_: type QVideoSurfaceFormatDirectionEnum): untyped = 1


type QVideoSurfaceFormatYCbCrColorSpaceEnum* = distinct cint
template YCbCr_Undefined*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 0
template YCbCr_BT601*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 1
template YCbCr_BT709*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 2
template YCbCr_xvYCC601*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 3
template YCbCr_xvYCC709*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 4
template YCbCr_JPEG*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 5
template YCbCr_CustomMatrix*(_: type QVideoSurfaceFormatYCbCrColorSpaceEnum): untyped = 6


import ./gen_qvideosurfaceformat_types
export gen_qvideosurfaceformat_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types
export
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types

type cQVideoSurfaceFormat*{.exportc: "QVideoSurfaceFormat", incompleteStruct.} = object

proc fcQVideoSurfaceFormat_operatorAssign(self: pointer, format: pointer): void {.importc: "QVideoSurfaceFormat_operatorAssign".}
proc fcQVideoSurfaceFormat_operatorEqual(self: pointer, format: pointer): bool {.importc: "QVideoSurfaceFormat_operatorEqual".}
proc fcQVideoSurfaceFormat_operatorNotEqual(self: pointer, format: pointer): bool {.importc: "QVideoSurfaceFormat_operatorNotEqual".}
proc fcQVideoSurfaceFormat_isValid(self: pointer, ): bool {.importc: "QVideoSurfaceFormat_isValid".}
proc fcQVideoSurfaceFormat_pixelFormat(self: pointer, ): cint {.importc: "QVideoSurfaceFormat_pixelFormat".}
proc fcQVideoSurfaceFormat_handleType(self: pointer, ): cint {.importc: "QVideoSurfaceFormat_handleType".}
proc fcQVideoSurfaceFormat_frameSize(self: pointer, ): pointer {.importc: "QVideoSurfaceFormat_frameSize".}
proc fcQVideoSurfaceFormat_setFrameSize(self: pointer, size: pointer): void {.importc: "QVideoSurfaceFormat_setFrameSize".}
proc fcQVideoSurfaceFormat_setFrameSize2(self: pointer, width: cint, height: cint): void {.importc: "QVideoSurfaceFormat_setFrameSize2".}
proc fcQVideoSurfaceFormat_frameWidth(self: pointer, ): cint {.importc: "QVideoSurfaceFormat_frameWidth".}
proc fcQVideoSurfaceFormat_frameHeight(self: pointer, ): cint {.importc: "QVideoSurfaceFormat_frameHeight".}
proc fcQVideoSurfaceFormat_viewport(self: pointer, ): pointer {.importc: "QVideoSurfaceFormat_viewport".}
proc fcQVideoSurfaceFormat_setViewport(self: pointer, viewport: pointer): void {.importc: "QVideoSurfaceFormat_setViewport".}
proc fcQVideoSurfaceFormat_scanLineDirection(self: pointer, ): cint {.importc: "QVideoSurfaceFormat_scanLineDirection".}
proc fcQVideoSurfaceFormat_setScanLineDirection(self: pointer, direction: cint): void {.importc: "QVideoSurfaceFormat_setScanLineDirection".}
proc fcQVideoSurfaceFormat_frameRate(self: pointer, ): float64 {.importc: "QVideoSurfaceFormat_frameRate".}
proc fcQVideoSurfaceFormat_setFrameRate(self: pointer, rate: float64): void {.importc: "QVideoSurfaceFormat_setFrameRate".}
proc fcQVideoSurfaceFormat_pixelAspectRatio(self: pointer, ): pointer {.importc: "QVideoSurfaceFormat_pixelAspectRatio".}
proc fcQVideoSurfaceFormat_setPixelAspectRatio(self: pointer, ratio: pointer): void {.importc: "QVideoSurfaceFormat_setPixelAspectRatio".}
proc fcQVideoSurfaceFormat_setPixelAspectRatio2(self: pointer, width: cint, height: cint): void {.importc: "QVideoSurfaceFormat_setPixelAspectRatio2".}
proc fcQVideoSurfaceFormat_yCbCrColorSpace(self: pointer, ): cint {.importc: "QVideoSurfaceFormat_yCbCrColorSpace".}
proc fcQVideoSurfaceFormat_setYCbCrColorSpace(self: pointer, colorSpace: cint): void {.importc: "QVideoSurfaceFormat_setYCbCrColorSpace".}
proc fcQVideoSurfaceFormat_isMirrored(self: pointer, ): bool {.importc: "QVideoSurfaceFormat_isMirrored".}
proc fcQVideoSurfaceFormat_setMirrored(self: pointer, mirrored: bool): void {.importc: "QVideoSurfaceFormat_setMirrored".}
proc fcQVideoSurfaceFormat_sizeHint(self: pointer, ): pointer {.importc: "QVideoSurfaceFormat_sizeHint".}
proc fcQVideoSurfaceFormat_propertyNames(self: pointer, ): struct_miqt_array {.importc: "QVideoSurfaceFormat_propertyNames".}
proc fcQVideoSurfaceFormat_property(self: pointer, name: cstring): pointer {.importc: "QVideoSurfaceFormat_property".}
proc fcQVideoSurfaceFormat_setProperty(self: pointer, name: cstring, value: pointer): void {.importc: "QVideoSurfaceFormat_setProperty".}
proc fcQVideoSurfaceFormat_new(): ptr cQVideoSurfaceFormat {.importc: "QVideoSurfaceFormat_new".}
proc fcQVideoSurfaceFormat_new2(size: pointer, pixelFormat: cint): ptr cQVideoSurfaceFormat {.importc: "QVideoSurfaceFormat_new2".}
proc fcQVideoSurfaceFormat_new3(format: pointer): ptr cQVideoSurfaceFormat {.importc: "QVideoSurfaceFormat_new3".}
proc fcQVideoSurfaceFormat_new4(size: pointer, pixelFormat: cint, handleType: cint): ptr cQVideoSurfaceFormat {.importc: "QVideoSurfaceFormat_new4".}
proc fcQVideoSurfaceFormat_delete(self: pointer) {.importc: "QVideoSurfaceFormat_delete".}

proc operatorAssign*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): void =
  fcQVideoSurfaceFormat_operatorAssign(self.h, format.h)

proc operatorEqual*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQVideoSurfaceFormat_operatorEqual(self.h, format.h)

proc operatorNotEqual*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQVideoSurfaceFormat_operatorNotEqual(self.h, format.h)

proc isValid*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): bool =
  fcQVideoSurfaceFormat_isValid(self.h)

proc pixelFormat*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): cint =
  cint(fcQVideoSurfaceFormat_pixelFormat(self.h))

proc handleType*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): cint =
  cint(fcQVideoSurfaceFormat_handleType(self.h))

proc frameSize*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoSurfaceFormat_frameSize(self.h))

proc setFrameSize*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, size: gen_qsize_types.QSize): void =
  fcQVideoSurfaceFormat_setFrameSize(self.h, size.h)

proc setFrameSize*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, width: cint, height: cint): void =
  fcQVideoSurfaceFormat_setFrameSize2(self.h, width, height)

proc frameWidth*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): cint =
  fcQVideoSurfaceFormat_frameWidth(self.h)

proc frameHeight*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): cint =
  fcQVideoSurfaceFormat_frameHeight(self.h)

proc viewport*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVideoSurfaceFormat_viewport(self.h))

proc setViewport*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, viewport: gen_qrect_types.QRect): void =
  fcQVideoSurfaceFormat_setViewport(self.h, viewport.h)

proc scanLineDirection*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): cint =
  cint(fcQVideoSurfaceFormat_scanLineDirection(self.h))

proc setScanLineDirection*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, direction: cint): void =
  fcQVideoSurfaceFormat_setScanLineDirection(self.h, cint(direction))

proc frameRate*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): float64 =
  fcQVideoSurfaceFormat_frameRate(self.h)

proc setFrameRate*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, rate: float64): void =
  fcQVideoSurfaceFormat_setFrameRate(self.h, rate)

proc pixelAspectRatio*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoSurfaceFormat_pixelAspectRatio(self.h))

proc setPixelAspectRatio*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ratio: gen_qsize_types.QSize): void =
  fcQVideoSurfaceFormat_setPixelAspectRatio(self.h, ratio.h)

proc setPixelAspectRatio*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, width: cint, height: cint): void =
  fcQVideoSurfaceFormat_setPixelAspectRatio2(self.h, width, height)

proc yCbCrColorSpace*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): cint =
  cint(fcQVideoSurfaceFormat_yCbCrColorSpace(self.h))

proc setYCbCrColorSpace*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, colorSpace: cint): void =
  fcQVideoSurfaceFormat_setYCbCrColorSpace(self.h, cint(colorSpace))

proc isMirrored*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): bool =
  fcQVideoSurfaceFormat_isMirrored(self.h)

proc setMirrored*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, mirrored: bool): void =
  fcQVideoSurfaceFormat_setMirrored(self.h, mirrored)

proc sizeHint*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoSurfaceFormat_sizeHint(self.h))

proc propertyNames*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, ): seq[seq[byte]] =
  var v_ma = fcQVideoSurfaceFormat_propertyNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc property*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, name: cstring): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoSurfaceFormat_property(self.h, name))

proc setProperty*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, name: cstring, value: gen_qvariant_types.QVariant): void =
  fcQVideoSurfaceFormat_setProperty(self.h, name, value.h)

proc create*(T: type gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQVideoSurfaceFormat_new())

proc create*(T: type gen_qvideosurfaceformat_types.QVideoSurfaceFormat,
    size: gen_qsize_types.QSize, pixelFormat: cint): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQVideoSurfaceFormat_new2(size.h, cint(pixelFormat)))

proc create*(T: type gen_qvideosurfaceformat_types.QVideoSurfaceFormat,
    format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQVideoSurfaceFormat_new3(format.h))

proc create*(T: type gen_qvideosurfaceformat_types.QVideoSurfaceFormat,
    size: gen_qsize_types.QSize, pixelFormat: cint, handleType: cint): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQVideoSurfaceFormat_new4(size.h, cint(pixelFormat), cint(handleType)))

proc delete*(self: gen_qvideosurfaceformat_types.QVideoSurfaceFormat) =
  fcQVideoSurfaceFormat_delete(self.h)
