import ./Qt6Multimedia_libs

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


type QVideoFrameHandleTypeEnum* = distinct cint
template NoHandle*(_: type QVideoFrameHandleTypeEnum): untyped = 0
template RhiTextureHandle*(_: type QVideoFrameHandleTypeEnum): untyped = 1


type QVideoFrameMapModeEnum* = distinct cint
template NotMapped*(_: type QVideoFrameMapModeEnum): untyped = 0
template ReadOnly*(_: type QVideoFrameMapModeEnum): untyped = 1
template WriteOnly*(_: type QVideoFrameMapModeEnum): untyped = 2
template ReadWrite*(_: type QVideoFrameMapModeEnum): untyped = 3


type QVideoFrameRotationAngleEnum* = distinct cint
template Rotation0*(_: type QVideoFrameRotationAngleEnum): untyped = 0
template Rotation90*(_: type QVideoFrameRotationAngleEnum): untyped = 90
template Rotation180*(_: type QVideoFrameRotationAngleEnum): untyped = 180
template Rotation270*(_: type QVideoFrameRotationAngleEnum): untyped = 270


type QVideoFramePaintOptionsPaintFlagEnum* = distinct cint
template DontDrawSubtitles*(_: type QVideoFramePaintOptionsPaintFlagEnum): untyped = 1


import ./gen_qvideoframe_types
export gen_qvideoframe_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qimage_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qvideoframeformat_types
export
  gen_qrect_types,
  gen_qsize_types,
  gen_qimage_types,
  gen_qpainter_types,
  gen_qvideoframeformat_types

type cQVideoFrame*{.exportc: "QVideoFrame", incompleteStruct.} = object
type cQVideoFramePaintOptions*{.exportc: "QVideoFrame__PaintOptions", incompleteStruct.} = object

proc fcQVideoFrame_swap(self: pointer, other: pointer): void {.importc: "QVideoFrame_swap".}
proc fcQVideoFrame_operatorAssign(self: pointer, other: pointer): void {.importc: "QVideoFrame_operatorAssign".}
proc fcQVideoFrame_operatorEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorEqual".}
proc fcQVideoFrame_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QVideoFrame_operatorNotEqual".}
proc fcQVideoFrame_isValid(self: pointer): bool {.importc: "QVideoFrame_isValid".}
proc fcQVideoFrame_pixelFormat(self: pointer): cint {.importc: "QVideoFrame_pixelFormat".}
proc fcQVideoFrame_surfaceFormat(self: pointer): pointer {.importc: "QVideoFrame_surfaceFormat".}
proc fcQVideoFrame_handleType(self: pointer): cint {.importc: "QVideoFrame_handleType".}
proc fcQVideoFrame_size(self: pointer): pointer {.importc: "QVideoFrame_size".}
proc fcQVideoFrame_width(self: pointer): cint {.importc: "QVideoFrame_width".}
proc fcQVideoFrame_height(self: pointer): cint {.importc: "QVideoFrame_height".}
proc fcQVideoFrame_isMapped(self: pointer): bool {.importc: "QVideoFrame_isMapped".}
proc fcQVideoFrame_isReadable(self: pointer): bool {.importc: "QVideoFrame_isReadable".}
proc fcQVideoFrame_isWritable(self: pointer): bool {.importc: "QVideoFrame_isWritable".}
proc fcQVideoFrame_mapMode(self: pointer): cint {.importc: "QVideoFrame_mapMode".}
proc fcQVideoFrame_map(self: pointer, mode: cint): bool {.importc: "QVideoFrame_map".}
proc fcQVideoFrame_unmap(self: pointer): void {.importc: "QVideoFrame_unmap".}
proc fcQVideoFrame_bytesPerLine(self: pointer, plane: cint): cint {.importc: "QVideoFrame_bytesPerLine".}
proc fcQVideoFrame_bits(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bits".}
proc fcQVideoFrame_bitsWithPlane(self: pointer, plane: cint): ptr uint8 {.importc: "QVideoFrame_bitsWithPlane".}
proc fcQVideoFrame_mappedBytes(self: pointer, plane: cint): cint {.importc: "QVideoFrame_mappedBytes".}
proc fcQVideoFrame_planeCount(self: pointer): cint {.importc: "QVideoFrame_planeCount".}
proc fcQVideoFrame_startTime(self: pointer): clonglong {.importc: "QVideoFrame_startTime".}
proc fcQVideoFrame_setStartTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setStartTime".}
proc fcQVideoFrame_endTime(self: pointer): clonglong {.importc: "QVideoFrame_endTime".}
proc fcQVideoFrame_setEndTime(self: pointer, time: clonglong): void {.importc: "QVideoFrame_setEndTime".}
proc fcQVideoFrame_setRotationAngle(self: pointer, rotationAngle: cint): void {.importc: "QVideoFrame_setRotationAngle".}
proc fcQVideoFrame_rotationAngle(self: pointer): cint {.importc: "QVideoFrame_rotationAngle".}
proc fcQVideoFrame_setMirrored(self: pointer, mirrored: bool): void {.importc: "QVideoFrame_setMirrored".}
proc fcQVideoFrame_mirrored(self: pointer): bool {.importc: "QVideoFrame_mirrored".}
proc fcQVideoFrame_toImage(self: pointer): pointer {.importc: "QVideoFrame_toImage".}
proc fcQVideoFrame_subtitleText(self: pointer): struct_miqt_string {.importc: "QVideoFrame_subtitleText".}
proc fcQVideoFrame_setSubtitleText(self: pointer, text: struct_miqt_string): void {.importc: "QVideoFrame_setSubtitleText".}
proc fcQVideoFrame_paint(self: pointer, painter: pointer, rect: pointer, options: pointer): void {.importc: "QVideoFrame_paint".}
proc fcQVideoFrame_new(): ptr cQVideoFrame {.importc: "QVideoFrame_new".}
proc fcQVideoFrame_new2(format: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new2".}
proc fcQVideoFrame_new3(other: pointer): ptr cQVideoFrame {.importc: "QVideoFrame_new3".}

proc swap*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoFrame_swap(self.h, other.h)

proc operatorAssign*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoFrame_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qvideoframe_types.QVideoFrame, other: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_isValid(self.h)

proc pixelFormat*(self: gen_qvideoframe_types.QVideoFrame): cint =
  cint(fcQVideoFrame_pixelFormat(self.h))

proc surfaceFormat*(self: gen_qvideoframe_types.QVideoFrame): gen_qvideoframeformat_types.QVideoFrameFormat =
  gen_qvideoframeformat_types.QVideoFrameFormat(h: fcQVideoFrame_surfaceFormat(self.h), owned: true)

proc handleType*(self: gen_qvideoframe_types.QVideoFrame): cint =
  cint(fcQVideoFrame_handleType(self.h))

proc size*(self: gen_qvideoframe_types.QVideoFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoFrame_size(self.h), owned: true)

proc width*(self: gen_qvideoframe_types.QVideoFrame): cint =
  fcQVideoFrame_width(self.h)

proc height*(self: gen_qvideoframe_types.QVideoFrame): cint =
  fcQVideoFrame_height(self.h)

proc isMapped*(self: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_isMapped(self.h)

proc isReadable*(self: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_isReadable(self.h)

proc isWritable*(self: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_isWritable(self.h)

proc mapMode*(self: gen_qvideoframe_types.QVideoFrame): cint =
  cint(fcQVideoFrame_mapMode(self.h))

proc map*(self: gen_qvideoframe_types.QVideoFrame, mode: cint): bool =
  fcQVideoFrame_map(self.h, cint(mode))

proc unmap*(self: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoFrame_unmap(self.h)

proc bytesPerLine*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): cint =
  fcQVideoFrame_bytesPerLine(self.h, plane)

proc bits*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): ptr uint8 =
  fcQVideoFrame_bits(self.h, plane)

proc bits2*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): ptr uint8 =
  fcQVideoFrame_bitsWithPlane(self.h, plane)

proc mappedBytes*(self: gen_qvideoframe_types.QVideoFrame, plane: cint): cint =
  fcQVideoFrame_mappedBytes(self.h, plane)

proc planeCount*(self: gen_qvideoframe_types.QVideoFrame): cint =
  fcQVideoFrame_planeCount(self.h)

proc startTime*(self: gen_qvideoframe_types.QVideoFrame): clonglong =
  fcQVideoFrame_startTime(self.h)

proc setStartTime*(self: gen_qvideoframe_types.QVideoFrame, time: clonglong): void =
  fcQVideoFrame_setStartTime(self.h, time)

proc endTime*(self: gen_qvideoframe_types.QVideoFrame): clonglong =
  fcQVideoFrame_endTime(self.h)

proc setEndTime*(self: gen_qvideoframe_types.QVideoFrame, time: clonglong): void =
  fcQVideoFrame_setEndTime(self.h, time)

proc setRotationAngle*(self: gen_qvideoframe_types.QVideoFrame, rotationAngle: cint): void =
  fcQVideoFrame_setRotationAngle(self.h, cint(rotationAngle))

proc rotationAngle*(self: gen_qvideoframe_types.QVideoFrame): cint =
  cint(fcQVideoFrame_rotationAngle(self.h))

proc setMirrored*(self: gen_qvideoframe_types.QVideoFrame, mirrored: bool): void =
  fcQVideoFrame_setMirrored(self.h, mirrored)

proc mirrored*(self: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrame_mirrored(self.h)

proc toImage*(self: gen_qvideoframe_types.QVideoFrame): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQVideoFrame_toImage(self.h), owned: true)

proc subtitleText*(self: gen_qvideoframe_types.QVideoFrame): string =
  let v_ms = fcQVideoFrame_subtitleText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSubtitleText*(self: gen_qvideoframe_types.QVideoFrame, text: openArray[char]): void =
  fcQVideoFrame_setSubtitleText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc paint*(self: gen_qvideoframe_types.QVideoFrame, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, options: gen_qvideoframe_types.QVideoFramePaintOptions): void =
  fcQVideoFrame_paint(self.h, painter.h, rect.h, options.h)

proc create*(T: type gen_qvideoframe_types.QVideoFrame): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new(), owned: true)

proc create*(T: type gen_qvideoframe_types.QVideoFrame,
    format: gen_qvideoframeformat_types.QVideoFrameFormat): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new2(format.h), owned: true)

proc create*(T: type gen_qvideoframe_types.QVideoFrame,
    other: gen_qvideoframe_types.QVideoFrame): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFrame_new3(other.h), owned: true)

