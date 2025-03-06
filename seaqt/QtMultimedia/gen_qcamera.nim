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
{.compile("gen_qcamera.cpp", cflags).}


type QCameraStatusEnum* = distinct cint
template UnavailableStatus*(_: type QCameraStatusEnum): untyped = 0
template UnloadedStatus*(_: type QCameraStatusEnum): untyped = 1
template LoadingStatus*(_: type QCameraStatusEnum): untyped = 2
template UnloadingStatus*(_: type QCameraStatusEnum): untyped = 3
template LoadedStatus*(_: type QCameraStatusEnum): untyped = 4
template StandbyStatus*(_: type QCameraStatusEnum): untyped = 5
template StartingStatus*(_: type QCameraStatusEnum): untyped = 6
template StoppingStatus*(_: type QCameraStatusEnum): untyped = 7
template ActiveStatus*(_: type QCameraStatusEnum): untyped = 8


type QCameraStateEnum* = distinct cint
template UnloadedState*(_: type QCameraStateEnum): untyped = 0
template LoadedState*(_: type QCameraStateEnum): untyped = 1
template ActiveState*(_: type QCameraStateEnum): untyped = 2


type QCameraCaptureModeEnum* = distinct cint
template CaptureViewfinder*(_: type QCameraCaptureModeEnum): untyped = 0
template CaptureStillImage*(_: type QCameraCaptureModeEnum): untyped = 1
template CaptureVideo*(_: type QCameraCaptureModeEnum): untyped = 2


type QCameraErrorEnum* = distinct cint
template NoError*(_: type QCameraErrorEnum): untyped = 0
template CameraError*(_: type QCameraErrorEnum): untyped = 1
template InvalidRequestError*(_: type QCameraErrorEnum): untyped = 2
template ServiceMissingError*(_: type QCameraErrorEnum): untyped = 3
template NotSupportedFeatureError*(_: type QCameraErrorEnum): untyped = 4


type QCameraLockStatusEnum* = distinct cint
template Unlocked*(_: type QCameraLockStatusEnum): untyped = 0
template Searching*(_: type QCameraLockStatusEnum): untyped = 1
template Locked*(_: type QCameraLockStatusEnum): untyped = 2


type QCameraLockChangeReasonEnum* = distinct cint
template UserRequest*(_: type QCameraLockChangeReasonEnum): untyped = 0
template LockAcquired*(_: type QCameraLockChangeReasonEnum): untyped = 1
template LockFailed*(_: type QCameraLockChangeReasonEnum): untyped = 2
template LockLost*(_: type QCameraLockChangeReasonEnum): untyped = 3
template LockTemporaryLost*(_: type QCameraLockChangeReasonEnum): untyped = 4


type QCameraLockTypeEnum* = distinct cint
template NoLock*(_: type QCameraLockTypeEnum): untyped = 0
template LockExposure*(_: type QCameraLockTypeEnum): untyped = 1
template LockWhiteBalance*(_: type QCameraLockTypeEnum): untyped = 2
template LockFocus*(_: type QCameraLockTypeEnum): untyped = 4


type QCameraPositionEnum* = distinct cint
template UnspecifiedPosition*(_: type QCameraPositionEnum): untyped = 0
template BackFace*(_: type QCameraPositionEnum): untyped = 1
template FrontFace*(_: type QCameraPositionEnum): untyped = 2


import ./gen_qcamera_types
export gen_qcamera_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qabstractvideosurface_types,
  ./gen_qcameraexposure_types,
  ./gen_qcamerafocus_types,
  ./gen_qcameraimageprocessing_types,
  ./gen_qcamerainfo_types,
  ./gen_qcameraviewfindersettings_types,
  ./gen_qmediaobject,
  ./gen_qmediaservice_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qabstractvideosurface_types,
  gen_qcameraexposure_types,
  gen_qcamerafocus_types,
  gen_qcameraimageprocessing_types,
  gen_qcamerainfo_types,
  gen_qcameraviewfindersettings_types,
  gen_qmediaobject,
  gen_qmediaservice_types

type cQCamera*{.exportc: "QCamera", incompleteStruct.} = object
type cQCameraFrameRateRange*{.exportc: "QCamera__FrameRateRange", incompleteStruct.} = object

proc fcQCamera_new(): ptr cQCamera {.importc: "QCamera_new".}
proc fcQCamera_new2(deviceName: struct_miqt_string): ptr cQCamera {.importc: "QCamera_new2".}
proc fcQCamera_new3(cameraInfo: pointer): ptr cQCamera {.importc: "QCamera_new3".}
proc fcQCamera_new4(position: cint): ptr cQCamera {.importc: "QCamera_new4".}
proc fcQCamera_new5(parent: pointer): ptr cQCamera {.importc: "QCamera_new5".}
proc fcQCamera_new6(deviceName: struct_miqt_string, parent: pointer): ptr cQCamera {.importc: "QCamera_new6".}
proc fcQCamera_new7(cameraInfo: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new7".}
proc fcQCamera_new8(position: cint, parent: pointer): ptr cQCamera {.importc: "QCamera_new8".}
proc fcQCamera_metaObject(self: pointer, ): pointer {.importc: "QCamera_metaObject".}
proc fcQCamera_metacast(self: pointer, param1: cstring): pointer {.importc: "QCamera_metacast".}
proc fcQCamera_tr(s: cstring): struct_miqt_string {.importc: "QCamera_tr".}
proc fcQCamera_trUtf8(s: cstring): struct_miqt_string {.importc: "QCamera_trUtf8".}
proc fcQCamera_availableDevices(): struct_miqt_array {.importc: "QCamera_availableDevices".}
proc fcQCamera_deviceDescription(device: struct_miqt_string): struct_miqt_string {.importc: "QCamera_deviceDescription".}
proc fcQCamera_availability(self: pointer, ): cint {.importc: "QCamera_availability".}
proc fcQCamera_state(self: pointer, ): cint {.importc: "QCamera_state".}
proc fcQCamera_status(self: pointer, ): cint {.importc: "QCamera_status".}
proc fcQCamera_captureMode(self: pointer, ): cint {.importc: "QCamera_captureMode".}
proc fcQCamera_isCaptureModeSupported(self: pointer, mode: cint): bool {.importc: "QCamera_isCaptureModeSupported".}
proc fcQCamera_exposure(self: pointer, ): pointer {.importc: "QCamera_exposure".}
proc fcQCamera_focus(self: pointer, ): pointer {.importc: "QCamera_focus".}
proc fcQCamera_imageProcessing(self: pointer, ): pointer {.importc: "QCamera_imageProcessing".}
proc fcQCamera_setViewfinder(self: pointer, viewfinder: ptr cQVideoWidget): void {.importc: "QCamera_setViewfinder".}
proc fcQCamera_setViewfinderWithViewfinder(self: pointer, viewfinder: ptr cQGraphicsVideoItem): void {.importc: "QCamera_setViewfinderWithViewfinder".}
proc fcQCamera_setViewfinderWithSurface(self: pointer, surface: pointer): void {.importc: "QCamera_setViewfinderWithSurface".}
proc fcQCamera_viewfinderSettings(self: pointer, ): pointer {.importc: "QCamera_viewfinderSettings".}
proc fcQCamera_setViewfinderSettings(self: pointer, settings: pointer): void {.importc: "QCamera_setViewfinderSettings".}
proc fcQCamera_supportedViewfinderSettings(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderSettings".}
proc fcQCamera_supportedViewfinderResolutions(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderResolutions".}
proc fcQCamera_supportedViewfinderFrameRateRanges(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderFrameRateRanges".}
proc fcQCamera_supportedViewfinderPixelFormats(self: pointer, ): struct_miqt_array {.importc: "QCamera_supportedViewfinderPixelFormats".}
proc fcQCamera_error(self: pointer, ): cint {.importc: "QCamera_error".}
proc fcQCamera_errorString(self: pointer, ): struct_miqt_string {.importc: "QCamera_errorString".}
proc fcQCamera_supportedLocks(self: pointer, ): cint {.importc: "QCamera_supportedLocks".}
proc fcQCamera_requestedLocks(self: pointer, ): cint {.importc: "QCamera_requestedLocks".}
proc fcQCamera_lockStatus(self: pointer, ): cint {.importc: "QCamera_lockStatus".}
proc fcQCamera_lockStatusWithLock(self: pointer, lock: cint): cint {.importc: "QCamera_lockStatusWithLock".}
proc fcQCamera_setCaptureMode(self: pointer, mode: cint): void {.importc: "QCamera_setCaptureMode".}
proc fcQCamera_load(self: pointer, ): void {.importc: "QCamera_load".}
proc fcQCamera_unload(self: pointer, ): void {.importc: "QCamera_unload".}
proc fcQCamera_start(self: pointer, ): void {.importc: "QCamera_start".}
proc fcQCamera_stop(self: pointer, ): void {.importc: "QCamera_stop".}
proc fcQCamera_searchAndLock(self: pointer, ): void {.importc: "QCamera_searchAndLock".}
proc fcQCamera_unlock(self: pointer, ): void {.importc: "QCamera_unlock".}
proc fcQCamera_searchAndLockWithLocks(self: pointer, locks: cint): void {.importc: "QCamera_searchAndLockWithLocks".}
proc fcQCamera_unlockWithLocks(self: pointer, locks: cint): void {.importc: "QCamera_unlockWithLocks".}
proc fcQCamera_stateChanged(self: pointer, state: cint): void {.importc: "QCamera_stateChanged".}
proc fcQCamera_connect_stateChanged(self: pointer, slot: int) {.importc: "QCamera_connect_stateChanged".}
proc fcQCamera_captureModeChanged(self: pointer, param1: cint): void {.importc: "QCamera_captureModeChanged".}
proc fcQCamera_connect_captureModeChanged(self: pointer, slot: int) {.importc: "QCamera_connect_captureModeChanged".}
proc fcQCamera_statusChanged(self: pointer, status: cint): void {.importc: "QCamera_statusChanged".}
proc fcQCamera_connect_statusChanged(self: pointer, slot: int) {.importc: "QCamera_connect_statusChanged".}
proc fcQCamera_locked(self: pointer, ): void {.importc: "QCamera_locked".}
proc fcQCamera_connect_locked(self: pointer, slot: int) {.importc: "QCamera_connect_locked".}
proc fcQCamera_lockFailed(self: pointer, ): void {.importc: "QCamera_lockFailed".}
proc fcQCamera_connect_lockFailed(self: pointer, slot: int) {.importc: "QCamera_connect_lockFailed".}
proc fcQCamera_lockStatusChanged(self: pointer, status: cint, reason: cint): void {.importc: "QCamera_lockStatusChanged".}
proc fcQCamera_connect_lockStatusChanged(self: pointer, slot: int) {.importc: "QCamera_connect_lockStatusChanged".}
proc fcQCamera_lockStatusChanged2(self: pointer, lock: cint, status: cint, reason: cint): void {.importc: "QCamera_lockStatusChanged2".}
proc fcQCamera_connect_lockStatusChanged2(self: pointer, slot: int) {.importc: "QCamera_connect_lockStatusChanged2".}
proc fcQCamera_errorWithQCameraError(self: pointer, param1: cint): void {.importc: "QCamera_errorWithQCameraError".}
proc fcQCamera_connect_errorWithQCameraError(self: pointer, slot: int) {.importc: "QCamera_connect_errorWithQCameraError".}
proc fcQCamera_errorOccurred(self: pointer, param1: cint): void {.importc: "QCamera_errorOccurred".}
proc fcQCamera_connect_errorOccurred(self: pointer, slot: int) {.importc: "QCamera_connect_errorOccurred".}
proc fcQCamera_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_tr2".}
proc fcQCamera_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_tr3".}
proc fcQCamera_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_trUtf82".}
proc fcQCamera_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_trUtf83".}
proc fcQCamera_supportedViewfinderSettings1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderSettings1".}
proc fcQCamera_supportedViewfinderResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderResolutions1".}
proc fcQCamera_supportedViewfinderFrameRateRanges1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderFrameRateRanges1".}
proc fcQCamera_supportedViewfinderPixelFormats1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderPixelFormats1".}
proc fQCamera_virtualbase_availability(self: pointer, ): cint{.importc: "QCamera_virtualbase_availability".}
proc fcQCamera_override_virtual_availability(self: pointer, slot: int) {.importc: "QCamera_override_virtual_availability".}
proc fQCamera_virtualbase_isAvailable(self: pointer, ): bool{.importc: "QCamera_virtualbase_isAvailable".}
proc fcQCamera_override_virtual_isAvailable(self: pointer, slot: int) {.importc: "QCamera_override_virtual_isAvailable".}
proc fQCamera_virtualbase_service(self: pointer, ): pointer{.importc: "QCamera_virtualbase_service".}
proc fcQCamera_override_virtual_service(self: pointer, slot: int) {.importc: "QCamera_override_virtual_service".}
proc fQCamera_virtualbase_bind(self: pointer, param1: pointer): bool{.importc: "QCamera_virtualbase_bind".}
proc fcQCamera_override_virtual_bindX(self: pointer, slot: int) {.importc: "QCamera_override_virtual_bind".}
proc fQCamera_virtualbase_unbind(self: pointer, param1: pointer): void{.importc: "QCamera_virtualbase_unbind".}
proc fcQCamera_override_virtual_unbind(self: pointer, slot: int) {.importc: "QCamera_override_virtual_unbind".}
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
proc fcQCamera_delete(self: pointer) {.importc: "QCamera_delete".}
proc fcQCameraFrameRateRange_new(): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new".}
proc fcQCameraFrameRateRange_new2(minimum: float64, maximum: float64): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new2".}
proc fcQCameraFrameRateRange_new3(param1: pointer): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new3".}
proc fcQCameraFrameRateRange_delete(self: pointer) {.importc: "QCamera__FrameRateRange_delete".}


func init*(T: type gen_qcamera_types.QCamera, h: ptr cQCamera): gen_qcamera_types.QCamera =
  T(h: h)
proc create*(T: type gen_qcamera_types.QCamera, ): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new())

proc create*(T: type gen_qcamera_types.QCamera, deviceName: seq[byte]): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new2(struct_miqt_string(data: cast[cstring](if len(deviceName) == 0: nil else: unsafeAddr deviceName[0]), len: csize_t(len(deviceName)))))

proc create*(T: type gen_qcamera_types.QCamera, cameraInfo: gen_qcamerainfo_types.QCameraInfo): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new3(cameraInfo.h))

proc create*(T: type gen_qcamera_types.QCamera, position: cint): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new4(cint(position)))

proc create*(T: type gen_qcamera_types.QCamera, parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new5(parent.h))

proc create*(T: type gen_qcamera_types.QCamera, deviceName: seq[byte], parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new6(struct_miqt_string(data: cast[cstring](if len(deviceName) == 0: nil else: unsafeAddr deviceName[0]), len: csize_t(len(deviceName))), parent.h))

proc create*(T: type gen_qcamera_types.QCamera, cameraInfo: gen_qcamerainfo_types.QCameraInfo, parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new7(cameraInfo.h, parent.h))

proc create*(T: type gen_qcamera_types.QCamera, position: cint, parent: gen_qobject_types.QObject): gen_qcamera_types.QCamera =
  gen_qcamera_types.QCamera.init(fcQCamera_new8(cint(position), parent.h))

proc metaObject*(self: gen_qcamera_types.QCamera, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_metaObject(self.h))

proc metacast*(self: gen_qcamera_types.QCamera, param1: cstring): pointer =
  fcQCamera_metacast(self.h, param1)

proc tr*(_: type gen_qcamera_types.QCamera, s: cstring): string =
  let v_ms = fcQCamera_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamera_types.QCamera, s: cstring): string =
  let v_ms = fcQCamera_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableDevices*(_: type gen_qcamera_types.QCamera, ): seq[seq[byte]] =
  var v_ma = fcQCamera_availableDevices()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc deviceDescription*(_: type gen_qcamera_types.QCamera, device: seq[byte]): string =
  let v_ms = fcQCamera_deviceDescription(struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_availability(self.h))

proc state*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_state(self.h))

proc status*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_status(self.h))

proc captureMode*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_captureMode(self.h))

proc isCaptureModeSupported*(self: gen_qcamera_types.QCamera, mode: cint): bool =
  fcQCamera_isCaptureModeSupported(self.h, cint(mode))

proc exposure*(self: gen_qcamera_types.QCamera, ): gen_qcameraexposure_types.QCameraExposure =
  gen_qcameraexposure_types.QCameraExposure(h: fcQCamera_exposure(self.h))

proc focus*(self: gen_qcamera_types.QCamera, ): gen_qcamerafocus_types.QCameraFocus =
  gen_qcamerafocus_types.QCameraFocus(h: fcQCamera_focus(self.h))

proc imageProcessing*(self: gen_qcamera_types.QCamera, ): gen_qcameraimageprocessing_types.QCameraImageProcessing =
  gen_qcameraimageprocessing_types.QCameraImageProcessing(h: fcQCamera_imageProcessing(self.h))

proc setViewfinder*(self: gen_qcamera_types.QCamera, viewfinder: ptr QVideoWidget): void =
  fcQCamera_setViewfinder(self.h, viewfinder)

proc setViewfinder*(self: gen_qcamera_types.QCamera, viewfinder: ptr QGraphicsVideoItem): void =
  fcQCamera_setViewfinderWithViewfinder(self.h, viewfinder)

proc setViewfinder*(self: gen_qcamera_types.QCamera, surface: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQCamera_setViewfinderWithSurface(self.h, surface.h)

proc viewfinderSettings*(self: gen_qcamera_types.QCamera, ): gen_qcameraviewfindersettings_types.QCameraViewfinderSettings =
  gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: fcQCamera_viewfinderSettings(self.h))

proc setViewfinderSettings*(self: gen_qcamera_types.QCamera, settings: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): void =
  fcQCamera_setViewfinderSettings(self.h, settings.h)

proc supportedViewfinderSettings*(self: gen_qcamera_types.QCamera, ): seq[gen_qcameraviewfindersettings_types.QCameraViewfinderSettings] =
  var v_ma = fcQCamera_supportedViewfinderSettings(self.h)
  var vx_ret = newSeq[gen_qcameraviewfindersettings_types.QCameraViewfinderSettings](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: v_outCast[i])
  vx_ret

proc supportedViewfinderResolutions*(self: gen_qcamera_types.QCamera, ): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCamera_supportedViewfinderResolutions(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc supportedViewfinderFrameRateRanges*(self: gen_qcamera_types.QCamera, ): seq[gen_qcamera_types.QCameraFrameRateRange] =
  var v_ma = fcQCamera_supportedViewfinderFrameRateRanges(self.h)
  var vx_ret = newSeq[gen_qcamera_types.QCameraFrameRateRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcamera_types.QCameraFrameRateRange(h: v_outCast[i])
  vx_ret

proc supportedViewfinderPixelFormats*(self: gen_qcamera_types.QCamera, ): seq[cint] =
  var v_ma = fcQCamera_supportedViewfinderPixelFormats(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc error*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_error(self.h))

proc errorString*(self: gen_qcamera_types.QCamera, ): string =
  let v_ms = fcQCamera_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedLocks*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_supportedLocks(self.h))

proc requestedLocks*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_requestedLocks(self.h))

proc lockStatus*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_lockStatus(self.h))

proc lockStatus*(self: gen_qcamera_types.QCamera, lock: cint): cint =
  cint(fcQCamera_lockStatusWithLock(self.h, cint(lock)))

proc setCaptureMode*(self: gen_qcamera_types.QCamera, mode: cint): void =
  fcQCamera_setCaptureMode(self.h, cint(mode))

proc load*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_load(self.h)

proc unload*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_unload(self.h)

proc start*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_start(self.h)

proc stop*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_stop(self.h)

proc searchAndLock*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_searchAndLock(self.h)

proc unlock*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_unlock(self.h)

proc searchAndLock*(self: gen_qcamera_types.QCamera, locks: cint): void =
  fcQCamera_searchAndLockWithLocks(self.h, cint(locks))

proc unlock*(self: gen_qcamera_types.QCamera, locks: cint): void =
  fcQCamera_unlockWithLocks(self.h, cint(locks))

proc stateChanged*(self: gen_qcamera_types.QCamera, state: cint): void =
  fcQCamera_stateChanged(self.h, cint(state))

type QCamerastateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QCamera_stateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QCamerastateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qcamera_types.QCamera, slot: QCamerastateChangedSlot) =
  var tmp = new QCamerastateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc captureModeChanged*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_captureModeChanged(self.h, cint(param1))

type QCameracaptureModeChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QCamera_captureModeChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameracaptureModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc oncaptureModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameracaptureModeChangedSlot) =
  var tmp = new QCameracaptureModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_captureModeChanged(self.h, cast[int](addr tmp[]))

proc statusChanged*(self: gen_qcamera_types.QCamera, status: cint): void =
  fcQCamera_statusChanged(self.h, cint(status))

type QCamerastatusChangedSlot* = proc(status: cint)
proc miqt_exec_callback_QCamera_statusChanged(slot: int, status: cint) {.exportc.} =
  let nimfunc = cast[ptr QCamerastatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc onstatusChanged*(self: gen_qcamera_types.QCamera, slot: QCamerastatusChangedSlot) =
  var tmp = new QCamerastatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_statusChanged(self.h, cast[int](addr tmp[]))

proc locked*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_locked(self.h)

type QCameralockedSlot* = proc()
proc miqt_exec_callback_QCamera_locked(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameralockedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlocked*(self: gen_qcamera_types.QCamera, slot: QCameralockedSlot) =
  var tmp = new QCameralockedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_locked(self.h, cast[int](addr tmp[]))

proc lockFailed*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_lockFailed(self.h)

type QCameralockFailedSlot* = proc()
proc miqt_exec_callback_QCamera_lockFailed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCameralockFailedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlockFailed*(self: gen_qcamera_types.QCamera, slot: QCameralockFailedSlot) =
  var tmp = new QCameralockFailedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_lockFailed(self.h, cast[int](addr tmp[]))

proc lockStatusChanged*(self: gen_qcamera_types.QCamera, status: cint, reason: cint): void =
  fcQCamera_lockStatusChanged(self.h, cint(status), cint(reason))

type QCameralockStatusChangedSlot* = proc(status: cint, reason: cint)
proc miqt_exec_callback_QCamera_lockStatusChanged(slot: int, status: cint, reason: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameralockStatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  let slotval2 = cint(reason)

  nimfunc[](slotval1, slotval2)

proc onlockStatusChanged*(self: gen_qcamera_types.QCamera, slot: QCameralockStatusChangedSlot) =
  var tmp = new QCameralockStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_lockStatusChanged(self.h, cast[int](addr tmp[]))

proc lockStatusChanged*(self: gen_qcamera_types.QCamera, lock: cint, status: cint, reason: cint): void =
  fcQCamera_lockStatusChanged2(self.h, cint(lock), cint(status), cint(reason))

type QCameralockStatusChanged2Slot* = proc(lock: cint, status: cint, reason: cint)
proc miqt_exec_callback_QCamera_lockStatusChanged2(slot: int, lock: cint, status: cint, reason: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameralockStatusChanged2Slot](cast[pointer](slot))
  let slotval1 = cint(lock)

  let slotval2 = cint(status)

  let slotval3 = cint(reason)

  nimfunc[](slotval1, slotval2, slotval3)

proc onlockStatusChanged*(self: gen_qcamera_types.QCamera, slot: QCameralockStatusChanged2Slot) =
  var tmp = new QCameralockStatusChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_lockStatusChanged2(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_errorWithQCameraError(self.h, cint(param1))

type QCameraerrorWithQCameraErrorSlot* = proc(param1: cint)
proc miqt_exec_callback_QCamera_errorWithQCameraError(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameraerrorWithQCameraErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onerror*(self: gen_qcamera_types.QCamera, slot: QCameraerrorWithQCameraErrorSlot) =
  var tmp = new QCameraerrorWithQCameraErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorWithQCameraError(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_errorOccurred(self.h, cint(param1))

type QCameraerrorOccurredSlot* = proc(param1: cint)
proc miqt_exec_callback_QCamera_errorOccurred(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QCameraerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc onerrorOccurred*(self: gen_qcamera_types.QCamera, slot: QCameraerrorOccurredSlot) =
  var tmp = new QCameraerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorOccurred(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qcamera_types.QCamera, s: cstring, c: cstring): string =
  let v_ms = fcQCamera_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamera_types.QCamera, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCamera_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedViewfinderSettings*(self: gen_qcamera_types.QCamera, settings: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): seq[gen_qcameraviewfindersettings_types.QCameraViewfinderSettings] =
  var v_ma = fcQCamera_supportedViewfinderSettings1(self.h, settings.h)
  var vx_ret = newSeq[gen_qcameraviewfindersettings_types.QCameraViewfinderSettings](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: v_outCast[i])
  vx_ret

proc supportedViewfinderResolutions*(self: gen_qcamera_types.QCamera, settings: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCamera_supportedViewfinderResolutions1(self.h, settings.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i])
  vx_ret

proc supportedViewfinderFrameRateRanges*(self: gen_qcamera_types.QCamera, settings: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): seq[gen_qcamera_types.QCameraFrameRateRange] =
  var v_ma = fcQCamera_supportedViewfinderFrameRateRanges1(self.h, settings.h)
  var vx_ret = newSeq[gen_qcamera_types.QCameraFrameRateRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcamera_types.QCameraFrameRateRange(h: v_outCast[i])
  vx_ret

proc supportedViewfinderPixelFormats*(self: gen_qcamera_types.QCamera, settings: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): seq[cint] =
  var v_ma = fcQCamera_supportedViewfinderPixelFormats1(self.h, settings.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc QCameraavailability*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fQCamera_virtualbase_availability(self.h))

type QCameraavailabilityProc* = proc(): cint
proc onavailability*(self: gen_qcamera_types.QCamera, slot: QCameraavailabilityProc) =
  # TODO check subclass
  var tmp = new QCameraavailabilityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_availability(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_availability(self: ptr cQCamera, slot: int): cint {.exportc: "miqt_exec_callback_QCamera_availability ".} =
  var nimfunc = cast[ptr QCameraavailabilityProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QCameraisAvailable*(self: gen_qcamera_types.QCamera, ): bool =
  fQCamera_virtualbase_isAvailable(self.h)

type QCameraisAvailableProc* = proc(): bool
proc onisAvailable*(self: gen_qcamera_types.QCamera, slot: QCameraisAvailableProc) =
  # TODO check subclass
  var tmp = new QCameraisAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_isAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_isAvailable(self: ptr cQCamera, slot: int): bool {.exportc: "miqt_exec_callback_QCamera_isAvailable ".} =
  var nimfunc = cast[ptr QCameraisAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCameraservice*(self: gen_qcamera_types.QCamera, ): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fQCamera_virtualbase_service(self.h))

type QCameraserviceProc* = proc(): gen_qmediaservice_types.QMediaService
proc onservice*(self: gen_qcamera_types.QCamera, slot: QCameraserviceProc) =
  # TODO check subclass
  var tmp = new QCameraserviceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_service(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_service(self: ptr cQCamera, slot: int): pointer {.exportc: "miqt_exec_callback_QCamera_service ".} =
  var nimfunc = cast[ptr QCameraserviceProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCamerabindX*(self: gen_qcamera_types.QCamera, param1: gen_qobject_types.QObject): bool =
  fQCamera_virtualbase_bind(self.h, param1.h)

type QCamerabindXProc* = proc(param1: gen_qobject_types.QObject): bool
proc onbindX*(self: gen_qcamera_types.QCamera, slot: QCamerabindXProc) =
  # TODO check subclass
  var tmp = new QCamerabindXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_bind(self: ptr cQCamera, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QCamera_bind ".} =
  var nimfunc = cast[ptr QCamerabindXProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraunbind*(self: gen_qcamera_types.QCamera, param1: gen_qobject_types.QObject): void =
  fQCamera_virtualbase_unbind(self.h, param1.h)

type QCameraunbindProc* = proc(param1: gen_qobject_types.QObject): void
proc onunbind*(self: gen_qcamera_types.QCamera, slot: QCameraunbindProc) =
  # TODO check subclass
  var tmp = new QCameraunbindProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_override_virtual_unbind(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCamera_unbind(self: ptr cQCamera, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCamera_unbind ".} =
  var nimfunc = cast[ptr QCameraunbindProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)


  nimfunc[](slotval1)
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
proc delete*(self: gen_qcamera_types.QCamera) =
  fcQCamera_delete(self.h)

func init*(T: type gen_qcamera_types.QCameraFrameRateRange, h: ptr cQCameraFrameRateRange): gen_qcamera_types.QCameraFrameRateRange =
  T(h: h)
proc create*(T: type gen_qcamera_types.QCameraFrameRateRange, ): gen_qcamera_types.QCameraFrameRateRange =
  gen_qcamera_types.QCameraFrameRateRange.init(fcQCameraFrameRateRange_new())

proc create*(T: type gen_qcamera_types.QCameraFrameRateRange, minimum: float64, maximum: float64): gen_qcamera_types.QCameraFrameRateRange =
  gen_qcamera_types.QCameraFrameRateRange.init(fcQCameraFrameRateRange_new2(minimum, maximum))

proc create*(T: type gen_qcamera_types.QCameraFrameRateRange, param1: gen_qcamera_types.QCameraFrameRateRange): gen_qcamera_types.QCameraFrameRateRange =
  gen_qcamera_types.QCameraFrameRateRange.init(fcQCameraFrameRateRange_new3(param1.h))

proc delete*(self: gen_qcamera_types.QCameraFrameRateRange) =
  fcQCameraFrameRateRange_delete(self.h)
