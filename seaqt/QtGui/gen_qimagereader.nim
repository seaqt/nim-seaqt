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
{.compile("gen_qimagereader.cpp", cflags).}


type QImageReaderImageReaderErrorEnum* = distinct cint
template UnknownError*(_: type QImageReaderImageReaderErrorEnum): untyped = 0
template FileNotFoundError*(_: type QImageReaderImageReaderErrorEnum): untyped = 1
template DeviceError*(_: type QImageReaderImageReaderErrorEnum): untyped = 2
template UnsupportedFormatError*(_: type QImageReaderImageReaderErrorEnum): untyped = 3
template InvalidDataError*(_: type QImageReaderImageReaderErrorEnum): untyped = 4


import ./gen_qimagereader_types
export gen_qimagereader_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qcolor_types,
  ./gen_qimage_types
export
  gen_qiodevice_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qcolor_types,
  gen_qimage_types

type cQImageReader*{.exportc: "QImageReader", incompleteStruct.} = object

proc fcQImageReader_new(): ptr cQImageReader {.importc: "QImageReader_new".}
proc fcQImageReader_new2(device: pointer): ptr cQImageReader {.importc: "QImageReader_new2".}
proc fcQImageReader_new3(fileName: struct_miqt_string): ptr cQImageReader {.importc: "QImageReader_new3".}
proc fcQImageReader_new4(device: pointer, format: struct_miqt_string): ptr cQImageReader {.importc: "QImageReader_new4".}
proc fcQImageReader_new5(fileName: struct_miqt_string, format: struct_miqt_string): ptr cQImageReader {.importc: "QImageReader_new5".}
proc fcQImageReader_tr(sourceText: cstring): struct_miqt_string {.importc: "QImageReader_tr".}
proc fcQImageReader_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageReader_setFormat".}
proc fcQImageReader_format(self: pointer, ): struct_miqt_string {.importc: "QImageReader_format".}
proc fcQImageReader_setAutoDetectImageFormat(self: pointer, enabled: bool): void {.importc: "QImageReader_setAutoDetectImageFormat".}
proc fcQImageReader_autoDetectImageFormat(self: pointer, ): bool {.importc: "QImageReader_autoDetectImageFormat".}
proc fcQImageReader_setDecideFormatFromContent(self: pointer, ignored: bool): void {.importc: "QImageReader_setDecideFormatFromContent".}
proc fcQImageReader_decideFormatFromContent(self: pointer, ): bool {.importc: "QImageReader_decideFormatFromContent".}
proc fcQImageReader_setDevice(self: pointer, device: pointer): void {.importc: "QImageReader_setDevice".}
proc fcQImageReader_device(self: pointer, ): pointer {.importc: "QImageReader_device".}
proc fcQImageReader_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QImageReader_setFileName".}
proc fcQImageReader_fileName(self: pointer, ): struct_miqt_string {.importc: "QImageReader_fileName".}
proc fcQImageReader_size(self: pointer, ): pointer {.importc: "QImageReader_size".}
proc fcQImageReader_imageFormat(self: pointer, ): cint {.importc: "QImageReader_imageFormat".}
proc fcQImageReader_textKeys(self: pointer, ): struct_miqt_array {.importc: "QImageReader_textKeys".}
proc fcQImageReader_text(self: pointer, key: struct_miqt_string): struct_miqt_string {.importc: "QImageReader_text".}
proc fcQImageReader_setClipRect(self: pointer, rect: pointer): void {.importc: "QImageReader_setClipRect".}
proc fcQImageReader_clipRect(self: pointer, ): pointer {.importc: "QImageReader_clipRect".}
proc fcQImageReader_setScaledSize(self: pointer, size: pointer): void {.importc: "QImageReader_setScaledSize".}
proc fcQImageReader_scaledSize(self: pointer, ): pointer {.importc: "QImageReader_scaledSize".}
proc fcQImageReader_setQuality(self: pointer, quality: cint): void {.importc: "QImageReader_setQuality".}
proc fcQImageReader_quality(self: pointer, ): cint {.importc: "QImageReader_quality".}
proc fcQImageReader_setScaledClipRect(self: pointer, rect: pointer): void {.importc: "QImageReader_setScaledClipRect".}
proc fcQImageReader_scaledClipRect(self: pointer, ): pointer {.importc: "QImageReader_scaledClipRect".}
proc fcQImageReader_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QImageReader_setBackgroundColor".}
proc fcQImageReader_backgroundColor(self: pointer, ): pointer {.importc: "QImageReader_backgroundColor".}
proc fcQImageReader_supportsAnimation(self: pointer, ): bool {.importc: "QImageReader_supportsAnimation".}
proc fcQImageReader_transformation(self: pointer, ): cint {.importc: "QImageReader_transformation".}
proc fcQImageReader_setAutoTransform(self: pointer, enabled: bool): void {.importc: "QImageReader_setAutoTransform".}
proc fcQImageReader_autoTransform(self: pointer, ): bool {.importc: "QImageReader_autoTransform".}
proc fcQImageReader_subType(self: pointer, ): struct_miqt_string {.importc: "QImageReader_subType".}
proc fcQImageReader_supportedSubTypes(self: pointer, ): struct_miqt_array {.importc: "QImageReader_supportedSubTypes".}
proc fcQImageReader_canRead(self: pointer, ): bool {.importc: "QImageReader_canRead".}
proc fcQImageReader_read(self: pointer, ): pointer {.importc: "QImageReader_read".}
proc fcQImageReader_readWithImage(self: pointer, image: pointer): bool {.importc: "QImageReader_readWithImage".}
proc fcQImageReader_jumpToNextImage(self: pointer, ): bool {.importc: "QImageReader_jumpToNextImage".}
proc fcQImageReader_jumpToImage(self: pointer, imageNumber: cint): bool {.importc: "QImageReader_jumpToImage".}
proc fcQImageReader_loopCount(self: pointer, ): cint {.importc: "QImageReader_loopCount".}
proc fcQImageReader_imageCount(self: pointer, ): cint {.importc: "QImageReader_imageCount".}
proc fcQImageReader_nextImageDelay(self: pointer, ): cint {.importc: "QImageReader_nextImageDelay".}
proc fcQImageReader_currentImageNumber(self: pointer, ): cint {.importc: "QImageReader_currentImageNumber".}
proc fcQImageReader_currentImageRect(self: pointer, ): pointer {.importc: "QImageReader_currentImageRect".}
proc fcQImageReader_error(self: pointer, ): cint {.importc: "QImageReader_error".}
proc fcQImageReader_errorString(self: pointer, ): struct_miqt_string {.importc: "QImageReader_errorString".}
proc fcQImageReader_supportsOption(self: pointer, option: cint): bool {.importc: "QImageReader_supportsOption".}
proc fcQImageReader_imageFormatWithFileName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QImageReader_imageFormatWithFileName".}
proc fcQImageReader_imageFormatWithDevice(device: pointer): struct_miqt_string {.importc: "QImageReader_imageFormatWithDevice".}
proc fcQImageReader_supportedImageFormats(): struct_miqt_array {.importc: "QImageReader_supportedImageFormats".}
proc fcQImageReader_supportedMimeTypes(): struct_miqt_array {.importc: "QImageReader_supportedMimeTypes".}
proc fcQImageReader_imageFormatsForMimeType(mimeType: struct_miqt_string): struct_miqt_array {.importc: "QImageReader_imageFormatsForMimeType".}
proc fcQImageReader_allocationLimit(): cint {.importc: "QImageReader_allocationLimit".}
proc fcQImageReader_setAllocationLimit(mbLimit: cint): void {.importc: "QImageReader_setAllocationLimit".}
proc fcQImageReader_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QImageReader_tr2".}
proc fcQImageReader_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QImageReader_tr3".}
proc fcQImageReader_delete(self: pointer) {.importc: "QImageReader_delete".}


func init*(T: type gen_qimagereader_types.QImageReader, h: ptr cQImageReader): gen_qimagereader_types.QImageReader =
  T(h: h)
proc create*(T: type gen_qimagereader_types.QImageReader, ): gen_qimagereader_types.QImageReader =
  gen_qimagereader_types.QImageReader.init(fcQImageReader_new())

proc create*(T: type gen_qimagereader_types.QImageReader, device: gen_qiodevice_types.QIODevice): gen_qimagereader_types.QImageReader =
  gen_qimagereader_types.QImageReader.init(fcQImageReader_new2(device.h))

proc create*(T: type gen_qimagereader_types.QImageReader, fileName: string): gen_qimagereader_types.QImageReader =
  gen_qimagereader_types.QImageReader.init(fcQImageReader_new3(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qimagereader_types.QImageReader, device: gen_qiodevice_types.QIODevice, format: seq[byte]): gen_qimagereader_types.QImageReader =
  gen_qimagereader_types.QImageReader.init(fcQImageReader_new4(device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc create*(T: type gen_qimagereader_types.QImageReader, fileName: string, format: seq[byte]): gen_qimagereader_types.QImageReader =
  gen_qimagereader_types.QImageReader.init(fcQImageReader_new5(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc tr*(_: type gen_qimagereader_types.QImageReader, sourceText: cstring): string =
  let v_ms = fcQImageReader_tr(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: gen_qimagereader_types.QImageReader, format: seq[byte]): void =
  fcQImageReader_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qimagereader_types.QImageReader, ): seq[byte] =
  var v_bytearray = fcQImageReader_format(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setAutoDetectImageFormat*(self: gen_qimagereader_types.QImageReader, enabled: bool): void =
  fcQImageReader_setAutoDetectImageFormat(self.h, enabled)

proc autoDetectImageFormat*(self: gen_qimagereader_types.QImageReader, ): bool =
  fcQImageReader_autoDetectImageFormat(self.h)

proc setDecideFormatFromContent*(self: gen_qimagereader_types.QImageReader, ignored: bool): void =
  fcQImageReader_setDecideFormatFromContent(self.h, ignored)

proc decideFormatFromContent*(self: gen_qimagereader_types.QImageReader, ): bool =
  fcQImageReader_decideFormatFromContent(self.h)

proc setDevice*(self: gen_qimagereader_types.QImageReader, device: gen_qiodevice_types.QIODevice): void =
  fcQImageReader_setDevice(self.h, device.h)

proc device*(self: gen_qimagereader_types.QImageReader, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQImageReader_device(self.h))

proc setFileName*(self: gen_qimagereader_types.QImageReader, fileName: string): void =
  fcQImageReader_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: gen_qimagereader_types.QImageReader, ): string =
  let v_ms = fcQImageReader_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc size*(self: gen_qimagereader_types.QImageReader, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQImageReader_size(self.h))

proc imageFormat*(self: gen_qimagereader_types.QImageReader, ): cint =
  cint(fcQImageReader_imageFormat(self.h))

proc textKeys*(self: gen_qimagereader_types.QImageReader, ): seq[string] =
  var v_ma = fcQImageReader_textKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc text*(self: gen_qimagereader_types.QImageReader, key: string): string =
  let v_ms = fcQImageReader_text(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setClipRect*(self: gen_qimagereader_types.QImageReader, rect: gen_qrect_types.QRect): void =
  fcQImageReader_setClipRect(self.h, rect.h)

proc clipRect*(self: gen_qimagereader_types.QImageReader, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageReader_clipRect(self.h))

proc setScaledSize*(self: gen_qimagereader_types.QImageReader, size: gen_qsize_types.QSize): void =
  fcQImageReader_setScaledSize(self.h, size.h)

proc scaledSize*(self: gen_qimagereader_types.QImageReader, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQImageReader_scaledSize(self.h))

proc setQuality*(self: gen_qimagereader_types.QImageReader, quality: cint): void =
  fcQImageReader_setQuality(self.h, quality)

proc quality*(self: gen_qimagereader_types.QImageReader, ): cint =
  fcQImageReader_quality(self.h)

proc setScaledClipRect*(self: gen_qimagereader_types.QImageReader, rect: gen_qrect_types.QRect): void =
  fcQImageReader_setScaledClipRect(self.h, rect.h)

proc scaledClipRect*(self: gen_qimagereader_types.QImageReader, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageReader_scaledClipRect(self.h))

proc setBackgroundColor*(self: gen_qimagereader_types.QImageReader, color: gen_qcolor_types.QColor): void =
  fcQImageReader_setBackgroundColor(self.h, color.h)

proc backgroundColor*(self: gen_qimagereader_types.QImageReader, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQImageReader_backgroundColor(self.h))

proc supportsAnimation*(self: gen_qimagereader_types.QImageReader, ): bool =
  fcQImageReader_supportsAnimation(self.h)

proc transformation*(self: gen_qimagereader_types.QImageReader, ): cint =
  cint(fcQImageReader_transformation(self.h))

proc setAutoTransform*(self: gen_qimagereader_types.QImageReader, enabled: bool): void =
  fcQImageReader_setAutoTransform(self.h, enabled)

proc autoTransform*(self: gen_qimagereader_types.QImageReader, ): bool =
  fcQImageReader_autoTransform(self.h)

proc subType*(self: gen_qimagereader_types.QImageReader, ): seq[byte] =
  var v_bytearray = fcQImageReader_subType(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc supportedSubTypes*(self: gen_qimagereader_types.QImageReader, ): seq[seq[byte]] =
  var v_ma = fcQImageReader_supportedSubTypes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc canRead*(self: gen_qimagereader_types.QImageReader, ): bool =
  fcQImageReader_canRead(self.h)

proc read*(self: gen_qimagereader_types.QImageReader, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQImageReader_read(self.h))

proc read*(self: gen_qimagereader_types.QImageReader, image: gen_qimage_types.QImage): bool =
  fcQImageReader_readWithImage(self.h, image.h)

proc jumpToNextImage*(self: gen_qimagereader_types.QImageReader, ): bool =
  fcQImageReader_jumpToNextImage(self.h)

proc jumpToImage*(self: gen_qimagereader_types.QImageReader, imageNumber: cint): bool =
  fcQImageReader_jumpToImage(self.h, imageNumber)

proc loopCount*(self: gen_qimagereader_types.QImageReader, ): cint =
  fcQImageReader_loopCount(self.h)

proc imageCount*(self: gen_qimagereader_types.QImageReader, ): cint =
  fcQImageReader_imageCount(self.h)

proc nextImageDelay*(self: gen_qimagereader_types.QImageReader, ): cint =
  fcQImageReader_nextImageDelay(self.h)

proc currentImageNumber*(self: gen_qimagereader_types.QImageReader, ): cint =
  fcQImageReader_currentImageNumber(self.h)

proc currentImageRect*(self: gen_qimagereader_types.QImageReader, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQImageReader_currentImageRect(self.h))

proc error*(self: gen_qimagereader_types.QImageReader, ): cint =
  cint(fcQImageReader_error(self.h))

proc errorString*(self: gen_qimagereader_types.QImageReader, ): string =
  let v_ms = fcQImageReader_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportsOption*(self: gen_qimagereader_types.QImageReader, option: cint): bool =
  fcQImageReader_supportsOption(self.h, cint(option))

proc imageFormat*(_: type gen_qimagereader_types.QImageReader, fileName: string): seq[byte] =
  var v_bytearray = fcQImageReader_imageFormatWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc imageFormat*(_: type gen_qimagereader_types.QImageReader, device: gen_qiodevice_types.QIODevice): seq[byte] =
  var v_bytearray = fcQImageReader_imageFormatWithDevice(device.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc supportedImageFormats*(_: type gen_qimagereader_types.QImageReader, ): seq[seq[byte]] =
  var v_ma = fcQImageReader_supportedImageFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedMimeTypes*(_: type gen_qimagereader_types.QImageReader, ): seq[seq[byte]] =
  var v_ma = fcQImageReader_supportedMimeTypes()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageFormatsForMimeType*(_: type gen_qimagereader_types.QImageReader, mimeType: seq[byte]): seq[seq[byte]] =
  var v_ma = fcQImageReader_imageFormatsForMimeType(struct_miqt_string(data: cast[cstring](if len(mimeType) == 0: nil else: unsafeAddr mimeType[0]), len: csize_t(len(mimeType))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc allocationLimit*(_: type gen_qimagereader_types.QImageReader, ): cint =
  fcQImageReader_allocationLimit()

proc setAllocationLimit*(_: type gen_qimagereader_types.QImageReader, mbLimit: cint): void =
  fcQImageReader_setAllocationLimit(mbLimit)

proc tr*(_: type gen_qimagereader_types.QImageReader, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQImageReader_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qimagereader_types.QImageReader, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQImageReader_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qimagereader_types.QImageReader) =
  fcQImageReader_delete(self.h)
