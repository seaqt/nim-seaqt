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
{.compile("gen_qaudioencodersettingscontrol.cpp", cflags).}


import ./gen_qaudioencodersettingscontrol_types
export gen_qaudioencodersettingscontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol,
  ./gen_qmediaencodersettings_types
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol,
  gen_qmediaencodersettings_types

type cQAudioEncoderSettingsControl*{.exportc: "QAudioEncoderSettingsControl", incompleteStruct.} = object

proc fcQAudioEncoderSettingsControl_metaObject(self: pointer, ): pointer {.importc: "QAudioEncoderSettingsControl_metaObject".}
proc fcQAudioEncoderSettingsControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioEncoderSettingsControl_metacast".}
proc fcQAudioEncoderSettingsControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioEncoderSettingsControl_metacall".}
proc fcQAudioEncoderSettingsControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_tr".}
proc fcQAudioEncoderSettingsControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_trUtf8".}
proc fcQAudioEncoderSettingsControl_supportedAudioCodecs(self: pointer, ): struct_miqt_array {.importc: "QAudioEncoderSettingsControl_supportedAudioCodecs".}
proc fcQAudioEncoderSettingsControl_codecDescription(self: pointer, codecName: struct_miqt_string): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_codecDescription".}
proc fcQAudioEncoderSettingsControl_supportedSampleRates(self: pointer, settings: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QAudioEncoderSettingsControl_supportedSampleRates".}
proc fcQAudioEncoderSettingsControl_audioSettings(self: pointer, ): pointer {.importc: "QAudioEncoderSettingsControl_audioSettings".}
proc fcQAudioEncoderSettingsControl_setAudioSettings(self: pointer, settings: pointer): void {.importc: "QAudioEncoderSettingsControl_setAudioSettings".}
proc fcQAudioEncoderSettingsControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_tr2".}
proc fcQAudioEncoderSettingsControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_tr3".}
proc fcQAudioEncoderSettingsControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_trUtf82".}
proc fcQAudioEncoderSettingsControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioEncoderSettingsControl_trUtf83".}
proc fcQAudioEncoderSettingsControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioEncoderSettingsControl_protectedbase_sender".}
proc fcQAudioEncoderSettingsControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioEncoderSettingsControl_protectedbase_senderSignalIndex".}
proc fcQAudioEncoderSettingsControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioEncoderSettingsControl_protectedbase_receivers".}
proc fcQAudioEncoderSettingsControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioEncoderSettingsControl_protectedbase_isSignalConnected".}
proc fcQAudioEncoderSettingsControl_staticMetaObject(): pointer {.importc: "QAudioEncoderSettingsControl_staticMetaObject".}
proc fcQAudioEncoderSettingsControl_delete(self: pointer) {.importc: "QAudioEncoderSettingsControl_delete".}

proc metaObject*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEncoderSettingsControl_metaObject(self.h))

proc metacast*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, param1: cstring): pointer =
  fcQAudioEncoderSettingsControl_metacast(self.h, param1)

proc metacall*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioEncoderSettingsControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, s: cstring): string =
  let v_ms = fcQAudioEncoderSettingsControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, s: cstring): string =
  let v_ms = fcQAudioEncoderSettingsControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedAudioCodecs*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, ): seq[string] =
  var v_ma = fcQAudioEncoderSettingsControl_supportedAudioCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc codecDescription*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, codecName: string): string =
  let v_ms = fcQAudioEncoderSettingsControl_codecDescription(self.h, struct_miqt_string(data: codecName, len: csize_t(len(codecName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedSampleRates*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, settings: gen_qmediaencodersettings_types.QAudioEncoderSettings, continuous: ptr bool): seq[cint] =
  var v_ma = fcQAudioEncoderSettingsControl_supportedSampleRates(self.h, settings.h, continuous)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc audioSettings*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, ): gen_qmediaencodersettings_types.QAudioEncoderSettings =
  gen_qmediaencodersettings_types.QAudioEncoderSettings(h: fcQAudioEncoderSettingsControl_audioSettings(self.h))

proc setAudioSettings*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, settings: gen_qmediaencodersettings_types.QAudioEncoderSettings): void =
  fcQAudioEncoderSettingsControl_setAudioSettings(self.h, settings.h)

proc tr*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioEncoderSettingsControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioEncoderSettingsControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioEncoderSettingsControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioEncoderSettingsControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioEncoderSettingsControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, ): cint =
  fcQAudioEncoderSettingsControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, signal: cstring): cint =
  fcQAudioEncoderSettingsControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioEncoderSettingsControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioEncoderSettingsControl_staticMetaObject())
proc delete*(self: gen_qaudioencodersettingscontrol_types.QAudioEncoderSettingsControl) =
  fcQAudioEncoderSettingsControl_delete(self.h)
