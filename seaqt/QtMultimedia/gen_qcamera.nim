import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qcamera.cpp", cflags).}


type QCameraErrorEnum* = distinct cint
template NoError*(_: type QCameraErrorEnum): untyped = 0
template CameraError*(_: type QCameraErrorEnum): untyped = 1


type QCameraFocusModeEnum* = distinct cint
template FocusModeAuto*(_: type QCameraFocusModeEnum): untyped = 0
template FocusModeAutoNear*(_: type QCameraFocusModeEnum): untyped = 1
template FocusModeAutoFar*(_: type QCameraFocusModeEnum): untyped = 2
template FocusModeHyperfocal*(_: type QCameraFocusModeEnum): untyped = 3
template FocusModeInfinity*(_: type QCameraFocusModeEnum): untyped = 4
template FocusModeManual*(_: type QCameraFocusModeEnum): untyped = 5


type QCameraFlashModeEnum* = distinct cint
template FlashOff*(_: type QCameraFlashModeEnum): untyped = 0
template FlashOn*(_: type QCameraFlashModeEnum): untyped = 1
template FlashAuto*(_: type QCameraFlashModeEnum): untyped = 2


type QCameraTorchModeEnum* = distinct cint
template TorchOff*(_: type QCameraTorchModeEnum): untyped = 0
template TorchOn*(_: type QCameraTorchModeEnum): untyped = 1
template TorchAuto*(_: type QCameraTorchModeEnum): untyped = 2


type QCameraExposureModeEnum* = distinct cint
template ExposureAuto*(_: type QCameraExposureModeEnum): untyped = 0
template ExposureManual*(_: type QCameraExposureModeEnum): untyped = 1
template ExposurePortrait*(_: type QCameraExposureModeEnum): untyped = 2
template ExposureNight*(_: type QCameraExposureModeEnum): untyped = 3
template ExposureSports*(_: type QCameraExposureModeEnum): untyped = 4
template ExposureSnow*(_: type QCameraExposureModeEnum): untyped = 5
template ExposureBeach*(_: type QCameraExposureModeEnum): untyped = 6
template ExposureAction*(_: type QCameraExposureModeEnum): untyped = 7
template ExposureLandscape*(_: type QCameraExposureModeEnum): untyped = 8
template ExposureNightPortrait*(_: type QCameraExposureModeEnum): untyped = 9
template ExposureTheatre*(_: type QCameraExposureModeEnum): untyped = 10
template ExposureSunset*(_: type QCameraExposureModeEnum): untyped = 11
template ExposureSteadyPhoto*(_: type QCameraExposureModeEnum): untyped = 12
template ExposureFireworks*(_: type QCameraExposureModeEnum): untyped = 13
template ExposureParty*(_: type QCameraExposureModeEnum): untyped = 14
template ExposureCandlelight*(_: type QCameraExposureModeEnum): untyped = 15
template ExposureBarcode*(_: type QCameraExposureModeEnum): untyped = 16


type QCameraWhiteBalanceModeEnum* = distinct cint
template WhiteBalanceAuto*(_: type QCameraWhiteBalanceModeEnum): untyped = 0
template WhiteBalanceManual*(_: type QCameraWhiteBalanceModeEnum): untyped = 1
template WhiteBalanceSunlight*(_: type QCameraWhiteBalanceModeEnum): untyped = 2
template WhiteBalanceCloudy*(_: type QCameraWhiteBalanceModeEnum): untyped = 3
template WhiteBalanceShade*(_: type QCameraWhiteBalanceModeEnum): untyped = 4
template WhiteBalanceTungsten*(_: type QCameraWhiteBalanceModeEnum): untyped = 5
template WhiteBalanceFluorescent*(_: type QCameraWhiteBalanceModeEnum): untyped = 6
template WhiteBalanceFlash*(_: type QCameraWhiteBalanceModeEnum): untyped = 7
template WhiteBalanceSunset*(_: type QCameraWhiteBalanceModeEnum): untyped = 8


type QCameraFeatureEnum* = distinct cint
template ColorTemperature*(_: type QCameraFeatureEnum): untyped = 1
template ExposureCompensation*(_: type QCameraFeatureEnum): untyped = 2
template IsoSensitivity*(_: type QCameraFeatureEnum): untyped = 4
template ManualExposureTime*(_: type QCameraFeatureEnum): untyped = 8
template CustomFocusPoint*(_: type QCameraFeatureEnum): untyped = 16
template FocusDistance*(_: type QCameraFeatureEnum): untyped = 32


import ./gen_qcamera_types
export gen_qcamera_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qcameradevice_types,
  ./gen_qmediacapturesession_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qcameradevice_types,
  gen_qmediacapturesession_types

type cQCamera*{.exportc: "QCamera", incompleteStruct.} = object

proc fcQCamera_new(): ptr cQCamera {.importc: "QCamera_new".}
proc fcQCamera_new2(cameraDevice: pointer): ptr cQCamera {.importc: "QCamera_new2".}
proc fcQCamera_new3(position: cint): ptr cQCamera {.importc: "QCamera_new3".}
proc fcQCamera_new4(parent: pointer): ptr cQCamera {.importc: "QCamera_new4".}
proc fcQCamera_new5(cameraDevice: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new5".}
proc fcQCamera_new6(position: cint, parent: pointer): ptr cQCamera {.importc: "QCamera_new6".}
proc fcQCamera_metaObject(self: pointer, ): pointer {.importc: "QCamera_metaObject".}
proc fcQCamera_metacast(self: pointer, param1: cstring): pointer {.importc: "QCamera_metacast".}
proc fcQCamera_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCamera_metacall".}
proc fcQCamera_tr(s: cstring): struct_miqt_string {.importc: "QCamera_tr".}
proc fcQCamera_isAvailable(self: pointer, ): bool {.importc: "QCamera_isAvailable".}
proc fcQCamera_isActive(self: pointer, ): bool {.importc: "QCamera_isActive".}
proc fcQCamera_captureSession(self: pointer, ): pointer {.importc: "QCamera_captureSession".}
proc fcQCamera_cameraDevice(self: pointer, ): pointer {.importc: "QCamera_cameraDevice".}
proc fcQCamera_setCameraDevice(self: pointer, cameraDevice: pointer): void {.importc: "QCamera_setCameraDevice".}
proc fcQCamera_cameraFormat(self: pointer, ): pointer {.importc: "QCamera_cameraFormat".}
proc fcQCamera_setCameraFormat(self: pointer, format: pointer): void {.importc: "QCamera_setCameraFormat".}
proc fcQCamera_error(self: pointer, ): cint {.importc: "QCamera_error".}
proc fcQCamera_errorString(self: pointer, ): struct_miqt_string {.importc: "QCamera_errorString".}
proc fcQCamera_supportedFeatures(self: pointer, ): cint {.importc: "QCamera_supportedFeatures".}
proc fcQCamera_focusMode(self: pointer, ): cint {.importc: "QCamera_focusMode".}
proc fcQCamera_setFocusMode(self: pointer, mode: cint): void {.importc: "QCamera_setFocusMode".}
proc fcQCamera_isFocusModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isFocusModeSupported".}
proc fcQCamera_focusPoint(self: pointer, ): pointer {.importc: "QCamera_focusPoint".}
proc fcQCamera_customFocusPoint(self: pointer, ): pointer {.importc: "QCamera_customFocusPoint".}
proc fcQCamera_setCustomFocusPoint(self: pointer, point: pointer): void {.importc: "QCamera_setCustomFocusPoint".}
proc fcQCamera_setFocusDistance(self: pointer, d: float32): void {.importc: "QCamera_setFocusDistance".}
proc fcQCamera_focusDistance(self: pointer, ): float32 {.importc: "QCamera_focusDistance".}
proc fcQCamera_minimumZoomFactor(self: pointer, ): float32 {.importc: "QCamera_minimumZoomFactor".}
proc fcQCamera_maximumZoomFactor(self: pointer, ): float32 {.importc: "QCamera_maximumZoomFactor".}
proc fcQCamera_zoomFactor(self: pointer, ): float32 {.importc: "QCamera_zoomFactor".}
proc fcQCamera_setZoomFactor(self: pointer, factor: float32): void {.importc: "QCamera_setZoomFactor".}
proc fcQCamera_flashMode(self: pointer, ): cint {.importc: "QCamera_flashMode".}
proc fcQCamera_isFlashModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isFlashModeSupported".}
proc fcQCamera_isFlashReady(self: pointer, ): bool {.importc: "QCamera_isFlashReady".}
proc fcQCamera_torchMode(self: pointer, ): cint {.importc: "QCamera_torchMode".}
proc fcQCamera_isTorchModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isTorchModeSupported".}
proc fcQCamera_exposureMode(self: pointer, ): cint {.importc: "QCamera_exposureMode".}
proc fcQCamera_isExposureModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isExposureModeSupported".}
proc fcQCamera_exposureCompensation(self: pointer, ): float32 {.importc: "QCamera_exposureCompensation".}
proc fcQCamera_isoSensitivity(self: pointer, ): cint {.importc: "QCamera_isoSensitivity".}
proc fcQCamera_manualIsoSensitivity(self: pointer, ): cint {.importc: "QCamera_manualIsoSensitivity".}
proc fcQCamera_exposureTime(self: pointer, ): float32 {.importc: "QCamera_exposureTime".}
proc fcQCamera_manualExposureTime(self: pointer, ): float32 {.importc: "QCamera_manualExposureTime".}
proc fcQCamera_minimumIsoSensitivity(self: pointer, ): cint {.importc: "QCamera_minimumIsoSensitivity".}
proc fcQCamera_maximumIsoSensitivity(self: pointer, ): cint {.importc: "QCamera_maximumIsoSensitivity".}
proc fcQCamera_minimumExposureTime(self: pointer, ): float32 {.importc: "QCamera_minimumExposureTime".}
proc fcQCamera_maximumExposureTime(self: pointer, ): float32 {.importc: "QCamera_maximumExposureTime".}
proc fcQCamera_whiteBalanceMode(self: pointer, ): cint {.importc: "QCamera_whiteBalanceMode".}
proc fcQCamera_isWhiteBalanceModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isWhiteBalanceModeSupported".}
proc fcQCamera_colorTemperature(self: pointer, ): cint {.importc: "QCamera_colorTemperature".}
proc fcQCamera_setActive(self: pointer, active: bool): void {.importc: "QCamera_setActive".}
proc fcQCamera_start(self: pointer, ): void {.importc: "QCamera_start".}
proc fcQCamera_stop(self: pointer, ): void {.importc: "QCamera_stop".}
proc fcQCamera_zoomTo(self: pointer, zoom: float32, rate: float32): void {.importc: "QCamera_zoomTo".}
proc fcQCamera_setFlashMode(self: pointer, mode: cint): void {.importc: "QCamera_setFlashMode".}
proc fcQCamera_setTorchMode(self: pointer, mode: cint): void {.importc: "QCamera_setTorchMode".}
proc fcQCamera_setExposureMode(self: pointer, mode: cint): void {.importc: "QCamera_setExposureMode".}
proc fcQCamera_setExposureCompensation(self: pointer, ev: float32): void {.importc: "QCamera_setExposureCompensation".}
proc fcQCamera_setManualIsoSensitivity(self: pointer, iso: cint): void {.importc: "QCamera_setManualIsoSensitivity".}
proc fcQCamera_setAutoIsoSensitivity(self: pointer, ): void {.importc: "QCamera_setAutoIsoSensitivity".}
proc fcQCamera_setManualExposureTime(self: pointer, seconds: float32): void {.importc: "QCamera_setManualExposureTime".}
proc fcQCamera_setAutoExposureTime(self: pointer, ): void {.importc: "QCamera_setAutoExposureTime".}
proc fcQCamera_setWhiteBalanceMode(self: pointer, mode: cint): void {.importc: "QCamera_setWhiteBalanceMode".}
proc fcQCamera_setColorTemperature(self: pointer, colorTemperature: cint): void {.importc: "QCamera_setColorTemperature".}
proc fcQCamera_activeChanged(self: pointer, param1: bool): void {.importc: "QCamera_activeChanged".}
proc fcQCamera_connect_activeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_activeChanged".}
proc fcQCamera_errorChanged(self: pointer, ): void {.importc: "QCamera_errorChanged".}
proc fcQCamera_connect_errorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_errorChanged".}
proc fcQCamera_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QCamera_errorOccurred".}
proc fcQCamera_connect_errorOccurred(self: pointer, slot: int) {.importc: "QCamera_connect_errorOccurred".}
proc fcQCamera_cameraDeviceChanged(self: pointer, ): void {.importc: "QCamera_cameraDeviceChanged".}
proc fcQCamera_connect_cameraDeviceChanged(self: pointer, slot: int) {.importc: "QCamera_connect_cameraDeviceChanged".}
proc fcQCamera_cameraFormatChanged(self: pointer, ): void {.importc: "QCamera_cameraFormatChanged".}
proc fcQCamera_connect_cameraFormatChanged(self: pointer, slot: int) {.importc: "QCamera_connect_cameraFormatChanged".}
proc fcQCamera_supportedFeaturesChanged(self: pointer, ): void {.importc: "QCamera_supportedFeaturesChanged".}
proc fcQCamera_connect_supportedFeaturesChanged(self: pointer, slot: int) {.importc: "QCamera_connect_supportedFeaturesChanged".}
proc fcQCamera_focusModeChanged(self: pointer, ): void {.importc: "QCamera_focusModeChanged".}
proc fcQCamera_connect_focusModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_focusModeChanged".}
proc fcQCamera_zoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_zoomFactorChanged".}
proc fcQCamera_connect_zoomFactorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_zoomFactorChanged".}
proc fcQCamera_minimumZoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_minimumZoomFactorChanged".}
proc fcQCamera_connect_minimumZoomFactorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_minimumZoomFactorChanged".}
proc fcQCamera_maximumZoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_maximumZoomFactorChanged".}
proc fcQCamera_connect_maximumZoomFactorChanged(self: pointer, slot: int) {.importc: "QCamera_connect_maximumZoomFactorChanged".}
proc fcQCamera_focusDistanceChanged(self: pointer, param1: float32): void {.importc: "QCamera_focusDistanceChanged".}
proc fcQCamera_connect_focusDistanceChanged(self: pointer, slot: int) {.importc: "QCamera_connect_focusDistanceChanged".}
proc fcQCamera_focusPointChanged(self: pointer, ): void {.importc: "QCamera_focusPointChanged".}
proc fcQCamera_connect_focusPointChanged(self: pointer, slot: int) {.importc: "QCamera_connect_focusPointChanged".}
proc fcQCamera_customFocusPointChanged(self: pointer, ): void {.importc: "QCamera_customFocusPointChanged".}
proc fcQCamera_connect_customFocusPointChanged(self: pointer, slot: int) {.importc: "QCamera_connect_customFocusPointChanged".}
proc fcQCamera_flashReady(self: pointer, param1: bool): void {.importc: "QCamera_flashReady".}
proc fcQCamera_connect_flashReady(self: pointer, slot: int) {.importc: "QCamera_connect_flashReady".}
proc fcQCamera_flashModeChanged(self: pointer, ): void {.importc: "QCamera_flashModeChanged".}
proc fcQCamera_connect_flashModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_flashModeChanged".}
proc fcQCamera_torchModeChanged(self: pointer, ): void {.importc: "QCamera_torchModeChanged".}
proc fcQCamera_connect_torchModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_torchModeChanged".}
proc fcQCamera_exposureTimeChanged(self: pointer, speed: float32): void {.importc: "QCamera_exposureTimeChanged".}
proc fcQCamera_connect_exposureTimeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_exposureTimeChanged".}
proc fcQCamera_manualExposureTimeChanged(self: pointer, speed: float32): void {.importc: "QCamera_manualExposureTimeChanged".}
proc fcQCamera_connect_manualExposureTimeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_manualExposureTimeChanged".}
proc fcQCamera_isoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCamera_isoSensitivityChanged".}
proc fcQCamera_connect_isoSensitivityChanged(self: pointer, slot: int) {.importc: "QCamera_connect_isoSensitivityChanged".}
proc fcQCamera_manualIsoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCamera_manualIsoSensitivityChanged".}
proc fcQCamera_connect_manualIsoSensitivityChanged(self: pointer, slot: int) {.importc: "QCamera_connect_manualIsoSensitivityChanged".}
proc fcQCamera_exposureCompensationChanged(self: pointer, param1: float32): void {.importc: "QCamera_exposureCompensationChanged".}
proc fcQCamera_connect_exposureCompensationChanged(self: pointer, slot: int) {.importc: "QCamera_connect_exposureCompensationChanged".}
proc fcQCamera_exposureModeChanged(self: pointer, ): void {.importc: "QCamera_exposureModeChanged".}
proc fcQCamera_connect_exposureModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_exposureModeChanged".}
proc fcQCamera_whiteBalanceModeChanged(self: pointer, ): void {.importc: "QCamera_whiteBalanceModeChanged".}
proc fcQCamera_connect_whiteBalanceModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_whiteBalanceModeChanged".}
proc fcQCamera_colorTemperatureChanged(self: pointer, ): void {.importc: "QCamera_colorTemperatureChanged".}
proc fcQCamera_connect_colorTemperatureChanged(self: pointer, slot: int) {.importc: "QCamera_connect_colorTemperatureChanged".}
proc fcQCamera_brightnessChanged(self: pointer, ): void {.importc: "QCamera_brightnessChanged".}
proc fcQCamera_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QCamera_connect_brightnessChanged".}
proc fcQCamera_contrastChanged(self: pointer, ): void {.importc: "QCamera_contrastChanged".}
proc fcQCamera_connect_contrastChanged(self: pointer, slot: int) {.importc: "QCamera_connect_contrastChanged".}
proc fcQCamera_saturationChanged(self: pointer, ): void {.importc: "QCamera_saturationChanged".}
proc fcQCamera_connect_saturationChanged(self: pointer, slot: int) {.importc: "QCamera_connect_saturationChanged".}
proc fcQCamera_hueChanged(self: pointer, ): void {.importc: "QCamera_hueChanged".}
proc fcQCamera_connect_hueChanged(self: pointer, slot: int) {.importc: "QCamera_connect_hueChanged".}
proc fcQCamera_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_tr2".}
proc fcQCamera_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_tr3".}
proc fQCamera_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCamera_virtualbase_metaObject".}
proc fcQCamera_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCamera_override_virtual_metaObject".}
proc fQCamera_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCamera_virtualbase_metacast".}
proc fcQCamera_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCamera_override_virtual_metacast".}
proc fQCamera_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCamera_virtualbase_metacall".}
proc fcQCamera_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCamera_override_virtual_metacall".}
proc fQCamera_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCamera_virtualbase_event".}
proc fcQCamera_override_virtual_event(self: pointer, slot: int) {.importc: "QCamera_override_virtual_event".}
proc fQCamera_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCamera_virtualbase_eventFilter".}
proc fcQCamera_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCamera_override_virtual_eventFilter".}
proc fQCamera_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCamera_virtualbase_timerEvent".}
proc fcQCamera_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCamera_override_virtual_timerEvent".}
proc fQCamera_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCamera_virtualbase_childEvent".}
proc fcQCamera_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCamera_override_virtual_childEvent".}
proc fQCamera_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCamera_virtualbase_customEvent".}
proc fcQCamera_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCamera_override_virtual_customEvent".}
proc fQCamera_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCamera_virtualbase_connectNotify".}
proc fcQCamera_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCamera_override_virtual_connectNotify".}
proc fQCamera_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCamera_virtualbase_disconnectNotify".}
proc fcQCamera_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCamera_override_virtual_disconnectNotify".}
proc fcQCamera_staticMetaObject(): pointer {.importc: "QCamera_staticMetaObject".}
proc fcQCamera_delete(self: pointer) {.importc: "QCamera_delete".}


func init*(T: type gen_qcamera_types.QCamera, h: ptr cQCamera): gen_qcamera_types.QCamera =
  T(h: h)
proc create*(T: type gen_qcamera_types.QCamera, ): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new())

proc create*(T: type gen_qcamera_types.QCamera, cameraDevice: gen_qcameradevice_types.QCameraDevice): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new2(cameraDevice.h))

proc create*(T: type gen_qcamera_types.QCamera, position: cint): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new3(cint(position)))

proc create*(T: type gen_qcamera_types.QCamera, parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new4(parent.h))

proc create*(T: type gen_qcamera_types.QCamera, cameraDevice: gen_qcameradevice_types.QCameraDevice, parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new5(cameraDevice.h, parent.h))

proc create*(T: type gen_qcamera_types.QCamera, position: cint, parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new6(cint(position), parent.h))

proc metaObject*(self: gen_qcamera_types.QCamera, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_metaObject(self.h))

proc metacast*(self: gen_qcamera_types.QCamera, param1: cstring): pointer =
  fcQCamera_metacast(self.h, param1)

proc metacall*(self: gen_qcamera_types.QCamera, param1: cint, param2: cint, param3: pointer): cint =
  fcQCamera_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcamera_types.QCamera, s: cstring): string =
  let v_ms = fcQCamera_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcamera_types.QCamera, ): bool =
  fcQCamera_isAvailable(self.h)

proc isActive*(self: gen_qcamera_types.QCamera, ): bool =
  fcQCamera_isActive(self.h)

proc captureSession*(self: gen_qcamera_types.QCamera, ): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQCamera_captureSession(self.h))

proc cameraDevice*(self: gen_qcamera_types.QCamera, ): gen_qcameradevice_types.QCameraDevice =
  gen_qcameradevice_types.QCameraDevice(h: fcQCamera_cameraDevice(self.h))

proc setCameraDevice*(self: gen_qcamera_types.QCamera, cameraDevice: gen_qcameradevice_types.QCameraDevice): void =
  fcQCamera_setCameraDevice(self.h, cameraDevice.h)

proc cameraFormat*(self: gen_qcamera_types.QCamera, ): gen_qcameradevice_types.QCameraFormat =
  gen_qcameradevice_types.QCameraFormat(h: fcQCamera_cameraFormat(self.h))

proc setCameraFormat*(self: gen_qcamera_types.QCamera, format: gen_qcameradevice_types.QCameraFormat): void =
  fcQCamera_setCameraFormat(self.h, format.h)

proc error*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_error(self.h))

proc errorString*(self: gen_qcamera_types.QCamera, ): string =
  let v_ms = fcQCamera_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedFeatures*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_supportedFeatures(self.h))

proc focusMode*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_focusMode(self.h))

proc setFocusMode*(self: gen_qcamera_types.QCamera, mode: cint): void =
  fcQCamera_setFocusMode(self.h, cint(mode))

proc isFocusModeSupported*(self: gen_qcamera_types.QCamera, mode: cint): bool =
  fcQCamera_isFocusModeSupported(self.h, cint(mode))

proc focusPoint*(self: gen_qcamera_types.QCamera, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQCamera_focusPoint(self.h))

proc customFocusPoint*(self: gen_qcamera_types.QCamera, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQCamera_customFocusPoint(self.h))

proc setCustomFocusPoint*(self: gen_qcamera_types.QCamera, point: gen_qpoint_types.QPointF): void =
  fcQCamera_setCustomFocusPoint(self.h, point.h)

proc setFocusDistance*(self: gen_qcamera_types.QCamera, d: float32): void =
  fcQCamera_setFocusDistance(self.h, d)

proc focusDistance*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_focusDistance(self.h)

proc minimumZoomFactor*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_minimumZoomFactor(self.h)

proc maximumZoomFactor*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_maximumZoomFactor(self.h)

proc zoomFactor*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_zoomFactor(self.h)

proc setZoomFactor*(self: gen_qcamera_types.QCamera, factor: float32): void =
  fcQCamera_setZoomFactor(self.h, factor)

proc flashMode*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_flashMode(self.h))

proc isFlashModeSupported*(self: gen_qcamera_types.QCamera, mode: cint): bool =
  fcQCamera_isFlashModeSupported(self.h, cint(mode))

proc isFlashReady*(self: gen_qcamera_types.QCamera, ): bool =
  fcQCamera_isFlashReady(self.h)

proc torchMode*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_torchMode(self.h))

proc isTorchModeSupported*(self: gen_qcamera_types.QCamera, mode: cint): bool =
  fcQCamera_isTorchModeSupported(self.h, cint(mode))

proc exposureMode*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_exposureMode(self.h))

proc isExposureModeSupported*(self: gen_qcamera_types.QCamera, mode: cint): bool =
  fcQCamera_isExposureModeSupported(self.h, cint(mode))

proc exposureCompensation*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_exposureCompensation(self.h)

proc isoSensitivity*(self: gen_qcamera_types.QCamera, ): cint =
  fcQCamera_isoSensitivity(self.h)

proc manualIsoSensitivity*(self: gen_qcamera_types.QCamera, ): cint =
  fcQCamera_manualIsoSensitivity(self.h)

proc exposureTime*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_exposureTime(self.h)

proc manualExposureTime*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_manualExposureTime(self.h)

proc minimumIsoSensitivity*(self: gen_qcamera_types.QCamera, ): cint =
  fcQCamera_minimumIsoSensitivity(self.h)

proc maximumIsoSensitivity*(self: gen_qcamera_types.QCamera, ): cint =
  fcQCamera_maximumIsoSensitivity(self.h)

proc minimumExposureTime*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_minimumExposureTime(self.h)

proc maximumExposureTime*(self: gen_qcamera_types.QCamera, ): float32 =
  fcQCamera_maximumExposureTime(self.h)

proc whiteBalanceMode*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_whiteBalanceMode(self.h))

proc isWhiteBalanceModeSupported*(self: gen_qcamera_types.QCamera, mode: cint): bool =
  fcQCamera_isWhiteBalanceModeSupported(self.h, cint(mode))

proc colorTemperature*(self: gen_qcamera_types.QCamera, ): cint =
  fcQCamera_colorTemperature(self.h)

proc setActive*(self: gen_qcamera_types.QCamera, active: bool): void =
  fcQCamera_setActive(self.h, active)

proc start*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_start(self.h)

proc stop*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_stop(self.h)

proc zoomTo*(self: gen_qcamera_types.QCamera, zoom: float32, rate: float32): void =
  fcQCamera_zoomTo(self.h, zoom, rate)

proc setFlashMode*(self: gen_qcamera_types.QCamera, mode: cint): void =
  fcQCamera_setFlashMode(self.h, cint(mode))

proc setTorchMode*(self: gen_qcamera_types.QCamera, mode: cint): void =
  fcQCamera_setTorchMode(self.h, cint(mode))

proc setExposureMode*(self: gen_qcamera_types.QCamera, mode: cint): void =
  fcQCamera_setExposureMode(self.h, cint(mode))

proc setExposureCompensation*(self: gen_qcamera_types.QCamera, ev: float32): void =
  fcQCamera_setExposureCompensation(self.h, ev)

proc setManualIsoSensitivity*(self: gen_qcamera_types.QCamera, iso: cint): void =
  fcQCamera_setManualIsoSensitivity(self.h, iso)

proc setAutoIsoSensitivity*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_setAutoIsoSensitivity(self.h)

proc setManualExposureTime*(self: gen_qcamera_types.QCamera, seconds: float32): void =
  fcQCamera_setManualExposureTime(self.h, seconds)

proc setAutoExposureTime*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_setAutoExposureTime(self.h)

proc setWhiteBalanceMode*(self: gen_qcamera_types.QCamera, mode: cint): void =
  fcQCamera_setWhiteBalanceMode(self.h, cint(mode))

proc setColorTemperature*(self: gen_qcamera_types.QCamera, colorTemperature: cint): void =
  fcQCamera_setColorTemperature(self.h, colorTemperature)

proc activeChanged*(self: gen_qcamera_types.QCamera, param1: bool): void =
  fcQCamera_activeChanged(self.h, param1)

type QCameraactiveChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QCamera_activeChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QCameraactiveChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onactiveChanged*(self: gen_qcamera_types.QCamera, slot: QCameraactiveChangedSlot) =
  var tmp = new QCameraactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_activeChanged(self.h, cast[int](addr tmp[]))

proc errorChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_errorChanged(self.h)

type QCameraerrorChangedSlot* = proc()
proc miqt_exec_callback_QCamera_errorChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameraerrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onerrorChanged*(self: gen_qcamera_types.QCamera, slot: QCameraerrorChangedSlot) =
  var tmp = new QCameraerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorChanged(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qcamera_types.QCamera, error: cint, errorString: string): void =
  fcQCamera_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QCameraerrorOccurredSlot* = proc(error: cint, errorString: string)
proc miqt_exec_callback_QCamera_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QCameraerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: gen_qcamera_types.QCamera, slot: QCameraerrorOccurredSlot) =
  var tmp = new QCameraerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorOccurred(self.h, cast[int](addr tmp[]))

proc cameraDeviceChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_cameraDeviceChanged(self.h)

type QCameracameraDeviceChangedSlot* = proc()
proc miqt_exec_callback_QCamera_cameraDeviceChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameracameraDeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncameraDeviceChanged*(self: gen_qcamera_types.QCamera, slot: QCameracameraDeviceChangedSlot) =
  var tmp = new QCameracameraDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_cameraDeviceChanged(self.h, cast[int](addr tmp[]))

proc cameraFormatChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_cameraFormatChanged(self.h)

type QCameracameraFormatChangedSlot* = proc()
proc miqt_exec_callback_QCamera_cameraFormatChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameracameraFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncameraFormatChanged*(self: gen_qcamera_types.QCamera, slot: QCameracameraFormatChangedSlot) =
  var tmp = new QCameracameraFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_cameraFormatChanged(self.h, cast[int](addr tmp[]))

proc supportedFeaturesChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_supportedFeaturesChanged(self.h)

type QCamerasupportedFeaturesChangedSlot* = proc()
proc miqt_exec_callback_QCamera_supportedFeaturesChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerasupportedFeaturesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsupportedFeaturesChanged*(self: gen_qcamera_types.QCamera, slot: QCamerasupportedFeaturesChangedSlot) =
  var tmp = new QCamerasupportedFeaturesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_supportedFeaturesChanged(self.h, cast[int](addr tmp[]))

proc focusModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_focusModeChanged(self.h)

type QCamerafocusModeChangedSlot* = proc()
proc miqt_exec_callback_QCamera_focusModeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerafocusModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfocusModeChanged*(self: gen_qcamera_types.QCamera, slot: QCamerafocusModeChangedSlot) =
  var tmp = new QCamerafocusModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_focusModeChanged(self.h, cast[int](addr tmp[]))

proc zoomFactorChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_zoomFactorChanged(self.h, param1)

type QCamerazoomFactorChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_QCamera_zoomFactorChanged(slot: int, param1: float32) {.exportc.} =
  let nimfunc = cast[ptr QCamerazoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onzoomFactorChanged*(self: gen_qcamera_types.QCamera, slot: QCamerazoomFactorChangedSlot) =
  var tmp = new QCamerazoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_zoomFactorChanged(self.h, cast[int](addr tmp[]))

proc minimumZoomFactorChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_minimumZoomFactorChanged(self.h, param1)

type QCameraminimumZoomFactorChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_QCamera_minimumZoomFactorChanged(slot: int, param1: float32) {.exportc.} =
  let nimfunc = cast[ptr QCameraminimumZoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onminimumZoomFactorChanged*(self: gen_qcamera_types.QCamera, slot: QCameraminimumZoomFactorChangedSlot) =
  var tmp = new QCameraminimumZoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_minimumZoomFactorChanged(self.h, cast[int](addr tmp[]))

proc maximumZoomFactorChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_maximumZoomFactorChanged(self.h, param1)

type QCameramaximumZoomFactorChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_QCamera_maximumZoomFactorChanged(slot: int, param1: float32) {.exportc.} =
  let nimfunc = cast[ptr QCameramaximumZoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmaximumZoomFactorChanged*(self: gen_qcamera_types.QCamera, slot: QCameramaximumZoomFactorChangedSlot) =
  var tmp = new QCameramaximumZoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_maximumZoomFactorChanged(self.h, cast[int](addr tmp[]))

proc focusDistanceChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_focusDistanceChanged(self.h, param1)

type QCamerafocusDistanceChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_QCamera_focusDistanceChanged(slot: int, param1: float32) {.exportc.} =
  let nimfunc = cast[ptr QCamerafocusDistanceChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onfocusDistanceChanged*(self: gen_qcamera_types.QCamera, slot: QCamerafocusDistanceChangedSlot) =
  var tmp = new QCamerafocusDistanceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_focusDistanceChanged(self.h, cast[int](addr tmp[]))

proc focusPointChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_focusPointChanged(self.h)

type QCamerafocusPointChangedSlot* = proc()
proc miqt_exec_callback_QCamera_focusPointChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerafocusPointChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfocusPointChanged*(self: gen_qcamera_types.QCamera, slot: QCamerafocusPointChangedSlot) =
  var tmp = new QCamerafocusPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_focusPointChanged(self.h, cast[int](addr tmp[]))

proc customFocusPointChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_customFocusPointChanged(self.h)

type QCameracustomFocusPointChangedSlot* = proc()
proc miqt_exec_callback_QCamera_customFocusPointChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameracustomFocusPointChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncustomFocusPointChanged*(self: gen_qcamera_types.QCamera, slot: QCameracustomFocusPointChangedSlot) =
  var tmp = new QCameracustomFocusPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_customFocusPointChanged(self.h, cast[int](addr tmp[]))

proc flashReady*(self: gen_qcamera_types.QCamera, param1: bool): void =
  fcQCamera_flashReady(self.h, param1)

type QCameraflashReadySlot* = proc(param1: bool)
proc miqt_exec_callback_QCamera_flashReady(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QCameraflashReadySlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onflashReady*(self: gen_qcamera_types.QCamera, slot: QCameraflashReadySlot) =
  var tmp = new QCameraflashReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_flashReady(self.h, cast[int](addr tmp[]))

proc flashModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_flashModeChanged(self.h)

type QCameraflashModeChangedSlot* = proc()
proc miqt_exec_callback_QCamera_flashModeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameraflashModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onflashModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameraflashModeChangedSlot) =
  var tmp = new QCameraflashModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_flashModeChanged(self.h, cast[int](addr tmp[]))

proc torchModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_torchModeChanged(self.h)

type QCameratorchModeChangedSlot* = proc()
proc miqt_exec_callback_QCamera_torchModeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameratorchModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontorchModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameratorchModeChangedSlot) =
  var tmp = new QCameratorchModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_torchModeChanged(self.h, cast[int](addr tmp[]))

proc exposureTimeChanged*(self: gen_qcamera_types.QCamera, speed: float32): void =
  fcQCamera_exposureTimeChanged(self.h, speed)

type QCameraexposureTimeChangedSlot* = proc(speed: float32)
proc miqt_exec_callback_QCamera_exposureTimeChanged(slot: int, speed: float32) {.exportc.} =
  let nimfunc = cast[ptr QCameraexposureTimeChangedSlot](cast[pointer](slot))
  let slotval1 = speed

  nimfunc[](slotval1)

proc onexposureTimeChanged*(self: gen_qcamera_types.QCamera, slot: QCameraexposureTimeChangedSlot) =
  var tmp = new QCameraexposureTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_exposureTimeChanged(self.h, cast[int](addr tmp[]))

proc manualExposureTimeChanged*(self: gen_qcamera_types.QCamera, speed: float32): void =
  fcQCamera_manualExposureTimeChanged(self.h, speed)

type QCameramanualExposureTimeChangedSlot* = proc(speed: float32)
proc miqt_exec_callback_QCamera_manualExposureTimeChanged(slot: int, speed: float32) {.exportc.} =
  let nimfunc = cast[ptr QCameramanualExposureTimeChangedSlot](cast[pointer](slot))
  let slotval1 = speed

  nimfunc[](slotval1)

proc onmanualExposureTimeChanged*(self: gen_qcamera_types.QCamera, slot: QCameramanualExposureTimeChangedSlot) =
  var tmp = new QCameramanualExposureTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_manualExposureTimeChanged(self.h, cast[int](addr tmp[]))

proc isoSensitivityChanged*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_isoSensitivityChanged(self.h, param1)

type QCameraisoSensitivityChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QCamera_isoSensitivityChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameraisoSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onisoSensitivityChanged*(self: gen_qcamera_types.QCamera, slot: QCameraisoSensitivityChangedSlot) =
  var tmp = new QCameraisoSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_isoSensitivityChanged(self.h, cast[int](addr tmp[]))

proc manualIsoSensitivityChanged*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_manualIsoSensitivityChanged(self.h, param1)

type QCameramanualIsoSensitivityChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QCamera_manualIsoSensitivityChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameramanualIsoSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmanualIsoSensitivityChanged*(self: gen_qcamera_types.QCamera, slot: QCameramanualIsoSensitivityChangedSlot) =
  var tmp = new QCameramanualIsoSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_manualIsoSensitivityChanged(self.h, cast[int](addr tmp[]))

proc exposureCompensationChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_exposureCompensationChanged(self.h, param1)

type QCameraexposureCompensationChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_QCamera_exposureCompensationChanged(slot: int, param1: float32) {.exportc.} =
  let nimfunc = cast[ptr QCameraexposureCompensationChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onexposureCompensationChanged*(self: gen_qcamera_types.QCamera, slot: QCameraexposureCompensationChangedSlot) =
  var tmp = new QCameraexposureCompensationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_exposureCompensationChanged(self.h, cast[int](addr tmp[]))

proc exposureModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_exposureModeChanged(self.h)

type QCameraexposureModeChangedSlot* = proc()
proc miqt_exec_callback_QCamera_exposureModeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameraexposureModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onexposureModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameraexposureModeChangedSlot) =
  var tmp = new QCameraexposureModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_exposureModeChanged(self.h, cast[int](addr tmp[]))

proc whiteBalanceModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_whiteBalanceModeChanged(self.h)

type QCamerawhiteBalanceModeChangedSlot* = proc()
proc miqt_exec_callback_QCamera_whiteBalanceModeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerawhiteBalanceModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onwhiteBalanceModeChanged*(self: gen_qcamera_types.QCamera, slot: QCamerawhiteBalanceModeChangedSlot) =
  var tmp = new QCamerawhiteBalanceModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_whiteBalanceModeChanged(self.h, cast[int](addr tmp[]))

proc colorTemperatureChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_colorTemperatureChanged(self.h)

type QCameracolorTemperatureChangedSlot* = proc()
proc miqt_exec_callback_QCamera_colorTemperatureChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameracolorTemperatureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncolorTemperatureChanged*(self: gen_qcamera_types.QCamera, slot: QCameracolorTemperatureChangedSlot) =
  var tmp = new QCameracolorTemperatureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_colorTemperatureChanged(self.h, cast[int](addr tmp[]))

proc brightnessChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_brightnessChanged(self.h)

type QCamerabrightnessChangedSlot* = proc()
proc miqt_exec_callback_QCamera_brightnessChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerabrightnessChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onbrightnessChanged*(self: gen_qcamera_types.QCamera, slot: QCamerabrightnessChangedSlot) =
  var tmp = new QCamerabrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_brightnessChanged(self.h, cast[int](addr tmp[]))

proc contrastChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_contrastChanged(self.h)

type QCameracontrastChangedSlot* = proc()
proc miqt_exec_callback_QCamera_contrastChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameracontrastChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncontrastChanged*(self: gen_qcamera_types.QCamera, slot: QCameracontrastChangedSlot) =
  var tmp = new QCameracontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_contrastChanged(self.h, cast[int](addr tmp[]))

proc saturationChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_saturationChanged(self.h)

type QCamerasaturationChangedSlot* = proc()
proc miqt_exec_callback_QCamera_saturationChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerasaturationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsaturationChanged*(self: gen_qcamera_types.QCamera, slot: QCamerasaturationChangedSlot) =
  var tmp = new QCamerasaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_saturationChanged(self.h, cast[int](addr tmp[]))

proc hueChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_hueChanged(self.h)

type QCamerahueChangedSlot* = proc()
proc miqt_exec_callback_QCamera_hueChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCamerahueChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhueChanged*(self: gen_qcamera_types.QCamera, slot: QCamerahueChangedSlot) =
  var tmp = new QCamerahueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_hueChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcamera_types.QCamera, s: cstring, c: cstring): string =
  let v_ms = fcQCamera_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcamera_types.QCamera, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCamera_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QCamerametaObject*(self: gen_qcamera_types.QCamera, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQCamera_virtualbase_metaObject(self.h))

type QCamerametaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcamera_types.QCamera, slot: QCamerametaObjectProc) =
  # TODO check subclass
  var tmp = new QCamerametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_metaObject(self: ptr cQCamera, slot: int): pointer {.exportc: "miqt_exec_callback_QCamera_metaObject ".} =
  var nimfunc = cast[ptr QCamerametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCamerametacast*(self: gen_qcamera_types.QCamera, param1: cstring): pointer =
  fQCamera_virtualbase_metacast(self.h, param1)

type QCamerametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcamera_types.QCamera, slot: QCamerametacastProc) =
  # TODO check subclass
  var tmp = new QCamerametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_metacast(self: ptr cQCamera, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCamera_metacast ".} =
  var nimfunc = cast[ptr QCamerametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCamerametacall*(self: gen_qcamera_types.QCamera, param1: cint, param2: cint, param3: pointer): cint =
  fQCamera_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCamerametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcamera_types.QCamera, slot: QCamerametacallProc) =
  # TODO check subclass
  var tmp = new QCamerametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_metacall(self: ptr cQCamera, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCamera_metacall ".} =
  var nimfunc = cast[ptr QCamerametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCameraevent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QEvent): bool =
  fQCamera_virtualbase_event(self.h, event.h)

type QCameraeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcamera_types.QCamera, slot: QCameraeventProc) =
  # TODO check subclass
  var tmp = new QCameraeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_event(self: ptr cQCamera, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCamera_event ".} =
  var nimfunc = cast[ptr QCameraeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraeventFilter*(self: gen_qcamera_types.QCamera, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCamera_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCameraeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcamera_types.QCamera, slot: QCameraeventFilterProc) =
  # TODO check subclass
  var tmp = new QCameraeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_eventFilter(self: ptr cQCamera, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCamera_eventFilter ".} =
  var nimfunc = cast[ptr QCameraeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCameratimerEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QTimerEvent): void =
  fQCamera_virtualbase_timerEvent(self.h, event.h)

type QCameratimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcamera_types.QCamera, slot: QCameratimerEventProc) =
  # TODO check subclass
  var tmp = new QCameratimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_timerEvent(self: ptr cQCamera, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCamera_timerEvent ".} =
  var nimfunc = cast[ptr QCameratimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCamerachildEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QChildEvent): void =
  fQCamera_virtualbase_childEvent(self.h, event.h)

type QCamerachildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcamera_types.QCamera, slot: QCamerachildEventProc) =
  # TODO check subclass
  var tmp = new QCamerachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_childEvent(self: ptr cQCamera, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCamera_childEvent ".} =
  var nimfunc = cast[ptr QCamerachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCameracustomEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QEvent): void =
  fQCamera_virtualbase_customEvent(self.h, event.h)

type QCameracustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcamera_types.QCamera, slot: QCameracustomEventProc) =
  # TODO check subclass
  var tmp = new QCameracustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_customEvent(self: ptr cQCamera, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCamera_customEvent ".} =
  var nimfunc = cast[ptr QCameracustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCameraconnectNotify*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCamera_virtualbase_connectNotify(self.h, signal.h)

type QCameraconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcamera_types.QCamera, slot: QCameraconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCameraconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_connectNotify(self: ptr cQCamera, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCamera_connectNotify ".} =
  var nimfunc = cast[ptr QCameraconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCameradisconnectNotify*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCamera_virtualbase_disconnectNotify(self.h, signal.h)

type QCameradisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcamera_types.QCamera, slot: QCameradisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCameradisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_disconnectNotify(self: ptr cQCamera, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCamera_disconnectNotify ".} =
  var nimfunc = cast[ptr QCameradisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcamera_types.QCamera): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_staticMetaObject())
proc delete*(self: gen_qcamera_types.QCamera) =
  fcQCamera_delete(self.h)
