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


import ./gen_qmediaencodersettings_types
export gen_qmediaencodersettings_types

import
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qsize_types,
  gen_qvariant_types

type cQAudioEncoderSettings*{.exportc: "QAudioEncoderSettings", incompleteStruct.} = object
type cQVideoEncoderSettings*{.exportc: "QVideoEncoderSettings", incompleteStruct.} = object
type cQImageEncoderSettings*{.exportc: "QImageEncoderSettings", incompleteStruct.} = object

proc fcQAudioEncoderSettings_operatorAssign(self: pointer, other: pointer): void {.importc: "QAudioEncoderSettings_operatorAssign".}
proc fcQAudioEncoderSettings_operatorEqual(self: pointer, other: pointer): bool {.importc: "QAudioEncoderSettings_operatorEqual".}
proc fcQAudioEncoderSettings_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QAudioEncoderSettings_operatorNotEqual".}
proc fcQAudioEncoderSettings_isNull(self: pointer, ): bool {.importc: "QAudioEncoderSettings_isNull".}
proc fcQAudioEncoderSettings_encodingMode(self: pointer, ): cint {.importc: "QAudioEncoderSettings_encodingMode".}
proc fcQAudioEncoderSettings_setEncodingMode(self: pointer, encodingMode: cint): void {.importc: "QAudioEncoderSettings_setEncodingMode".}
proc fcQAudioEncoderSettings_codec(self: pointer, ): struct_miqt_string {.importc: "QAudioEncoderSettings_codec".}
proc fcQAudioEncoderSettings_setCodec(self: pointer, codec: struct_miqt_string): void {.importc: "QAudioEncoderSettings_setCodec".}
proc fcQAudioEncoderSettings_bitRate(self: pointer, ): cint {.importc: "QAudioEncoderSettings_bitRate".}
proc fcQAudioEncoderSettings_setBitRate(self: pointer, bitrate: cint): void {.importc: "QAudioEncoderSettings_setBitRate".}
proc fcQAudioEncoderSettings_channelCount(self: pointer, ): cint {.importc: "QAudioEncoderSettings_channelCount".}
proc fcQAudioEncoderSettings_setChannelCount(self: pointer, channels: cint): void {.importc: "QAudioEncoderSettings_setChannelCount".}
proc fcQAudioEncoderSettings_sampleRate(self: pointer, ): cint {.importc: "QAudioEncoderSettings_sampleRate".}
proc fcQAudioEncoderSettings_setSampleRate(self: pointer, rate: cint): void {.importc: "QAudioEncoderSettings_setSampleRate".}
proc fcQAudioEncoderSettings_quality(self: pointer, ): cint {.importc: "QAudioEncoderSettings_quality".}
proc fcQAudioEncoderSettings_setQuality(self: pointer, quality: cint): void {.importc: "QAudioEncoderSettings_setQuality".}
proc fcQAudioEncoderSettings_encodingOption(self: pointer, option: struct_miqt_string): pointer {.importc: "QAudioEncoderSettings_encodingOption".}
proc fcQAudioEncoderSettings_encodingOptions(self: pointer, ): struct_miqt_map {.importc: "QAudioEncoderSettings_encodingOptions".}
proc fcQAudioEncoderSettings_setEncodingOption(self: pointer, option: struct_miqt_string, value: pointer): void {.importc: "QAudioEncoderSettings_setEncodingOption".}
proc fcQAudioEncoderSettings_setEncodingOptions(self: pointer, options: struct_miqt_map): void {.importc: "QAudioEncoderSettings_setEncodingOptions".}
proc fcQAudioEncoderSettings_new(): ptr cQAudioEncoderSettings {.importc: "QAudioEncoderSettings_new".}
proc fcQAudioEncoderSettings_new2(other: pointer): ptr cQAudioEncoderSettings {.importc: "QAudioEncoderSettings_new2".}
proc fcQVideoEncoderSettings_operatorAssign(self: pointer, other: pointer): void {.importc: "QVideoEncoderSettings_operatorAssign".}
proc fcQVideoEncoderSettings_operatorEqual(self: pointer, other: pointer): bool {.importc: "QVideoEncoderSettings_operatorEqual".}
proc fcQVideoEncoderSettings_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QVideoEncoderSettings_operatorNotEqual".}
proc fcQVideoEncoderSettings_isNull(self: pointer, ): bool {.importc: "QVideoEncoderSettings_isNull".}
proc fcQVideoEncoderSettings_encodingMode(self: pointer, ): cint {.importc: "QVideoEncoderSettings_encodingMode".}
proc fcQVideoEncoderSettings_setEncodingMode(self: pointer, encodingMode: cint): void {.importc: "QVideoEncoderSettings_setEncodingMode".}
proc fcQVideoEncoderSettings_codec(self: pointer, ): struct_miqt_string {.importc: "QVideoEncoderSettings_codec".}
proc fcQVideoEncoderSettings_setCodec(self: pointer, codec: struct_miqt_string): void {.importc: "QVideoEncoderSettings_setCodec".}
proc fcQVideoEncoderSettings_resolution(self: pointer, ): pointer {.importc: "QVideoEncoderSettings_resolution".}
proc fcQVideoEncoderSettings_setResolution(self: pointer, resolution: pointer): void {.importc: "QVideoEncoderSettings_setResolution".}
proc fcQVideoEncoderSettings_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QVideoEncoderSettings_setResolution2".}
proc fcQVideoEncoderSettings_frameRate(self: pointer, ): float64 {.importc: "QVideoEncoderSettings_frameRate".}
proc fcQVideoEncoderSettings_setFrameRate(self: pointer, rate: float64): void {.importc: "QVideoEncoderSettings_setFrameRate".}
proc fcQVideoEncoderSettings_bitRate(self: pointer, ): cint {.importc: "QVideoEncoderSettings_bitRate".}
proc fcQVideoEncoderSettings_setBitRate(self: pointer, bitrate: cint): void {.importc: "QVideoEncoderSettings_setBitRate".}
proc fcQVideoEncoderSettings_quality(self: pointer, ): cint {.importc: "QVideoEncoderSettings_quality".}
proc fcQVideoEncoderSettings_setQuality(self: pointer, quality: cint): void {.importc: "QVideoEncoderSettings_setQuality".}
proc fcQVideoEncoderSettings_encodingOption(self: pointer, option: struct_miqt_string): pointer {.importc: "QVideoEncoderSettings_encodingOption".}
proc fcQVideoEncoderSettings_encodingOptions(self: pointer, ): struct_miqt_map {.importc: "QVideoEncoderSettings_encodingOptions".}
proc fcQVideoEncoderSettings_setEncodingOption(self: pointer, option: struct_miqt_string, value: pointer): void {.importc: "QVideoEncoderSettings_setEncodingOption".}
proc fcQVideoEncoderSettings_setEncodingOptions(self: pointer, options: struct_miqt_map): void {.importc: "QVideoEncoderSettings_setEncodingOptions".}
proc fcQVideoEncoderSettings_new(): ptr cQVideoEncoderSettings {.importc: "QVideoEncoderSettings_new".}
proc fcQVideoEncoderSettings_new2(other: pointer): ptr cQVideoEncoderSettings {.importc: "QVideoEncoderSettings_new2".}
proc fcQImageEncoderSettings_operatorAssign(self: pointer, other: pointer): void {.importc: "QImageEncoderSettings_operatorAssign".}
proc fcQImageEncoderSettings_operatorEqual(self: pointer, other: pointer): bool {.importc: "QImageEncoderSettings_operatorEqual".}
proc fcQImageEncoderSettings_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QImageEncoderSettings_operatorNotEqual".}
proc fcQImageEncoderSettings_isNull(self: pointer, ): bool {.importc: "QImageEncoderSettings_isNull".}
proc fcQImageEncoderSettings_codec(self: pointer, ): struct_miqt_string {.importc: "QImageEncoderSettings_codec".}
proc fcQImageEncoderSettings_setCodec(self: pointer, codec: struct_miqt_string): void {.importc: "QImageEncoderSettings_setCodec".}
proc fcQImageEncoderSettings_resolution(self: pointer, ): pointer {.importc: "QImageEncoderSettings_resolution".}
proc fcQImageEncoderSettings_setResolution(self: pointer, resolution: pointer): void {.importc: "QImageEncoderSettings_setResolution".}
proc fcQImageEncoderSettings_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QImageEncoderSettings_setResolution2".}
proc fcQImageEncoderSettings_quality(self: pointer, ): cint {.importc: "QImageEncoderSettings_quality".}
proc fcQImageEncoderSettings_setQuality(self: pointer, quality: cint): void {.importc: "QImageEncoderSettings_setQuality".}
proc fcQImageEncoderSettings_encodingOption(self: pointer, option: struct_miqt_string): pointer {.importc: "QImageEncoderSettings_encodingOption".}
proc fcQImageEncoderSettings_encodingOptions(self: pointer, ): struct_miqt_map {.importc: "QImageEncoderSettings_encodingOptions".}
proc fcQImageEncoderSettings_setEncodingOption(self: pointer, option: struct_miqt_string, value: pointer): void {.importc: "QImageEncoderSettings_setEncodingOption".}
proc fcQImageEncoderSettings_setEncodingOptions(self: pointer, options: struct_miqt_map): void {.importc: "QImageEncoderSettings_setEncodingOptions".}
proc fcQImageEncoderSettings_new(): ptr cQImageEncoderSettings {.importc: "QImageEncoderSettings_new".}
proc fcQImageEncoderSettings_new2(other: pointer): ptr cQImageEncoderSettings {.importc: "QImageEncoderSettings_new2".}

proc operatorAssign*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, other: gen_qmediaencodersettings_types.QAudioEncoderSettings): void =
  fcQAudioEncoderSettings_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, other: gen_qmediaencodersettings_types.QAudioEncoderSettings): bool =
  fcQAudioEncoderSettings_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, other: gen_qmediaencodersettings_types.QAudioEncoderSettings): bool =
  fcQAudioEncoderSettings_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): bool =
  fcQAudioEncoderSettings_isNull(self.h)

proc encodingMode*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): cint =
  cint(fcQAudioEncoderSettings_encodingMode(self.h))

proc setEncodingMode*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, encodingMode: cint): void =
  fcQAudioEncoderSettings_setEncodingMode(self.h, cint(encodingMode))

proc codec*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): string =
  let v_ms = fcQAudioEncoderSettings_codec(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCodec*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, codec: string): void =
  fcQAudioEncoderSettings_setCodec(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))

proc bitRate*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): cint =
  fcQAudioEncoderSettings_bitRate(self.h)

proc setBitRate*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, bitrate: cint): void =
  fcQAudioEncoderSettings_setBitRate(self.h, bitrate)

proc channelCount*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): cint =
  fcQAudioEncoderSettings_channelCount(self.h)

proc setChannelCount*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, channels: cint): void =
  fcQAudioEncoderSettings_setChannelCount(self.h, channels)

proc sampleRate*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): cint =
  fcQAudioEncoderSettings_sampleRate(self.h)

proc setSampleRate*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, rate: cint): void =
  fcQAudioEncoderSettings_setSampleRate(self.h, rate)

proc quality*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): cint =
  cint(fcQAudioEncoderSettings_quality(self.h))

proc setQuality*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, quality: cint): void =
  fcQAudioEncoderSettings_setQuality(self.h, cint(quality))

proc encodingOption*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, option: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAudioEncoderSettings_encodingOption(self.h, struct_miqt_string(data: option, len: csize_t(len(option)))), owned: true)

proc encodingOptions*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQAudioEncoderSettings_encodingOptions(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc setEncodingOption*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, option: string, value: gen_qvariant_types.QVariant): void =
  fcQAudioEncoderSettings_setEncodingOption(self.h, struct_miqt_string(data: option, len: csize_t(len(option))), value.h)

proc setEncodingOptions*(self: gen_qmediaencodersettings_types.QAudioEncoderSettings, options: Table[string,gen_qvariant_types.QVariant]): void =
  var options_Keys_CArray = newSeq[struct_miqt_string](len(options))
  var options_Values_CArray = newSeq[pointer](len(options))
  var options_ctr = 0
  for options_k in options.keys():
    options_Keys_CArray[options_ctr] = struct_miqt_string(data: options_k, len: csize_t(len(options_k)))
    options_ctr += 1
  options_ctr = 0
  for options_v in options.values():
    options_Values_CArray[options_ctr] = options_v.h
    options_ctr += 1

  fcQAudioEncoderSettings_setEncodingOptions(self.h, struct_miqt_map(len: csize_t(len(options)),keys: if len(options) == 0: nil else: addr(options_Keys_CArray[0]), values: if len(options) == 0: nil else: addr(options_Values_CArray[0]),))

proc create*(T: type gen_qmediaencodersettings_types.QAudioEncoderSettings): gen_qmediaencodersettings_types.QAudioEncoderSettings =
  gen_qmediaencodersettings_types.QAudioEncoderSettings(h: fcQAudioEncoderSettings_new(), owned: true)

proc create*(T: type gen_qmediaencodersettings_types.QAudioEncoderSettings,
    other: gen_qmediaencodersettings_types.QAudioEncoderSettings): gen_qmediaencodersettings_types.QAudioEncoderSettings =
  gen_qmediaencodersettings_types.QAudioEncoderSettings(h: fcQAudioEncoderSettings_new2(other.h), owned: true)

proc operatorAssign*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, other: gen_qmediaencodersettings_types.QVideoEncoderSettings): void =
  fcQVideoEncoderSettings_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, other: gen_qmediaencodersettings_types.QVideoEncoderSettings): bool =
  fcQVideoEncoderSettings_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, other: gen_qmediaencodersettings_types.QVideoEncoderSettings): bool =
  fcQVideoEncoderSettings_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): bool =
  fcQVideoEncoderSettings_isNull(self.h)

proc encodingMode*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): cint =
  cint(fcQVideoEncoderSettings_encodingMode(self.h))

proc setEncodingMode*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, encodingMode: cint): void =
  fcQVideoEncoderSettings_setEncodingMode(self.h, cint(encodingMode))

proc codec*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): string =
  let v_ms = fcQVideoEncoderSettings_codec(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCodec*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, codec: string): void =
  fcQVideoEncoderSettings_setCodec(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))

proc resolution*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoEncoderSettings_resolution(self.h), owned: true)

proc setResolution*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, resolution: gen_qsize_types.QSize): void =
  fcQVideoEncoderSettings_setResolution(self.h, resolution.h)

proc setResolution*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, width: cint, height: cint): void =
  fcQVideoEncoderSettings_setResolution2(self.h, width, height)

proc frameRate*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): float64 =
  fcQVideoEncoderSettings_frameRate(self.h)

proc setFrameRate*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, rate: float64): void =
  fcQVideoEncoderSettings_setFrameRate(self.h, rate)

proc bitRate*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): cint =
  fcQVideoEncoderSettings_bitRate(self.h)

proc setBitRate*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, bitrate: cint): void =
  fcQVideoEncoderSettings_setBitRate(self.h, bitrate)

proc quality*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): cint =
  cint(fcQVideoEncoderSettings_quality(self.h))

proc setQuality*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, quality: cint): void =
  fcQVideoEncoderSettings_setQuality(self.h, cint(quality))

proc encodingOption*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, option: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoEncoderSettings_encodingOption(self.h, struct_miqt_string(data: option, len: csize_t(len(option)))), owned: true)

proc encodingOptions*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQVideoEncoderSettings_encodingOptions(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc setEncodingOption*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, option: string, value: gen_qvariant_types.QVariant): void =
  fcQVideoEncoderSettings_setEncodingOption(self.h, struct_miqt_string(data: option, len: csize_t(len(option))), value.h)

proc setEncodingOptions*(self: gen_qmediaencodersettings_types.QVideoEncoderSettings, options: Table[string,gen_qvariant_types.QVariant]): void =
  var options_Keys_CArray = newSeq[struct_miqt_string](len(options))
  var options_Values_CArray = newSeq[pointer](len(options))
  var options_ctr = 0
  for options_k in options.keys():
    options_Keys_CArray[options_ctr] = struct_miqt_string(data: options_k, len: csize_t(len(options_k)))
    options_ctr += 1
  options_ctr = 0
  for options_v in options.values():
    options_Values_CArray[options_ctr] = options_v.h
    options_ctr += 1

  fcQVideoEncoderSettings_setEncodingOptions(self.h, struct_miqt_map(len: csize_t(len(options)),keys: if len(options) == 0: nil else: addr(options_Keys_CArray[0]), values: if len(options) == 0: nil else: addr(options_Values_CArray[0]),))

proc create*(T: type gen_qmediaencodersettings_types.QVideoEncoderSettings): gen_qmediaencodersettings_types.QVideoEncoderSettings =
  gen_qmediaencodersettings_types.QVideoEncoderSettings(h: fcQVideoEncoderSettings_new(), owned: true)

proc create*(T: type gen_qmediaencodersettings_types.QVideoEncoderSettings,
    other: gen_qmediaencodersettings_types.QVideoEncoderSettings): gen_qmediaencodersettings_types.QVideoEncoderSettings =
  gen_qmediaencodersettings_types.QVideoEncoderSettings(h: fcQVideoEncoderSettings_new2(other.h), owned: true)

proc operatorAssign*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, other: gen_qmediaencodersettings_types.QImageEncoderSettings): void =
  fcQImageEncoderSettings_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, other: gen_qmediaencodersettings_types.QImageEncoderSettings): bool =
  fcQImageEncoderSettings_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, other: gen_qmediaencodersettings_types.QImageEncoderSettings): bool =
  fcQImageEncoderSettings_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, ): bool =
  fcQImageEncoderSettings_isNull(self.h)

proc codec*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, ): string =
  let v_ms = fcQImageEncoderSettings_codec(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCodec*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, codec: string): void =
  fcQImageEncoderSettings_setCodec(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))

proc resolution*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQImageEncoderSettings_resolution(self.h), owned: true)

proc setResolution*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, resolution: gen_qsize_types.QSize): void =
  fcQImageEncoderSettings_setResolution(self.h, resolution.h)

proc setResolution*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, width: cint, height: cint): void =
  fcQImageEncoderSettings_setResolution2(self.h, width, height)

proc quality*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, ): cint =
  cint(fcQImageEncoderSettings_quality(self.h))

proc setQuality*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, quality: cint): void =
  fcQImageEncoderSettings_setQuality(self.h, cint(quality))

proc encodingOption*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, option: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQImageEncoderSettings_encodingOption(self.h, struct_miqt_string(data: option, len: csize_t(len(option)))), owned: true)

proc encodingOptions*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQImageEncoderSettings_encodingOptions(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc setEncodingOption*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, option: string, value: gen_qvariant_types.QVariant): void =
  fcQImageEncoderSettings_setEncodingOption(self.h, struct_miqt_string(data: option, len: csize_t(len(option))), value.h)

proc setEncodingOptions*(self: gen_qmediaencodersettings_types.QImageEncoderSettings, options: Table[string,gen_qvariant_types.QVariant]): void =
  var options_Keys_CArray = newSeq[struct_miqt_string](len(options))
  var options_Values_CArray = newSeq[pointer](len(options))
  var options_ctr = 0
  for options_k in options.keys():
    options_Keys_CArray[options_ctr] = struct_miqt_string(data: options_k, len: csize_t(len(options_k)))
    options_ctr += 1
  options_ctr = 0
  for options_v in options.values():
    options_Values_CArray[options_ctr] = options_v.h
    options_ctr += 1

  fcQImageEncoderSettings_setEncodingOptions(self.h, struct_miqt_map(len: csize_t(len(options)),keys: if len(options) == 0: nil else: addr(options_Keys_CArray[0]), values: if len(options) == 0: nil else: addr(options_Values_CArray[0]),))

proc create*(T: type gen_qmediaencodersettings_types.QImageEncoderSettings): gen_qmediaencodersettings_types.QImageEncoderSettings =
  gen_qmediaencodersettings_types.QImageEncoderSettings(h: fcQImageEncoderSettings_new(), owned: true)

proc create*(T: type gen_qmediaencodersettings_types.QImageEncoderSettings,
    other: gen_qmediaencodersettings_types.QImageEncoderSettings): gen_qmediaencodersettings_types.QImageEncoderSettings =
  gen_qmediaencodersettings_types.QImageEncoderSettings(h: fcQImageEncoderSettings_new2(other.h), owned: true)

