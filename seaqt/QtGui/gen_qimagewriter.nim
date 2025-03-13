import ./Qt5Gui_libs

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


type QImageWriterImageWriterErrorEnum* = distinct cint
template UnknownError*(_: type QImageWriterImageWriterErrorEnum): untyped = 0
template DeviceError*(_: type QImageWriterImageWriterErrorEnum): untyped = 1
template UnsupportedFormatError*(_: type QImageWriterImageWriterErrorEnum): untyped = 2
template InvalidImageError*(_: type QImageWriterImageWriterErrorEnum): untyped = 3


import ./gen_qimagewriter_types
export gen_qimagewriter_types

import
  ../QtCore/gen_qiodevice_types,
  ./gen_qimage_types
export
  gen_qiodevice_types,
  gen_qimage_types

type cQImageWriter*{.exportc: "QImageWriter", incompleteStruct.} = object

proc fcQImageWriter_tr(sourceText: cstring): struct_miqt_string {.importc: "QImageWriter_tr".}
proc fcQImageWriter_trUtf8(sourceText: cstring): struct_miqt_string {.importc: "QImageWriter_trUtf8".}
proc fcQImageWriter_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QImageWriter_setFormat".}
proc fcQImageWriter_format(self: pointer): struct_miqt_string {.importc: "QImageWriter_format".}
proc fcQImageWriter_setDevice(self: pointer, device: pointer): void {.importc: "QImageWriter_setDevice".}
proc fcQImageWriter_device(self: pointer): pointer {.importc: "QImageWriter_device".}
proc fcQImageWriter_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QImageWriter_setFileName".}
proc fcQImageWriter_fileName(self: pointer): struct_miqt_string {.importc: "QImageWriter_fileName".}
proc fcQImageWriter_setQuality(self: pointer, quality: cint): void {.importc: "QImageWriter_setQuality".}
proc fcQImageWriter_quality(self: pointer): cint {.importc: "QImageWriter_quality".}
proc fcQImageWriter_setCompression(self: pointer, compression: cint): void {.importc: "QImageWriter_setCompression".}
proc fcQImageWriter_compression(self: pointer): cint {.importc: "QImageWriter_compression".}
proc fcQImageWriter_setGamma(self: pointer, gamma: float32): void {.importc: "QImageWriter_setGamma".}
proc fcQImageWriter_gamma(self: pointer): float32 {.importc: "QImageWriter_gamma".}
proc fcQImageWriter_setSubType(self: pointer, typeVal: struct_miqt_string): void {.importc: "QImageWriter_setSubType".}
proc fcQImageWriter_subType(self: pointer): struct_miqt_string {.importc: "QImageWriter_subType".}
proc fcQImageWriter_supportedSubTypes(self: pointer): struct_miqt_array {.importc: "QImageWriter_supportedSubTypes".}
proc fcQImageWriter_setOptimizedWrite(self: pointer, optimize: bool): void {.importc: "QImageWriter_setOptimizedWrite".}
proc fcQImageWriter_optimizedWrite(self: pointer): bool {.importc: "QImageWriter_optimizedWrite".}
proc fcQImageWriter_setProgressiveScanWrite(self: pointer, progressive: bool): void {.importc: "QImageWriter_setProgressiveScanWrite".}
proc fcQImageWriter_progressiveScanWrite(self: pointer): bool {.importc: "QImageWriter_progressiveScanWrite".}
proc fcQImageWriter_transformation(self: pointer): cint {.importc: "QImageWriter_transformation".}
proc fcQImageWriter_setTransformation(self: pointer, orientation: cint): void {.importc: "QImageWriter_setTransformation".}
proc fcQImageWriter_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QImageWriter_setDescription".}
proc fcQImageWriter_description(self: pointer): struct_miqt_string {.importc: "QImageWriter_description".}
proc fcQImageWriter_setText(self: pointer, key: struct_miqt_string, text: struct_miqt_string): void {.importc: "QImageWriter_setText".}
proc fcQImageWriter_canWrite(self: pointer): bool {.importc: "QImageWriter_canWrite".}
proc fcQImageWriter_write(self: pointer, image: pointer): bool {.importc: "QImageWriter_write".}
proc fcQImageWriter_error(self: pointer): cint {.importc: "QImageWriter_error".}
proc fcQImageWriter_errorString(self: pointer): struct_miqt_string {.importc: "QImageWriter_errorString".}
proc fcQImageWriter_supportsOption(self: pointer, option: cint): bool {.importc: "QImageWriter_supportsOption".}
proc fcQImageWriter_supportedImageFormats(): struct_miqt_array {.importc: "QImageWriter_supportedImageFormats".}
proc fcQImageWriter_supportedMimeTypes(): struct_miqt_array {.importc: "QImageWriter_supportedMimeTypes".}
proc fcQImageWriter_imageFormatsForMimeType(mimeType: struct_miqt_string): struct_miqt_array {.importc: "QImageWriter_imageFormatsForMimeType".}
proc fcQImageWriter_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QImageWriter_tr2".}
proc fcQImageWriter_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QImageWriter_tr3".}
proc fcQImageWriter_trUtf82(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QImageWriter_trUtf82".}
proc fcQImageWriter_trUtf83(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QImageWriter_trUtf83".}
proc fcQImageWriter_new(): ptr cQImageWriter {.importc: "QImageWriter_new".}
proc fcQImageWriter_new2(device: pointer, format: struct_miqt_string): ptr cQImageWriter {.importc: "QImageWriter_new2".}
proc fcQImageWriter_new3(fileName: struct_miqt_string): ptr cQImageWriter {.importc: "QImageWriter_new3".}
proc fcQImageWriter_new4(fileName: struct_miqt_string, format: struct_miqt_string): ptr cQImageWriter {.importc: "QImageWriter_new4".}

proc tr*(_: type gen_qimagewriter_types.QImageWriter, sourceText: cstring): string =
  let v_ms = fcQImageWriter_tr(sourceText)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimagewriter_types.QImageWriter, sourceText: cstring): string =
  let v_ms = fcQImageWriter_trUtf8(sourceText)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: gen_qimagewriter_types.QImageWriter, format: openArray[byte]): void =
  fcQImageWriter_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qimagewriter_types.QImageWriter): seq[byte] =
  var v_bytearray = fcQImageWriter_format(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setDevice*(self: gen_qimagewriter_types.QImageWriter, device: gen_qiodevice_types.QIODevice): void =
  fcQImageWriter_setDevice(self.h, device.h)

proc device*(self: gen_qimagewriter_types.QImageWriter): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQImageWriter_device(self.h), owned: false)

proc setFileName*(self: gen_qimagewriter_types.QImageWriter, fileName: openArray[char]): void =
  fcQImageWriter_setFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc fileName*(self: gen_qimagewriter_types.QImageWriter): string =
  let v_ms = fcQImageWriter_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setQuality*(self: gen_qimagewriter_types.QImageWriter, quality: cint): void =
  fcQImageWriter_setQuality(self.h, quality)

proc quality*(self: gen_qimagewriter_types.QImageWriter): cint =
  fcQImageWriter_quality(self.h)

proc setCompression*(self: gen_qimagewriter_types.QImageWriter, compression: cint): void =
  fcQImageWriter_setCompression(self.h, compression)

proc compression*(self: gen_qimagewriter_types.QImageWriter): cint =
  fcQImageWriter_compression(self.h)

proc setGamma*(self: gen_qimagewriter_types.QImageWriter, gamma: float32): void =
  fcQImageWriter_setGamma(self.h, gamma)

proc gamma*(self: gen_qimagewriter_types.QImageWriter): float32 =
  fcQImageWriter_gamma(self.h)

proc setSubType*(self: gen_qimagewriter_types.QImageWriter, typeVal: openArray[byte]): void =
  fcQImageWriter_setSubType(self.h, struct_miqt_string(data: cast[cstring](if len(typeVal) == 0: nil else: unsafeAddr typeVal[0]), len: csize_t(len(typeVal))))

proc subType*(self: gen_qimagewriter_types.QImageWriter): seq[byte] =
  var v_bytearray = fcQImageWriter_subType(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc supportedSubTypes*(self: gen_qimagewriter_types.QImageWriter): seq[seq[byte]] =
  var v_ma = fcQImageWriter_supportedSubTypes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setOptimizedWrite*(self: gen_qimagewriter_types.QImageWriter, optimize: bool): void =
  fcQImageWriter_setOptimizedWrite(self.h, optimize)

proc optimizedWrite*(self: gen_qimagewriter_types.QImageWriter): bool =
  fcQImageWriter_optimizedWrite(self.h)

proc setProgressiveScanWrite*(self: gen_qimagewriter_types.QImageWriter, progressive: bool): void =
  fcQImageWriter_setProgressiveScanWrite(self.h, progressive)

proc progressiveScanWrite*(self: gen_qimagewriter_types.QImageWriter): bool =
  fcQImageWriter_progressiveScanWrite(self.h)

proc transformation*(self: gen_qimagewriter_types.QImageWriter): cint =
  cint(fcQImageWriter_transformation(self.h))

proc setTransformation*(self: gen_qimagewriter_types.QImageWriter, orientation: cint): void =
  fcQImageWriter_setTransformation(self.h, cint(orientation))

proc setDescription*(self: gen_qimagewriter_types.QImageWriter, description: openArray[char]): void =
  fcQImageWriter_setDescription(self.h, struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc description*(self: gen_qimagewriter_types.QImageWriter): string =
  let v_ms = fcQImageWriter_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qimagewriter_types.QImageWriter, key: openArray[char], text: openArray[char]): void =
  fcQImageWriter_setText(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc canWrite*(self: gen_qimagewriter_types.QImageWriter): bool =
  fcQImageWriter_canWrite(self.h)

proc write*(self: gen_qimagewriter_types.QImageWriter, image: gen_qimage_types.QImage): bool =
  fcQImageWriter_write(self.h, image.h)

proc error*(self: gen_qimagewriter_types.QImageWriter): cint =
  cint(fcQImageWriter_error(self.h))

proc errorString*(self: gen_qimagewriter_types.QImageWriter): string =
  let v_ms = fcQImageWriter_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supportsOption*(self: gen_qimagewriter_types.QImageWriter, option: cint): bool =
  fcQImageWriter_supportsOption(self.h, cint(option))

proc supportedImageFormats*(_: type gen_qimagewriter_types.QImageWriter): seq[seq[byte]] =
  var v_ma = fcQImageWriter_supportedImageFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc supportedMimeTypes*(_: type gen_qimagewriter_types.QImageWriter): seq[seq[byte]] =
  var v_ma = fcQImageWriter_supportedMimeTypes()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc imageFormatsForMimeType*(_: type gen_qimagewriter_types.QImageWriter, mimeType: openArray[byte]): seq[seq[byte]] =
  var v_ma = fcQImageWriter_imageFormatsForMimeType(struct_miqt_string(data: cast[cstring](if len(mimeType) == 0: nil else: unsafeAddr mimeType[0]), len: csize_t(len(mimeType))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qimagewriter_types.QImageWriter, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQImageWriter_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qimagewriter_types.QImageWriter, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQImageWriter_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimagewriter_types.QImageWriter, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQImageWriter_trUtf82(sourceText, disambiguation)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimagewriter_types.QImageWriter, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQImageWriter_trUtf83(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qimagewriter_types.QImageWriter): gen_qimagewriter_types.QImageWriter =
  gen_qimagewriter_types.QImageWriter(h: fcQImageWriter_new(), owned: true)

proc create*(T: type gen_qimagewriter_types.QImageWriter,
    device: gen_qiodevice_types.QIODevice, format: openArray[byte]): gen_qimagewriter_types.QImageWriter =
  gen_qimagewriter_types.QImageWriter(h: fcQImageWriter_new2(device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: true)

proc create*(T: type gen_qimagewriter_types.QImageWriter,
    fileName: openArray[char]): gen_qimagewriter_types.QImageWriter =
  gen_qimagewriter_types.QImageWriter(h: fcQImageWriter_new3(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qimagewriter_types.QImageWriter,
    fileName: openArray[char], format: openArray[byte]): gen_qimagewriter_types.QImageWriter =
  gen_qimagewriter_types.QImageWriter(h: fcQImageWriter_new4(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: true)

