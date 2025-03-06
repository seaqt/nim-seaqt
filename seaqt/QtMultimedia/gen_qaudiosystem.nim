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
{.compile("gen_qaudiosystem.cpp", cflags).}


import ./gen_qaudiosystem_types
export gen_qaudiosystem_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudioformat_types
export
  gen_qiodevice_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudioformat_types

type cQAbstractAudioDeviceInfo*{.exportc: "QAbstractAudioDeviceInfo", incompleteStruct.} = object
type cQAbstractAudioOutput*{.exportc: "QAbstractAudioOutput", incompleteStruct.} = object
type cQAbstractAudioInput*{.exportc: "QAbstractAudioInput", incompleteStruct.} = object

proc fcQAbstractAudioDeviceInfo_metaObject(self: pointer, ): pointer {.importc: "QAbstractAudioDeviceInfo_metaObject".}
proc fcQAbstractAudioDeviceInfo_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAudioDeviceInfo_metacast".}
proc fcQAbstractAudioDeviceInfo_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAudioDeviceInfo_metacall".}
proc fcQAbstractAudioDeviceInfo_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_tr".}
proc fcQAbstractAudioDeviceInfo_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_trUtf8".}
proc fcQAbstractAudioDeviceInfo_preferredFormat(self: pointer, ): pointer {.importc: "QAbstractAudioDeviceInfo_preferredFormat".}
proc fcQAbstractAudioDeviceInfo_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAbstractAudioDeviceInfo_isFormatSupported".}
proc fcQAbstractAudioDeviceInfo_deviceName(self: pointer, ): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_deviceName".}
proc fcQAbstractAudioDeviceInfo_supportedCodecs(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedCodecs".}
proc fcQAbstractAudioDeviceInfo_supportedSampleRates(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedSampleRates".}
proc fcQAbstractAudioDeviceInfo_supportedChannelCounts(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedChannelCounts".}
proc fcQAbstractAudioDeviceInfo_supportedSampleSizes(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedSampleSizes".}
proc fcQAbstractAudioDeviceInfo_supportedByteOrders(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedByteOrders".}
proc fcQAbstractAudioDeviceInfo_supportedSampleTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedSampleTypes".}
proc fcQAbstractAudioDeviceInfo_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_tr2".}
proc fcQAbstractAudioDeviceInfo_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_tr3".}
proc fcQAbstractAudioDeviceInfo_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_trUtf82".}
proc fcQAbstractAudioDeviceInfo_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_trUtf83".}
proc fcQAbstractAudioDeviceInfo_staticMetaObject(): pointer {.importc: "QAbstractAudioDeviceInfo_staticMetaObject".}
proc fcQAbstractAudioDeviceInfo_delete(self: pointer) {.importc: "QAbstractAudioDeviceInfo_delete".}
proc fcQAbstractAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAbstractAudioOutput_metaObject".}
proc fcQAbstractAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAudioOutput_metacast".}
proc fcQAbstractAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAudioOutput_metacall".}
proc fcQAbstractAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_tr".}
proc fcQAbstractAudioOutput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_trUtf8".}
proc fcQAbstractAudioOutput_start(self: pointer, device: pointer): void {.importc: "QAbstractAudioOutput_start".}
proc fcQAbstractAudioOutput_start2(self: pointer, ): pointer {.importc: "QAbstractAudioOutput_start2".}
proc fcQAbstractAudioOutput_stop(self: pointer, ): void {.importc: "QAbstractAudioOutput_stop".}
proc fcQAbstractAudioOutput_reset(self: pointer, ): void {.importc: "QAbstractAudioOutput_reset".}
proc fcQAbstractAudioOutput_suspend(self: pointer, ): void {.importc: "QAbstractAudioOutput_suspend".}
proc fcQAbstractAudioOutput_resume(self: pointer, ): void {.importc: "QAbstractAudioOutput_resume".}
proc fcQAbstractAudioOutput_bytesFree(self: pointer, ): cint {.importc: "QAbstractAudioOutput_bytesFree".}
proc fcQAbstractAudioOutput_periodSize(self: pointer, ): cint {.importc: "QAbstractAudioOutput_periodSize".}
proc fcQAbstractAudioOutput_setBufferSize(self: pointer, value: cint): void {.importc: "QAbstractAudioOutput_setBufferSize".}
proc fcQAbstractAudioOutput_bufferSize(self: pointer, ): cint {.importc: "QAbstractAudioOutput_bufferSize".}
proc fcQAbstractAudioOutput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAbstractAudioOutput_setNotifyInterval".}
proc fcQAbstractAudioOutput_notifyInterval(self: pointer, ): cint {.importc: "QAbstractAudioOutput_notifyInterval".}
proc fcQAbstractAudioOutput_processedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioOutput_processedUSecs".}
proc fcQAbstractAudioOutput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioOutput_elapsedUSecs".}
proc fcQAbstractAudioOutput_error(self: pointer, ): cint {.importc: "QAbstractAudioOutput_error".}
proc fcQAbstractAudioOutput_state(self: pointer, ): cint {.importc: "QAbstractAudioOutput_state".}
proc fcQAbstractAudioOutput_setFormat(self: pointer, fmt: pointer): void {.importc: "QAbstractAudioOutput_setFormat".}
proc fcQAbstractAudioOutput_format(self: pointer, ): pointer {.importc: "QAbstractAudioOutput_format".}
proc fcQAbstractAudioOutput_setVolume(self: pointer, volume: float64): void {.importc: "QAbstractAudioOutput_setVolume".}
proc fcQAbstractAudioOutput_volume(self: pointer, ): float64 {.importc: "QAbstractAudioOutput_volume".}
proc fcQAbstractAudioOutput_category(self: pointer, ): struct_miqt_string {.importc: "QAbstractAudioOutput_category".}
proc fcQAbstractAudioOutput_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QAbstractAudioOutput_setCategory".}
proc fcQAbstractAudioOutput_errorChanged(self: pointer, error: cint): void {.importc: "QAbstractAudioOutput_errorChanged".}
proc fcQAbstractAudioOutput_connect_errorChanged(self: pointer, slot: int) {.importc: "QAbstractAudioOutput_connect_errorChanged".}
proc fcQAbstractAudioOutput_stateChanged(self: pointer, state: cint): void {.importc: "QAbstractAudioOutput_stateChanged".}
proc fcQAbstractAudioOutput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractAudioOutput_connect_stateChanged".}
proc fcQAbstractAudioOutput_notify(self: pointer, ): void {.importc: "QAbstractAudioOutput_notify".}
proc fcQAbstractAudioOutput_connect_notify(self: pointer, slot: int) {.importc: "QAbstractAudioOutput_connect_notify".}
proc fcQAbstractAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_tr2".}
proc fcQAbstractAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioOutput_tr3".}
proc fcQAbstractAudioOutput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_trUtf82".}
proc fcQAbstractAudioOutput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioOutput_trUtf83".}
proc fcQAbstractAudioOutput_staticMetaObject(): pointer {.importc: "QAbstractAudioOutput_staticMetaObject".}
proc fcQAbstractAudioOutput_delete(self: pointer) {.importc: "QAbstractAudioOutput_delete".}
proc fcQAbstractAudioInput_metaObject(self: pointer, ): pointer {.importc: "QAbstractAudioInput_metaObject".}
proc fcQAbstractAudioInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAudioInput_metacast".}
proc fcQAbstractAudioInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAudioInput_metacall".}
proc fcQAbstractAudioInput_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_tr".}
proc fcQAbstractAudioInput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_trUtf8".}
proc fcQAbstractAudioInput_start(self: pointer, device: pointer): void {.importc: "QAbstractAudioInput_start".}
proc fcQAbstractAudioInput_start2(self: pointer, ): pointer {.importc: "QAbstractAudioInput_start2".}
proc fcQAbstractAudioInput_stop(self: pointer, ): void {.importc: "QAbstractAudioInput_stop".}
proc fcQAbstractAudioInput_reset(self: pointer, ): void {.importc: "QAbstractAudioInput_reset".}
proc fcQAbstractAudioInput_suspend(self: pointer, ): void {.importc: "QAbstractAudioInput_suspend".}
proc fcQAbstractAudioInput_resume(self: pointer, ): void {.importc: "QAbstractAudioInput_resume".}
proc fcQAbstractAudioInput_bytesReady(self: pointer, ): cint {.importc: "QAbstractAudioInput_bytesReady".}
proc fcQAbstractAudioInput_periodSize(self: pointer, ): cint {.importc: "QAbstractAudioInput_periodSize".}
proc fcQAbstractAudioInput_setBufferSize(self: pointer, value: cint): void {.importc: "QAbstractAudioInput_setBufferSize".}
proc fcQAbstractAudioInput_bufferSize(self: pointer, ): cint {.importc: "QAbstractAudioInput_bufferSize".}
proc fcQAbstractAudioInput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAbstractAudioInput_setNotifyInterval".}
proc fcQAbstractAudioInput_notifyInterval(self: pointer, ): cint {.importc: "QAbstractAudioInput_notifyInterval".}
proc fcQAbstractAudioInput_processedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioInput_processedUSecs".}
proc fcQAbstractAudioInput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioInput_elapsedUSecs".}
proc fcQAbstractAudioInput_error(self: pointer, ): cint {.importc: "QAbstractAudioInput_error".}
proc fcQAbstractAudioInput_state(self: pointer, ): cint {.importc: "QAbstractAudioInput_state".}
proc fcQAbstractAudioInput_setFormat(self: pointer, fmt: pointer): void {.importc: "QAbstractAudioInput_setFormat".}
proc fcQAbstractAudioInput_format(self: pointer, ): pointer {.importc: "QAbstractAudioInput_format".}
proc fcQAbstractAudioInput_setVolume(self: pointer, volume: float64): void {.importc: "QAbstractAudioInput_setVolume".}
proc fcQAbstractAudioInput_volume(self: pointer, ): float64 {.importc: "QAbstractAudioInput_volume".}
proc fcQAbstractAudioInput_errorChanged(self: pointer, error: cint): void {.importc: "QAbstractAudioInput_errorChanged".}
proc fcQAbstractAudioInput_connect_errorChanged(self: pointer, slot: int) {.importc: "QAbstractAudioInput_connect_errorChanged".}
proc fcQAbstractAudioInput_stateChanged(self: pointer, state: cint): void {.importc: "QAbstractAudioInput_stateChanged".}
proc fcQAbstractAudioInput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractAudioInput_connect_stateChanged".}
proc fcQAbstractAudioInput_notify(self: pointer, ): void {.importc: "QAbstractAudioInput_notify".}
proc fcQAbstractAudioInput_connect_notify(self: pointer, slot: int) {.importc: "QAbstractAudioInput_connect_notify".}
proc fcQAbstractAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_tr2".}
proc fcQAbstractAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioInput_tr3".}
proc fcQAbstractAudioInput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_trUtf82".}
proc fcQAbstractAudioInput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioInput_trUtf83".}
proc fcQAbstractAudioInput_staticMetaObject(): pointer {.importc: "QAbstractAudioInput_staticMetaObject".}
proc fcQAbstractAudioInput_delete(self: pointer) {.importc: "QAbstractAudioInput_delete".}

proc metaObject*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAudioDeviceInfo_metaObject(self.h))

proc metacast*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, param1: cstring): pointer =
  fcQAbstractAudioDeviceInfo_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractAudioDeviceInfo_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo, s: cstring): string =
  let v_ms = fcQAbstractAudioDeviceInfo_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo, s: cstring): string =
  let v_ms = fcQAbstractAudioDeviceInfo_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc preferredFormat*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAbstractAudioDeviceInfo_preferredFormat(self.h))

proc isFormatSupported*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat): bool =
  fcQAbstractAudioDeviceInfo_isFormatSupported(self.h, format.h)

proc deviceName*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): string =
  let v_ms = fcQAbstractAudioDeviceInfo_deviceName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedCodecs*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): seq[string] =
  var v_ma = fcQAbstractAudioDeviceInfo_supportedCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedSampleRates*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): seq[cint] =
  var v_ma = fcQAbstractAudioDeviceInfo_supportedSampleRates(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedChannelCounts*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): seq[cint] =
  var v_ma = fcQAbstractAudioDeviceInfo_supportedChannelCounts(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedSampleSizes*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): seq[cint] =
  var v_ma = fcQAbstractAudioDeviceInfo_supportedSampleSizes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedByteOrders*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): seq[cint] =
  var v_ma = fcQAbstractAudioDeviceInfo_supportedByteOrders(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc supportedSampleTypes*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo, ): seq[cint] =
  var v_ma = fcQAbstractAudioDeviceInfo_supportedSampleTypes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAudioDeviceInfo_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAudioDeviceInfo_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAudioDeviceInfo_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAudioDeviceInfo_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qaudiosystem_types.QAbstractAudioDeviceInfo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAudioDeviceInfo_staticMetaObject())
proc delete*(self: gen_qaudiosystem_types.QAbstractAudioDeviceInfo) =
  fcQAbstractAudioDeviceInfo_delete(self.h)
proc metaObject*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAudioOutput_metaObject(self.h))

proc metacast*(self: gen_qaudiosystem_types.QAbstractAudioOutput, param1: cstring): pointer =
  fcQAbstractAudioOutput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosystem_types.QAbstractAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioOutput, s: cstring): string =
  let v_ms = fcQAbstractAudioOutput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioOutput, s: cstring): string =
  let v_ms = fcQAbstractAudioOutput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qaudiosystem_types.QAbstractAudioOutput, device: gen_qiodevice_types.QIODevice): void =
  fcQAbstractAudioOutput_start(self.h, device.h)

proc start*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAbstractAudioOutput_start2(self.h))

proc stop*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): void =
  fcQAbstractAudioOutput_stop(self.h)

proc reset*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): void =
  fcQAbstractAudioOutput_reset(self.h)

proc suspend*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): void =
  fcQAbstractAudioOutput_suspend(self.h)

proc resume*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): void =
  fcQAbstractAudioOutput_resume(self.h)

proc bytesFree*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): cint =
  fcQAbstractAudioOutput_bytesFree(self.h)

proc periodSize*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): cint =
  fcQAbstractAudioOutput_periodSize(self.h)

proc setBufferSize*(self: gen_qaudiosystem_types.QAbstractAudioOutput, value: cint): void =
  fcQAbstractAudioOutput_setBufferSize(self.h, value)

proc bufferSize*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): cint =
  fcQAbstractAudioOutput_bufferSize(self.h)

proc setNotifyInterval*(self: gen_qaudiosystem_types.QAbstractAudioOutput, milliSeconds: cint): void =
  fcQAbstractAudioOutput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): cint =
  fcQAbstractAudioOutput_notifyInterval(self.h)

proc processedUSecs*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): clonglong =
  fcQAbstractAudioOutput_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): clonglong =
  fcQAbstractAudioOutput_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): cint =
  cint(fcQAbstractAudioOutput_error(self.h))

proc state*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): cint =
  cint(fcQAbstractAudioOutput_state(self.h))

proc setFormat*(self: gen_qaudiosystem_types.QAbstractAudioOutput, fmt: gen_qaudioformat_types.QAudioFormat): void =
  fcQAbstractAudioOutput_setFormat(self.h, fmt.h)

proc format*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAbstractAudioOutput_format(self.h))

proc setVolume*(self: gen_qaudiosystem_types.QAbstractAudioOutput, volume: float64): void =
  fcQAbstractAudioOutput_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): float64 =
  fcQAbstractAudioOutput_volume(self.h)

proc category*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): string =
  let v_ms = fcQAbstractAudioOutput_category(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: gen_qaudiosystem_types.QAbstractAudioOutput, category: string): void =
  fcQAbstractAudioOutput_setCategory(self.h, struct_miqt_string(data: category, len: csize_t(len(category))))

proc errorChanged*(self: gen_qaudiosystem_types.QAbstractAudioOutput, error: cint): void =
  fcQAbstractAudioOutput_errorChanged(self.h, cint(error))

type QAbstractAudioOutputerrorChangedSlot* = proc(error: cint)
proc miqt_exec_callback_cQAbstractAudioOutput_errorChanged(slot: int, error: cint) {.exportc: "miqt_exec_callback_QAbstractAudioOutput_errorChanged".} =
  let nimfunc = cast[ptr QAbstractAudioOutputerrorChangedSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerrorChanged*(self: gen_qaudiosystem_types.QAbstractAudioOutput, slot: QAbstractAudioOutputerrorChangedSlot) =
  var tmp = new QAbstractAudioOutputerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAudioOutput_connect_errorChanged(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qaudiosystem_types.QAbstractAudioOutput, state: cint): void =
  fcQAbstractAudioOutput_stateChanged(self.h, cint(state))

type QAbstractAudioOutputstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQAbstractAudioOutput_stateChanged(slot: int, state: cint) {.exportc: "miqt_exec_callback_QAbstractAudioOutput_stateChanged".} =
  let nimfunc = cast[ptr QAbstractAudioOutputstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qaudiosystem_types.QAbstractAudioOutput, slot: QAbstractAudioOutputstateChangedSlot) =
  var tmp = new QAbstractAudioOutputstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAudioOutput_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc notify*(self: gen_qaudiosystem_types.QAbstractAudioOutput, ): void =
  fcQAbstractAudioOutput_notify(self.h)

type QAbstractAudioOutputnotifySlot* = proc()
proc miqt_exec_callback_cQAbstractAudioOutput_notify(slot: int) {.exportc: "miqt_exec_callback_QAbstractAudioOutput_notify".} =
  let nimfunc = cast[ptr QAbstractAudioOutputnotifySlot](cast[pointer](slot))
  nimfunc[]()

proc onnotify*(self: gen_qaudiosystem_types.QAbstractAudioOutput, slot: QAbstractAudioOutputnotifySlot) =
  var tmp = new QAbstractAudioOutputnotifySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAudioOutput_connect_notify(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAudioOutput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAudioOutput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAudioOutput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAudioOutput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qaudiosystem_types.QAbstractAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAudioOutput_staticMetaObject())
proc delete*(self: gen_qaudiosystem_types.QAbstractAudioOutput) =
  fcQAbstractAudioOutput_delete(self.h)
proc metaObject*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAudioInput_metaObject(self.h))

proc metacast*(self: gen_qaudiosystem_types.QAbstractAudioInput, param1: cstring): pointer =
  fcQAbstractAudioInput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosystem_types.QAbstractAudioInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractAudioInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioInput, s: cstring): string =
  let v_ms = fcQAbstractAudioInput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioInput, s: cstring): string =
  let v_ms = fcQAbstractAudioInput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qaudiosystem_types.QAbstractAudioInput, device: gen_qiodevice_types.QIODevice): void =
  fcQAbstractAudioInput_start(self.h, device.h)

proc start*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAbstractAudioInput_start2(self.h))

proc stop*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): void =
  fcQAbstractAudioInput_stop(self.h)

proc reset*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): void =
  fcQAbstractAudioInput_reset(self.h)

proc suspend*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): void =
  fcQAbstractAudioInput_suspend(self.h)

proc resume*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): void =
  fcQAbstractAudioInput_resume(self.h)

proc bytesReady*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): cint =
  fcQAbstractAudioInput_bytesReady(self.h)

proc periodSize*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): cint =
  fcQAbstractAudioInput_periodSize(self.h)

proc setBufferSize*(self: gen_qaudiosystem_types.QAbstractAudioInput, value: cint): void =
  fcQAbstractAudioInput_setBufferSize(self.h, value)

proc bufferSize*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): cint =
  fcQAbstractAudioInput_bufferSize(self.h)

proc setNotifyInterval*(self: gen_qaudiosystem_types.QAbstractAudioInput, milliSeconds: cint): void =
  fcQAbstractAudioInput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): cint =
  fcQAbstractAudioInput_notifyInterval(self.h)

proc processedUSecs*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): clonglong =
  fcQAbstractAudioInput_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): clonglong =
  fcQAbstractAudioInput_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): cint =
  cint(fcQAbstractAudioInput_error(self.h))

proc state*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): cint =
  cint(fcQAbstractAudioInput_state(self.h))

proc setFormat*(self: gen_qaudiosystem_types.QAbstractAudioInput, fmt: gen_qaudioformat_types.QAudioFormat): void =
  fcQAbstractAudioInput_setFormat(self.h, fmt.h)

proc format*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAbstractAudioInput_format(self.h))

proc setVolume*(self: gen_qaudiosystem_types.QAbstractAudioInput, volume: float64): void =
  fcQAbstractAudioInput_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): float64 =
  fcQAbstractAudioInput_volume(self.h)

proc errorChanged*(self: gen_qaudiosystem_types.QAbstractAudioInput, error: cint): void =
  fcQAbstractAudioInput_errorChanged(self.h, cint(error))

type QAbstractAudioInputerrorChangedSlot* = proc(error: cint)
proc miqt_exec_callback_cQAbstractAudioInput_errorChanged(slot: int, error: cint) {.exportc: "miqt_exec_callback_QAbstractAudioInput_errorChanged".} =
  let nimfunc = cast[ptr QAbstractAudioInputerrorChangedSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerrorChanged*(self: gen_qaudiosystem_types.QAbstractAudioInput, slot: QAbstractAudioInputerrorChangedSlot) =
  var tmp = new QAbstractAudioInputerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAudioInput_connect_errorChanged(self.h, cast[int](addr tmp[]))

proc stateChanged*(self: gen_qaudiosystem_types.QAbstractAudioInput, state: cint): void =
  fcQAbstractAudioInput_stateChanged(self.h, cint(state))

type QAbstractAudioInputstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQAbstractAudioInput_stateChanged(slot: int, state: cint) {.exportc: "miqt_exec_callback_QAbstractAudioInput_stateChanged".} =
  let nimfunc = cast[ptr QAbstractAudioInputstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qaudiosystem_types.QAbstractAudioInput, slot: QAbstractAudioInputstateChangedSlot) =
  var tmp = new QAbstractAudioInputstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAudioInput_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc notify*(self: gen_qaudiosystem_types.QAbstractAudioInput, ): void =
  fcQAbstractAudioInput_notify(self.h)

type QAbstractAudioInputnotifySlot* = proc()
proc miqt_exec_callback_cQAbstractAudioInput_notify(slot: int) {.exportc: "miqt_exec_callback_QAbstractAudioInput_notify".} =
  let nimfunc = cast[ptr QAbstractAudioInputnotifySlot](cast[pointer](slot))
  nimfunc[]()

proc onnotify*(self: gen_qaudiosystem_types.QAbstractAudioInput, slot: QAbstractAudioInputnotifySlot) =
  var tmp = new QAbstractAudioInputnotifySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAudioInput_connect_notify(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioInput, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAudioInput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosystem_types.QAbstractAudioInput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAudioInput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioInput, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractAudioInput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiosystem_types.QAbstractAudioInput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractAudioInput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qaudiosystem_types.QAbstractAudioInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractAudioInput_staticMetaObject())
proc delete*(self: gen_qaudiosystem_types.QAbstractAudioInput) =
  fcQAbstractAudioInput_delete(self.h)
