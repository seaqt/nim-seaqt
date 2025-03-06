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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcameraexposure.cpp", cflags).}


type QCameraExposureFlashModeEnum* = distinct cint
template FlashAuto*(_: type QCameraExposureFlashModeEnum): untyped = 1
template FlashOff*(_: type QCameraExposureFlashModeEnum): untyped = 2
template FlashOn*(_: type QCameraExposureFlashModeEnum): untyped = 4
template FlashRedEyeReduction*(_: type QCameraExposureFlashModeEnum): untyped = 8
template FlashFill*(_: type QCameraExposureFlashModeEnum): untyped = 16
template FlashTorch*(_: type QCameraExposureFlashModeEnum): untyped = 32
template FlashVideoLight*(_: type QCameraExposureFlashModeEnum): untyped = 64
template FlashSlowSyncFrontCurtain*(_: type QCameraExposureFlashModeEnum): untyped = 128
template FlashSlowSyncRearCurtain*(_: type QCameraExposureFlashModeEnum): untyped = 256
template FlashManual*(_: type QCameraExposureFlashModeEnum): untyped = 512


type QCameraExposureExposureModeEnum* = distinct cint
template ExposureAuto*(_: type QCameraExposureExposureModeEnum): untyped = 0
template ExposureManual*(_: type QCameraExposureExposureModeEnum): untyped = 1
template ExposurePortrait*(_: type QCameraExposureExposureModeEnum): untyped = 2
template ExposureNight*(_: type QCameraExposureExposureModeEnum): untyped = 3
template ExposureBacklight*(_: type QCameraExposureExposureModeEnum): untyped = 4
template ExposureSpotlight*(_: type QCameraExposureExposureModeEnum): untyped = 5
template ExposureSports*(_: type QCameraExposureExposureModeEnum): untyped = 6
template ExposureSnow*(_: type QCameraExposureExposureModeEnum): untyped = 7
template ExposureBeach*(_: type QCameraExposureExposureModeEnum): untyped = 8
template ExposureLargeAperture*(_: type QCameraExposureExposureModeEnum): untyped = 9
template ExposureSmallAperture*(_: type QCameraExposureExposureModeEnum): untyped = 10
template ExposureAction*(_: type QCameraExposureExposureModeEnum): untyped = 11
template ExposureLandscape*(_: type QCameraExposureExposureModeEnum): untyped = 12
template ExposureNightPortrait*(_: type QCameraExposureExposureModeEnum): untyped = 13
template ExposureTheatre*(_: type QCameraExposureExposureModeEnum): untyped = 14
template ExposureSunset*(_: type QCameraExposureExposureModeEnum): untyped = 15
template ExposureSteadyPhoto*(_: type QCameraExposureExposureModeEnum): untyped = 16
template ExposureFireworks*(_: type QCameraExposureExposureModeEnum): untyped = 17
template ExposureParty*(_: type QCameraExposureExposureModeEnum): untyped = 18
template ExposureCandlelight*(_: type QCameraExposureExposureModeEnum): untyped = 19
template ExposureBarcode*(_: type QCameraExposureExposureModeEnum): untyped = 20
template ExposureModeVendor*(_: type QCameraExposureExposureModeEnum): untyped = 1000


type QCameraExposureMeteringModeEnum* = distinct cint
template MeteringMatrix*(_: type QCameraExposureMeteringModeEnum): untyped = 1
template MeteringAverage*(_: type QCameraExposureMeteringModeEnum): untyped = 2
template MeteringSpot*(_: type QCameraExposureMeteringModeEnum): untyped = 3


import ./gen_qcameraexposure_types
export gen_qcameraexposure_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types

type cQCameraExposure*{.exportc: "QCameraExposure", incompleteStruct.} = object

proc fcQCameraExposure_metaObject(self: pointer, ): pointer {.importc: "QCameraExposure_metaObject".}
proc fcQCameraExposure_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraExposure_metacast".}
proc fcQCameraExposure_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraExposure_metacall".}
proc fcQCameraExposure_tr(s: cstring): struct_miqt_string {.importc: "QCameraExposure_tr".}
proc fcQCameraExposure_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraExposure_trUtf8".}
proc fcQCameraExposure_isAvailable(self: pointer, ): bool {.importc: "QCameraExposure_isAvailable".}
proc fcQCameraExposure_flashMode(self: pointer, ): cint {.importc: "QCameraExposure_flashMode".}
proc fcQCameraExposure_isFlashModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraExposure_isFlashModeSupported".}
proc fcQCameraExposure_isFlashReady(self: pointer, ): bool {.importc: "QCameraExposure_isFlashReady".}
proc fcQCameraExposure_exposureMode(self: pointer, ): cint {.importc: "QCameraExposure_exposureMode".}
proc fcQCameraExposure_isExposureModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraExposure_isExposureModeSupported".}
proc fcQCameraExposure_exposureCompensation(self: pointer, ): float64 {.importc: "QCameraExposure_exposureCompensation".}
proc fcQCameraExposure_meteringMode(self: pointer, ): cint {.importc: "QCameraExposure_meteringMode".}
proc fcQCameraExposure_isMeteringModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraExposure_isMeteringModeSupported".}
proc fcQCameraExposure_spotMeteringPoint(self: pointer, ): pointer {.importc: "QCameraExposure_spotMeteringPoint".}
proc fcQCameraExposure_setSpotMeteringPoint(self: pointer, point: pointer): void {.importc: "QCameraExposure_setSpotMeteringPoint".}
proc fcQCameraExposure_isoSensitivity(self: pointer, ): cint {.importc: "QCameraExposure_isoSensitivity".}
proc fcQCameraExposure_aperture(self: pointer, ): float64 {.importc: "QCameraExposure_aperture".}
proc fcQCameraExposure_shutterSpeed(self: pointer, ): float64 {.importc: "QCameraExposure_shutterSpeed".}
proc fcQCameraExposure_requestedIsoSensitivity(self: pointer, ): cint {.importc: "QCameraExposure_requestedIsoSensitivity".}
proc fcQCameraExposure_requestedAperture(self: pointer, ): float64 {.importc: "QCameraExposure_requestedAperture".}
proc fcQCameraExposure_requestedShutterSpeed(self: pointer, ): float64 {.importc: "QCameraExposure_requestedShutterSpeed".}
proc fcQCameraExposure_supportedIsoSensitivities(self: pointer, ): struct_miqt_array {.importc: "QCameraExposure_supportedIsoSensitivities".}
proc fcQCameraExposure_supportedApertures(self: pointer, ): struct_miqt_array {.importc: "QCameraExposure_supportedApertures".}
proc fcQCameraExposure_supportedShutterSpeeds(self: pointer, ): struct_miqt_array {.importc: "QCameraExposure_supportedShutterSpeeds".}
proc fcQCameraExposure_setFlashMode(self: pointer, mode: cint): void {.importc: "QCameraExposure_setFlashMode".}
proc fcQCameraExposure_setExposureMode(self: pointer, mode: cint): void {.importc: "QCameraExposure_setExposureMode".}
proc fcQCameraExposure_setMeteringMode(self: pointer, mode: cint): void {.importc: "QCameraExposure_setMeteringMode".}
proc fcQCameraExposure_setExposureCompensation(self: pointer, ev: float64): void {.importc: "QCameraExposure_setExposureCompensation".}
proc fcQCameraExposure_setManualIsoSensitivity(self: pointer, iso: cint): void {.importc: "QCameraExposure_setManualIsoSensitivity".}
proc fcQCameraExposure_setAutoIsoSensitivity(self: pointer, ): void {.importc: "QCameraExposure_setAutoIsoSensitivity".}
proc fcQCameraExposure_setManualAperture(self: pointer, aperture: float64): void {.importc: "QCameraExposure_setManualAperture".}
proc fcQCameraExposure_setAutoAperture(self: pointer, ): void {.importc: "QCameraExposure_setAutoAperture".}
proc fcQCameraExposure_setManualShutterSpeed(self: pointer, seconds: float64): void {.importc: "QCameraExposure_setManualShutterSpeed".}
proc fcQCameraExposure_setAutoShutterSpeed(self: pointer, ): void {.importc: "QCameraExposure_setAutoShutterSpeed".}
proc fcQCameraExposure_flashReady(self: pointer, param1: bool): void {.importc: "QCameraExposure_flashReady".}
proc fcQCameraExposure_connect_flashReady(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_flashReady".}
proc fcQCameraExposure_apertureChanged(self: pointer, param1: float64): void {.importc: "QCameraExposure_apertureChanged".}
proc fcQCameraExposure_connect_apertureChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_apertureChanged".}
proc fcQCameraExposure_apertureRangeChanged(self: pointer, ): void {.importc: "QCameraExposure_apertureRangeChanged".}
proc fcQCameraExposure_connect_apertureRangeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_apertureRangeChanged".}
proc fcQCameraExposure_shutterSpeedChanged(self: pointer, speed: float64): void {.importc: "QCameraExposure_shutterSpeedChanged".}
proc fcQCameraExposure_connect_shutterSpeedChanged(self: pointer, slot: int, callback: proc (slot: int, speed: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_shutterSpeedChanged".}
proc fcQCameraExposure_shutterSpeedRangeChanged(self: pointer, ): void {.importc: "QCameraExposure_shutterSpeedRangeChanged".}
proc fcQCameraExposure_connect_shutterSpeedRangeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_shutterSpeedRangeChanged".}
proc fcQCameraExposure_isoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCameraExposure_isoSensitivityChanged".}
proc fcQCameraExposure_connect_isoSensitivityChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_isoSensitivityChanged".}
proc fcQCameraExposure_exposureCompensationChanged(self: pointer, param1: float64): void {.importc: "QCameraExposure_exposureCompensationChanged".}
proc fcQCameraExposure_connect_exposureCompensationChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraExposure_connect_exposureCompensationChanged".}
proc fcQCameraExposure_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraExposure_tr2".}
proc fcQCameraExposure_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraExposure_tr3".}
proc fcQCameraExposure_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraExposure_trUtf82".}
proc fcQCameraExposure_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraExposure_trUtf83".}
proc fcQCameraExposure_supportedIsoSensitivities1(self: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraExposure_supportedIsoSensitivities1".}
proc fcQCameraExposure_supportedApertures1(self: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraExposure_supportedApertures1".}
proc fcQCameraExposure_supportedShutterSpeeds1(self: pointer, continuous: ptr bool): struct_miqt_array {.importc: "QCameraExposure_supportedShutterSpeeds1".}
proc fcQCameraExposure_protectedbase_sender(self: pointer, ): pointer {.importc: "QCameraExposure_protectedbase_sender".}
proc fcQCameraExposure_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCameraExposure_protectedbase_senderSignalIndex".}
proc fcQCameraExposure_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraExposure_protectedbase_receivers".}
proc fcQCameraExposure_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraExposure_protectedbase_isSignalConnected".}
proc fcQCameraExposure_staticMetaObject(): pointer {.importc: "QCameraExposure_staticMetaObject".}

proc metaObject*(self: gen_qcameraexposure_types.QCameraExposure, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraExposure_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcameraexposure_types.QCameraExposure, param1: cstring): pointer =
  fcQCameraExposure_metacast(self.h, param1)

proc metacall*(self: gen_qcameraexposure_types.QCameraExposure, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraExposure_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraexposure_types.QCameraExposure, s: cstring): string =
  let v_ms = fcQCameraExposure_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraexposure_types.QCameraExposure, s: cstring): string =
  let v_ms = fcQCameraExposure_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcameraexposure_types.QCameraExposure, ): bool =
  fcQCameraExposure_isAvailable(self.h)

proc flashMode*(self: gen_qcameraexposure_types.QCameraExposure, ): cint =
  cint(fcQCameraExposure_flashMode(self.h))

proc isFlashModeSupported*(self: gen_qcameraexposure_types.QCameraExposure, mode: cint): bool =
  fcQCameraExposure_isFlashModeSupported(self.h, cint(mode))

proc isFlashReady*(self: gen_qcameraexposure_types.QCameraExposure, ): bool =
  fcQCameraExposure_isFlashReady(self.h)

proc exposureMode*(self: gen_qcameraexposure_types.QCameraExposure, ): cint =
  cint(fcQCameraExposure_exposureMode(self.h))

proc isExposureModeSupported*(self: gen_qcameraexposure_types.QCameraExposure, mode: cint): bool =
  fcQCameraExposure_isExposureModeSupported(self.h, cint(mode))

proc exposureCompensation*(self: gen_qcameraexposure_types.QCameraExposure, ): float64 =
  fcQCameraExposure_exposureCompensation(self.h)

proc meteringMode*(self: gen_qcameraexposure_types.QCameraExposure, ): cint =
  cint(fcQCameraExposure_meteringMode(self.h))

proc isMeteringModeSupported*(self: gen_qcameraexposure_types.QCameraExposure, mode: cint): bool =
  fcQCameraExposure_isMeteringModeSupported(self.h, cint(mode))

proc spotMeteringPoint*(self: gen_qcameraexposure_types.QCameraExposure, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQCameraExposure_spotMeteringPoint(self.h), owned: true)

proc setSpotMeteringPoint*(self: gen_qcameraexposure_types.QCameraExposure, point: gen_qpoint_types.QPointF): void =
  fcQCameraExposure_setSpotMeteringPoint(self.h, point.h)

proc isoSensitivity*(self: gen_qcameraexposure_types.QCameraExposure, ): cint =
  fcQCameraExposure_isoSensitivity(self.h)

proc aperture*(self: gen_qcameraexposure_types.QCameraExposure, ): float64 =
  fcQCameraExposure_aperture(self.h)

proc shutterSpeed*(self: gen_qcameraexposure_types.QCameraExposure, ): float64 =
  fcQCameraExposure_shutterSpeed(self.h)

proc requestedIsoSensitivity*(self: gen_qcameraexposure_types.QCameraExposure, ): cint =
  fcQCameraExposure_requestedIsoSensitivity(self.h)

proc requestedAperture*(self: gen_qcameraexposure_types.QCameraExposure, ): float64 =
  fcQCameraExposure_requestedAperture(self.h)

proc requestedShutterSpeed*(self: gen_qcameraexposure_types.QCameraExposure, ): float64 =
  fcQCameraExposure_requestedShutterSpeed(self.h)

proc supportedIsoSensitivities*(self: gen_qcameraexposure_types.QCameraExposure, ): seq[cint] =
  var v_ma = fcQCameraExposure_supportedIsoSensitivities(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedApertures*(self: gen_qcameraexposure_types.QCameraExposure, ): seq[float64] =
  var v_ma = fcQCameraExposure_supportedApertures(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedShutterSpeeds*(self: gen_qcameraexposure_types.QCameraExposure, ): seq[float64] =
  var v_ma = fcQCameraExposure_supportedShutterSpeeds(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setFlashMode*(self: gen_qcameraexposure_types.QCameraExposure, mode: cint): void =
  fcQCameraExposure_setFlashMode(self.h, cint(mode))

proc setExposureMode*(self: gen_qcameraexposure_types.QCameraExposure, mode: cint): void =
  fcQCameraExposure_setExposureMode(self.h, cint(mode))

proc setMeteringMode*(self: gen_qcameraexposure_types.QCameraExposure, mode: cint): void =
  fcQCameraExposure_setMeteringMode(self.h, cint(mode))

proc setExposureCompensation*(self: gen_qcameraexposure_types.QCameraExposure, ev: float64): void =
  fcQCameraExposure_setExposureCompensation(self.h, ev)

proc setManualIsoSensitivity*(self: gen_qcameraexposure_types.QCameraExposure, iso: cint): void =
  fcQCameraExposure_setManualIsoSensitivity(self.h, iso)

proc setAutoIsoSensitivity*(self: gen_qcameraexposure_types.QCameraExposure, ): void =
  fcQCameraExposure_setAutoIsoSensitivity(self.h)

proc setManualAperture*(self: gen_qcameraexposure_types.QCameraExposure, aperture: float64): void =
  fcQCameraExposure_setManualAperture(self.h, aperture)

proc setAutoAperture*(self: gen_qcameraexposure_types.QCameraExposure, ): void =
  fcQCameraExposure_setAutoAperture(self.h)

proc setManualShutterSpeed*(self: gen_qcameraexposure_types.QCameraExposure, seconds: float64): void =
  fcQCameraExposure_setManualShutterSpeed(self.h, seconds)

proc setAutoShutterSpeed*(self: gen_qcameraexposure_types.QCameraExposure, ): void =
  fcQCameraExposure_setAutoShutterSpeed(self.h)

proc flashReady*(self: gen_qcameraexposure_types.QCameraExposure, param1: bool): void =
  fcQCameraExposure_flashReady(self.h, param1)

type QCameraExposureflashReadySlot* = proc(param1: bool)
proc miqt_exec_callback_cQCameraExposure_flashReady(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureflashReadySlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraExposure_flashReady_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureflashReadySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflashReady*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureflashReadySlot) =
  var tmp = new QCameraExposureflashReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_flashReady(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_flashReady, miqt_exec_callback_cQCameraExposure_flashReady_release)

proc apertureChanged*(self: gen_qcameraexposure_types.QCameraExposure, param1: float64): void =
  fcQCameraExposure_apertureChanged(self.h, param1)

type QCameraExposureapertureChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQCameraExposure_apertureChanged(slot: int, param1: float64) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureapertureChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraExposure_apertureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureapertureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapertureChanged*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureapertureChangedSlot) =
  var tmp = new QCameraExposureapertureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_apertureChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_apertureChanged, miqt_exec_callback_cQCameraExposure_apertureChanged_release)

proc apertureRangeChanged*(self: gen_qcameraexposure_types.QCameraExposure, ): void =
  fcQCameraExposure_apertureRangeChanged(self.h)

type QCameraExposureapertureRangeChangedSlot* = proc()
proc miqt_exec_callback_cQCameraExposure_apertureRangeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureapertureRangeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCameraExposure_apertureRangeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureapertureRangeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapertureRangeChanged*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureapertureRangeChangedSlot) =
  var tmp = new QCameraExposureapertureRangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_apertureRangeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_apertureRangeChanged, miqt_exec_callback_cQCameraExposure_apertureRangeChanged_release)

proc shutterSpeedChanged*(self: gen_qcameraexposure_types.QCameraExposure, speed: float64): void =
  fcQCameraExposure_shutterSpeedChanged(self.h, speed)

type QCameraExposureshutterSpeedChangedSlot* = proc(speed: float64)
proc miqt_exec_callback_cQCameraExposure_shutterSpeedChanged(slot: int, speed: float64) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureshutterSpeedChangedSlot](cast[pointer](slot))
  let slotval1 = speed

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraExposure_shutterSpeedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureshutterSpeedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onshutterSpeedChanged*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureshutterSpeedChangedSlot) =
  var tmp = new QCameraExposureshutterSpeedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_shutterSpeedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_shutterSpeedChanged, miqt_exec_callback_cQCameraExposure_shutterSpeedChanged_release)

proc shutterSpeedRangeChanged*(self: gen_qcameraexposure_types.QCameraExposure, ): void =
  fcQCameraExposure_shutterSpeedRangeChanged(self.h)

type QCameraExposureshutterSpeedRangeChangedSlot* = proc()
proc miqt_exec_callback_cQCameraExposure_shutterSpeedRangeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureshutterSpeedRangeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCameraExposure_shutterSpeedRangeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureshutterSpeedRangeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onshutterSpeedRangeChanged*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureshutterSpeedRangeChangedSlot) =
  var tmp = new QCameraExposureshutterSpeedRangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_shutterSpeedRangeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_shutterSpeedRangeChanged, miqt_exec_callback_cQCameraExposure_shutterSpeedRangeChanged_release)

proc isoSensitivityChanged*(self: gen_qcameraexposure_types.QCameraExposure, param1: cint): void =
  fcQCameraExposure_isoSensitivityChanged(self.h, param1)

type QCameraExposureisoSensitivityChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCameraExposure_isoSensitivityChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureisoSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraExposure_isoSensitivityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureisoSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onisoSensitivityChanged*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureisoSensitivityChangedSlot) =
  var tmp = new QCameraExposureisoSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_isoSensitivityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_isoSensitivityChanged, miqt_exec_callback_cQCameraExposure_isoSensitivityChanged_release)

proc exposureCompensationChanged*(self: gen_qcameraexposure_types.QCameraExposure, param1: float64): void =
  fcQCameraExposure_exposureCompensationChanged(self.h, param1)

type QCameraExposureexposureCompensationChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQCameraExposure_exposureCompensationChanged(slot: int, param1: float64) {.cdecl.} =
  let nimfunc = cast[ptr QCameraExposureexposureCompensationChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraExposure_exposureCompensationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraExposureexposureCompensationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onexposureCompensationChanged*(self: gen_qcameraexposure_types.QCameraExposure, slot: QCameraExposureexposureCompensationChangedSlot) =
  var tmp = new QCameraExposureexposureCompensationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraExposure_connect_exposureCompensationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraExposure_exposureCompensationChanged, miqt_exec_callback_cQCameraExposure_exposureCompensationChanged_release)

proc tr*(_: type gen_qcameraexposure_types.QCameraExposure, s: cstring, c: cstring): string =
  let v_ms = fcQCameraExposure_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraexposure_types.QCameraExposure, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraExposure_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraexposure_types.QCameraExposure, s: cstring, c: cstring): string =
  let v_ms = fcQCameraExposure_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraexposure_types.QCameraExposure, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraExposure_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedIsoSensitivities*(self: gen_qcameraexposure_types.QCameraExposure, continuous: ptr bool): seq[cint] =
  var v_ma = fcQCameraExposure_supportedIsoSensitivities1(self.h, continuous)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedApertures*(self: gen_qcameraexposure_types.QCameraExposure, continuous: ptr bool): seq[float64] =
  var v_ma = fcQCameraExposure_supportedApertures1(self.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc supportedShutterSpeeds*(self: gen_qcameraexposure_types.QCameraExposure, continuous: ptr bool): seq[float64] =
  var v_ma = fcQCameraExposure_supportedShutterSpeeds1(self.h, continuous)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qcameraexposure_types.QCameraExposure, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraExposure_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcameraexposure_types.QCameraExposure, ): cint =
  fcQCameraExposure_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameraexposure_types.QCameraExposure, signal: cstring): cint =
  fcQCameraExposure_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameraexposure_types.QCameraExposure, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraExposure_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcameraexposure_types.QCameraExposure): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraExposure_staticMetaObject())
