import ./Qt5Gui_libs

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


type QPixelFormatColorModelEnum* = distinct cint
template RGB*(_: type QPixelFormatColorModelEnum): untyped = 0
template BGR*(_: type QPixelFormatColorModelEnum): untyped = 1
template Indexed*(_: type QPixelFormatColorModelEnum): untyped = 2
template Grayscale*(_: type QPixelFormatColorModelEnum): untyped = 3
template CMYK*(_: type QPixelFormatColorModelEnum): untyped = 4
template HSL*(_: type QPixelFormatColorModelEnum): untyped = 5
template HSV*(_: type QPixelFormatColorModelEnum): untyped = 6
template YUV*(_: type QPixelFormatColorModelEnum): untyped = 7
template Alpha*(_: type QPixelFormatColorModelEnum): untyped = 8


type QPixelFormatAlphaUsageEnum* = distinct cint
template UsesAlpha*(_: type QPixelFormatAlphaUsageEnum): untyped = 0
template IgnoresAlpha*(_: type QPixelFormatAlphaUsageEnum): untyped = 1


type QPixelFormatAlphaPositionEnum* = distinct cint
template AtBeginning*(_: type QPixelFormatAlphaPositionEnum): untyped = 0
template AtEnd*(_: type QPixelFormatAlphaPositionEnum): untyped = 1


type QPixelFormatAlphaPremultipliedEnum* = distinct cint
template NotPremultiplied*(_: type QPixelFormatAlphaPremultipliedEnum): untyped = 0
template Premultiplied*(_: type QPixelFormatAlphaPremultipliedEnum): untyped = 1


type QPixelFormatTypeInterpretationEnum* = distinct cint
template UnsignedInteger*(_: type QPixelFormatTypeInterpretationEnum): untyped = 0
template UnsignedShort*(_: type QPixelFormatTypeInterpretationEnum): untyped = 1
template UnsignedByte*(_: type QPixelFormatTypeInterpretationEnum): untyped = 2
template FloatingPoint*(_: type QPixelFormatTypeInterpretationEnum): untyped = 3


type QPixelFormatYUVLayoutEnum* = distinct cint
template YUV444*(_: type QPixelFormatYUVLayoutEnum): untyped = 0
template YUV422*(_: type QPixelFormatYUVLayoutEnum): untyped = 1
template YUV411*(_: type QPixelFormatYUVLayoutEnum): untyped = 2
template YUV420P*(_: type QPixelFormatYUVLayoutEnum): untyped = 3
template YUV420SP*(_: type QPixelFormatYUVLayoutEnum): untyped = 4
template YV12*(_: type QPixelFormatYUVLayoutEnum): untyped = 5
template UYVY*(_: type QPixelFormatYUVLayoutEnum): untyped = 6
template YUYV*(_: type QPixelFormatYUVLayoutEnum): untyped = 7
template NV12*(_: type QPixelFormatYUVLayoutEnum): untyped = 8
template NV21*(_: type QPixelFormatYUVLayoutEnum): untyped = 9
template IMC1*(_: type QPixelFormatYUVLayoutEnum): untyped = 10
template IMC2*(_: type QPixelFormatYUVLayoutEnum): untyped = 11
template IMC3*(_: type QPixelFormatYUVLayoutEnum): untyped = 12
template IMC4*(_: type QPixelFormatYUVLayoutEnum): untyped = 13
template Y8*(_: type QPixelFormatYUVLayoutEnum): untyped = 14
template Y16*(_: type QPixelFormatYUVLayoutEnum): untyped = 15


type QPixelFormatByteOrderEnum* = distinct cint
template LittleEndian*(_: type QPixelFormatByteOrderEnum): untyped = 0
template BigEndian*(_: type QPixelFormatByteOrderEnum): untyped = 1
template CurrentSystemEndian*(_: type QPixelFormatByteOrderEnum): untyped = 2


import ./gen_qpixelformat_types
export gen_qpixelformat_types


type cQPixelFormat*{.exportc: "QPixelFormat", incompleteStruct.} = object

proc fcQPixelFormat_colorModel(self: pointer): cint {.importc: "QPixelFormat_colorModel".}
proc fcQPixelFormat_channelCount(self: pointer): uint8 {.importc: "QPixelFormat_channelCount".}
proc fcQPixelFormat_redSize(self: pointer): uint8 {.importc: "QPixelFormat_redSize".}
proc fcQPixelFormat_greenSize(self: pointer): uint8 {.importc: "QPixelFormat_greenSize".}
proc fcQPixelFormat_blueSize(self: pointer): uint8 {.importc: "QPixelFormat_blueSize".}
proc fcQPixelFormat_cyanSize(self: pointer): uint8 {.importc: "QPixelFormat_cyanSize".}
proc fcQPixelFormat_magentaSize(self: pointer): uint8 {.importc: "QPixelFormat_magentaSize".}
proc fcQPixelFormat_yellowSize(self: pointer): uint8 {.importc: "QPixelFormat_yellowSize".}
proc fcQPixelFormat_blackSize(self: pointer): uint8 {.importc: "QPixelFormat_blackSize".}
proc fcQPixelFormat_hueSize(self: pointer): uint8 {.importc: "QPixelFormat_hueSize".}
proc fcQPixelFormat_saturationSize(self: pointer): uint8 {.importc: "QPixelFormat_saturationSize".}
proc fcQPixelFormat_lightnessSize(self: pointer): uint8 {.importc: "QPixelFormat_lightnessSize".}
proc fcQPixelFormat_brightnessSize(self: pointer): uint8 {.importc: "QPixelFormat_brightnessSize".}
proc fcQPixelFormat_alphaSize(self: pointer): uint8 {.importc: "QPixelFormat_alphaSize".}
proc fcQPixelFormat_bitsPerPixel(self: pointer): uint8 {.importc: "QPixelFormat_bitsPerPixel".}
proc fcQPixelFormat_alphaUsage(self: pointer): cint {.importc: "QPixelFormat_alphaUsage".}
proc fcQPixelFormat_alphaPosition(self: pointer): cint {.importc: "QPixelFormat_alphaPosition".}
proc fcQPixelFormat_premultiplied(self: pointer): cint {.importc: "QPixelFormat_premultiplied".}
proc fcQPixelFormat_typeInterpretation(self: pointer): cint {.importc: "QPixelFormat_typeInterpretation".}
proc fcQPixelFormat_byteOrder(self: pointer): cint {.importc: "QPixelFormat_byteOrder".}
proc fcQPixelFormat_yuvLayout(self: pointer): cint {.importc: "QPixelFormat_yuvLayout".}
proc fcQPixelFormat_subEnum(self: pointer): uint8 {.importc: "QPixelFormat_subEnum".}
proc fcQPixelFormat_new(): ptr cQPixelFormat {.importc: "QPixelFormat_new".}
proc fcQPixelFormat_new2(colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint): ptr cQPixelFormat {.importc: "QPixelFormat_new2".}
proc fcQPixelFormat_new3(param1: pointer): ptr cQPixelFormat {.importc: "QPixelFormat_new3".}
proc fcQPixelFormat_new4(colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint, byteOrder: cint): ptr cQPixelFormat {.importc: "QPixelFormat_new4".}
proc fcQPixelFormat_new5(colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint, byteOrder: cint, subEnum: uint8): ptr cQPixelFormat {.importc: "QPixelFormat_new5".}

proc colorModel*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_colorModel(self.h))

proc channelCount*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_channelCount(self.h)

proc redSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_redSize(self.h)

proc greenSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_greenSize(self.h)

proc blueSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_blueSize(self.h)

proc cyanSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_cyanSize(self.h)

proc magentaSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_magentaSize(self.h)

proc yellowSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_yellowSize(self.h)

proc blackSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_blackSize(self.h)

proc hueSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_hueSize(self.h)

proc saturationSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_saturationSize(self.h)

proc lightnessSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_lightnessSize(self.h)

proc brightnessSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_brightnessSize(self.h)

proc alphaSize*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_alphaSize(self.h)

proc bitsPerPixel*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_bitsPerPixel(self.h)

proc alphaUsage*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_alphaUsage(self.h))

proc alphaPosition*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_alphaPosition(self.h))

proc premultiplied*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_premultiplied(self.h))

proc typeInterpretation*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_typeInterpretation(self.h))

proc byteOrder*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_byteOrder(self.h))

proc yuvLayout*(self: gen_qpixelformat_types.QPixelFormat): cint =
  cint(fcQPixelFormat_yuvLayout(self.h))

proc subEnum*(self: gen_qpixelformat_types.QPixelFormat): uint8 =
  fcQPixelFormat_subEnum(self.h)

proc create*(T: type gen_qpixelformat_types.QPixelFormat): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQPixelFormat_new(), owned: true)

proc create*(T: type gen_qpixelformat_types.QPixelFormat,
    colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQPixelFormat_new2(cint(colorModel), firstSize, secondSize, thirdSize, fourthSize, fifthSize, alphaSize, cint(alphaUsage), cint(alphaPosition), cint(premultiplied), cint(typeInterpretation)), owned: true)

proc create*(T: type gen_qpixelformat_types.QPixelFormat,
    param1: gen_qpixelformat_types.QPixelFormat): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQPixelFormat_new3(param1.h), owned: true)

proc create*(T: type gen_qpixelformat_types.QPixelFormat,
    colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint, byteOrder: cint): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQPixelFormat_new4(cint(colorModel), firstSize, secondSize, thirdSize, fourthSize, fifthSize, alphaSize, cint(alphaUsage), cint(alphaPosition), cint(premultiplied), cint(typeInterpretation), cint(byteOrder)), owned: true)

proc create*(T: type gen_qpixelformat_types.QPixelFormat,
    colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint, byteOrder: cint, subEnum: uint8): gen_qpixelformat_types.QPixelFormat =
  gen_qpixelformat_types.QPixelFormat(h: fcQPixelFormat_new5(cint(colorModel), firstSize, secondSize, thirdSize, fourthSize, fifthSize, alphaSize, cint(alphaUsage), cint(alphaPosition), cint(premultiplied), cint(typeInterpretation), cint(byteOrder), subEnum), owned: true)

