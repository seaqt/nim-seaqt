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
{.compile("gen_qvideoframe.cpp", cflags).}


type QVideoFrameFieldTypeEnum* = distinct cint
template ProgressiveFrame*(_: type QVideoFrameFieldTypeEnum): untyped = 0
template TopField*(_: type QVideoFrameFieldTypeEnum): untyped = 1
template BottomField*(_: type QVideoFrameFieldTypeEnum): untyped = 2
template InterlacedFrame*(_: type QVideoFrameFieldTypeEnum): untyped = 3


type QVideoFramePixelFormatEnum* = distinct cint
template Format_Invalid*(_: type QVideoFramePixelFormatEnum): untyped = 0
template Format_ARGB32*(_: type QVideoFramePixelFormatEnum): untyped = 1
template Format_ARGB32_Premultiplied*(_: type QVideoFramePixelFormatEnum): untyped = 2
template Format_RGB32*(_: type QVideoFramePixelFormatEnum): untyped = 3
template Format_RGB24*(_: type QVideoFramePixelFormatEnum): untyped = 4
template Format_RGB565*(_: type QVideoFramePixelFormatEnum): untyped = 5
template Format_RGB555*(_: type QVideoFramePixelFormatEnum): untyped = 6
template Format_ARGB8565_Premultiplied*(_: type QVideoFramePixelFormatEnum): untyped = 7
template Format_BGRA32*(_: type QVideoFramePixelFormatEnum): untyped = 8
template Format_BGRA32_Premultiplied*(_: type QVideoFramePixelFormatEnum): untyped = 9
template Format_BGR32*(_: type QVideoFramePixelFormatEnum): untyped = 10
template Format_BGR24*(_: type QVideoFramePixelFormatEnum): untyped = 11
template Format_BGR565*(_: type QVideoFramePixelFormatEnum): untyped = 12
template Format_BGR555*(_: type QVideoFramePixelFormatEnum): untyped = 13
template Format_BGRA5658_Premultiplied*(_: type QVideoFramePixelFormatEnum): untyped = 14
template Format_AYUV444*(_: type QVideoFramePixelFormatEnum): untyped = 15
template Format_AYUV444_Premultiplied*(_: type QVideoFramePixelFormatEnum): untyped = 16
template Format_YUV444*(_: type QVideoFramePixelFormatEnum): untyped = 17
template Format_YUV420P*(_: type QVideoFramePixelFormatEnum): untyped = 18
template Format_YV12*(_: type QVideoFramePixelFormatEnum): untyped = 19
template Format_UYVY*(_: type QVideoFramePixelFormatEnum): untyped = 20
template Format_YUYV*(_: type QVideoFramePixelFormatEnum): untyped = 21
template Format_NV12*(_: type QVideoFramePixelFormatEnum): untyped = 22
template Format_NV21*(_: type QVideoFramePixelFormatEnum): untyped = 23
template Format_IMC1*(_: type QVideoFramePixelFormatEnum): untyped = 24
template Format_IMC2*(_: type QVideoFramePixelFormatEnum): untyped = 25
template Format_IMC3*(_: type QVideoFramePixelFormatEnum): untyped = 26
template Format_IMC4*(_: type QVideoFramePixelFormatEnum): untyped = 27
template Format_Y8*(_: type QVideoFramePixelFormatEnum): untyped = 28
template Format_Y16*(_: type QVideoFramePixelFormatEnum): untyped = 29
template Format_Jpeg*(_: type QVideoFramePixelFormatEnum): untyped = 30
template Format_CameraRaw*(_: type QVideoFramePixelFormatEnum): untyped = 31
template Format_AdobeDng*(_: type QVideoFramePixelFormatEnum): untyped = 32
template Format_ABGR32*(_: type QVideoFramePixelFormatEnum): untyped = 33
template Format_YUV422P*(_: type QVideoFramePixelFormatEnum): untyped = 34
template NPixelFormats*(_: type QVideoFramePixelFormatEnum): untyped = 35
template Format_User*(_: type QVideoFramePixelFormatEnum): untyped = 1000


import ./gen_qvideoframe_types
export gen_qvideoframe_types

import
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qimage_types,
  std/tables
export
  gen_qsize_types,
  gen_qvariant_types,
  gen_qimage_types

type cQVideoFrame*{.exportc: "QVideoFrame", incompleteStruct.} = object

proc fcQVideoFrame_operatorAssign(self: pointer, other: pointer): void {.importc: "QVideoFrame_operatorAssign".}
proc fcQVideoFrame_operatorEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorEqual".}
proc fcQVideoFrame_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorNotEqual".}
proc fcQVideoFrame_isValid(self: pointer, ): bool {.importc: "QVideoFrame_isValid".}
proc fcQVideoFrame_pixelFormat(self: pointer, ): cint {.importc: "QVideoFrame_pixelFormat".}
proc fcQVideoFrame_handleType(self: pointer, ): cint {.importc: "QVideoFrame_handleType".}
proc fcQVideoFrame_size(self: pointer, ): pointer {.importc: "QVideoFrame_size".}
proc fcQVideoFrame_width(self: pointer, ): cint {.importc: "QVideoFrame_width".}
proc fcQVideoFrame_height(self: pointer, ): cint {.importc: "QVideoFrame_height".}
proc fcQVideoFrame_fieldType(self: pointer, ): cint {.importc: "QVideoFrame_fieldType".}
proc fcQVideoFrame_setFieldType(self: pointer, fieldType: cint): void {.importc: "QVideoFrame_setFieldType".}
proc fcQVideoFrame_isMapped(self: pointer, ): bool {.importc: "QVideoFrame_isMapped".}
proc fcQVideoFrame_isReadable(self: pointer, ): bool {.importc: "QVideoFrame_isReadable".}
proc fcQVideoFrame_isWritable(self: pointer, ): bool {.importc: "QVideoFrame_isWritable".}
proc fcQVideoFrame_mapMode(self: pointer, ): cint {.importc: "QVideoFrame_mapMode".}
proc fcQVideoFrame_map(self: pointer, mode: cint): bool {.importc: "QVideoFrame_map".}
proc fcQVideoFrame_unmap(self: pointer, ): void {.importc: "QVideoFrame_unmap".}
proc fcQVideoFrame_bytesPerLine(self: pointer, ): cint {.importc: "QVideoFrame_bytesPerLine".}
proc fcQVideoFrame_bytesPerLineWithPlane(self: pointer, plane: cint): cint {.importc: "QVideoFrame_bytesPerLineWithPlane".}
proc fcQVideoFrame_bits(self: pointer, ): ptr uint8 {.importc: "QVideoFrame_bits".}
proc fcQVideoFrame_bitsWithPlane(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bitsWithPlane".}
proc fcQVideoFrame_bits2(self: pointer, ): ptr uint8 {.importc: "QVideoFrame_bits2".}
proc fcQVideoFrame_bits3(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bits3".}
proc fcQVideoFrame_mappedBytes(self: pointer, ): cint {.importc: "QVideoFrame_mappedBytes".}
proc fcQVideoFrame_planeCount(self: pointer, ): cint {.importc: "QVideoFrame_planeCount".}
proc fcQVideoFrame_handle(self: pointer, ): pointer {.importc: "QVideoFrame_handle".}
proc fcQVideoFrame_startTime(self: pointer, ): clonglong {.importc: "QVideoFrame_startTime".}
proc fcQVideoFrame_setStartTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setStartTime".}
proc fcQVideoFrame_endTime(self: pointer, ): clonglong {.importc: "QVideoFrame_endTime".}
proc fcQVideoFrame_setEndTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setEndTime".}
proc fcQVideoFrame_availableMetaData(self: pointer, ): struct_miqt_map {.importc: "QVideoFrame_availableMetaData".}
proc fcQVideoFrame_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QVideoFrame_metaData".}
proc fcQVideoFrame_setMetaData(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QVideoFrame_setMetaData".}
proc fcQVideoFrame_image(self: pointer, ): pointer {.importc: "QVideoFrame_image".}
proc fcQVideoFrame_pixelFormatFromImageFormat(format: cint): cint {.importc: "QVideoFrame_pixelFormatFromImageFormat".}
proc fcQVideoFrame_imageFormatFromPixelFormat(format: cint): cint {.importc: "QVideoFrame_imageFormatFromPixelFormat".}
proc fcQVideoFrame_new(): ptr cQVideoFrame {.importc: "QVideoFrame_new".}
proc fcQVideoFrame_new2(bytes: cint, size: pointer, bytesPerLine: cint, format: cint): ptr cQVideoFrame {.importc: "QVideoFrame_new2".}
proc fcQVideoFrame_new3(image: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new3".}
proc fcQVideoFrame_new4(other: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new4".}
proc fcQVideoFrame_delete(self: pointer) {.importc: "QVideoFrame_delete".}

proc operatorAssign*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoFrame_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qvideoframe_types.QVideoFrame, ): bool =
  fcQVideoFrame_isValid(self.h)

proc pixelFormat*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  cint(fcQVideoFrame_pixelFormat(self.h))

proc handleType*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  cint(fcQVideoFrame_handleType(self.h))

proc size*(self: gen_qvideoframe_types.QVideoFrame, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoFrame_size(self.h))

proc width*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  fcQVideoFrame_width(self.h)

proc height*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  fcQVideoFrame_height(self.h)

proc fieldType*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  cint(fcQVideoFrame_fieldType(self.h))

proc setFieldType*(self: gen_qvideoframe_types.QVideoFrame, fieldType: cint): void =
  fcQVideoFrame_setFieldType(self.h, cint(fieldType))

proc isMapped*(self: gen_qvideoframe_types.QVideoFrame, ): bool =
  fcQVideoFrame_isMapped(self.h)

proc isReadable*(self: gen_qvideoframe_types.QVideoFrame, ): bool =
  fcQVideoFrame_isReadable(self.h)

proc isWritable*(self: gen_qvideoframe_types.QVideoFrame, ): bool =
  fcQVideoFrame_isWritable(self.h)

proc mapMode*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  cint(fcQVideoFrame_mapMode(self.h))

proc map*(self: gen_qvideoframe_types.QVideoFrame, mode: cint): bool =
  fcQVideoFrame_map(self.h, cint(mode))

proc unmap*(self: gen_qvideoframe_types.QVideoFrame, ): void =
  fcQVideoFrame_unmap(self.h)

proc bytesPerLine*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  fcQVideoFrame_bytesPerLine(self.h)

proc bytesPerLine*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): cint =
  fcQVideoFrame_bytesPerLineWithPlane(self.h, plane)

proc bits*(self: gen_qvideoframe_types.QVideoFrame, ): ptr uint8 =
  fcQVideoFrame_bits(self.h)

proc bits*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): ptr uint8 =
  fcQVideoFrame_bitsWithPlane(self.h, plane)

proc bits2*(self: gen_qvideoframe_types.QVideoFrame, ): ptr uint8 =
  fcQVideoFrame_bits2(self.h)

proc bits2*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): ptr uint8 =
  fcQVideoFrame_bits3(self.h, plane)

proc mappedBytes*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  fcQVideoFrame_mappedBytes(self.h)

proc planeCount*(self: gen_qvideoframe_types.QVideoFrame, ): cint =
  fcQVideoFrame_planeCount(self.h)

proc handle*(self: gen_qvideoframe_types.QVideoFrame, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoFrame_handle(self.h))

proc startTime*(self: gen_qvideoframe_types.QVideoFrame, ): clonglong =
  fcQVideoFrame_startTime(self.h)

proc setStartTime*(self: gen_qvideoframe_types.QVideoFrame, time: clonglong): void =
  fcQVideoFrame_setStartTime(self.h, time)

proc endTime*(self: gen_qvideoframe_types.QVideoFrame, ): clonglong =
  fcQVideoFrame_endTime(self.h)

proc setEndTime*(self: gen_qvideoframe_types.QVideoFrame, time: clonglong): void =
  fcQVideoFrame_setEndTime(self.h, time)

proc availableMetaData*(self: gen_qvideoframe_types.QVideoFrame, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQVideoFrame_availableMetaData(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc metaData*(self: gen_qvideoframe_types.QVideoFrame, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoFrame_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setMetaData*(self: gen_qvideoframe_types.QVideoFrame, key: string, value: gen_qvariant_types.QVariant): void =
  fcQVideoFrame_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc image*(self: gen_qvideoframe_types.QVideoFrame, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQVideoFrame_image(self.h))

proc pixelFormatFromImageFormat*(_: type gen_qvideoframe_types.QVideoFrame, format: cint): cint =
  cint(fcQVideoFrame_pixelFormatFromImageFormat(cint(format)))

proc imageFormatFromPixelFormat*(_: type gen_qvideoframe_types.QVideoFrame, format: cint): cint =
  cint(fcQVideoFrame_imageFormatFromPixelFormat(cint(format)))

proc create*(T: type gen_qvideoframe_types.QVideoFrame): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new())

proc create*(T: type gen_qvideoframe_types.QVideoFrame,
    bytes: cint, size: gen_qsize_types.QSize, bytesPerLine: cint, format: cint): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new2(bytes, size.h, bytesPerLine, cint(format)))

proc create*(T: type gen_qvideoframe_types.QVideoFrame,
    image: gen_qimage_types.QImage): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new3(image.h))

proc create*(T: type gen_qvideoframe_types.QVideoFrame,
    other: gen_qvideoframe_types.QVideoFrame): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new4(other.h))

proc delete*(self: gen_qvideoframe_types.QVideoFrame) =
  fcQVideoFrame_delete(self.h)
