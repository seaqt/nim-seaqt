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
{.compile("gen_qcameraimageprocessing.cpp", cflags).}


type QCameraImageProcessingWhiteBalanceModeEnum* = distinct cint
template WhiteBalanceAuto*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 0
template WhiteBalanceManual*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 1
template WhiteBalanceSunlight*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 2
template WhiteBalanceCloudy*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 3
template WhiteBalanceShade*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 4
template WhiteBalanceTungsten*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 5
template WhiteBalanceFluorescent*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 6
template WhiteBalanceFlash*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 7
template WhiteBalanceSunset*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 8
template WhiteBalanceVendor*(_: type QCameraImageProcessingWhiteBalanceModeEnum): untyped = 1000


type QCameraImageProcessingColorFilterEnum* = distinct cint
template ColorFilterNone*(_: type QCameraImageProcessingColorFilterEnum): untyped = 0
template ColorFilterGrayscale*(_: type QCameraImageProcessingColorFilterEnum): untyped = 1
template ColorFilterNegative*(_: type QCameraImageProcessingColorFilterEnum): untyped = 2
template ColorFilterSolarize*(_: type QCameraImageProcessingColorFilterEnum): untyped = 3
template ColorFilterSepia*(_: type QCameraImageProcessingColorFilterEnum): untyped = 4
template ColorFilterPosterize*(_: type QCameraImageProcessingColorFilterEnum): untyped = 5
template ColorFilterWhiteboard*(_: type QCameraImageProcessingColorFilterEnum): untyped = 6
template ColorFilterBlackboard*(_: type QCameraImageProcessingColorFilterEnum): untyped = 7
template ColorFilterAqua*(_: type QCameraImageProcessingColorFilterEnum): untyped = 8
template ColorFilterVendor*(_: type QCameraImageProcessingColorFilterEnum): untyped = 1000


import ./gen_qcameraimageprocessing_types
export gen_qcameraimageprocessing_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQCameraImageProcessing*{.exportc: "QCameraImageProcessing", incompleteStruct.} = object

proc fcQCameraImageProcessing_metaObject(self: pointer, ): pointer {.importc: "QCameraImageProcessing_metaObject".}
proc fcQCameraImageProcessing_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageProcessing_metacast".}
proc fcQCameraImageProcessing_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageProcessing_metacall".}
proc fcQCameraImageProcessing_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_tr".}
proc fcQCameraImageProcessing_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_trUtf8".}
proc fcQCameraImageProcessing_isAvailable(self: pointer, ): bool {.importc: "QCameraImageProcessing_isAvailable".}
proc fcQCameraImageProcessing_whiteBalanceMode(self: pointer, ): cint {.importc: "QCameraImageProcessing_whiteBalanceMode".}
proc fcQCameraImageProcessing_setWhiteBalanceMode(self: pointer, mode: cint): void {.importc: "QCameraImageProcessing_setWhiteBalanceMode".}
proc fcQCameraImageProcessing_isWhiteBalanceModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraImageProcessing_isWhiteBalanceModeSupported".}
proc fcQCameraImageProcessing_manualWhiteBalance(self: pointer, ): float64 {.importc: "QCameraImageProcessing_manualWhiteBalance".}
proc fcQCameraImageProcessing_setManualWhiteBalance(self: pointer, colorTemperature: float64): void {.importc: "QCameraImageProcessing_setManualWhiteBalance".}
proc fcQCameraImageProcessing_brightness(self: pointer, ): float64 {.importc: "QCameraImageProcessing_brightness".}
proc fcQCameraImageProcessing_setBrightness(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setBrightness".}
proc fcQCameraImageProcessing_contrast(self: pointer, ): float64 {.importc: "QCameraImageProcessing_contrast".}
proc fcQCameraImageProcessing_setContrast(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setContrast".}
proc fcQCameraImageProcessing_saturation(self: pointer, ): float64 {.importc: "QCameraImageProcessing_saturation".}
proc fcQCameraImageProcessing_setSaturation(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setSaturation".}
proc fcQCameraImageProcessing_sharpeningLevel(self: pointer, ): float64 {.importc: "QCameraImageProcessing_sharpeningLevel".}
proc fcQCameraImageProcessing_setSharpeningLevel(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setSharpeningLevel".}
proc fcQCameraImageProcessing_denoisingLevel(self: pointer, ): float64 {.importc: "QCameraImageProcessing_denoisingLevel".}
proc fcQCameraImageProcessing_setDenoisingLevel(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setDenoisingLevel".}
proc fcQCameraImageProcessing_colorFilter(self: pointer, ): cint {.importc: "QCameraImageProcessing_colorFilter".}
proc fcQCameraImageProcessing_setColorFilter(self: pointer, filter: cint): void {.importc: "QCameraImageProcessing_setColorFilter".}
proc fcQCameraImageProcessing_isColorFilterSupported(self: pointer, filter: cint): bool {.importc: "QCameraImageProcessing_isColorFilterSupported".}
proc fcQCameraImageProcessing_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_tr2".}
proc fcQCameraImageProcessing_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessing_tr3".}
proc fcQCameraImageProcessing_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_trUtf82".}
proc fcQCameraImageProcessing_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessing_trUtf83".}
proc fcQCameraImageProcessing_protectedbase_sender(self: pointer, ): pointer {.importc: "QCameraImageProcessing_protectedbase_sender".}
proc fcQCameraImageProcessing_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCameraImageProcessing_protectedbase_senderSignalIndex".}
proc fcQCameraImageProcessing_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraImageProcessing_protectedbase_receivers".}
proc fcQCameraImageProcessing_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraImageProcessing_protectedbase_isSignalConnected".}
proc fcQCameraImageProcessing_staticMetaObject(): pointer {.importc: "QCameraImageProcessing_staticMetaObject".}

proc metaObject*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageProcessing_metaObject(self.h))

proc metacast*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, param1: cstring): pointer =
  fcQCameraImageProcessing_metacast(self.h, param1)

proc metacall*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageProcessing_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing, s: cstring): string =
  let v_ms = fcQCameraImageProcessing_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing, s: cstring): string =
  let v_ms = fcQCameraImageProcessing_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): bool =
  fcQCameraImageProcessing_isAvailable(self.h)

proc whiteBalanceMode*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): cint =
  cint(fcQCameraImageProcessing_whiteBalanceMode(self.h))

proc setWhiteBalanceMode*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, mode: cint): void =
  fcQCameraImageProcessing_setWhiteBalanceMode(self.h, cint(mode))

proc isWhiteBalanceModeSupported*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, mode: cint): bool =
  fcQCameraImageProcessing_isWhiteBalanceModeSupported(self.h, cint(mode))

proc manualWhiteBalance*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): float64 =
  fcQCameraImageProcessing_manualWhiteBalance(self.h)

proc setManualWhiteBalance*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, colorTemperature: float64): void =
  fcQCameraImageProcessing_setManualWhiteBalance(self.h, colorTemperature)

proc brightness*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): float64 =
  fcQCameraImageProcessing_brightness(self.h)

proc setBrightness*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, value: float64): void =
  fcQCameraImageProcessing_setBrightness(self.h, value)

proc contrast*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): float64 =
  fcQCameraImageProcessing_contrast(self.h)

proc setContrast*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, value: float64): void =
  fcQCameraImageProcessing_setContrast(self.h, value)

proc saturation*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): float64 =
  fcQCameraImageProcessing_saturation(self.h)

proc setSaturation*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, value: float64): void =
  fcQCameraImageProcessing_setSaturation(self.h, value)

proc sharpeningLevel*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): float64 =
  fcQCameraImageProcessing_sharpeningLevel(self.h)

proc setSharpeningLevel*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, value: float64): void =
  fcQCameraImageProcessing_setSharpeningLevel(self.h, value)

proc denoisingLevel*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): float64 =
  fcQCameraImageProcessing_denoisingLevel(self.h)

proc setDenoisingLevel*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, value: float64): void =
  fcQCameraImageProcessing_setDenoisingLevel(self.h, value)

proc colorFilter*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): cint =
  cint(fcQCameraImageProcessing_colorFilter(self.h))

proc setColorFilter*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, filter: cint): void =
  fcQCameraImageProcessing_setColorFilter(self.h, cint(filter))

proc isColorFilterSupported*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, filter: cint): bool =
  fcQCameraImageProcessing_isColorFilterSupported(self.h, cint(filter))

proc tr*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageProcessing_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageProcessing_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageProcessing_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageProcessing_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraImageProcessing_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, ): cint =
  fcQCameraImageProcessing_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, signal: cstring): cint =
  fcQCameraImageProcessing_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameraimageprocessing_types.QCameraImageProcessing, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraImageProcessing_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcameraimageprocessing_types.QCameraImageProcessing): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageProcessing_staticMetaObject())
