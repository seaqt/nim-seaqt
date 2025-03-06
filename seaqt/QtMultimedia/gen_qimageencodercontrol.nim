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
{.compile("gen_qimageencodercontrol.cpp", cflags).}


import ./gen_qimageencodercontrol_types
export gen_qimageencodercontrol_types

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

type cQImageEncoderControl*{.exportc: "QImageEncoderControl", incompleteStruct.} = object

proc fcQImageEncoderControl_metaObject(self: pointer, ): pointer {.importc: "QImageEncoderControl_metaObject".}
proc fcQImageEncoderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QImageEncoderControl_metacast".}
proc fcQImageEncoderControl_tr(s: cstring): struct_miqt_string {.importc: "QImageEncoderControl_tr".}
proc fcQImageEncoderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QImageEncoderControl_trUtf8".}
proc fcQImageEncoderControl_supportedImageCodecs(self: pointer, ): struct_miqt_array {.importc: "QImageEncoderControl_supportedImageCodecs".}
proc fcQImageEncoderControl_imageCodecDescription(self: pointer, codec: struct_miqt_string): struct_miqt_string {.importc: "QImageEncoderControl_imageCodecDescription".}
proc fcQImageEncoderControl_supportedResolutions(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QImageEncoderControl_supportedResolutions".}
proc fcQImageEncoderControl_imageSettings(self: pointer, ): pointer {.importc: "QImageEncoderControl_imageSettings".}
proc fcQImageEncoderControl_setImageSettings(self: pointer, settings: pointer): void {.importc: "QImageEncoderControl_setImageSettings".}
proc fcQImageEncoderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageEncoderControl_tr2".}
proc fcQImageEncoderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageEncoderControl_tr3".}
proc fcQImageEncoderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QImageEncoderControl_trUtf82".}
proc fcQImageEncoderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QImageEncoderControl_trUtf83".}
proc fcQImageEncoderControl_delete(self: pointer) {.importc: "QImageEncoderControl_delete".}


func init*(T: type gen_qimageencodercontrol_types.QImageEncoderControl, h: ptr cQImageEncoderControl): gen_qimageencodercontrol_types.QImageEncoderControl =
  T(h: h)
proc metaObject*(self: gen_qimageencodercontrol_types.QImageEncoderControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQImageEncoderControl_metaObject(self.h))

proc metacast*(self: gen_qimageencodercontrol_types.QImageEncoderControl, param1: cstring): pointer =
  fcQImageEncoderControl_metacast(self.h, param1)

proc tr*(_: type gen_qimageencodercontrol_types.QImageEncoderControl, s: cstring): string =
  let v_ms = fcQImageEncoderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageencodercontrol_types.QImageEncoderControl, s: cstring): string =
  let v_ms = fcQImageEncoderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedImageCodecs*(self: gen_qimageencodercontrol_types.QImageEncoderControl, ): seq[string] =
  var v_ma = fcQImageEncoderControl_supportedImageCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc imageCodecDescription*(self: gen_qimageencodercontrol_types.QImageEncoderControl, codec: string): string =
  let v_ms = fcQImageEncoderControl_imageCodecDescription(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedResolutions*(self: gen_qimageencodercontrol_types.QImageEncoderControl, settings: gen_qmediaencodersettings_types.QImageEncoderSettings, continuous: ptr bool): seq[gen_qsize_types.QSize] =
  var v_ma = fcQImageEncoderControl_supportedResolutions(self.h, settings.h, continuous)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc imageSettings*(self: gen_qimageencodercontrol_types.QImageEncoderControl, ): gen_qmediaencodersettings_types.QImageEncoderSettings =
  gen_qmediaencodersettings_types.QImageEncoderSettings(h: fcQImageEncoderControl_imageSettings(self.h))

proc setImageSettings*(self: gen_qimageencodercontrol_types.QImageEncoderControl, settings: gen_qmediaencodersettings_types.QImageEncoderSettings): void =
  fcQImageEncoderControl_setImageSettings(self.h, settings.h)

proc tr*(_: type gen_qimageencodercontrol_types.QImageEncoderControl, s: cstring, c: cstring): string =
  let v_ms = fcQImageEncoderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qimageencodercontrol_types.QImageEncoderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageEncoderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageencodercontrol_types.QImageEncoderControl, s: cstring, c: cstring): string =
  let v_ms = fcQImageEncoderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qimageencodercontrol_types.QImageEncoderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQImageEncoderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qimageencodercontrol_types.QImageEncoderControl) =
  fcQImageEncoderControl_delete(self.h)
