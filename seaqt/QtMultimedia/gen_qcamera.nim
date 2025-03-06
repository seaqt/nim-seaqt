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

proc fcQCamera_metaObject(self: pointer, ): pointer {.importc: "QCamera_metaObject".}
proc fcQCamera_metacast(self: pointer, param1: cstring): pointer {.importc: "QCamera_metacast".}
proc fcQCamera_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCamera_metacall".}
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
proc fcQCamera_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_stateChanged".}
proc fcQCamera_captureModeChanged(self: pointer, param1: cint): void {.importc: "QCamera_captureModeChanged".}
proc fcQCamera_connect_captureModeChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_captureModeChanged".}
proc fcQCamera_statusChanged(self: pointer, status: cint): void {.importc: "QCamera_statusChanged".}
proc fcQCamera_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_statusChanged".}
proc fcQCamera_locked(self: pointer, ): void {.importc: "QCamera_locked".}
proc fcQCamera_connect_locked(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_locked".}
proc fcQCamera_lockFailed(self: pointer, ): void {.importc: "QCamera_lockFailed".}
proc fcQCamera_connect_lockFailed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_lockFailed".}
proc fcQCamera_lockStatusChanged(self: pointer, status: cint, reason: cint): void {.importc: "QCamera_lockStatusChanged".}
proc fcQCamera_connect_lockStatusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint, reason: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_lockStatusChanged".}
proc fcQCamera_lockStatusChanged2(self: pointer, lock: cint, status: cint, reason: cint): void {.importc: "QCamera_lockStatusChanged2".}
proc fcQCamera_connect_lockStatusChanged2(self: pointer, slot: int, callback: proc (slot: int, lock: cint, status: cint, reason: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_lockStatusChanged2".}
proc fcQCamera_errorWithQCameraError(self: pointer, param1: cint): void {.importc: "QCamera_errorWithQCameraError".}
proc fcQCamera_connect_errorWithQCameraError(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_errorWithQCameraError".}
proc fcQCamera_errorOccurred(self: pointer, param1: cint): void {.importc: "QCamera_errorOccurred".}
proc fcQCamera_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCamera_connect_errorOccurred".}
proc fcQCamera_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_tr2".}
proc fcQCamera_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_tr3".}
proc fcQCamera_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCamera_trUtf82".}
proc fcQCamera_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCamera_trUtf83".}
proc fcQCamera_supportedViewfinderSettings1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderSettings1".}
proc fcQCamera_supportedViewfinderResolutions1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderResolutions1".}
proc fcQCamera_supportedViewfinderFrameRateRanges1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderFrameRateRanges1".}
proc fcQCamera_supportedViewfinderPixelFormats1(self: pointer, settings: pointer): struct_miqt_array {.importc: "QCamera_supportedViewfinderPixelFormats1".}
type cQCameraVTable = object
  destructor*: proc(vtbl: ptr cQCameraVTable, self: ptr cQCamera) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  availability*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isAvailable*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  service*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  bindX*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  unbind*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQCamera_virtualbase_availability(self: pointer, ): cint {.importc: "QCamera_virtualbase_availability".}
proc fcQCamera_virtualbase_isAvailable(self: pointer, ): bool {.importc: "QCamera_virtualbase_isAvailable".}
proc fcQCamera_virtualbase_service(self: pointer, ): pointer {.importc: "QCamera_virtualbase_service".}
proc fcQCamera_virtualbase_bindX(self: pointer, param1: pointer): bool {.importc: "QCamera_virtualbase_bind".}
proc fcQCamera_virtualbase_unbind(self: pointer, param1: pointer): void {.importc: "QCamera_virtualbase_unbind".}
proc fcQCamera_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCamera_virtualbase_event".}
proc fcQCamera_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCamera_virtualbase_eventFilter".}
proc fcQCamera_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCamera_virtualbase_timerEvent".}
proc fcQCamera_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCamera_virtualbase_childEvent".}
proc fcQCamera_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCamera_virtualbase_customEvent".}
proc fcQCamera_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCamera_virtualbase_connectNotify".}
proc fcQCamera_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCamera_virtualbase_disconnectNotify".}
proc fcQCamera_protectedbase_addPropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QCamera_protectedbase_addPropertyWatch".}
proc fcQCamera_protectedbase_removePropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QCamera_protectedbase_removePropertyWatch".}
proc fcQCamera_protectedbase_sender(self: pointer, ): pointer {.importc: "QCamera_protectedbase_sender".}
proc fcQCamera_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCamera_protectedbase_senderSignalIndex".}
proc fcQCamera_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCamera_protectedbase_receivers".}
proc fcQCamera_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCamera_protectedbase_isSignalConnected".}
proc fcQCamera_new(vtbl: pointer, ): ptr cQCamera {.importc: "QCamera_new".}
proc fcQCamera_new2(vtbl: pointer, deviceName: struct_miqt_string): ptr cQCamera {.importc: "QCamera_new2".}
proc fcQCamera_new3(vtbl: pointer, cameraInfo: pointer): ptr cQCamera {.importc: "QCamera_new3".}
proc fcQCamera_new4(vtbl: pointer, position: cint): ptr cQCamera {.importc: "QCamera_new4".}
proc fcQCamera_new5(vtbl: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new5".}
proc fcQCamera_new6(vtbl: pointer, deviceName: struct_miqt_string, parent: pointer): ptr cQCamera {.importc: "QCamera_new6".}
proc fcQCamera_new7(vtbl: pointer, cameraInfo: pointer, parent: pointer): ptr cQCamera {.importc: "QCamera_new7".}
proc fcQCamera_new8(vtbl: pointer, position: cint, parent: pointer): ptr cQCamera {.importc: "QCamera_new8".}
proc fcQCamera_staticMetaObject(): pointer {.importc: "QCamera_staticMetaObject".}
proc fcQCamera_delete(self: pointer) {.importc: "QCamera_delete".}
proc fcQCameraFrameRateRange_new(): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new".}
proc fcQCameraFrameRateRange_new2(minimum: float64, maximum: float64): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new2".}
proc fcQCameraFrameRateRange_new3(param1: pointer): ptr cQCameraFrameRateRange {.importc: "QCamera__FrameRateRange_new3".}
proc fcQCameraFrameRateRange_delete(self: pointer) {.importc: "QCamera__FrameRateRange_delete".}

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
proc miqt_exec_callback_cQCamera_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCamerastateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerastateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qcamera_types.QCamera, slot: QCamerastateChangedSlot) =
  var tmp = new QCamerastateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_stateChanged, miqt_exec_callback_cQCamera_stateChanged_release)

proc captureModeChanged*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_captureModeChanged(self.h, cint(param1))

type QCameracaptureModeChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCamera_captureModeChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameracaptureModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_captureModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameracaptureModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncaptureModeChanged*(self: gen_qcamera_types.QCamera, slot: QCameracaptureModeChangedSlot) =
  var tmp = new QCameracaptureModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_captureModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_captureModeChanged, miqt_exec_callback_cQCamera_captureModeChanged_release)

proc statusChanged*(self: gen_qcamera_types.QCamera, status: cint): void =
  fcQCamera_statusChanged(self.h, cint(status))

type QCamerastatusChangedSlot* = proc(status: cint)
proc miqt_exec_callback_cQCamera_statusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCamerastatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCamerastatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qcamera_types.QCamera, slot: QCamerastatusChangedSlot) =
  var tmp = new QCamerastatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_statusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_statusChanged, miqt_exec_callback_cQCamera_statusChanged_release)

proc locked*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_locked(self.h)

type QCameralockedSlot* = proc()
proc miqt_exec_callback_cQCamera_locked(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameralockedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_locked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameralockedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlocked*(self: gen_qcamera_types.QCamera, slot: QCameralockedSlot) =
  var tmp = new QCameralockedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_locked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_locked, miqt_exec_callback_cQCamera_locked_release)

proc lockFailed*(self: gen_qcamera_types.QCamera, ): void =
  fcQCamera_lockFailed(self.h)

type QCameralockFailedSlot* = proc()
proc miqt_exec_callback_cQCamera_lockFailed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameralockFailedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCamera_lockFailed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameralockFailedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlockFailed*(self: gen_qcamera_types.QCamera, slot: QCameralockFailedSlot) =
  var tmp = new QCameralockFailedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_lockFailed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_lockFailed, miqt_exec_callback_cQCamera_lockFailed_release)

proc lockStatusChanged*(self: gen_qcamera_types.QCamera, status: cint, reason: cint): void =
  fcQCamera_lockStatusChanged(self.h, cint(status), cint(reason))

type QCameralockStatusChangedSlot* = proc(status: cint, reason: cint)
proc miqt_exec_callback_cQCamera_lockStatusChanged(slot: int, status: cint, reason: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameralockStatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  let slotval2 = cint(reason)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCamera_lockStatusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameralockStatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlockStatusChanged*(self: gen_qcamera_types.QCamera, slot: QCameralockStatusChangedSlot) =
  var tmp = new QCameralockStatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_lockStatusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_lockStatusChanged, miqt_exec_callback_cQCamera_lockStatusChanged_release)

proc lockStatusChanged*(self: gen_qcamera_types.QCamera, lock: cint, status: cint, reason: cint): void =
  fcQCamera_lockStatusChanged2(self.h, cint(lock), cint(status), cint(reason))

type QCameralockStatusChanged2Slot* = proc(lock: cint, status: cint, reason: cint)
proc miqt_exec_callback_cQCamera_lockStatusChanged2(slot: int, lock: cint, status: cint, reason: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameralockStatusChanged2Slot](cast[pointer](slot))
  let slotval1 = cint(lock)

  let slotval2 = cint(status)

  let slotval3 = cint(reason)

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQCamera_lockStatusChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameralockStatusChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlockStatusChanged*(self: gen_qcamera_types.QCamera, slot: QCameralockStatusChanged2Slot) =
  var tmp = new QCameralockStatusChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_lockStatusChanged2(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_lockStatusChanged2, miqt_exec_callback_cQCamera_lockStatusChanged2_release)

proc error*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_errorWithQCameraError(self.h, cint(param1))

type QCameraerrorWithQCameraErrorSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCamera_errorWithQCameraError(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraerrorWithQCameraErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_errorWithQCameraError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraerrorWithQCameraErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qcamera_types.QCamera, slot: QCameraerrorWithQCameraErrorSlot) =
  var tmp = new QCameraerrorWithQCameraErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorWithQCameraError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_errorWithQCameraError, miqt_exec_callback_cQCamera_errorWithQCameraError_release)

proc errorOccurred*(self: gen_qcamera_types.QCamera, param1: cint): void =
  fcQCamera_errorOccurred(self.h, cint(param1))

type QCameraerrorOccurredSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCamera_errorOccurred(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCamera_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qcamera_types.QCamera, slot: QCameraerrorOccurredSlot) =
  var tmp = new QCameraerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCamera_connect_errorOccurred(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCamera_errorOccurred, miqt_exec_callback_cQCamera_errorOccurred_release)

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

type QCamerametaObjectProc* = proc(self: QCamera): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCamerametacastProc* = proc(self: QCamera, param1: cstring): pointer {.raises: [], gcsafe.}
type QCamerametacallProc* = proc(self: QCamera, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCameraavailabilityProc* = proc(self: QCamera): cint {.raises: [], gcsafe.}
type QCameraisAvailableProc* = proc(self: QCamera): bool {.raises: [], gcsafe.}
type QCameraserviceProc* = proc(self: QCamera): gen_qmediaservice_types.QMediaService {.raises: [], gcsafe.}
type QCamerabindXProc* = proc(self: QCamera, param1: gen_qobject_types.QObject): bool {.raises: [], gcsafe.}
type QCameraunbindProc* = proc(self: QCamera, param1: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QCameraeventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameraeventFilterProc* = proc(self: QCamera, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameratimerEventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCamerachildEventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCameracustomEventProc* = proc(self: QCamera, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraconnectNotifyProc* = proc(self: QCamera, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCameradisconnectNotifyProc* = proc(self: QCamera, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCameraVTable* = object
  vtbl: cQCameraVTable
  metaObject*: QCamerametaObjectProc
  metacast*: QCamerametacastProc
  metacall*: QCamerametacallProc
  availability*: QCameraavailabilityProc
  isAvailable*: QCameraisAvailableProc
  service*: QCameraserviceProc
  bindX*: QCamerabindXProc
  unbind*: QCameraunbindProc
  event*: QCameraeventProc
  eventFilter*: QCameraeventFilterProc
  timerEvent*: QCameratimerEventProc
  childEvent*: QCamerachildEventProc
  customEvent*: QCameracustomEventProc
  connectNotify*: QCameraconnectNotifyProc
  disconnectNotify*: QCameradisconnectNotifyProc
proc QCamerametaObject*(self: gen_qcamera_types.QCamera, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQCamera_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

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

proc QCameraavailability*(self: gen_qcamera_types.QCamera, ): cint =
  cint(fcQCamera_virtualbase_availability(self.h))

proc miqt_exec_callback_cQCamera_availability(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  var virtualReturn = vtbl[].availability(self)
  cint(virtualReturn)

proc QCameraisAvailable*(self: gen_qcamera_types.QCamera, ): bool =
  fcQCamera_virtualbase_isAvailable(self.h)

proc miqt_exec_callback_cQCamera_isAvailable(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  var virtualReturn = vtbl[].isAvailable(self)
  virtualReturn

proc QCameraservice*(self: gen_qcamera_types.QCamera, ): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQCamera_virtualbase_service(self.h))

proc miqt_exec_callback_cQCamera_service(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  var virtualReturn = vtbl[].service(self)
  virtualReturn.h

proc QCamerabindX*(self: gen_qcamera_types.QCamera, param1: gen_qobject_types.QObject): bool =
  fcQCamera_virtualbase_bindX(self.h, param1.h)

proc miqt_exec_callback_cQCamera_bindX(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  var virtualReturn = vtbl[].bindX(self, slotval1)
  virtualReturn

proc QCameraunbind*(self: gen_qcamera_types.QCamera, param1: gen_qobject_types.QObject): void =
  fcQCamera_virtualbase_unbind(self.h, param1.h)

proc miqt_exec_callback_cQCamera_unbind(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  vtbl[].unbind(self, slotval1)

proc QCameraevent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QEvent): bool =
  fcQCamera_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQCamera_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCameraeventFilter*(self: gen_qcamera_types.QCamera, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCamera_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCamera_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCameratimerEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCamera_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCamera_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QCamerachildEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCamera_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCamera_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QCameracustomEvent*(self: gen_qcamera_types.QCamera, event: gen_qcoreevent_types.QEvent): void =
  fcQCamera_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCamera_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QCameraconnectNotify*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCamera_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCamera_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QCameradisconnectNotify*(self: gen_qcamera_types.QCamera, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCamera_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCamera_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraVTable](vtbl)
  let self = QCamera(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc addPropertyWatch*(self: gen_qcamera_types.QCamera, name: seq[byte]): void =
  fcQCamera_protectedbase_addPropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc removePropertyWatch*(self: gen_qcamera_types.QCamera, name: seq[byte]): void =
  fcQCamera_protectedbase_removePropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc sender*(self: gen_qcamera_types.QCamera, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCamera_protectedbase_sender(self.h))

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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new(addr(vtbl[]), ))

proc create*(T: type gen_qcamera_types.QCamera,
    deviceName: seq[byte],
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new2(addr(vtbl[]), struct_miqt_string(data: cast[cstring](if len(deviceName) == 0: nil else: unsafeAddr deviceName[0]), len: csize_t(len(deviceName)))))

proc create*(T: type gen_qcamera_types.QCamera,
    cameraInfo: gen_qcamerainfo_types.QCameraInfo,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new3(addr(vtbl[]), cameraInfo.h))

proc create*(T: type gen_qcamera_types.QCamera,
    position: cint,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new4(addr(vtbl[]), cint(position)))

proc create*(T: type gen_qcamera_types.QCamera,
    parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new5(addr(vtbl[]), parent.h))

proc create*(T: type gen_qcamera_types.QCamera,
    deviceName: seq[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new6(addr(vtbl[]), struct_miqt_string(data: cast[cstring](if len(deviceName) == 0: nil else: unsafeAddr deviceName[0]), len: csize_t(len(deviceName))), parent.h))

proc create*(T: type gen_qcamera_types.QCamera,
    cameraInfo: gen_qcamerainfo_types.QCameraInfo, parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new7(addr(vtbl[]), cameraInfo.h, parent.h))

proc create*(T: type gen_qcamera_types.QCamera,
    position: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QCameraVTable = nil): gen_qcamera_types.QCamera =
  let vtbl = if vtbl == nil: new QCameraVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraVTable, _: ptr cQCamera) {.cdecl.} =
    let vtbl = cast[ref QCameraVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCamera_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCamera_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCamera_metacall
  if not isNil(vtbl.availability):
    vtbl[].vtbl.availability = miqt_exec_callback_cQCamera_availability
  if not isNil(vtbl.isAvailable):
    vtbl[].vtbl.isAvailable = miqt_exec_callback_cQCamera_isAvailable
  if not isNil(vtbl.service):
    vtbl[].vtbl.service = miqt_exec_callback_cQCamera_service
  if not isNil(vtbl.bindX):
    vtbl[].vtbl.bindX = miqt_exec_callback_cQCamera_bindX
  if not isNil(vtbl.unbind):
    vtbl[].vtbl.unbind = miqt_exec_callback_cQCamera_unbind
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCamera_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCamera_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCamera_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCamera_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCamera_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCamera_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCamera_disconnectNotify
  gen_qcamera_types.QCamera(h: fcQCamera_new8(addr(vtbl[]), cint(position), parent.h))

proc staticMetaObject*(_: type gen_qcamera_types.QCamera): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCamera_staticMetaObject())
proc delete*(self: gen_qcamera_types.QCamera) =
  fcQCamera_delete(self.h)
proc create*(T: type gen_qcamera_types.QCameraFrameRateRange): gen_qcamera_types.QCameraFrameRateRange =
  gen_qcamera_types.QCameraFrameRateRange(h: fcQCameraFrameRateRange_new())

proc create*(T: type gen_qcamera_types.QCameraFrameRateRange,
    minimum: float64, maximum: float64): gen_qcamera_types.QCameraFrameRateRange =
  gen_qcamera_types.QCameraFrameRateRange(h: fcQCameraFrameRateRange_new2(minimum, maximum))

proc create*(T: type gen_qcamera_types.QCameraFrameRateRange,
    param1: gen_qcamera_types.QCameraFrameRateRange): gen_qcamera_types.QCameraFrameRateRange =
  gen_qcamera_types.QCameraFrameRateRange(h: fcQCameraFrameRateRange_new3(param1.h))

proc delete*(self: gen_qcamera_types.QCameraFrameRateRange) =
  fcQCameraFrameRateRange_delete(self.h)
