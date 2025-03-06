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

const cflags = gorge("pkg-config --cflags Qt6Multimedia") & " -fPIC"
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
proc fcQCamera_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_activeChanged".}
proc fcQCamera_errorChanged(self: pointer, ): void {.importc: "QCamera_errorChanged".}
proc fcQCamera_connect_errorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_errorChanged".}
proc fcQCamera_errorOccurred(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QCamera_errorOccurred".}
proc fcQCamera_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_errorOccurred".}
proc fcQCamera_cameraDeviceChanged(self: pointer, ): void {.importc: "QCamera_cameraDeviceChanged".}
proc fcQCamera_connect_cameraDeviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_cameraDeviceChanged".}
proc fcQCamera_cameraFormatChanged(self: pointer, ): void {.importc: "QCamera_cameraFormatChanged".}
proc fcQCamera_connect_cameraFormatChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_cameraFormatChanged".}
proc fcQCamera_supportedFeaturesChanged(self: pointer, ): void {.importc: "QCamera_supportedFeaturesChanged".}
proc fcQCamera_connect_supportedFeaturesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_supportedFeaturesChanged".}
proc fcQCamera_focusModeChanged(self: pointer, ): void {.importc: "QCamera_focusModeChanged".}
proc fcQCamera_connect_focusModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_focusModeChanged".}
proc fcQCamera_zoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_zoomFactorChanged".}
proc fcQCamera_connect_zoomFactorChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_zoomFactorChanged".}
proc fcQCamera_minimumZoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_minimumZoomFactorChanged".}
proc fcQCamera_connect_minimumZoomFactorChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_minimumZoomFactorChanged".}
proc fcQCamera_maximumZoomFactorChanged(self: pointer, param1: float32): void {.importc: "QCamera_maximumZoomFactorChanged".}
proc fcQCamera_connect_maximumZoomFactorChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_maximumZoomFactorChanged".}
proc fcQCamera_focusDistanceChanged(self: pointer, param1: float32): void {.importc: "QCamera_focusDistanceChanged".}
proc fcQCamera_connect_focusDistanceChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_focusDistanceChanged".}
proc fcQCamera_focusPointChanged(self: pointer, ): void {.importc: "QCamera_focusPointChanged".}
proc fcQCamera_connect_focusPointChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_focusPointChanged".}
proc fcQCamera_customFocusPointChanged(self: pointer, ): void {.importc: "QCamera_customFocusPointChanged".}
proc fcQCamera_connect_customFocusPointChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_customFocusPointChanged".}
proc fcQCamera_flashReady(self: pointer, param1: bool): void {.importc: "QCamera_flashReady".}
proc fcQCamera_connect_flashReady(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_flashReady".}
proc fcQCamera_flashModeChanged(self: pointer, ): void {.importc: "QCamera_flashModeChanged".}
proc fcQCamera_connect_flashModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_flashModeChanged".}
proc fcQCamera_torchModeChanged(self: pointer, ): void {.importc: "QCamera_torchModeChanged".}
proc fcQCamera_connect_torchModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_torchModeChanged".}
proc fcQCamera_exposureTimeChanged(self: pointer, speed: float32): void {.importc: "QCamera_exposureTimeChanged".}
proc fcQCamera_connect_exposureTimeChanged(self: pointer, slot: int, callback: proc (slot: int, speed: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_exposureTimeChanged".}
proc fcQCamera_manualExposureTimeChanged(self: pointer, speed: float32): void {.importc: "QCamera_manualExposureTimeChanged".}
proc fcQCamera_connect_manualExposureTimeChanged(self: pointer, slot: int, callback: proc (slot: int, speed: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_manualExposureTimeChanged".}
proc fcQCamera_isoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCamera_isoSensitivityChanged".}
proc fcQCamera_connect_isoSensitivityChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_isoSensitivityChanged".}
proc fcQCamera_manualIsoSensitivityChanged(self: pointer, param1: cint): void {.importc: "QCamera_manualIsoSensitivityChanged".}
proc fcQCamera_connect_manualIsoSensitivityChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_manualIsoSensitivityChanged".}
proc fcQCamera_exposureCompensationChanged(self: pointer, param1: float32): void {.importc: "QCamera_exposureCompensationChanged".}
proc fcQCamera_connect_exposureCompensationChanged(self: pointer, slot: int, callback: proc (slot: int, param1: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_exposureCompensationChanged".}
proc fcQCamera_exposureModeChanged(self: pointer, ): void {.importc: "QCamera_exposureModeChanged".}
proc fcQCamera_connect_exposureModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_exposureModeChanged".}
proc fcQCamera_whiteBalanceModeChanged(self: pointer, ): void {.importc: "QCamera_whiteBalanceModeChanged".}
proc fcQCamera_connect_whiteBalanceModeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_whiteBalanceModeChanged".}
proc fcQCamera_colorTemperatureChanged(self: pointer, ): void {.importc: "QCamera_colorTemperatureChanged".}
proc fcQCamera_connect_colorTemperatureChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_colorTemperatureChanged".}
proc fcQCamera_brightnessChanged(self: pointer, ): void {.importc: "QCamera_brightnessChanged".}
proc fcQCamera_connect_brightnessChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_brightnessChanged".}
proc fcQCamera_contrastChanged(self: pointer, ): void {.importc: "QCamera_contrastChanged".}
proc fcQCamera_connect_contrastChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_contrastChanged".}
proc fcQCamera_saturationChanged(self: pointer, ): void {.importc: "QCamera_saturationChanged".}
proc fcQCamera_connect_saturationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_saturationChanged".}
proc fcQCamera_hueChanged(self: pointer, ): void {.importc: "QCamera_hueChanged".}
proc fcQCamera_connect_hueChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_hueChanged".}
proc fcQCamera_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_tr2".}
proc fcQCamera_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_tr3".}
type cQCameraVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQCameraVTable, self: ptr cQCamera) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCamera_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCamera_virtualbase_metaObject".}
proc fcQCamera_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCamera_virtualbase_metacast".}
proc fcQCamera_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCamera_virtualbase_metacall".}
proc fcQCamera_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCamera_virtualbase_event".}
proc fcQCamera_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCamera_virtualbase_eventFilter".}
proc fcQCamera_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCamera_virtualbase_timerEvent".}
proc fcQCamera_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCamera_virtualbase_childEvent".}
proc fcQCamera_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCamera_virtualbase_customEvent".}
proc fcQCamera_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCamera_virtualbase_connectNotify".}
proc fcQCamera_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCamera_virtualbase_disconnectNotify".}
proc fcQCamera_protectedbase_sender(self: pointer, ): pointer {.importc: "QCamera_protectedbase_sender".}
proc fcQCamera_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCamera_protectedbase_senderSignalIndex".}
proc fcQCamera_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCamera_protectedbase_receivers".}
proc fcQCamera_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCamera_protectedbase_isSignalConnected".}
proc fcQCamera_new(vtbl: pointer, ): ptr cQCamera {.importc: "QCamera_new".}
proc fcQCamera_new2(vtbl: pointer, cameraDevice: pointer): ptr cQCamera {.importc: "QCamera_new2".}
proc fcQCamera_new3(vtbl: pointer, position: cint): ptr cQCamera {.importc: "QCamera_new3".}
proc fcQCamera_new4(vtbl: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new4".}
proc fcQCamera_new5(vtbl: pointer, cameraDevice: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new5".}
proc fcQCamera_new6(vtbl: pointer, position: cint, parent: pointer): ptr cQCamera {.importc: "QCamera_new6".}
proc fcQCamera_staticMetaObject(): pointer {.importc: "QCamera_staticMetaObject".}

proc metaObject*(self: gen_qcamera_types.QCamera, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_metaObject(self.h), owned: false)

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
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQCamera_captureSession(self.h), owned: false)

proc cameraDevice*(self: gen_qcamera_types.QCamera, ): gen_qcameradevice_types.QCameraDevice =
  gen_qcameradevice_types.QCameraDevice(h: fcQCamera_cameraDevice(self.h), owned: true)

proc setCameraDevice*(self: gen_qcamera_types.QCamera, cameraDevice: gen_qcameradevice_types.QCameraDevice): void =
  fcQCamera_setCameraDevice(self.h, cameraDevice.h)

proc cameraFormat*(self: gen_qcamera_types.QCamera, ): gen_qcameradevice_types.QCameraFormat =
  gen_qcameradevice_types.QCameraFormat(h: fcQCamera_cameraFormat(self.h), owned: true)

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
  gen_qpoint_types.QPointF(h: fcQCamera_focusPoint(self.h), owned: true)

proc customFocusPoint*(self: gen_qcamera_types.QCamera, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQCamera_customFocusPoint(self.h), owned: true)

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
proc miqt_exec_callback_cQCamera_activeChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QCameraactiveChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraactiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveChanged*(self: gen_qcamera_types.QCamera, slot: QCameraactiveChangedSlot) =
  var tmp = new QCameraactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_activeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_activeChanged, miqt_exec_callback_cQCamera_activeChanged_release)

proc errorChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_errorChanged(self.h)

type QCameraerrorChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_errorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameraerrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_errorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraerrorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorChanged*(self: gen_qcamera_types.QCamera, slot: QCameraerrorChangedSlot) =
  var tmp = new QCameraerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_errorChanged, miqt_exec_callback_cQCamera_errorChanged_release)

proc errorOccurred*(self: gen_qcamera_types.QCamera, error: cint, errorString: string): void =
  fcQCamera_errorOccurred(self.h, cint(error), struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QCameraerrorOccurredSlot* = proc(error: cint, errorString: string)
proc miqt_exec_callback_cQCamera_errorOccurred(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCameraerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCamera_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qcamera_types.QCamera, slot: QCameraerrorOccurredSlot) =
  var tmp = new QCameraerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorOccurred(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_errorOccurred, miqt_exec_callback_cQCamera_errorOccurred_release)

proc cameraDeviceChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_cameraDeviceChanged(self.h)

type QCameracameraDeviceChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_cameraDeviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameracameraDeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_cameraDeviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameracameraDeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncameraDeviceChanged*(self: gen_qcamera_types.QCamera, slot: QCameracameraDeviceChangedSlot) =
  var tmp = new QCameracameraDeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_cameraDeviceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_cameraDeviceChanged, miqt_exec_callback_cQCamera_cameraDeviceChanged_release)

proc cameraFormatChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_cameraFormatChanged(self.h)

type QCameracameraFormatChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_cameraFormatChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameracameraFormatChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_cameraFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameracameraFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncameraFormatChanged*(self: gen_qcamera_types.QCamera, slot: QCameracameraFormatChangedSlot) =
  var tmp = new QCameracameraFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_cameraFormatChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_cameraFormatChanged, miqt_exec_callback_cQCamera_cameraFormatChanged_release)

proc supportedFeaturesChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_supportedFeaturesChanged(self.h)

type QCamerasupportedFeaturesChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_supportedFeaturesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerasupportedFeaturesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_supportedFeaturesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerasupportedFeaturesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsupportedFeaturesChanged*(self: gen_qcamera_types.QCamera, slot: QCamerasupportedFeaturesChangedSlot) =
  var tmp = new QCamerasupportedFeaturesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_supportedFeaturesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_supportedFeaturesChanged, miqt_exec_callback_cQCamera_supportedFeaturesChanged_release)

proc focusModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_focusModeChanged(self.h)

type QCamerafocusModeChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_focusModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerafocusModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_focusModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerafocusModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusModeChanged*(self: gen_qcamera_types.QCamera, slot: QCamerafocusModeChangedSlot) =
  var tmp = new QCamerafocusModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_focusModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_focusModeChanged, miqt_exec_callback_cQCamera_focusModeChanged_release)

proc zoomFactorChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_zoomFactorChanged(self.h, param1)

type QCamerazoomFactorChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_cQCamera_zoomFactorChanged(slot: int, param1: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCamerazoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_zoomFactorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerazoomFactorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onzoomFactorChanged*(self: gen_qcamera_types.QCamera, slot: QCamerazoomFactorChangedSlot) =
  var tmp = new QCamerazoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_zoomFactorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_zoomFactorChanged, miqt_exec_callback_cQCamera_zoomFactorChanged_release)

proc minimumZoomFactorChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_minimumZoomFactorChanged(self.h, param1)

type QCameraminimumZoomFactorChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_cQCamera_minimumZoomFactorChanged(slot: int, param1: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCameraminimumZoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_minimumZoomFactorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraminimumZoomFactorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onminimumZoomFactorChanged*(self: gen_qcamera_types.QCamera, slot: QCameraminimumZoomFactorChangedSlot) =
  var tmp = new QCameraminimumZoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_minimumZoomFactorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_minimumZoomFactorChanged, miqt_exec_callback_cQCamera_minimumZoomFactorChanged_release)

proc maximumZoomFactorChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_maximumZoomFactorChanged(self.h, param1)

type QCameramaximumZoomFactorChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_cQCamera_maximumZoomFactorChanged(slot: int, param1: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCameramaximumZoomFactorChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_maximumZoomFactorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameramaximumZoomFactorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmaximumZoomFactorChanged*(self: gen_qcamera_types.QCamera, slot: QCameramaximumZoomFactorChangedSlot) =
  var tmp = new QCameramaximumZoomFactorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_maximumZoomFactorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_maximumZoomFactorChanged, miqt_exec_callback_cQCamera_maximumZoomFactorChanged_release)

proc focusDistanceChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_focusDistanceChanged(self.h, param1)

type QCamerafocusDistanceChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_cQCamera_focusDistanceChanged(slot: int, param1: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCamerafocusDistanceChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_focusDistanceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerafocusDistanceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusDistanceChanged*(self: gen_qcamera_types.QCamera, slot: QCamerafocusDistanceChangedSlot) =
  var tmp = new QCamerafocusDistanceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_focusDistanceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_focusDistanceChanged, miqt_exec_callback_cQCamera_focusDistanceChanged_release)

proc focusPointChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_focusPointChanged(self.h)

type QCamerafocusPointChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_focusPointChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerafocusPointChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_focusPointChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerafocusPointChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusPointChanged*(self: gen_qcamera_types.QCamera, slot: QCamerafocusPointChangedSlot) =
  var tmp = new QCamerafocusPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_focusPointChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_focusPointChanged, miqt_exec_callback_cQCamera_focusPointChanged_release)

proc customFocusPointChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_customFocusPointChanged(self.h)

type QCameracustomFocusPointChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_customFocusPointChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameracustomFocusPointChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_customFocusPointChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameracustomFocusPointChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncustomFocusPointChanged*(self: gen_qcamera_types.QCamera, slot: QCameracustomFocusPointChangedSlot) =
  var tmp = new QCameracustomFocusPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_customFocusPointChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_customFocusPointChanged, miqt_exec_callback_cQCamera_customFocusPointChanged_release)

proc flashReady*(self: gen_qcamera_types.QCamera, param1: bool): void =
  fcQCamera_flashReady(self.h, param1)

type QCameraflashReadySlot* = proc(param1: bool)
proc miqt_exec_callback_cQCamera_flashReady(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QCameraflashReadySlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_flashReady_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraflashReadySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflashReady*(self: gen_qcamera_types.QCamera, slot: QCameraflashReadySlot) =
  var tmp = new QCameraflashReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_flashReady(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_flashReady, miqt_exec_callback_cQCamera_flashReady_release)

proc flashModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_flashModeChanged(self.h)

type QCameraflashModeChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_flashModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameraflashModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_flashModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraflashModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflashModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameraflashModeChangedSlot) =
  var tmp = new QCameraflashModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_flashModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_flashModeChanged, miqt_exec_callback_cQCamera_flashModeChanged_release)

proc torchModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_torchModeChanged(self.h)

type QCameratorchModeChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_torchModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameratorchModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_torchModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameratorchModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontorchModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameratorchModeChangedSlot) =
  var tmp = new QCameratorchModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_torchModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_torchModeChanged, miqt_exec_callback_cQCamera_torchModeChanged_release)

proc exposureTimeChanged*(self: gen_qcamera_types.QCamera, speed: float32): void =
  fcQCamera_exposureTimeChanged(self.h, speed)

type QCameraexposureTimeChangedSlot* = proc(speed: float32)
proc miqt_exec_callback_cQCamera_exposureTimeChanged(slot: int, speed: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCameraexposureTimeChangedSlot](cast[pointer](slot))
  let slotval1 = speed

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_exposureTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraexposureTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onexposureTimeChanged*(self: gen_qcamera_types.QCamera, slot: QCameraexposureTimeChangedSlot) =
  var tmp = new QCameraexposureTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_exposureTimeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_exposureTimeChanged, miqt_exec_callback_cQCamera_exposureTimeChanged_release)

proc manualExposureTimeChanged*(self: gen_qcamera_types.QCamera, speed: float32): void =
  fcQCamera_manualExposureTimeChanged(self.h, speed)

type QCameramanualExposureTimeChangedSlot* = proc(speed: float32)
proc miqt_exec_callback_cQCamera_manualExposureTimeChanged(slot: int, speed: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCameramanualExposureTimeChangedSlot](cast[pointer](slot))
  let slotval1 = speed

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_manualExposureTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameramanualExposureTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmanualExposureTimeChanged*(self: gen_qcamera_types.QCamera, slot: QCameramanualExposureTimeChangedSlot) =
  var tmp = new QCameramanualExposureTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_manualExposureTimeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_manualExposureTimeChanged, miqt_exec_callback_cQCamera_manualExposureTimeChanged_release)

proc isoSensitivityChanged*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_isoSensitivityChanged(self.h, param1)

type QCameraisoSensitivityChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCamera_isoSensitivityChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraisoSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_isoSensitivityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraisoSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onisoSensitivityChanged*(self: gen_qcamera_types.QCamera, slot: QCameraisoSensitivityChangedSlot) =
  var tmp = new QCameraisoSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_isoSensitivityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_isoSensitivityChanged, miqt_exec_callback_cQCamera_isoSensitivityChanged_release)

proc manualIsoSensitivityChanged*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_manualIsoSensitivityChanged(self.h, param1)

type QCameramanualIsoSensitivityChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCamera_manualIsoSensitivityChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameramanualIsoSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_manualIsoSensitivityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameramanualIsoSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmanualIsoSensitivityChanged*(self: gen_qcamera_types.QCamera, slot: QCameramanualIsoSensitivityChangedSlot) =
  var tmp = new QCameramanualIsoSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_manualIsoSensitivityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_manualIsoSensitivityChanged, miqt_exec_callback_cQCamera_manualIsoSensitivityChanged_release)

proc exposureCompensationChanged*(self: gen_qcamera_types.QCamera, param1: float32): void =
  fcQCamera_exposureCompensationChanged(self.h, param1)

type QCameraexposureCompensationChangedSlot* = proc(param1: float32)
proc miqt_exec_callback_cQCamera_exposureCompensationChanged(slot: int, param1: float32) {.cdecl.} =
  let nimfunc = cast[ptr QCameraexposureCompensationChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_exposureCompensationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraexposureCompensationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onexposureCompensationChanged*(self: gen_qcamera_types.QCamera, slot: QCameraexposureCompensationChangedSlot) =
  var tmp = new QCameraexposureCompensationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_exposureCompensationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_exposureCompensationChanged, miqt_exec_callback_cQCamera_exposureCompensationChanged_release)

proc exposureModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_exposureModeChanged(self.h)

type QCameraexposureModeChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_exposureModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameraexposureModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_exposureModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraexposureModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onexposureModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameraexposureModeChangedSlot) =
  var tmp = new QCameraexposureModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_exposureModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_exposureModeChanged, miqt_exec_callback_cQCamera_exposureModeChanged_release)

proc whiteBalanceModeChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_whiteBalanceModeChanged(self.h)

type QCamerawhiteBalanceModeChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_whiteBalanceModeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerawhiteBalanceModeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_whiteBalanceModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerawhiteBalanceModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwhiteBalanceModeChanged*(self: gen_qcamera_types.QCamera, slot: QCamerawhiteBalanceModeChangedSlot) =
  var tmp = new QCamerawhiteBalanceModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_whiteBalanceModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_whiteBalanceModeChanged, miqt_exec_callback_cQCamera_whiteBalanceModeChanged_release)

proc colorTemperatureChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_colorTemperatureChanged(self.h)

type QCameracolorTemperatureChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_colorTemperatureChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameracolorTemperatureChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_colorTemperatureChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameracolorTemperatureChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorTemperatureChanged*(self: gen_qcamera_types.QCamera, slot: QCameracolorTemperatureChangedSlot) =
  var tmp = new QCameracolorTemperatureChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_colorTemperatureChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_colorTemperatureChanged, miqt_exec_callback_cQCamera_colorTemperatureChanged_release)

proc brightnessChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_brightnessChanged(self.h)

type QCamerabrightnessChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_brightnessChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerabrightnessChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_brightnessChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerabrightnessChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbrightnessChanged*(self: gen_qcamera_types.QCamera, slot: QCamerabrightnessChangedSlot) =
  var tmp = new QCamerabrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_brightnessChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_brightnessChanged, miqt_exec_callback_cQCamera_brightnessChanged_release)

proc contrastChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_contrastChanged(self.h)

type QCameracontrastChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_contrastChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameracontrastChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_contrastChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameracontrastChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontrastChanged*(self: gen_qcamera_types.QCamera, slot: QCameracontrastChangedSlot) =
  var tmp = new QCameracontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_contrastChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_contrastChanged, miqt_exec_callback_cQCamera_contrastChanged_release)

proc saturationChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_saturationChanged(self.h)

type QCamerasaturationChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_saturationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerasaturationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_saturationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerasaturationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsaturationChanged*(self: gen_qcamera_types.QCamera, slot: QCamerasaturationChangedSlot) =
  var tmp = new QCamerasaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_saturationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_saturationChanged, miqt_exec_callback_cQCamera_saturationChanged_release)

proc hueChanged*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_hueChanged(self.h)

type QCamerahueChangedSlot* = proc()
proc miqt_exec_callback_cQCamera_hueChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCamerahueChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_hueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerahueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhueChanged*(self: gen_qcamera_types.QCamera, slot: QCamerahueChangedSlot) =
  var tmp = new QCamerahueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_hueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_hueChanged, miqt_exec_callback_cQCamera_hueChanged_release)

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

type QCamerametaObjectProc* = proc(self: QCamera): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCamerametacastProc* = proc(self: QCamera, param1: cstring): pointer {.raises: [], gcsafe.}
type QCamerametacallProc* = proc(self: QCamera, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCameraeventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameraeventFilterProc* = proc(self: QCamera, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameratimerEventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCamerachildEventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCameracustomEventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraconnectNotifyProc* = proc(self: QCamera, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCameradisconnectNotifyProc* = proc(self: QCamera, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCameraVTable* {.inheritable, pure.} = object
  vtbl: cQCameraVTable
  metaObject*: QCamerametaObjectProc
  metacast*: QCamerametacastProc
  metacall*: QCamerametacallProc
  event*: QCameraeventProc
  eventFilter*: QCameraeventFilterProc
  timerEvent*: QCameratimerEventProc
  childEvent*: QCamerachildEventProc
  customEvent*: QCameracustomEventProc
  connectNotify*: QCameraconnectNotifyProc
  disconnectNotify*: QCameradisconnectNotifyProc
proc QCamerametaObject*(self: gen_qcamera_types.QCamera, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQCamera_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCamerametacast*(self: gen_qcamera_types.QCamera, param1: cstring): pointer =
  fcQCamera_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCamera_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCamerametacall*(self: gen_qcamera_types.QCamera, param1: cint, param2: cint, param3: pointer): cint =
  fcQCamera_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCamera_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCameraevent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QEvent): bool =
  fcQCamera_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQCamera_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCameraeventFilter*(self: gen_qcamera_types.QCamera, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCamera_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCamera_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCameratimerEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCamera_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCamera_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QCamerachildEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCamera_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCamera_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QCameracustomEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QEvent): void =
  fcQCamera_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCamera_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QCameraconnectNotify*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCamera_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCamera_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QCameradisconnectNotify*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCamera_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCamera_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCamera* {.inheritable.} = ref object of QCamera
  vtbl*: cQCameraVTable
method metaObject*(self: VirtualQCamera, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCamerametaObject(self[])
proc miqt_exec_method_cQCamera_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQCamera, param1: cstring): pointer {.base.} =
  QCamerametacast(self[], param1)
proc miqt_exec_method_cQCamera_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQCamera, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCamerametacall(self[], param1, param2, param3)
proc miqt_exec_method_cQCamera_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQCamera, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCameraevent(self[], event)
proc miqt_exec_method_cQCamera_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQCamera, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCameraeventFilter(self[], watched, event)
proc miqt_exec_method_cQCamera_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQCamera, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCameratimerEvent(self[], event)
proc miqt_exec_method_cQCamera_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQCamera, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCamerachildEvent(self[], event)
proc miqt_exec_method_cQCamera_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQCamera, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCameracustomEvent(self[], event)
proc miqt_exec_method_cQCamera_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQCamera, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCameraconnectNotify(self[], signal)
proc miqt_exec_method_cQCamera_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQCamera, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCameradisconnectNotify(self[], signal)
proc miqt_exec_method_cQCamera_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCamera](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qcamera_types.QCamera, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCamera_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcamera_types.QCamera, ): cint =
  fcQCamera_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcamera_types.QCamera, signal: cstring): cint =
  fcQCamera_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCamera_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcamera_types.QCamera,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qcamera_types.QCamera,
    cameraDevice: gen_qcameradevice_types.QCameraDevice,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new2(addr(vtbl[].vtbl), cameraDevice.h), owned: true)

proc create*(T: type gen_qcamera_types.QCamera,
    position: cint,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new3(addr(vtbl[].vtbl), cint(position)), owned: true)

proc create*(T: type gen_qcamera_types.QCamera,
    parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new4(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qcamera_types.QCamera,
    cameraDevice: gen_qcameradevice_types.QCameraDevice, parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new5(addr(vtbl[].vtbl), cameraDevice.h, parent.h), owned: true)

proc create*(T: type gen_qcamera_types.QCamera,
    position: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new6(addr(vtbl[].vtbl), cint(position), parent.h), owned: true)

proc create*(T: type gen_qcamera_types.QCamera,
    vtbl: VirtualQCamera) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCamera()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCamera_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCamera_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCamera_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQCamera_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCamera_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCamera_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCamera_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCamera_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCamera_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCamera_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCamera_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qcamera_types.QCamera,
    cameraDevice: gen_qcameradevice_types.QCameraDevice,
    vtbl: VirtualQCamera) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCamera()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCamera_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCamera_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCamera_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQCamera_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCamera_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCamera_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCamera_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCamera_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCamera_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCamera_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCamera_new2(addr(vtbl[].vtbl), cameraDevice.h)
  vtbl[].owned = true

proc create*(T: type gen_qcamera_types.QCamera,
    position: cint,
    vtbl: VirtualQCamera) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCamera()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCamera_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCamera_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCamera_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQCamera_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCamera_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCamera_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCamera_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCamera_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCamera_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCamera_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCamera_new3(addr(vtbl[].vtbl), cint(position))
  vtbl[].owned = true

proc create*(T: type gen_qcamera_types.QCamera,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQCamera) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCamera()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCamera_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCamera_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCamera_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQCamera_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCamera_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCamera_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCamera_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCamera_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCamera_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCamera_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCamera_new4(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qcamera_types.QCamera,
    cameraDevice: gen_qcameradevice_types.QCameraDevice, parent: gen_qobject_types.QObject,
    vtbl: VirtualQCamera) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCamera()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCamera_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCamera_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCamera_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQCamera_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCamera_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCamera_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCamera_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCamera_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCamera_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCamera_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCamera_new5(addr(vtbl[].vtbl), cameraDevice.h, parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qcamera_types.QCamera,
    position: cint, parent: gen_qobject_types.QObject,
    vtbl: VirtualQCamera) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCamera()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCamera, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCamera_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCamera_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCamera_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQCamera_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCamera_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCamera_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCamera_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCamera_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCamera_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCamera_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCamera_new6(addr(vtbl[].vtbl), cint(position), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qcamera_types.QCamera): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_staticMetaObject())
