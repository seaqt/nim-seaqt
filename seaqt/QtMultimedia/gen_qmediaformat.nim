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


type QMediaFormatFileFormatEnum* = distinct cint
template UnspecifiedFormat*(_: type QMediaFormatFileFormatEnum): untyped = -1
template WMV*(_: type QMediaFormatFileFormatEnum): untyped = 0
template AVI*(_: type QMediaFormatFileFormatEnum): untyped = 1
template Matroska*(_: type QMediaFormatFileFormatEnum): untyped = 2
template MPEG4*(_: type QMediaFormatFileFormatEnum): untyped = 3
template Ogg*(_: type QMediaFormatFileFormatEnum): untyped = 4
template QuickTime*(_: type QMediaFormatFileFormatEnum): untyped = 5
template WebM*(_: type QMediaFormatFileFormatEnum): untyped = 6
template Mpeg4Audio*(_: type QMediaFormatFileFormatEnum): untyped = 7
template AAC*(_: type QMediaFormatFileFormatEnum): untyped = 8
template WMA*(_: type QMediaFormatFileFormatEnum): untyped = 9
template MP3*(_: type QMediaFormatFileFormatEnum): untyped = 10
template FLAC*(_: type QMediaFormatFileFormatEnum): untyped = 11
template Wave*(_: type QMediaFormatFileFormatEnum): untyped = 12
template LastFileFormat*(_: type QMediaFormatFileFormatEnum): untyped = 12


type QMediaFormatAudioCodecEnum* = distinct cint
template Unspecified*(_: type QMediaFormatAudioCodecEnum): untyped = -1
template MP3*(_: type QMediaFormatAudioCodecEnum): untyped = 0
template AAC*(_: type QMediaFormatAudioCodecEnum): untyped = 1
template AC3*(_: type QMediaFormatAudioCodecEnum): untyped = 2
template EAC3*(_: type QMediaFormatAudioCodecEnum): untyped = 3
template FLAC*(_: type QMediaFormatAudioCodecEnum): untyped = 4
template DolbyTrueHD*(_: type QMediaFormatAudioCodecEnum): untyped = 5
template Opus*(_: type QMediaFormatAudioCodecEnum): untyped = 6
template Vorbis*(_: type QMediaFormatAudioCodecEnum): untyped = 7
template Wave*(_: type QMediaFormatAudioCodecEnum): untyped = 8
template WMA*(_: type QMediaFormatAudioCodecEnum): untyped = 9
template ALAC*(_: type QMediaFormatAudioCodecEnum): untyped = 10
template LastAudioCodec*(_: type QMediaFormatAudioCodecEnum): untyped = 10


type QMediaFormatVideoCodecEnum* = distinct cint
template Unspecified*(_: type QMediaFormatVideoCodecEnum): untyped = -1
template MPEG1*(_: type QMediaFormatVideoCodecEnum): untyped = 0
template MPEG2*(_: type QMediaFormatVideoCodecEnum): untyped = 1
template MPEG4*(_: type QMediaFormatVideoCodecEnum): untyped = 2
template H264*(_: type QMediaFormatVideoCodecEnum): untyped = 3
template H265*(_: type QMediaFormatVideoCodecEnum): untyped = 4
template VP8*(_: type QMediaFormatVideoCodecEnum): untyped = 5
template VP9*(_: type QMediaFormatVideoCodecEnum): untyped = 6
template AV1*(_: type QMediaFormatVideoCodecEnum): untyped = 7
template Theora*(_: type QMediaFormatVideoCodecEnum): untyped = 8
template WMV*(_: type QMediaFormatVideoCodecEnum): untyped = 9
template MotionJPEG*(_: type QMediaFormatVideoCodecEnum): untyped = 10
template LastVideoCodec*(_: type QMediaFormatVideoCodecEnum): untyped = 10


type QMediaFormatConversionModeEnum* = distinct cint
template Encode*(_: type QMediaFormatConversionModeEnum): untyped = 0
template Decode*(_: type QMediaFormatConversionModeEnum): untyped = 1


type QMediaFormatResolveFlagsEnum* = distinct cint
template NoFlags*(_: type QMediaFormatResolveFlagsEnum): untyped = 0
template RequiresVideo*(_: type QMediaFormatResolveFlagsEnum): untyped = 1


import ./gen_qmediaformat_types
export gen_qmediaformat_types

import
  ../QtCore/gen_qmimetype_types,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmimetype_types,
  gen_qobjectdefs_types

type cQMediaFormat*{.exportc: "QMediaFormat", incompleteStruct.} = object

proc fcQMediaFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QMediaFormat_operatorAssign".}
proc fcQMediaFormat_swap(self: pointer, other: pointer): void {.importc: "QMediaFormat_swap".}
proc fcQMediaFormat_fileFormat(self: pointer, ): cint {.importc: "QMediaFormat_fileFormat".}
proc fcQMediaFormat_setFileFormat(self: pointer, f: cint): void {.importc: "QMediaFormat_setFileFormat".}
proc fcQMediaFormat_setVideoCodec(self: pointer, codec: cint): void {.importc: "QMediaFormat_setVideoCodec".}
proc fcQMediaFormat_videoCodec(self: pointer, ): cint {.importc: "QMediaFormat_videoCodec".}
proc fcQMediaFormat_setAudioCodec(self: pointer, codec: cint): void {.importc: "QMediaFormat_setAudioCodec".}
proc fcQMediaFormat_audioCodec(self: pointer, ): cint {.importc: "QMediaFormat_audioCodec".}
proc fcQMediaFormat_isSupported(self: pointer, mode: cint): bool {.importc: "QMediaFormat_isSupported".}
proc fcQMediaFormat_mimeType(self: pointer, ): pointer {.importc: "QMediaFormat_mimeType".}
proc fcQMediaFormat_supportedFileFormats(self: pointer, m: cint): struct_miqt_array {.importc: "QMediaFormat_supportedFileFormats".}
proc fcQMediaFormat_supportedVideoCodecs(self: pointer, m: cint): struct_miqt_array {.importc: "QMediaFormat_supportedVideoCodecs".}
proc fcQMediaFormat_supportedAudioCodecs(self: pointer, m: cint): struct_miqt_array {.importc: "QMediaFormat_supportedAudioCodecs".}
proc fcQMediaFormat_fileFormatName(fileFormat: cint): struct_miqt_string {.importc: "QMediaFormat_fileFormatName".}
proc fcQMediaFormat_audioCodecName(codec: cint): struct_miqt_string {.importc: "QMediaFormat_audioCodecName".}
proc fcQMediaFormat_videoCodecName(codec: cint): struct_miqt_string {.importc: "QMediaFormat_videoCodecName".}
proc fcQMediaFormat_fileFormatDescription(fileFormat: cint): struct_miqt_string {.importc: "QMediaFormat_fileFormatDescription".}
proc fcQMediaFormat_audioCodecDescription(codec: cint): struct_miqt_string {.importc: "QMediaFormat_audioCodecDescription".}
proc fcQMediaFormat_videoCodecDescription(codec: cint): struct_miqt_string {.importc: "QMediaFormat_videoCodecDescription".}
proc fcQMediaFormat_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMediaFormat_operatorEqual".}
proc fcQMediaFormat_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMediaFormat_operatorNotEqual".}
proc fcQMediaFormat_resolveForEncoding(self: pointer, flags: cint): void {.importc: "QMediaFormat_resolveForEncoding".}
proc fcQMediaFormat_new(): ptr cQMediaFormat {.importc: "QMediaFormat_new".}
proc fcQMediaFormat_new2(other: pointer): ptr cQMediaFormat {.importc: "QMediaFormat_new2".}
proc fcQMediaFormat_new3(format: cint): ptr cQMediaFormat {.importc: "QMediaFormat_new3".}
proc fcQMediaFormat_staticMetaObject(): pointer {.importc: "QMediaFormat_staticMetaObject".}

proc operatorAssign*(self: gen_qmediaformat_types.QMediaFormat, other: gen_qmediaformat_types.QMediaFormat): void =
  fcQMediaFormat_operatorAssign(self.h, other.h)

proc swap*(self: gen_qmediaformat_types.QMediaFormat, other: gen_qmediaformat_types.QMediaFormat): void =
  fcQMediaFormat_swap(self.h, other.h)

proc fileFormat*(self: gen_qmediaformat_types.QMediaFormat, ): cint =
  cint(fcQMediaFormat_fileFormat(self.h))

proc setFileFormat*(self: gen_qmediaformat_types.QMediaFormat, f: cint): void =
  fcQMediaFormat_setFileFormat(self.h, cint(f))

proc setVideoCodec*(self: gen_qmediaformat_types.QMediaFormat, codec: cint): void =
  fcQMediaFormat_setVideoCodec(self.h, cint(codec))

proc videoCodec*(self: gen_qmediaformat_types.QMediaFormat, ): cint =
  cint(fcQMediaFormat_videoCodec(self.h))

proc setAudioCodec*(self: gen_qmediaformat_types.QMediaFormat, codec: cint): void =
  fcQMediaFormat_setAudioCodec(self.h, cint(codec))

proc audioCodec*(self: gen_qmediaformat_types.QMediaFormat, ): cint =
  cint(fcQMediaFormat_audioCodec(self.h))

proc isSupported*(self: gen_qmediaformat_types.QMediaFormat, mode: cint): bool =
  fcQMediaFormat_isSupported(self.h, cint(mode))

proc mimeType*(self: gen_qmediaformat_types.QMediaFormat, ): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMediaFormat_mimeType(self.h), owned: true)

proc supportedFileFormats*(self: gen_qmediaformat_types.QMediaFormat, m: cint): seq[cint] =
  var v_ma = fcQMediaFormat_supportedFileFormats(self.h, cint(m))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc supportedVideoCodecs*(self: gen_qmediaformat_types.QMediaFormat, m: cint): seq[cint] =
  var v_ma = fcQMediaFormat_supportedVideoCodecs(self.h, cint(m))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc supportedAudioCodecs*(self: gen_qmediaformat_types.QMediaFormat, m: cint): seq[cint] =
  var v_ma = fcQMediaFormat_supportedAudioCodecs(self.h, cint(m))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc fileFormatName*(_: type gen_qmediaformat_types.QMediaFormat, fileFormat: cint): string =
  let v_ms = fcQMediaFormat_fileFormatName(cint(fileFormat))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioCodecName*(_: type gen_qmediaformat_types.QMediaFormat, codec: cint): string =
  let v_ms = fcQMediaFormat_audioCodecName(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoCodecName*(_: type gen_qmediaformat_types.QMediaFormat, codec: cint): string =
  let v_ms = fcQMediaFormat_videoCodecName(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileFormatDescription*(_: type gen_qmediaformat_types.QMediaFormat, fileFormat: cint): string =
  let v_ms = fcQMediaFormat_fileFormatDescription(cint(fileFormat))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioCodecDescription*(_: type gen_qmediaformat_types.QMediaFormat, codec: cint): string =
  let v_ms = fcQMediaFormat_audioCodecDescription(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoCodecDescription*(_: type gen_qmediaformat_types.QMediaFormat, codec: cint): string =
  let v_ms = fcQMediaFormat_videoCodecDescription(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: gen_qmediaformat_types.QMediaFormat, other: gen_qmediaformat_types.QMediaFormat): bool =
  fcQMediaFormat_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediaformat_types.QMediaFormat, other: gen_qmediaformat_types.QMediaFormat): bool =
  fcQMediaFormat_operatorNotEqual(self.h, other.h)

proc resolveForEncoding*(self: gen_qmediaformat_types.QMediaFormat, flags: cint): void =
  fcQMediaFormat_resolveForEncoding(self.h, cint(flags))

proc create*(T: type gen_qmediaformat_types.QMediaFormat): gen_qmediaformat_types.QMediaFormat =
  gen_qmediaformat_types.QMediaFormat(h: fcQMediaFormat_new(), owned: true)

proc create*(T: type gen_qmediaformat_types.QMediaFormat,
    other: gen_qmediaformat_types.QMediaFormat): gen_qmediaformat_types.QMediaFormat =
  gen_qmediaformat_types.QMediaFormat(h: fcQMediaFormat_new2(other.h), owned: true)

proc create*(T: type gen_qmediaformat_types.QMediaFormat,
    format: cint): gen_qmediaformat_types.QMediaFormat =
  gen_qmediaformat_types.QMediaFormat(h: fcQMediaFormat_new3(cint(format)), owned: true)

proc staticMetaObject*(_: type gen_qmediaformat_types.QMediaFormat): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaFormat_staticMetaObject())
