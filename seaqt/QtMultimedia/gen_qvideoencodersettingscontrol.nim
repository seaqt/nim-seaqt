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
{.compile("gen_qvideoencodersettingscontrol.cpp", cflags).}


import ./gen_qvideoencodersettingscontrol_types
export gen_qvideoencodersettingscontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qmediacontrol,
  ./gen_qmediaencodersettings_types
export
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qmediacontrol,
  gen_qmediaencodersettings_types

type cQVideoEncoderSettingsControl*{.exportc: "QVideoEncoderSettingsControl", incompleteStruct.} = object

proc fcQVideoEncoderSettingsControl_metaObject(self: pointer, ): pointer {.importc: "QVideoEncoderSettingsControl_metaObject".}
proc fcQVideoEncoderSettingsControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoEncoderSettingsControl_metacast".}
proc fcQVideoEncoderSettingsControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_tr".}
proc fcQVideoEncoderSettingsControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_trUtf8".}
proc fcQVideoEncoderSettingsControl_supportedResolutions(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QVideoEncoderSettingsControl_supportedResolutions".}
proc fcQVideoEncoderSettingsControl_supportedFrameRates(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QVideoEncoderSettingsControl_supportedFrameRates".}
proc fcQVideoEncoderSettingsControl_supportedVideoCodecs(self: pointer, ): struct_miqt_array {.importc: "QVideoEncoderSettingsControl_supportedVideoCodecs".}
proc fcQVideoEncoderSettingsControl_videoCodecDescription(self: pointer, codec: struct_miqt_string): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_videoCodecDescription".}
proc fcQVideoEncoderSettingsControl_videoSettings(self: pointer, ): pointer {.importc: "QVideoEncoderSettingsControl_videoSettings".}
proc fcQVideoEncoderSettingsControl_setVideoSettings(self: pointer, settings: pointer): void {.importc: "QVideoEncoderSettingsControl_setVideoSettings".}
proc fcQVideoEncoderSettingsControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_tr2".}
proc fcQVideoEncoderSettingsControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_tr3".}
proc fcQVideoEncoderSettingsControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_trUtf82".}
proc fcQVideoEncoderSettingsControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoEncoderSettingsControl_trUtf83".}
proc fcQVideoEncoderSettingsControl_delete(self: pointer) {.importc: "QVideoEncoderSettingsControl_delete".}


func init*(T: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, h: ptr cQVideoEncoderSettingsControl): gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl =
  T(h: h)
proc metaObject*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoEncoderSettingsControl_metaObject(self.h))

proc metacast*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, param1: cstring): pointer =
  fcQVideoEncoderSettingsControl_metacast(self.h, param1)

proc tr*(_: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, s: cstring): string =
  let v_ms = fcQVideoEncoderSettingsControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, s: cstring): string =
  let v_ms = fcQVideoEncoderSettingsControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings, continuous: ptr bool): seq[gen_qsize_types.QSize] =
  var v_ma = fcQVideoEncoderSettingsControl_supportedResolutions(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc supportedFrameRates*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings, continuous: ptr bool): seq[float64] =
  var v_ma = fcQVideoEncoderSettingsControl_supportedFrameRates(self.h, settings.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedVideoCodecs*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, ): seq[string] =
  var v_ma = fcQVideoEncoderSettingsControl_supportedVideoCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc videoCodecDescription*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, codec: string): string =
  let v_ms = fcQVideoEncoderSettingsControl_videoCodecDescription(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoSettings*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, ): gen_qmediaencodersettings_types.QVideoEncoderSettings =
  gen_qmediaencodersettings_types.QVideoEncoderSettings(h: fcQVideoEncoderSettingsControl_videoSettings(self.h))

proc setVideoSettings*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, settings: gen_qmediaencodersettings_types.QVideoEncoderSettings): void =
  fcQVideoEncoderSettingsControl_setVideoSettings(self.h, settings.h)

proc tr*(_: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoEncoderSettingsControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoEncoderSettingsControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoEncoderSettingsControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoEncoderSettingsControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qvideoencodersettingscontrol_types.QVideoEncoderSettingsControl) =
  fcQVideoEncoderSettingsControl_delete(self.h)
