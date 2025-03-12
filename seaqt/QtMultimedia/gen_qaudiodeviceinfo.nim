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


import ./gen_qaudiodeviceinfo_types
export gen_qaudiodeviceinfo_types

import
  ./gen_qaudioformat_types
export
  gen_qaudioformat_types

type cQAudioDeviceInfo*{.exportc: "QAudioDeviceInfo", incompleteStruct.} = object

proc fcQAudioDeviceInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QAudioDeviceInfo_operatorAssign".}
proc fcQAudioDeviceInfo_operatorEqual(self: pointer, other: pointer): bool {.importc: "QAudioDeviceInfo_operatorEqual".}
proc fcQAudioDeviceInfo_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QAudioDeviceInfo_operatorNotEqual".}
proc fcQAudioDeviceInfo_isNull(self: pointer): bool {.importc: "QAudioDeviceInfo_isNull".}
proc fcQAudioDeviceInfo_deviceName(self: pointer): struct_miqt_string {.importc: "QAudioDeviceInfo_deviceName".}
proc fcQAudioDeviceInfo_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAudioDeviceInfo_isFormatSupported".}
proc fcQAudioDeviceInfo_preferredFormat(self: pointer): pointer {.importc: "QAudioDeviceInfo_preferredFormat".}
proc fcQAudioDeviceInfo_nearestFormat(self: pointer, format: pointer): pointer {.importc: "QAudioDeviceInfo_nearestFormat".}
proc fcQAudioDeviceInfo_supportedCodecs(self: pointer): struct_miqt_array {.importc: "QAudioDeviceInfo_supportedCodecs".}
proc fcQAudioDeviceInfo_supportedSampleRates(self: pointer): struct_miqt_array {.importc: "QAudioDeviceInfo_supportedSampleRates".}
proc fcQAudioDeviceInfo_supportedChannelCounts(self: pointer): struct_miqt_array {.importc: "QAudioDeviceInfo_supportedChannelCounts".}
proc fcQAudioDeviceInfo_supportedSampleSizes(self: pointer): struct_miqt_array {.importc: "QAudioDeviceInfo_supportedSampleSizes".}
proc fcQAudioDeviceInfo_supportedByteOrders(self: pointer): struct_miqt_array {.importc: "QAudioDeviceInfo_supportedByteOrders".}
proc fcQAudioDeviceInfo_supportedSampleTypes(self: pointer): struct_miqt_array {.importc: "QAudioDeviceInfo_supportedSampleTypes".}
proc fcQAudioDeviceInfo_realm(self: pointer): struct_miqt_string {.importc: "QAudioDeviceInfo_realm".}
proc fcQAudioDeviceInfo_defaultInputDevice(): pointer {.importc: "QAudioDeviceInfo_defaultInputDevice".}
proc fcQAudioDeviceInfo_defaultOutputDevice(): pointer {.importc: "QAudioDeviceInfo_defaultOutputDevice".}
proc fcQAudioDeviceInfo_availableDevices(mode: cint): struct_miqt_array {.importc: "QAudioDeviceInfo_availableDevices".}
proc fcQAudioDeviceInfo_new(): ptr cQAudioDeviceInfo {.importc: "QAudioDeviceInfo_new".}
proc fcQAudioDeviceInfo_new2(other: pointer): ptr cQAudioDeviceInfo {.importc: "QAudioDeviceInfo_new2".}

proc operatorAssign*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, other: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): void =
  fcQAudioDeviceInfo_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, other: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): bool =
  fcQAudioDeviceInfo_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, other: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): bool =
  fcQAudioDeviceInfo_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): bool =
  fcQAudioDeviceInfo_isNull(self.h)

proc deviceName*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): string =
  let v_ms = fcQAudioDeviceInfo_deviceName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFormatSupported*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat): bool =
  fcQAudioDeviceInfo_isFormatSupported(self.h, format.h)

proc preferredFormat*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioDeviceInfo_preferredFormat(self.h), owned: true)

proc nearestFormat*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioDeviceInfo_nearestFormat(self.h, format.h), owned: true)

proc supportedCodecs*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): seq[string] =
  var v_ma = fcQAudioDeviceInfo_supportedCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc supportedSampleRates*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): seq[cint] =
  var v_ma = fcQAudioDeviceInfo_supportedSampleRates(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedChannelCounts*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): seq[cint] =
  var v_ma = fcQAudioDeviceInfo_supportedChannelCounts(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedSampleSizes*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): seq[cint] =
  var v_ma = fcQAudioDeviceInfo_supportedSampleSizes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedByteOrders*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): seq[cint] =
  var v_ma = fcQAudioDeviceInfo_supportedByteOrders(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc supportedSampleTypes*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): seq[cint] =
  var v_ma = fcQAudioDeviceInfo_supportedSampleTypes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc realm*(self: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): string =
  let v_ms = fcQAudioDeviceInfo_realm(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultInputDevice*(_: type gen_qaudiodeviceinfo_types.QAudioDeviceInfo): gen_qaudiodeviceinfo_types.QAudioDeviceInfo =
  gen_qaudiodeviceinfo_types.QAudioDeviceInfo(h: fcQAudioDeviceInfo_defaultInputDevice(), owned: true)

proc defaultOutputDevice*(_: type gen_qaudiodeviceinfo_types.QAudioDeviceInfo): gen_qaudiodeviceinfo_types.QAudioDeviceInfo =
  gen_qaudiodeviceinfo_types.QAudioDeviceInfo(h: fcQAudioDeviceInfo_defaultOutputDevice(), owned: true)

proc availableDevices*(_: type gen_qaudiodeviceinfo_types.QAudioDeviceInfo, mode: cint): seq[gen_qaudiodeviceinfo_types.QAudioDeviceInfo] =
  var v_ma = fcQAudioDeviceInfo_availableDevices(cint(mode))
  var vx_ret = newSeq[gen_qaudiodeviceinfo_types.QAudioDeviceInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodeviceinfo_types.QAudioDeviceInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qaudiodeviceinfo_types.QAudioDeviceInfo): gen_qaudiodeviceinfo_types.QAudioDeviceInfo =
  gen_qaudiodeviceinfo_types.QAudioDeviceInfo(h: fcQAudioDeviceInfo_new(), owned: true)

proc create*(T: type gen_qaudiodeviceinfo_types.QAudioDeviceInfo,
    other: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): gen_qaudiodeviceinfo_types.QAudioDeviceInfo =
  gen_qaudiodeviceinfo_types.QAudioDeviceInfo(h: fcQAudioDeviceInfo_new2(other.h), owned: true)

